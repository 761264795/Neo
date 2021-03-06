inherited PackingListFrm: TPackingListFrm
  Left = 103
  Top = 66
  Width = 1221
  Height = 646
  Caption = #25955#36135#35013#31665#21333
  OldCreateOrder = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 12
  object Splitter1: TSplitter [0]
    Left = 193
    Top = 53
    Height = 562
  end
  object Splitter2: TSplitter [1]
    Left = 794
    Top = 53
    Height = 562
    Align = alRight
  end
  object Left_pl: TPanel [2]
    Left = 0
    Top = 53
    Width = 193
    Height = 562
    Align = alLeft
    BevelOuter = bvNone
    Color = 16511980
    TabOrder = 0
    object cxGrid3: TcxGrid
      Left = 0
      Top = 0
      Width = 193
      Height = 562
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.SkinName = 'Office2007Black'
      object cxBillList: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        OnFocusedRecordChanged = cxBillListFocusedRecordChanged
        DataController.DataSource = dsBoxList
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Kind = skCount
            Position = spFooter
          end>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
            FieldName = 'CFSTATUS'
            Column = cxBillListCFSTATUS
          end
          item
            Format = '0'
            Kind = skSum
            FieldName = 'CFEntrySumQty'
            Column = cxBillListCFEntrySumQty
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.AlwaysShowEditor = True
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.FocusCellOnCycle = True
        OptionsCustomize.DataRowSizing = True
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsSelection.HideSelection = True
        OptionsView.DataRowHeight = 22
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderHeight = 22
        OptionsView.Indicator = True
        Styles.Inactive = cxStyle1
        object cxBillListFID: TcxGridDBColumn
          DataBinding.FieldName = 'FID'
          Visible = False
          Width = 80
        end
        object cxBillListFCREATORID: TcxGridDBColumn
          DataBinding.FieldName = 'FCREATORID'
          Visible = False
          Width = 80
        end
        object cxBillListCFSTATUS: TcxGridDBColumn
          DataBinding.FieldName = 'CFSTATUS'
          Width = 49
        end
        object cxBillListCFBOXNUMBER: TcxGridDBColumn
          DataBinding.FieldName = 'CFBOXNUMBER'
          Width = 59
        end
        object cxBillListCFEntrySumQty: TcxGridDBColumn
          DataBinding.FieldName = 'CFEntrySumQty'
          Options.Editing = False
        end
        object cxBillListFCREATETIME: TcxGridDBColumn
          DataBinding.FieldName = 'FCREATETIME'
          Width = 87
        end
        object cxBillListFWAREHOUSEName: TcxGridDBColumn
          DataBinding.FieldName = 'FWAREHOUSEName'
          Width = 80
        end
        object cxBillListFNUMBER: TcxGridDBColumn
          DataBinding.FieldName = 'FNUMBER'
          Width = 80
        end
        object cxBillListFDESCRIPTION: TcxGridDBColumn
          DataBinding.FieldName = 'FDESCRIPTION'
          Width = 80
        end
        object cxBillListCFCAPACITY: TcxGridDBColumn
          DataBinding.FieldName = 'CFCAPACITY'
          Width = 80
        end
        object cxBillListctName: TcxGridDBColumn
          DataBinding.FieldName = 'ctName'
          Width = 80
        end
      end
      object cxGridLevel4: TcxGridLevel
        GridView = cxBillList
      end
    end
  end
  object Center_pl: TPanel [3]
    Left = 196
    Top = 53
    Width = 598
    Height = 562
    Align = alClient
    BevelOuter = bvNone
    Color = 16511980
    TabOrder = 1
    object Splitter3: TSplitter
      Left = 0
      Top = 162
      Width = 598
      Height = 3
      Cursor = crVSplit
      Align = alTop
    end
    object Panel3: TPanel
      Left = 0
      Top = 165
      Width = 598
      Height = 397
      Align = alClient
      BevelOuter = bvNone
      Color = 16511980
      TabOrder = 1
      object EntryPage: TcxPageControl
        Left = 0
        Top = 0
        Width = 598
        Height = 397
        ActivePage = cxTabSheet4
        Align = alClient
        Style = 10
        TabOrder = 0
        ClientRectBottom = 397
        ClientRectRight = 598
        ClientRectTop = 18
        object cxTabSheet4: TcxTabSheet
          Caption = #35013#31665#26126#32454
          ImageIndex = 0
          object cxGrid2: TcxGrid
            Left = 0
            Top = 0
            Width = 598
            Height = 361
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            LookAndFeel.Kind = lfOffice11
            LookAndFeel.SkinName = 'Office2007Black'
            object cxGridEntry: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              OnCustomDrawCell = cxGridEntryCustomDrawCell
              DataController.DataSource = dsEditDetail
              DataController.Summary.DefaultGroupSummaryItems = <
                item
                  Kind = skCount
                  Position = spFooter
                end>
              DataController.Summary.FooterSummaryItems = <
                item
                  Kind = skCount
                  FieldName = 'FRowState'
                  Column = cxGridEntryFRowState
                end
                item
                  Format = '0'
                  Kind = skSum
                  FieldName = 'CFQTY'
                  Column = cxGridEntryCFQTY
                end
                item
                  Format = '0'
                  Kind = skSum
                  FieldName = 'CFDIFFQTY'
                  Column = cxGridEntryCFDIFFQTY
                end>
              DataController.Summary.SummaryGroups = <>
              OptionsBehavior.AlwaysShowEditor = True
              OptionsBehavior.FocusCellOnTab = True
              OptionsBehavior.FocusFirstCellOnNewRecord = True
              OptionsBehavior.GoToNextCellOnEnter = True
              OptionsBehavior.FocusCellOnCycle = True
              OptionsCustomize.DataRowSizing = True
              OptionsData.CancelOnExit = False
              OptionsData.Deleting = False
              OptionsData.DeletingConfirmation = False
              OptionsData.Inserting = False
              OptionsSelection.HideSelection = True
              OptionsView.DataRowHeight = 22
              OptionsView.Footer = True
              OptionsView.GroupByBox = False
              OptionsView.HeaderHeight = 22
              OptionsView.Indicator = True
              object cxGridEntryFID: TcxGridDBColumn
                DataBinding.FieldName = 'FID'
                Visible = False
                Options.Editing = False
                Width = 80
              end
              object cxGridEntryFSEQ: TcxGridDBColumn
                DataBinding.FieldName = 'FSEQ'
                Visible = False
                Options.Editing = False
                Width = 80
              end
              object cxGridEntryFPARENTID: TcxGridDBColumn
                DataBinding.FieldName = 'FPARENTID'
                Visible = False
                Options.Editing = False
                Width = 80
              end
              object cxGridEntryCFMATERIALID: TcxGridDBColumn
                DataBinding.FieldName = 'CFMATERIALID'
                Visible = False
                Options.Editing = False
                Width = 80
              end
              object cxGridEntryFRowState: TcxGridDBColumn
                DataBinding.FieldName = 'FRowState'
                Options.Editing = False
                Width = 64
              end
              object cxGridEntryMaterialNumber: TcxGridDBColumn
                DataBinding.FieldName = 'MaterialNumber'
                Options.Editing = False
                Width = 80
              end
              object cxGridEntryMaterialName: TcxGridDBColumn
                DataBinding.FieldName = 'MaterialName'
                Options.Editing = False
                Width = 106
              end
              object cxGridEntryCFCOLORID: TcxGridDBColumn
                DataBinding.FieldName = 'CFCOLORID'
                Visible = False
                Options.Editing = False
                Width = 80
              end
              object cxGridEntryCFSIZEID: TcxGridDBColumn
                DataBinding.FieldName = 'CFSIZEID'
                Visible = False
                Options.Editing = False
                Width = 80
              end
              object cxGridEntryCFCUPID: TcxGridDBColumn
                DataBinding.FieldName = 'CFCUPID'
                Visible = False
                Options.Editing = False
                Width = 80
              end
              object cxGridEntryCOLORNUMBER: TcxGridDBColumn
                DataBinding.FieldName = 'COLORNUMBER'
                Options.Editing = False
                Width = 80
              end
              object cxGridEntryCOLORNAME: TcxGridDBColumn
                DataBinding.FieldName = 'COLORNAME'
                Options.Editing = False
                Width = 71
              end
              object cxGridEntrySIZENUMBER: TcxGridDBColumn
                DataBinding.FieldName = 'SIZEName'
                Options.Editing = False
                Width = 45
              end
              object cxGridEntryCUPNAME: TcxGridDBColumn
                DataBinding.FieldName = 'CUPNAME'
                Options.Editing = False
                Width = 43
              end
              object cxGridEntryCFQTY: TcxGridDBColumn
                DataBinding.FieldName = 'CFQTY'
                Options.Editing = False
                Width = 54
              end
              object cxGridEntryCFDIFFQTY: TcxGridDBColumn
                DataBinding.FieldName = 'CFDIFFQTY'
                Options.Editing = False
                Width = 61
              end
              object cxGridEntryCFBARCODE: TcxGridDBColumn
                DataBinding.FieldName = 'CFBARCODE'
                Options.Editing = False
                Width = 101
              end
              object cxGridEntryCFREMARK: TcxGridDBColumn
                DataBinding.FieldName = 'CFREMARK'
                Width = 94
              end
              object cxGridEntryRowType: TcxGridDBColumn
                DataBinding.FieldName = 'CFRowType'
                Visible = False
                Options.Editing = False
              end
            end
            object cxGridLevel2: TcxGridLevel
              GridView = cxGridEntry
            end
          end
          object Panel7: TPanel
            Left = 0
            Top = 361
            Width = 598
            Height = 18
            Align = alBottom
            BevelOuter = bvNone
            Color = 16511980
            TabOrder = 1
            object Label3: TLabel
              Left = 3
              Top = 3
              Width = 566
              Height = 12
              AutoSize = False
              Caption = #25552#31034':"'#32511#33394'"'#32972#26223#19981#22312#28304#21333#20869',"'#32418#33394'"'#32972#26223#36229#20986#28304#21333#25968','#23457#26680#26102#31995#32479#20250#33258#21160'"'#20462#27491'"'#25968#25454#12290
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
            end
          end
        end
        object cxTabSheet5: TcxTabSheet
          Caption = #20854#23427#20449#24687
          ImageIndex = 1
          object Label21: TLabel
            Left = 9
            Top = 14
            Width = 65
            Height = 12
            AutoSize = False
            Caption = #21019#24314#20154
          end
          object Label32: TLabel
            Left = 9
            Top = 38
            Width = 65
            Height = 12
            AutoSize = False
            Caption = #26368#21518#20462#25913#20154
          end
          object Label31: TLabel
            Left = 251
            Top = 15
            Width = 65
            Height = 12
            AutoSize = False
            Caption = #21019#24314#26102#38388
          end
          object Label33: TLabel
            Left = 251
            Top = 39
            Width = 81
            Height = 12
            AutoSize = False
            Caption = #26368#21518#20462#25913#26102#38388
          end
          object txt_alName: TcxDBTextEdit
            Left = 76
            Top = 35
            DataBinding.DataField = 'alName'
            DataBinding.DataSource = dsEditMaster
            Enabled = False
            TabOrder = 2
            Width = 160
          end
          object txt_ctName: TcxDBTextEdit
            Left = 76
            Top = 11
            DataBinding.DataField = 'ctName'
            DataBinding.DataSource = dsEditMaster
            Enabled = False
            TabOrder = 0
            Width = 160
          end
          object txt_FLASTUPDATETIME: TcxDBDateEdit
            Left = 334
            Top = 35
            DataBinding.DataField = 'FLASTUPDATETIME'
            DataBinding.DataSource = dsEditMaster
            Enabled = False
            TabOrder = 3
            Width = 160
          end
          object txt_FCREATETIME: TcxDBDateEdit
            Left = 334
            Top = 11
            DataBinding.DataField = 'FCREATETIME'
            DataBinding.DataSource = dsEditMaster
            Enabled = False
            TabOrder = 1
            Width = 160
          end
        end
        object cxTabSheet6: TcxTabSheet
          Caption = #26085#24535#20449#24687
          ImageIndex = 2
          object m_Log: TcxMemo
            Left = 0
            Top = 0
            Align = alClient
            ParentFont = False
            Properties.ReadOnly = True
            Properties.ScrollBars = ssBoth
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -16
            Style.Font.Name = #23435#20307
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 0
            Height = 379
            Width = 598
          end
        end
      end
    end
    object Panel4: TPanel
      Left = 0
      Top = 0
      Width = 598
      Height = 162
      Align = alTop
      BevelOuter = bvNone
      Color = 16511980
      TabOrder = 0
      object Panel5: TPanel
        Left = 0
        Top = 83
        Width = 598
        Height = 79
        Align = alClient
        Color = 16511980
        TabOrder = 1
        object cxGroupBox2: TcxGroupBox
          Left = 1
          Top = 1
          Align = alClient
          Caption = #34920#22836#20449#24687
          TabOrder = 0
          Height = 77
          Width = 596
          object cxLabel1: TcxLabel
            Left = 8
            Top = 14
            AutoSize = False
            Caption = #35013#31665#21333#32534#21495
            Height = 16
            Width = 69
          end
          object txt_FNUMBER: TcxDBTextEdit
            Tag = 100
            Left = 76
            Top = 12
            DataBinding.DataField = 'FNUMBER'
            DataBinding.DataSource = dsEditMaster
            Properties.ReadOnly = True
            Style.LookAndFeel.Kind = lfOffice11
            StyleDisabled.LookAndFeel.Kind = lfOffice11
            StyleFocused.LookAndFeel.Kind = lfOffice11
            StyleHot.LookAndFeel.Kind = lfOffice11
            TabOrder = 0
            Width = 158
          end
          object cxLabel2: TcxLabel
            Left = 246
            Top = 14
            AutoSize = False
            Caption = #31665#21495
            Height = 16
            Width = 37
          end
          object cxLabel3: TcxLabel
            Left = 425
            Top = 14
            AutoSize = False
            Caption = #23481#37327
            Height = 16
            Width = 38
          end
          object txt_CFBOXNUMBER: TcxDBCalcEdit
            Tag = 100
            Left = 287
            Top = 12
            DataBinding.DataField = 'CFBOXNUMBER'
            DataBinding.DataSource = dsEditMaster
            Style.LookAndFeel.Kind = lfOffice11
            StyleDisabled.LookAndFeel.Kind = lfOffice11
            StyleFocused.LookAndFeel.Kind = lfOffice11
            StyleHot.LookAndFeel.Kind = lfOffice11
            TabOrder = 1
            Width = 135
          end
          object txt_CFCapacity: TcxDBCalcEdit
            Tag = 100
            Left = 462
            Top = 12
            DataBinding.DataField = 'CFCAPACITY'
            DataBinding.DataSource = dsEditMaster
            Style.LookAndFeel.Kind = lfOffice11
            StyleDisabled.LookAndFeel.Kind = lfOffice11
            StyleFocused.LookAndFeel.Kind = lfOffice11
            StyleHot.LookAndFeel.Kind = lfOffice11
            TabOrder = 2
            Width = 123
          end
          object cxLabel4: TcxLabel
            Left = 8
            Top = 34
            AutoSize = False
            Caption = #20179#24211
            Height = 16
            Width = 59
          end
          object txt_FWAREHOUSEName: TcxDBButtonEdit
            Left = 76
            Top = 32
            DataBinding.DataField = 'FWAREHOUSEName'
            DataBinding.DataSource = dsEditMaster
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = txt_FWAREHOUSENamePropertiesButtonClick
            Style.LookAndFeel.Kind = lfOffice11
            StyleDisabled.LookAndFeel.Kind = lfOffice11
            StyleFocused.LookAndFeel.Kind = lfOffice11
            StyleHot.LookAndFeel.Kind = lfOffice11
            TabOrder = 7
            OnKeyPress = txt_FWAREHOUSENameKeyPress
            Width = 158
          end
          object cxLabel5: TcxLabel
            Left = 246
            Top = 34
            AutoSize = False
            Caption = #24211#20301
            Height = 16
            Width = 39
          end
          object txt_CFWAREHOUSELctame: TcxDBButtonEdit
            Left = 288
            Top = 32
            DataBinding.DataField = 'CFWAREHOUSELOCATIOName'
            DataBinding.DataSource = dsEditMaster
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = txt_CFWAREHOUSELctamePropertiesButtonClick
            Style.LookAndFeel.Kind = lfOffice11
            StyleDisabled.LookAndFeel.Kind = lfOffice11
            StyleFocused.LookAndFeel.Kind = lfOffice11
            StyleHot.LookAndFeel.Kind = lfOffice11
            TabOrder = 6
            OnKeyPress = txt_CFWAREHOUSELctameKeyPress
            Width = 133
          end
          object cxLabel6: TcxLabel
            Left = 8
            Top = 54
            AutoSize = False
            Caption = #22791#27880
            Height = 16
            Width = 59
          end
          object txt_FDESCRIPTION: TcxDBTextEdit
            Left = 76
            Top = 52
            DataBinding.DataField = 'FDESCRIPTION'
            DataBinding.DataSource = dsEditMaster
            Style.Color = clWhite
            Style.LookAndFeel.Kind = lfOffice11
            StyleDisabled.LookAndFeel.Kind = lfOffice11
            StyleFocused.LookAndFeel.Kind = lfOffice11
            StyleHot.LookAndFeel.Kind = lfOffice11
            TabOrder = 12
            Width = 508
          end
          object cxLabel11: TcxLabel
            Left = 425
            Top = 33
            AutoSize = False
            Caption = #29366#24577
            Height = 16
            Width = 38
          end
          object txt_CFSTATUS: TcxDBTextEdit
            Tag = 100
            Left = 463
            Top = 32
            DataBinding.DataField = 'CFSTATUS'
            DataBinding.DataSource = dsEditMaster
            Enabled = False
            Style.LookAndFeel.Kind = lfOffice11
            StyleDisabled.LookAndFeel.Kind = lfOffice11
            StyleFocused.LookAndFeel.Kind = lfOffice11
            StyleHot.LookAndFeel.Kind = lfOffice11
            TabOrder = 8
            Width = 121
          end
        end
      end
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 598
        Height = 83
        Align = alTop
        Color = 16511980
        TabOrder = 0
        object InputPage: TcxPageControl
          Left = 1
          Top = 1
          Width = 596
          Height = 81
          ActivePage = cxTabSheet7
          Align = alClient
          Style = 10
          TabOrder = 0
          OnChange = InputPageChange
          ClientRectBottom = 81
          ClientRectRight = 596
          ClientRectTop = 18
          object cxTabSheet1: TcxTabSheet
            Caption = #26465#30721#25195#25551
            ImageIndex = 0
            DesignSize = (
              596
              63)
            object lb_BarCodeMsg: TLabel
              Left = 43
              Top = 38
              Width = 144
              Height = 19
              Caption = #35831#25195#25551#26465#24418#30721'...'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -19
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
            end
            object Image2: TImage
              Left = 5
              Top = 3
              Width = 31
              Height = 33
              Picture.Data = {
                0B546478504E47496D61676589504E470D0A1A0A0000000D494844520000008A
                000000BD08060000006CF8E5710000000467414D410000B18F0BFC6105000000
                206348524D00007A26000080840000FA00000080E8000075300000EA6000003A
                98000017709CBA513C000000097048597300000AF200000AF2013D52F7110000
                7A2C49444154785EEDFD0578955797FE8F13C35D4AA12DF5526871A7B8BBBBBB
                3B246888BB1077232EC413E2EEEE6E24B8BB27E7FEAFB5DBF4DF797F7967DE99
                EF4C87305CED7D3DE7EC9C40C8F99C7BDD6B3FFBD94F1B009FF449FFA15A1CFC
                A4FF9C22930AA5585189BFABA5D7B476B538F849FF5F7985264945A41449C566
                964B05476749074565CA0447A5CB4625E5B74D482B6A1F9F5AD8212125BF3DA9
                5D62727E5B925C524A812C492632314F3A32A1483A2AB1582A3AA9442A36A54C
                2A2EB5BC5501D5E2E027A14D5C4A9D545C723D4B2632B5582E243EB75D4A415D
                C7C4DCEA2ED129C53DD2F2EBFAA4E4547E919859F66D584CC640D2E08898F49F
                C3A3D37E088F4CFD9634202C22A53FE9B3F8F4925E0446F798E4D2AE044BE7F0
                B8820E5763F2DA8544E5CA0647E6C8C4245548C726574AB15AFA593E04B538F8
                7F59216199521151F93289C915ED52D36BBA907A4726E77C199194FD635C7AC1
                B02BA1B113BC02C2674525662E8D884FDF101E95BC3B263EED487C5CDAC984F8
                D4634989E9079213D277A524666C4B4B4CDF405A111B9BBE88342B2E2E63527C
                7CE6E884849C5F131373BF4F4ACAFB92D4272931BF3BA97372525107525B924C
                62428174427CA1547C5CC107014F8B83FFD714155B20159758229D98522E9794
                5AD12925ADBA4F524AE50F04CC385FFFE48541D1299BC212320F2665979C0F8D
                4DD373F509B6D533B1F1DE7DE854C8D61D07A335758C9274758C53F4F58C932F
                199AC59B1A59465B98DA44D898DB86DA5AD8057878047A7A7905DBFBFA861905
                07C7A88587272BC4C666EE2358362627E72F898A4C9F111D953136362667707C
                5CDE3709F1F97D09941E8909459D49EDE3E20BE548322429564BFF86FF69B538
                F87F4131D1D952F4C648454566CA8687A5B48F89CEEC4EFA8A1E0F8F8C4C9D1F
                1F9FBD97DE48AD98980C67858B2A211B76EC8E9F396F61D6D051638B7F1C3CA4
                76C0D7DFDFFE79D02F0FB66DD9FED850DFE0A9B19EC133D253735DC327960686
                8FAD2F193DB237367DE8606276CFC6CCE296ADB9659DBDA57599938D5D9E8BBD
                639ABB9373ACA7B37BA8978B8767904F9055886F88667860C4C9E8D0981D71E1
                F1CB13A392662645278F4D8E4919949494F515A97742724ED7F8A4EC0E718959
                6D631332656212B2A563E2F3FE16705A1CFC9845604845476549A7A596B6CDCD
                A9E99C9D55459FDEBC815999E5533233CA365C0D4D3A6765E56A7BFCB862C4B4
                698B0A3EFFFC87866E7DFBDF273DF9F6A741CF474F98F46AEAACB96F478C1CDB
                38F1B7C94D6A2AEA4D067AFA12436D5D898E9A8644E7A2AA44FBA252938E9272
                93BEB26A93A1AA7A93A9C1A5463343A3B7E6978C5F5B1899BCB434367D666D6A
                FED8C6CCEA01E9A68B9D4BB5BBA37B81B78B4F8ABF674044886FA84F5840B84D
                4450A4666470D4F184848CCDA40504C96FA45F495F13347DE293F3089CC20E51
                09797224E9A8840229564BFFEEFF57B538F8312A3DA94C2A25A150362126B743
                7A72498F829CDA6FD2930B475D0D8A5FEC7AF9CA217D1D33C31D5BF7F94E9D34
                3B6DFC9849D5D3A7CCBE3FE5B7192F470C1DF3AE7DD7AE8D9F0F18D0F4E32F83
                24BF0CF9553272F4280C1AF83326FD360146BABAB036338695A1018CB5347149
                450586CA4A30565385A596166CF5F460AEAB090B3D2D5819E8496C2E1948EC4D
                8C248E66264D97CDCD9B9C2D2CDE93F3BC7534357FE96269FDCCC3D6FEA18FA3
                CB6DDFCB6EB5FE2E1E0501AE9E49C12157434242C39CC3C2230D2222A3152263
                13B6512E5A1C9B94F15B5C52EE6072962FC9597A122C9DA2E28BDA5287254392
                8A4C28FE6F83A6C5C18F45B129255231C9C5D204895C4672792702E5B3C4D8BC
                9FD3928AA711305B1C6C3C95144E283B6D58BB2366CDCA2DC58B17ACBCB568FE
                8AA76B576D7CB37AC5FAC6E143464B64A5DAA38DAC2CBEFBF9678C2130868D18
                8E31E3C662CCA8D158307F2E6CCCCC7049570B86EA6AD052BC00ADB367A173FE
                1C01A30C6B1D1D385EBA24206159EAEB322CB036D417B2313414B2D2E7A39184
                8091389959103C368DAE56766FDDACED5F929EBAB8BADF7773F76CF0F2BE52E2
                E71F9816181A1E763522DE352236D9202A2EF30481B281409945A08C2450BE23
                48FA90BA1028ED48D49E97FC3F03D3E2606B5742729908A7D171856D29A876C9
                49CFED5F925F3A34312669417C54C2A1CC942C2373238BC0752BD767AD5DB1AE
                6EFBA61D0FE9F1ABD5CBD6BCDFB17967D3A2B98B259BD76DC1D041C3D0B54337
                F4EAD507A3468DC1E8D16385A64E9E862FFA7D899DDB77404349055A2A6A0870
                F3C29A458B317AF02F98347C2456CE9D8F65B36661D3B26538B16F2FCE1F3F26
                4032D126600C0812A34BB0353682BDA9C99FCF1DCDCDE06A630D4F07FB66493C
                ECED24FECE768D81AE0EEF82DC1C5FD1F1D995CBF60F48D7FD5C1C4B025C5D93
                63438203E242C2ADE2C3222F2647C5EE4A8D495C941E973C36252EE9FBE4D8C4
                3E5169459D431372DA06C664C804C566FE97A06971B0352B3EA998BB97B6A919
                D55DB372EBBFCA2DB831BAACB07C456A429A82AFA79F6D68C0D5E884E8C41253
                43B33BDB366E7F467A4B70346E59BF5542D0809E63D5D2D5D8B866137EFCE627
                746ED7057DFBF613A04C9C380993264DC1F4A933306CC8709C3B731626E40694
                3F60A4A18389C34760E4CF8330FED7A10296D1E44253478DC290EFBF23800661
                EA98D158387D1AD62D598CDD1B37E0F8DE3D3877EC282CF4F5FE04C5D9CA52E8
                B2A58578CEF2B021802C8DE168A22FB135D496D81AE937B95A9BBF0BF2707915
                1D10F0D4D7C5F98E9F8B477580877776888F5F4464E0D5CBF161D1EA493109BB
                53E393178425E58DBA9A98FB0DA9273DEE109E5CC87343FF29605A1C6C8DA296
                522A39A9482E35A5A433E9CB94E4E2314989856B69FC2241E21211129914E013
                584D903CC8CBCC7F45D0BC3F73F22C3B8764E7965DD8B7733F36ADDD8CAD1BB6
                819F33347D7B7E2E40F966C0D7183B7A0C664F9F8159D3A663D2F8099839751A
                0C7575606160083F37771CD9B10BDFF6E98BE13FFC84B1830763D4C081184FC7
                39E3C763CEC489983D6102A68F21D8860E15000DFFE1078CF8F147F13AD69491
                238503ED5AB70E670E1D82A1AA2A28C3C0CFD9197E4EF60872BD8C102F37217F
                576778DADB325012270BF3260F07C7464F47A7375E4E2ECFBD2FBB3EF071F3BA
                E6EFE59B17E21714111E74D5212C2A59292A2E7D4B6C4ACE74D2C0E8A4AC3E51
                09391DA393F364E2524BFF25605A1C6C4D4A492B954A4C289021283A12289FD3
                71785C6CEECAC8880CC590E0248F00FFB8F4E8B0986B54721E13306FA80C3596
                169449F2B30AE07ED903F2C714B07BDB1E1CD97F14E42CC2518E1F3A81158B57
                A24BFBAEE8D6B13B06934B4C243816CE9D274019FEEB102C59B010C654327455
                54E1EFEE81253366A1875C3B7CD3FB330CE8D9135FF7EA855104C2240263FCAF
                BF62F2881198396E1CE6FEF61BE64D9A84F9932763E1D4A9583C7D3A668C1D2B
                346DF468FC366C18C6FDF28BF81E7ECE901DDCBC01E70EED87A19A129CCC8DE1
                ED680F5F67275C71BE0C9FCB4EB03335838B8DADC4D7D543428ED218EC1BF836
                D0C7FF859FE7950757DCBD6B3DAF8466F90646060686C71B5D8D4939101E9736
                273C367350585C66AFB0D8DCB6914985D22DFD6EFFAA16075B8B12928BA4C939
                DAE6E454F4CC4C2DFE39312E73415478D2A9E8ABF14E711149A9297119F51949
                394FB3D372DE928B349124E94919A0E7A82AAD46417621C865B07FD7019C387C
                1287F61EC69EED9427142E60C1EC85682FD301BDBBF5C1687AB3674D99829504
                C73C72921104CEF675EBA96418805A6150C7428EF11B067DF5B5D0179DBBE1F3
                0E9DF1439FCFD1AF6317E11EEC22FCE6B3A34C1832443CE6233FE7F2C450B018
                281E67576260F8F1AFDF7E8DE13F7E8F09437FC5EC89E3290B2DC4915D3B29F3
                5CA47C638870FF0084F85C81978B1B2EDBDAC3DE92DCC6CE49E2EB79A5F16A60
                E85B2F37F7679EAE6E773CDCDC4BAE78FB470487849B454525EDA7CE69526C7C
                76BFE8C4DC76D1FFC1C9CC16073F74510E9122C9C4251674A2D2F2557474FAE4
                9888B4BDD111C916B151A9B1C9B1E9D55929798F0BB34BDF961554351110C241
                0A738A509C5702CA2CA82EAB4165499580E5D45179A173F2E7859B5C3CAB8429
                13A60A50B8FC8C1D3E1C0B67CFC66A0AAB0B67CCC424EA78CE1C3D46B9C21866
                BAD4C5185CC28625CBB06FD316ECD9B009EB172CC6B2E9B384C60FFA155FF5E8
                211CE6DB3E7DF07DDFBEF8E1F3CF09A8AF30ECFBEF3166D020CA33C3052CB3FE
                52A6F8398332F2A79F3066F0CF18F6C37718F8657F7CDDBB2706F4EE85815F7D
                8931BFFC8AE9E3C663F1ACD9D8BF6D3B2EE9E8C1D7C30B6181A108F0F6C3653B
                2758995A4AAE06054B02AEF8BE27505EBAB978DEF3F0BC521A10101E14169970
                2E3A3673524C525EAF98A42299967ED7CD6A71F043564C72A9545C4A49DB84C4
                E21EB1F1398362A232965F0D89538B0D4F0E4A49CC28CDCF28B85F9A5FFCBA2A
                BFB4A932AF4452915B2C00A172F32720B7EA6FE346DD4D010A7543505554C3E9
                1367A0ADA603C5331771E1B422460E192540E9D3FD334C183614AB172E109FE4
                C5336760FED429D051A24FB39E1E1C4C4CA0479DCFAA790BA070E010CE1F3D0E
                E55367E878122AF267296F1CC3E1EDDB09A24DD8BC7CB928355C5E7EF9FA6B7C
                F7D96702A09FBFFC1203BFF80283070C10B9855D86330B03C48E32E247CE3183
                306AD0600CFBF1270CFAFA1B7CDF8FA0F9ACAFD080CFFBE3BB2F076030E5A3F1
                234763F9E225387DF2142EDB3B2036320ABEAE8E08F676C3557F2F4990B7E77B
                2F37D717DE946302FD43FCC2C3E377C627E6FE109354D02E3AA9E89FBA4A8B83
                1FAAA2934AA40994F6044A7F026542746CD69EC8F054EBA282EAB4B2829A9BE5
                25D52F6B4A6B1B6BCBAB250D0444B3188ABB37EEA1A2B812D41A0B40F8F9CD6B
                B770ADAA1EFA5A06C24D8CF54DA0A1AC89B3A7CE61F08FBFA09D747BF4ECD24B
                80B27EE912AC5A301F0BA651AE2058F4555560A0A2027B63631CD8B28DDEEC01
                A2FC2C9C3A1DDB57AFA750BA4940A27D41198AC7199E53503B7D5A1C4F1F3C28
                E0D9BD7E3DBD7635E59B19A2ECB0C3FCD4BF3F7EECD74F80C362F7193CE01B0C
                FDEE07D151B186FEF023067FF32D7EFA6A801083F2157566FD291FF5EDD10B9F
                F7EE839FBEFB5E84EE45F3E64353F10C1CCC8D181444870421E08A4F938FBBF7
                D3A080D0CCE8E8E48B04CA4802A553AB072521BD9C27CE6462538B3A532EF936
                3A3E7B5E7454C6F9F4AC62FFBA9A3BA50DF5B71FD555D6BFAD2140EED4DDC0CB
                7B8FF0E6E1533CBD7D07B76B6A71E7FA5DA1869AEB78FAE0191EDC7E888CE44C
                045E0982BD95030CB40D61A873093AEABAB8A46B04EA86D0AF777F3187D2BD53
                0F5106D62F5E2C42289786754B96C2584B1B3A17A933B1B0819DB125D4C889F6
                6CDC89E5739660E684E9983CEA372A0BD3306FCA5C1A5B848DCBD6E0087556FC
                3A6D723015CA4117E9EF512640CF53A03E431949E1E0719CA09CB46DF546CC9D
                3403E3C9D5C6FE32023FF4FB1ABD28580FE8D31FBD3B75479FCE3DF065AFCFD1
                51B63D01F2053EEBD94BA83FB9CB57E4349F11285D3A7516EAD5834A55AF2E18
                F1D337543A67E3D89E5D30373290A4C425BC0AF20D2C89088FD58F8FCF9C189B
                98DB856069BDA0C427954A1128B2F16965DDC2E3737EBE1A91BE3A21A5C0A0B4
                E47A5C65CDAD86B2926B2F6A6BAE37DEBBF940F2FCD133BC7AF80CCF6EDFC7E3
                1B77F0E2DE7DBC7F4A634F5FE3E59357C259D8516CCC6D45B9B1B5B08387B3A7
                8084DD8481E1A3C2F1D3F8AC475FD1F5F4E8DC537CDA372C5982051468B96BD9
                B26A354CB475A0A7AC0E775B47D41655A09432505E723632625311151801571B
                6718695EA2C0A989A31496B7AEDA80C533A86BA2EC3373FC142C99399FC0DA8E
                0BF477A953266270580C9222954106E6F08E7DE27B8FED3E88F54B5661D5C265
                9832662246FF329C02F5107CD6BD37BEE8D30F9DDAB5477B593974906B8BAE1D
                3B0940DAB76D27D4999EF76A2F8D1E6DDBA08B6C1B74A4B7FCEBFE7D251A4A2A
                6F3C9CDD2B3233F24C099429044AB7560B4A6C42B114498E9279CF84A4BC6169
                99455BF30AABAC6B6A6E67DDBDFBFCDED367AFDFBC7AFEAEE9D9939778F7FC1D
                246F1AD1F4FA3DDE3E798E970F1EE3F5A3C778FFECB9C8216697CC7170CF2191
                43224222F1E82E7DED552392629361A4674C9F320BF11A16075B2E399DDAD227
                B26B6F4C1D3356B8C882A933E9933E0DFBB6EE82898E2174D5B5E1EBEE87BCF4
                7CE4A414223FB314E585B5282F6E40414E15B2D24A91995A020AD6A0808DF0A0
                68785CF6818196318E1D38858DABB762C5A23598387A0AA64D9C85A5F35762F7
                D6FD5038760E17CFA842FDA236B455F571F19422144F5E80819A3E54CFA8E0C8
                DE23D8BA6E2B7562333075C2647CF3C5D7047477C84849438ADE5219E93F2423
                8576EDE4D096C63AD163593AB2E4E875F47B781BE01F529D935D6C199B90392D
                2E21B73B81F24FDBE416073F04B193302431F145BD33B2CAC6501DDD9F955BE6
                72E3F693C2FBF75F3EAAAEBEF5AEBAA641F2F8C173BC7F2BC1D37B4FF1E0D63D
                BC79F60A782FC1C31BB7117AC5171A17144517636D66238091BC051EDE792440
                61A7498C49122EC25F67599A58895699DDA4836C471166A78C1E83B51410174D
                9F8D7993A743FED071018A9E860EC2C93D72D3F29016978DC4E8740222134971
                39488CCD464A423EB2D3CB90969085ECD47C14E5941148D528CDAF444E5A01A8
                7D477C6432FC3C8360666825E059BE70B580E6B731533165FC0CCC9C3C9742F4
                6AFAFBD7E0D08E83021A754575E8A8EA40E5BC124E1F97C71CFAB97EF969B070
                120685252DF5FF07A53D3DEFD9B13D3AB79345D7F61DD1B97D0738583BBE8D8E
                8AAF4E4ACCB48A4BCC9A1E9F98D73D36F99FCFA7B438F8BFADC49472A984E432
                3982A537695C617EC9D192A2729FFABA1B15E41E4F1BDFA151D20809FD0716BF
                E168A2876F9B909F95070B6373A8508874B471406A420A8103BC78FC126F5FBC
                13E2305B5FDD206089BA1A0D130353D859DA0B3128470F1C4347B94E22CC7209
                FA6DE438AC98BF04F3A6CFC3CC49330578EC0ADA1A86888FCE447E6E15723249
                D995C8CFAB4766561DE2134A10199587A868721B1ACFCA2C475A6A311213F210
                CF20D1B15909F1B9484F2B41417E2D8A8BEA919D5581F0B014D8DA784253C314
                F207152848AFC684119384C60E1B873143C762CCF0B1E234039F52F8F9A741E8
                D6A52BE464640520D2E4282C595969C8C9112CED3AD3BB2D2BD4B3575F899B9B
                EF9BE8B8D4AAABE1C916B18939D3E2120BBA1128ADA7F430247FAC34EB9D925E
                358E742C363AC1EFD68DBBD5EFDE34BDB877E76163C3B59B78F9FC8D80848011
                90A4C4A7424F535728362286207888D7E42EF7C96538C07297C3219641E1E76F
                9EBFA5AFBF11A5A71914CE2C16144C0FEF3B225AE3B652ED0428E3868EC2E259
                F33177DA5C4C9F385D942F1D350368A91B203DB910A9C905484EA0634A110151
                8DF48C1A24A754202595BA2C822629315F4092914EA528A34C40C330F0EBE3C8
                799A414AA13F8B9F3348FC98E1E1EFAB2BB986ECC41C047806C354CF02F3672C
                4067B92EA2340A987BF745A70E9D45E991959621306404246DE8ED6D968C743B
                C8CA5096216066CC9C2B898A4A7A9D98925D111A96641C97943B393EA9B06B5C
                4A2BEA7AC8496409949E04C8E88CECBA23D9790D7ECF1F3EAE697AFDF62501C1
                FF0930E8B980A1A1A69E4AC571E11EC58565E0BCC27A78FF099E3E7E21CAD2BB
                97EF45D7C3936E3CE1C62D3143F3F8DE13E4A4E70A5038E072E9E18CC233B4CD
                A070E9193178848064E69459983C6E3A0C744DA1AE6C0875D54BC8CEA84449F1
                0DE466D7837E66242657212ABE14E1310441523532726EE1E69DB7A8BFF112A5
                15F790915D43AFAB401A39101F6309B0F8A462F19CBF964A7F1E8FF3E3E6E7C9
                D119C84F2F4155D135146494E2E0EEA3E820D38520E940CEC7E586B389B40042
                565656B8880084CA4F1B06464A8ED411D26DBBA18D4C676CDCBA4F121E9DF22A
                3E39AF8420D18B49CA9B109B9CDFA5D5804280C850A9E946470AAE35FB09129F
                FCA25BD557DC3D5FEEDDBEB369CBBA0D08F10BC0AB27CF505B5E09574717FA74
                6BD11B5F877B37EF0A3058776F3FC0F5FA5B42E444A2DB6150781EA59C3A142E
                3DCD1370DC053567142E3B0CCD5F41E129FCA1038762D6E459983179A6C80E46
                061650BD48C152D90079F46626C4E72331BE04C969E420D9D7919A558F84D46A
                24A6D6213DFB26B272EB5058720B6595F785CAAB1E08E5E4D70B489A4161C525
                16212A364F1C13534AC5D772538B901A9B257250515639349474F0FD570329C0
                F6824C1B39746C4F6552AE3DDAB66D2B24C580FC014ABB0E6D098E769092EB8A
                8E5DFBA28D6C171C39715E12129EF0323A3E2B2F35B3448D20194DEADC2A40C9
                CCAD908E4FCAEC14119D34303D2B7F4B55ED75176D3DA30A2D4DFD17FB77ED6B
                1A3F6A1CFA532BD8B54317EA4A4EE292AE21D2125385BBBC7CF242B80BC3C2BA
                51779D60A82028CA505D564550DD4065F1350A904588094B4264482C05CF54A4
                C4A4233E3C093646D630239730D33186AD1165945D87D08E6A7917B6F54E3DF0
                FDE7DF60D288091839E8574C1B37116A8A4AB8A07046809545E5232FAB9A8E75
                488CAB466AD235A4A7DF407C7C3592936B5159F5448458566E7AE19FA1B6BAF4
                1A2A8A6AC45859017548D419156495D0CF592BBECECF39F0F2EBD35273A93415
                5239CA447A52A6F8770F1FF82B06F4F94C74342C0EACEDA4A4D05EBA2DE594B6
                E00557D2047A1B0289BFDE8E2447E0F4A01C63666229898C4C7C9E9E599A119D
                987F3636A564686C4A7947D2870D4A4A46B1544C4276DB9CFCB2AFB2F34A9765
                E6145A1C3F75B6505D4BFFE9F1630A4D4BE62FC6A8A123D1B7E767D8B96507B5
                B266227B302035E5D5021286A3AAB4925CA21405D9F9E41419F44B4D43765A16
                BD0165C848A260199A007FAF50D16584F88523322846C8FA123989B6318C340C
                60AE6B82C33B0EA0639B767F8232F8EB810294E103070B5078B192E2E9B322CF
                645296C8A65291495024C5533649A8456A6A0341720D85850FF0E429F0EE8504
                8DD48CBD79D688A7F75FE2F1DDE778F6E0159EDC7B81FB371F8BB1DAF206D10D
                95E455202F83E023E56716233D319BB24A1E659A223AE6202B3547FC9B96CE59
                882F7AF6428736527F82208E546664A5E5C869C845DA909B10280C91F89A4C1B
                FCF0CDB77075F6908485C53DC9CC2E4F8888CB3944A0FC4490B4FBE04149CB2A
                9521587A91A34CC92D2857D3BF6496BA6DE7BE875B77EC7D3F6CE8680CE8F7B5
                5806C033A9EC2091A151E29C4DE3EB26EA6AD24439E133C2F15109880E8B119D
                0CBF86C5CFA32392111C10852BEE41F072F187A7F315319FE1E9E4036F675FE1
                263C47A1ABAC0D3D151D1CDCB60FDD643B0B50FA74EC8E8103BEC7D82123F1CB
                77DF1328E3A1A5A2428EA2408E6221E64E52A94C642451F688274812A8DCA434
                202DB91EA5458FF0E219F0F4E17BBC7E4EC0102C7C7C456394B8D048799CC55D
                D9E3FB6F71E3DA23D455DD4575F92D34D43E10471196C9B538FC661238D919C5
                C8CF29C6057945F4E9D60B9DDB76841CC1F2FB1C094143615646468ECA8F0CBD
                BBD4E510389D29B30890A4A5307BDA2CFA5D84358587273ECCC82A0B2350B6C4
                A5960E884BAD90FBC7F7E5AF6A71F0EF54627AB154767E550772949FA36253F6
                39BB5D095EB966E34D02E5EDF051E32543878C1216CFA193E740F00EE2CDE7A9
                77EE5A9AA160883C5DBC847C3DFDC4F320DF6071BCE215023702C2DDE90A7CDC
                0209165FD85938890EC244D71C3A4ADA503FA706B5B32A503DA38C43DBF7A36F
                E7DEE84CD6DD833A8BFE3D3EC3AFDFFF2CCEAB4C1D3B8E1C4509E74E9DE233B3
                E402D548A140CAA0084892EA91957E5394A08CD47A54553C462E7534457935A8
                2ABB2900B87BF3391EDD7B2374FFF64BBC24D76178DE5397CF30BD79419F07FA
                B7326085B99475A885E68E298B4A13835298570A2F676FF4EFFD39BAB6EF4C6E
                41DD0EBD9532A476D41ECBCAB29370A095851495229E6CEB4065875F7364FF61
                840486BF8F8BCBB89D9C5AE84DB9641981F21981F2619F3D265064720AAA7B07
                8725CE0E8F4A34DBB5F748C9C2252B5F7EF5CD8F926933E7C1DECE190FEE3DC6
                E387CF70A3E13622C3631011168DB3A72FA0A4A81C017EC170B9EC0E477B67D8
                5A3BC0CEC6513CF774F7819B8B279C1C5C70D9C10B3696CEB03277829DB52BAC
                4DEDA1AB6E28663F2F2828E3CCF1B3903FA28073C7CEE0F461791C2450BEEEF3
                15951FFA34122CDDDBB5C7CF5F7F83815F7F89A9E34643EDE239281C3B065383
                4B14340B90975E8EBCB43AA42554213DE11AF233EE203BE506D2926A29BFB0BB
                941138F4465357545E7207371B5EE246FD0BF13827B3861CE21AEAAAA9043D02
                9E3F011EDE6BC29387C0F56BCF9192588298D82224255788B63B2395B20EB5D3
                297159F8E5A721E8C2A0B08BD05B294D8ED2817ED6761DDA53B723456E42B0C8
                CA0937E944AFE9D2A1234C0DCDE0E319F8362BABAC3A262EDB3A35BB7A667C5A
                59F7F8B4CA7F77F1528B837F9792324AA448ED1252F2BF2758762B2A6B5D9D3C
                6DEEBD51637F6B1C3966228C4CAD70EFEE6314E697A0BAB20E3959F988898A47
                5C4C22941455E1EDE90B5F9F000107CBC6CA1E5616D4E65ADA09991A5B4057DB
                0066C676D0D33685AA922E14CF69E0BCBC12E48F9EC5F183F2420729BCEEA75C
                7274F761ECDFBA177B37EFC64F5FFE2040E94475BE5BDB7618C4676B077C8129
                634751A7A544909D8191AEBEC83845D9D5D48D5C17A0A4C4D61038B75198750F
                0539775059FA90DEDC0ACA2F45021886E3D6F5570282C2BC06315E905B8FEA8A
                07B87FE73DEEDE7A8B6B354FD050F74C8C3583129F502A4049A74E2823AD4494
                BC05B3178970DF0C0ACFA174EDDC059DBB7681B42C959E3F40E17CC2A00CFBE5
                5778BBF948BC3D025EE6E757E74744A5ABA7E5D48C21503A1328FF349FB05A1C
                FCBBF407289DA99F1F1D1E9DA63A6BEE92DC516327BF18337EB2C48CDEE88C4C
                EA040ACB5055790D6154622E3BB90B87F1F70B8135951E2F2A312ECE9EB0E039
                107A6E696107A34BE6D0D33582B69601949534A0207F9EA0D2260752C59143A7
                B17BE711ECDE711007F61EC3917D277078EF710AC8BBB175C376ECD8B803EB96
                AFC3B6355B30F89B9FE997DB0E5DE53A0A507EFCAA3FBEECDB03E3470DA130AD
                4B41D610562626F076F1116D6B7E5A357252AA9199508D3C2A39851937509E7F
                1BB7EB5E51C02D455C344FCA95A2A4F036EA6B9FA396BAA1C2BC1BC8A4EF7BFC
                805D04C245F878FBC65B3CB82BC19D9BEFC4EBE3122A85B8F54E4B2137492E26
                A7AAC0A1FD27D0AD4B4FC8485189A152C3136DBD7AF540F73E3D20DD8E40E139
                143E11485FEF40E176D7D6DD08F6A57C121AFF2437A72A3E2A26FB48625AE5C0
                84F4AAF6A40F1A146952F7A2B28699DB771FB399BB6079EDC83193DE52C783AB
                11B1F409CA8597B73FFC286BE8EA5C4248708400C5D1C115AA2A5A7073F58695
                A53D8C8D2C606E660353CA323ADA865051D6C44545359C39AD88A3474EE1F041
                0501C9BE3DC7B16DCB7EECDCB61F870F9C146E7268CF316C234036AED98C8DAB
                3662F19CC5D8B87C3D7EF97610BAC87640CF0E5DD199EAFE80CF7AA147E7B618
                3D6C109CED2D2907B9C1CDD1116E0EEE08B912418094A230B39E8069406ECA35
                6425D688E7D7AB9E910BD09B9B482D6F7A0DCA8A29AC563CA2A07B874A4E03F2
                B2EBC961DEA0B2EC8118E3AFB36A2A1F8B63527C0912936B9090548DECDC9BE4
                26D4762751B8A5CCA2A6AC839EDDFBFC090A9FD7F9ECB3DEE8F5796FC87690FB
                1394AE3CC7427985D7DD1028EFD392F36E53E6F18D8DCF5B1B155FF40541F2EF
                0659568B837F97389F90FA24A6162C59BF799FD7CC398B6F1F3AAAD0485D0FDC
                BDFCE0EAE60D63134B720C7B02C10E66A6B604830D3C3DFC09022582C2885CC6
                13FA7AA6E2B12A752CE7CFA9E2E48973387CE814F6EF3B86BD7BC841761FC5C9
                938A38B0EF24B66CDA8B7D7B8F8AAFEFD97948B8CBEE6D7BB16AE91A2C9ABB18
                BF8D9D843953E760C2C809A2D5ECDEB12B7517DDD0AD4307FCF8CD97D4A277C5
                C923079097990A271B1B78BB7AC2D5C60DA1DE91488BCA43515A150A78FA3E22
                078569657879EF1D1EDC7C8DDBD79EA1BEF281D0F5EA47E2585178834A540D5E
                B093DC7A8377D4113551987D7AAF116F28E03EBAFD964A593E85587212CA4061
                E139C8CDAA457A2AB7CDF421A250FE75FF6F44D9E94E25874F06CE983E155DBA
                5127D44E1A6D3B519BDCAE2DBAC874C2B01F87C3C5DE43121396F23A393EAF3C
                39A9C43439A56C7A6C52598FFF289FB05A1CFCBBF407289F53E959BD78F9A640
                02E5FED90B6A4DBA06266058F4E9A8CD6769754D60A06F4665C512970C2DC855
                5C71F0C0091C3B7A1A9A1A06903F7501A74E9EC7710AA347288C1E3A78527CFD
                C0FEE3425BB6ECC3A1430A3874405EB80ABF4EBCFEC8699C387A067B77ECC792
                F9CB3077C63C01CA8CDF6660E2A8890212EE2A1892FEBD7BE39B2FFAA24FF7CE
                18377228F434551113168684A83884F986E3AA4F1442BD6290149685C2D44AE4
                2595A120B5140D65B7051877EA9FE3D9FD2634525B0CEA68DE529773FFC62BD4
                95DFC3E33BEF70EFFA4BBC7A4C5D0FC1F2FC8104EFA9F361800A32AB111EFE3B
                2C9959D77E0FC05476F2324AA883F31753073DBB7613B0F42537D9B9631BFAF6
                EB8DF61DE520D791DA63190286DC64C7BA9D04B66B536C78EAE3D4C482C494E4
                D25371F185BFC6259777FC8FF209ABC5C1BF4B547664489F47C565AE9E397785
                00454DD3A0494D530F2715CEE3CCD98B5051D582B2B2363408087D82458FDCC3
                C8C80ADBB6EDC3DAB55B09007206E11A87FF143FDF4BAEB19F4121608E1F3F0F
                790AB0870F9FA6EF3B804D9B7689EFDF43AF6590F6ED3E84D933E663FAA41998
                346EB28085F575FF01A2ABE0E97C3E4BFBED175F60C8C081F8EAF33E04D55404
                FB78C1D9DA0E016EBEF071F48187AD17423CAF22333A0359B169488D8C454E42
                0A4AE84D2D4829A0C7E408E404FCFC5AF135DCABBD8727379E083DAC7F881777
                5E083D6A78F4E7B128AD88B20DB7C40DD4391523353E572C5BA829AA423C757F
                53C68C155D4D17CA27CB17CD87FCB1C3682B27055919CA269DDAA27397F6E8DD
                B10FAC0D1D24AE0E57DE2644665F4B4D2C724D492A5F11159DDF3F21B5FA3F2C
                3BAC1607FF2EFD014A1F0265C9D2955B3C96AE587F534955E7FDE9734A38725C
                4180A278510D8A8A1A50A1B2A2A5754900A3A6A627DEE8254BD608180E928330
                10FBB8D410200C4A332CACB56BB763D7AE233871E28228410C177F0F83B27EDD
                360A85C7042893C74F11ABEFC78F9A201E0FFF65187A76A170D8A98700A55FAF
                5E183F72247E1DF803860EFA09CA6714A078EA340CE9E7B136B086939933BCEC
                7D10EA118260777F0450598AF00D44E2D5442A4529C888C940767C36B2A8B5E5
                C769510C532AD2A3D391199B89FCE47C0146297534B585B5A829A0D699C6B233
                282067D751F02D47697EAD58D3529096077D356DD1CD7C410176E5C2F922601F
                DABB4B94A08E945164E5A824F5E88CD50BD7E0CAE5C0A6AB01B14F92A273D393
                E30B2E26C6978C8E8D2BEA929C51F71F961D568B837F9792334BA549DD53328A
                A79D55D436A77C52795241F1CDFE43C7217F465140A270FA0214CEAAD273159C
                39AF8E53A79571FC942276EC3E82854BD6125094478E9DC5212A21FB0FC9632F
                85D4DDFB8E631775353BF71C153AA9406E42AF61F1D7D85118AA13C7E939B5C6
                C78ECA63D9D2D5983A7986D0C431BF61EAC46904CD64B2F6AF30E0F39F84BA76
                E88E1FBEFE1EE3468CC0AF3FFD84E5F3E6C3405D432C6534A5106DA567026B7D
                53B89859C2C5DC0C974DF4E061650C1FBBCB08B8EC8E306AE763FD43901C4A79
                263C0699D4EA674527081524A6212F3E05D9D4FAE727A48AE739B149E2357CBE
                87CF4DF122ABE2CC421465E6202E384C2CEEE6A5996A046CB0A73B023DDC088A
                F9F473B6A5E0DD4194236E89DD6CBC252E963EAFB3534A6A93A30B5C13A2F3D7
                C4C7167F959C5CDD362DBBE13F2C3BAC1607FF2E112452A48E3905D5C37C03A3
                CF9B98DBA51F3E76FAD9CE3D07250AE4260CC991A3A770F4C479EC3B784A680F
                B584FCE633107317ACFCF36BFC9CBFD60C091F593CC660AD5CB3150B16AFC1FC
                45AB3167CE12CA2D7B705AE12275450A9471CE113007B060DE62CC9A315794A0
                69BF4D172BC7860D1E8AEFBFFA055FF5FD9132CA77F8F9FB8198327EBC0065C8
                0F3F42FDFC0518A86AC38CBA3243156DE85C508385962EEC2F11383AAA30D3B8
                084B6D0398AAEBC050495D889FBB9ADB20D0D90311D4D5455D09442A9591C4E0
                700112439472350A7101A1E231971A3E91C9B3D089E1F188090913A064C4C450
                19CB40661C4147522560067EF505DAF182257A6B07F4EF0B2D3575496E52D13B
                376BDFBBA5797531A9B145F204CA4802A54B6A6AEDBFE426AC1607FF4EA56495
                B54DCB2AFD3AB7B066734070A4FF09F90BB7F7EC3FF2FEE889D3D8BDE7A000E5
                20854E76101643B28DBA15769219B39708489AA1680683A16177E1EF63A7F9EE
                C7A19069DB0DFDBEFC51C0B561C30ECA2BF2B870415D94216EA32F9C57C19A55
                EB317FEE22CC9DBD0053264DC7FC59F30898A918F9CB64FC386038460F9D4841
                7602268C1A8311BF0CC14FDF7C8385D36740E1E0515C52D680899A2674CF5FA4
                C78AF4F8028C944FE292D20998ABA9C152430336DADAB0D7D31332535585C6C9
                9338B76F1F548E1E8529B98389B2B238BA999AC2DDCC0C2EC6C60871768683B9
                95C842819E5E54CEDCE16E6B0D57FAFA65934BE4540EE4609760A4720173278E
                461FEA727A509BFCCD677D7174EF6E496244F4BBD8E0A487C9E1D919B96915FA
                6971A5735213CAFA262554C8262454FC4B6EC26A71F0EF1481221D1193DEA3AC
                EAD6D498F834C3738AEA45878FC9BFDC7BE068D3BAF55B704AFE9C78B3191006
                A1190C2E47D3662E12E3070E2BFC1BF1EB19A463272F083799B77015DA76E889
                36D29DF0E3CF23307EFC34AC5EBD19E7A8955652D2C2392A1D3C49B765D3762C
                9CBF048B79B53B81B260F67CA1A5F336E0D71FC7918B8C248719811FBFFE96CA
                CF284C9D30013F7DF915164E9B05A563F2B033302207D186F65905A89E3C04AD
                D30760AC720A7A67CF424B5E5E80C18F2DD4D5E168600067232338191AC25647
                079E1616B0D6D282EE9933E23567F6ECC1DED5AB21BF7327766DDC829D1B36D3
                7113D62C58840D4B1763DFBA75D848E195B576DE4CAC98390543BEE98F81FD3E
                C7A491C3B16FCB5649A8AFCFBB2B2EEE0F1C4C5DB26F553E324F8CCA59951E5F
                F66D566A75FBD4E4EA7F1912568B837FA7D233AAA432B3ABDA937E4A492BDEA3
                A2661472F0F0B9DB3B779F7877FAAC8664DB8E23E40E27E90D3F4F6FFC3902E1
                9400810160F758B17A0BE875387682CAC871459C9457C12905351C3FA94C8F55
                71F6BC368E1CD88FA1830789731DBCB09857A17FD1F773AC5FB54E2C7C52BBA8
                2E2EFAE2CB36F6EED88709A37FC38AC5ABB06EE50672941954F75762EEE4D918
                3B6C2C860F1A8E51434763EC887118397C0C86FC325C88B3CDA6B55B70F2883C
                2E9E5586D239159C5750C439CA45174F9C82F2298247E19C105F96C1B946FBA2
                260C28081B6990C3D0DF6D6D6802073353385B52CEB1FA7DAB0B170B23381A9A
                C15EDF04565A063056D684DE0515722E657185E225350D18AAAAC358434BECB7
                C217AD0778BA37F9B85C7EE3E9E470878E69B109C5667189256BE3934A7F4A48
                2EEB44FA974B4EB35A1CFCBB95915529935F58DF2B23AB7C9A9189A3EEDEFD0A
                395BB61D7E7AE4D885A63DFB180C050AA4040189328CC8251C6AD93DD66DDC25
                20397B9E9CE182364E9CA2B04B9030208A4AFAE2684A7961FBE64DE2E2283EBB
                CA93537C1CFCE320289EB920CE4E2B53E95157D210470664EA44CE28F3C4FCCA
                A2190BA8C4CC178BAB7949E4ACA9B34586193FF6378C1A3116937F9B864913A7
                52F89D26BE6F36BD8641DBB179178E535E523A290F15F9D3BF43227F565CCB73
                F6C8299C3D7A5A9C8854A5D2C7E0685D5086AEB292D8B5C0585315E6DABFCB4C
                4D4740C2B0381898C256DFF8F7DCA3A503134D6D98EBE8C142571FD6970C2576
                26C68D5646862F6C4C8CEABD9D9D62A2438274088CE58929E53F26A5567426FD
                BB6789FF995A1CFCBB959C5A225550D440AE52F19DA777D8C64347CEBB93A3D4
                1E3A72EEB5FC6935C9596A972F5208649DA34F12670B9E5B397346F9CFF698DB
                676D6D139C3DAB26E64CD4D40CC4F38B17B5A1A6A40C237D03AC59B112BDBA75
                477B9976D4114843AE8D2CB5B943C4C5607CF197BA9226CC8D2C851BCC9BB900
                F3672EC692792BB070CE622C9ABB4488C71994D9D3E6D0F8222C5FB442ACA565
                70268E9980D1C3465196194939661C664E9E8E8554BA7653C938B87D074EED3F
                8CF3C7C85DE4CFFFEE28F4F7EA9143E82AA989AB0E75149584F4141561A044C0
                1034BCC597B10603A12BC48F79D31E536D7D585D22A731B316B2363297985F32
                7D676562F1C4CED2B6DCC3D9DD3FEA6AE4B9ECB4AC3904C737C969959D52D2AB
                FE4B90B05A1CFCDF50766E8D4C5A4669D7B884DC51AAEAC6A72E5CD48B3C734E
                F38EA6B6D93B2D6D03891E7D8A58F4183A3AC662F24D53D35040C3A05C241BD7
                D13185BABA2141A42B8E5A5AC6E2A878F61CCC8D4DA0A1A22A36C0E9DEA91B3A
                C8B617473EFBCA6F34AF95D550D61252BBA8214E126E58B585DEF0C9C25958B3
                A6CEA18E68A6E88AE64C9F8B650B978B0D7716CF5B221EAF58BC1C4B172CC102
                0AC17C71D6B48953A8439A849913268AD0BB66E1526C5FB30107B6EEC6C97D47
                84B370196227116E72F18F72C2C196728CA9863ACC34B9B4685289D112E2C7FA
                2A1AB8A44E9D969E9100848E4D263A86AF0994BBEE4EAED90488634672FA7E82
                6442566A663F02A53D81F29F2E377F558B83FF1BA28C22959A5E22975F58F799
                B36BE04C5B7B6F6D3D03EB0C231387472646E6EFCD4DAD78AD278CE953C4E225
                04970C4CA0A3A58FD31478797D8A869A36E8B53032A4379D1EB30C092E132363
                A811247A3AFAD0A2B0B974F132F4EED90752BCB087C4936D2E4E1ED0D13480FC
                09CA14E7D5C5F4FE312A6D0BE62EC3B429F329DCCEC5E4893331E537728FC973
                84B8CC4C1A3705EB57ACC7062A571B28F3AC5BB1066B96ADC0EAA5CBE9F10A6C
                5AB3062B162DC3AA252B687C15D62E5F8DF5CB5662E38AD5029ADD1BB6E0D0B6
                1D38B68BDA75EA9E2E9E508026FD5B3883E82BAA0A9DA7B2A5725E515C996848
                4EC227F7F89211724089AAA2FA3BA50B1A4F0D744D6B2F3B7A475D0D89D34F49
                CA5F9795513A242DADA867427C7E5B2A3BFFA9E0DA925A1CFCDF52564EA55471
                E9F5763171D95F0706C7AFB8ECE26F6D69ED56646561FB8CD4644116CBB03024
                CD4018D0A74A4B4317E7CF5E84F245353050BC1685D7A1686BEA89E77A3ABA04
                0CD574633338D839D29F618EAD9BB761D0C05FD1AFEF9738237F01AE973DA1AC
                A88E037B8FE0240550B10C813A2C3E95CF2712972D598FA9936663E4B0F118FA
                CB680CFB750C85DADFC5E78638BB2C9DBF9800A1F67BD51A6C5DBF11BBB66CC1
                BE1D3BB077FB6E3AEEC19E6DBBB073F376EC58BF4968EFA66DE42E3BC56E0887
                B7EFC4893D07A070E008CE1F3A2E74F6C0519CD97F04A78F9FFC43F250A0D2A5
                70FCB4E4C269C54672BF57FA5A86B72FE99BE7F87806BAA524E59ECACE2C994D
                A07C9B189FD32535B550363BEBDF5F3EF0AFAAC5C1FF4DE5E4554B67E7567522
                587E0E8F4CDDE6EE19E2EAE2E05AE16CEFF2C2D1C6A9899740F2353856A6D662
                CD2ACBC6DC5A5CF8A5AEAC02435D3D589999C3DADC421C6D2DADA84C19C2CDCD
                03D6D6B6549EF46067EB04077B675CA44FEBFE7D8771EAE459D122F394FE1A6A
                9BB76CDE8D8D1B7660CDAAADD8BB9B80397601DB771EC5E2A51BF1DB8439F875
                F018D12A8FF8651CB5C99331F887A1944BC60B9016CE5B8EE5CBC855566FC486
                F55BB169E376D27E6CDD72083BA883E3B3D5BBB6EFC3FE9D7B7164F73E9CDAF7
                FB9E2AAC0B04C17972B273E464A7F72BD0D74E113C27C82DCF49CE289C95C89F
                3ADB447AA77841E5A581BED93D2727CF325FDF88B090AB89BA2969A51B0A8BAF
                8FCCC96DE89B9C5AD53E29E5FFADD4FCA35A1CFCDF5641D13599C4E4826E99D9
                E5C3C22252F6FB79F95FF171BF52E3E5EAFDD2FDB24713410382060ED6F670B2
                7514D7F7589B5941474353C0626278096E979DE1E1E20A7B6B1BB8B8B809595A
                5A0B50549435088E3304C601ECD8BE079B37ED1033B37CE679F3A65D6269029F
                91DEBA791F766E3F840D9BF661C7AE63D8BB5F1EDBB71EC2A205AB3171F4340C
                FD793441329C60F94D68ECA849183F660A2651B09D377731D6AED984EDBC3FDC
                613EB37D11A7A82393A78EED38B5D0C7A9CC1CDF779041919C3B728CD574FEE8
                C9A60B47CF34291E3BDBA47C42A951455EE5BDAA82EA5B8553A75FABA9A83FB7
                30B779E8E5E97B3DEC6A54615C6C6A787272B60595974379053533A8747F9B90
                54D83536AE482E35BDE6BFC545FEAA16073F0491B3C8E6E455F5248D89088E39
                16E2171EE0E71550EBE3EEFBC2DBED4A231D25DE6E3E2078C42267372757B83B
                BBC0C2C454ECD66865664AB038112CCEB8E21300FA254399BAA6D30AFCA62990
                931CC1AE9DFB05207CBE87DD64CFAEA3C2417829C2FEBD2748A770609F3CD651
                E9D9B065BF38AE5FBF1B0B17ACC386D5F4BDDB4F60DCC87904C83C4C1CBB14BF
                FDB61293A6AFC594599B3073FE76CC5ABA1B73961DC4869DCAD879480727CE18
                51CB6E06153523CA4FD465A9684B3494D4DE1AA86B3DD356527DA8764EE9BEDA
                59D5FB5A4ABAF78D75ACEE5A1A39DFB43573AF8D8B4F294D4C4ACF4C4DCB8ECA
                CCCA77CBCC29D6C9C82ADB979A59323739AD74705A6645EFB4CC9AF6299935D2
                2999D7FEDB2161B538F8218840912248E448BDF3338B27A425649D88BA1AE31B
                E41B5246C03CBCE2E1F7865CA691D78086068480DA4178BABA21C8CF5FC0C1B0
                E8696992A35008A69C624EF94657C7508072F8D009B1F2EDD0C1E302145E9FC2
                27084F1C3BFFA74E1EBF40BA28B4FFF01901C91C72928D1BF71260C7B17AD92E
                AC5D499963CB29AC5EB1975AEF8358BDFA3056AD3F8AB59BE5B175B722761FD3
                C4210563EC3B6E8813E7ADA0A1E7022B1B7F5C760980A77BA0C4FF4AF0DBF0A0
                AB779CADEDB25D6CECC33D1C5C0203DCFDFDA343E2FC33130BAE1466D5B897E5
                37D8A6A5E7186464E69DCFCA2ED893935BB4342BB7642281F21381D22725BDAC
                2381224BA0FC8F00D2AC16073F14112402968A92EB7D8AF26AC665A414ED4D88
                C9B2890A4F4ABC1A1C5B13E817FAC0D73BF0A58F97DFFB40FF90A6E0C0204900
                81E2EDE5015797CBB0B6B280A1811E54D534604101D7D2CA1E6AEA3AE0791955
                EA8878B9C2E9D34A62AEE5AF5254D4F937DA4F20ED3DA28025945F56ACDA4EA5
                4409BB779EC5C2857BB164F1618C1BB719C3476DC28F43D7E38B9F57A3D78FA4
                411BF1E5D8FDF869DA492CDA6682F507AC70F4A207344D4361E9100E47D7B026
                FFC098A709F1E9998539457A05D985DB73B30B56E4E7942E2BC8AB5E5A905BB7
                243BA761414666DDCC8282AA89F9F995C3F2F22ABECFCD2DEF9B9553D1954069
                CFD7431124FFA38034ABC5C10F490C4B7E76A51CA967414ED52F85B9D54BF373
                CACF64A416D8C74625465D0D8E2CF274F7B9151214F68C4079EBE1E6DEE4E9E1
                86E0A000F8787B9293984045551D06D421F1B24A5DEA9278D59C21B5D8972E59
                8A39199E6BE1093A96AAAA3E54540C849495F5858E9F51C601729C5D074F52A8
                E5E59567B0919C63D8B085E8D96304DAB51B0269B9A168D36E24DA741C8736DD
                A642B6FF22F41DB10BBFCC3E83E5BB2DB1E9B02D8E2B7B41C7221C568E110C4A
                635048FCDD8CF4FC2002653381F23381F2595E7649EFBC9CCADE399955BD52D3
                AA7B262695772F2AAAE942B0742450DAE5E494C91024D2A4BF059066B538F8A1
                2923BD522A2BB35A362FB7B65371D1F5FEA525D78717E4D72ECCC8283A909898
                AD4FD6EC17107835CBCDDDF3BAAF5FC00BEF2B3E8DB6F676122B1B4BB8B83983
                97569EE7B52DDC42939368EA1841455D0F1755B4C5F18292B6D079720F3E0DC0
                A7035867CEFD2E153D03ACDBB10B47152E40E18C16E6CCDD88AFBFFE0D727283
                D0467A08DAC88C471BB96968D37931DA7CB6096DBEDC8DB683CF60C06C338CDF
                EA870D6762B14F391EE74CB361EA560247BF127807E7BF8F492EBD51585AEF4A
                E564219515CA1979B2E959C5D2E9B9D5D299790DD26939D7A553B31BA4F373AB
                A572B3F977F0BF771FC216073F54E564574BE7E6D4C8E5E7D57426503EA34FD8
                4FF4099B4CBFE84D0989696AC12157FD3CBD7C4A1D9C1C9F5A5A5B355A5899C3
                C6CE1A56D40E9FBDA0025E1075E6BCB28043E1AC328E9E380BF9334AE204A3D0
                492571DEA85947299FB08E9DBB801D878EE0BCAA3656AEDE855EBD7F46FBF63F
                404666203A759D00B9F693D1A6FD4CB4E9BAF47750FA6E439BAF0FA3E7046D0C
                5DED8A35A722FF04C5D0291FF6578AE01756FC363EADA236B7B0C6B6AABA7E66
                695975F7BCC2FFFCC9BABF4B2D0E7EE8CACEAD91CA2BB826935F58DB9E5AC3EE
                09C959DFE417554ECCC8C9DFEBE51BE06261635B61E3E0F8D2DCDA4AA2A1A30D
                4313739C3EA782BD078E8B138C0CC7A9D317C552043E13BDEF80C29FDA7FF034
                E98CD081436785D66EDF0179252E3FA7D1E78B41E8F5D9208C18B91C9DBA8C45
                97EEB3C951A692A32C449BEE04C91727D0E6FBF3901D66806F570462E6A922AC
                3E938923BA4550B2BB0643D75A38045F9384A7DE7D9D5674BF34A7A8DE202DBB
                70624A667E97E48CBFE76E5EFF15B538D85A54505447C0D448179654B7CD2D28
                EF999D5F343C2523FB9097AFDF552D3DFD3BE72E2ABE575657C3B153A7C5F284
                AD3BF663FDA69DD8B1FB9070135E1AC9EB5976ED3921B47BEF49F0D9EA3DD412
                EFDDCFE09C16DAB4672F0E9F3E834933E71310BD307FD156AC5B7F867E7B03D1
                BDD73C74E8469074598936BDC9491894010A68335003FD167861F2911C6C552D
                C6398B3AE87ADC87B9CF4DB845DE9624E63F7F9E5BF92C834039975D50363433
                AFA46346EE7FDF8D98FEBBD5E2606B53766EA5144936AFB0AA4F5A66D1ECC494
                5C3382A07CF7BEE3AF4F9D5696F0E67DBCEF1A5F29B77DD30EB1F68477AAD6D5
                D0133B55F33A144D152DB1DB12EF33CBCB0DF81A5DDED642E99C32B5BF0BB16D
                F31AF4FFFA3BFA8DF5C345DD647CF1D32EF4EEB5161DDBCC45E73623F159C749
                90E9B99A40D987364375D17EB235BE5B6B8D79C7AEE298713934AC6EC0C6EF3E
                3C42EEC0D9BBA0A9B8E4F9A3A484D228CA5DBBB3722ABF23B56DE9DFF6A1A8C5
                C1D628868540E9989953CADB8C9E3D7B412363FF21F9E70A6755250C0303708C
                37FC256878BB509693ED65B12B024FDCB939B923C43F14FEDE0162128F8FA101
                57C50D14664D9F880573A7A1738FDEE8D66F2474CCF3D0FFC79D02942E320B04
                28BDDB4F846CAF3568F3CD61B419692840F961BD2D9651903D615A093D877BB0
                F57F007BEF5AF85DAD795F52FAE2566A7285777E5EDD0A82845ADE4AD996FE5D
                1F8A5A1C6CAD2250A804557E9B935FB1DBC0C83AFAD8C90B8F0898262D0AA13C
                E5CF4EC2ABD97813628681B7C588098F454274A2505E663EB252B3C5161B6989
                E9C8CDC813F7EE19377A18460E1B4C59A42D7E9BBD0566974BD1F3AB8D146497
                A383CC7CC8498D46970E9320DD6F33A47F398736E3AD213BC5113F6D72C55ACD
                6C9CB6BD894B3E2F60E9FF107A76F9884A7BF8B6B0EC45755A668D755E61FDCC
                ACBCCA1EA40F36C8B25A1C6CAD2250640B8A6BFA1595D6AD7171F70F3C735EFD
                9EA2B24E239F9667C7E0FDEE798112EF9FC2B75F6107E18D7892E35204187CA7
                0D8683F777E38D79181A5E903476D450FCF0ED976823258B83F2860294F6BD96
                435A6E1EE4DACC16A074ED3819ED06EC40C751AA0212D6E06D9ED8615C06358F
                A7B00C6E8489F71D2819254B520A5EBFCC2B7E5A9899734D2BBFA8611C41D285
                F4C1E613568B83AD55048A3441D2BBB8ECDAA2B0C8240F82E4A68ABAC17BCE1B
                0C0A3B0A9F756637F1F3F217E585776962376160180CDE23BF28B758B80A3BCE
                AF038760CCB011E286046DDAB483996D28344DD320C30156668E80A58DDC0474
                EC41C00C3C8AF6934C203DD30B52333CF1CB8E20ECB1B806CDA02698843541E5
                722D4E1B274B92CA1A9FA5143D4A4FCFBF7E26AFA47E4866414507D22750FE2E
                E5175533283D0A4B6A67A7A4173828ABE95FD3D0367ECB7BC85EB67316798321
                61681814DE8D89776B62476140D845585C8218160EB9437E1E8A41DFFF882EED
                3A10149DE113948DC3E7FC20D76331E4DA2F4487CE4B21D57E12BAF75D88CE43
                15D0718A19646679436ECE150CD915825D66B550F37F074D9FA7387A291BEA0E
                0592C4D2F74F920A1EC46714DC38985B7CED4782A4DD2750FE4651D9912248BA
                514E994E39C59240A9D6D6337B43F944C20BA8F93E3CBC0F3E43C390840747E0
                6A60D89FA0B08BF05EB47C97302E3FDC210DFF6504BEECF32564DBC8A273E7CF
                101E5B8A155BF5D1BEE76248775A04D92E4BD0A6F36C74FE7E3DDA8D53439BE9
                B66833C717D20B8330724F10B65EAAC009D7FB3868538BF54A31300D6E688A2B
                7BFF28B9F441645A49C3B6CCE2DAAF338A2BFFA5EB7FFF37D5E2606B553328D4
                F94C25773123502A750D2CDE506723E19CC2A587CB0C3B0C83121B11273A9BB8
                C8F83F61E18CC2CFF966507C1D32DFD2B64FD73E0294DEBD072026A90AD3169F
                43BB1E8BD0A61D959DB673D1A6EB5C741FB8199D7ED3429B69366833FB0A6417
                87085036E816638F551D36EAE662F1C94038273E65501EA4553C0E492FBDBE36
                A3A8A61F81F25F5EF4FC77A9C5C1D62A06A5A4BCBE6B4676C994F4AC6213752D
                A30AEA7E5EDB98DB4A788D295F8AC1B984B307DF7892C32C3B0AC3C2807019E2
                0D8A39AF04FB8588BDE6470F1B236E40C9DB7176EBF23952326B3167C9058264
                16A43A2F41DB3E6B20D37715FA8C3902B9A9466833D38940F1448F8DB118BEC9
                1EFBCD4BB1DBA21C8B2FC663EDC550C4D6A129BEE2CDDDB882DB7E99E5D797A5
                1554F6C9282EFFA03B1E568B83AD55CDA090A34C494ACD33A17C5261686CF3DA
                D9DE45C29764F04A7BCE260C0AB7C80C0A3FE623971B06851D87F7D5E72CC3A0
                B0F896B60C4AA70EBD119F528109D38FA24DC7B990EEB2146DA8FCB4E9BD1C5D
                86EC419B71DA547A1CD0669E0F7A6E8AC384DDEE38E15087A34E0D58A19682CD
                EA5188AE412381728B40F1C8AAB8B130BDB0AAD72750FE66FD014AB7ECBCF2A9
                9131A9669A3A269546A6766FE84D9770D9E189351FF72BA2EC3008EC1ACDE070
                B96150181ABE91026F79CE904C183D9100E90AE936EDD1B17D2F24241663F898
                AD90EA340F6DBBAD2267E133C6EB2133F820DA4C3084D42C7B7458E285FE5B23
                B151D107E66137A1EE770F5B755270C83016D1E5789754FEBC3EB1B0C129AFE2
                FA9CECA2AA1ED945159F40F93BC5A0506BDC8DDAE4E97E8191961464AB4D2D1C
                DF509991F0DD477937002E395C7EAE78F80A409A8F1C6C590C1067179EDEE7CB
                46F99A9FCE1DBB0950BA77ED87EC9C3A4C98B24F388A5CD795E21C8F74BF4D68
                3BE408B989053A2C7243D7957EF8727B342E3AE522A60E30897E833D46D9386B
                9B858892C6B7044A0D81624DA0CCC82DA9E9F60994BF59048A3481D29D8EB32E
                BBFADA5290ADB3B0767ECB73277C572F760D5E98CD936DCD4EC2936F7CE49CC2
                E2D69981E1195C7693954B56A15DDB4EF49B9245FFFEDFA1B6E621366DD7835C
                A7F9E426CBD0A6DB0648F5DD06B9E1F2909DEB808E8B5DD175992BBEDBEC03F7
                A872DC7C07D8C7BFC261A354E8B91749620A5EBCCE287B5A9E9E57675C585A37
                B9A0A4B66B5EF1873DD9C66A71B0B5EA0F507A90E69A593A5DD6BF64D5606DE7
                F68EA7F0595C5A9ACFE9301CCDE2121416142E00E2F2C447BE5B29EFBAC437CC
                6E2BD75180F2D5573FA2B4E426543403D0B13BB5C532944FBAAEA78CB2193243
                4F0A50589D165FC6B79BBC11917B1FF7E907B38D7D818386C9B00ABEC6A0BCCA
                AA785E9C965BAB4B908C2758BA7C02E56FD61FA0F42AAD6858A46768E9491DCF
                2D5B078F469E3F717170154070A9E112C4EEC19070D7C3E0F0B6E99C5F788C61
                D1D3D417978E72B6E9D5FB33C8C8B6458F9E7DE1E911013DA34874E9B90AD21D
                D642BAE736B4E9BB1DB24315203BC71E32B3EDF0D96A370CDDEB8DDCDA47B8F3
                06B00EBB8B03DA91708DBA21892F78FC32BFEA695E464E856A5151D5E8D2D2DA
                4E05C5FF3D1769FD4FAAC5C1D62A02458640F9ACACF2FA4A0AB201D4F1DCB373
                F46CE22505EC18CDAD314FDBF3730EB53C01C7D0F018EFA3CF6587730C9F5DE6
                8BD179C9C1C09F07A353E7AE6823D516674EEB40552B5080D2B9D77674E8B717
                B203F6A1DD88B3902337693BCF11DF6D0FC464850854DE7B87FAA78069E075EC
                D5088357FC5D4942E193E705D5CF32D3B3CBCF1614540C25503A7E02E56F5649
                799D6C765EE9179939859BD434F5AEEAE81B3F7472615014C8497CFE8485B749
                0F0B8D2477F04544782C4243A2E1E71B8AD0D018D8D9B9C2C6DE1D94713071F2
                1CB14472CEA24D54667A41AA4D67F4EBF303664F5F873143D742AADD6C4C5AE2
                849EC3A9E40CB382DC583BFCB03A0A5FCCD5C4FA0BCEA879FD06D5AF5EC326E0
                2ECE1965C023FAB624A7BAE969625E435261C5F56335F50D3FE7E717B62F292A
                FD04CADFA9D28A6B6D09946F63E253F6102831C666D68F6DEC9D9B3494D5C935
                424437C3A5263E3649DC7CE10A6591280AB841811102147FFF303838B88302B0
                8085F77BE3DD9DF61E5644876E5F0B505803FA8FC0AF3F5246919D816F476960
                C6B65CF498E48636BF9A60C896644CDEEF896D6A5EC8BA790BF5EF1BA1665D88
                338669B89AF5AAA9F22E1E27E4D6C7A46497EECE2B2AFE2E3333FB835EB0D4AC
                16075BA3720BCAA52AAAAFB7A7E3CFDEBE41C7D5B5F493ADED2E3FD5BF642631
                3534A112132E26D3B8D4F04D17F80E1DBC753A3B8ABFDF55F85E0981BBBB1F9C
                9C3C71C9C416946FB065FB012C5FB519DA8636E8F9F90F9091E23B7D7680AC54
                6FFCF4CD2C74E9BD10523DB660E3995A2C3A51827EB35DD176A43106CC5183BC
                79346EBC071ED00F6717701346AE15882B78DB54D480FB31E995210999051BF2
                8B4BBE282A2AF9A0172C35ABC5C1D6A89CFC32A99A6BB73B1697D50E27401435
                B40DB2EC1C5D9F9F535495D85AD89093840A476150D84D4283C30528BCBFBE8F
                7710BCBD0245D96169681B43515947ECEC3475C64268195863F0F0499093E98A
                2E9D3E43C776FDF1DD97D3F0F3B03D6823B702B2DF6A61A97C39B6E8DEC5A8AD
                B118B4DC10CA4E69A87F2341D9A317F0887A02538F6A0426DD7F9F5AF2EC6672
                5EBD676155C392F2EA9A3EC5C5A51FFC791E568B83AD51F9459552D7AEDFEB52
                5ED530DED0D8425753C7B088CACEABC3C7E4252E0ECED4D9FCBE9A8DC56E7235
                240281DCF950297277F3157BEA9B98D8888BC2CE5FD4121B05F28682BF4D998B
                BD878E61FF9113E8DDAB9FB84F5F8F6E5FA24FF7A1183166173AF7A7F6B8CB4E
                7C33D5049B940A70CCF426B65C0CC319B328A455DEC11D72156DEB34685824C3
                3FE6DA9BECB2E7D5C5358FACAA1A1E4C2F2CADE89E9599F7C14FB6B15A1C6C8D
                2A2AAD91AEAEBBD5BDACB27E3A85584B6D3DA36A0B6B87B7878E9E829F97AFC8
                285C7AF82C7174641CC2AF4651888D4400B5C6BCB7BEB19195B86AF0FC793511
                6079FB510685B71B9DBB68192CED9CC42E05E2668EB23D20DBE62BF41FB018DF
                0D3F8AF6034E112CDBF0F50C339CB67900E7C4F7F04CBE0FDFF85C784665C0C4
                A5000EFE359294A2572FF2AB5EE76615DF54CD2EAA199D9D5FD4B9ACF4C3EF78
                582D0EB646519095A6B2D38B9C658196EE25573D43D31B04CA7BBEE08BDD84C5
                A0F092C7E6D2C38EE2EEE60313636B5C54D410FBC2F1D6E8BC3F2D6F537A42FE
                A2C82973162CC459C58B387EFC247EF8E127FAADF18D1D7B43B6FD2FF8F2A7B5
                98BBDE129F0F3902A97EEBD177D851AC3DEC000BEF3C04C415223CAD12D1E98F
                9094F7B2B1E45AE3FDBCB207E1A9B9157BB3F2CA7FC8C92F69577FEDD62750FE
                4E51C991A19CF279664EF16ACA27010646E6F7089446BE01034312E0E32F320A
                9F196648F8CE61DC1EDB583B8A5BB8F09D3AD84DD6ADDB263634E61D27B9FC70
                4E59BD7E03C64F9A2CF6573978F030E4E4BAA063FBAFE8B7F73D64BB4E45DBCF
                D7E0BB7167307A913E064E55C2E805E7B16A9F0114F51D11965A81C8D4074D51
                690F5F64963C2DCD29B967595273675EF5B5BB7D0894561164592D0EB64655D5
                DE942B2CA9FE3A3A2E751B959E08334BBB478ACA1A4DE42C08F2A536F86AA470
                143EDFC36587EF45C87714E39B41292B69898D73787FFC5DBC57CAFE13E2E2B0
                E64B4D4F9E3C89E5CB9763F3E6CDD0D3BD247640F861E058FAEDF541FB6EBFA2
                4DFB61E8D4773ABE1CB41213E61CC3E603FA90BF680F1D334F898B5FE2FBFCB2
                17CF734B9E556715DDF1CD2DBAB5AFA0BC61303960C7D28ADA56E126AC16075B
                9B0812292A3BED29A70C0C0C893AA2A2AE9368646AF5F4A4C27909DFF727F04A
                C09FA088556DE4287C3F42BEB51CDF528E21E11B3DEDDC7910DBB7EF1773270C
                4AF3CED7FAFAFAF4B59D98356B1656AD5C2776A0D4D2B5C6D65DE73074CC0AF4
                E8370D1DFA4C8554D7F1E8F6E51C82659FE4E029D34607AF98D7D965F7EFD7DC
                405159ED7BAF828A47C7F28A6F8FCB2BBDD6937ED656E326AC16075B9BA8EC48
                65E59674A4203BDCD5C34F919C24DBC4DCE6C5F1536725B60E7CB6D85F80C277
                A7605002FD43E0ECE426B635E7BDDBF84E613B771C20C7D82D6EA6C0375DE09C
                C26587613976E42834D4789F5B156CDBBE071BB7EC16BB1EE85DB2819AA63994
                548CA0AC624E5F3795E8E83A34BAB845BE8A88CA7F905D74ABF2C67D49ECADDB
                8DE6D7EA5FED28AFBC3BBAA8A4BE37399F1C81D26ADC84D5E2606B1301229591
                5DD4A5B2E6C6441B7B577D6535ED124B1BC757A7CF2949FC02AFC2DFDB4F80C2
                0B921814CE277C4753BE2F21EFBCB4835C642B01B271E34E010A5F8FCC5D0FBB
                0A5FC8AE704A1E8AE72FE0FC858B387A4C5E5CBBCCFBB99DB9A0056D3D1B58D9
                78497CAEC437C6C615BD2E29BDF7E0EE7D9493A26B6EBCB6219DACAE79B6A0BC
                E2D1C0E2D29BDD0B8BAFC991FBB52A48582D0EB6361128D2B905E5DD4BCAEB66
                5E32B1B655D5D0AD3534B678CB5B5D0450996906851D85CF1CF33D91790BD2F3
                E7947160FF516CDBBA57EC04C9F7F16150B6EF3A2C720A075A76163EA9B86FE7
                7E7ADD6E11748F7249A28E88F75731363297385F767C1FECEBFB242A34B43A25
                2E29A628BFCCB2ACACFE4851E9ED05E5550F869414D57F5E5C78AD6351518D4C
                49495DAB8384D5E2606B13012243E5A70FB9CA120DED4B5EEA5AFAB7CE5F5413
                771273F5E0A58FBF67140EB2BCD4C0DED649EC417BE2F8692A39FB7E8784DC84
                6FCFC2B06CDEB65FDCF285616167D9BD6D0F0EED3D8C830728EC5259DA4F0029
                A9E9C3D1D94B723534F25D5C6CF48382ACAC9C92BC3CE792BCA29315A5350B4A
                4BAF0DCE2FBAD19760E9545ADC2047B0B44A409AD5E2606B535E61856CFD8DFB
                5F44C5A66C5051D70BA100FBE0D8C9334DE42CB8ECEA25DAE3E8B028E126BCD6
                843732E60D8CF7EE3924F6825DB7762BD6AED9226ECDB2868E7C23068685A1E0
                F99433272E88DBDE6ED9B41F3B771F879A9611DCBC8210121AD61818E0F738C8
                E772565E4AB4E9B5D29CF537AB0A87DF6EA8EB5B5F77A36349D90D5952AB06A4
                592D0EB6369193B4BD79E7F10F41A1D1FB5435F463299F3CE620CB37D9F6A43C
                1216741531E1D162AD092F60E29DAE8F1F3D454EB2132B96AFC5CA151BE8B81E
                CB96ADA33678BDB85BD886CD7B84AB3028FB771EC68E4D7BC456A26A1AC630B5
                7482A5ADABC4D3CBE7756C4C54555672A4435D49F6DAFAB2DC1FCB7292BB14E6
                64CA16E47DB87B9DFC57D4E2606B524559835471515587CA8AFA21FE7E574F2B
                5DD44C3735B17AA6207F5EC27324DE5EFEB8425D0E875A6FDF201044623FB79D
                7B0E92736CC3EA759BB174C55A2C58BC02F3172D178F57ADDD84B51BB6620B75
                387B0F1CC5CEBDFB70F8F8095C5056A34EC70456768E70F5F4E1A0FC2C343C26
                2D3523FF3465A4E1A515D7F85C53AB3877F39F558B83AD490C4A497175E79AEA
                1B635D5D7C34152FA81718E89BBC3C76545EC2B7E1675018101FBF6091572E99
                58E2D4E90B545A7693736CC4F255EBB168E92ACC5DB01473E62F118F57ACDE20
                40D9BE6B3F85D9933878F4184E9D390B554D1D189959C2CEC9051E3E7E4D41A1
                918FC2A3E2A3D2B30A7750F9FB86D7C3B4F4337E0C6A71B0358941292DA9E956
                577B6BAAB9999DD985F36A955A9AFA6F28785237E221A6E91914BE333BCFA950
                D0A56EE684701286829D8421993E6B3EA6CD9C271EB3ABB0DBECDE771827E4A9
                3D3E771E1755D5A06B680C0B1B7B5C76F3848F7F50D3D588D887D171C9573373
                8A37E617557E41A0B4AA49B4FF8C5A1C6C4DAA2CBF2E5D565ADB8B409967A06F
                E6ACAAA2D3A0A1AEFB8EE747D84D3CDCAF083771A196D8C4DC46949D1DBB0F60
                D9CA75028AD9F3160B487E9B32131327CFC08CD90BB078D96ACA283B849B9C53
                5485B2BA06B4F4F4859BD8385C868B8737FC82429BC84D1EC625A68550D95957
                5852DDEF13281FB00814998AF26B7D492B09143F3D5D93BB044AA3E20555B1D4
                91CF0E33284E2E9EE236FE7C87762E3B0C0343C2604C9A3A0B63274C116257E1
                AF6DDABA0BD439897D69B5F50D60606C02332B5B5176289FC03FF86A53644CE2
                8384E48CA082E2AAD5C565B57DCB2AEB5BC522A4FF8A5A1C6C4DAAAAB821575D
                757D405666E1566323AB084303F3872ACA9A4D8606A6C24D585E570245D9D1D0
                36C0E163F258CF77235DB21233E72CC4D41973316EE2548C1C3311A3C74D12CF
                B9F46CDDB15740C5A5CAD0C41426169622C43A38BBC1DDDB1781A1E14D31F129
                F752D273FC4BCAEB96939BF4E189BF967EC68F412D0EB616112452A476F5D7EE
                FC141D9574D8C2DC3E911CE5E969850B123BDBCB70B0778197A79F283BDC2A2B
                2A6B882E66CDFA2DA2C361F7E072C3800C1F351EA3C6FE26CA10075C2E4FBCD3
                B5A68E21B5C356D40EDB09377176F782B75F204223A21B135332EF64E516F910
                208B49BD3E81F281EA0F503ADEB87E7F686040F8394B0B874C4D0D83E7944F24
                2ECE9EE2ECB08F77001C9D3D44B7C38B98B82DE66E87F3C9E469B3FF74936123
                C70960B814F1D7F9753CB3ABA57B494062E3E0084717775176AE0404233C3AEE
                7D6A46EECDBCC232B78AEAEBF3A92DEEF909940F54944FA4489DC951C65E76F2
                D45451D62E24477979E4F0490943C28EC2C058DB5D16F984DFF86650B815E66C
                C2A0703619337EB208B4F3162E131DD1AEBD870458BC8F3E971D0685432CBB49
                4048182262E2DF1128F5F945E58E04C86C528F4FA07CA0FA0394AE0DF577A7B8
                387B9B6AA8EB57E8EB99BEE1C9365B1B27383AB8C2C9D10DE656F6D0D63382FC
                19453137C2A585416976148684C5E070BBCCADF19EFD47C4FEF93AFAC630B7B6
                A1B273596413EA7610121E85D8C494B75476AA8BCBAAAD0890E9A46E9F40F940
                459048937A102873DCDD7C1DB5B52E5DD3D5317EA774515D40C28EC25985CB0E
                2F89E42E86675B39AC72C7C3A08CFF6D9A2839CD1D0F7F8DBB22BEC10283C280
                71E9717471156E12743582DD44929496F99ADCA4BCB2A6C19800994CEA4AFAA8
                A6EDFFAA16075B8BFE00A5CFB5BADB4B3CDCFDBC0994DB547E1AD5D574606FE7
                2C20E1D95976050EB23C2FC2F323DCFECE9ABB48803261D274010A3B0B77415C
                7638C87277C4732E7F05C5C73F88432CA2E39324A99939AF8A4AAB8AABEB6EE8
                1220E3495D3E81F2818A209121F52B2FAB5BE7E67A25584BD3F0BE82BC6293A6
                869E00C4CAD21E16E6B6A2C5E5BCC11D0F4FCDF38C2C43D10C0A971D3E72C0E5
                D6995FC7EEC37031641636B6FF069498846406E5656149655E55ED7555026414
                A9F327503E50112472A4AFB3B38AB63B5FF68AD4D1367A74F4884293AECE2598
                9BD9C0CCD45A2C9E5651D711AD2E4FC9736BDC3C87D20C0ABB09E7136E9979A2
                8DCB0ECFA128A96A81176733284EAE6EF00D0C4158542CE71306E57941714546
                4575FD590264288997627E02E5435365F94D0EB2ED483FC4C7A51D7074708F33
                34307F72ECE86971D6989DC4C4D812C64616FF06142E2D1C589B676419149E4B
                99327D8E0088F30997283E71C8DF67686CF147C7E329BA9DC8D804C427A749D2
                B3F39E92A32411284709909F49ED3F81F201EA0F503A9006875D8D3D616FE79A
                626A62F3ECD4C9DF3B1E6E8F19924B8666FF21287CE419592E491C761914EE90
                38001B995AC19EEFA1EC7305C161915C764041B62933B7E0316594180AB37B08
                90EF481FED9963568B83AD41A5E5377807C88E45A575C3C22213CE5BDA5CCEB4
                B2757E7E524151626A610B164F967118E5EEE5C87105312DCFAD31CF9530285C
                7AD84D583C23CBA07046E1D6981D8557C871E9B1B37380BBBB274282C3111B93
                8894E48CA6ECACFC8765A5D56175B53736D754DFF8B2BAEAFA07BFFBF4FF8B5A
                1C6C0D2A2AA9972A28AEE99C575835FA6A44BC1A81926F6EE5F852FE8C920085
                A7EC19140EA31C641914768BBF82C2E58627D91818EE82F88C727346E1C9393E
                37C4A5C7DEDE111E1E5E080D89405C6C125253329B72730AEF9797D5041028AB
                0894BE04CA477B4290D5E2606B507E61AD546E416597ECBCF2092161B17AD676
                2E2586C656AFCE5E50FB1314761316BFE9DCEEFE1594E613825C7678FE84C778
                C676DBCE7D7FB6C60C192F4D7074BC0C2F2F1F5C0D8D44427C0AD2D3B21BF3F3
                8A6F5794D77A12288B6A6B6EF626583EDAC936568B83AD41790535520409EF7B
                3F252834DAC4D6C1AD4253C7E8CD4515ED7F030ABB0AE70DCE1D1C54D935B8BB
                61076140D855D85D788CF30BCFDC1E3D715AB4C63C7DCF7F96B333B5C63EBE08
                0F8B4652621AA8ECBC2B2A2CABAFACA87320506613283D3E81F2818A6F3A49A0
                74CFC82E9941A0583B3A7BD510246FD5340D840B3467149E43E1569757B57159
                6906A5792D0AC3C2470EB8CD936DCDA0703E61E0DCDC3CE0EBEB8FC888582E3B
                92BCDCA237A52595955595D74C6B6BAE4FA9ABBDD58D60F9683B1E568B83AD41
                0C4A566E590FBED92481E2E0E2EE7BEDF43995773AFAA6021463336B9131B8E3
                E1E58CFB0E1EC3C62D3BFF0485CFF570F9E110CBEEC2AD314FC6F149C3E3A7CE
                8A39143E91C8E7893C3DBD11101084E8A8782E3B92C282D25715E53545D555F5
                DA04CA3802A5CB27503E5065E7564A13243D9352F3E6065F8D71F6F00EBC4E1D
                CF7B03234B01099FDFE1AE859D81DF789E6DE5E9FBBF82C280B09B703EE1733C
                0C12BFAEB9E3E1D698CF3C7B7B5F4160603062A2139099912B2929AE78515559
                975D53DD7091401941A074227D02E5435446569974725A7ECFF8A4ECF91466DD
                BC7D436E1E3B79EEBD91E9EF6EC2DD0ABB0987529E8E6F068581E032D3BC5E96
                5D85DD8457DE73D8E512C5E1572C58A2F265E7F87B3E090A0A11AD7156669E84
                CACEB3EAAA6B2904C949D2E06B75B73B7C02E503554A5A91744E7E45AF88E894
                85E151899E16D64EB728CC36EA5FB2808191B908B2CD136DFF080A3B08BB0997
                1DEE7C9A57DE73866150B89DE67CC365C7E1B23BFCFD03111EFE7BC7C38E42A0
                3CA9BF7633B6A1FEF63E2A3FDF53906DD7D2CFF831A9C5C1D6200685C22C83B2
                8840F1B2B275BEADAD67D2C8A587B3053B02E78C7F0514761876149E90E3D6F8
                8292BAE878AC6C9DC425A99C4F1894C4845406A589407944A08411289B09942F
                09948F7AB28DD5E2606B50524A0187D95E6191490C8AB7B59DCB1D7293C64B26
                D6E24DE6E977CE277F0585675D972C5FF32728CD5D0F2F3BE093851C6439F8F2
                CA7B2E5D5C76C445EE944F22237F6F8DA9F434969556DD6BA8BFE54FA0AC2450
                FA5290FDA827DB582D0EB6062526E74B536BDCEB6A4422971E2F5B07B7DB86C6
                568D9C5178A28CDF6C76866650785A9E57AE31145C6A1814CE270C0BBB4CF3AA
                B6E6733C9C73B8ECB879FA22383814515131484E4AE73994F7E565D5370914F7
                EB0D77161228BD08948F7A0E85D5E2606B507C62AE747A5671CF90B0F805048A
                3B81728B401161F6DF0385CFE770C7C3419661613583C2AED33C75CF2D3683C2
                57188686862126268EE750909B53F8965AE3DAEB0DB76D099499D4F974A720FB
                09940F55710939D2A919853D83AFC6CD27505CA9F4DCA0D2F3FE9F951E3E73CC
                F324DCE13483D22C6E9939BF70906D5EFEC841962F1AF3F0F647585804E2E212
                90969AC5936DAF2B2B6ACB08142302651281D2F563EF78582D0EB606C5C6674B
                A7A417F4080A8D9D43A03851986DA030FBEE9F85D9BF2E5A6A06848161F1EE05
                DC1AF389C38B2A9AE2FB79FE84F3095FB7CC41363E3E1119E93992FCBCE29704
                4AC18DEB77340994B1044A676A8F3F81F2A12A262E8B41E91E1812339340B1A5
                F6B896DAE3B7FFAC3D6E06853B9CBF82C279A579E7029E986B9E68E320CB6EC2
                DB65444444212121A91994E75595755904CA851BD7EF0E27503A7E02E5035642
                529E5442724E37729469F1499916944DAA34B42FBD216024FC46374FDFF39C08
                9FBBE173387C2E87C32C03C2AD31C3C29985F3095FC7C34196CF0DF1ACAE8DBD
                B3C8270C4A54649C9843E1C9B692E20A31D956577BFD046910A9FDB5BA8F6357
                A57F4F2D0EB6065146918A4FCAEE4619654A42729699B1996DA596AEF11B2A41
                92E6F33CEC0E9C395A0285BB1D06859F374FDDF36B79A28D83ACBD939BD8AD29
                3024E21F417952535D1F4770EC237D4FA0B4FB04CA072CCA28C251A8EB994AA0
                989B5AD857E9E89BBEB1B17715CB0C38A370A0E529FC6650388B34773D0C0A1F
                795EA579F92377496231B5B58308B2BC0B42F0D52871D69841A1D6584CB61128
                E104C756D25704CA473FD9C66A71B03588C36C624A6EF7B0C8A419048AB599A5
                430DE593B7F64E1E7FAE6EE332C26F3E83C2198441690EB30C4AF3D43DCFC8F2
                5D3838C872BE699E916550824223FF042527BBA0A9BCACFA3EC111547FEDE61A
                02E5F3DA9A868F7EB28DD5E2606B10B7C749A9793DC2A392675346712050EA0D
                8DADDE393A7B89D6B619146E919B41E1156CCD619641E1195A5EF1D63C75CF5D
                12CFC83683C21D0FEF53CBA0F0F43D81D258515E738700B9D2507F6B291D7B13
                281FFD1C0AABC5C1D620EE7A28A3F084DBFCD884745702E5C62513EBF74E2EDE
                0294E6D2F35750F87C0E83D23C7DCFCB0D9A973F726BCCE197833007596737EF
                FF0F28B93985EFA935BE416EE276BDE1F67C02A5E727503E704544A54947C6A4
                F6BAE21FBE283A2ED58B32CA6D02A5B11994E630DB5C7A1806760F86A379EA9E
                A1E172C41D0F9FE3E1EFE1B2C54196A7EE7937C9E6D2C3A0E4E516BDA5D6F81A
                B9893D81328B40E9FE09940F5C57C393A543C313FAB87B052D8D8A4DF12350EE
                11284D0C0ABFD95C76D821FE11142E37FF080A773CDC1AF3DC0B6F2FCA65873B
                1EFFA03084844523223C8641114B20A935AE26482C6F5CBF338D9CA51B81F2D1
                773CAC16075B83C22353650894CF8242635752800DB4B4B97C9F606932B77214
                A58361E1D2C3E76EF61D3C263A9B7F2C3DCDCB1F39C8726BCC1D0FCFC872C7C3
                8EC261964B0F2F8164500AF24B5E938B94DFBC71D79820994C8FBB12309F40F9
                90157235518620F93C20387A4D644C72F0D113671F10304D1EDE8122C872D668
                3ED7C3A06CDEB65B380A83D2EC28CDA07090E5DD1F9BA7EEFF0A0ABBCA5F4079
                45709410287A04CA047ADCE513281FB8028262650992FE7E8191EBF38B2A43CF
                29AA3FBCA0A4D9C4ED31772DCD4B21595C5A9A57E073E9614878669641E15959
                2E4D5CA29A41E1ADBC9ACFF3FC03282F098E4202458B40194B8F3B7F02E50397
                5F40B4AC7F50D49704CBA6F0A8C430CA260FC74E98D6B4FFD049E1043CD1C6E2
                92C24B0C78F69527D778928D172BB19A41E17341CDA03064BCBC803708FC27A0
                E411286A04CA687ADCE913281FB808143982E42B2A3F5B028223C37D03C21ECD
                5FB4B2E9E01179718E86E744D84D38A4F209415EDDC6B3B29C4F78F9238B41E1
                717614868A9727F0AC2C9F10FC6B7BFC17505E101C39048A128132F21328AD40
                57FC221994012161F1DB5233F22328C43E2257697276FB7DBF7B6E91D921387B
                70FBCBCEC1F984CB0E5F6BDCBCCD0583C26196432F671B9EFEE730DC3CE1C6E7
                7AFE01946C02E5228132821E77FC04CA072E4FEFAB72BE0111EC285BD3B30A23
                5435F41F5DF1BFDAE4E317FAE719602E273C3FC26B6139B4F21C0A6713BEDEB8
                19145EB0B48FC22E5FCBC35D1287E0BFCECCF23CCA3F809245A0281228C33F81
                D20AE4EA1E24E7E317C6196533394AB89DA3FB234D1DA3266A9345D7C2CB21B9
                ECF032030685D7A27090E56CD2BC834133289C61782D0A972A0EC13C97D27C52
                F01328BFABC5C1D620672F7F59CF80E07E5742C2D6A564E6865ADA393D34B5B4
                69F2F20D809199B9D81B56F1A2324E9F3987DD7B0E883B7BCD9ACB7BCBCEC1D8
                C9B3F1DB8C0598BF6C03D66DDD8F6D7B8F52F939234E0AF2E63B7C236C471B07
                045CF141626C0CE2E3921176354A929599F7E2C9E317595595758AF7EE3E1A5E
                5BD3D0F1FEBDC79F40F990E5E87E45C6F58AFF675E81212B93D2B3FD09947B06
                C6664DBCB3B4B1B985D81B966F3F7BF29402B66EA3D678D93A2A37F3306EE274
                8C9C301DE3A7CEC59CC56BB17AD31EEC392C2FEE46CA7986F77F3331318393AD
                2342030390999AC21BE7F034BE24233D47380AB989E2C3074F87D3B123B9CB27
                503E64D9B978493B79F8F672F5095C18979CEE6177D9ED96AEA1F17B27570F90
                B3102876505256C5F113A7B079CB0E2C5EBC9A4ACE6C8C193F15A326CEC0C4E9
                F3316FE97AACDDB20F874FFD7E236C9E9C5353D5869191093C9CDD859B941717
                F1391E517A72B20B5ED0E39CBB771E2A3D7AF86C04959D8E04CE27503E64D93A
                7B4A3BB8F9F4A01234333C26C1D6D337B0EE92A9C55BBEE912DF2EC5D8DC0ACA
                2A6A905738836DDB77FFE9281326CD146E326DEE522C59BD159B761EC611F9DF
                6FAD2F022D8162656523EE435852908FBB376FA0A2BC869718482A2B6A5F92AB
                E451B951235846DFBA79AFD327503E70D93A7B4BD9BB7A7721579910101AA117
                1A192B6E8AEDE2EE236137D13732859ABA36CE5FA030CB4B0C56AEC3D419F331
                71F22CE12633E62FC7D235DBB071C721EC3F7646941E0EBF3ADA8662BFB6ACD4
                4CDCBEDE8057CF9EA2A1FE164A8A2B24B76FDD7F5558505A444EA24D808CA3E7
                9DAF377CFC0BAB592D0EB606593B794A91AB74245719E2EEE37F262A3E39DDDC
                CAFE19752B124B5B07018A96B63E951F750AB307052893A7F1BD79A663DC9439
                98327B31162CDF2832CACE03274498E5B914A34BE6E2CAC0AAD24A3C7FFC088D
                6F5E838000753C127291D7044D455969950905DA29F4BC1B65944FCB0C3E7459
                3AB8B72560BEB177F6DC1E169D78554BF7D27D0B6B8746BE89134F9C19189A52
                A055C7C143C7B176DD666A8D1788D23361DA3C4C9DB344743D2BD6EFC4F67DC7
                C0774D6750786F5ABE3CA3A1A61EAF9F3FC3BB572F71E7F60371DD714D75FDBB
                C78F9ED753F9B95C5D756D2195A03E04CEA7A5901FBACC6C5D64CCED5C7B5BDA
                392F08BC1A6D7FF6824A8D8191F91B87CBEE129E5D3536B1A4D2A38253F2E7B0
                65EB2ECC5DB05C941F7693990B5660D1CACDC2519A41E130DB0CCAF5DADFCB0E
                8B41E18DFE28C836BE7AF9EE3EB5CB57EB6AAFEFA0CEE75B5E854F59E5A32F3F
                2D0EB61659D87B48913AEB1B598FF40D8C3CEF17189EACA2AEC753F9E42A6EB8
                64640E15552DEA7C4E8B9CB264F93ACC9CB3F84F50E62E59273A9FCDBB28A71C
                92172710796B74BE32B0B6A2064F1F3EC08B278F515BD320AE3B0E0D89901018
                CF29DCE650CBAC46008DA716B91BE5944FD71E7FE832B3759333B170FCD2D6D1
                7345604894BD99A543A5A2B2D66B67B72B125BBBCB5055D386E245351C3A7C02
                2BD76CC68CD98B4498E5D2C3A0B0AB6CDA7950DC319D6771797B74BED6B8BAAC
                0A8FEEDDC59307F741C155EC64C01B12E7E614BE2B2E2ABF9E9599E745D06C24
                37F9864069F7B1CFA7B438D89A646CE52C6D61E346AE623BD42F30F298D795D0
                98DDFB8E3EB073746F7477F783A6A6A180E5E4A9B3D8B865B7283F93662E14A0
                B09B2C5BBB9D3A9F03D8B3FF84688F9BC36C795119EEDCB82E444088D9D9E0A0
                309EA16D22489E151596655329D2A6403B8D20E94DC0C87ECCB0B438D8DA6466
                E5226B6862DFD7E1B2F7C280E068BB33E7556B5435F4DF383B7B435FDF4C949F
                D362B9C151E12AB316AE14ED31773DCBD7EDC0BAAD7BB173CF5171BE876766AF
                5CF1437E561EEAAA2A71ADBA0A9515B562A33F06C5CDD54B929890FABEB4A4F2
                3667157293C354828610309DA93BFA684B508B83AD4D06C67652F697AF74D633
                B41CE5E11DACE4EE15944DA5E48591918D84041DDD4BC2558E9F3A8F4D5BF760
                CEE2D562C28D4B0F3BCAAA8D3BB16DE721B1249227DC7803E2E4B82431E1C633
                B3E41E626B7372135C767213D3F9D42EBFA26325B5CA8E04C8AA07F79F0CA02E
                E8A32D412D0EB64639BB07B6D3D036FEDED2C6654F6C4266D491E3E71E2929E9
                34191A5AC1947789BC6406CA2EE41C8705287C5270C6FC9522A32C5BBB159BB7
                ED17FBA35C384F81D6DC125703439195968AE2FC3C014A6646AE80C5DBCB4F38
                0B85D9467296C739D905199461340892298F1E3EEB4525E8A36C975B1C6C8D32
                B776953134B2EBAB6760BDDCC72FCCDBDCEAF22D0505E5F75A5AC6D0D631849E
                BE3134B42FE1D8C973546EB60947993677F91F817623E597BD626DAD82FC79E8
                E8E8C1CBD513C9F17128C8C91653F8559575BC19B1B8C6C7CF37882FE1901040
                EF32D2736E951457041320FB1E3F7A3E88DCA5E3C7385BDBE2606B94868E99B4
                8D9D67774D6DB319FA97ACACA2E3D2ABE5E595DEA8A8E8494E9C3C0365154DF0
                AED61755B4C5BCC982E5EB317DDE0AE12AF397F18E4B7BC4BA9413C74F435555
                1DCEF69711171589FCEC2CD1F5F0EC2C9F1CE433C93EDEFE080C08E5710939CD
                CBECACFCD286FA5B1604CA02CA2B7D0914D9967EC6D6AC16075BA3D44D1CA594
                F5AD3AEB9A388E31B577D77070F3CFB775F67E79FC94A264DDEA4DD841D9C4C4
                D40A67CFAA61DDC65DD8B8F900A6CC5A86398BD661DE920D58B16E17B6EC3E8A
                7D0714A8FBB90863232B04513B9C935980EBB537505FDD402D730D85DC024487
                C520C8371809D189D41D553426C7A53CB877F37E6C4D79ED89C7F79E0C79FAE0
                59A7BACA6B1F95ABB438D81AA563E92AA5637EB9BDC245BDC117342F9DB0B0F7
                48F1098A7C7AFA9C9A64D7F67D58BD62BD9874B3B67611678A172EDE805D04C5
                C4698B307FE946ACDAB0075BF71CC3FE83A77142FE02753FC6F022E7484E4817
                A0DCA8BB298E952555484D48435850B8002623395352905DF8BA24BFB4F256FD
                6D1B7ACD4202A5EF9DEB773F2A576971B0B54ADBDCA1ED7935C36F2F6818EEB2
                71F08A8E4BCD7E6C6EE5D874682F9594C3A7307FCE621CDA7F0AEA5A46C25156
                AEDD89C5CB370B5056AEDF8DEDBB8F61DFA1D3387AE22C94D574C5651B5191F1
                A8ADA84343CD75DCBC764B380B8181F8A8044486460958E8EB8D04CF8307B71F
                46D3E3C3E42A8308960E04D747E32A2D0EB6569D56379033B171FB4A4DDF7CAB
                93AB7F446442DA230FEFC0A6A3078E63EF8EFDD8BC613B664E5B28A6EB95552F
                61FEE2F558B16687283F4B576FC7961D87B1F7A0820085B30C9F2F0A27104A0B
                CA84933030545E509C57225C25263C16112191A032C3AEF28A5CA4944A90F1FD
                5B0FA613283D6F37DCF968E6555A1C6CAD3A7A56B5ADB99DFB776795B5F778FB
                5E8D09BC1AF9D8D9C5B3C944DB18F3A7CEC3510AB17B761EC1B429F371EC8412
                E4CF6A60EEC2B598397FB5C829AB36EEC68EFD2771E4E4595C50D1821505DAA0
                B02801465961392A8A2BC5B130A708992959488C49128E42390504C77B82E8F6
                B387CF03EEDEB8B799F4F5C33B8F3E9ADD985A1C6C8D32B6F5903AA3AAD74143
                DFE25705450D8580E0E8B4D0C8D867DE3E0192C4F00418A8E963CBDAADD8BBEB
                A80065F8C8A93870E41C366F3F8CD97FC0C233B51BB61FC4FE23A770FA822A8C
                2D6CE0ED1F2CC06040AA4AAB85B330189449909B9187B4C47414E516E3ED8B77
                127ACD3382259D4AD0792A3BC39FDC7FDA8980F928CA4F8B83AD517A66F6D24A
                9A865D95D5F427EA1B9BEB6968EA155B5AD9BD0AF40F912484C5232F25170777
                1DC2E2D92BB076D5567CFBCD50FC3C781CB6ECA25679C5664C9FBF0AD317ACC4
                B2F53B28D41EC2C113D4526BEB89F2C365865D85F3099517760F100CA0F02A4A
                114344EEC120BDF172F5AE7CF1F8A505959D998FEE3EEE41AFFD28CA4F8B83AD
                51272F68C89EBEA8D9974059EAE0E2E13AF1B769F52B57AD7BE7607719960616
                F0B9EC0D3B737B6C5AB51DEBD76CC7BCB9ABD1A94B7F0C193515CBD6ED14A04C
                9ABD04F3576CC4BAAD5C828EE2D4052571B56178700472D27345982508D0F446
                0234D2FFAF9B40A546C0C26E431D4FE385D38AB7DFBF6ABC4220ADA2BCD28F8E
                1F45F7D3E2606B93DE252B290D1D930ECA1A3A3F2B296B1CCACE298839B0EFF0
                436969E9C6E58B97C0DBC51B26BAE6080E088387AB3F162F5E8B29931762CE82
                35E8DA7300060F9F8419F35689D23379D612CC9CB7043BF71D81A2AA26D4D475
                E068E38410FF505182D849A8CC8060C0ABA7AF05280C09B907CFAD3419EB9BDC
                A75214FAE6F9DBCD04D65704CB4791535A1C6C6DBAECE62763606CD39B4099E1
                E8E46614139B581CE017FC6AE1C285922F3FEF879D9B76E2B2B52B0AF34A515E
                720D5E5EC1D8B07E2F7EFE753C868C988C366D7BE2CBEF86E2B7198BC4B53E73
                162EC7A2E56BB163EF415C505485A1CE25D85B392034E0AAC825DC2A3330D406
                0B3138E94919D0D5D07B4F50DD26387C09A035D425F527983E39CA87A0DAFA5B
                D2F945E59DCC2CED06AB6BE8EC77B9EC1E1A1D1D7DE76A50F07B6D55556C59B7
                0E470E9F809DAD0B8A8A2B505A7A0DCEEEFE5038A72926D9C6FC3657384AFBAE
                FDD146B61B060E1C85152B365077740887A9AD5638790E962656B036B3C1653B
                673123CB50B08B500E11C03044FA5A064DDA6A3A2FAE068695103CC6AF9FBD99
                4E19A62785D98FE224618B83AD45376E3F90AABF71B77D5169D5000B6B87E5A6
                6656567B771F280B0E0E7EE9E1E22AB9E2EE8ECCE46478B8FB20352507D93985
                B0B272C6E1E3E7A0A96B014D7D2B2C5FBB1323C6CD44EFFE3F41A65D4F74E9D2
                0F0306FC84D123265296D98C8BE755D92960616C094F172F31C9C6F3277E5EFE
                3031300565128993EDE5463B4BFB97F4F5BAB8C8787F0ABE7B29F4FECC936E04
                D2FF8DAE876C548A3E21525483A53EA47FF4837B8FA5AEDFB8D3AEBCA2A67F50
                70D86C67170FADA0A090D4DFC64E7CB46FEFEEF7217E7E92ACA484C6E2ECCC77
                4191D16F5F36E27D424676D381E367217F51036A7A1638799E32081D796676F2
                D445F8E187E1E8D2A12F3AC874C1D77DBEC1F43153B161C93A9C933F8FD3D405
                9D3979162AD4369B1A9A81BA1B4974580CCFC8BEF1F5F47B646B615711E01318
                58515CA940904CA06EA72775421FCD9283160759649B5264AD32F48F6E47FFE0
                8E04097F3ADAD12F408EED94C6A5F9352C1AFBDB00BA7FFB8ED4E3878F641E3D
                78DAA1BAA6FE8B8CCCDCE921A1118A61E1D1D1090949B7776DDDF9B643FBB68D
                7A1A1AAFE2C242EF274545D4E797575E4BCF2BB96366E7F8ECD869A5B7E7D5F5
                9ACE28EB498E9D5183BABE2594354D70F0F0394C9DBA107D7A7C8D6E1D7AE1C7
                2F7EC29841A330FAE791D8B37D2F4E1D95079516985D3297981B5934526E79AD
                A1ACF948F9BC4AAD8EBA6E12B9893DB5C9879EDC7FFA1BE593CF28B7B47DFEE8
                C5C73F854F814D86D485348060F885A0F98500F981A0F892D4879CA63BC1D285
                C619A276245992F41F12EEC36AE9CFFEAFE8F1ED1B520FEFDC94B97FF376BBDB
                B76EF4A8ABB9F6637A5AF6FCE0A030257FBFE088D494CCEBBEBEBEAF5D9D2EBF
                FF65E04FCFF66ED95AE5E7EE125D9899E65271F3A693A1B57DE0F10B17B3CEAA
                EBD61F39ABF4E4A4A2D61B452DE3C623A7949B4E28A84A94950C240AA754240B
                67AF940CE8FDB5A477DB5E92215FFD2C993376BA64F2F8299205B317366D58BD
                B171C7E69DAF776FDBF3F0E8816355E42E09467AC64E9459CE121CCBD08421F4
                FBE85D5E54D1963E5C1F0D24AC1607AF55D54B51626F5B535EDB9F348D9EEFBC
                5E7BE328FD12F611209B0880A5A499F4783CC133841E7F4FEA4FEA4DEA4EEA4C
                120E44927BD0704F8624FD87A4FE518F6F3EFC679226C93CBCD9D0F6E9DD5B9D
                1EDFBBDDEB76FDF5EF2BCA4B2765A4656E0F0C0835B2B3758A3F7F4EE9465A6A
                D62B4343C3F7A18141CF9C1DEC4B755554DD6242838E1765A52FF3080E5EE01E
                18BA45D3D854F9B4AAB6BBA6B165EA593583AABDC7CFDF397351F7F1A933EACF
                2E9CD779A1A662F852FDA2FEAB637B8EBF5A316BF9AB294327BC1CFBD3881773
                A6CF7DBE7AD99AA77B77ECBB7FFCD0892ACA25F1E42C765157A34F51A9594A1F
                9C11D40AF7A70F55672AD1B214643F2A48582D0EDEB8562F555F53DBB6B6B2EA
                8BEAF28A85F40951AB2CA9F2246842EAAB1B82C8613C09121BFAD4E8507E3943
                BF9C7DF4783D41B1887E69D349E3E8F1101AFB81BEF615394F5F02AA177D0FCF
                54762375A5C75D68BC33C1D7895EDB919E776477E2E7EC54F49C5FD383BEAFEF
                9DDB0FBEBD7FEFF188EB0DB7E76466E4EEF4F6F2D3B6B571F4BFECE456E07B25
                F0DEAA95EBDE181B99BF8F8E8A7F1E19115B4E47D7E2A2F25D9515B52333D273
                FADDBDFEB44F5DC5EDAF53E272C6BA3A5C5963A0657E9680B0BA784633E0F471
                A5383AA69D3BA59AA3785AA34057DDA4C8C6CCB9C8C1CABDC844DFA6905E97AB
                74FE42A6818E6EB2DB65E7B0B8A868DB9282C253D7EBAE2DA63238F4E1DD7BFD
                E8D8992447FABFB7B8BAA1B64EE65A754DF7BAAAEA51F4461E204771A41A9C92
                939E5B91959A5D979F55504D9FA622729B0C729F583A06D327CA9D3E5996F446
                6B110CA70994FD04CA16026B2501B088DEF4D9F4674DA5F189A4F1A4B1F47C14
                7D6D18BD7E0841378C9FD3DF359EFEAEC9F477CD265B5F11139DB08BE0B86069
                616B696D651FEAE5E99B1F1E167D33223CE639959EF7EBD76D6EBCA8A8FAC2D5
                C5B39A40F1CACECADF5B577B7DF8ED5BF7BBDFB87E47EEF1DDD7320F6FBF6C5B
                5F75B76B766AF197912189C3AFB887CC2218D61BEB591F201814B4558D942C8D
                1D3582AE446AE76796EB5CAFB9AF73EBDA23CD86EA7B2A776FDE3AF7E0CEDD13
                4F1E3CDCF5FCF19385A4618FEF3FF89CC0E874E7C64DD98F199066B538C8BA59
                DF20459F9AB6044C9FD282B23155A5D53BC84DCC6ED4DD8C23286AC8651ED01B
                F98C52FFD3C29CA2C745B9C53C2379935AC36A5221299D9EC791C2E9F501244F
                02CA81FE1C33FA5E03FABA0EC1A6999B91A79A149B7C3E3126E90C7511E7837C
                83553D9C3D752EDB399BB83ABAD95348F4B130B78924F7C82228AA121352EFA6
                2467BC2048DEB9B97A35999B5937E9E95E7A6974C9AC96DA607F729023B5350D
                A31AEA6FF5E06B6D1E3E782ACAC0E3BBCFA59EDE7F29FDE0D613B99B75773B55
                975EEB599055F2456A7CE68FB1E189BFC647268F484BC81A53945336EE5AE58D
                F1771A1EB0C6DEA8BD338A401976EFD6EDC104C477E4209F11249D9E3E7C244B
                C07C7425E69FA9C5C166DD6AB82E459223A7E8416FF4C0EAB29A85E42267091C
                2F521EE9367DF25FE465E6BF2568DE672467BE4B894F7D93109DF8323E2AE159
                5C64FC13D22302E11E8DDD8A098FBD161E1C514930945EF1F02D22080ADD9CDC
                739D6C2F673A583B66D859DA67DA5B39E41220458157822A6223E2EA08C4DB14
                5A1FE664173CA7E31BCA25EF091CC92543538993A36B636848C40B1AAF4D4A4C
                0BCCCACC3B49908CA752D58B9DE49F2D727E74E7991449FAE1EDA772F76F3E6E
                474074B87BFD61A77B371E75A6E75D0826217ADC99C63AD1EFA023A903A91D49
                F6F6F5FF1B7BA2FC552D0EFE5564AD52543264A87C742458FA515619436EB085
                DC409FDC2094002922506E51397A9A1C97F29AC078C7F30B0445233D6E22409A
                089446D27BD23BD21BD26B7AED2B82EA25E945765ACEF3CC94ACE7F4673CA73F
                F70501F88A9CE83581F79660797FC5DBBFC9CBE34A939B8BA7C4D9C9ADC9D5D9
                A3D1C7CBEF4D4850D8A3A888D8B2FABA1BBEB76FDE3B71FFEEA389776EDDEF73
                F7F603B987F7FFB54F3B953FD19DF15CD1D307CFFE147531522F9FBC92E260FA
                EA193D7EFA4CEAFF9283FCA35A1C6C49943BF8972947BFC46EF48BFD9ECAD074
                7A33F7D11B6C48473F8226352D31BD8CE0B81E191A759F9CE329E9654448E41B
                8687D4482ED3C8E010244DE4144D044213C1D154925FDA44B008A8A893680A0B
                0A6FF2F70E68A2F2D364616CD9E4EF1BF49EE0786B67E3F88A407916161AF9A0
                30BFA4E6D68DBB494F1E3DB7BDD1707BDFB3272FC7BD7CFEA60F81D2969EFF9F
                7D43FFA7D4E2E03F13398B14054D69527B02A7D793FB4F7FA24FDDD4BACA6B1B
                A92C9D262730227771A3001A4AAE914C70E491B354F879F9D753A9B943A5E63E
                959A47CEF62E8F0882C77FE8093D7F46A5E799B599CD534B13AB2754821E534E
                7914E21FFA90DCE93E81722B3931ADB6B6BABEE4E9E317190444F8E387CF1CC8
                39CEDEBC7E671939C92F044C4F92DCBD3B1FC794F987A61607FF23FD319D2F43
                E0B4A78E855BD8AF4843A89D9D4CC74554A6B690E31CA7769ADB6A5392136519
                EF82ECC2207290707293480AAFD1E430B1A404729E147A9E4AAE924CA5278E14
                4D2E13497FC655FA7B02E8CDF720186CE9A84F609CA552B3F37AFDAD0504CA08
                82A33FC1D3899C44961CE61324FF436A71F05F153B0C499A5A5B39524712CF91
                F4210D200D228D264D21CD212D21AD266D266D27ED22ED25F1AA75BE1EE614E9
                18E9006917693B69236925BD6621692689CFA10C257D4BE2BFA733498EC0FDE8
                DBD3FF6DB538F85F11BD617CCE87A191E1378FD49EC46F643782895DA737E973
                D297A4AF49DF90BE23FD44656C106930E967D20FA46F4903485F90FA92ABF422
                F18C6F17129F32684B92217D7290BF492D0EFE77880011270B59F4664BFF213E
                9928F787DAFEA17654BEB88475F8E3C8CFDB92E448B2249947B71F49FF212956
                4B7FDF27FDCFAAC5C1BF53946BA4B845FDAB5A7ADD27FDEFAAC5C14FFAA47F54
                8B839FF449FFA816073FE993FE512D0E7ED227FDA35A1CFCA44FFA47B538F849
                9FF48F6A71F0933EE9DF0A6DFE7F3EBF7463694C78270000000049454E44AE42
                6082}
              Stretch = True
            end
            object txt_BarCodeInput: TcxTextEdit
              Left = 40
              Top = 4
              Anchors = [akLeft, akTop, akRight]
              ParentFont = False
              Style.Color = 11337727
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -21
              Style.Font.Name = #23435#20307
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 0
              OnKeyUp = txt_BarCodeInputKeyUp
              Width = 493
            end
            object txt_BarCodeRate: TcxTextEdit
              Left = 533
              Top = 4
              Anchors = [akTop, akRight]
              ParentFont = False
              Style.Color = 11337727
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -21
              Style.Font.Name = #23435#20307
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 1
              Text = '1'
              Width = 57
            end
          end
          object cxTabSheet2: TcxTabSheet
            Caption = #31665#21495#25195#31665
            ImageIndex = 1
            DesignSize = (
              596
              63)
            object lb_BoxCodeMsg: TLabel
              Left = 40
              Top = 37
              Width = 163
              Height = 19
              Caption = #35831#25195#25551#31665#26465#24418#30721'...'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -19
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
            end
            object Image1: TImage
              Left = 5
              Top = 3
              Width = 31
              Height = 33
              Picture.Data = {
                0B546478504E47496D61676589504E470D0A1A0A0000000D494844520000008A
                000000BD08060000006CF8E5710000000467414D410000B18F0BFC6105000000
                206348524D00007A26000080840000FA00000080E8000075300000EA6000003A
                98000017709CBA513C000000097048597300000AF200000AF2013D52F7110000
                7A2C49444154785EEDFD0578955797FE8F13C35D4AA12DF5526871A7B8BBBBBB
                3B246888BB1077232EC413E2EEEE6E24B8BB27E7FEAFB5DBF4DF797F7967DE99
                EF4C87305CED7D3DE7EC9C40C8F99C7BDD6B3FFBD94F1B009FF449FFA15A1CFC
                A4FF9C22930AA5585189BFABA5D7B476B538F849FF5F7985264945A41449C566
                964B05476749074565CA0447A5CB4625E5B74D482B6A1F9F5AD8212125BF3DA9
                5D62727E5B925C524A812C492632314F3A32A1483A2AB1582A3AA9442A36A54C
                2A2EB5BC5501D5E2E027A14D5C4A9D545C723D4B2632B5582E243EB75D4A415D
                C7C4DCEA2ED129C53DD2F2EBFAA4E4547E919859F66D584CC640D2E08898F49F
                C3A3D37E088F4CFD9634202C22A53FE9B3F8F4925E0446F798E4D2AE044BE7F0
                B8820E5763F2DA8544E5CA0647E6C8C4245548C726574AB15AFA593E04B538F8
                7F59216199521151F93289C915ED52D36BBA907A4726E77C199194FD635C7AC1
                B02BA1B113BC02C2674525662E8D884FDF101E95BC3B263EED487C5CDAC984F8
                D4634989E9079213D277A524666C4B4B4CDF405A111B9BBE88342B2E2E63527C
                7CE6E884849C5F131373BF4F4ACAFB92D4272931BF3BA97372525107525B924C
                62428174427CA1547C5CC107014F8B83FFD714155B20159758229D98522E9794
                5AD12925ADBA4F524AE50F04CC385FFFE48541D1299BC212320F2665979C0F8D
                4DD373F509B6D533B1F1DE7DE854C8D61D07A335758C9274758C53F4F58C932F
                199AC59B1A59465B98DA44D898DB86DA5AD8057878047A7A7905DBFBFA861905
                07C7A88587272BC4C666EE2358362627E72F898A4C9F111D953136362667707C
                5CDE3709F1F97D09941E8909459D49EDE3E20BE548322429564BFF86FF69B538
                F87F4131D1D952F4C648454566CA8687A5B48F89CEEC4EFA8A1E0F8F8C4C9D1F
                1F9FBD97DE48AD98980C67858B2A211B76EC8E9F396F61D6D051638B7F1C3CA4
                76C0D7DFDFFE79D02F0FB66DD9FED850DFE0A9B19EC133D253735DC327960686
                8FAD2F193DB237367DE8606276CFC6CCE296ADB9659DBDA57599938D5D9E8BBD
                639ABB9373ACA7B37BA8978B8767904F9055886F88667860C4C9E8D0981D71E1
                F1CB13A392662645278F4D8E4919949494F515A97742724ED7F8A4EC0E718959
                6D631332656212B2A563E2F3FE16705A1CFC9845604845476549A7A596B6CDCD
                A9E99C9D55459FDEBC815999E5533233CA365C0D4D3A6765E56A7BFCB862C4B4
                698B0A3EFFFC87866E7DFBDF273DF9F6A741CF474F98F46AEAACB96F478C1CDB
                38F1B7C94D6A2AEA4D067AFA12436D5D898E9A8644E7A2AA44FBA252938E9272
                93BEB26A93A1AA7A93A9C1A5463343A3B7E6978C5F5B1899BCB434367D666D6A
                FED8C6CCEA01E9A68B9D4BB5BBA37B81B78B4F8ABF674044886FA84F5840B84D
                4450A4666470D4F184848CCDA40504C96FA45F495F13347DE293F3089CC20E51
                09797224E9A8840229564BFFEEFF57B538F8312A3DA94C2A25A150362126B743
                7A72498F829CDA6FD2930B475D0D8A5FEC7AF9CA217D1D33C31D5BF7F94E9D34
                3B6DFC9849D5D3A7CCBE3FE5B7192F470C1DF3AE7DD7AE8D9F0F18D0F4E32F83
                24BF0CF9553272F4280C1AF83326FD360146BABAB036338695A1018CB5347149
                450586CA4A30565385A596166CF5F460AEAB090B3D2D5819E8496C2E1948EC4D
                8C248E66264D97CDCD9B9C2D2CDE93F3BC7534357FE96269FDCCC3D6FEA18FA3
                CB6DDFCB6EB5FE2E1E0501AE9E49C12157434242C39CC3C2230D2222A3152263
                13B6512E5A1C9B94F15B5C52EE6072962FC9597A122C9DA2E28BDA5287254392
                8A4C28FE6F83A6C5C18F45B129255231C9C5D204895C4672792702E5B3C4D8BC
                9FD3928AA711305B1C6C3C95144E283B6D58BB2366CDCA2DC58B17ACBCB568FE
                8AA76B576D7CB37AC5FAC6E143464B64A5DAA38DAC2CBEFBF9678C2130868D18
                8E31E3C662CCA8D158307F2E6CCCCC7049570B86EA6AD052BC00ADB367A173FE
                1C01A30C6B1D1D385EBA24206159EAEB322CB036D417B2313414B2D2E7A39184
                8091389959103C368DAE56766FDDACED5F929EBAB8BADF7773F76CF0F2BE52E2
                E71F9816181A1E763522DE352236D9202A2EF30481B281409945A08C2450BE23
                48FA90BA1028ED48D49E97FC3F03D3E2606B5742729908A7D171856D29A876C9
                49CFED5F925F3A34312669417C54C2A1CC942C2373238BC0752BD767AD5DB1AE
                6EFBA61D0FE9F1ABD5CBD6BCDFB17967D3A2B98B259BD76DC1D041C3D0B54337
                F4EAD507A3468DC1E8D16385A64E9E862FFA7D899DDB77404349055A2A6A0870
                F3C29A458B317AF02F98347C2456CE9D8F65B36661D3B26538B16F2FCE1F3F26
                4032D126600C0812A34BB0353682BDA9C99FCF1DCDCDE06A630D4F07FB66493C
                ECED24FECE768D81AE0EEF82DC1C5FD1F1D995CBF60F48D7FD5C1C4B025C5D93
                63438203E242C2ADE2C3222F2647C5EE4A8D495C941E973C36252EE9FBE4D8C4
                3E5169459D431372DA06C664C804C566FE97A06971B0352B3EA998BB97B6A919
                D55DB372EBBFCA2DB831BAACB07C456A429A82AFA79F6D68C0D5E884E8C41253
                43B33BDB366E7F467A4B70346E59BF5542D0809E63D5D2D5D8B866137EFCE627
                746ED7057DFBF613A04C9C380993264DC1F4A933306CC8709C3B731626E40694
                3F60A4A18389C34760E4CF8330FED7A10296D1E44253478DC290EFBF23800661
                EA98D158387D1AD62D598CDD1B37E0F8DE3D3877EC282CF4F5FE04C5D9CA52E8
                B2A58578CEF2B021802C8DE168A22FB135D496D81AE937B95A9BBF0BF2707915
                1D10F0D4D7C5F98E9F8B477580877776888F5F4464E0D5CBF161D1EA493109BB
                53E393178425E58DBA9A98FB0DA9273DEE109E5CC87343FF29605A1C6C8DA296
                522A39A9482E35A5A433E9CB94E4E2314989856B69FC2241E21211129914E013
                584D903CC8CBCC7F45D0BC3F73F22C3B8764E7965DD8B7733F36ADDD8CAD1BB6
                819F33347D7B7E2E40F966C0D7183B7A0C664F9F8159D3A663D2F8099839751A
                0C7575606160083F37771CD9B10BDFF6E98BE13FFC84B1830763D4C081184FC7
                39E3C763CEC489983D6102A68F21D8860E15000DFFE1078CF8F147F13AD69491
                238503ED5AB70E670E1D82A1AA2A28C3C0CFD9197E4EF60872BD8C102F37217F
                576778DADB325012270BF3260F07C7464F47A7375E4E2ECFBD2FBB3EF071F3BA
                E6EFE59B17E21714111E74D5212C2A59292A2E7D4B6C4ACE74D2C0E8A4AC3E51
                09391DA393F364E2524BFF25605A1C6C4D4A492B954A4C289021283A12289FD3
                71785C6CEECAC8880CC590E0248F00FFB8F4E8B0986B54721E13306FA80C3596
                169449F2B30AE07ED903F2C714B07BDB1E1CD97F14E42CC2518E1F3A81158B57
                A24BFBAEE8D6B13B06934B4C243816CE9D274019FEEB102C59B010C654327455
                54E1EFEE81253366A1875C3B7CD3FB330CE8D9135FF7EA855104C2240263FCAF
                BF62F2881198396E1CE6FEF61BE64D9A84F9932763E1D4A9583C7D3A668C1D2B
                346DF468FC366C18C6FDF28BF81E7ECE901DDCBC01E70EED87A19A129CCC8DE1
                ED680F5F67275C71BE0C9FCB4EB03335838B8DADC4D7D543428ED218EC1BF836
                D0C7FF859FE7950757DCBD6B3DAF8466F90646060686C71B5D8D4939101E9736
                273C367350585C66AFB0D8DCB6914985D22DFD6EFFAA16075B8B12928BA4C939
                DAE6E454F4CC4C2DFE39312E73415478D2A9E8ABF14E711149A9297119F51949
                394FB3D372DE928B349124E94919A0E7A82AAD46417621C865B07FD7019C387C
                1287F61EC69EED9427142E60C1EC85682FD301BDBBF5C1687AB3674D99829504
                C73C72921104CEF675EBA96418805A6150C7428EF11B067DF5B5D0179DBBE1F3
                0E9DF1439FCFD1AF6317E11EEC22FCE6B3A34C1832443CE6233FE7F2C450B018
                281E67576260F8F1AFDF7E8DE13F7E8F09437FC5EC89E3290B2DC4915D3B29F3
                5CA47C638870FF0084F85C81978B1B2EDBDAC3DE92DCC6CE49E2EB79A5F16A60
                E85B2F37F7679EAE6E773CDCDC4BAE78FB470487849B454525EDA7CE69526C7C
                76BFE8C4DC76D1FFC1C9CC16073F74510E9122C9C4251674A2D2F2557474FAE4
                9888B4BDD111C916B151A9B1C9B1E9D55929798F0BB34BDF961554351110C241
                0A738A509C5702CA2CA82EAB4165499580E5D45179A173F2E7859B5C3CAB8429
                13A60A50B8FC8C1D3E1C0B67CFC66A0AAB0B67CCC424EA78CE1C3D46B9C21866
                BAD4C5185CC28625CBB06FD316ECD9B009EB172CC6B2E9B384C60FFA155FF5E8
                211CE6DB3E7DF07DDFBEF8E1F3CF09A8AF30ECFBEF3166D020CA33C3052CB3FE
                52A6F8398332F2A79F3066F0CF18F6C37718F8657F7CDDBB2706F4EE85815F7D
                8931BFFC8AE9E3C663F1ACD9D8BF6D3B2EE9E8C1D7C30B6181A108F0F6C3653B
                2758995A4AAE06054B02AEF8BE27505EBAB978DEF3F0BC521A10101E14169970
                2E3A3673524C525EAF98A42299967ED7CD6A71F043564C72A9545C4A49DB84C4
                E21EB1F1398362A232965F0D89538B0D4F0E4A49CC28CDCF28B85F9A5FFCBA2A
                BFB4A932AF4452915B2C00A172F32720B7EA6FE346DD4D010A7543505554C3E9
                1367A0ADA603C5331771E1B422460E192540E9D3FD334C183614AB172E109FE4
                C5336760FED429D051A24FB39E1E1C4C4CA0479DCFAA790BA070E010CE1F3D0E
                E55367E878122AF267296F1CC3E1EDDB09A24DD8BC7CB928355C5E7EF9FA6B7C
                F7D96702A09FBFFC1203BFF80283070C10B9855D86330B03C48E32E247CE3183
                306AD0600CFBF1270CFAFA1B7CDF8FA0F9ACAFD080CFFBE3BB2F076030E5A3F1
                234763F9E225387DF2142EDB3B2036320ABEAE8E08F676C3557F2F4990B7E77B
                2F37D717DE946302FD43FCC2C3E377C627E6FE109354D02E3AA9E89FBA4A8B83
                1FAAA2934AA40994F6044A7F026542746CD69EC8F054EBA282EAB4B2829A9BE5
                25D52F6B4A6B1B6BCBAB250D0444B3188ABB37EEA1A2B812D41A0B40F8F9CD6B
                B770ADAA1EFA5A06C24D8CF54DA0A1AC89B3A7CE61F08FBFA09D747BF4ECD24B
                80B27EE912AC5A301F0BA651AE2058F4555560A0A2027B63631CD8B28DDEEC01
                A2FC2C9C3A1DDB57AFA750BA4940A27D41198AC7199E53503B7D5A1C4F1F3C28
                E0D9BD7E3DBD7635E59B19A2ECB0C3FCD4BF3F7EECD74F80C362F7193CE01B0C
                FDEE07D151B186FEF023067FF32D7EFA6A801083F2157566FD291FF5EDD10B9F
                F7EE839FBEFB5E84EE45F3E64353F10C1CCC8D181444870421E08A4F938FBBF7
                D3A080D0CCE8E8E48B04CA4802A553AB072521BD9C27CE6462538B3A532EF936
                3A3E7B5E7454C6F9F4AC62FFBA9A3BA50DF5B71FD555D6BFAD2140EED4DDC0CB
                7B8FF0E6E1533CBD7D07B76B6A71E7FA5DA1869AEB78FAE0191EDC7E888CE44C
                045E0982BD95030CB40D61A873093AEABAB8A46B04EA86D0AF777F3187D2BD53
                0F5106D62F5E2C42289786754B96C2584B1B3A17A933B1B0819DB125D4C889F6
                6CDC89E5739660E684E9983CEA372A0BD3306FCA5C1A5B848DCBD6E0087556FC
                3A6D723015CA4117E9EF512640CF53A03E431949E1E0719CA09CB46DF546CC9D
                3403E3C9D5C6FE32023FF4FB1ABD28580FE8D31FBD3B75479FCE3DF065AFCFD1
                51B63D01F2053EEBD94BA83FB9CB57E4349F11285D3A7516EAD5834A55AF2E18
                F1D337543A67E3D89E5D30373290A4C425BC0AF20D2C89088FD58F8FCF9C189B
                98DB856069BDA0C427954A1128B2F16965DDC2E3737EBE1A91BE3A21A5C0A0B4
                E47A5C65CDAD86B2926B2F6A6BAE37DEBBF940F2FCD133BC7AF80CCF6EDFC7E3
                1B77F0E2DE7DBC7F4A634F5FE3E59357C259D8516CCC6D45B9B1B5B08387B3A7
                8084DD8481E1A3C2F1D3F8AC475FD1F5F4E8DC537CDA372C5982051468B96BD9
                B26A354CB475A0A7AC0E775B47D41655A09432505E723632625311151801571B
                6718695EA2C0A989A31496B7AEDA80C533A86BA2EC3373FC142C99399FC0DA8E
                0BF477A953266270580C9222954106E6F08E7DE27B8FED3E88F54B5661D5C265
                9832662246FF329C02F5107CD6BD37BEE8D30F9DDAB5477B593974906B8BAE1D
                3B0940DAB76D27D4999EF76A2F8D1E6DDBA08B6C1B74A4B7FCEBFE7D251A4A2A
                6F3C9CDD2B3233F24C099429044AB7560B4A6C42B114498E9279CF84A4BC6169
                99455BF30AABAC6B6A6E67DDBDFBFCDED367AFDFBC7AFEAEE9D9939778F7FC1D
                246F1AD1F4FA3DDE3E798E970F1EE3F5A3C778FFECB9C8216697CC7170CF2191
                43224222F1E82E7DED552392629361A4674C9F320BF11A16075B2E399DDAD227
                B26B6F4C1D3356B8C882A933E9933E0DFBB6EE82898E2174D5B5E1EBEE87BCF4
                7CE4A414223FB314E585B5282F6E40414E15B2D24A91995A020AD6A0808DF0A0
                68785CF6818196318E1D38858DABB762C5A23598387A0AA64D9C85A5F35762F7
                D6FD5038760E17CFA842FDA236B455F571F19422144F5E80819A3E54CFA8E0C8
                DE23D8BA6E2B7562333075C2647CF3C5D7047477C84849438ADE5219E93F2423
                8576EDE4D096C63AD163593AB2E4E875F47B781BE01F529D935D6C199B90392D
                2E21B73B81F24FDBE416073F04B193302431F145BD33B2CAC6501DDD9F955BE6
                72E3F693C2FBF75F3EAAAEBEF5AEBAA641F2F8C173BC7F2BC1D37B4FF1E0D63D
                BC79F60A782FC1C31BB7117AC5171A17144517636D66238091BC051EDE792440
                61A7498C49122EC25F67599A58895699DDA4836C471166A78C1E83B51410174D
                9F8D7993A743FED071018A9E860EC2C93D72D3F29016978DC4E8740222134971
                39488CCD464A423EB2D3CB90969085ECD47C14E5941148D528CDAF444E5A01A8
                7D477C6432FC3C8360666825E059BE70B580E6B731533165FC0CCC9C3C9742F4
                6AFAFBD7E0D08E83021A754575E8A8EA40E5BC124E1F97C71CFAB97EF969B070
                120685252DF5FF07A53D3DEFD9B13D3AB79345D7F61DD1B97D0738583BBE8D8E
                8AAF4E4ACCB48A4BCC9A1E9F98D73D36F99FCFA7B438F8BFADC49472A984E432
                3982A537695C617EC9D192A2729FFABA1B15E41E4F1BDFA151D20809FD0716BF
                E168A2876F9B909F95070B6373A8508874B471406A420A8103BC78FC126F5FBC
                13E2305B5FDD206089BA1A0D130353D859DA0B3128470F1C4347B94E22CC7209
                FA6DE438AC98BF04F3A6CFC3CC49330578EC0ADA1A86888FCE447E6E15723249
                D995C8CFAB4766561DE2134A10199587A868721B1ACFCA2C475A6A311213F210
                CF20D1B15909F1B9484F2B41417E2D8A8BEA919D5581F0B014D8DA784253C314
                F207152848AFC684119384C60E1B873143C762CCF0B1E234039F52F8F9A741E8
                D6A52BE464640520D2E4282C595969C8C9112CED3AD3BB2D2BD4B3575F899B9B
                EF9BE8B8D4AAABE1C916B18939D3E2120BBA1128ADA7F430247FAC34EB9D925E
                358E742C363AC1EFD68DBBD5EFDE34BDB877E76163C3B59B78F9FC8D80848011
                90A4C4A7424F535728362286207888D7E42EF7C96538C07297C3219641E1E76F
                9EBFA5AFBF11A5A71914CE2C16144C0FEF3B225AE3B652ED0428E3868EC2E259
                F33177DA5C4C9F385D942F1D350368A91B203DB910A9C905484EA0634A110151
                8DF48C1A24A754202595BA2C822629315F4092914EA528A34C40C330F0EBE3C8
                799A414AA13F8B9F3348FC98E1E1EFAB2BB986ECC41C047806C354CF02F3672C
                4067B92EA2340A987BF745A70E9D45E991959621306404246DE8ED6D968C743B
                C8CA5096216066CC9C2B898A4A7A9D98925D111A96641C97943B393EA9B06B5C
                4A2BEA7AC8496409949E04C8E88CECBA23D9790D7ECF1F3EAE697AFDF62501C1
                FF0930E8B980A1A1A69E4AC571E11EC58565E0BCC27A78FF099E3E7E21CAD2BB
                97EF45D7C3936E3CE1C62D3143F3F8DE13E4A4E70A5038E072E9E18CC233B4CD
                A070E9193178848064E69459983C6E3A0C744DA1AE6C0875D54BC8CEA84449F1
                0DE466D7837E66242657212ABE14E1310441523532726EE1E69DB7A8BFF112A5
                15F790915D43AFAB401A39101F6309B0F8A462F19CBF964A7F1E8FF3E3E6E7C9
                D119C84F2F4155D135146494E2E0EEA3E820D38520E940CEC7E586B389B40042
                565656B8880084CA4F1B06464A8ED411D26DBBA18D4C676CDCBA4F121E9DF22A
                3E39AF8420D18B49CA9B109B9CDFA5D5804280C850A9E946470AAE35FB09129F
                FCA25BD557DC3D5FEEDDBEB369CBBA0D08F10BC0AB27CF505B5E09574717FA74
                6BD11B5F877B37EF0A3058776F3FC0F5FA5B42E444A2DB6150781EA59C3A142E
                3DCD1370DC053567142E3B0CCD5F41E129FCA1038762D6E459983179A6C80E46
                061650BD48C152D90079F46626C4E72331BE04C969E420D9D7919A558F84D46A
                24A6D6213DFB26B272EB5058720B6595F785CAAB1E08E5E4D70B489A4161C525
                16212A364F1C13534AC5D772538B901A9B257250515639349474F0FD570329C0
                F6824C1B39746C4F6552AE3DDAB66D2B24C580FC014ABB0E6D098E769092EB8A
                8E5DFBA28D6C171C39715E12129EF0323A3E2B2F35B3448D20194DEADC2A40C9
                CCAD908E4FCAEC14119D34303D2B7F4B55ED75176D3DA30A2D4DFD17FB77ED6B
                1A3F6A1CFA532BD8B54317EA4A4EE292AE21D2125385BBBC7CF242B80BC3C2BA
                51779D60A82028CA505D564550DD4065F1350A904588094B4264482C05CF54A4
                C4A4233E3C093646D630239730D33186AD1165945D87D08E6A7917B6F54E3DF0
                FDE7DF60D288091839E8574C1B37116A8A4AB8A07046809545E5232FAB9A8E75
                488CAB466AD235A4A7DF407C7C3592936B5159F5448458566E7AE19FA1B6BAF4
                1A2A8A6AC45859017548D419156495D0CF592BBECECF39F0F2EBD35273A93415
                5239CA447A52A6F8770F1FF82B06F4F94C74342C0EACEDA4A4D05EBA2DE594B6
                E00557D2047A1B0289BFDE8E2447E0F4A01C63666229898C4C7C9E9E599A119D
                987F3636A564686C4A7947D2870D4A4A46B1544C4276DB9CFCB2AFB2F34A9765
                E6145A1C3F75B6505D4BFFE9F1630A4D4BE62FC6A8A123D1B7E767D8B96507B5
                B266227B302035E5D5021286A3AAB4925CA21405D9F9E41419F44B4D43765A16
                BD0165C848A260199A007FAF50D16584F88523322846C8FA123989B6318C340C
                60AE6B82C33B0EA0639B767F8232F8EB810294E103070B5078B192E2E9B322CF
                645296C8A65291495024C5533649A8456A6A0341720D85850FF0E429F0EE8504
                8DD48CBD79D688A7F75FE2F1DDE778F6E0159EDC7B81FB371F8BB1DAF206D10D
                95E455202F83E023E56716233D319BB24A1E659A223AE6202B3547FC9B96CE59
                882F7AF6428736527F82208E546664A5E5C869C845DA909B10280C91F89A4C1B
                FCF0CDB77075F6908485C53DC9CC2E4F8888CB3944A0FC4490B4FBE04149CB2A
                9521587A91A34CC92D2857D3BF6496BA6DE7BE875B77EC7D3F6CE8680CE8F7B5
                5806C033A9EC2091A151E29C4DE3EB26EA6AD24439E133C2F15109880E8B119D
                0CBF86C5CFA32392111C10852BEE41F072F187A7F315319FE1E9E4036F675FE1
                263C47A1ABAC0D3D151D1CDCB60FDD643B0B50FA74EC8E8103BEC7D82123F1CB
                77DF1328E3A1A5A2428EA2408E6221E64E52A94C642451F688274812A8DCA434
                202DB91EA5458FF0E219F0F4E17BBC7E4EC0102C7C7C456394B8D048799CC55D
                D9E3FB6F71E3DA23D455DD4575F92D34D43E10471196C9B538FC661238D919C5
                C8CF29C6057945F4E9D60B9DDB76841CC1F2FB1C094143615646468ECA8F0CBD
                BBD4E510389D29B30890A4A5307BDA2CFA5D84358587273ECCC82A0B2350B6C4
                A5960E884BAD90FBC7F7E5AF6A71F0EF54627AB154767E550772949FA36253F6
                39BB5D095EB966E34D02E5EDF051E32543878C1216CFA193E740F00EE2CDE7A9
                77EE5A9AA160883C5DBC847C3DFDC4F320DF6071BCE215023702C2DDE90A7CDC
                0209165FD85938890EC244D71C3A4ADA503FA706B5B32A503DA38C43DBF7A36F
                E7DEE84CD6DD833A8BFE3D3EC3AFDFFF2CCEAB4C1D3B8E1C4509E74E9DE233B3
                E402D548A140CAA0084892EA91957E5394A08CD47A54553C462E7534457935A8
                2ABB2900B87BF3391EDD7B2374FFF64BBC24D76178DE5397CF30BD79419F07FA
                B7326085B99475A885E68E298B4A13835298570A2F676FF4EFFD39BAB6EF4C6E
                41DD0EBD9532A476D41ECBCAB29370A095851495229E6CEB4065875F7364FF61
                840486BF8F8BCBB89D9C5AE84DB9641981F21981F2619F3D265064720AAA7B07
                8725CE0E8F4A34DBB5F748C9C2252B5F7EF5CD8F926933E7C1DECE190FEE3DC6
                E387CF70A3E13622C3631011168DB3A72FA0A4A81C017EC170B9EC0E477B67D8
                5A3BC0CEC6513CF774F7819B8B279C1C5C70D9C10B3696CEB03277829DB52BAC
                4DEDA1AB6E28663F2F2828E3CCF1B3903FA28073C7CEE0F461791C2450BEEEF3
                15951FFA34122CDDDBB5C7CF5F7F83815F7F89A9E34643EDE239281C3B065383
                4B14340B90975E8EBCB43AA42554213DE11AF233EE203BE506D2926A29BFB0BB
                941138F4465357545E7207371B5EE246FD0BF13827B3861CE21AEAAAA9043D02
                9E3F011EDE6BC29387C0F56BCF9192588298D82224255788B63B2395B20EB5D3
                297159F8E5A721E8C2A0B08BD05B294D8ED2817ED6761DDA53B723456E42B0C8
                CA0937E944AFE9D2A1234C0DCDE0E319F8362BABAC3A262EDB3A35BB7A667C5A
                59F7F8B4CA7F77F1528B837F9792324AA448ED1252F2BF2758762B2A6B5D9D3C
                6DEEBD51637F6B1C3966228C4CAD70EFEE6314E697A0BAB20E3959F988898A47
                5C4C22941455E1EDE90B5F9F000107CBC6CA1E5616D4E65ADA09991A5B4057DB
                0066C676D0D33685AA922E14CF69E0BCBC12E48F9EC5F183F2420729BCEEA75C
                7274F761ECDFBA177B37EFC64F5FFE2040E94475BE5BDB7618C4676B077C8129
                634751A7A544909D8191AEBEC83845D9D5D48D5C17A0A4C4D61038B75198750F
                0539775059FA90DEDC0ACA2F45021886E3D6F5570282C2BC06315E905B8FEA8A
                07B87FE73DEEDE7A8B6B354FD050F74C8C3583129F502A4049A74E2823AD4494
                BC05B3178970DF0C0ACFA174EDDC059DBB7681B42C959E3F40E17CC2A00CFBE5
                5778BBF948BC3D025EE6E757E74744A5ABA7E5D48C21503A1328FF349FB05A1C
                FCBBF407289DA99F1F1D1E9DA63A6BEE92DC516327BF18337EB2C48CDEE88C4C
                EA040ACB5055790D6154622E3BB90B87F1F70B8135951E2F2A312ECE9EB0E039
                107A6E696107A34BE6D0D33582B69601949534A0207F9EA0D2260752C59143A7
                B17BE711ECDE711007F61EC3917D277078EF710AC8BBB175C376ECD8B803EB96
                AFC3B6355B30F89B9FE997DB0E5DE53A0A507EFCAA3FBEECDB03E3470DA130AD
                4B41D610562626F076F1116D6B7E5A357252AA9199508D3C2A39851937509E7F
                1BB7EB5E51C02D455C344FCA95A2A4F036EA6B9FA396BAA1C2BC1BC8A4EF7BFC
                805D04C245F878FBC65B3CB82BC19D9BEFC4EBE3122A85B8F54E4B2137492E26
                A7AAC0A1FD27D0AD4B4FC8485189A152C3136DBD7AF540F73E3D20DD8E40E139
                143E11485FEF40E176D7D6DD08F6A57C121AFF2437A72A3E2A26FB48625AE5C0
                84F4AAF6A40F1A146952F7A2B28699DB771FB399BB6079EDC83193DE52C783AB
                11B1F409CA8597B73FFC286BE8EA5C4248708400C5D1C115AA2A5A7073F58695
                A53D8C8D2C606E660353CA323ADA865051D6C44545359C39AD88A3474EE1F041
                0501C9BE3DC7B16DCB7EECDCB61F870F9C146E7268CF316C234036AED98C8DAB
                3662F19CC5D8B87C3D7EF97610BAC87640CF0E5DD199EAFE80CF7AA147E7B618
                3D6C109CED2D2907B9C1CDD1116E0EEE08B912418094A230B39E8069406ECA35
                6425D688E7D7AB9E910BD09B9B482D6F7A0DCA8A29AC563CA2A07B874A4E03F2
                B2EBC961DEA0B2EC8118E3AFB36A2A1F8B63527C0912936B9090548DECDC9BE4
                26D4762751B8A5CCA2A6AC839EDDFBFC090A9FD7F9ECB3DEE8F5796FC87690FB
                1394AE3CC7427985D7DD1028EFD392F36E53E6F18D8DCF5B1B155FF40541F2EF
                0659568B837F97389F90FA24A6162C59BF799FD7CC398B6F1F3AAAD0485D0FDC
                BDFCE0EAE60D63134B720C7B02C10E66A6B604830D3C3DFC09022582C2885CC6
                13FA7AA6E2B12A752CE7CFA9E2E48973387CE814F6EF3B86BD7BC841761FC5C9
                938A38B0EF24B66CDA8B7D7B8F8AAFEFD97948B8CBEE6D7BB16AE91A2C9ABB18
                BF8D9D843953E760C2C809A2D5ECDEB12B7517DDD0AD4307FCF8CD97D4A277C5
                C923079097990A271B1B78BB7AC2D5C60DA1DE91488BCA43515A150A78FA3E22
                078569657879EF1D1EDC7C8DDBD79EA1BEF281D0F5EA47E2585178834A540D5E
                B093DC7A8377D4113551987D7AAF116F28E03EBAFD964A593E85587212CA4061
                E139C8CDAA457A2AB7CDF421A250FE75FF6F44D9E94E25874F06CE983E155DBA
                5127D44E1A6D3B519BDCAE2DBAC874C2B01F87C3C5DE43121396F23A393EAF3C
                39A9C43439A56C7A6C52598FFF289FB05A1CFCBBF407289F53E959BD78F9A640
                02E5FED90B6A4DBA06266058F4E9A8CD6769754D60A06F4665C512970C2DC855
                5C71F0C0091C3B7A1A9A1A06903F7501A74E9EC7710AA347288C1E3A78527CFD
                C0FEE3425BB6ECC3A1430A3874405EB80ABF4EBCFEC8699C387A067B77ECC792
                F9CB3077C63C01CA8CDF6660E2A8890212EE2A1892FEBD7BE39B2FFAA24FF7CE
                18377228F434551113168684A83884F986E3AA4F1442BD6290149685C2D44AE4
                2595A120B5140D65B7051877EA9FE3D9FD2634525B0CEA68DE529773FFC62BD4
                95DFC3E33BEF70EFFA4BBC7A4C5D0FC1F2FC8104EFA9F361800A32AB111EFE3B
                2C9959D77E0FC05476F2324AA883F31753073DBB7613B0F42537D9B9631BFAF6
                EB8DF61DE520D791DA63190286DC64C7BA9D04B66B536C78EAE3D4C482C494E4
                D25371F185BFC6259777FC8FF209ABC5C1BF4B547664489F47C565AE9E397785
                00454DD3A0494D530F2715CEE3CCD98B5051D582B2B2363408087D82458FDCC3
                C8C80ADBB6EDC3DAB55B09007206E11A87FF143FDF4BAEB19F4121608E1F3F0F
                790AB0870F9FA6EF3B804D9B7689EFDF43AF6590F6ED3E84D933E663FAA41998
                346EB28085F575FF01A2ABE0E97C3E4BFBED175F60C8C081F8EAF33E04D55404
                FB78C1D9DA0E016EBEF071F48187AD17423CAF22333A0359B169488D8C454E42
                0A4AE84D2D4829A0C7E408E404FCFC5AF135DCABBD8727379E083DAC7F881777
                5E083D6A78F4E7B128AD88B20DB7C40DD4391523353E572C5BA829AA423C757F
                53C68C155D4D17CA27CB17CD87FCB1C3682B27055919CA269DDAA27397F6E8DD
                B10FAC0D1D24AE0E57DE2644665F4B4D2C724D492A5F11159DDF3F21B5FA3F2C
                3BAC1607FF2EFD014A1F0265C9D2955B3C96AE587F534955E7FDE9734A38725C
                4180A278510D8A8A1A50A1B2A2A5754900A3A6A627DEE8254BD608180E928330
                10FBB8D410200C4A332CACB56BB763D7AE233871E28228410C177F0F83B27EDD
                360A85C7042893C74F11ABEFC78F9A201E0FFF65187A76A170D8A98700A55FAF
                5E183F72247E1DF803860EFA09CA6714A078EA340CE9E7B136B086939933BCEC
                7D10EA118260777F0450598AF00D44E2D5442A4529C888C940767C36B2A8B5E5
                C769510C532AD2A3D391199B89FCE47C0146297534B585B5A829A0D699C6B233
                282067D751F02D47697EAD58D3529096077D356DD1CD7C410176E5C2F922601F
                DABB4B94A08E945164E5A824F5E88CD50BD7E0CAE5C0A6AB01B14F92A273D393
                E30B2E26C6978C8E8D2BEA929C51F71F961D568B837F9792334BA549DD53328A
                A79D55D436A77C52795241F1CDFE43C7217F465140A270FA0214CEAAD273159C
                39AF8E53A79571FC942276EC3E82854BD6125094478E9DC5212A21FB0FC9632F
                85D4DDFB8E631775353BF71C153AA9406E42AF61F1D7D85118AA13C7E939B5C6
                C78ECA63D9D2D5983A7986D0C431BF61EAC46904CD64B2F6AF30E0F39F84BA76
                E88E1FBEFE1EE3468CC0AF3FFD84E5F3E6C3405D432C6534A5106DA567026B7D
                53B89859C2C5DC0C974DF4E061650C1FBBCB08B8EC8E306AE763FD43901C4A79
                263C0699D4EA674527081524A6212F3E05D9D4FAE727A48AE739B149E2357CBE
                87CF4DF122ABE2CC421465E6202E384C2CEEE6A5996A046CB0A73B023DDC088A
                F9F473B6A5E0DD4194236E89DD6CBC252E963EAFB3534A6A93A30B5C13A2F3D7
                C4C7167F959C5CDD362DBBE13F2C3BAC1607FF2E112452A48E3905D5C37C03A3
                CF9B98DBA51F3E76FAD9CE3D07250AE4260CC991A3A770F4C479EC3B784A680F
                B584FCE633107317ACFCF36BFC9CBFD60C091F593CC660AD5CB3150B16AFC1FC
                45AB3167CE12CA2D7B705AE12275450A9471CE113007B060DE62CC9A315794A0
                69BF4D172BC7860D1E8AEFBFFA055FF5FD9132CA77F8F9FB8198327EBC0065C8
                0F3F42FDFC0518A86AC38CBA3243156DE85C508385962EEC2F11383AAA30D3B8
                084B6D0398AAEBC050495D889FBB9ADB20D0D90311D4D5455D09442A9591C4E0
                700112439472350A7101A1E231971A3E91C9B3D089E1F188090913A064C4C450
                19CB40661C4147522560067EF505DAF182257A6B07F4EF0B2D3575496E52D13B
                376BDFBBA5797531A9B145F204CA4802A54B6A6AEDBFE426AC1607FF4EA56495
                B54DCB2AFD3AB7B066734070A4FF09F90BB7F7EC3FF2FEE889D3D8BDE7A000E5
                20854E76101643B28DBA15769219B39708489AA1680683A16177E1EF63A7F9EE
                C7A19069DB0DFDBEFC51C0B561C30ECA2BF2B870415D94216EA32F9C57C19A55
                EB317FEE22CC9DBD0053264DC7FC59F30898A918F9CB64FC386038460F9D4841
                7602268C1A8311BF0CC14FDF7C8385D36740E1E0515C52D680899A2674CF5FA4
                C78AF4F8028C944FE292D20998ABA9C152430336DADAB0D7D31332535585C6C9
                9338B76F1F548E1E8529B98389B2B238BA999AC2DDCC0C2EC6C60871768683B9
                95C842819E5E54CEDCE16E6B0D57FAFA65934BE4540EE4609760A4720173278E
                461FEA727A509BFCCD677D7174EF6E496244F4BBD8E0A487C9E1D919B96915FA
                6971A5735213CAFA262554C8262454FC4B6EC26A71F0EF1481221D1193DEA3AC
                EAD6D498F834C3738AEA45878FC9BFDC7BE068D3BAF55B704AFE9C78B3191006
                A1190C2E47D3662E12E3070E2BFC1BF1EB19A463272F083799B77015DA76E889
                36D29DF0E3CF23307EFC34AC5EBD19E7A8955652D2C2392A1D3C49B765D3762C
                9CBF048B79B53B81B260F67CA1A5F336E0D71FC7918B8C248719811FBFFE96CA
                CF284C9D30013F7DF915164E9B05A563F2B033302207D186F65905A89E3C04AD
                D30760AC720A7A67CF424B5E5E80C18F2DD4D5E168600067232338191AC25647
                079E1616B0D6D282EE9933E23567F6ECC1DED5AB21BF7327766DDC829D1B36D3
                7113D62C58840D4B1763DFBA75D848E195B576DE4CAC98390543BEE98F81FD3E
                C7A491C3B16FCB5649A8AFCFBB2B2EEE0F1C4C5DB26F553E324F8CCA59951E5F
                F66D566A75FBD4E4EA7F1912568B837FA7D233AAA432B3ABDA937E4A492BDEA3
                A2661472F0F0B9DB3B779F7877FAAC8664DB8E23E40E27E90D3F4F6FFC3902E1
                9400810160F758B17A0BE875387682CAC871459C9457C12905351C3FA94C8F55
                71F6BC368E1CD88FA1830789731DBCB09857A17FD1F773AC5FB54E2C7C52BBA8
                2E2EFAE2CB36F6EED88709A37FC38AC5ABB06EE50672941954F75762EEE4D918
                3B6C2C860F1A8E51434763EC887118397C0C86FC325C88B3CDA6B55B70F2883C
                2E9E5586D239159C5750C439CA45174F9C82F2298247E19C105F96C1B946FBA2
                260C28081B6990C3D0DF6D6D6802073353385B52CEB1FA7DAB0B170B23381A9A
                C15EDF04565A063056D684DE0515722E657185E225350D18AAAAC358434BECB7
                C217AD0778BA37F9B85C7EE3E9E470878E69B109C5667189256BE3934A7F4A48
                2EEB44FA974B4EB35A1CFCBB95915529935F58DF2B23AB7C9A9189A3EEDEFD0A
                395BB61D7E7AE4D885A63DFB180C050AA4040189328CC8251C6AD93DD66DDC25
                20397B9E9CE182364E9CA2B04B9030208A4AFAE2684A7961FBE64DE2E2283EBB
                CA93537C1CFCE320289EB920CE4E2B53E95157D210470664EA44CE28F3C4FCCA
                A2190BA8C4CC178BAB7949E4ACA9B34586193FF6378C1A3116937F9B864913A7
                52F89D26BE6F36BD8641DBB179178E535E523A290F15F9D3BF43227F565CCB73
                F6C8299C3D7A5A9C8854A5D2C7E0685D5086AEB292D8B5C0585315E6DABFCB4C
                4D4740C2B0381898C256DFF8F7DCA3A503134D6D98EBE8C142571FD6970C2576
                26C68D5646862F6C4C8CEABD9D9D62A2438274088CE58929E53F26A5567426FD
                BB6789FF995A1CFCBB959C5A225550D440AE52F19DA777D8C64347CEBB93A3D4
                1E3A72EEB5FC6935C9596A972F5208649DA34F12670B9E5B397346F9CFF698DB
                676D6D139C3DAB26E64CD4D40CC4F38B17B5A1A6A40C237D03AC59B112BDBA75
                477B9976D4114843AE8D2CB5B943C4C5607CF197BA9226CC8D2C851BCC9BB900
                F3672EC692792BB070CE622C9ABB4488C71994D9D3E6D0F8222C5FB442ACA565
                70268E9980D1C3465196194939661C664E9E8E8554BA7653C938B87D074EED3F
                8CF3C7C85DE4CFFFEE28F4F7EA9143E82AA989AB0E75149584F4141561A044C0
                1034BCC597B10603A12BC48F79D31E536D7D585D22A731B316B2363297985F32
                7D676562F1C4CED2B6DCC3D9DD3FEA6AE4B9ECB4AC3904C737C969959D52D2AB
                FE4B90B05A1CFCDF50766E8D4C5A4669D7B884DC51AAEAC6A72E5CD48B3C734E
                F38EA6B6D93B2D6D03891E7D8A58F4183A3AC662F24D53D35040C3A05C241BD7
                D13185BABA2141A42B8E5A5AC6E2A878F61CCC8D4DA0A1A22A36C0E9DEA91B3A
                C8B617473EFBCA6F34AF95D550D61252BBA8214E126E58B585DEF0C9C25958B3
                A6CEA18E68A6E88AE64C9F8B650B978B0D7716CF5B221EAF58BC1C4B172CC102
                0AC17C71D6B48953A8439A849913268AD0BB66E1526C5FB30107B6EEC6C97D47
                84B370196227116E72F18F72C2C196728CA9863ACC34B9B4685289D112E2C7FA
                2A1AB8A44E9D969E9100848E4D263A86AF0994BBEE4EAED90488634672FA7E82
                6442566A663F02A53D81F29F2E377F558B83FF1BA28C22959A5E22975F58F799
                B36BE04C5B7B6F6D3D03EB0C231387472646E6EFCD4DAD78AD278CE953C4E225
                04970C4CA0A3A58FD31478797D8A869A36E8B53032A4379D1EB30C092E132363
                A811247A3AFAD0A2B0B974F132F4EED90752BCB087C4936D2E4E1ED0D13480FC
                09CA14E7D5C5F4FE312A6D0BE62EC3B429F329DCCEC5E4893331E537728FC973
                84B8CC4C1A3705EB57ACC7062A571B28F3AC5BB1066B96ADC0EAA5CBE9F10A6C
                5AB3062B162DC3AA252B687C15D62E5F8DF5CB5662E38AD5029ADD1BB6E0D0B6
                1D38B68BDA75EA9E2E9E508026FD5B3883E82BAA0A9DA7B2A5725E515C996848
                4EC227F7F89211724089AAA2FA3BA50B1A4F0D744D6B2F3B7A475D0D89D34F49
                CA5F9795513A242DADA867427C7E5B2A3BFFA9E0DA925A1CFCDF52564EA55471
                E9F5763171D95F0706C7AFB8ECE26F6D69ED56646561FB8CD4644116CBB03024
                CD4018D0A74A4B4317E7CF5E84F245353050BC1685D7A1686BEA89E77A3ABA04
                0CD574633338D839D29F618EAD9BB761D0C05FD1AFEF9738237F01AE973DA1AC
                A88E037B8FE0240550B10C813A2C3E95CF2712972D598FA9936663E4B0F118FA
                CB680CFB750C85DADFC5E78638BB2C9DBF9800A1F67BD51A6C5DBF11BBB66CC1
                BE1D3BB077FB6E3AEEC19E6DBBB073F376EC58BF4968EFA66DE42E3BC56E0887
                B7EFC4893D07A070E008CE1F3A2E74F6C0519CD97F04A78F9FFC43F250A0D2A5
                70FCB4E4C269C54672BF57FA5A86B72FE99BE7F87806BAA524E59ECACE2C994D
                A07C9B189FD32535B550363BEBDF5F3EF0AFAAC5C1FF4DE5E4554B67E7567522
                587E0E8F4CDDE6EE19E2EAE2E05AE16CEFF2C2D1C6A9899740F2353856A6D662
                CD2ACBC6DC5A5CF8A5AEAC02435D3D589999C3DADC421C6D2DADA84C19C2CDCD
                03D6D6B6549EF46067EB04077B675CA44FEBFE7D8771EAE459D122F394FE1A6A
                9BB76CDE8D8D1B7660CDAAADD8BB9B80397601DB771EC5E2A51BF1DB8439F875
                F018D12A8FF8651CB5C99331F887A1944BC60B9016CE5B8EE5CBC855566FC486
                F55BB169E376D27E6CDD72083BA883E3B3D5BBB6EFC3FE9D7B7164F73E9CDAF7
                FB9E2AAC0B04C17972B273E464A7F72BD0D74E113C27C82DCF49CE289C95C89F
                3ADB447AA77841E5A581BED93D2727CF325FDF88B090AB89BA2969A51B0A8BAF
                8FCCC96DE89B9C5AD53E29E5FFADD4FCA35A1CFCDF5641D13599C4E4826E99D9
                E5C3C22252F6FB79F95FF171BF52E3E5EAFDD2FDB24713410382060ED6F670B2
                7514D7F7589B5941474353C0626278096E979DE1E1E20A7B6B1BB8B8B809595A
                5A0B50549435088E3304C601ECD8BE079B37ED1033B37CE679F3A65D6269029F
                91DEBA791F766E3F840D9BF661C7AE63D8BB5F1EDBB71EC2A205AB3171F4340C
                FD793441329C60F94D68ECA849183F660A2651B09D377731D6AED984EDBC3FDC
                613EB37D11A7A82393A78EED38B5D0C7A9CC1CDF779041919C3B728CD574FEE8
                C9A60B47CF34291E3BDBA47C42A951455EE5BDAA82EA5B8553A75FABA9A83FB7
                30B779E8E5E97B3DEC6A54615C6C6A787272B60595974379053533A8747F9B90
                54D83536AE482E35BDE6BFC545FEAA16073F0491B3C8E6E455F5248D89088E39
                16E2171EE0E71550EBE3EEFBC2DBED4A231D25DE6E3E2078C42267372757B83B
                BBC0C2C454ECD66865664AB038112CCEB8E21300FA254399BAA6D30AFCA62990
                931CC1AE9DFB05207CBE87DD64CFAEA3C2417829C2FEBD2748A770609F3CD651
                E9D9B065BF38AE5FBF1B0B17ACC386D5F4BDDB4F60DCC87904C83C4C1CBB14BF
                FDB61293A6AFC594599B3073FE76CC5ABA1B73961DC4869DCAD879480727CE18
                51CB6E06153523CA4FD465A9684B3494D4DE1AA86B3DD356527DA8764EE9BEDA
                59D5FB5A4ABAF78D75ACEE5A1A39DFB43573AF8D8B4F294D4C4ACF4C4DCB8ECA
                CCCA77CBCC29D6C9C82ADB979A59323739AD74705A6645EFB4CC9AF6299935D2
                2999D7FEDB2161B538F8218840912248E448BDF3338B27A425649D88BA1AE31B
                E41B5246C03CBCE2E1F7865CA691D78086068480DA4178BABA21C8CF5FC0C1B0
                E8696992A35008A69C624EF94657C7508072F8D009B1F2EDD0C1E302145E9FC2
                27084F1C3BFFA74E1EBF40BA28B4FFF01901C91C72928D1BF71260C7B17AD92E
                AC5D499963CB29AC5EB1975AEF8358BDFA3056AD3F8AB59BE5B175B722761FD3
                C4210563EC3B6E8813E7ADA0A1E7022B1B7F5C760980A77BA0C4FF4AF0DBF0A0
                AB779CADEDB25D6CECC33D1C5C0203DCFDFDA343E2FC33130BAE1466D5B897E5
                37D8A6A5E7186464E69DCFCA2ED893935BB4342BB7642281F21381D22725BDAC
                2381224BA0FC8F00D2AC16073F14112402968A92EB7D8AF26AC665A414ED4D88
                C9B2890A4F4ABC1A1C5B13E817FAC0D73BF0A58F97DFFB40FF90A6E0C0204900
                81E2EDE5015797CBB0B6B280A1811E54D534604101D7D2CA1E6AEA3AE0791955
                EA8878B9C2E9D34A62AEE5AF5254D4F937DA4F20ED3DA28025945F56ACDA4EA5
                4409BB779EC5C2857BB164F1618C1BB719C3476DC28F43D7E38B9F57A3D78FA4
                411BF1E5D8FDF869DA492CDA6682F507AC70F4A207344D4361E9100E47D7B026
                FFC098A709F1E9998539457A05D985DB73B30B56E4E7942E2BC8AB5E5A905BB7
                243BA761414666DDCC8282AA89F9F995C3F2F22ABECFCD2DEF9B9553D1954069
                CFD7431124FFA38034ABC5C10F490C4B7E76A51CA967414ED52F85B9D54BF373
                CACF64A416D8C74625465D0D8E2CF274F7B9151214F68C4079EBE1E6DEE4E9E1
                86E0A000F8787B9293984045551D06D421F1B24A5DEA9278D59C21B5D8972E59
                8A39199E6BE1093A96AAAA3E54540C849495F5858E9F51C601729C5D074F52A8
                E5E59567B0919C63D8B085E8D96304DAB51B0269B9A168D36E24DA741C8736DD
                A642B6FF22F41DB10BBFCC3E83E5BB2DB1E9B02D8E2B7B41C7221C568E110C4A
                635048FCDD8CF4FC2002653381F23381F2595E7649EFBC9CCADE399955BD52D3
                AA7B262695772F2AAAE942B0742450DAE5E494C91024D2A4BF059066B538F8A1
                2923BD522A2BB35A362FB7B65371D1F5FEA525D78717E4D72ECCC8283A909898
                AD4FD6EC17107835CBCDDDF3BAAF5FC00BEF2B3E8DB6F676122B1B4BB8B83983
                97569EE7B52DDC42939368EA1841455D0F1755B4C5F18292B6D079720F3E0DC0
                A7035867CEFD2E153D03ACDBB10B47152E40E18C16E6CCDD88AFBFFE0D727283
                D0467A08DAC88C471BB96968D37931DA7CB6096DBEDC8DB683CF60C06C338CDF
                EA870D6762B14F391EE74CB361EA560247BF127807E7BF8F492EBD51585AEF4A
                E564219515CA1979B2E959C5D2E9B9D5D299790DD26939D7A553B31BA4F373AB
                A572B3F977F0BF771FC216073F54E564574BE7E6D4C8E5E7D57426503EA34FD8
                4FF4099B4CBFE84D0989696AC12157FD3CBD7C4A1D9C1C9F5A5A5B355A5899C3
                C6CE1A56D40E9FBDA0025E1075E6BCB28043E1AC328E9E380BF9334AE204A3D0
                492571DEA85947299FB08E9DBB801D878EE0BCAA3656AEDE855EBD7F46FBF63F
                404666203A759D00B9F693D1A6FD4CB4E9BAF47750FA6E439BAF0FA3E7046D0C
                5DED8A35A722FF04C5D0291FF6578AE01756FC363EADA236B7B0C6B6AABA7E66
                695975F7BCC2FFFCC9BABF4B2D0E7EE8CACEAD91CA2BB826935F58DB9E5AC3EE
                09C959DFE417554ECCC8C9DFEBE51BE06261635B61E3E0F8D2DCDA4AA2A1A30D
                4313739C3EA782BD078E8B138C0CC7A9D317C552043E13BDEF80C29FDA7FF034
                E98CD081436785D66EDF0179252E3FA7D1E78B41E8F5D9208C18B91C9DBA8C45
                97EEB3C951A692A32C449BEE04C91727D0E6FBF3901D66806F570462E6A922AC
                3E938923BA4550B2BB0643D75A38045F9384A7DE7D9D5674BF34A7A8DE202DBB
                70624A667E97E48CBFE76E5EFF15B538D85A54505447C0D448179654B7CD2D28
                EF999D5F343C2523FB9097AFDF552D3DFD3BE72E2ABE575657C3B153A7C5F284
                AD3BF663FDA69DD8B1FB9070135E1AC9EB5976ED3921B47BEF49F0D9EA3DD412
                EFDDCFE09C16DAB4672F0E9F3E834933E71310BD307FD156AC5B7F867E7B03D1
                BDD73C74E8469074598936BDC9491894010A68335003FD167861F2911C6C552D
                C6398B3AE87ADC87B9CF4DB845DE9624E63F7F9E5BF92C834039975D50363433
                AFA46346EE7FDF8D98FEBBD5E2606B53766EA5144936AFB0AA4F5A66D1ECC494
                5C3382A07CF7BEE3AF4F9D5696F0E67DBCEF1A5F29B77DD30EB1F68477AAD6D5
                D0133B55F33A144D152DB1DB12EF33CBCB0DF81A5DDED642E99C32B5BF0BB16D
                F31AF4FFFA3BFA8DF5C345DD647CF1D32EF4EEB5161DDBCC45E73623F159C749
                90E9B99A40D987364375D17EB235BE5B6B8D79C7AEE298713934AC6EC0C6EF3E
                3C42EEC0D9BBA0A9B8E4F9A3A484D228CA5DBBB3722ABF23B56DE9DFF6A1A8C5
                C1D628868540E9989953CADB8C9E3D7B412363FF21F9E70A6755250C0303708C
                37FC256878BB509693ED65B12B024FDCB939B923C43F14FEDE0162128F8FA101
                57C50D14664D9F880573A7A1738FDEE8D66F2474CCF3D0FFC79D02942E320B04
                28BDDB4F846CAF3568F3CD61B419692840F961BD2D9651903D615A093D877BB0
                F57F007BEF5AF85DAD795F52FAE2566A7285777E5EDD0A82845ADE4AD996FE5D
                1F8A5A1C6CAD2250A804557E9B935FB1DBC0C83AFAD8C90B8F0898262D0AA13C
                E5CF4EC2ABD97813628681B7C588098F454274A2505E663EB252B3C5161B6989
                E9C8CDC813F7EE19377A18460E1B4C59A42D7E9BBD0566974BD1F3AB8D146497
                A383CC7CC8498D46970E9320DD6F33A47F398736E3AD213BC5113F6D72C55ACD
                6C9CB6BD894B3E2F60E9FF107A76F9884A7BF8B6B0EC45755A668D755E61FDCC
                ACBCCA1EA40F36C8B25A1C6CAD2250640B8A6BFA1595D6AD7171F70F3C735EFD
                9EA2B24E239F9667C7E0FDEE798112EF9FC2B75F6107E18D7892E35204187CA7
                0D8683F777E38D79181A5E903476D450FCF0ED976823258B83F2860294F6BD96
                435A6E1EE4DACC16A074ED3819ED06EC40C751AA0212D6E06D9ED8615C06358F
                A7B00C6E8489F71D2819254B520A5EBFCC2B7E5A9899734D2BBFA8611C41D285
                F4C1E613568B83AD55048A3441D2BBB8ECDAA2B0C8240F82E4A68ABAC17BCE1B
                0C0A3B0A9F756637F1F3F217E585776962376160180CDE23BF28B758B80A3BCE
                AF038760CCB011E286046DDAB483996D28344DD320C30156668E80A58DDC0474
                EC41C00C3C8AF6934C203DD30B52333CF1CB8E20ECB1B806CDA02698843541E5
                722D4E1B274B92CA1A9FA5143D4A4FCFBF7E26AFA47E4866414507D22750FE2E
                E5175533283D0A4B6A67A7A4173828ABE95FD3D0367ECB7BC85EB67316798321
                61681814DE8D89776B62476140D845585C8218160EB9437E1E8A41DFFF882EED
                3A10149DE113948DC3E7FC20D76331E4DA2F4487CE4B21D57E12BAF75D88CE43
                15D0718A19646679436ECE150CD915825D66B550F37F074D9FA7387A291BEA0E
                0592C4D2F74F920A1EC46714DC38985B7CED4782A4DD2750FE4651D9912248BA
                514E994E39C59240A9D6D6337B43F944C20BA8F93E3CBC0F3E43C390840747E0
                6A60D89FA0B08BF05EB47C97302E3FDC210DFF6504BEECF32564DBC8A273E7CF
                101E5B8A155BF5D1BEE76248775A04D92E4BD0A6F36C74FE7E3DDA8D53439BE9
                B66833C717D20B8330724F10B65EAAC009D7FB3868538BF54A31300D6E688A2B
                7BFF28B9F441645A49C3B6CCE2DAAF338A2BFFA5EB7FFF37D5E2606B553328D4
                F94C25773123502A750D2CDE506723E19CC2A587CB0C3B0C83121B11273A9BB8
                C8F83F61E18CC2CFF966507C1D32DFD2B64FD73E0294DEBD072026A90AD3169F
                43BB1E8BD0A61D959DB673D1A6EB5C741FB8199D7ED3429B69366833FB0A6417
                87085036E816638F551D36EAE662F1C94038273E65501EA4553C0E492FBDBE36
                A3A8A61F81F25F5EF4FC77A9C5C1D62A06A5A4BCBE6B4676C994F4AC6213752D
                A30AEA7E5EDB98DB4A788D295F8AC1B984B307DF7892C32C3B0AC3C2807019E2
                0D8A39AF04FB8588BDE6470F1B236E40C9DB7176EBF23952326B3167C9058264
                16A43A2F41DB3E6B20D37715FA8C3902B9A9466833D38940F1448F8DB118BEC9
                1EFBCD4BB1DBA21C8B2FC663EDC550C4D6A129BEE2CDDDB882DB7E99E5D797A5
                1554F6C9282EFFA03B1E568B83AD55CDA090A34C494ACD33A17C5261686CF3DA
                D9DE45C29764F04A7BCE260C0AB7C80C0A3FE623971B06851D87F7D5E72CC3A0
                B0F896B60C4AA70EBD119F528109D38FA24DC7B990EEB2146DA8FCB4E9BD1C5D
                86EC419B71DA547A1CD0669E0F7A6E8AC384DDEE38E15087A34E0D58A19682CD
                EA5188AE412381728B40F1C8AAB8B130BDB0AAD72750FE66FD014AB7ECBCF2A9
                9131A9669A3A269546A6766FE84D9770D9E189351FF72BA2EC3008EC1ACDE070
                B96150181ABE91026F79CE904C183D9100E90AE936EDD1B17D2F24241663F898
                AD90EA340F6DBBAD2267E133C6EB2133F820DA4C3084D42C7B7458E285FE5B23
                B151D107E66137A1EE770F5B755270C83016D1E5789754FEBC3EB1B0C129AFE2
                FA9CECA2AA1ED945159F40F93BC5A0506BDC8DDAE4E97E8191961464AB4D2D1C
                DF509991F0DD477937002E395C7EAE78F80A409A8F1C6C590C1067179EDEE7CB
                46F99A9FCE1DBB0950BA77ED87EC9C3A4C98B24F388A5CD795E21C8F74BF4D68
                3BE408B989053A2C7243D7957EF8727B342E3AE522A60E30897E833D46D9386B
                9B858892C6B7044A0D81624DA0CCC82DA9E9F60994BF59048A3481D29D8EB32E
                BBFADA5290ADB3B0767ECB73277C572F760D5E98CD936DCD4EC2936F7CE49CC2
                E2D69981E1195C7693954B56A15DDB4EF49B9245FFFEDFA1B6E621366DD7835C
                A7F9E426CBD0A6DB0648F5DD06B9E1F2909DEB808E8B5DD175992BBEDBEC03F7
                A872DC7C07D8C7BFC261A354E8B91749620A5EBCCE287B5A9E9E57675C585A37
                B9A0A4B66B5EF1873DD9C66A71B0B5EA0F507A90E69A593A5DD6BF64D5606DE7
                F68EA7F0595C5A9ACFE9301CCDE2121416142E00E2F2C447BE5B29EFBAC437CC
                6E2BD75180F2D5573FA2B4E426543403D0B13BB5C532944FBAAEA78CB2193243
                4F0A50589D165FC6B79BBC11917B1FF7E907B38D7D818386C9B00ABEC6A0BCCA
                AA785E9C965BAB4B908C2758BA7C02E56FD61FA0F42AAD6858A46768E9491DCF
                2D5B078F469E3F717170154070A9E112C4EEC19070D7C3E0F0B6E99C5F788C61
                D1D3D417978E72B6E9D5FB33C8C8B6458F9E7DE1E911013DA34874E9B90AD21D
                D642BAE736B4E9BB1DB24315203BC71E32B3EDF0D96A370CDDEB8DDCDA47B8F3
                06B00EBB8B03DA91708DBA21892F78FC32BFEA695E464E856A5151D5E8D2D2DA
                4E05C5FF3D1769FD4FAAC5C1D62A02458640F9ACACF2FA4A0AB201D4F1DCB373
                F46CE22505EC18CDAD314FDBF3730EB53C01C7D0F018EFA3CF6587730C9F5DE6
                8BD179C9C1C09F07A353E7AE6823D516674EEB40552B5080D2B9D77674E8B717
                B203F6A1DD88B3902337693BCF11DF6D0FC464850854DE7B87FAA78069E075EC
                D5088357FC5D4942E193E705D5CF32D3B3CBCF1614540C25503A7E02E56F5649
                799D6C765EE9179939859BD434F5AEEAE81B3F7472615014C8497CFE8485B749
                0F0B8D2477F04544782C4243A2E1E71B8AD0D018D8D9B9C2C6DE1D94713071F2
                1CB14472CEA24D54667A41AA4D67F4EBF303664F5F873143D742AADD6C4C5AE2
                849EC3A9E40CB382DC583BFCB03A0A5FCCD5C4FA0BCEA879FD06D5AF5EC326E0
                2ECE1965C023FAB624A7BAE969625E435261C5F56335F50D3FE7E717B62F292A
                FD04CADFA9D28A6B6D09946F63E253F6102831C666D68F6DEC9D9B3494D5C935
                424437C3A5263E3649DC7CE10A6591280AB841811102147FFF303838B88302B0
                8085F77BE3DD9DF61E5644876E5F0B505803FA8FC0AF3F5246919D816F476960
                C6B65CF498E48636BF9A60C896644CDEEF896D6A5EC8BA790BF5EF1BA1665D88
                338669B89AF5AAA9F22E1E27E4D6C7A46497EECE2B2AFE2E3333FB835EB0D4AC
                16075BA3720BCAA52AAAAFB7A7E3CFDEBE41C7D5B5F493ADED2E3FD5BF642631
                3534A112132E26D3B8D4F04D17F80E1DBC753A3B8ABFDF55F85E0981BBBB1F9C
                9C3C71C9C416946FB065FB012C5FB519DA8636E8F9F90F9091E23B7D7680AC54
                6FFCF4CD2C74E9BD10523DB660E3995A2C3A51827EB35DD176A43106CC5183BC
                79346EBC071ED00F6717701346AE15882B78DB54D480FB31E995210999051BF2
                8B4BBE282A2AF9A0172C35ABC5C1D6A89CFC32A99A6BB73B1697D50E27401435
                B40DB2EC1C5D9F9F535495D85AD89093840A476150D84D4283C30528BCBFBE8F
                7710BCBD0245D96169681B43515947ECEC3475C64268195863F0F0499093E98A
                2E9D3E43C776FDF1DD97D3F0F3B03D6823B702B2DF6A61A97C39B6E8DEC5A8AD
                B118B4DC10CA4E69A87F2341D9A317F0887A02538F6A0426DD7F9F5AF2EC6672
                5EBD676155C392F2EA9A3EC5C5A51FFC791E568B83AD51F9459552D7AEDFEB52
                5ED530DED0D8425753C7B088CACEABC3C7E4252E0ECED4D9FCBE9A8DC56E7235
                240281DCF950297277F3157BEA9B98D8888BC2CE5FD4121B05F28682BF4D998B
                BD878E61FF9113E8DDAB9FB84F5F8F6E5FA24FF7A1183166173AF7A7F6B8CB4E
                7C33D5049B940A70CCF426B65C0CC319B328A455DEC11D72156DEB34685824C3
                3FE6DA9BECB2E7D5C5358FACAA1A1E4C2F2CADE89E9599F7C14FB6B15A1C6C8D
                2A2AAD91AEAEBBD5BDACB27E3A85584B6D3DA36A0B6B87B7878E9E829F97AFC8
                285C7AF82C7174641CC2AF4651888D4400B5C6BCB7BEB19195B86AF0FC793511
                6079FB510685B71B9DBB68192CED9CC42E05E2668EB23D20DBE62BF41FB018DF
                0D3F8AF6034E112CDBF0F50C339CB67900E7C4F7F04CBE0FDFF85C784665C0C4
                A5000EFE359294A2572FF2AB5EE76615DF54CD2EAA199D9D5FD4B9ACF4C3EF78
                582D0EB646519095A6B2D38B9C658196EE25573D43D31B04CA7BBEE08BDD84C5
                A0F092C7E6D2C38EE2EEE60313636B5C54D410FBC2F1D6E8BC3F2D6F537A42FE
                A2C82973162CC459C58B387EFC247EF8E127FAADF18D1D7B43B6FD2FF8F2A7B5
                98BBDE129F0F3902A97EEBD177D851AC3DEC000BEF3C04C415223CAD12D1E98F
                9094F7B2B1E45AE3FDBCB207E1A9B9157BB3F2CA7FC8C92F69577FEDD62750FE
                4E51C991A19CF279664EF16ACA27010646E6F7089446BE01034312E0E32F320A
                9F196648F8CE61DC1EDB583B8A5BB8F09D3AD84DD6ADDB263634E61D27B9FC70
                4E59BD7E03C64F9A2CF6573978F030E4E4BAA063FBAFE8B7F73D64BB4E45DBCF
                D7E0BB7167307A913E064E55C2E805E7B16A9F0114F51D11965A81C8D4074D51
                690F5F64963C2DCD29B967595273675EF5B5BB7D0894561164592D0EB64655D5
                DE942B2CA9FE3A3A2E751B959E08334BBB478ACA1A4DE42C08F2A536F86AA470
                143EDFC36587EF45C87714E39B41292B69898D73787FFC5DBC57CAFE13E2E2B0
                E64B4D4F9E3C89E5CB9763F3E6CDD0D3BD247640F861E058FAEDF541FB6EBFA2
                4DFB61E8D4773ABE1CB41213E61CC3E603FA90BF680F1D334F898B5FE2FBFCB2
                17CF734B9E556715DDF1CD2DBAB5AFA0BC61303960C7D28ADA56E126AC16075B
                9B0812292A3BED29A70C0C0C893AA2A2AE9368646AF5F4A4C27909DFF727F04A
                C09FA088556DE4287C3F42BEB51CDF528E21E11B3DEDDC7910DBB7EF1773270C
                4AF3CED7FAFAFAF4B59D98356B1656AD5C2776A0D4D2B5C6D65DE73074CC0AF4
                E8370D1DFA4C8554D7F1E8F6E51C82659FE4E029D34607AF98D7D965F7EFD7DC
                405159ED7BAF828A47C7F28A6F8FCB2BBDD6937ED656E326AC16075B9BA8EC48
                65E59674A4203BDCD5C34F919C24DBC4DCE6C5F1536725B60E7CB6D85F80C277
                A7605002FD43E0ECE426B635E7BDDBF84E613B771C20C7D82D6EA6C0375DE09C
                C26587613976E42834D4789F5B156CDBBE071BB7EC16BB1EE85DB2819AA63994
                548CA0AC624E5F3795E8E83A34BAB845BE8A88CA7F905D74ABF2C67D49ECADDB
                8DE6D7EA5FED28AFBC3BBAA8A4BE37399F1C81D26ADC84D5E2606B1301229591
                5DD4A5B2E6C6441B7B577D6535ED124B1BC757A7CF2949FC02AFC2DFDB4F80C2
                0B921814CE277C4753BE2F21EFBCB4835C642B01B271E34E010A5F8FCC5D0FBB
                0A5FC8AE704A1E8AE72FE0FC858B387A4C5E5CBBCCFBB99DB9A0056D3D1B58D9
                78497CAEC437C6C615BD2E29BDF7E0EE7D9493A26B6EBCB6219DACAE79B6A0BC
                E2D1C0E2D29BDD0B8BAFC991FBB52A48582D0EB6361128D2B905E5DD4BCAEB66
                5E32B1B655D5D0AD3534B678CB5B5D0450996906851D85CF1CF33D91790BD2F3
                E7947160FF516CDBBA57EC04C9F7F16150B6EF3A2C720A075A76163EA9B86FE7
                7E7ADD6E11748F7249A28E88F75731363297385F767C1FECEBFB242A34B43A25
                2E29A628BFCCB2ACACFE4851E9ED05E5550F869414D57F5E5C78AD6351518D4C
                49495DAB8384D5E2606B13012243E5A70FB9CA120DED4B5EEA5AFAB7CE5F5413
                771273F5E0A58FBF67140EB2BCD4C0DED649EC417BE2F8692A39FB7E8784DC84
                6FCFC2B06CDEB65FDCF285616167D9BD6D0F0EED3D8C830728EC5259DA4F0029
                A9E9C3D1D94B723534F25D5C6CF48382ACAC9C92BC3CE792BCA29315A5350B4A
                4BAF0DCE2FBAD19760E9545ADC2047B0B44A409AD5E2606B535E61856CFD8DFB
                5F44C5A66C5051D70BA100FBE0D8C9334DE42CB8ECEA25DAE3E8B028E126BCD6
                843732E60D8CF7EE3924F6825DB7762BD6AED9226ECDB2868E7C23068685A1E0
                F99433272E88DBDE6ED9B41F3B771F879A9611DCBC8210121AD61818E0F738C8
                E772565E4AB4E9B5D29CF537AB0A87DF6EA8EB5B5F77A36349D90D5952AB06A4
                592D0EB6369193B4BD79E7F10F41A1D1FB5435F463299F3CE620CB37D9F6A43C
                1216741531E1D162AD092F60E29DAE8F1F3D454EB2132B96AFC5CA151BE8B81E
                CB96ADA33678BDB85BD886CD7B84AB3028FB771EC68E4D7BC456A26A1AC630B5
                7482A5ADABC4D3CBE7756C4C54555672A4435D49F6DAFAB2DC1FCB7292BB14E6
                64CA16E47DB87B9DFC57D4E2606B524559835471515587CA8AFA21FE7E574F2B
                5DD44C3735B17AA6207F5EC27324DE5EFEB8425D0E875A6FDF201044623FB79D
                7B0E92736CC3EA759BB174C55A2C58BC02F3172D178F57ADDD84B51BB6620B75
                387B0F1CC5CEBDFB70F8F8095C5056A34EC70456768E70F5F4E1A0FC2C343C26
                2D3523FF3465A4E1A515D7F85C53AB3877F39F558B83AD490C4A497175E79AEA
                1B635D5D7C34152FA81718E89BBC3C76545EC2B7E1675018101FBF6091572E99
                58E2D4E90B545A7693736CC4F255EBB168E92ACC5DB01473E62F118F57ACDE20
                40D9BE6B3F85D9933878F4184E9D390B554D1D189959C2CEC9051E3E7E4D41A1
                918FC2A3E2A3D2B30A7750F9FB86D7C3B4F4337E0C6A71B0358941292DA9E956
                577B6BAAB9999DD985F36A955A9AFA6F28785237E221A6E91914BE333BCFA950
                D0A56EE684701286829D8421993E6B3EA6CD9C271EB3ABB0DBECDE771827E4A9
                3D3E771E1755D5A06B680C0B1B7B5C76F3848F7F50D3D588D887D171C9573373
                8A37E617557E41A0B4AA49B4FF8C5A1C6C4DAA2CBF2E5D565ADB8B409967A06F
                E6ACAAA2D3A0A1AEFB8EE747D84D3CDCAF083771A196D8C4DC46949D1DBB0F60
                D9CA75028AD9F3160B487E9B32131327CFC08CD90BB078D96ACA283B849B9C53
                5485B2BA06B4F4F4859BD8385C868B8737FC82429BC84D1EC625A68550D95957
                5852DDEF13281FB00814998AF26B7D492B09143F3D5D93BB044AA3E20555B1D4
                91CF0E33284E2E9EE236FE7C87762E3B0C0343C2604C9A3A0B63274C116257E1
                AF6DDABA0BD439897D69B5F50D60606C02332B5B5176289FC03FF86A53644CE2
                8384E48CA082E2AAD5C565B57DCB2AEB5BC522A4FF8A5A1C6C4DAAAAB821575D
                757D405666E1566323AB084303F3872ACA9A4D8606A6C24D585E570245D9D1D0
                36C0E163F258CF77235DB21233E72CC4D41973316EE2548C1C3311A3C74D12CF
                B9F46CDDB15740C5A5CAD0C41426169622C43A38BBC1DDDB1781A1E14D31F129
                F752D273FC4BCAEB96939BF4E189BF967EC68F412D0EB616112452A476F5D7EE
                FC141D9574D8C2DC3E911CE5E969850B123BDBCB70B0778197A79F283BDC2A2B
                2A6B882E66CDFA2DA2C361F7E072C3800C1F351EA3C6FE26CA10075C2E4FBCD3
                B5A68E21B5C356D40EDB09377176F782B75F204223A21B135332EF64E516F910
                208B49BD3E81F281EA0F503ADEB87E7F686040F8394B0B874C4D0D83E7944F24
                2ECE9EE2ECB08F77001C9D3D44B7C38B98B82DE66E87F3C9E469B3FF74936123
                C70960B814F1D7F9753CB3ABA57B494062E3E0084717775176AE0404233C3AEE
                7D6A46EECDBCC232B78AEAEBF3A92DEEF909940F54944FA4489DC951C65E76F2
                D45451D62E24477979E4F0490943C28EC2C058DB5D16F984DFF86650B815E66C
                C2A0703619337EB208B4F3162E131DD1AEBD870458BC8F3E971D0685432CBB49
                4048182262E2DF1128F5F945E58E04C86C528F4FA07CA0FA0394AE0DF577A7B8
                387B9B6AA8EB57E8EB99BEE1C9365B1B27383AB8C2C9D10DE656F6D0D63382FC
                19453137C2A585416976148684C5E070BBCCADF19EFD47C4FEF93AFAC630B7B6
                A1B273596413EA7610121E85D8C494B75476AA8BCBAAAD0890E9A46E9F40F940
                459048937A102873DCDD7C1DB5B52E5DD3D5317EA774515D40C28EC25985CB0E
                2F89E42E86675B39AC72C7C3A08CFF6D9A2839CD1D0F7F8DBB22BEC10283C280
                71E9717471156E12743582DD44929496F99ADCA4BCB2A6C19800994CEA4AFAA8
                A6EDFFAA16075B8BFE00A5CFB5BADB4B3CDCFDBC0994DB547E1AD5D574606FE7
                2C20E1D95976050EB23C2FC2F323DCFECE9ABB48803261D274010A3B0B77415C
                7638C87277C4732E7F05C5C73F88432CA2E39324A99939AF8A4AAB8AABEB6EE8
                1220E3495D3E81F2818A209121F52B2FAB5BE7E67A25584BD3F0BE82BC6293A6
                869E00C4CAD21E16E6B6A2C5E5BCC11D0F4FCDF38C2C43D10C0A971D3E72C0E5
                D6995FC7EEC37031641636B6FF069498846406E5656149655E55ED7555026414
                A9F327503E50112472A4AFB3B38AB63B5FF68AD4D1367A74F4884293AECE2598
                9BD9C0CCD45A2C9E5651D711AD2E4FC9736BDC3C87D20C0ABB09E7136E9979A2
                8DCB0ECFA128A96A81176733284EAE6EF00D0C4158542CE71306E57941714546
                4575FD590264288997627E02E5435365F94D0EB2ED483FC4C7A51D7074708F33
                34307F72ECE86971D6989DC4C4D812C64616FF06142E2D1C589B676419149E4B
                99327D8E0088F30997283E71C8DF67686CF147C7E329BA9DC8D804C427A749D2
                B3F39E92A32411284709909F49ED3F81F201EA0F503A9006875D8D3D616FE79A
                626A62F3ECD4C9DF3B1E6E8F19924B8666FF21287CE419592E491C761914EE90
                38001B995AC19EEFA1EC7305C161915C764041B62933B7E0316594180AB37B08
                90EF481FED9963568B83AD41A5E5377807C88E45A575C3C22213CE5BDA5CCEB4
                B2757E7E524151626A610B164F967118E5EEE5C87105312DCFAD31CF9530285C
                7AD84D583C23CBA07046E1D6981D8557C871E9B1B37380BBBB274282C3111B93
                8894E48CA6ECACFC8765A5D56175B53736D754DFF8B2BAEAFA07BFFBF4FF8B5A
                1C6C0D2A2AA9972A28AEE99C575835FA6A44BC1A81926F6EE5F852FE8C920085
                A7EC19140EA31C641914768BBF82C2E58627D91818EE82F88C727346E1C9393E
                37C4A5C7DEDE111E1E5E080D89405C6C125253329B72730AEF9797D5041028AB
                0894BE04CA477B4290D5E2606B507E61AD546E416597ECBCF2092161B17AD676
                2E2586C656AFCE5E50FB1314761316BFE9DCEEFE1594E613825C7678FE84C778
                C676DBCE7D7FB6C60C192F4D7074BC0C2F2F1F5C0D8D44427C0AD2D3B21BF3F3
                8A6F5794D77A12288B6A6B6EF626583EDAC936568B83AD41790535520409EF7B
                3F252834DAC4D6C1AD4253C7E8CD4515ED7F030ABB0AE70DCE1D1C54D935B8BB
                61076140D855D85D788CF30BCFDC1E3D715AB4C63C7DCF7F96B333B5C63EBE08
                0F8B4652621AA8ECBC2B2A2CABAFACA87320506613283D3E81F2818A6F3A49A0
                74CFC82E9941A0583B3A7BD510246FD5340D840B3467149E43E1569757B57159
                6906A5792D0AC3C2470EB8CD936DCDA0703E61E0DCDC3CE0EBEB8FC888582E3B
                92BCDCA237A52595955595D74C6B6BAE4FA9ABBDD58D60F9683B1E568B83AD41
                0C4A566E590FBED92481E2E0E2EE7BEDF43995773AFAA6021463336B9131B8E3
                E1E58CFB0E1EC3C62D3BFF0485CFF570F9E110CBEEC2AD314FC6F149C3E3A7CE
                8A39143E91C8E7893C3DBD11101084E8A8782E3B92C282D25715E53545D555F5
                DA04CA3802A5CB27503E5065E7564A13243D9352F3E6065F8D71F6F00EBC4E1D
                CF7B03234B01099FDFE1AE859D81DF789E6DE5E9FBBF82C280B09B703EE1733C
                0C12BFAEB9E3E1D698CF3C7B7B5F4160603062A2139099912B2929AE78515559
                975D53DD7091401941A074227D02E5435446569974725A7ECFF8A4ECF91466DD
                BC7D436E1E3B79EEBD91E9EF6EC2DD0ABB0987529E8E6F068581E032D3BC5E96
                5D85DD8457DE73D8E512C5E1572C58A2F265E7F87B3E090A0A11AD7156669E84
                CACEB3EAAA6B2904C949D2E06B75B73B7C02E503554A5A91744E7E45AF88E894
                85E151899E16D64EB728CC36EA5FB2808191B908B2CD136DFF080A3B08BB0997
                1DEE7C9A57DE73866150B89DE67CC365C7E1B23BFCFD03111EFE7BC7C38E42A0
                3CA9BF7633B6A1FEF63E2A3FDF53906DD7D2CFF831A9C5C1D6200685C22C83B2
                8840F1B2B275BEADAD67D2C8A587B3053B02E78C7F0514761876149E90E3D6F8
                8292BAE878AC6C9DC425A99C4F1894C4845406A589407944A08411289B09942F
                09948F7AB28DD5E2606B50524A0187D95E6191490C8AB7B59DCB1D7293C64B26
                D6E24DE6E977CE277F0585675D972C5FF32728CD5D0F2F3BE093851C6439F8F2
                CA7B2E5D5C76C445EE944F22237F6F8DA9F434969556DD6BA8BFE54FA0AC2450
                FA5290FDA827DB582D0EB6062526E74B536BDCEB6A4422971E2F5B07B7DB86C6
                568D9C5178A28CDF6C76866650785A9E57AE31145C6A1814CE270C0BBB4CF3AA
                B6E6733C9C73B8ECB879FA22383814515131484E4AE73994F7E565D5370914F7
                EB0D77161228BD08948F7A0E85D5E2606B507C62AE747A5671CF90B0F805048A
                3B81728B401161F6DF0385CFE770C7C3419661613583C2AED33C75CF2D3683C2
                57188686862126268EE750909B53F8965AE3DAEB0DB76D099499D4F974A720FB
                09940F55710939D2A919853D83AFC6CD27505CA9F4DCA0D2F3FE9F951E3E73CC
                F324DCE13483D22C6E9939BF70906D5EFEC841962F1AF3F0F647585804E2E212
                90969AC5936DAF2B2B6ACB08142302651281D2F563EF78582D0EB606C5C6674B
                A7A417F4080A8D9D43A03851986DA030FBEE9F85D9BF2E5A6A06848161F1EE05
                DC1AF389C38B2A9AE2FB79FE84F3095FB7CC41363E3E1119E93992FCBCE29704
                4AC18DEB77340994B1044A676A8F3F81F2A12A262E8B41E91E1812339340B1A5
                F6B896DAE3B7FFAC3D6E06853B9CBF82C279A579E7029E986B9E68E320CB6EC2
                DB65444444212121A91994E75595755904CA851BD7EF0E27503A7E02E5035642
                529E5442724E37729469F1499916944DAA34B42FBD216024FC46374FDFF39C08
                9FBBE173387C2E87C32C03C2AD31C3C29985F3095FC7C34196CF0DF1ACAE8DBD
                B3C8270C4A54649C9843E1C9B692E20A31D956577BFD046910A9FDB5BA8F6357
                A57F4F2D0EB6065146918A4FCAEE4619654A42729699B1996DA596AEF11B2A41
                92E6F33CEC0E9C395A0285BB1D06859F374FDDF36B79A28D83ACBD939BD8AD29
                3024E21F417952535D1F4770EC237D4FA0B4FB04CA072CCA28C251A8EB994AA0
                989B5AD857E9E89BBEB1B17715CB0C38A370A0E529FC6650388B34773D0C0A1F
                795EA579F92377496231B5B58308B2BC0B42F0D52871D69841A1D6584CB61128
                E104C756D25704CA473FD9C66A71B03588C36C624A6EF7B0C8A419048AB599A5
                430DE593B7F64E1E7FAE6EE332C26F3E83C2198441690EB30C4AF3D43DCFC8F2
                5D3838C872BE699E916550824223FF042527BBA0A9BCACFA3EC111547FEDE61A
                02E5F3DA9A868F7EB28DD5E2606B10B7C749A9793DC2A392675346712050EA0D
                8DADDE393A7B89D6B619146E919B41E1156CCD619641E1195A5EF1D63C75CF5D
                12CFC83683C21D0FEF53CBA0F0F43D81D258515E738700B9D2507F6B291D7B13
                281FFD1C0AABC5C1D620EE7A28A3F084DBFCD884745702E5C62513EBF74E2EDE
                0294E6D2F35750F87C0E83D23C7DCFCB0D9A973F726BCCE197833007596737EF
                FF0F28B93985EFA935BE416EE276BDE1F67C02A5E727503E704544A54947C6A4
                F6BAE21FBE283A2ED58B32CA6D02A5B11994E630DB5C7A1806760F86A379EA9E
                A1E172C41D0F9FE3E1EFE1B2C54196A7EE7937C9E6D2C3A0E4E516BDA5D6F81A
                B9893D81328B40E9FE09940F5C57C393A543C313FAB87B052D8D8A4DF12350EE
                11284D0C0ABFD95C76D821FE11142E37FF080A773CDC1AF3DC0B6F2FCA65873B
                1EFFA03084844523223C8641114B20A935AE26482C6F5CBF338D9CA51B81F2D1
                773CAC16075B83C22353650894CF8242635752800DB4B4B97C9F606932B77214
                A58361E1D2C3E76EF61D3C263A9B7F2C3DCDCB1F39C8726BCC1D0FCFC872C7C3
                8EC261964B0F2F8164500AF24B5E938B94DFBC71D79820994C8FBB12309F40F9
                90157235518620F93C20387A4D644C72F0D113671F10304D1EDE8122C872D668
                3ED7C3A06CDEB65B380A83D2EC28CDA07090E5DD1F9BA7EEFF0A0ABBCA5F4079
                45709410287A04CA047ADCE513281FB8028262650992FE7E8191EBF38B2A43CF
                29AA3FBCA0A4D9C4ED31772DCD4B21595C5A9A57E073E9614878669641E15959
                2E4D5CA29A41E1ADBC9ACFF3FC03282F098E4202458B40194B8F3B7F02E50397
                5F40B4AC7F50D49704CBA6F0A8C430CA260FC74E98D6B4FFD049E1043CD1C6E2
                92C24B0C78F69527D778928D172BB19A41E17341CDA03064BCBC803708FC27A0
                E411286A04CA687ADCE913281FB808143982E42B2A3F5B028223C37D03C21ECD
                5FB4B2E9E01179718E86E744D84D38A4F209415EDDC6B3B29C4F78F9238B41E1
                717614868A9727F0AC2C9F10FC6B7BFC17505E101C39048A128132F21328AD40
                57FC221994012161F1DB5233F22328C43E2257697276FB7DBF7B6E91D921387B
                70FBCBCEC1F984CB0E5F6BDCBCCD0583C26196432F671B9EFEE730DC3CE1C6E7
                7AFE01946C02E5228132821E77FC04CA072E4FEFAB72BE0111EC285BD3B30A23
                5435F41F5DF1BFDAE4E317FAE719602E273C3FC26B6139B4F21C0A6713BEDEB8
                19145EB0B48FC22E5FCBC35D1287E0BFCECCF23CCA3F809245A0281228C33F81
                D20AE4EA1E24E7E317C6196533394AB89DA3FB234D1DA3266A9345D7C2CB21B9
                ECF032030685D7A27090E56CD2BC834133289C61782D0A972A0EC13C97D27C52
                F01328BFABC5C1D620672F7F59CF80E07E5742C2D6A564E6865ADA393D34B5B4
                69F2F20D809199B9D81B56F1A2324E9F3987DD7B0E883B7BCD9ACB7BCBCEC1D8
                C9B3F1DB8C0598BF6C03D66DDD8F6D7B8F52F939234E0AF2E63B7C236C471B07
                045CF141626C0CE2E3921176354A929599F7E2C9E317595595758AF7EE3E1A5E
                5BD3D0F1FEBDC79F40F990E5E87E45C6F58AFF675E81212B93D2B3FD09947B06
                C6664DBCB3B4B1B985D81B966F3F7BF29402B66EA3D678D93A2A37F3306EE274
                8C9C301DE3A7CEC59CC56BB17AD31EEC392C2FEE46CA7986F77F3331318393AD
                2342030390999AC21BE7F034BE24233D47380AB989E2C3074F87D3B123B9CB27
                503E64D9B978493B79F8F672F5095C18979CEE6177D9ED96AEA1F17B27570F90
                B3102876505256C5F113A7B079CB0E2C5EBC9A4ACE6C8C193F15A326CEC0C4E9
                F3316FE97AACDDB20F874FFD7E236C9E9C5353D5869191093C9CDD859B941717
                F1391E517A72B20B5ED0E39CBB771E2A3D7AF86C04959D8E04CE27503E64D93A
                7B4A3BB8F9F4A01234333C26C1D6D337B0EE92A9C55BBEE912DF2EC5D8DC0ACA
                2A6A905738836DDB77FFE9281326CD146E326DEE522C59BD159B761EC611F9DF
                6FAD2F022D8162656523EE435852908FBB376FA0A2BC869718482A2B6A5F92AB
                E451B951235846DFBA79AFD327503E70D93A7B4BD9BB7A7721579910101AA117
                1A192B6E8AEDE2EE236137D13732859ABA36CE5FA030CB4B0C56AEC3D419F331
                71F22CE12633E62FC7D235DBB071C721EC3F7646941E0EBF3ADA8662BFB6ACD4
                4CDCBEDE8057CF9EA2A1FE164A8A2B24B76FDD7F5558505A444EA24D808CA3E7
                9DAF377CFC0BAB592D0EB606593B794A91AB74245719E2EEE37F262A3E39DDDC
                CAFE19752B124B5B07018A96B63E951F750AB307052893A7F1BD79A663DC9439
                98327B31162CDF2832CACE03274498E5B914A34BE6E2CAC0AAD24A3C7FFC088D
                6F5E838000753C127291D7044D455969950905DA29F4BC1B65944FCB0C3E7459
                3AB8B72560BEB177F6DC1E169D78554BF7D27D0B6B8746BE89134F9C19189A52
                A055C7C143C7B176DD666A8D1788D23361DA3C4C9DB344743D2BD6EFC4F67DC7
                C0774D6750786F5ABE3CA3A1A61EAF9F3FC3BB572F71E7F60371DD714D75FDBB
                C78F9ED753F9B95C5D756D2195A03E04CEA7A5901FBACC6C5D64CCED5C7B5BDA
                392F08BC1A6D7FF6824A8D8191F91B87CBEE129E5D3536B1A4D2A38253F2E7B0
                65EB2ECC5DB05C941F7693990B5660D1CACDC2519A41E130DB0CCAF5DADFCB0E
                8B41E18DFE28C836BE7AF9EE3EB5CB57EB6AAFEFA0CEE75B5E854F59E5A32F3F
                2D0EB61659D87B48913AEB1B598FF40D8C3CEF17189EACA2AEC753F9E42A6EB8
                64640E15552DEA7C4E8B9CB264F93ACC9CB3F84F50E62E59273A9FCDBB28A71C
                92172710796B74BE32B0B6A2064F1F3EC08B278F515BD320AE3B0E0D89901018
                CF29DCE650CBAC46008DA716B91BE5944FD71E7FE832B3759333B170FCD2D6D1
                7345604894BD99A543A5A2B2D66B67B72B125BBBCB5055D386E245351C3A7C02
                2BD76CC68CD98B4498E5D2C3A0B0AB6CDA7950DC319D6771797B74BED6B8BAAC
                0A8FEEDDC59307F741C155EC64C01B12E7E614BE2B2E2ABF9E9599E745D06C24
                37F9864069F7B1CFA7B438D89A646CE52C6D61E346AE623BD42F30F298D795D0
                98DDFB8E3EB073746F7477F783A6A6A180E5E4A9B3D8B865B7283F93662E14A0
                B09B2C5BBB9D3A9F03D8B3FF84688F9BC36C795119EEDCB82E444088D9D9E0A0
                309EA16D22489E151596655329D2A6403B8D20E94DC0C87ECCB0B438D8DA6466
                E5226B6862DFD7E1B2F7C280E068BB33E7556B5435F4DF383B7B435FDF4C949F
                D362B9C151E12AB316AE14ED31773DCBD7EDC0BAAD7BB173CF5171BE876766AF
                5CF1437E561EEAAA2A71ADBA0A9515B562A33F06C5CDD54B929890FABEB4A4F2
                3667157293C354828610309DA93BFA684B508B83AD4D06C67652F697AF74D633
                B41CE5E11DACE4EE15944DA5E48591918D84041DDD4BC2558E9F3A8F4D5BF760
                CEE2D562C28D4B0F3BCAAA8D3BB16DE721B1249227DC7803E2E4B82431E1C633
                B3E41E626B7372135C767213D3F9D42EBFA26325B5CA8E04C8AA07F79F0CA02E
                E8A32D412D0EB64639BB07B6D3D036FEDED2C6654F6C4266D491E3E71E2929E9
                34191A5AC1947789BC6406CA2EE41C8705287C5270C6FC9522A32C5BBB159BB7
                ED17FBA35C384F81D6DC125703439195968AE2FC3C014A6646AE80C5DBCB4F38
                0B85D9467296C739D905199461340892298F1E3EEB4525E8A36C975B1C6C8D32
                B776953134B2EBAB6760BDDCC72FCCDBDCEAF22D0505E5F75A5AC6D0D631849E
                BE3134B42FE1D8C973546EB60947993677F91F817623E597BD626DAD82FC79E8
                E8E8C1CBD513C9F17128C8C91653F8559575BC19B1B8C6C7CF37882FE1901040
                EF32D2736E951457041320FB1E3F7A3E88DCA5E3C7385BDBE2606B94868E99B4
                8D9D67774D6DB319FA97ACACA2E3D2ABE5E595DEA8A8E8494E9C3C0365154DF0
                AED61755B4C5BCC982E5EB317DDE0AE12AF397F18E4B7BC4BA9413C74F435555
                1DCEF69711171589FCEC2CD1F5F0EC2C9F1CE433C93EDEFE080C08E5710939CD
                CBECACFCD286FA5B1604CA02CA2B7D0914D9967EC6D6AC16075BA3D44D1CA594
                F5AD3AEB9A388E31B577D77070F3CFB775F67E79FC94A264DDEA4DD841D9C4C4
                D40A67CFAA61DDC65DD8B8F900A6CC5A86398BD661DE920D58B16E17B6EC3E8A
                7D0714A8FBB90863232B04513B9C935980EBB537505FDD402D730D85DC024487
                C520C8371809D189D41D553426C7A53CB877F37E6C4D79ED89C7F79E0C79FAE0
                59A7BACA6B1F95ABB438D81AA563E92AA5637EB9BDC245BDC117342F9DB0B0F7
                48F1098A7C7AFA9C9A64D7F67D58BD62BD9874B3B67611678A172EDE805D04C5
                C4698B307FE946ACDAB0075BF71CC3FE83A77142FE02753FC6F022E7484E4817
                A0DCA8BB298E952555484D48435850B8002623395352905DF8BA24BFB4F256FD
                6D1B7ACD4202A5EF9DEB773F2A576971B0B54ADBDCA1ED7935C36F2F6818EEB2
                71F08A8E4BCD7E6C6EE5D874682F9594C3A7307FCE621CDA7F0AEA5A46C25156
                AEDD89C5CB370B5056AEDF8DEDBB8F61DFA1D3387AE22C94D574C5651B5191F1
                A8ADA84343CD75DCBC764B380B8181F8A8044486460958E8EB8D04CF8307B71F
                46D3E3C3E42A8308960E04D747E32A2D0EB6569D56379033B171FB4A4DDF7CAB
                93AB7F446442DA230FEFC0A6A3078E63EF8EFDD8BC613B664E5B28A6EB95552F
                61FEE2F558B16687283F4B576FC7961D87B1F7A0820085B30C9F2F0A27104A0B
                CA84933030545E509C57225C25263C16112191A032C3AEF28A5CA4944A90F1FD
                5B0FA613283D6F37DCF968E6555A1C6CAD3A7A56B5ADB99DFB776795B5F778FB
                5E8D09BC1AF9D8D9C5B3C944DB18F3A7CEC3510AB17B761EC1B429F371EC8412
                E4CF6A60EEC2B598397FB5C829AB36EEC68EFD2771E4E4595C50D1821505DAA0
                B02801465961392A8A2BC5B130A708992959488C49128E42390504C77B82E8F6
                B387CF03EEDEB8B799F4F5C33B8F3E9ADD985A1C6C8D32B6F5903AA3AAD74143
                DFE25705450D8580E0E8B4D0C8D867DE3E0192C4F00418A8E963CBDAADD8BBEB
                A80065F8C8A93870E41C366F3F8CD97FC0C233B51BB61FC4FE23A770FA822A8C
                2D6CE0ED1F2CC06040AA4AAB85B330189449909B9187B4C47414E516E3ED8B77
                127ACD3382259D4AD0792A3BC39FDC7FDA8980F928CA4F8B83AD517A66F6D24A
                9A865D95D5F427EA1B9BEB6968EA155B5AD9BD0AF40F912484C5232F25170777
                1DC2E2D92BB076D5567CFBCD50FC3C781CB6ECA25679C5664C9FBF0AD317ACC4
                B2F53B28D41EC2C113D4526BEB89F2C365865D85F3099517760F100CA0F02A4A
                114344EEC120BDF172F5AE7CF1F8A505959D998FEE3EEE41AFFD28CA4F8B83AD
                51272F68C89EBEA8D9974059EAE0E2E13AF1B769F52B57AD7BE7607719960616
                F0B9EC0D3B737B6C5AB51DEBD76CC7BCB9ABD1A94B7F0C193515CBD6ED14A04C
                9ABD04F3576CC4BAAD5C828EE2D4052571B56178700472D27345982508D0F446
                0234D2FFAF9B40A546C0C26E431D4FE385D38AB7DFBF6ABC4220ADA2BCD28F8E
                1F45F7D3E2606B93DE252B290D1D930ECA1A3A3F2B296B1CCACE298839B0EFF0
                436969E9C6E58B97C0DBC51B26BAE6080E088387AB3F162F5E8B29931762CE82
                35E8DA7300060F9F8419F35689D23379D612CC9CB7043BF71D81A2AA26D4D475
                E068E38410FF505182D849A8CC8060C0ABA7AF05280C09B907CFAD3419EB9BDC
                A75214FAE6F9DBCD04D65704CB4791535A1C6C6DBAECE62763606CD39B4099E1
                E8E46614139B581CE017FC6AE1C285922F3FEF879D9B76E2B2B52B0AF34A515E
                720D5E5EC1D8B07E2F7EFE753C868C988C366D7BE2CBEF86E2B7198BC4B53E73
                162EC7A2E56BB163EF415C505485A1CE25D85B392034E0AAC825DC2A3330D406
                0B3138E94919D0D5D07B4F50DD26387C09A035D425F527983E39CA87A0DAFA5B
                D2F945E59DCC2CED06AB6BE8EC77B9EC1E1A1D1D7DE76A50F07B6D55556C59B7
                0E470E9F809DAD0B8A8A2B505A7A0DCEEEFE5038A72926D9C6FC3657384AFBAE
                FDD146B61B060E1C85152B365077740887A9AD5638790E962656B036B3C1653B
                673123CB50B08B500E11C03044FA5A064DDA6A3A2FAE068695103CC6AF9FBD99
                4E19A62785D98FE224618B83AD45376E3F90AABF71B77D5169D5000B6B87E5A6
                6656567B771F280B0E0E7EE9E1E22AB9E2EE8ECCE46478B8FB20352507D93985
                B0B272C6E1E3E7A0A96B014D7D2B2C5FBB1323C6CD44EFFE3F41A65D4F74E9D2
                0F0306FC84D123265296D98C8BE755D92960616C094F172F31C9C6F3277E5EFE
                3031300565128993EDE5463B4BFB97F4F5BAB8C8787F0ABE7B29F4FECC936E04
                D2FF8DAE876C548A3E21525483A53EA47FF4837B8FA5AEDFB8D3AEBCA2A67F50
                70D86C67170FADA0A090D4DFC64E7CB46FEFEEF7217E7E92ACA484C6E2ECCC77
                4191D16F5F36E27D424676D381E367217F51036A7A1638799E32081D796676F2
                D445F8E187E1E8D2A12F3AC874C1D77DBEC1F43153B161C93A9C933F8FD3D405
                9D3979162AD4369B1A9A81BA1B4974580CCFC8BEF1F5F47B646B615711E01318
                58515CA940904CA06EA72775421FCD9283160759649B5264AD32F48F6E47FFE0
                8E04097F3ADAD12F408EED94C6A5F9352C1AFBDB00BA7FFB8ED4E3878F641E3D
                78DAA1BAA6FE8B8CCCDCE921A1118A61E1D1D1090949B7776DDDF9B643FBB68D
                7A1A1AAFE2C242EF274545D4E797575E4BCF2BB96366E7F8ECD869A5B7E7D5F5
                9ACE28EB498E9D5183BABE2594354D70F0F0394C9DBA107D7A7C8D6E1D7AE1C7
                2F7EC29841A330FAE791D8B37D2F4E1D95079516985D3297981B5934526E79AD
                A1ACF948F9BC4AAD8EBA6E12B9893DB5C9879EDC7FFA1BE593CF28B7B47DFEE8
                C5C73F854F814D86D485348060F885A0F98500F981A0F892D4879CA63BC1D285
                C619A276245992F41F12EEC36AE9CFFEAFE8F1ED1B520FEFDC94B97FF376BBDB
                B76EF4A8ABB9F6637A5AF6FCE0A030257FBFE088D494CCEBBEBEBEAF5D9D2EBF
                FF65E04FCFF66ED95AE5E7EE125D9899E65271F3A693A1B57DE0F10B17B3CEAA
                EBD61F39ABF4E4A4A2D61B452DE3C623A7949B4E28A84A94950C240AA754240B
                67AF940CE8FDB5A477DB5E92215FFD2C993376BA64F2F8299205B317366D58BD
                B171C7E69DAF776FDBF3F0E8816355E42E09467AC64E9459CE121CCBD08421F4
                FBE85D5E54D1963E5C1F0D24AC1607AF55D54B51626F5B535EDB9F348D9EEFBC
                5E7BE328FD12F611209B0880A5A499F4783CC133841E7F4FEA4FEA4DEA4EEA4C
                120E44927BD0704F8624FD87A4FE518F6F3EFC679226C93CBCD9D0F6E9DD5B9D
                1EDFBBDDEB76FDF5EF2BCA4B2765A4656E0F0C0835B2B3758A3F7F4EE9465A6A
                D62B4343C3F7A18141CF9C1DEC4B755554DD6242838E1765A52FF3080E5EE01E
                18BA45D3D854F9B4AAB6BBA6B165EA593583AABDC7CFDF397351F7F1A933EACF
                2E9CD779A1A662F852FDA2FEAB637B8EBF5A316BF9AB294327BC1CFBD3881773
                A6CF7DBE7AD99AA77B77ECBB7FFCD0892ACA25F1E42C765157A34F51A9594A1F
                9C11D40AF7A70F55672AD1B214643F2A48582D0EDEB8562F555F53DBB6B6B2EA
                8BEAF28A85F40951AB2CA9F2246842EAAB1B82C8613C09121BFAD4E8507E3943
                BF9C7DF4783D41B1887E69D349E3E8F1101AFB81BEF615394F5F02AA177D0FCF
                54762375A5C75D68BC33C1D7895EDB919E776477E2E7EC54F49C5FD383BEAFEF
                9DDB0FBEBD7FEFF188EB0DB7E76466E4EEF4F6F2D3B6B571F4BFECE456E07B25
                F0DEAA95EBDE181B99BF8F8E8A7F1E19115B4E47D7E2A2F25D9515B52333D273
                FADDBDFEB44F5DC5EDAF53E272C6BA3A5C5963A0657E9680B0BA784633E0F471
                A5383AA69D3BA59AA3785AA34057DDA4C8C6CCB9C8C1CABDC844DFA6905E97AB
                74FE42A6818E6EB2DB65E7B0B8A868DB9282C253D7EBAE2DA63238F4E1DD7BFD
                E8D8992447FABFB7B8BAA1B64EE65A754DF7BAAAEA51F4461E204771A41A9C92
                939E5B91959A5D979F55504D9FA622729B0C729F583A06D327CA9D3E5996F446
                6B110CA70994FD04CA16026B2501B088DEF4D9F4674DA5F189A4F1A4B1F47C14
                7D6D18BD7E0841378C9FD3DF359EFEAEC9F477CD265B5F11139DB08BE0B86069
                616B696D651FEAE5E99B1F1E167D33223CE639959EF7EBD76D6EBCA8A8FAC2D5
                C5B39A40F1CACECADF5B577B7DF8ED5BF7BBDFB87E47EEF1DDD7320F6FBF6C5B
                5F75B76B766AF197912189C3AFB887CC2218D61BEB591F201814B4558D942C8D
                1D3582AE446AE76796EB5CAFB9AF73EBDA23CD86EA7B2A776FDE3AF7E0CEDD13
                4F1E3CDCF5FCF19385A4618FEF3FF89CC0E874E7C64DD98F199066B538C8BA59
                DF20459F9AB6044C9FD282B23155A5D53BC84DCC6ED4DD8C23286AC8651ED01B
                F98C52FFD3C29CA2C745B9C53C2379935AC36A5221299D9EC791C2E9F501244F
                02CA81FE1C33FA5E03FABA0EC1A6999B91A79A149B7C3E3126E90C7511E7837C
                83553D9C3D752EDB399BB83ABAD95348F4B130B78924F7C82228AA121352EFA6
                2467BC2048DEB9B97A35999B5937E9E95E7A6974C9AC96DA607F729023B5350D
                A31AEA6FF5E06B6D1E3E782ACAC0E3BBCFA59EDE7F29FDE0D613B99B75773B55
                975EEB599055F2456A7CE68FB1E189BFC647268F484BC81A53945336EE5AE58D
                F1771A1EB0C6DEA8BD338A401976EFD6EDC104C477E4209F11249D9E3E7C244B
                C07C7425E69FA9C5C166DD6AB82E459223A7E8416FF4C0EAB29A85E42267091C
                2F521EE9367DF25FE465E6BF2568DE672467BE4B894F7D93109DF8323E2AE159
                5C64FC13D22302E11E8DDD8A098FBD161E1C514930945EF1F02D22080ADD9CDC
                739D6C2F673A583B66D859DA67DA5B39E41220458157822A6223E2EA08C4DB14
                5A1FE664173CA7E31BCA25EF091CC92543538993A36B636848C40B1AAF4D4A4C
                0BCCCACC3B49908CA752D58B9DE49F2D727E74E7991449FAE1EDA772F76F3E6E
                474074B87BFD61A77B371E75A6E75D0826217ADC99C63AD1EFA023A903A91D49
                F6F6F5FF1B7BA2FC552D0EFE5564AD52543264A87C742458FA515619436EB085
                DC409FDC2094002922506E51397A9A1C97F29AC078C7F30B0445233D6E22409A
                089446D27BD23BD21BD26B7AED2B82EA25E945765ACEF3CC94ACE7F4673CA73F
                F70501F88A9CE83581F79660797FC5DBBFC9CBE34A939B8BA7C4D9C9ADC9D5D9
                A3D1C7CBEF4D4850D8A3A888D8B2FABA1BBEB76FDE3B71FFEEA389776EDDEF73
                F7F603B987F7FFB54F3B953FD19DF15CD1D307CFFE147531522F9FBC92E260FA
                EA193D7EFA4CEAFF9283FCA35A1C6C49943BF8972947BFC46EF48BFD9ECAD074
                7A33F7D11B6C48473F8226352D31BD8CE0B81E191A759F9CE329E9654448E41B
                8687D4482ED3C8E010244DE4144D044213C1D154925FDA44B008A8A893680A0B
                0A6FF2F70E68A2F2D364616CD9E4EF1BF49EE0786B67E3F88A407916161AF9A0
                30BFA4E6D68DBB494F1E3DB7BDD1707BDFB3272FC7BD7CFEA60F81D2969EFF9F
                7D43FFA7D4E2E03F13398B14054D69527B02A7D793FB4F7FA24FDDD4BACA6B1B
                A92C9D262730227771A3001A4AAE914C70E491B354F879F9D753A9B943A5E63E
                959A47CEF62E8F0882C77FE8093D7F46A5E799B599CD534B13AB2754821E534E
                7914E21FFA90DCE93E81722B3931ADB6B6BABEE4E9E317190444F8E387CF1CC8
                39CEDEBC7E671939C92F044C4F92DCBD3B1FC794F987A61607FF23FD319D2F43
                E0B4A78E855BD8AF4843A89D9D4CC74554A6B690E31CA7769ADB6A5392136519
                EF82ECC2207290707293480AAFD1E430B1A404729E147A9E4AAE924CA5278E14
                4D2E13497FC655FA7B02E8CDF720186CE9A84F609CA552B3F37AFDAD0504CA08
                82A33FC1D3899C44961CE61324FF436A71F05F153B0C499A5A5B39524712CF91
                F4210D200D228D264D21CD212D21AD266D266D27ED22ED25F1AA75BE1EE614E9
                18E9006917693B69236925BD6621692689CFA10C257D4BE2BFA733498EC0FDE8
                DBD3FF6DB538F85F11BD617CCE87A191E1378FD49EC46F643782895DA737E973
                D297A4AF49DF90BE23FD44656C106930E967D20FA46F4903485F90FA92ABF422
                F18C6F17129F32684B92217D7290BF492D0EFE77880011270B59F4664BFF213E
                9928F787DAFEA17654BEB88475F8E3C8CFDB92E448B2249947B71F49FF212956
                4B7FDF27FDCFAAC5C1BF53946BA4B845FDAB5A7ADD27FDEFAAC5C14FFAA47F54
                8B839FF449FFA816073FE993FE512D0E7ED227FDA35A1CFCA44FFA47B538F849
                9FF48F6A71F0933EE9DF0A6DFE7F3EBF7463694C78270000000049454E44AE42
                6082}
              Stretch = True
            end
            object txt_BoxCodeInput: TcxTextEdit
              Left = 40
              Top = 4
              Anchors = [akLeft, akTop, akRight]
              ParentFont = False
              Style.Color = 11337727
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -21
              Style.Font.Name = #23435#20307
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 0
              OnKeyUp = txt_BoxCodeInputKeyUp
              Width = 545
            end
          end
          object cxTabSheet7: TcxTabSheet
            Caption = #26465#30721#25991#20214#23548#20837
            ImageIndex = 3
            object Label2: TLabel
              Left = 62
              Top = 11
              Width = 57
              Height = 13
              AutoSize = False
              Caption = #20998#38548#31526#65306
              Font.Charset = GB2312_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label1: TLabel
              Left = 49
              Top = 29
              Width = 65
              Height = 13
              AutoSize = False
              Caption = #26465#30721#25991#20214#65306
              Font.Charset = GB2312_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Image3: TImage
              Left = 2
              Top = 11
              Width = 46
              Height = 43
              Picture.Data = {
                0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000070
                0000005D08060000007DD2E2A30000000467414D410000B18F0BFC6105000000
                206348524D00007A26000080840000FA00000080E8000075300000EA6000003A
                98000017709CBA513C000000097048597300000EA600000EA60187DCA96F0000
                3F2D49444154785EED9D057C5477BAFE69A917BA956DBB2DA5B8532852DC1D4A
                F1E2C521C5DDDD429024100284B8BB100F717777771DC9B8CBF37FCF61B777EF
                FEE7DE4B0BDD6EFBE9A79FA767F29B99CCE47CCFF3BECF3B7366E802E04FFD8E
                6570F14FFD7E6470F14FFD7E6470F14FFD7E6470F14FFD9304453DD059D803E2
                924FA02C7FD7E06D7E43195CFC53E8A26C2BEA21AE489ADF9CE2655A146285E2
                A7B610D5C62E3774DBDF520617FFD82A7B1F7A729396A42277E99367421DBF58
                2709339274F85EE9A8B30E6EC8BB2EA888DD8F92E08D28745F8A94C7B39064BD
                08D5212721AD093C0965D5EB867FF7BF5F0617FFA8D228CBDE978BD2A674B644
                A3A92A04F5C5FEC88E37466CD02904B8FD086FC7EDF073D984A71E3F20336013
                2A23B682136B046DFE69F0938F21D97633C21C8EA2223FF888A1DFFF5BC8E0E2
                1F52F28C7105891711ECBA1C414EF311E9B318313E0B91EEB10065616B5097B1
                038D25FBD1D274042211994C75126A057162243F06F04FA039733FA21C5623C6
                E93038397E570C3ECEBF590617FF68527596BF9B157F3F2336601F7262F7A23E
                EF3824CDD7A16CBD06B4DE0078A680D49C609943A7B905BDFE1AF4380FBDE604
                A02278E243D0B71FA6DB99A328FC00021FEC44B8F51948AA3347197ABC7FA70C
                2EFED1A4ED885B1EE6FC034A12B600DC53048BA421C98F029273A44BD0CB2E41
                23BF0499EA02A4CAF390A84FB352D2ED64B2A3504A4F432FBD0A61D379A406AF
                81CFA319C8093B0499A0E2374DA60617FF685234476E0C75DA086E19394A7E95
                809D241D7A26E565027A193AE94516A05C7DF1278032ED594815C7A0549E809E
                D6456DB415DD4667D5452405AC4580D50A14668719197ACC7F970C2EFEA124CF
                1AD598675A11EDB1048A562A870A82A720900405FAB390E30284AA5390488F93
                CB4E422B26751E83867F94DD6AC58CF3CE422D3D07958480F24F412D388BA2E4
                E508711B0DFBC747D15C9F32D3E063FF1B6470F10F25029813790AA9816B814E
                2A970C4002A6A360A294516021A77512D07F00D449A8B45288D10B09306D7592
                3350F0E9B6E2332C44A588C43F8DD6B21D880D98024BF3DDC8CFA6D1C2D063FF
                1B6470F10F2175E5EB5052C850861BA5046D475ECC1A6878D4D3C4044B7C0C62
                C555744A2E42A13C0DADEC30813A0808F700829D047A07A5CEEDA49D5089F641
                D1B91F1AD17188DBE936920B147CC8C9350751E031110F2F2E448CE779E8DA68
                C897E60E848A1E5751FE2E14346F3292177FC2482FA199D3D0F37C41195CFC23
                48AFA270214F47479535C25DBF4769F2264A9317C97DE721161D85426B02A9EA
                3A84A2235008F74125D80B3D6F1725CD6D7F8747EADC050997D6C8A132EE41C8
                79147A38C781661A2DCA76A3D87B0AEC6F2C4784CB294AA97174FF54A8B9D9E0
                D7C6A12CD31B49610FE1637F0E5EB66710F5E46E2EAFE1E5975A838BBF076975
                7444EBE8E856947C0219B34D9E09699891BCD9D6BF21FB3CF2A377524A5C8B48
                D76988F79981FA5C4AA042728FEC22B4541EB5D283ACBB948253D088CFB2BD4E
                DB79146ADE41E8B80493FB23D0BE0BDA66BA5F1BB99243EEAC25A8EDFB817ABA
                5C6384B2E09948349B8D64D33508B3DB8118D70348B2D983E8FB46087E7C0151
                EE3791157317C5691648B0DB8A98C73FA0293FE8A5BE086070F13F5D3A75D5EB
                4251DA9496C6A7284F7747CE532B44FB9E4698EB2E8438AF47A4DB6A24FAAF41
                76E81A3464ED4443F65688EA688EA31EA8E49D80827B9805A816EF87B0ED1024
                1C7224F53906A04E40FB5748E9B4732FD0410193F77790759BA12CDD004EFA77
                280B99867CBFF14872F80AB9D64B91FF783B927D8EA0F0E955B4C79B439AE500
                757D0A95DB524ABD19D00A2291EF7B08C1E62B9116F230D6D0DFF44B6570F137
                97B6B007D439C3A04C9D0271C262B43E39A92DB7F714A45F95D606EF40AED33C
                64588F46A6CD18A4FACF4146E07C14462C426DF26AF00BB643597D00FA2602D1
                42203A081C875C23A6ADE210B4A21DD407B74025FF015211136C0812038BBF87
                5CB717EAD6DD90D5EF05AFDC082DF946C88B5A8BF4E0B508B25B446E5E873087
                0D8875DF839480A3288DBB8DD60267B4553E412B270302492134C262C8B979E8
                682D436B5331DA5AD3D1DA1A8F14EFF37031D9001F9B6B02837FF32F94C1C5DF
                5282D6B4290D253E2605490F911D760D716EC710F66033C22CD622CD71032A03
                B6A025E2070813D6419D45B0EA69366BA574C9F9BBDACF50C93B4D5B0A866D04
                9173041A82A26937A2F2B8130ADE6628449BA1513E93A26923C4B51BD056BC1C
                9569F309D834A43C998C18AF09D4DB2621C275263243D7A3207A3778A5B7A16E
                72A083218CA00791C3E228A92642274C0557908B366E2624EDD92C4051671D2B
                B1A8080A45016A121FC0CF6227AC6F1D4565111D9C06FEF65F22838B2F556A4A
                64EAD2F7D97EA52BE8031D3D79A65F8929B575466C9395D8FAB7A5DFE8280CD9
                8B78570A04F6D311E93409F19E5390EC3B03E5096BD09AB713E29A2390375082
                2467293B8E41272248341228850442B20D5AC91E2A817BA1E920B5506A24E91A
                29357610C846721FA3560A207514460A768193B2014D31E42ED73948719C8B78
                BBD988B19B87048F15C80DDF8DDAEC4BE8A87C0019CF0750C703BA5468355950
                A973A1D6144126CBA301BF1072793E24921C340A4B51C72F028F530401BF147C
                6E3538ED15E076E4432ACC424BAA1582EEEF84CDF9ADA84C7A796387C1C5972A
                4DC5BB6A6136B8D4AFEA0ADD9197741F49C19710E6751C212EFB69A7ED40A2CB
                3664FA6E47C9D35D68CEDC0B49E551721539894BA991738920305B12972E0B28
                8808CF522F3B4647FB8F2C3C95680B8511EA534C291410283E81A2EBD17E1CDA
                DA7DE0676F4055E442E4074C43A6FB3824DA8D4682ED68A43A4E4655F81AB425
                923BCBCED3EDEF91ABECA96F79525AF50334E4346D145D26A7E9D3A052A643AB
                2B600132F0349A1216A44894850641090B90CF2D86B0B38C5447206B49C59089
                B2212E7243BCD351B81AEF4151B4B789C17DF50B6470F1B925A70428A5342827
                67A9F206429D3D0CD284C5EA36DF2BAD2577732B52CF2025782BE2BC9723CC65
                0E9EBACC40BCF71CE4847E8BAAA47568C9D90C7EF3760A11BBA116905BC4CC6B
                9354F6987E45B15ECBA5FE24D947656A0F396E3795AAFDEC4CC6447A99E03834
                B2B30496299504ABE912B4F5E721283D82AAC44D480D5888284AA08176D310EA
                40973D96202D682B4A128FA329D714A20A2FE85A42296044907B23016502014B
                835E930A8D8260A9D2A05665D19F5908A924857A660654E25482496B9ADC675B
                9242920AB130131C4101B8C242483A0B20E6E743C42D8090435B5E2EA4BC3488
                CB3C5980CE57D621CBFB66B38E47F3A2A17DFA336570F1B9C40CAC92C21ECAE6
                2434E4782233DC14717E1711E97E14C18E3B11EABA1931DE9B901DF9234AE28D
                D0904B3BBD8E7A14F73A39E42A6D2FB33D4B2DA26041D0F412729D802EF3F7B1
                D2F3091825400D97866A02A817EF818AB71B2A21C57CC949DA4187D158BD0D4D
                E934E3452D409ACF02C438112CDB0908B79F8424DF7928885C8596822390D6D2
                01CFB5A08382DC25F5A08382FA9790CAA288A0A993487FDFFE1DA0969CA65693
                DB3439502A322097A5D19F5C48C072A02698506553F9CE20A7A6B300859DE968
                23508C3A3BB2593100A59DC51070A82776D26D9B4391E9731EAED73620C6F62C
                248DF97DFEBF7DFA0B6470F1B924489DD2967B1B095E0B11E7311B497E0BA8D9
                2F4655EA3AB4176F87B06E2F7414CD2122499897A5C85D7C725927B98B59A3C8
                AEA5994A2BDF019D6227CD61CC7567A0EFA032D946E211E44672583BDDAFF147
                282A374256BE1E35F1DF223F702E92C8CD898EF310E1300B311EAB9019780015
                2997C0AFBA070DDF9976309541A52774322A83FA5882114925301C7A5DF4B3CB
                F22C82950F8D9C52BD2689D692A0902542A14E811E79D0A100725526949A6CA8
                B4044E4BFD4FC3FC4CC3BA32051A7532F4CA647A8C343A0033C16F4B82849F03
                21038F9343E032096406DA3BE8BACE3C883949480CBE05873BDBE0FBF820AAEB
                29691BDAAF3F5306179F475529B6FEC1D66B5014B581CA11F51CB129E926C1B9
                46C0AED0967A8AF024B98A99AB088290B64C7FA241991597DC4600D5D26DAC54
                022A95021AA8DB2E405C7104BC821FD19CFC034AC36721CB6F0C621CFB22D6A9
                1F6D87A130783E5DB715928293D03619D3EFB6236705D263FAD241E2425B7772
                8937F52FFA59170BB53C8CCA20B90E89B4E39FB282AE100A2939434B10D4892C
                40E832A1D16740A14A874C99F1133C853A0B4A75C633885A2AAD0450A7A5720A
                5A17C65155486301AAA5D4FF08A05C508886EA68C884F9E0F272C0E1520F2480
                6911E670BD670467F39D282ACB18F7CFFBF397CAE0E2F3A8FEE9156994F5542A
                515BC839A7D857383454D6E4CCAB18D243D49FF6525C37228751E99318D1EC45
                2EA29FE53477298514EB2507D8611AED04AFEA7B34272D4565F84AE47AAF46BC
                C30AC439AC42246DA35D96223B621BEAF24E41D87C17B20E1A9285415452139F
                1DFDEA18724B3CF5AC120A16C5D0A2829E5E0D54B4E508A9FFC83B205772C955
                1C68B5A5506823691B0D9D269ED53F5CC9B854A38E243851D06B99D0426555C7
                A4CFF8678FA18A845E4D814647FD52FB146A451094220A3A627F3A00C2A16BF6
                A583CE19F9B166487C7209EE0FB7A132F321E4147084DC14288489284E7D8460
                DB5DB0335E86ECFCA7DBFE759FFE12195C7C1E55069F438AEB7C48EA0E9003CE
                40C339C602D489C9698AA37434EE61A553EC6501B2F084BB20E3EF825A4C6BA2
                7DE86CDD8A34AF7E48F7EE8F04C7E148719E863C9F35A88E3A004991090DE30F
                C9CD3477C91D49B45593B3B4E4244D0C3D06F5A5BF03D4EAE358781209254239
                41535180A078CF006CE7D4A0AC221B427135B8CC8E248020E00C3CE893A8C785
                B100F5BA1828C8A90A59C43380048E81C9FCCC3C0634547A954FA15531C9945C
                AC0C8694EF85DAAC1BC80E3D8230BB9D70325E03BBDB1BE0F97017C2DC8FA0A1
                C08E424C2A786D099075C6A322CB16E18E7B6071762E1252FCA94419DEB73F47
                06179F47B5FEDB90653F138DF9D4C3B867D957FAD977B7A527A01111000A1F0A
                E10E2A2F346C0BB64123A63E27D80E0DF34A3FC57D61ED5AE4464D42B4D7B774
                A41E85A8E116254D2A856A9ABB344F68E7D2514D3B4ACE943F452C248A644868
                0653A112524D3584B25A4894CDD0489BA19773A9876A684775A2A0301B615121
                700BF48093AF3B6C5DA370FBBE3762D2F221031F2224A155E20F299E42820888
                118E4E7D30C4FA20A8E9321869E8205191B394F43CA4D44BE5E4342995E4266B
                74649C4381DF56443DFA16FEB7A6C1FDDE0CD8DF9C8038E78DA88CBE80F2E41B
                E828B1A252EE0D55B31324ADF43824352F0A8D0434C5790B6C4E8D43E6539BE0
                7FDDA7BF4406179F47FC98C3C87799879AACCDD4732E53722417F28E5309A5BE
                46719F29935AD96E8AFD5B6918DECC4254F1685EE36EA53F6E0FDA4B9721D263
                205A8BA87F8AAC091CF52E39850FA91B39D483FA5600B923043A7286464FCED1
                A443A4CC86924A23575C84EA864C1457A42025D61F61FE2EF0B4F780AB833B7C
                08DAD3D870E454E4A181D78A163E9092D30C332B27E456A6824BEE15EA22A021
                17F254812C44214221D43E81581D0019CD7F2A992F95780227F0A0E777038561
                FB1161BB02FE6673E1737B1A42EECE41BAEB5AD43CDD8FCE0A4AB89CC7D4D3DD
                E8000E85A6CDFB995A5DA0687460E1A9787114ACA2C1AD744796E72E389E9F8C
                B430AB0843FBF5E7CAE0E2F34816771AF90E13509E3093FED083D0736866E3FE
                081D877A22954BF0B642CFA5CBCCB69579457F17A5495AAFDB0D341C829486EB
                74877104928E564908952C3AEAF574A4C38B5CE60639BCC93151E890C7935BAA
                C151362031270D5EA1A178E44CCEF2F0834750042252B290985782E206315AC4
                F414E8D63CF2150F9DF47F11445A3A5E04C08D1BF7E0E2701F123105182D5312
                A994D241023E95673A602026002D5634195D456DCC01243AAD80EFED29F0BE3D
                19DEE6D3A8F42DA3FEB60FAD952614481E517B70A4144BCF514D49975C2BE178
                8153E7011E371832693484ED5E741084A0BD359E86F93470A98CB6D48620CD63
                0F6CCF4DC753DFDFD881EAE40BC8B31F8FE298A9FF05907929AB7D13B41D9BA1
                6ADDC00264A46DDE0474FC4810296932006BF64190B61AA97663A994D20E6400
                CA7DA0537AD0CEF08042E702A9DE932046A35393822A4A70A149BE78EC6A8FC8
                D454D4B4F320D4D0C3AA490448A87B26E6329FEEC5275FF121A0FF3A21D11397
                363D1E3F768195A509A54D0A3F0450CAF32157B843586282EAE8C3149A56C0FB
                D654B85E1DCB826300968519819F7B817A31CD9062AA0E12A76752B8D201E041
                7DD0834253007842EACD7440C83841E07404A2931F4ABFDF8F7ABC07B81D49EC
                A0DFD112074ED353647AEF87DDF91908F57C14DB54FFE227081B5C7C1E35173B
                B924F96E414DE43C1A52C9519DC728A4306F7CFE0875F30FD42F563F53C7F750
                B72E8796B78E82CE46BA2DA96933D4D5EB296D0E033F9B7927C08666AC206874
                21D487ACA9BCD9907B22C1D51622AFA51C1199A5F0F1CE40725223043202A551
                D1F56A92827009480454A682922072650A08541A28143288C542EA6F522A9B22
                D87879E382C92DC89B2984C8C2A967FA21D06B2D9CEE8C84ABF9688438CD4561
                AC11B81557A16A7B40E38F3DF41202C58C232A2F68156ED493C9557A0F9A0F9D
                A1D2BBD2F374874643A55FE34AADE23E81B5A560739F92F663D4E4DCA3033A0C
                9C562FF0DB9F50888980B43910D97EFBE07C75163CECCFA3B5B1EC7D43FBF6E7
                C8E0E2F38853E961911AB01DA5C1D3C955144A388720E61D81949CA86DA5BED8
                F8FD33B5AD84AA6519D49C3550B5AF87BE611D95D01F588049CE23D0104FB7E5
                59D38C154CB35620E4BA872C4081361C55BC4404674423A3AA0D76B651781240
                09935C27A727C0D348D14AE1454C4553A06CA152A6A704AA8648A303472AA744
                4AE553244093A48310CBE01DF114E78C4DD054403B9CC610C8035192730E8D39
                87206F6066D747D47F294449989992DC2673A544EDC24A2B73838AD6D42A7772
                9C27D43A7716A0486E0BB5DA99C60B17C8F91668ACB88050FF5570B35B00A77B
                DFA328F11644FC2794444320E18541DC1880BC2707E1663C178E8F4EA0B234EB
                85CF2B35B8F83C92B4476D2C8C3E8A42EF8940D52E48DAF740D2B10BAA0E1A6F
                DA1880ABC869DF53FF5B0165F35228986DEB6AE86A68BD761DB455AB91ED3D02
                E551E460EE4D8AFE5E503349501F48004351CB4945545602A24BF290DF2A8287
                6F22DCBCE3D121A1FD4F4F4044E268B56857AB497A76AD9E7A5D3D39B45141E3
                25DD8E4BA49B08788312700A4BC349136B54E632AE0AA5B181D22EF559689972
                E8C242D091B3341A729A8E4AA3C693E6420FE855D41F19178AA9D40B49222AA1
                3C1A69A85FA2EC166A620EB1E5D7F7C638785F1F0B7FCB1948F4D980C288F390
                D4B842C0F186881B40037E103A9BFC50187E0C9EA68B607DFF044A8BD35F7898
                37B8F85C52668D6AC933EEC8761D03946FA7FABF0FA2361A1DDAA8EFB552CFAB
                5BCE42D4362F6301CA982D01D456AF6401EAAAD7A024783CB2FCE900109A5141
                0CA0A41940E30225380258CF4B475C5E0A8A284906A615E2916D106EDC71465D
                870C5C82D2A652A14E2462B7CDE4BC660256CD05D2AA05882E688657483AC212
                28DC70552C44BFC4221CBC6481A470531A0F42201639B0B034323B0A24E4249A
                335988048F5D27780C449D92FA9B9C2E731F4359670E4ED65994066C43D28305
                F0BB381A81F7E620C2EA5B5485ED8420F334A495C69054DF81A2865CDCF1041D
                CDAE549DFC21E68640D81280A288E3148A16E3A1F9119495BCF8AB3106179F57
                DC6A9BE0549BD150E5AFA7D8BC0B8AE6F59036ACA21EB812DA9A2574E893EB9A
                1643DDB2048A86EFA8B47E0F5DED320248BDB166251AA2C723C9653835355382
                E605B1341422690CD48A56A464B6C3D63B050F02E370CECA1DE76F38E2BA990F
                9AC86A3C0A2B3564414615AD4068A20A369E35B86B9F874BD6A1B8E610044BB7
                50A496B5A1540A1450DA718ACEC3595317E4C4938BB469107203E94FA0A15D65
                4F230CB94A6E47A1E6017482877499D62434DA74DC435DDA7E94C7EF42B2CF12
                3C793409CE3787C3C36C14520396A236CD08827A53489AA9DF29E9F7D281A053
                DA4242BF47C2F5A610E386569E3B3842BADC49A5B4DD0F2511C71060B1048F6E
                1E44515EEA947FDDA73F5706179F57E22667BBE4C75F439CB19220ED84B26503
                C4752B5880BADAA5E4C095340B7DCB0294D72F86AE8D1C5843EB7F07D89E348D
                05A8ACBF0091C2010A552414EA24B43517C1DE250196CE317088CA805B421E42
                62CB909AC7436E951E3139023887E5E1A65D182E9BA5E08A792A6CBD6AE1F394
                83A8122112C885F90D22D411EC62B10E552AC033A91487AE5821C4E306EDEC24
                28C434FF510AD529A9E7113CBDD486E03D82A4E50EEAF34E2225702D82AC67C1
                E7FE44F85A4E4298DD0C94446F86B88279D7FF369554269992644C3A25782A27
                0A691610F3EF81D76A0619DF97C60D2F70453E68E37B80C3F1FD0960A8D52A16
                604E46FC6243FBF5E7C8E0E2F38ACAC2FEB4C733C14D5C0C7DE306A0750D94B5
                0BA93F2C83AE69052B55C3422AA38B21AF994B0D6939D415F49CAB0862F57710
                664E46B2F31750566D87527F8502823324326F94968610C0A7286A96A344CE47
                335DC3F4BCC2FA0E5CBE1B80B366BE78E41F0DAFF85C241571905727473DDDA0
                9A86F66A859E553DC1CBAB1320B5B113B91C39BC123370C9CC0CE15E3F422B25
                C7E02ECD9E34840BEE805F7214F911ABD8B7A3BCCD86C2DDB81F422C4751E49F
                8FE6AC1D90D41E27B81474F477A977DE85487593C213390F66F4CC3CA022785A
                952D14D24714C2ECC0153F009FEF8296161BEAC5AEA8E7DAA29DEB0E7187274A
                420EE2A9D54AD8DF388EA2D4DF18A0461AB326C366365A63E6435DBB86C0AD86
                BC7A3E0B50DB48B0EA9792BB16B000A555B3A9A45298295D087DC57704713124
                39D3106FFF37A8AA77D0F07E95E63F3B1A279EA0B53519CE1E31286C92A19632
                6799528016990C0575ED482E12A3AA93CA62BB1C35541E89112A3904B749810A
                8E1E992D3CE47144286F57A2A44586C24E35F2794A383E8DC7D99B3711E94B63
                8BC21212E15984064D85B3D930B8990E23A78D44A2FB6C54C76F84BCF4281D8C
                5759B81010648519B9945CA7BA4DBDD114321D890E00A1EE368D2F3690323D54
                610DA5CC0A22A5151AC8A13C9E33AD7BA38D522C039027A0A19F66CF3CFFDD08
                B9BF04B6D78FA2382DE1B705C87CD2B5C4CF08F9DE344AD058A0AB5C005DDD6C
                681AE64051F72D344D04B0967EAE9E0D7D1DA5CDDA79749B45D4B8486533A1CC
                9F841C97AF204CA750A3BB0CA5C6185ABD1D0DBE3170740F4172693D2A354214
                CB38A8E475A2A25DC326CDCA0EBA3BB92DB759452069DB02E4B701598D1456A8
                773E0E2BC6350B66F89722AD0EC8A4F57B9E6904D002693157D8E022159B21C0
                7F163242BE05A7641F95BF4BD00AC9657282A632834675073A58524937A7E765
                49238339C48AFB54212C2095DFA703CD0A42D17D28C5D42B690E64FA9F9667F9
                6C16E4DE25C7BA825F6789B6160B083B6DA82FBA40C575A5E0B617417717E0D1
                958328CF49FB6D7B2073A25255F07E14F8CC80A694190F28B054CF80AA6E160B
                5052359F1C49A02AE87A0622B95053BE00FA722AB304505D3805190E43D01ABB
                145AED2548E49769A7D943228A85875F14128A6A50AAE0215FD48AB20E2E81D3
                A2946015D413AC06398D171AC4144BE110568ABB1E6938651E80CBF6D1B8E614
                47837B25528B81D85220B91AB8E5148F93D7CD9011770D3AEAB7A0C7118BAE53
                1FBBF94C22EA8D32DAAAA9B42A4DA19099404E5B39C1E4910BFF0190D7799B7A
                F54370783721935BD1EC6B0939EF01E4D4F7403D940128EEA01ED866CB02E473
                E936423B4AA28E50725C501AB20F61968BF1F8DA619466BDF899DA06177F8E2A
                93CC8BB3DC564092457DAD7E09D49593A0A99BC6BA4F5C398F804E83BE8C0EB4
                8A67D296CE25805466ABA642533611F9D633D01648E557654EAEA01DAA71A63F
                380E5E7E99084FAB4729CD7279023D4A9A095C2D01C905821281DB8E39386F11
                87C38F6271F4713CEE0657C036BE11D10D5A44D4289150AC651553AD421C3548
                63577F1CBC790ED9D9572053B8A253E200A9C61E3A2A8D8CF46A721DC113494D
                C12377F29496E8D4DBA24D638D56BD230A387750ADB2430ECF1CD95C33144AAC
                50207E8464FE75E4286EA3A8F33AAA3B4D5023BC8126DA2A4454497856E0734C
                21165840D0660955BB158A9FEC40E8BDB9B0BE7E04C539FF010085156E56A98E
                DF819F42AEAA5EC40254564F86BA7109A4D50BA0A9A1F25A3EF5BF01D495CD83
                BE720AD4A51350E23017CDFEE45EA51994F29BD028EC0964023C7D33F024BE02
                A9AD3264D1E0975BA385A35F054E99A4E29A65210BD029AC0981657A4410D868
                2A95310D341810BCC83A3552CAC1028CAA5420A8A819D75DFCB0FFC619545652
                10811F045247EA5736ACDBF40A2A972A53A8E83928D4F769A4B143BBF42E05A4
                C330739E896BB6D370D97A0A2ED84CC7291A252E3BCEC669EBE9ACCEB84CC631
                FBD1B8ED3E1561E9DB50DC760125F567C06DB90799C0062D8DD729ED52BF6C7F
                0075C763E4F96C66DF86B2BD710C65F9BFE520FF0FF1720746DA6D0027612995
                D1F9D0D54C85B27C024415B3C98173A8E74DA02CFF0D899E2B01539550E92C9D
                0535DD4651F20D4ADD07A2D6978679F951EA7F57A1549842AA8CA1129A8427A9
                55C8A29E97DAA1A372A947707A0B02D34548AC0012AB7548A0521A52452E2377
                4654EA10570304E689105BAE410E95CF8C7C3D120A79708F8AC72D076B9C30DD
                8CE6FA8BE4726BC8D536ACA03626075EA100728D4A2A89204A61859CC6F3B8E3
                39078F13D7E372E0B73815F62DF604CCC296802958E4341CE32D3EC3D05B7FC1
                1757BAE2E3735DF0D5C52E58F9E073B8546E43BAE01C5AA5F751DF7203F56D17
                21E09BD0207F0FCAF67BC8F6DB00CF9BE3616D7E1AA585BFF120CF4A54D423C6
                7113EAC3E742514849B37E06EBC2CED2192C406DC578E80BC7004504B164FC4F
                00351513A12A1B8F2A9F61A8F21A072DF3695918432EBB0D912C12CE9EB108C9
                AC43529B0251B5626437AA115F2266E1C5515F8B2C9621BC5486A00A35822B35
                082D5323B25C8BD0221902B33A1118D10A07F7623CF448C029530B9C31BF85AB
                D6FBC069BD0E99E82E04124B700577A19551DF2580D03E4B980C40AED21C59F5
                676113BE12D9325304369CC583A21F615AB813177337E03BD79158E03214DF10
                B0890EBDF1C5D52EE87FA20B665D7B1BF6253F20B2E1006AB8B7C0A390D3D669
                8C4EDE0D08DACD20A8336101BA198F85832539B5E03FC181A4AC2797D5455E53
                21CD9B055DD514560C3C4915CD7E55E4C02202C84024273200598895E359D587
                F44699575FA865BBA0D1DF84547117CD9C485851E808CEE2B3EE0AAF257755CA
                58312531BC44810802174F2533A1568B308AA001299570098F875DE01358383C
                C07D331398DE3A0963F36DB87677096C3C36232C7113858C235436694C90DE82
                5E42A1457A8CC207F34197A39028CE81ABBF8C2ADD358266843391542293E763
                DD9311D81031068B7C0760A6670F8CB5791743EE75C188875D31D8BC1B86DE7B
                0FE3AEBF81D997DEC4E3CC5548AC3D88DAC6ABE0B6DEA2FE670C11E70A446D26
                682DBD8064DF55B0B93202B6CEC628ABCC1B68687FFE1C195CFCB96A4A7F1C91
                E3321E92DC995416C791BB2651FF9BC796515453796400E68FA214321AF2C269
                AC146563A9D47E8386D03E2874EDC90254A8AF53EAB3404D53301E3AC4222C57
                88C07205954935C20BF988AF92E369B90C11A54A04E48BE09DC5C33DFF6CDC74
                89C4759B27B860618313B76EE2B4F139DCBA7E11F63626884A7E84920607B48A
                BDC1915B90D34E52E2DC07B580021393381980E223D0C94EB09F8F17E1061A70
                0B01753B7138701CF6854DC49E84E9D8163709ABC246B200C7DBBF876FECDE61
                210EB8F3360B70D4A557588056192B915C7F18D5F5972115D0D841A146CCBD0A
                19F70E9A8ACE22D17B051E5D180A371F7334B5FE86EF07FEB3541D6146590F27
                4092341BF2AA391097CD80A47C3A8425145CCA074157D807BA9281D0140E2788
                336806A0A45A3298C2CC50D4047E8E62F75ED0F3B742A1380F8EC20339CD11B8
                E3E880A82282466531B25487C05C3982F395708BAF824D70386EBB5CC66DEBB3
                3873633FAE991CC66DD34DB0B55A8B88A08D28CDDD0D5EEB2968E52650A92818
                696ED32C670299F23A3DC645A8E567A1979FA6D2798C12E94128D547A0141C82
                5A781C7AD905A8A41711DEB2153B4306E060E9746C49FB1AAB837A615D685F2C
                08FA02239CDEC24087D7D0DFEE55F47AD015431EBC8BE1265D31EDDC2BF0495B
                8D9C82ED34F79DA7D1E10C38FC53946C2FD2107F1D8D391710E9B81DB70FCC43
                90FF4DB475BCF8A7760D2EFE5CA939E146A9F7C6801B3519D28A59E82C9A0251
                E954DA4EA2B2D90FDA82DED0970E82B6E82B72E274E83226405D4C3F970E4153
                786F947BD36DB89B21169F42ABC405B1255E78E4E34D25B4053E496DB07B5A8F
                5B1E7934E3A5E2A899178EDE3627EDC605D30378E47A0B4F42EC909D4B2E6B74
                865A6A4F2389250B4F2D3586547A0D32D9759A31AFD28E2457305F56203B438E
                7BF63979B1741F0B512B3906BDF434FB614F49E76984366DC6EE882130CA1D8F
                9DD9DF607BDC7016E04497EEE8F7B00B8638BF89111EDDD0F3FE2B18F6A83B46
                DC7A1D73AFBE0597B8252C405EEB094AA11721945C005F781672BE314A138E20
                CA6907CC8F2C4254B84506FF257C4589C1C59F2D59CEB074BBA5A80D654686EF
                A02480DA8AE9505299D41590F3F2FA5380194697BF86BE80D267E628680A0691
                1B87A09D525DA115816DD847E9D08452A81D02830FE3BED52138BB5F85E9FDC3
                B875F7002EDFDC86AB77B6C2E4DE7AB87A6E425ACA56D4D51E814842AE52DF60
                25975D845C7E060AC971C824FBA0911218E6DC53E65447C171E87827A0EB644A
                E8192A9DA79E9DCEAF3CC09EB3AA15EC077306390391F94283A78D9BB0277400
                F6E47C03A3CCD1304A1E814D510330DDF7238C727B0FC33CDFC3178FBBA09FFD
                EB1860F326FADF7A15B36E75C3E3E42528AC3B8A96D6C390D3EF92498F43CC3F
                085DDB1914846F47D8A32DB039F90312225ECED775195CFCD952E6F7A90DDE89
                1CD71150E43369743214C593202E18F113407DF150DA8EF8EF00F307831B341D
                A5B6A3A0AADC0915E724FDC1D628AB7884F8143BB87BDFC00DD3BDB8F7E8385C
                7DAF2329DB09B56D4F286CF8D1CC680189D8187CC165D65D8C64D20B2C4095EC
                24548A4334DF1DA1527998C05068F96780422A9FE213D08AE83AD5C167272033
                0045C7D86FA9D0C8CEB3008D82FAE270F114ECCE1E8BDDA95F5390E98B096EDD
                F0B56B778CF4FD10FD1CDF6001F6BCDF05BDAE77C1946B6FE041FC2214D08155
                53BB1B12D10908A9343300E5F547911FB60D1E26CBE171753792A35ECEF7CB18
                5CFC25E2943C8C8D7C300592684A9E7934CCE70D81346B00F44504317728F4B9
                23A0C91A0635FD2CCF1B0AE410C0EC81E8783215258ED41B1BB740C7DD098598
                4285EA1AD4A25BE0369E4555DE6E70EB4ED3CF26D0496F4325B84403F17180BF
                9B5CB497F423CD90BBA1214032EE29483BCF412EBC40BF870E70094111D2F502
                1287390B9C8075D03AEF18FBF16AE6E462B5700F3422E605EE63D0088F40C63F
                4CE1E324C2EAD7E340D8409C2A9B8EDDE95F637BE250AC0EED89B1EE6FB3A573
                98CF7BE8EBFC3A06B9BC89C19446473EE88EE977BAE141FA52A4D41F4455CB1E
                0A4C1720E519517FDF0B55D56EE4FBAD83FDF945F0BE7D12B949052FE5AB2B0D
                2EFE22099E9C8CB79985B627943A0BA742953F148ADCC12C406DCE10E872BE82
                2A630854855FFD17C0CCFE6C09CDB7A1CB2DDB29DED30E647622F5A0CE960BD4
                97EE102033E8441442288E8B3B2E41C1BF000DE70401A1B1A3652354ED1BA1E6
                6F81927784AE3B43E58F6E23BA4847FD7EC839CC49C7F47B793B09DC01A0EDD9
                779EE938145A847B59A904049F0128A3FBF30E40DEC93C875308AE5983239143
                71BA7C068C5247606BFC60AC09FB1253FC3FC058BF0F31D8F35DF4727815FD1C
                BAA21FA5D161F7DEC6B8AB5D712FF95B4496EC4071ED76F66F5108F690F3F740
                5ABA0309F68B607B7601FCCDCFA2B6A8E18547084606177F89F4AAA21EC91E5B
                51694B037BE6446833BE842EB317B479C3A0CA1E4C6E1B0A6DFA40488BFB4054
                F025DDA60F903608CD615F21C7B717FB8EBD84B39C4ACE6AE87546900B2895D2
                CE673E62A6E5EC61BF3D42DC6C0425673FFD4C303AC9511C72216F2D396C03C0
                3D0075DB0182708895B4733DEDC0B574307C0FA5682D0B8BF95C6127DD9FC3DD
                8736D10FACF88223F4F351B4F18FA2B9E328B8927368159D866BE9521C89F90A
                672A66E200D30753876245E0C718E5D115233CDFC470EFB730FAC90718E5F016
                4659BC8651E66F12C057702BFD5B3CA9D88EB4861D68EA380801F71044ED0751
                92B1015E8FE7E0FAC59970743E8FA2B6AAFF2C8034177C5214760885965F419F
                46B3607A4FE8B37AB3F0588039C37E0228C8FB02C8E80DA40E44955F7FE4FAF5
                86B6750525C075D4D7D681CF5B8DCEB6755077EE2287ED6001EA8547A1E8D807
                6DE7E167000982AE793B7B3F705643D74E8E6AD9076907398FF94E17213953F6
                03A4FC555008D7B04E10B7EF433B1D048D4D3B50D3B692557DE34ED437EC467D
                EB3ED4351F4013F7184AE9E74719B3703CFE6BD681FBB2C69003FB6389DF0798
                F4A41B26857C84615E6F6280CB6B186EDD15E31EBD8DB116EF60A2F16BB8123F
                1BEE79EB9050B589FD9D6D4D3F82D7B40709A1F3E1F660062E9E9E0C2F1F6314
                B656BE94CFC91B5CFCA5E2D6F998143A2E44B31FF5B45C3AC032FA50EFA31093
                D58F663F1A15D27A4155F43924397F05D20962527F54F9F443AE775F2AA1EBA9
                B76D8084BB96CAD80668F91BA1EDD80475F3064A709BA8146EA552B91572DE3A
                48396BA0EC584B20D793FB5641CBA376C2DD466E24C7B6FD4040E9FEC265E073
                E6A3A3732578146462327E4050E26EF8C4EE8743D056D807AD837BF47A38462E
                866BEC3238242CC7C3880578F474016C621663AFEF501C49998853E53371A860
                1C7E4C1F82A501EF6352E03B18EBF31ABEF67A15A3BCBB62108D11631EBC8391
                966F6182E5BB986BFB290E464E8471E23CDC8A9C0587F8A530F1988EE35663B1
                C9F82BCC3F3714879EECC2AD02538159916D736061F8954A51C32786F6E7F3C8
                E0E22F959C1366946D3D1B759ED4D3FE0E4D9DD917CA749A0309A63AA5271405
                7FFB2F8029035149F00AFC28EC3493E308A098E04809929A4B40DB36B27D8E01
                A8E56C613F5BF1AF0019786ACE52EA715B58A99B69AD6D2DB977093AB90B2094
                ADC7D3A469088C598ED4D2F388CC3987B8C2CB882D3C8D90CC1F1151B8034F32
                37C23575350BD1317139FCF236E15EE132DC6B5E8BE325D370206F2C8CD20663
                1995CC29C1DD30CEEF0D16DE680239ECD1EBF8E611B9D2E1237CEBF1250B70DE
                BDF731E7D26B9877A20B561D7F0DF37775C1C27D6F61BAD17B18B2A91B0619F5
                C487EB3EC6679B0661C5D1B508480DFBC59F9937B8F84BA55655BECEF4C12297
                E9D0268D853E7D300B4D9DFA3995CFCFA14AFD089ACC8FA14AFF88AEEB091D01
                ACF57C1F0DFED40FEB57B1A764685A565259642EAFA4D9701950B78695BE7925
                34AD4BA16A9BCF4ADBB210BA96E590D27DA4045FD742CE6BD9047DC3F74033DD
                9FBB8A86E715E8E0FD00AF9069C8ACBF80164490B2D18E3C342283DD56C011F9
                B0462A1E200D0F11A3304688E0341ED01871A664213B46ECCD1D835DE983B02C
                E8034C0B7D17E3FD5FC358EF2EF8C69B003ABF833E8FBAA2EFC35730DAEDAF18
                EDFA378C71FB0263ED7A62B2755F8CBFF939869DFB183D4F7D804F4F7D8AAE47
                BAE1D5437F41F7139F62F89D31E8316F301E87B92619DA9FCF23838B2FA2E6B4
                CBEA5CFB4950C48E8426650034A95F12BC2F5880EAB4BFB2F094691FD2759F43
                4325B4D2B51BDA42C8B1B5D4CB9A98531299B3DA98CB5416EB96003504A49AD6
                EB97B267B8C99BE740D13217EAA6F9EC7B8E62BA8FA4891CD7B81EBA06121D08
                FAC615E4C265907297A1910047247D87A0F45D68D486A250F014D91DC14869F4
                4546EB134473AF22A4ED029CEA0EC1B9FE301C2A7E8475C9669857AF65011E29
                998A7DE4404300C77A75C557F4FC9941BE2725D1DEF75FC51766AFA2B7C5DBE8
                65F216BE3CFF3A3EDB4BC3FEB1EEF870FF1BE87EA03BBAEC7F135D0FBF8FCFAF
                F6C767A77B63DEE195F0CD08B730B42F9F4706175F44126ECC9A309BC5E8089C
                034D22059A144A9C19E4C0AC4FA0CEA0D299F41190D803F294BE9026F643B9F3
                AB104751A0A9FA965CF81DB44D0BA1695C4073E142F61C1AD412C01A8252B70C
                7AE6D4C4A605E446BAAE9ED6EB086CCB12A89ABF838A52ACBA7631DD6611419C
                0765FD2CC81A6641DEF11D38EDDFC3376838A2B296834F6E2B935BA144E6882C
                890D02DACEE089F0126C3947614333A27DCB7EDC2DDF0093EA95385BBE10474B
                0960FE686C4F1B88C54FFE8249A1DD3036E00D82F72ABEF17A03BDEDBA60A0F3
                6B18ECF41606D876C30777BBE2C3BBEFA2BBC9DBE876E175BC7F8A06FDEB9FE0
                F5D3EFA0CB9EAEE87AFC23FCE5D2400C3C3F1C5F1F1A833BFEF7915C91F98B67
                42838B2F244DCEB038D7EF51ED3A9E05A84BEE49FDEE33161E533E91F821406B
                B2E43E10C7F741A96317281328F0541094BAC52C3C65DD5C2A9F049101C89C8A
                4F3B93010882F4AF0059782425C16500A291D102023A1BCAE6B990B42E8280BF
                1EC595AB60EB3B1A194D27500F27166032CF12A1FC4B08955D8793E014AC6946
                64009A97ADC74D7ADC4B354BC88153B027F76B6C4DE98F45FEDD3131E45D7CF3
                E44D2A9F943EBDDFC420D76700FBD952197DFC36DE377F15EF9BBD8DF76EBE83
                8FAE77C3A717BBE1BD13E4BA936FA1CB9177F1F18D01E87EA13F7A9D1880FD7E
                87105A167D32BFA5F4177F46C2E0E28BAA30F366738ED514489F8E872E91C24A
                DADF204BFB0B9499042FE66F40C2000812FB801BDD1F790EDDA9A44E83B6620D
                54B514501A974158C7B890FA1C81D4557C077DE512A8EB1691E651A99C457066
                4257B59295A67616F5BDB9745F2AAB741BA6FF312554CF9C58DCFC3DB4B58BC0
                2F9A06F037A0A17625ECDC86A1B0FD341AF4AE48E299E1A9E03CBC3B4FC291C6
                146B9A11ADDB8C6056B50637EA57E074D96C1C2B99847D3934C8FF1DE0782AA1
                A303686CA03990D1306702482EEC6FD105832DDF418FBBDDD0C3FCAFF8C8B83B
                FE72E10DF4BDFE3EBA1FEA82B78E76C18767FF8A5E1707A3E78121D865BA0509
                9531C86BC97DA10FB8185C7C51C93BFDAE64584E00F7C9889F004A53DF8322E3
                0320FA5316202FEE4BB486F742BEE37B545E674153BE1ACA9AB590342C85A076
                01D40DF3080E95E1B26FA12D5F4C8016B29094F533A0A89B0E4DC572682B5740
                553DE32780CC6DB4F5CBA0AC5E0C2573E61BE35AEA932A02CBAB5C40A9740B92
                B357E0AEFB780A316E2850DB22567A054E2D0760CB3B8887ADBB6151B719A695
                AB71B371158E164CC5F1D2C9FF0DE0B8907730CA9F86784F4AA21EAF63907D17
                1622330F0E7D488EBBF3163E37FB8805F81EF5C0BF9E7C95D5FB67DF449F5BFD
                D0F7CA304CBE331F7EC51E16A975898B0BDAF25F681E34B8F8C2D2A48F8B775B
                8D4CC7D1046F0695D261D024F425F5823AA937E4F17F833EF9737003DF4486DB
                1B046822D4A5E3C96993A9644E23D74DA29EC89C0445DBF2C9D0979183AA6641
                5742B02AC88145B42D9FCF4A533681BD3F2A6690E60065547E4B694B03382A99
                33DF26405337154A2AA92D9573C06BDF82D0A8E908A499AF59751709D2DBF06D
                3B0B7FD10ED8523FBDDB3007771A6753095D89F325DFE178DE42ECCB9C856D69
                4330E3C91B981AFA3ABEF227C7F9BF828101EFB02FA70D71ED8EBE56AFE10BD3
                2EF8D2F455F4B8F92A3EB9F10A3EBCF21AE90D7C74F9037C79A52FFA1D1C84C9
                C766C229D10385B5FF8183FC4F2280B549C790E1300AC2885150270C256003A0
                4DEC0D55622FC8E23E852EE933345392CBF67C9B05A02A19C76E1988CC4E67E0
                E9193004908553CEBC55351BDAB219D095CDF9E9EC36E63EECFD08B2B698C697
                42BABE68264124E80410D553212E1D4BC3FD623457CC4675F932D436FF0837DF
                2908CFDE8E0CED7D3CE15E8473CB5A16A00D6F298CE93EE64DEB702C7B0E8EE5
                2EC0DE8C992CC09974C04D0B7BE3278003FCDF467FD737F1E5E357D97724063F
                7E173DEFBC825EA604ED5A177C7CFD4D7C7AE35D7C70F12F1862FA157AEFEB8F
                5B497791CD2F9C52D250F31B7F53D3FF21759BDF9520CB69A87C3209F238A694
                7E094DFC17EC561943A186024C1545F07AAF1E007332542E012A9A0530E7CB94
                50892407A9CBA643C99C7E5833994A2239B48E40577C4DFDED1BA8CB475019A5
                518552A2B68C7A62F9AC675BBAAF8ECA9EBE741C41A50A503D06CAA2A1E8CCA5
                03BE7539DA8BBF83A86937AA72B6C0C2EC2B84D65E4126CD8236653BE12F3C06
                CBFA8DB859B18A5CF803AE54AFC6D1BC19D89B35063B32FA601E39706610F53E
                4AA023DCDFC770D7F730D4ED3D7C4AFD6FB8EB07145ABA60A4C3C7F8E472177C
                61DC0D1F9DA4B279E5338CBC3E1C838F0DC1E9E0D308AC7C82FCD6BC97F60F86
                185C7C29D2242C4E745D82129F6F208A1CC24263A44FEA05552C0DF571BD51EE
                F43638C103081C953C066001E39EE950154F63E131525410BCAA8950948D83A6
                7A1C0B50CB40291DFE4C45939E012F25E00CBC7F02A82DF99A5C48FBAA6912DD
                67223AC9A1F5D973911E3903D1FE33E1684BFDEDC144EA839648D4DFC1E32AEA
                7F15DFE346190598BC453855B818C7F267624FE668ECCCEC8BF9E4C0E90471B4
                471716E050E76EE86D43C3BCFB5FF03941EC6DF1063EBBD9057DEEBC8B8FCE77
                25D7F5C408F381E847F3DE1A97B5F06AF2B28AEF88DB582BAD7969FF5888C1C5
                97A58E72479738C779A80F1E075D6C3F682369A488A15013DB13D2A81128B2EE
                0E51543F7220F5BA1C2A7305B4D30BC85D45E3D8734695048139F94956321ACA
                B2AF09EC082AAB23A12B2437155259CE1B448E7D266D2139327F2C540593A12D
                A2445A349F2E7F0741FA5CD487CF44CDD36F91E4380BF12E2BE1717B11EE9E9C
                0E8B4B2BB0FEF834EC325B81E8763BF8B7DC8275CD51DC2CFB01B7EA37E04CE9
                7C1C2A9A0CA3CC91D89139040B28C4CCF0EE86094E6F62A2CB5F30CABE3B7A51
                78E96BFB367A3EA0DE67FA1A95D0B7F1C9993730FC661FCCBA3B09C30E0CC2F7
                B756C1A7D407B155312FE5DB99FE5906175F9A1471CB63ECE7A0C4937638CD7A
                FAE85ED0477E06500215840D41FEA37728D00C06F268DCC81C056DEE18A87209
                56C158480A4641563406D2E25110178E84A2742464F943A9F77D45B721680543
                A0CD19408E2507B31047415F349EFDBC85326F26841953D11E3F055521A3D833
                05A2AD8622E2C1783C3C3D0437F70F87F3CDE5B0325E0BB7F89BCDE6E16771DE
                6B133228995A96EDC79DCA2D385FB404A78AE7627FFE04EC481B8EED198331DF
                AF1BA679BEC3029CECF6010BB09FFD9BE8F9E835F4B67A1D5F98916EBF85FE26
                7FC568F3411870B427269EFB06CE654E086B083B59222E7E297DEF9F6570F165
                AA28EE8A34D96E163A83A89C3DA5813D827A1EA9DDF7739438758734A32FEB28
                656E7FF6340B755E1F72613F82448935AF374165442E25B7E9738602D9743064
                8E20516924E933863D7BB3386B1244C9F3D11AB31C9541EB91E6B20EE196EBE1
                727505ACCFADC6F57DDFE1C6E175787CF334423D1D3C532323F79717170C2C6F
                AC60CF0CF34E7574B9E0B11361827BB85DB006574B17E12495F67DB953B13965
                0C36A74FC21CBF5E98ECFA11C639BE8349EEAF6314CD7F03ECBBA2CFE337D0FB
                E133F7F533FD00931E8CC0A8734331E9C424D8A53920A53E67714547DD2F7EC7
                E17F93C1C597293DC7EF4ACCC3C9A872E8096D188188A23013F431EA5D3F44BD
                EFDF20CFEA4FC086FE3780BAC2FE3F0154677F095D1EDD26BB3F411C0E6D3AB9
                2D9B0E860C52F618A853064192D40FAD118358A727DB8C44B8F978B85F998047
                C726E1F1E90570BAFA03426CCE21C9EF415245C6D36D82C6FFFF6CB01654BDFE
                20F61CEE671F809FE4344E67CFF809E096D4B1D89A390573FD7BB300C7DABF85
                F12EAFE22BE6A426DB5758F77D7EB70B7A99BD8B21F73FC5B87B4331E0D097B8
                127B05B1EDF1DBE2ABD237FEEBE3BD2C195C7CA95257BECE7CB94D99EBB79087
                D06C173B1AEA90DEA8B07B05BCD0BF429D35009A9CBEEC9BBFFA8C1ED0A5D381
                9A4EC37EFADF9E29854A2EB94E9F350AF2D471047C26DAE366A223690EFB1527
                399E4B91ECB08EFDD4AB87C90A981D5F0C9343AB71EFC27ED89B1A7704BB3BBA
                A4443D356AA8287D2E079CB05B8FFB99FB69B83F86FDF4380773E652FF9B8195
                F4BC6705F6C738CF8F31CAA53B463877C5209B2E18483D70B04D37F4B8FD0AC6
                58F5C518B341ACFB4E059D824F4920725A683E32F0382F4B06175FA6F4A2823E
                201726DF9B8016976150050D842CA0072AED5F65012A33FA419EDE13AAD41E2C
                406412B4B44FA04FFC10BA840F9E01A4FE234F1A0271E26834458C4065E01814
                F98D40B6D73708BC33066E9726E1D18951787892866493CD887034EEC889F432
                ADC9FE791FDFE2A3F2F57244AF31B29F09ABEABDB85CF43DB6C68DC7B6F469D8
                9C390D537D7B61ACFB471866F726C6D2FC3A844A28F32E442F8BAE18F8B01B66
                B88DC4C0CB9F63A1E52C4488238E24F2D2D79409EA5EF8E4DDFF4D06175FBA24
                853DB27D8EA3C86D0D3A2396A02360288AADDF81228A7953F7331AF019606490
                64FA39B5379048C12479380DFF53208A9D8EC69039C8709B836CBFF50876580D
                6F9B2D303E3F07678F2DC2D9A31B71EBDA31D85B99348704B959E517BEF867EE
                32DA6397EF7BB4190E9526B892B303AB02866353CA08CC0EFA1B4638BC89018F
                5F43DF87DDC9819FA087F1AB98E6D40FB3EC4762C8F11E58F57029BCAABC1150
                1CFC8BDFA4FD3932B8F8D2C5A3FA57EF6D127987067BD749A873EB8D068F4FA1
                A15910695436933E8536FEAFD0C593FB927A421FD717B2C8BEE0060E418DF730
                14BA8E45CCE30908B83B15D70F0F86C9E969B879693EBC5D4E23D8C732298FFA
                5A6BFDCBF90EEA7FC8B3C8267887C377B89E6F84ADD113B1267610BE8DEC8DD1
                2EEF62B8E3BBE43C4A9B561FE16B9B4F31FAC1A7F8E65E5F4CBD3912C6E99711
                C58F362A5157F4A99634BDF05769FD5F32B8F86B29C6EB04E29C5723D16A2CDA
                BCBFA1597F32B8E103218D1F0955CA5488E266A13174164ABCE621C36911A2AD
                57C0C578314C4F2CC29523CB71F3C23E58DCB9005F4F37BBF0D0889379F9852F
                ED150D43B20CB62CDE6DBB06171237637BF8302C0DEC8D098ED4FFACDFC6F007
                5FA2FF9D9E986D3B1A336E8FC0A4F35FE34EDC0D44D5C618A557E7CF37F4FB7E
                0D195CFC35A49551F2E3466C8B7759830C87C92C4075FC2408A286B2101BFC06
                A0C8A93F521F0F4494F970785F1986C72747C2E9DA22D819AF87A7D54944073A
                7816E5C4BD9413629F57C64F8F61ABDB2C6C09198CE5C17D31DAFA4D0CB47805
                5F3DEC85E1960330F5E1704CB83A10078376229C137424A139698DA1DFF36BC9
                E0E2AF25B9AEEAF5A7FEA790E6BE196DBE0BD0E4497DCD7E21D2284526D8AC82
                F7ADE5303F3617570E7C07B30B3B6167795DE0432932392E7A635D55E5AF5E8E
                0CA95A55F9FE29F79DD8E1310EDB83C761BA0D0DE916EFE09B877D31D97A3426
                5EFF0ADB1D7F801FF5BDB89A845F6D5CF89F6470F1D7944618B9F1A9D5725439
                4E419EE5D788319F04A7D363607960106CCFCD869FC5764479187764463AB994
                64C7FC5B8FE6FF49511D9EA6EB6C87612DCD99F39C7BE09B07DD31C56E08BEBA
                D31FCBEDE6C2A3D90971FCE88D85C2E26186EEFF6BCAE0E2AFADEAE2B4297EEE
                0F63CD4D4EE1FCC56330B97511B6F6F73342C37DAFE4E6BDF877A7FC1A0A2BF6
                3FBFF2EC426C7DF03DD63EFC16B34C466381D90444E48522AD3C657E05A7EC57
                79A5E5FF92C1C57F879A6B7286E5A6851BC525841965E524CEAFA92BFE4D76C0
                F3AA0955AF3BA63F8C5D7C69069699CDC60CE3AF6159790D69B5C9F3CBDA4B7E
                D559EF7F93C1C53FF53FEBF1538B8CDD66DB609B6681384EE8FE2A5EC56FD29B
                FF21838B7FEA7F5791327B58150AFA303274FDBF530617FFD4EF470617FFD4EF
                470617FFD4EF470617FFD4EF470617FFD4EF470617FFD4EF470617FFD4EF4706
                17FFD4EF470617FFD4EF45E8F2FF00B78D055DEA0FF8A30000000049454E44AE
                426082}
              Stretch = True
            end
            object Label4: TLabel
              Left = 50
              Top = 48
              Width = 60
              Height = 13
              AutoSize = False
              Caption = #23548#20837#36827#24230':'
              Font.Charset = GB2312_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Label5: TLabel
              Left = 176
              Top = 10
              Width = 407
              Height = 12
              AutoSize = False
              Caption = #35828#26126':'#23548#20837#24320#22987#34892#20026#31532#20108#34892','#26684#24335#20026':'#26465#24418#30721'+'#20998#38548#31526'+'#25968#37327',"F0023435833,1"'#12290
            end
            object txt_sp: TcxTextEdit
              Left = 114
              Top = 6
              ParentFont = False
              Style.Font.Charset = GB2312_CHARSET
              Style.Font.Color = clBlack
              Style.Font.Height = -12
              Style.Font.Name = #23435#20307
              Style.Font.Style = []
              Style.LookAndFeel.Kind = lfOffice11
              Style.IsFontAssigned = True
              StyleDisabled.LookAndFeel.Kind = lfOffice11
              StyleFocused.LookAndFeel.Kind = lfOffice11
              StyleHot.LookAndFeel.Kind = lfOffice11
              TabOrder = 0
              Text = ','
              Width = 58
            end
            object ed_file: TcxTextEdit
              Left = 114
              Top = 25
              ParentFont = False
              Style.Font.Charset = GB2312_CHARSET
              Style.Font.Color = clBlack
              Style.Font.Height = -12
              Style.Font.Name = #23435#20307
              Style.Font.Style = []
              Style.LookAndFeel.Kind = lfOffice11
              Style.IsFontAssigned = True
              StyleDisabled.LookAndFeel.Kind = lfOffice11
              StyleFocused.LookAndFeel.Kind = lfOffice11
              StyleHot.LookAndFeel.Kind = lfOffice11
              TabOrder = 1
              Width = 352
            end
            object btOK: TcxButton
              Left = 466
              Top = 25
              Width = 46
              Height = 21
              Caption = #27983#35272'...'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              OnClick = btOKClick
              LookAndFeel.Kind = lfOffice11
            end
            object p_bar: TcxProgressBar
              Left = 114
              Top = 45
              Style.LookAndFeel.Kind = lfOffice11
              Style.LookAndFeel.SkinName = 'Office2007Black'
              StyleDisabled.LookAndFeel.Kind = lfOffice11
              StyleDisabled.LookAndFeel.SkinName = 'Office2007Black'
              StyleFocused.LookAndFeel.Kind = lfOffice11
              StyleFocused.LookAndFeel.SkinName = 'Office2007Black'
              StyleHot.LookAndFeel.Kind = lfOffice11
              StyleHot.LookAndFeel.SkinName = 'Office2007Black'
              TabOrder = 3
              Width = 472
            end
            object btn_Import: TcxButton
              Left = 513
              Top = 25
              Width = 73
              Height = 21
              Caption = #24320#22987#23548#20837
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
              TabOrder = 4
              OnClick = btn_ImportClick
              LookAndFeel.Kind = lfOffice11
            end
          end
          object cxTabSheet9: TcxTabSheet
            Caption = #25195#25551#21442#25968
            ImageIndex = 2
            object chk_InputNotExists: TcxCheckBox
              Left = 8
              Top = 8
              Caption = #21487#20197#25195#20837#19981#22312#20851#32852#21333#25454#20869#30340#29289#26009
              State = cbsChecked
              TabOrder = 0
              Width = 209
            end
            object chk_GreaterthanSrcQty: TcxCheckBox
              Left = 8
              Top = 30
              Caption = #25195#25551#26102#20801#35768#36229#20986#28304#21333#25968#37327
              State = cbsChecked
              TabOrder = 1
              Width = 201
            end
            object chk_AutoNewBill: TcxCheckBox
              Left = 232
              Top = 8
              Caption = #23457#26680#21518#33258#21160#26032#22686
              TabOrder = 2
              Width = 145
            end
            object chk_automaticRecovery: TcxCheckBox
              Left = 232
              Top = 32
              Caption = #25195#25551#25968#33258#21160#24674#22797#20026'1'
              State = cbsChecked
              TabOrder = 3
              Width = 145
            end
          end
        end
      end
    end
  end
  object right_Pl: TPanel [4]
    Left = 797
    Top = 53
    Width = 416
    Height = 562
    Align = alRight
    BevelOuter = bvNone
    Color = 16511980
    TabOrder = 5
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 416
      Height = 59
      Align = alTop
      Color = 16511980
      TabOrder = 0
      object cxGroupBox1: TcxGroupBox
        Left = 1
        Top = 1
        Align = alTop
        Caption = #20851#32852#21333#25454#20449#24687
        TabOrder = 0
        Height = 57
        Width = 414
        object cxLabel7: TcxLabel
          Left = 8
          Top = 14
          AutoSize = False
          Caption = #21333#25454#31867#22411
          Height = 16
          Width = 59
        end
        object txt_btypeName: TcxDBTextEdit
          Tag = 100
          Left = 61
          Top = 13
          DataBinding.DataField = 'btypeName'
          DataBinding.DataSource = dsEditMaster
          Enabled = False
          TabOrder = 0
          Width = 159
        end
        object cxLabel8: TcxLabel
          Left = 220
          Top = 15
          AutoSize = False
          Caption = #21333#25454#32534#21495
          Height = 16
          Width = 59
        end
        object txt_CFSOURCENUMBER: TcxDBTextEdit
          Tag = 100
          Left = 271
          Top = 14
          DataBinding.DataField = 'CFSOURCENUMBER'
          DataBinding.DataSource = dsEditMaster
          Enabled = False
          TabOrder = 2
          Width = 140
        end
        object cxLabel9: TcxLabel
          Left = 8
          Top = 35
          AutoSize = False
          Caption = #23458#25143
          Height = 16
          Width = 59
        end
        object txt_CustName: TcxDBButtonEdit
          Left = 61
          Top = 33
          DataBinding.DataField = 'CustName'
          DataBinding.DataSource = dsEditMaster
          Enabled = False
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          TabOrder = 4
          Width = 159
        end
        object cxLabel10: TcxLabel
          Left = 220
          Top = 36
          AutoSize = False
          Caption = #20379#24212#21830
          Height = 16
          Width = 59
        end
        object txt_SUPPLIERNAME: TcxDBButtonEdit
          Left = 271
          Top = 34
          DataBinding.DataField = 'SUPPLIERNAME'
          DataBinding.DataSource = dsEditMaster
          Enabled = False
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          TabOrder = 5
          Width = 140
        end
      end
    end
    object cxGrid1: TcxGrid
      Left = 0
      Top = 59
      Width = 416
      Height = 473
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.SkinName = 'Office2007Black'
      object cxGridSrcInfo: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        OnCustomDrawCell = cxGridSrcInfoCustomDrawCell
        DataController.DataSource = dsSrcBillData
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Kind = skCount
            Position = spFooter
          end>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
            FieldName = 'MaterialNumber'
            Column = cxGridSrcInfoMaterialNumber
          end
          item
            Format = '0'
            Kind = skSum
            FieldName = 'CFQTY'
            Column = cxGridSrcInfoCFQTY
          end
          item
            Format = '0'
            Kind = skSum
            FieldName = 'CFScanFQTY'
            Column = cxGridSrcInfoCFScanFQTY
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.AlwaysShowEditor = True
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.FocusCellOnCycle = True
        OptionsCustomize.DataRowSizing = True
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsSelection.HideSelection = True
        OptionsView.DataRowHeight = 22
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderHeight = 22
        OptionsView.Indicator = True
        Styles.Inactive = cxStyle1
        object cxGridSrcInfoCFMATERIALID: TcxGridDBColumn
          DataBinding.FieldName = 'CFMATERIALID'
          Visible = False
          Options.Editing = False
          Width = 80
        end
        object cxGridSrcInfoMaterialNumber: TcxGridDBColumn
          DataBinding.FieldName = 'MaterialNumber'
          Options.Editing = False
          Width = 67
        end
        object cxGridSrcInfoMaterialName: TcxGridDBColumn
          DataBinding.FieldName = 'MaterialName'
          Options.Editing = False
          Width = 80
        end
        object cxGridSrcInfoCFCOLORID: TcxGridDBColumn
          DataBinding.FieldName = 'CFCOLORID'
          Visible = False
          Options.Editing = False
          Width = 80
        end
        object cxGridSrcInfoCFSIZEID: TcxGridDBColumn
          DataBinding.FieldName = 'CFSIZESID'
          Visible = False
          Options.Editing = False
          Width = 80
        end
        object cxGridSrcInfoCFCUPID: TcxGridDBColumn
          DataBinding.FieldName = 'CFCUPID'
          Visible = False
          Options.Editing = False
          Width = 80
        end
        object cxGridSrcInfoCOLORNUMBER: TcxGridDBColumn
          DataBinding.FieldName = 'COLORNUMBER'
          Options.Editing = False
          Width = 58
        end
        object cxGridSrcInfoCOLORNAME: TcxGridDBColumn
          DataBinding.FieldName = 'COLORNAME'
          Options.Editing = False
          Width = 47
        end
        object cxGridSrcInfoSIZEName: TcxGridDBColumn
          DataBinding.FieldName = 'SIZEName'
          Options.Editing = False
          Width = 35
        end
        object cxGridSrcInfoCUPNAME: TcxGridDBColumn
          DataBinding.FieldName = 'CUPNAME'
          Options.Editing = False
          Width = 34
        end
        object cxGridSrcInfoCFQTY: TcxGridDBColumn
          DataBinding.FieldName = 'CFQTY'
          Options.Editing = False
          Width = 39
        end
        object cxGridSrcInfoCFScanFQTY: TcxGridDBColumn
          DataBinding.FieldName = 'CFScanFQTY'
          Options.Editing = False
          Width = 44
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = cxGridSrcInfo
      end
    end
    object Panel8: TPanel
      Left = 0
      Top = 532
      Width = 416
      Height = 30
      Align = alBottom
      BevelOuter = bvNone
      Color = 16511980
      TabOrder = 2
      object btn_RefData: TcxButton
        Left = 131
        Top = 3
        Width = 75
        Height = 25
        Caption = #21047#26032'(&R)'
        TabOrder = 0
        OnClick = btn_RefDataClick
        LookAndFeel.Kind = lfOffice11
      end
      object btn_AllAddBox: TcxButton
        Left = 3
        Top = 3
        Width = 127
        Height = 25
        Caption = #20840#37096#28155#21152#21040#35013#31665#21333'(&A)'
        TabOrder = 1
        OnClick = btn_AllAddBoxClick
        LookAndFeel.Kind = lfOffice11
      end
    end
  end
  inherited STBaseEditDataSet: TClientDataSet
    Left = 976
    Top = 8
  end
  object dxBarManager1: TdxBarManager
    AutoHideEmptyBars = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = #24494#36719#38597#40657
    Font.Style = []
    CanCustomize = False
    Categories.Strings = (
      #24037#20855#26639)
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.Images = CliDM.ImageList16
    ImageOptions.LargeImages = CliDM.ImageList16
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Office2007Blue'
    PopupMenuLinks = <>
    ShowFullMenusAfterDelay = False
    Style = bmsOffice11
    UseSystemFont = False
    Left = 888
    Top = 7
    DockControlHeights = (
      0
      0
      53
      0)
    object dxBarManager1Bar2: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = #24037#20855#26465
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 27
      DockingStyle = dsTop
      FloatLeft = 164
      FloatTop = 132
      FloatClientWidth = 69
      FloatClientHeight = 174
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_Query'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnNew'
        end
        item
          UserDefine = [udPaintStyle]
          UserPaintStyle = psCaptionGlyph
          Visible = True
          ItemName = 'btn_Save'
        end
        item
          UserDefine = [udPaintStyle]
          UserPaintStyle = psCaptionGlyph
          Visible = True
          ItemName = 'btn_DelBill'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'Audit'
        end
        item
          Visible = True
          ItemName = 'btn_uAudit'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem2'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_Report'
        end
        item
          Visible = True
          ItemName = 'btn_CancelPackingList'
        end
        item
          Visible = True
          ItemName = 'btn_DelAllPackingList'
        end
        item
          BeginGroup = True
          UserDefine = [udPaintStyle]
          UserPaintStyle = psCaptionGlyph
          Visible = True
          ItemName = 'btn_Exit'
        end>
      OldName = 'LargeButton'
      OneOnRow = True
      Row = 1
      UseOwnFont = True
      Visible = True
      WholeRow = True
    end
    object dxBarManager1Bar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = #33756#21333#26639
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 209
      FloatTop = 96
      FloatClientWidth = 0
      FloatClientHeight = 0
      IsMainMenu = True
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarSubItem7'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem8'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem3'
        end>
      MultiLine = True
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object btn_Save: TdxBarButton
      Caption = #20445#23384
      Category = 0
      Visible = ivAlways
      ImageIndex = 8
      ShortCut = 16467
      OnClick = btn_SaveClick
    end
    object btn_DelBill: TdxBarButton
      Caption = #21024#38500
      Category = 0
      Visible = ivAlways
      ImageIndex = 31
      ShortCut = 16452
      OnClick = btn_DelBillClick
    end
    object btn_uAudit: TdxBarButton
      Caption = #21453#23457#26680
      Category = 0
      Hint = #21453#23457#26680
      Visible = ivAlways
      ImageIndex = 53
      LargeImageIndex = 53
      PaintStyle = psCaptionGlyph
      ShortCut = 49237
      OnClick = btn_uAuditClick
    end
    object dxBarSubItem2: TdxBarSubItem
      Caption = #25171#21360
      Category = 0
      Visible = ivAlways
      ImageIndex = 103
      LargeImageIndex = 103
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_PrintSelect'
        end
        item
          Visible = True
          ItemName = 'btn_PrintAll'
        end>
    end
    object btn_PrintSelect: TdxBarButton
      Caption = #25171#21360#36873#20013#21333#25454
      Category = 0
      Hint = #25171#21360#36873#20013#21333#25454
      Visible = ivAlways
      ShortCut = 16464
      OnClick = btn_PrintSelectClick
    end
    object btn_PrintAll: TdxBarButton
      Caption = #25171#21360#25152#26377#21333#25454
      Category = 0
      Hint = #25171#21360#25152#26377#21333#25454
      Visible = ivAlways
      ShortCut = 49232
      OnClick = btn_PrintAllClick
    end
    object btn_Exit: TdxBarButton
      Caption = #36820#22238
      Category = 0
      Visible = ivAlways
      ImageIndex = 22
      LargeImageIndex = 22
      ShortCut = 16453
      OnClick = btn_ExitClick
    end
    object btnNew: TdxBarButton
      Caption = #26032#22686
      Category = 0
      Hint = #26032#22686
      Visible = ivAlways
      ImageIndex = 50
      LargeImageIndex = 50
      PaintStyle = psCaptionGlyph
      ShortCut = 16462
      OnClick = btnNewClick
    end
    object dxBarSubItem3: TdxBarSubItem
      Caption = #26597#35810'(&F)'
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_MaterialInfo'
        end>
    end
    object btn_MaterialInfo: TdxBarButton
      Caption = #29289#26009#23646#24615
      Category = 0
      Hint = #29289#26009#23646#24615
      Visible = ivAlways
      ImageIndex = 169
      LargeImageIndex = 169
      ShortCut = 119
      OnClick = btn_MaterialInfoClick
    end
    object dxBarSubItem7: TdxBarSubItem
      Caption = #31995#32479'(&S)'
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'bt_sendMsg'
        end>
    end
    object dxBarSubItem8: TdxBarSubItem
      Caption = #25805#20316'(&P)'
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnNew'
        end
        item
          Visible = True
          ItemName = 'btn_Save'
        end
        item
          Visible = True
          ItemName = 'btn_DelBill'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'Audit'
        end
        item
          Visible = True
          ItemName = 'btn_uAudit'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_Sign'
        end
        item
          Visible = True
          ItemName = 'bt_CtrlB'
        end
        item
          Visible = True
          ItemName = 'bt_CtrlJ'
        end>
    end
    object btn_Sign: TdxBarButton
      Caption = #20999#25442#27491#36127#25968
      Category = 0
      Hint = #20999#25442#27491#36127#25968
      Visible = ivAlways
      ShortCut = 115
      OnClick = btn_SignClick
    end
    object bt_CtrlB: TdxBarButton
      Caption = #23450#20301#21040#26465#30721#26694
      Category = 0
      Hint = #23450#20301#21040#26465#30721#26694
      Visible = ivAlways
      ShortCut = 16450
      OnClick = bt_CtrlBClick
    end
    object bt_CtrlJ: TdxBarButton
      Caption = #23450#20301#21040#22522#25968#26694
      Category = 0
      Hint = #23450#20301#21040#22522#25968#26694
      Visible = ivAlways
      ShortCut = 16458
      OnClick = bt_CtrlJClick
    end
    object bt_sendMsg: TdxBarButton
      Caption = #21457#36865#28040#24687'...'
      Category = 0
      Hint = #21457#36865#28040#24687'...'
      Visible = ivAlways
      ImageIndex = 25
      LargeImageIndex = 25
      OnClick = bt_sendMsgClick
    end
    object Audit: TdxBarButton
      Caption = #23457#26680
      Category = 0
      Hint = #23457#26680
      Visible = ivAlways
      ImageIndex = 51
      LargeImageIndex = 51
      PaintStyle = psCaptionGlyph
      ShortCut = 113
      OnClick = AuditClick
    end
    object btn_Query: TdxBarButton
      Caption = #26597#25214
      Category = 0
      Hint = #26597#25214
      Visible = ivAlways
      ImageIndex = 64
      LargeImageIndex = 64
      PaintStyle = psCaptionGlyph
      OnClick = btn_QueryClick
    end
    object btn_Report: TdxBarButton
      Caption = #35013#31665#20998#26512
      Category = 0
      Hint = #35013#31665#20998#26512
      Visible = ivAlways
      ImageIndex = 40
      PaintStyle = psCaptionGlyph
      OnClick = btn_ReportClick
    end
    object btn_CancelPackingList: TdxBarButton
      Caption = #25209#37327#21462#28040#35013#31665
      Category = 0
      Hint = #25209#37327#21462#28040#35013#31665
      Visible = ivAlways
      ImageIndex = 237
      PaintStyle = psCaptionGlyph
      OnClick = btn_CancelPackingListClick
    end
    object Btn_txtFileImport: TdxBarButton
      Caption = #26465#30721#25991#20214#23548#20837
      Category = 0
      Hint = #26465#30721#25991#20214#23548#20837
      Visible = ivAlways
      ImageIndex = 640
      LargeImageIndex = 640
      PaintStyle = psCaptionGlyph
    end
    object btn_ExcelImport: TdxBarButton
      Caption = 'Excel'#23548#20837
      Category = 0
      Hint = 'Excel'#23548#20837
      Visible = ivAlways
      ImageIndex = 13
      LargeImageIndex = 13
      PaintStyle = psCaptionGlyph
    end
    object btn_DelAllPackingList: TdxBarButton
      Caption = #21024#38500#25152#26377#35013#31665#21333
      Category = 0
      Hint = #21024#38500#25152#26377#35013#31665#21333
      Visible = ivAlways
      ImageIndex = 9
      PaintStyle = psCaptionGlyph
      OnClick = btn_DelAllPackingListClick
    end
  end
  object cdsMaster: TClientDataSet
    Tag = 1
    Aggregates = <>
    Params = <>
    Left = 968
    Top = 109
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
    object cdsMasterCFBOXNUMBER: TFloatField
      FieldName = 'CFBOXNUMBER'
    end
    object cdsMasterFBIZDATE: TDateTimeField
      FieldName = 'FBIZDATE'
    end
    object cdsMasterFDESCRIPTION: TWideStringField
      FieldName = 'FDESCRIPTION'
      Size = 4000
    end
    object cdsMasterFAUDITORID: TWideStringField
      FieldName = 'FAUDITORID'
      Size = 44
    end
    object cdsMasterCFSOURCETYPE: TWideStringField
      FieldName = 'CFSOURCETYPE'
      Size = 138
    end
    object cdsMasterFSOURCEBILLID: TWideStringField
      FieldName = 'FSOURCEBILLID'
      Size = 160
    end
    object cdsMasterCFSOURCENUMBER: TWideStringField
      FieldName = 'CFSOURCENUMBER'
      Size = 160
    end
    object cdsMasterCFCAPACITY: TFloatField
      FieldName = 'CFCAPACITY'
    end
    object cdsMasterCFWAREHOUSEID: TWideStringField
      FieldName = 'CFWAREHOUSEID'
      Size = 44
    end
    object cdsMasterCFWAREHOUSELOCATIO: TWideStringField
      FieldName = 'CFWAREHOUSELOCATIO'
      Size = 44
    end
    object cdsMasterCFSTATUS: TWideStringField
      FieldName = 'CFSTATUS'
      Size = 100
    end
    object cdsMasterFBRANCHID: TWideStringField
      FieldName = 'FBRANCHID'
      Size = 44
    end
    object cdsMasterCFCUSTOMERID: TWideStringField
      FieldName = 'CFCUSTOMERID'
      Size = 44
    end
    object cdsMasterCFSUPPLIERID: TWideStringField
      FieldName = 'CFSUPPLIERID'
      Size = 44
    end
    object cdsMasterCFSOURCEBoxFID: TWideStringField
      FieldName = 'CFSOURCEBoxFID'
      Size = 60
    end
    object cdsMasterCFISBILLOPEN: TIntegerField
      FieldName = 'CFISBILLOPEN'
    end
    object cdsMasterCFEntrySumQty: TFloatField
      FieldName = 'CFEntrySumQty'
    end
  end
  object cdsDetail: TClientDataSet
    Tag = 1
    Aggregates = <>
    Params = <>
    Left = 968
    Top = 207
    object cdsDetailFID: TWideStringField
      FieldName = 'FID'
      Size = 44
    end
    object cdsDetailFSEQ: TFloatField
      FieldName = 'FSEQ'
    end
    object cdsDetailFPARENTID: TWideStringField
      FieldName = 'FPARENTID'
      Size = 44
    end
    object cdsDetailCFMATERIALID: TWideStringField
      FieldName = 'CFMATERIALID'
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
    object cdsDetailCFQTY: TFloatField
      FieldName = 'CFQTY'
    end
    object cdsDetailCFDIFFQTY: TFloatField
      FieldName = 'CFDIFFQTY'
    end
    object cdsDetailCFBARCODE: TWideStringField
      FieldName = 'CFBARCODE'
      Size = 200
    end
    object cdsDetailCFREMARK: TWideStringField
      FieldName = 'CFREMARK'
      Size = 510
    end
    object cdsDetailCFRowType: TFloatField
      FieldName = 'CFRowType'
    end
  end
  object cdsEditDetail: TClientDataSet
    Aggregates = <>
    Params = <>
    BeforeEdit = cdsEditDetailBeforeEdit
    BeforePost = cdsEditDetailBeforePost
    OnCalcFields = cdsEditDetailCalcFields
    OnNewRecord = cdsEditDetailNewRecord
    Left = 968
    Top = 261
    object cdsEditDetailFID: TWideStringField
      FieldName = 'FID'
      Size = 44
    end
    object cdsEditDetailFSEQ: TFloatField
      FieldName = 'FSEQ'
    end
    object cdsEditDetailFPARENTID: TWideStringField
      FieldName = 'FPARENTID'
      Size = 44
    end
    object cdsEditDetailCFMATERIALID: TWideStringField
      FieldName = 'CFMATERIALID'
      Size = 44
    end
    object cdsEditDetailMaterialNumber: TWideStringField
      DisplayLabel = #29289#26009#32534#21495
      FieldName = 'MaterialNumber'
      Size = 80
    end
    object cdsEditDetailMaterialName: TWideStringField
      DisplayLabel = #29289#26009#21517#31216
      FieldName = 'MaterialName'
      Size = 80
    end
    object cdsEditDetailCFCOLORID: TWideStringField
      FieldName = 'CFCOLORID'
      Size = 44
    end
    object cdsEditDetailCFSIZEID: TWideStringField
      FieldName = 'CFSIZEID'
      Size = 44
    end
    object cdsEditDetailCFCUPID: TWideStringField
      FieldName = 'CFCUPID'
      Size = 44
    end
    object cdsEditDetailCFQTY: TFloatField
      DisplayLabel = #25968#37327
      FieldName = 'CFQTY'
    end
    object cdsEditDetailCFDIFFQTY: TFloatField
      DisplayLabel = #36229#20986#25968#37327
      FieldName = 'CFDIFFQTY'
    end
    object cdsEditDetailCFBARCODE: TWideStringField
      DisplayLabel = #26465#24418#30721
      FieldName = 'CFBARCODE'
      Size = 200
    end
    object cdsEditDetailCFREMARK: TWideStringField
      DisplayLabel = #22791#27880
      FieldName = 'CFREMARK'
      Size = 510
    end
    object cdsEditDetailCOLORNUMBER: TWideStringField
      DisplayLabel = #39068#33394#32534#21495
      FieldName = 'COLORNUMBER'
      Size = 80
    end
    object cdsEditDetailCOLORNAME: TWideStringField
      DisplayLabel = #39068#33394
      FieldName = 'COLORNAME'
      Size = 510
    end
    object cdsEditDetailSIZENUMBER: TWideStringField
      DisplayLabel = #23610#30721
      FieldName = 'SIZEName'
      Size = 510
    end
    object cdsEditDetailCUPNAME: TWideStringField
      DisplayLabel = #20869#38271
      FieldName = 'CUPNAME'
      Size = 510
    end
    object cdsEditDetailCFRowType: TFloatField
      DisplayLabel = #34892#31867#22411
      FieldName = 'CFRowType'
    end
    object cdsEditDetailFRowState: TStringField
      DisplayLabel = #34892#29366#24577
      FieldKind = fkCalculated
      FieldName = 'FRowState'
      Size = 80
      Calculated = True
    end
  end
  object dsEditMaster: TDataSource
    DataSet = cdsEditMaster
    Left = 896
    Top = 157
  end
  object dsEditDetail: TDataSource
    DataSet = cdsEditDetail
    Left = 896
    Top = 261
  end
  object cdsSrcBillData: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 968
    Top = 317
    object WideStringField3: TWideStringField
      FieldName = 'CFMATERIALID'
      Size = 44
    end
    object WideStringField4: TWideStringField
      DisplayLabel = #29289#26009#32534#21495
      FieldName = 'MaterialNumber'
      Size = 80
    end
    object WideStringField5: TWideStringField
      DisplayLabel = #29289#26009#21517#31216
      FieldName = 'MaterialName'
      Size = 80
    end
    object WideStringField6: TWideStringField
      FieldName = 'CFCOLORID'
      Size = 44
    end
    object WideStringField7: TWideStringField
      FieldName = 'CFSIZESID'
      Size = 44
    end
    object WideStringField8: TWideStringField
      FieldName = 'CFCUPID'
      Size = 44
    end
    object FloatField2: TFloatField
      DisplayLabel = #25968#37327
      FieldName = 'CFQTY'
    end
    object FloatField3: TFloatField
      DisplayLabel = #24050#35013#31665#25968
      FieldName = 'CFScanFQTY'
    end
    object WideStringField11: TWideStringField
      DisplayLabel = #39068#33394#32534#21495
      FieldName = 'COLORNUMBER'
      Size = 80
    end
    object WideStringField12: TWideStringField
      DisplayLabel = #39068#33394
      FieldName = 'COLORNAME'
      Size = 510
    end
    object WideStringField13: TWideStringField
      DisplayLabel = #23610#30721
      FieldName = 'SIZEName'
      Size = 510
    end
    object WideStringField14: TWideStringField
      DisplayLabel = #20869#38271
      FieldName = 'CUPNAME'
      Size = 510
    end
  end
  object dsSrcBillData: TDataSource
    DataSet = cdsSrcBillData
    Left = 896
    Top = 317
  end
  object cdsEditMaster: TClientDataSet
    Tag = 1
    Aggregates = <>
    Params = <>
    BeforeEdit = cdsEditMasterBeforeEdit
    BeforePost = cdsEditMasterBeforePost
    OnNewRecord = cdsEditMasterNewRecord
    Left = 968
    Top = 157
    object WideStringField1: TWideStringField
      FieldName = 'FID'
      Size = 44
    end
    object WideStringField2: TWideStringField
      FieldName = 'FCREATORID'
      Size = 44
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'FCREATETIME'
    end
    object WideStringField9: TWideStringField
      FieldName = 'FLASTUPDATEUSERID'
      Size = 44
    end
    object DateTimeField2: TDateTimeField
      FieldName = 'FLASTUPDATETIME'
    end
    object WideStringField10: TWideStringField
      FieldName = 'FCONTROLUNITID'
      Size = 44
    end
    object WideStringField15: TWideStringField
      FieldName = 'FNUMBER'
      Size = 160
    end
    object FloatField1: TFloatField
      FieldName = 'CFBOXNUMBER'
    end
    object DateTimeField3: TDateTimeField
      FieldName = 'FBIZDATE'
    end
    object WideStringField16: TWideStringField
      FieldName = 'FDESCRIPTION'
      Size = 4000
    end
    object WideStringField17: TWideStringField
      FieldName = 'FAUDITORID'
      Size = 44
    end
    object WideStringField18: TWideStringField
      FieldName = 'CFSOURCETYPE'
      Size = 138
    end
    object WideStringField19: TWideStringField
      FieldName = 'FSOURCEBILLID'
      Size = 160
    end
    object WideStringField20: TWideStringField
      FieldName = 'CFSOURCENUMBER'
      Size = 160
    end
    object FloatField4: TFloatField
      FieldName = 'CFCAPACITY'
    end
    object WideStringField21: TWideStringField
      FieldName = 'CFWAREHOUSEID'
      Size = 44
    end
    object WideStringField22: TWideStringField
      FieldName = 'CFWAREHOUSELOCATIO'
      Size = 44
    end
    object WideStringField23: TWideStringField
      FieldName = 'CFSTATUS'
      OnGetText = WideStringField23GetText
      Size = 100
    end
    object WideStringField24: TWideStringField
      FieldName = 'FBRANCHID'
      Size = 44
    end
    object WideStringField25: TWideStringField
      FieldName = 'CFCUSTOMERID'
      Size = 44
    end
    object WideStringField26: TWideStringField
      FieldName = 'CFSUPPLIERID'
      Size = 44
    end
    object cdsEditMasterFWAREHOUSEName: TWideStringField
      FieldName = 'FWAREHOUSEName'
      Size = 80
    end
    object cdsEditMasterCFWAREHOUSELOCATIOName: TWideStringField
      FieldName = 'CFWAREHOUSELOCATIOName'
      Size = 80
    end
    object cdsEditMasterCustName: TWideStringField
      FieldName = 'CustName'
      Size = 80
    end
    object cdsEditMasterSUPPLIERNAME: TWideStringField
      FieldName = 'SUPPLIERNAME'
      Size = 80
    end
    object cdsEditMasterctName: TWideStringField
      FieldName = 'ctName'
      Size = 80
    end
    object cdsEditMasteralName: TWideStringField
      FieldName = 'alName'
      Size = 80
    end
    object cdsEditMasterbtypeName: TWideStringField
      FieldName = 'btypeName'
      Size = 80
    end
    object cdsEditMasterCFSOURCEBoxFID: TWideStringField
      FieldName = 'CFSOURCEBoxFID'
      Size = 60
    end
    object cdsEditMasterCFISBILLOPEN: TIntegerField
      FieldName = 'CFISBILLOPEN'
    end
    object cdsEditMasterCFEntrySumQty: TFloatField
      FieldName = 'CFEntrySumQty'
    end
  end
  object cdsBoxList: TClientDataSet
    Tag = 1
    Aggregates = <>
    Params = <>
    OnNewRecord = cdsBoxListNewRecord
    Left = 64
    Top = 373
    object WideStringField27: TWideStringField
      FieldName = 'FID'
      Size = 44
    end
    object WideStringField28: TWideStringField
      FieldName = 'FCREATORID'
      Size = 44
    end
    object DateTimeField4: TDateTimeField
      DisplayLabel = #35013#31665#26085#26399
      FieldName = 'FCREATETIME'
    end
    object WideStringField31: TWideStringField
      DisplayLabel = #35013#31665#21333#21495
      FieldName = 'FNUMBER'
      Size = 160
    end
    object FloatField5: TFloatField
      DisplayLabel = #31665#21495
      FieldName = 'CFBOXNUMBER'
    end
    object WideStringField32: TWideStringField
      DisplayLabel = #22791#27880
      FieldName = 'FDESCRIPTION'
      Size = 4000
    end
    object FloatField6: TFloatField
      DisplayLabel = #23481#37327
      FieldName = 'CFCAPACITY'
    end
    object WideStringField39: TWideStringField
      DisplayLabel = #29366#24577
      FieldName = 'CFSTATUS'
      OnGetText = WideStringField39GetText
      Size = 100
    end
    object cdsBoxListFWAREHOUSEName: TWideStringField
      DisplayLabel = #20179#24211
      FieldName = 'FWAREHOUSEName'
      Size = 80
    end
    object cdsBoxListctName: TWideStringField
      DisplayLabel = #35013#31665#20154
      FieldName = 'ctName'
      Size = 80
    end
    object cdsBoxListCFEntrySumQty: TFloatField
      DisplayLabel = #35013#31665#21512#35745
      FieldName = 'CFEntrySumQty'
    end
  end
  object dsBoxList: TDataSource
    DataSet = cdsBoxList
    Left = 64
    Top = 429
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 56
    Top = 208
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor]
      Color = clHighlight
    end
  end
  object opendg: TOpenDialog
    Filter = #25991#26412#25991#20214'(*.txt)|*.txt'
    Left = 680
    Top = 272
  end
end
