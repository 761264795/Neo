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
    Height = 555
  end
  object Splitter2: TSplitter [1]
    Left = 786
    Top = 53
    Height = 555
    Align = alRight
  end
  object Left_pl: TPanel [2]
    Left = 0
    Top = 53
    Width = 193
    Height = 555
    Align = alLeft
    BevelOuter = bvNone
    Color = 16511980
    TabOrder = 0
    object cxGrid3: TcxGrid
      Left = 0
      Top = 0
      Width = 193
      Height = 555
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
    Width = 590
    Height = 555
    Align = alClient
    BevelOuter = bvNone
    Color = 16511980
    TabOrder = 1
    object Splitter3: TSplitter
      Left = 0
      Top = 162
      Width = 590
      Height = 3
      Cursor = crVSplit
      Align = alTop
    end
    object Panel3: TPanel
      Left = 0
      Top = 165
      Width = 590
      Height = 390
      Align = alClient
      BevelOuter = bvNone
      Color = 16511980
      TabOrder = 1
      object EntryPage: TcxPageControl
        Left = 0
        Top = 0
        Width = 590
        Height = 390
        ActivePage = cxTabSheet4
        Align = alClient
        Style = 10
        TabOrder = 0
        ClientRectBottom = 390
        ClientRectRight = 590
        ClientRectTop = 18
        object cxTabSheet4: TcxTabSheet
          Caption = #35013#31665#26126#32454
          ImageIndex = 0
          object cxGrid2: TcxGrid
            Left = 0
            Top = 0
            Width = 590
            Height = 354
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
            Top = 354
            Width = 590
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
            Height = 372
            Width = 590
          end
        end
      end
    end
    object Panel4: TPanel
      Left = 0
      Top = 0
      Width = 590
      Height = 162
      Align = alTop
      BevelOuter = bvNone
      Color = 16511980
      TabOrder = 0
      object Panel5: TPanel
        Left = 0
        Top = 83
        Width = 590
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
          Width = 588
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
        Width = 590
        Height = 83
        Align = alTop
        Color = 16511980
        TabOrder = 0
        object InputPage: TcxPageControl
          Left = 1
          Top = 1
          Width = 588
          Height = 81
          ActivePage = cxTabSheet7
          Align = alClient
          Style = 10
          TabOrder = 0
          OnChange = InputPageChange
          ClientRectBottom = 81
          ClientRectRight = 588
          ClientRectTop = 18
          object cxTabSheet1: TcxTabSheet
            Caption = #26465#30721#25195#25551
            ImageIndex = 0
            DesignSize = (
              588
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
                000000BD08060000006CF8E571000000017352474200AECE1CE9000000046741
                4D410000B18F0BFC6105000000206348524D00007A26000080840000FA000000
                80E8000075300000EA6000003A98000017709CBA513C00000009704859730000
                0AF200000AF2013D52F711000079C149444154785EEDBD0578D5E7B2BE4D140B
                0EA5500A55ACC5DDDDDDDD25B81382848484B8105722C4DDDDDDDDDD08047727
                59F33DF36BD3AFFF7D9DEEDD6D3D21876BEFB95656B28034EBCEC833F3CEDB8E
                88DA7DB6CF3F837FC4C06748FE03BF28E109F9626C11F1BFD83FFAA17F8A5FFF
                0CCA9F04C52D28412C2CA9402C3ABD542C203243DC3F225D2220225532222157
                3A2EA5A0436C727EC7B8A4DC0EB0F6F189B9D230A984A43C499844787C8E7878
                5C8178447CA15864429158745289584C72E92705D46750FE009498A41AB198C4
                3A3689F0E442A9C0D8ECF64979359DE2B32BBB442615F648C9ADE9939455FE55
                7C7AC9B72151694360C3C3A252878646A6FC101A9EFC2D6C604858527FD817B1
                A945BD0046F7A8C4E2AE8045263426AF6370544EFBC0886CC980F02C89A88432
                F1E8C47231B6D6EA6D3E83F237A00486A48B8545E44AC42796B54F4EADEA02EB
                1D9E9835202C21F3C798D4BC519E41D153DC7C43E747C4A7AF0A8B4DDD1A1A91
                78202A36E5446C4CCAD9B8D8E45309F1A94712E352F727C5A7ED4E894FDD0A5B
                1B1D9DBA1C363F26266D7A6C6CFAF8B8B8AC9FE3E3B3BF4F48C81900EB93109F
                DB1D26939850D011260D93888FCB138F8BCD178B8DC96B15F07C0605A04444E7
                89C5C41789C727954A252497754E4AA9EC939054FE038099E4E593B8CC3F3269
                7B485CFAD184CCA2CB41D129DA8E1E0156DA8696EE078E9D0BDCB5F768A49AA6
                7E8296A641928EB641E20D3DE358237DB3485323CB304B13AB202BD39BBE2E2E
                7EAE6E6E01D65E5E21FA0101512AA1A18972D1D1E98700CBB6C4C4DC9511E1A9
                732323D2264647650D8F8DC9F9262E36B72F40E9111F572003EB10139B2F0593
                8089B1FD6F789DFFB3A04445668AE18D118B084F970C0D49EA101599DE1DF635
                3E1E1D1E9EBC24363653166FA47A54549ABDDCD56B815BF71E889DB77859C6C8
                71130B7F1C3EA27AE0A0EF1B870EFBE9D1EE9D7B9EEAE9E83E37D0D67D017B6E
                A2A5F7CC4C57EFA9C50DFD27D606468F6D0C8D1F581A9BDEB53231ABB136B328
                B1B3BC99E3606D9BE26C671FED6AEF1CE4E6E0E2EAEFE16F1EE815A816EA1776
                3632286A6F4C68EC9AF88884790991891313A392862524647C0DEB1D9798D535
                3621B3634C7C8674745CBA44545CA678546CCE5F02CEFF395000865864448678
                4A72B1747656954C6646057E7B738664A497CE4C4F2BD91A1C9470C9DCDCD1EA
                F46985B0D9B397E77DF9E50FF5DDFAF67F087BF6EDE0612FC74F99FE66D6FC45
                EFC78C9DD83475DA8C66956BD79B75B575447A1A5A224D155591E6556591C655
                C5664D45A5661D25E5663DE5EBCD46BA379A8CF5F4DF9BDC30786BAA6FF8DACC
                C0E8858591C9534B63F347B03B0E371D2A9D6D9DF3DC1D3C927C5C7DC302BD82
                3C427C432DC3FCC3D5C203224EC7C5A5ED802D0524D3603FC306019A3EB18939
                0027BF63445C8E144C3C222E4F8CEDBFE171FECF80929A50229614972F191795
                DD3135B1A8475E56F537A989F9E382FD635738DEF23CA6A369ACB777D721AF59
                D317A44C9E30BD72CECC050F674E9BFB7ACCC8091F3A74EDDAF4E5C081CD3FFE
                344CF4D3889F4563C78FA3614386D2F46953485F4B8B2C8C0DC85C4F970CD4D5
                E8C6B56BA4A7A448062ACA64A6AE4E56DADA64A2A546A6DAEA64AEAB2DB2BCA1
                2BB236D417D91A1B36DF323169B63735FD08CFF3DED6C8E4B58399C50B172BEB
                C71EB60E8D5EB79CAA7D1C5CF27C1D5D1302028303038342EC4342C375C3C223
                E5C2A3E376232F5A119D90362D26217B383CCB0078969E80A573446C81342A2C
                099858785CE17F0C9A360D4A745291585462A13820914A4B2CED0C50BE888FCE
                199A9250381BC0ECB4B17455943BA364B775D3DEA88DEB7616AE58BAEEEEF225
                6B9F6F5ABFEDDD86B55B9A468F182F9214EB40ED2425E9BBA1436902C0183566
                344D983491268C1B4F4B972C224B6363BAA1A54E7AD755485DE10AA95FBC489A
                972F011825B2D0D424DB1B370448D8CC74B41816B2D0D311CC524F4F30731D7E
                D4170118919DB129E0B16C7234BFF9DEC9C2FA35ECB983A3F3432767D77A3777
                CF226F1FBF14BFA0D090E0B058C7B0E844DD8898F43300652B40990F50C60294
                EF00491F581780D21E86F2BCE8DF06A64D821297089D02C969644CBE3412D52E
                59A9D9FD8B728B47C647252C8D8D883B969E94A16FA26FEAB779DD968C4D6B37
                D7ECD9BEF7313E7EB361F5C68F7B77EC6B5EBE688568C7E69D3472D828EADAB1
                1BF5EAD587C68D9B40E3C74F146CD68CD9F455BF01B46FCF5E5255BC46EAD754
                C8D7C98D362E5F41E387FF44D3478FA5758B96D0EAF9F369FBEAD574E6902C5D
                3E7D4A00C95003C0E80212FD1B6465A04FD64686BF3DB7353126474B0B72B5B1
                6E31918BF54D918FFDCD263F479B0FFE4EB66FF0F8C2F396F523D86D6F07DB22
                5F47C7C4E8C000DF98C050F3D890F0AB8911D1FB93A3E297A7C6244E4C8A49F8
                3E313ABE4F444A814C505C96B45F549A847F74FABF044D9B032536A190AB17E9
                E4B4CAAE19D9755F67E7358C2FC92F5D9B1C9722E7E5EA6D15E41B1C1917195F
                64A4677C6FF7B63D2F60EF0147D3CE2DBB448086F09CD6AFDA40DB366EA71FBF
                194C32EDBB50DFBEFD0450A64E9D4ED3A7CFA439B3E6D2A811A3E992FC453284
                3740FE41FAAA9A3475F4181A3B74184DFE79A400CB7878A159E3C6D188EFBF03
                40C368D684F1B46CCE6CDABC72051DD8B6954ECB1EA44BA74E92A98EB6000E83
                626F6E26D82D3353E1399B8B25003233205B431D91959E86C84A5FA7D9D1C2E4
                83BF8BC39B485FDFE75E0EF6F7BC1D5C2A7D5DDC33033DBCC3C2FD826FC58644
                5E4F888A3B901C9BB8342421675C707CF637B09EF8B86368623E6B43FF14306D
                0614949462D01FA492938A64600392120B2724C4E76FC2E7AF021287B0C0F004
                5F0FBF4A40F228273DF70DA0F9287FF6227B0ED1BE9DFBE9D0BEC3B47DD30EDA
                B57537F17386A66FCF2F0550BE193888268E9F400BE6CCA5F9B3E7D0F4C95368
                DEACD9A4A7A549A6BA7AE4EDE44C27F6EEA76FFBF4A5D13F0CA689C387D3B821
                4368321E174E9E4C0BA74EA50553A6D09C09806DE44801A0D13FFC40637EFC51
                781DDBCCB163050FB47FF366923F768CF4949509390C79DBDB93B79D35F93BDE
                A2403727C17C1CEDC9D5DA8A8112D9999A34BBD8D836B9DADABD73B37378E97E
                CBF19187935BAD8F9B574EA0B77F58A87FB04D4844A262444CEACEE8A4AC39B0
                219109197D22E2B23A4526E648C42417FF29603E795092528AC5A03948008A4E
                00E54B3C8E8E89CE5E171E96A6101890E0E2EB13931A1912558B90F314C0BC43
                186A2ACE2B11E566E491F32D173A7F4A8E0EEC3E48270E9F247816C1A39C3E76
                86D6AE58475D3A74A56E9DBAD3707889A98063D9A2C50228A37F1E412B972E23
                038410AD6BCAE4E3EC422BE7CEA71E52EDE99BDE5FD0C09E3D6950AF5E340E20
                4C0718937FFE99668C1943F3264DA245D3A6D1E2E9D369C98C19B46CD62C5A31
                670ECD9D3851B0D9E3C7D3B451A368D24F3F097F869F336447776CA54BC70E93
                9E8A22D9991890BBAD3579D9DB91A7FD2DF2B86547378D8CC9C1D24AE4E5E822
                8247690AF0F27BEFE7E1F3CADBD5F391A7B37BB5AB675086975FB89F5F68AC7E
                7054D291D0989485A1D1E9C34262D27B8544674BA34F25FE8F2AA54F1A94B8C4
                0271780EE9ACACB29EE9C98543E363D2974684269C8B0C8EB58B094B484E8A49
                AB4B4BC87A9E9992F51E5EA419264A4D48233CA78AE24ACACBCC2778193ABCFF
                089D397E968EC91EA7837B904FC85DA1A50B965107898ED4BB5B1F1A8F377BFE
                CC99B40E702C8627190370F66CDE8290A14B288509150B3CC6341AF6F520C1BE
                92E9465F7694A11FFA7C49FD3A7511BC077B117EF3D9A34C193142F8981FF939
                872786828D81E2CFB3576260F8E39FBF1D44A37FFC9EA68CFC99164C9D8C5C68
                199DD8BF0F39CF55E4377A14EAE34B811E9EE4E6E044B7ACACC9DA0CDEE6A69D
                C8CBD5B329D82FE8BD9B93F30B5747A77B2E4ECE459EEE3E610181A1C6111109
                8751394D8F8ECDEC17199FDD3EF21F34333F4950908788C12462E2F33A23B47C
                1D19993A232A2C4536322CD1343A22393A313AB5322329E7697E66F1FB92BC8A
                6600217890FCAC022ACC2922E42C54595245E54515022CE74E9E17ECD2F9CB82
                37B97A5191664E992580C2E167E2E8D1B46CC102DA806475D9DC79341D158FFC
                C953C82B0CC8580B558CEE0DDABA72351DDABE930E6EDD4E5B96AEA0D573E60B
                3679D8CFF4758F1E8287F9B64F1FFABE6F5FFAE1CB2F01D4D734EAFBEF69C2B0
                61C867460BB0CCFF5D98E2E70CCAD8C18369C2F0A134EA87EF68C880FE34A877
                4F1AD8BB170DF97A004DF8E9679A336932AD98BF800EEFDE433734B5C9CBC58D
                42FC82C8D7DD9B6EDDB42373233351B07F80C8D7D3EB234079EDE4E0FAC0C5D5
                B3D8D737D43F243CEE526474FAF4A8849C5E51681BFC3DAFF2C98182C69A584C
                5291745C7C618FE8D8AC615111696B82036354A24313FDD15F29CE4DCB7B589C
                5BF8B622B7B8B93CA74854965D28008270F31B2077EB1AA9A1E68E000AAA2152
                5650A10B67E44943459314E4AFD2950B0A3476C43801943EDDBFA029A346D286
                654B85DFE415F3E6D2925933495311BFCDD0486C0C0D491B95CFFAC54B49EEC8
                31BA7CF234299D93C7E359BA76FE22F28D53747CCF1E40B49D76AC5923841A0E
                2F3F0D1A44DF7DF18500D0D0010368C8575FD1F0810385BC85BD0CE72C0C107B
                94313F721E338CC60D1B4EA37E1C4CC3067D43DFF703345FF4156CE097FDE9BB
                01036938F2A3C963C7D39A152BE9C2D97374CBDA86A2C323C8CBD19602DC9D28
                D8C74DE4EFEEFAD1CDC9F1953BF2183F9F40EFD0D0D87DB1F1D93F4425E4B58F
                4C28F8C37CE59302052D7A7180D201A0F407285322A3330E8687265B14E455A6
                94E455DD292DAA7C5D555CDD545D5A29AA87C7683186E27EC3032A2B2C2794C6
                0220FCFC4EED5DAAADA8231D755DC19B18E81892AA921A5D3C778986FFF813B5
                17EF403DBBF41240D9B26A25AD5FBA8496CE465E01587494AF912EC4356B0303
                3AB27337DEEC8142F859366B0EEDD9B00549E97601128D2B4AA4709AE139472A
                172E088F178E1E15E039B0650B5EBB01F9CD5C21ECB08719DCBF3FFDD8AF9F00
                0E1B7B9FE103BFA191DFFD2054546C237FF891867FF32D0DFE7AA0600CCAD7A8
                CCFA233FEADBA3177DD9BB0F0DFEEE7B21E95EBE7809A929C8938D893E834291
                81FEE4EBE9D1ECE1ECFEDCDF37283D3232F12A40190B503A7FF2A0C4A596B270
                26119D5C2083BCE4DBC8D8CCC568A25D4ECD28F4A9A9BA575C5FD7F8A4A6BCEE
                7D1500B957D340AF1F3CA1778F9FD3F3C67BD458554DF76EDF17ACBEEA363D7F
                F4821E353EA6B4C474F2F3F4276B731BD2D5D0233DCD1BA4795D0BE2993EA11A
                A27EBDFB0B1A4AF7CE3D84B0B065C50A2109E5E472F3CA5550613508723DDD32
                B5A49B0666A4024F7470DB3E5AB37025CD9B3287668C9B86B0309B16CF5C84CF
                2DA76DAB37D2095456FC3A0D78B06BC883AEE2DF5102A0979150CB2347923B7A
                9ACE204FDABD611B2D9A3E9726C3AB4DFC690CFDD06F10F542623DB04F7FEADD
                B93BF591E941037A7D499D243B0090AFE88B9EBD04EB0FEFF2353CCD1700A54B
                6719C17AF540A8EAD585C60CFE06A173019D3AB89F4CF475454931716FFCBDFC
                8AC242A375D0D19E1A1D9FDD05B07CBA1E2536A1580CA048C6A694740B8DCD1A
                1A1C96BA212E294FB7B8E8764C79D5DDFA92A2DA57D555B79B1EDC79247AF9E4
                05BD79FC825E343EA4A70DF7E8D58387F4F1393EF7FC2DBD7EF6460837EC51D0
                D515C20D3ABBE462EF2A40C2DE8481E147B9D317E88B1E7D85AAA7874C4FE1B7
                7DEBCA95B414092D572D3BD76F8070A649DA4AD7C9D9CA96AA0BCAA81839504E
                6226A5452753845F1884337BD257BB8184538D4E2259DEB57E2BAD988BAA09B9
                CFBCC93369E5BC25006B0F5DC1BF751D391183C3C62029200C3230C7F71E12FE
                ECA9034769CBCAF5B47ED96A9A39612A8DFF693412EA11F445F7DEF4559F7ED4
                B97D07EA2029451DA5A4A96BA7CE02201DA4DB0B2683E7BD3A88530FE976D445
                B21D756AD78E06F5EF2B8250F8CEC5DEB92C3D2DC708A0CC0428DD3E5950A2D1
                AB80492133EF199790332A25BD60574E7E8545555563C6FDFB2F1F3C7FF1F6DD
                9B971F9A5F3C7B4D1F5E7E20D1BB266A7EFB91DE3F7B49AF1F3DA5B74F9ED2C7
                172F853CC4F886091D3D784CC843A0A9D093FBF8DA9B264A884E247D6D03FC96
                990AAF61E3C496434E6769FC4676ED0DA16CA2E04596CE9A87DFF4D97468D77E
                32D4D423ADEB1AE4E5EC4D39A9B99495944FB9E9C5549A5F4DA585F594975541
                1929C5949E5C4448AC09093685FA4792CB2D0FD25537A05347CED1B60DBB68ED
                F28D3475FC4C9A3D753EAD5AB28E0EEC3A4C72A72ED1557965BA7E5583349475
                E8EA390552387B857455744859FE1A9D903D41BB36EF42253697664D9941DF7C
                350840772709317112030812E2BF9A8418B56F2F45D2F85C677C2C89473629BC
                0E3F87F7BE3E819559998566E844CF8E89CBEE0E50FEB04C6EB5390A7B128624
                2AB6A0775A46C904C4D1C319D9250E0D8DCFF21F3E7CFDA4B2F2EE87CAAA7AD1
                D3472FE9E37B113D7FF09C1EDD7D40EF5EBC21FA28A2C70D8D14E4E945AA5714
                842AC6C2D8520046F49EE8F1BD270228EC6920EB0B5E84BFCE6666682E94CAEC
                4D3A4A761292D99910DB3621415C3E67012D9E3187CE1F3B2D80A20D3516A301
                949D9243293199141F990A20D22921268BE2A33329292E9732534B28252E8332
                9373A920AB04205552716E3965A5E411CA778A0D4F246F577FA8BBE6023C6B96
                6D10A099366116CD9C3C97E6CD5884247A03FEFD8D746CEF51019AEB0AD74953
                5993AE5D56A40BA7CFD3427C5F3F0D1E2E781206854D5C0CB0FC0A4A073CEFD9
                A903C44349EADAA113C974E8483616B6EF2323622B13E2D3CD31B63027363EA7
                7B74E21FEB29AD121448F062E8D7480196DEB049F9B945278B0A4A3DEA6A1ACA
                E03D9E377DA026511389F03F62E3379C9AF1E1FB66CACDC821530313BA8624D2
                D6D28692E392000ED1ABA7AFE9FDAB0F8271325B57592FC012111C4986BA4674
                D3CC5A3006E5E49153D449AAB390CC72089A367612AD5DB29216CF594CF3A6CF
                13C063AFA0A1AA47B191E9949B5D4159E9B0CC72CACDA9A3F48C1A8A8D2BA2F0
                881C8A8884B7C1E731C64029C9858491068A6590F0D86271B1D9949A524479B9
                D55458504799196584B918B2B274253555233A7F540E89F4069A3266BA601347
                4DA20923D1981C3D516833704B61E8E061D4AD4B579292901400118757619394
                1427292929EAD05E86DAB59314AC67AFBE222727AF779131C915C1A19014E2B3
                66436AE806503E9D1C8521F975D2AC77526AC524D8A9E8C838EFBB0DF72B3FBC
                6B7EF5E0DEE3A6FADA3BF4FAE53B011200234092149B4CDA6A5A824587450182
                C7F416DEE521BC0C27B05CE57012CBA0F0F3772FDFE3EBEF84D0D3020AE72CA6
                484C8F1F3A2194C6D262ED0550268D1C07AD62092D9ABD88E64C9D23842F4D15
                5D52BFAE4B1855A0E4C43C4A8CC363520180A8A4D4B42A4A4C2AA3A464545980
                06638E022469A90845692502340C03BF3E069EA705A424FC5DFC9C41E28F191E
                FE733545B594199F45BEAE0164A46D4A4BE62E2519A92E42681460EEDD973A43
                E0E3D023292E0130240448DAC193B49884787B9294402E0360E6CE5B2482E0F6
                363E29B32C2824C100A30A3330D7D23506C3E37FA4A5B43A8F024F2209507A02
                90F1699935273273EABD5F3E7E5AD5FCF6FD6B00C1FF13C0C0730186FAAA3A84
                8AD382F728CC2F21CE57D81E3F7C46CF9FBE12C2D287D71F85AA87453716DCB8
                2466689E3E784690F4055038C1E5D0C3390A2BB42DA070E819337C8C00C9BC99
                F369C6A439A4AB6544D795F4E8BAF20DCA4C2BA7A2C206CACEAC237CCF149F58
                4111B1C5141A0508122A292DEB2EDDB9F79EEA1A5E5371D9034ACBACC2EBCA28
                051E881FA30118C443E1397F2D197F1F7F9E3F6E799E189946B9A9455451504B
                7969C574F4C049EA28D105907484E7E370C3B989B80085244622D88B088020FC
                B46360C4A4609D485CBA1BB59390A16DBB0E89422393DE60F0A908906843709B
                129D98DBE5930105804820D474C32312D7AAC380C423B7E06EA5A7B3EB6BD93D
                FB9A776EDE4A81DEBEF4E6D90BAA2E2D27475B07FC76ABE38DAFA10777EE0B60
                B0DD6F7C44B7EBEE0A064F24543B0C0AEB28A5A85038F4B408705C05B5E4281C
                76189ADF83C212FEC82190F067CCA7B933E609B983BEAE29295F4562A9A44B39
                7843A10E537C6C1125A6C08364DEA6E48C3A8A4BAEA4F8E41A4ACDBC4319D935
                945F74974ACA1F0A565AF148B0ACDC3A01921650189698F8028A88CE111EE393
                8A85AF65271750727486900715649462B44193BEFF7A0812D85E24D14E8A3A75
                409894EA40D2D2D282893120BF82D2BEA334E0684F62525DA953D7BE98ADE942
                27CE5C160586C6BD8E8CCDC8494E2F520124E361329F0428E9D965E2B109E99D
                C3221386A466E4EEACA8BEEDA0A1AD5FA6AEA6F3EAF0FE43CD93C74DA2FE2805
                BB76EC82AAE42CF40E3D4A894F16BCCBEB67AF04EFC2B0B035D4DC060C6580A2
                04527D05A06AA0F2C25A24900514159240E181D1483C9329292A9562431320C5
                5B408A3722634D03B2D2478EB2FF18B5472CEFC26E1D3ACAF75F7E43D3C74CA1
                B190E3674F9A4A2A0A8A74454E5EC86732103E72322AF15843F13195949C504B
                A9A90D141B5B498989D5545EF14C4862D9B253F37F4B6A2B8B6BA9ACA04AF81C
                DA0C426594975184EFB35A782D3FE7849793E094E46C84AB7C84A3744A4D4817
                FEBB470FF919BACA174245C3C6096B7B3131EA202E8D3C459A78E04A1CA1B31D
                40E2AFB717AA9D76D403798CB1A199283C3CFE656A7A715A647CEE450C788D8C
                4E2AED046BDDA12729AD500C535AD259B9255F67E614AF4ECFCA373D7DEE62FE
                75759DE7A74FC935AF5CB282C68D1C8BBECB171801D88B52D658C83D1810886C
                02240C4745713964FA62F46F72A197A4E1879A82066006DE80124A4B40621914
                473E6E41429501F19AC2FDA304B3B8014FA2618099125D8C2D1A42BF3802BDA1
                FD6FA00C1F34440065F490E102283CACA470E1A290CFA42397C844A848071409
                B1C84DE2AA2939B91E90D4527EFE237AF69CE8C32B1135A1187BF7A2899E3F7C
                4D4FEFBFA4178FDED0B307AFE8E19DA7C2E7AA4BEB856AA828A78C72D2001F2C
                37BD9052E33391ABE420A729C0631665246709FF4DAB162EA3AF20B2756C27F6
                1B080210083392E252F034F022EDE04D000A43247C4DA21DFD0045D7D1DE4514
                1212F32C3DB3342E2C26EB1840190C48DAB77A5052328A25004B2F789499D979
                A52A3A378C9377EF3BF478D75ED98FA3468EA7815026790C809554F620E14111
                4253AFE96D33AA9A14219C704718A304849102A192E1D7B0F173340B29C03782
                3C9DFDD161F521577B4F41CF70B5F320777B2FC19BB046A1A5A441DAD734E9E8
                EE43D44D12CA263C4A1F8C190C19F83D4D1C31967E822C3E1B4D387548F757E4
                E4E0514C05ED241961222D01B9472C208943B849AAA794C43A2A2E7842AF5E10
                3D7FFC91DEBE043080851FDFE073C8B8A809F9381B57654F1FBEA786DA275453
                719F2A4BEF527DF523E1514896E1B538F94D0738996985949B554857CE2B509F
                6EBD4846BA134901965F34124083645642420AE147E2972A07E0C82067618F22
                2D2E460B66CFC7CF22A4393434FE3164871080B2133329036392CBA45A755330
                3EB5502C33B7A2233CCAD088E8A443F64E9E01EB366EBB0350DE8F1E37593412
                3236BB784E3A5903A10F24BCF92CBD73D5D2020543E4EAE02618869204A8FCBD
                0284474FB740720210CE769EE4E1E40758BCE8A6A99D5041186A99A0C1A741D7
                2FA990CAC56B10B494E8D89EC3D457A637C9C075F74065D1BFC717F4F3F74385
                BECAAC8993E05114E9127A36E8CCC20B54422FC91740112049A8A38CD43B4208
                4A4BAEA38AB2A7948D2AA720A78A2A4AEE0800DCBFF3929E3C7827D8C3C6D7F4
                1A5E87E1F9882A9F617AF70ABF0FF86F65C0F2B391EBA094E68A2903A18941C9
                CF2926377B77F476BE842E22036F816A878536C16B7032CB9E84135A49124328
                62B1AD23C20EBFE6C4E1E314E817FA1187D11A1393F3DD9197AC06285F0094D6
                DD3D062812597995BD0342E2178446C41BEF973D51B46CE5BAD75F7FF3A368F6
                BCC5647DD39E1E3D784A4F21CD37D43752786814858544D2C50B5708DA0AF97A
                0790C32D67B2B5B6272B0B1BBA69692B3C7775F620B4D4C9CEC6816ED9B891A5
                993D999B60C8C7C2912C8CACA1AAEA09EAE7153925923F7D91CE9F90C358A23C
                5D387E9E8E0294417DBE46F8C16F2360E90E897C283AB643060DA05993C693CA
                D54B504F4F118E6120D184749F5A4A39293510D62A2835AE9672D3EE51665203
                A52454237F61EF520270F046A32A2A2DBA4777EA5F5343DD2BE1E3ACF42A7888
                5AAAA944087A42F4F21904C107CDF4EC31D1EDDA9794145F4451D10594905826
                94DD69C9C875A0CB24C56440641B016110A0B01761910D1EA523BED7F61D3110
                0EEFD10EE5723B48FBEC4D3AE3355D3A76228C809287ABDFFB8C8C92CAA8984C
                8BE4CCCA79688F748F4D29FFBBC34BFFABE571425A9118AC3D0E767F0F580E28
                28A907CF98BDE8C1B889D39AC6A2A7A16F644E0F208A4170A3CAF21ACACAC8A5
                A888588A898A274505657277F5222F0F5F010E364B736B323745996B76533023
                0353D2D2D02563839BA4AD6144CA8A5AA47049952E9F57A4F3272FD2E9A3E705
                3B8AE4F530F29293078ED3E15DB224BBE3000D1EF083004A67C4F96EE8990CE3
                6EEDC0AF68E6C471A8B41401993C8E6AE808394E416625AA91DB022849D15500
                A791F2331E40C6BF47E5C568402697217F2910806138EEDE7E2340909F532F7C
                3E2FBB8E2ACB1ED1C37B1FE9FEDDF7545BF58CEA6B5E089F6B012536AE580025
                1595501AF4150E794B172C1792FB16505843E92AD38564BA76217149849E5F41
                11247C7C6D14E657DC9D3C44EE2EBEAF73732B73C32252AFA764554D00283200
                E5EF8E44B606506450CF8FC7E16EE5F98B56668F9B38E3D584C93344C678A3D3
                D25109401BA928AFA510E41DB7EC9C050FE3E31D4816083D6E08310E68EA99B2
                0682E76610CCF4A18368A303AC81D101254555924377565141031E48994E1CBB
                4007F69DA00390C28FC89EA21387CED071D9D348900F6056760FEDDDB69736AF
                C180F5C69D68E30FC50FB73D7595EA2480F2E3D7FD6940DF1E3479DC0824D35A
                486471CC02B32838B42594ADB92995E8F754527A5C25E520E4E4A73550696E23
                35D6BC41825B4C31912CCA1553517E23D555BFA46A5443F9390D948E3FF7F411
                7B1112BC083F3636BCA747F74574EFCE07E1F53171E58271E99D92046F925808
                4F5546C70E9F811ADB13421B420C420D0B6DBD7AF5A0EE7D7A90787B80C21A0A
                3702F1F58E486EF7EF3A40015EC84F82629F656755C44644659E884F291F1297
                5AD101D6AA41118747E95E50523F6FCF8153968B96AEA91E3B61FA7B543C141C
                168DDFA06C7273F7216FE41A5AE8F006068409A0D8DA3892F235757272742773
                C8EE0668E899402C33422EA3890EF035CC945C4577581E0348274F9CA3E390C0
                199243074FD3EE9D8769DFEEC374FCC859C19B1C3B780A73B27B3175BF83B6AD
                DF462B16AEA06D6BB6D04FDF0E43B7B523F5ECD8956410F7077ED10BBA85348D
                1F358CECADCD9007399193AD2D39D93853A067180029A6FCF43A00534FD949B5
                94115F253CBF5DF1025E006F6E3C4ADED42A2A2944B25AF60489EE3D849C7AE8
                3075F030EFA8BCE491F039FE3A5B55F953E13101FA4C7C22B41A887799D977E0
                4D50762720B945CEA2A2A4493DBBF7F90D146E007EF1456FEAF5656F92EC0891
                ED5750BAB2C6827C85E76E00CAC794C49C46E43C5ED1B1399B700EE82B40F277
                13594E72FF573D0AE727B03EF1C9792BB7EC38E4366FE18AC66327E59A50F590
                B39B37393AB99381A1193C863540B849C6465680C1925C5D7C008122A0D08797
                71251D6D23E16365542C972F29D3D93397E8F8B17374F8D029923D080F0225F3
                EC59053A72E82CEDDC2E4B87644F0A5F3FB8EF98E05D0EEC96C5118D8D84F33C
                346D22664E662DA42963A708A566F74E5D515D74A36E1D3BA2AF3200257A573A
                7BE208E5A427939DA525B93BBA62A4C08982DCC32905BD9D82148C57B27C1F96
                45F92925988DF9408FEEBCA5C6DA175457FE48B0DB954F84C7B2FC0684A82A7A
                C59EE4EE3B74C091C422997DFEA089DE21C17DD2F81EA12C17492C3C0972A090
                D02CCACEA8A654C8FAA9F1F82542523EA8FF37427ED21D21879B8173E7CCA22E
                DD5009B51727E9CE2893DB4B531789CE988C1B4D0ED62EA2A890A4B789B139A5
                8909454689492573A2134A7AFCA3FCA4B580F22542CF86156BB6FB01948717AF
                A8346BE91A12C3A283470DEED242DBD0D531465831A31B7AA6F02A8E74F4C819
                3A75F2029A66BA74FEDC153A7716F3AE48464F20193D76F4ACF0F523874F0BB6
                73E7213A764C8E8E1D392F78157E9DF0FA1317E8CC497992DD7B98562E594D8B
                302FC2A0CC9D3697A68E9B2A40C2550543D2BF776FB4F3FBA29B2C4393C68E44
                4F4919E25D08C545C450885728057B4450905B14258464503E7A3C3909259497
                5C8C29BB46018C7B75D04E1E365313CA624245F31E55CEC386375453FA809EDE
                FB400F6EBFA6374F51F50096978F44F411950F039487DE5168E82FB0A467D4FE
                920023ECE4A415A182F311A4839E5DBB09B0F48537D9B77737F5EDD79B3A7492
                22A94E288F25000CBCC9DECDFB00B663737468F2D3E4F8BCF8A4C4E273D88CF0
                734C6269A77F949FFCAF8382B02301FB12C72237CC5BB4560045454DB759454D
                9BCECA5D26F98B57E99AB23A2941DF5005103A80451BDE431FEAE96E681D9B36
                ED0200F00C82D738FE9BF17359788DC30C0A80397DFA329D47027BFCF805FCB9
                23B47DFB7EE1CF1FC49F61900E1D38460BE62EA139982A9B3E6986000BDBA0FE
                0385AA82FB3EDCA5FD16A389237006E7EB2FFB00AA5914E0E146F61637714AD0
                8B3C6C3DC8C5CA8D025D83291DBD998CE8144A0E8FA62C74AF8BF0A6E625E5E1
                63780478027E5E0BA5F841F5037AD6F04CB0C7758FE9D5BD57823DA987FEF2EB
                6301D4E4C4382E89EB51391552323ACD3CB65055504138E48541A6894255D305
                F9C99AE54B70FCE438494B415781B8D6A9B334C974E940BD3BF5C111561B91A3
                8DE7FBB8F0CC5AE83E8E4909A56BD1D9EE8F56C33F0C3BAD05943E0065E5AA75
                3B5D56ADDD72475159F3E3854B8A74E234C603018AC25515525050A56B082BEA
                EA3704605454B485377AE5CA8D020C47E1411888431C6A000883D2020B3FDFB4
                690FEDDF7F82CE9CB9228420868BFF0C83B265F36E2485A704506660F28CA7EF
                278F9B227C3CFAA7511860427208199F41E98741E8C9187AFE79C80F386E3A98
                94E4E548E1DC059CB7E1497C0BB233B627376B0F0A7209A400671FC201730AF3
                F2A3F8E07884A2244A8BC25191D84CCA4069CB1FA744304CC9948A399674CCB1
                E4266266056014A3A2A9C60054551E4A677C2E330D0972660D12DF52E836188C
                C24C4B1ED45A1D150DA19AF90A09ECBA654B8404FB98EC7E210475428E222985
                90D4430683E11BC9F3965F73B06FF4B384C8ECD4C4D8BCABE84D8D8F8E29E892
                9856F30FCFF4FCAF8392985E2C0EEB0E5576F645050D13E427E567E514DE1DC6
                60D079794C75011239E825721795F1FC1AC95FBE4EE72E28D1690CEFEC3D7082
                96ADDC04A0908F9CBA48C710420E1F3B4FB248520F1C3A4DFB51D5EC3B7852B0
                B372F026780D1B7F8D3D0A437506FAC90194C6A730D1B61AC74867CDC0C4186C
                EA8469346BEA6C403303AEFD6B0C2F0F16AC6BC7EEF4C3A0EF6912CEDEFC8C63
                146B30B8AC7B5D5518653442126DAE8D01281D2372303623071C05BD65A84D2E
                E606E471F316F942DB0941391FED13488941C867A007A5A3D4CF888C132C2F3E
                857262932813A57F6E5CB2F03C2B3A41780DF77BB837C5435685E8F914A46751
                4C408830DCCDA3992A0036C0D599FC5C9C00C5127C9FD248BC3B0AE1884B6227
                4B77918399C7DBCCA4A2EAC4C83CC7B8C8DC8DB1D1855F2726564AA764D6B7FE
                938280440CD6091ACA282FBFC8CB862637538F9FBAF062DFC1A32239781386E4
                C4C97374F2CC653A74F49C60075112F29BCF402C5ABAEEB7AFF173FE5A0B24FC
                C8C69F63B0D66DDC454B3125B604D3620B3100BD73E741BA20771555911C729C
                4B00E6082D5DBC82E6CFC5CC0942D0EC697384C9B151C347A253FB1386987F44
                8EF21D0DFD1EC73F71FE8641198169F8EB9731A2A8AC8186E20DD2BB8681EB2B
                2A64AAAE45D637008EA63219ABE25807B41CA3EB9AA4A7785D307EEE6862497E
                F62E1486AA2EC2D38F921146E20342059018A2A4E0088AF10D123EE650C38D4C
                56A1E34363292A304400252D2A0A612C8DD263001D4C19C00CF9FA2B8C1FFCA2
                C20EECDF97D455AE8BB2130A3E385978DD2FCEA9894A8E2E380F50C602942EC9
                C9D57FCA9BFCAF7B14FE0692324AA4D1EB19949D5FB5C33720DCE7CCF92B8D07
                0F9FF878F20C348F834705508E22E9640FC2C690EC46B5C29E64EE8295023C2D
                50B480C1D0B077E13FC79EE6BB1F4792046631FA0DF851806BEBD6BDC857CED3
                952BD78530C465F495CBD768E3FA2DB464D1725AB46029CD9C3E8796CC5F0C60
                66D1D89F66D08F0347E3C4E05424B253680A0EAC8FF969040DFEE61B1C3A9F8B
                E9F993744349950C55D448EBF2557CAC808FAF90BE12BADC8A67C8444585CC54
                55C9524383AC711688CD18678B55CF9EA54B870ED1B59327C908DEC150494978
                7432322267ACD370C05190409C3DB631311772212CF8423873C640B70539E2EB
                B70C6FC053D9C083DD20FD6B5768D1D4F1D407554E0F94C9DF6022FFA4EC0151
                7C58E487E88084C789A19969D929653A2931C50B93E34AFA26C49549C6C595FD
                296FD25A4011C736C51E25157767E188A3DE2585EB05C74F9D7F2D7BE464F3E6
                2D3BE9DCF94BC29BCD8030082D6070389A3D6FB9F0F923C7E5FE1FE3D73348A7
                3090CCDE64F1B2F524DDB1277485CEF4E3D0313479F26CDAB061075D4229ADA8
                A84E97103A58A4DBB97D0F2DC3C8E30A9E7607284B17E01C0F6CD5E2ADF4F38F
                93E045C6C2C38CA11F077D8BF0330E83CD53A0E07E4DCBD068533C759E6EEAEA
                C3836020FAA21C299F3D46EA178E90C1B573A48D9D29EAE7CF0B60F0C7A6D7AF
                93ADAE2ED9EBEB931DF6A358618F8AABA9295960F18E16145F7E8DFCC183248B
                333FE7F7EDA3FDDB76D2BEAD3BF0B89D362E5D4E5B57ADA04338CCBE0DC92BDB
                A6C5F368EDBC9934E29BFE34A4DF97347DEC683AB4739728C8CBE383A783F323
                1B2387CCBBE54F4CE223B2D6A7C6967C9B915CD92139B1F24F43D22A40494DAB
                104BCFACE8001B9C945278F09A8A7EE0D1E3971AF71D38F3E1C24555D1EEBD27
                E01D208E9DBB8C37FE1280382780C300705859BB6127E17574EA0CC2C869053A
                7BFE1A9D9353A1D36795F0B1325DBCAC41278E1CA691583BC1BD0E1E2CE629F4
                AFFA7E495BD66F16069F54AE5E170E7DF1B10D591C9198327E1A0EA9AFA7CDEB
                B6C2A3CC45DC5F478B662CC0ACEA441A3D6C34461EC6D3C4319368ECE8093402
                4727D838B7D9BE69273496F398A95522C54BD770865901FDA38B74F5CC391CFC
                023C729704E363199CD7685C5543D75A1BE30DF030F8B72DF40CC9C6D888ECCD
                90E798FFB2EAC2C1549F6CD19FB1C600B8390433038889DA57AEC17329092714
                6FA8A862F3C1753250C57627EC5BE143EBBEAECECD1E0EB7DEB9DAD9DCC3630A
                86D48DB12F661386C2066382B033EC4F879C968EF2FFAAE0D6F24DA465944BE4
                E6D7F54ACB289DAD6F68AB257B582E6BE7EEE3CF4F9CBAD27CF0108321878414
                10C090C308790927B5EC49366FDB2F4072F1323CC3150D3A730EC92E20614014
                1475844723E40B7B766C170E47717795C5297E1CFEE3301C21BD2274A795107A
                AE43F2E74706641666631762989AF595E598515D366789305CCD2391F3672D10
                7298C913A7D1B8311369C6B4D9347D2AA6E6A7CC16FEDC02BC8641DBBB633F76
                A09C22C5B3E771BCF4C22F90E098299FE5B908C5F82274206E442A23F43138EA
                1808D7C25A2FDE5A60009DC644E31733C68C2E43C2B0D86002CF4AC7E097BC47
                5D930CD534C804678E4DD177B2B8A127BA6968D064AEAFF7CAD250BFCEDDDE2E
                0A27033501C61A4C0DFE888D9732B0BFDB256ED533B389C945627905F5F02A65
                DFB9BA876C3B76E2B2333C4AF5B11397DE9EBFA022BA8872F92A9240B64BF84D
                E2DC82B515798C04B494C75C3E6B6818D2C58B2A8266A282E1677E7E15676354
                1495481F9B0736AE5D47BDBA75872ED21E15017A2310A2460E1B211C06E3C35F
                D715D5D0C73113BCC1E2794B69C9BC15B472F15A5A06597FF9221CD780F1E719
                9405B317E2F3CBA15DAC156669199CA913A640E21F875C662CF29849386A3107
                87DB976069CE7674A4F7D239B4F82F9F827741FF49F028F877B5E121B4145584
                53879A989C63D35650205D8C32F02E385EF16580632186181A67E38F79698F91
                860E994394B436B610CC42DF446472C3E883B9A1E9B39B6656A538DCE513111C
                7E09434E0B01C73718D3EC8C99DE7F099256117A5A08CECCAE9248492BEE8A83
                48E394AF1B9CBB72553B5CFE92DA3D350DE30FEA1ABA226DFC16B1E163D2C4C8
                228B6F6A6A7A0234AC895C851BD7D4C4D033C6079494B48447751CA9E047858B
                97C8C400E78AB1CB8417E074EFDC0D67763A088FDC7DE5379A67655595D40553
                B9AA2A3409B7AEDF89377C86E059D8E643DA9F83E31A5C152D9CB388562F5B23
                2CDC59B178A5F0F1DA156B68D5529C284412CC87B3664F852E33793A8E984E15
                92DE8DCB56D19E8D5BE9089A736731E9CF9E85C3107B12C19B5CFD359C70628B
                3CC648F53A19AB7168C11241844836FE58E79A2ADDC0E133636D7D01103C36E3
                9CD15B8072DFD9CE311380D8A625A61E0624533292D3FB01940E00E59F0E37BF
                F72EAD22F4F037841C452C39B5482A37BFE60B7B47BF7956D6EE1ADABA1669FA
                86364F0CF54D3E9A60E400B39E6480DF22361E21B801895F535D872E20E1E5F9
                14550850782DE9EBE14DC7C76C7A80CB10EB29540089B6A60EA923D95CB56235
                F5EED907C214775D2505B1CDC1CE8534D5D00E38839C027A0DCBFBA710DA962E
                5A4DB3672E4172BB88664C9D4733A7C17BCC5828188799E99366D296B55B682B
                C2D556E43C9BD76EA48DABD7D286556BF0F15ADABE71234E03AEA6F52BD7E2F3
                EB69D39A0DB465F53ADAB6768300CD81AD3BE9D8EEBD746A3FCA75544F57CFC8
                911AFE5B3807D1C12805DB6584AD6B97158493897AF024DCDCE32323F0802265
                85EB1F14AFA83EC7C980EA5BB6EE11D8ECA0939490BB3923AD78444A4A414F0C
                7E4BF311987FB428E71F7DBDD580C2DF684656B95861F1EDF618A819E41710BB
                F696838F8599855301664C5EC09A4DE162191686A405085DFC56A9AB6AD165E8
                2E4A10E818289E45E139140DB402F8B9B6A61680414C3730269B9BB6F83B4C68
                D78EDD5801FA33F5EB3B80E4CF5F21C75BAEA484137847705CF32C1250610C01
                A537B7F2B991B87AE516C26A511A3B6A328DFC099B077E9E80A4F617E3DE10E7
                2EAB30DBBB6115CAEFF51B69D7966DB47FE74E3AB4772FC9EE3980C7837470F7
                7EDAB703E30C5BB60B26BB7D37BCCB3E611BC2F13DFBE8CCC123589D71822E43
                7064BB78E424C91F3E81D380677FB5F318983AC767A34558CDD104EFF746475D
                AFF1868E491686919C9212B2CF65A6172D0028DFC6C7664127C997C41EDD7F1B
                9256157A5A88CECAA914CFCCAEE80C5886E2E281DDCEAE818E0E368E65F6D60E
                AF6C2DED9A790492CFE0981B590833AB6C962616C2C1AFEB4AD8F18AC536E6C6
                266461622A3C5A9999234CE99193930B595858213C69D34D2B3BB2C144DC55FC
                B61E3E741C0DC28B4289CC92FE4694CD3B31B8B40D5ACBC6F5BB48F600803975
                85F6EC3B492B566DA3695316D2CFC32708A5F2989F26A14C9E81BD24D8CB3672
                B200D2B2C56B680D36176CC44682AD5B76D1761C44DFBEED30EDDA798CF6A282
                E36EF5FE3D87E8F03E593A71E0109D3BF4CB4E15B62B80E0323CD92578B20B87
                E5F0B57380E70CBCE52591BCDC45D1F973179B611F14AE5C7B8D26E9033B3BD7
                122FAFB090C0E0782DAC28DB9A5F787B6C56767DDFC4E48A0E58D1FE6F859ABF
                F530ADCAA3B47C737905B5B8B420AF1BA6C447E1768AC3DE6E3E9E1ECE9E556E
                8EEEAFB177AD19D0E0C017DE6C0B6BB2C336013EDF63618C59145535011643BD
                1BE474CB9E5C1C1CC9DAC2921CB0B28ACDCCCC4200E51AC4B17367E501C611DA
                BBE720EDD8BE575066B9F3BC03F23E8F2670477AD78E4358117A8CB66E3F447B
                F7A38F74F83CEDD9758C96E378E7D4F1B369E4D0F1806434609926D8C471D369
                F2849958543C871663646113364BEEE1FD70C7B9B37D95CEA1223B8F8AED344A
                E8D30833A70F1D655044974E9C626BC6F29DE62B27E59B154E5D6C563AA3D874
                EDFCB58FCA72CAEFE5CE5D788B0DD92F4D4D2C1FBBB97ADD0E098EC88F894E0E
                4D4CCC344578399693573517A1FBDB389CF643FF460A173DFC47BC48ABCC51FE
                96607816C9AC9C8A9EB009610151A770BCC2D7DBCDB7DAC3D90BDB823C9BF028
                C2581F011E61C8D9C9CE919CED1DC8D4D048D8D6680E3DC2099A828B833D7962
                5C123F644CBC5D876CCF6F9A1C3CC909DA8F7D250C08F77BD89B1CDC8FD6003C
                088F221C963D033B871996F3B419A1672B069EF871CB9603B46CE966DABA017F
                76CF1928B58B01C8629A3A71154D9BB68EA6CFD94433E76FA7794BF6D0FC5507
                68E1EAA3B4759F12ED3BA64967E4F551B21B13B422E44FA8B2AE6960FD84CA7B
                DDEBEA2F3414951FAB5C527CA87251F9A1BAA2D643034DF3FB66FAF677AC8C9D
                AB6362938AE31352D393533223D233729DD2B30A3531417F0887B71625A6140F
                4F492FEB8D03731D92D2ABC493D26BFFE390B4CAD0F3BB10240648A460BD71BE
                650AFA1D672282A3BCFCBD024B00CC634F17EF77F0324D3C031AE41B883D2718
                A87674227F6F1F010E86451B2BC7AD2D9004234F31417EA385D91606E538F6B4
                F1E4DB312CAE6150783E851B84674E5DFECDCE9E46A7F9F455C10E1F97172059
                084FB26D9B2C003B4D1B5663C5E83AE41C3BCFD186B5B228BD8F42ED3D4EEBB7
                A05BBDE33CED3AA040074EA9D13139033A745A8FCE5C3627556D0732B7F4A15B
                0EBE18FEF613F97806BCC77ACF7B90E7331D2CAD435D6C1CFC7C9D7D7C220363
                7CD2E3F33C31D4E45C925B6F95929AA58BB1D0CB19997907B3B20B566564174D
                052883014A9FA4D4924E004512A0FC5700695582DB1F65DC804480A5ACE8761F
                1C7798949654201B17956189CD8FF1C101D1557EDE418FBCDCFD5E7BB8797FC4
                3EB2E6003F7F912F407177732147875B98A335253DAC1457867A698A04D70CC3
                D72A68CEB12EA38C8A88C7152E60528EB596DF9B820276B9FDCE0E032459340F
                57227F59BB7E0F428922666F2FD2B265B2B472C5719A3469078D1E8705C623B7
                D057433750AF1F61C3B6D180898769F0ECB3B47CB7216D39821388575D48CD28
                88CC6C42C9D631A4D9C72FEA795C6C6A3A76CC6963E9E09EECCCBCB5B959C5AB
                F3722A57E565D7ACCCCCAA5F9A965E332F2FAF626A6E6EF9A89C9CB2EFB3B34B
                FB6664957505281DF83C1420F9AF02F24980C2DF24C3929B592E05EB89E5343F
                E19CCBAADCAC52F9B4E43CEBE888F888E080F0021CCDB81BE81FF202A0BCC7E6
                C36657B4DB03FC7DC9C3DD159EC410C34FD7491725338F556AA14AE2A9393D94
                D8373031C79A0C6B2D2CD0B1296371CDB56BBA822929E908761AC2DE11789CFD
                D06BF6ECE3F14A79DA06CF316AD432EAD9630C96D58C2071A991D4AEFD586AD7
                6912B5EB368B24FB2FA7BE63F6D34F0BE469CD0133DA7EDC8A4E2BB991A66928
                99DB8631284DFE81B1F7D35273FD01CA0E803214A07C919359D43B27ABBC37D6
                68F44A4EA9EC199F50DABDA0A0AA0B60E90450DA67659548001271D85F02C827
                030A7FA369A9E56258272199935DDDB9B0E0767FACE51A8D5D22CBD2D20A8EC4
                C767EAC0357BFBFA0567E06281DB5EDEBEAFDC3D3D9AACB043DEDC1273214EF6
                C4A3959779B6854B6878125CC444D7AE6BD3558C05F0E3151C0063BB0C2FC26D
                006E07B0C95FFAC5AE69EBD2666CA63E09714C4E5E9D162EDA4683064DC3D4FB
                30341A4760DC7032B5939A4DED645650BB2FB653BB0107487AB83C0D5C604C93
                7779D356F9683AA4144B978C32C9C8A9886CBD8BC83D20F723161736E417D739
                229C2C4358419E912389BD74E2A9D995E2E939F5E22959B7C59333EBC573B32B
                C57096073F837F5F0FF9477A49AB96F0FFEC379F9559298E3B76A47273AA6400
                CA17F80D1B8CDFB019F8416F8F8B4F51C17525DEAE6E1EC53676B6CFCD2CCC9B
                4CCD4DC8F2A60599A31CBE88461A0F44C943C86238E4D0B83B0971EDBCBCA2D0
                6014ECACA2D0376AB193C84FD84E5DBA427B8F41DFC0DCC9BA0DFBA957EFA1D4
                A1C30F38BA39843A779D42521D6650BB0EF3A85DD755BF80D27737B51B749C7A
                4ED1A0911B1C69E3B9F0DF40D1B3CB256BCF02F20E297C1F9B52568DF10AAB8A
                CABA79C52595DD73F2FFF966DD9FFDD9FDBBAF6B95E5F13FFA8F82DC2F969357
                8B466275079486DDE31233BEC92D289F9A96952BEBE6E5EB606A6955666963FB
                DAC4C25CA4AA09351302DB05F46F648F9C161A8C0CC7B90B57855104EE441F3A
                22F79B1D3E7A810E1FC5B41CECC831086FB04DE8D39C47BFE80824F73E5F0DA3
                5E5F0CA33163D750E72E13A94BF705F028B3E0519651BBEE80E4AB33D4EEFBCB
                24394A97BE5DEB47F3CE15D006F9743AA155408A376B49CFB19A6C026A45A1C9
                F7DFA6143C2CCE2AA8D34DC9CC9F9A949E8BB1C4BFE636AF7FF4F3FD9FBEFE49
                82F2FFEB2D3500A64A3CBFA8521A87DB7B66E6168C4E4ACB3CE6E6E51DACAEAD
                73EFD255858F4AB847E714E65A793C6117A6EDB76CDF8701A8638237E1D1489E
                67D90F518BED802CA6E420721D44498C0E36E0C15920D8F683B274FC823C4DC7
                26C77652BD3025B78B366F91C7619721D4BDD762EAD80D90745947ED7AC39330
                2803E5A8DD1055EAB7D48D669CC8A25DCA8574C9B486B45C1E9289C71D720A6F
                14C5E7BE7C995DFE220DA05CCACC2B19999E53D4292DFB9FBBF1E25F79C3FFD5
                3FF34983D2F21F9D995D2E0693C4C6C83ED81CB9203E29DB18109462D0E92DC6
                1144BCBC8FF7AEF14939DCCD23CC9EF0A66A2DCC81F0A66A9E4351C38132DEB6
                C47B6679DC80CFE8F25A0BC54B4A287F97D1EE1D1BA9FFA0EF00473FBAAA9548
                5F0DDE4FBD7B6DC2B1D34524D36E2C7DD1693A49F4DC00500E51BB915AD46186
                057DB7C982169F0AA65306587E63DE4096DE0FC925F01ED9BBE7351716BD7C92
                10571C81BCEB005A17DFC1A4FFD537F1AFF8736D0214FE41312C00A5537A5631
                AF19BD78F18A6A1AC6215F62124EC4303000A778E12FA0E175A16C7656B784AD
                082CDC39E1B86AA04F10F9B8FB0A221E3FE26E1FE10285F973A6A239389B647A
                F4A66EFDC692A6490EF5FF719F004A1709EC530328BD3B4C25C95E1BA9DD37C7
                A9DD583D01941FB658D16A24B2678CCA49DBE60159F93C226BF76AF20EAEFA58
                54FCEA6E7262997B6E4ECD5A408292B75CF2AF78C3FFD57FA3CD80C23F008082
                1054FE6D566ED9015D7D8B488C423E0130CDEA484259F2674FC2D36CBC849861
                E0B51851A1D1843B7C04C3ED1B585483E57B58B181FB8A293B2D47B8BB67D2F8
                5168060E472E224DD316EC24E35BC5D4F3EB6D4864D76097DA124CCC8DC7F4DC
                7412EFB783C47FBA44ED265B90E44C5B1ABCDD9136A965D205AB3B74C3E31599
                F93C26ED9BB91491F2F87D7EC9AB4A88641639F975F33272CA7BC0FEA3BD997F
                15883651F5FCA3FF788022995758D5AFA0B866A383B38F1F8E773C5050D26CE2
                B63C7B0CDE77CF034ABC3F85AF5F610FC28B781263920430F8A60D8683F7BBF1
                621E86860792268E1B493F7C3B00DB0124E9E879DCF805503AF45A03ED643186
                9F1608A074ED3483DA0FDC4B9DC6290B90B00DDFED4A7B0D4A48C5E539990534
                91A1FB3D52D44F1425E5BD7D9D53F83C3F3DAB563DB7A07E1220E902FB4B7591
                7FF4B3FCDBAFB7358F220E487A1796D42E0F094F70012477AE5DD7FDC8F90683
                C21E85BBCEEC4DD06814C20B6F69626FC2C03018BC23BF003772B057618FF3F3
                90113461D418E1428276D808606C1504753585243881955828C0D24E6A0A75EA
                0160869CA40ED30D497C9E1B89CD75A59FF6FAD341D35A52F36F26C39066BA76
                AB9A2E18248A124A9A5E24153C494DCDBD2D9F535437223DAFAC23EC3328FF2C
                BDFFEAEB730B2A19941EF945D50B9252F36C9454746A55350CDEF3A2E15BD882
                C0F90643C2D03028BC8D89D777B1476140D88BB07108625838C91D3174240DFB
                FE47EAD2BE23A090210FFF4C3A7EC99BA47AAC807EB28C3ACAAC22B10ED3A97B
                DF652433528E3ACD342689F9EE24B5D09346EC0FA4FDC6D5A4E2F381D43C9ED3
                C91B9974DD264F145FFCF15942DEA3D8B4BC86A3D985B53F0292F69F4141EEF0
                AFBEF1FFEC9F43D8110324DD90A7CC419E6206502A35B48DDF213F11F10035DF
                C3C37BF0191A8624146B3482FD427E0385BD08EFA2E55BC238FC7085341AB75B
                0CE8330007AA244946E60B0A8D2EA6B5BB74A843CF1524DE7939497659094576
                01C97CBF85DA4F52A17673ACA8DD422F125FE64F630FFAD3AE1B6574C6F1211D
                B5ACA62D8A51641450DF1C53F2F14962F1A3F094A2FADDE985D583D20ACBFFD4
                F9DF7FF6E7F19F7CFD5FF626FE27BFE93FFABB5A4041E5330BDEC518A0946BE9
                9ABE436523E23C85430F8719F6300C4A74588C50D9C484C7FE060BE728FC9C2F
                83E273C87CA56D9FAE7D04507AF71E48510915347BC5256ADF63397A3B083BD2
                8BA0C82EA2EE437650E769EAD46EB625B55BE049922B020550B66A15D241F31A
                DAA6954D2BCEFA917DFC7306E5514AD9D3C0D4E2DB9BD20AAAFA01947F79E8F9
                AFF8B9F2BFD1E640292AADEB9A965934133D13C3EBEAFA65A87EDE62224EC433
                A67C1483F312CE3DF8E2494E66D9A3302C0C0887215E50CCF94A00B63AF1AEF9
                F1A326081750F23ACE6E5DBEA4A4F46A5AB8F20A20994F62322B49BACF4692E8
                BB9EFA4C384152B3F4A9DD3C3B80E24A3DB645D3E8EDD674D8A4980E9896D28A
                ABB1B4E96A1045D750736CD9BBFB31798DDEE9A5B757A7E495F7492B2C6DD515
                4F9B05051E656642728E21F293323D03CBB79888C310B28A3069CFB90983C225
                3283C21FF323871B06853D0EEFD5E75C864161E32B6D1994CE1D7B532C96E44C
                9973125DE24524DE05BD1D849F76BDD750971107A9DD240D841E1B6AB7D8837A
                6E8FA129079CE98C4D0D9DB4ABA7B52A49B4E33AD69962EB2940B90B505C32CA
                1A96A5E657F4FA0CCA5F989F30F51C7AE051BA65E694CE0A8F4A3656D3342CD7
                37BAF90E6FBA88C30E0B6B187612C20E83C05EA3051C0E370C0A43C31729F05E
                7C8664CAF8A900A42B362E76C02AF15E842BEA68F4845D24D6793149775B0FCF
                C21DE32D2431FC28B59BA24762F3ADA9E34A37EABF2B9CB629789049C81DBAEE
                FD80766926D131BD688A2CA50F09A52FEBE2F3EBED72CA6E2FCC2CA8E8915950
                F6D9A3FC5531B4051494C6DDA0A7CCF1F60B3743225B69646AFB0E6146C4B78F
                F236000E391C7E3C5DBC046FD2F2C8892D1B03C4B90BCBFB7C6C94CFFCC874EA
                2680D2BD6B3FCACCAAA1293321D3C3A34875457F073D1EF17EDB497AC4097813
                53EAB8DC89BAAEF3A6017B22E9AA5D3645D5101946BEA383FA9974D12A83C28A
                9ADE03942A80620150E666175575FB0CCA5FEF51C4014A777896F9B71CBDAC90
                C8D6985AD8BF67ED846FF562AFC183D92CB6B5781216DF1818CE53D8B8746660
                58C1656FB20E57B4B597EE2C2CF7EDDFFF3BAAAE7A4CDBF7689354673408DBAF
                C690D25612C35881D4E8F324B9C8863AAD70A4AEAB1DE9BB1D1EE41C514A58EC
                48D6B16FE8B83EAE89712E1045E5BD7A9B56F2BC3435A7C620BFB866465E5175
                D79CC2D62DB6B5C51C8541E9015B646C66774BE78679BDC54DA70F2CE1B37168
                69E9E9301C2DC62128C43F540088C3133FF26DA5BC75892FCC96C60A5106E5EB
                AF7FA4E2A23B744DCD973A7547592C81FCA4EB16E4283B4862E4590114B6CE2B
                6ED1B7DBDD292CFB213DC44FD92AFA151DD54B24738C1700943719652F0B53B2
                ABB500C964C0D2E53328FF3B1EA5577159FD726D3D3357543C77AD6C5C9A583F
                C1D9202127E150C32188BD0783C2550FE725BC369DF317FE1CC3A2ADA6231C1D
                E5DCA617545909AC0DEFD1B32F36528691B67E3875E9B99EC43B6E22F19E182D
                E8BB872421B6492EB426890537E98B0D4E3452D69DB2ABB1E40FBBEE2D42EED3
                118D70728C6810C5E63D7D9D5BF13C272DAB4CB9A0A0627C717175E7BCC2FFCC
                21ADFF66986F6BE5B104BCC91725E5B7D72191F545C5F3E0A6AD6B338F14B0C7
                68298D59B6E7E79CD4B200C7D0F0E7788F3E871DCE63B8BBCC87D179E460C8D0
                E1D459A62B7A3DD258BAA349CAEA7E022832BDF650C77EB22439F010B51F7391
                A4E04DA417DBD2777BFC68865C18956375681DD6801AF9DD2659D510728BBD2F
                8ACB7FF632AFF2457A6A66E9C5BCBCB29100A5D36750FE628F52545A23896B5C
                BEC2352EDBB159325853C7E0B19D038322074FE2F11B2CBC263D047BD45CE15D
                70EF2F05054662E97110050545D14DAC26B5B47626E4383415E78B794472E172
                4CAE49F4C2396519EAD7E7075A306733EEF4DB4462ED17D0F49576D4733442CE
                2873929A78937ED810415F2D52A32D57ECA9EAED3BAA7CF3962C7DEFD325FD34
                72896C146555363F8FCFA94FC82FBB7DAAAAAE7E686E6E7E87A282E256DDE769
                73394A7159AD3440F9362A36E92040893230B6786A696DDFAC8AFB89F9EC0F57
                331C6A62B1448F2F5FF0442E128104D71F378D32283E3E2164834DD448800558
                78DF1B6F79923DAE8029B64102286C03FB63D9DF8FC85124E7D2B7E35469EEEE
                6CEA31DD89DAFD6C48237626D28CC3AEB45BC58D32EEDCA5BA8F4DA462914FF2
                7A29149CF1A6B9FC3E3D8DCBAE8B4ACA2C3E905350F85D7A7A66AB1E586A0967
                6D26F4601452ACACF276073C0E75F7F23F8D4BA1122D6EDE7A8EC5C622236C32
                0A0B0C15C4340E357CE902DFD0C1ABD3D9A3F878079397672039E30E639CE7A5
                1B865684FC8676EE39426BD6EF200D3D4BEAF92586A9C5F8A6CF8EB85DAB37F6
                B7CDA72EBD9791588F9DB44DBE9A969F29A27E0B1C497AAC010D5C881D2D2691
                D4807B78B0E69E6EFADE217DC7328AC97BDF5C504F0FA352CB03E3D2F3B6E616
                167D555050D4AA0796DA1C28B83D4CACAAB6B1536149F56800A2A0AAA19B71D3
                D6F1E52505659195A9253C09E47378140685BD491036303228BC5FDFC3DD1F87
                C6FC84B0C306459730A2206C769A357719A96387ECF0D1D371055B57DC2DFC05
                756ADF9FBE1B309B868E821A2BB59624BF55A755E74B69A7D67D1AB72B9A86AD
                C18E16BB14AA7B27A29227AFC825E21919B954925FC2C38FC9452FEE24E6D4B9
                E657D4AF2CADACEA535858DCEAFB3C6D2AF4600A5FACF6F6832EA515F593F50C
                4CB5D434F50A1076DE6071A0C8C1C61E95CD2FD36C6CEC4D8203C3C88F2B1F84
                22676C9EE69DFA86D8B3CF87C22E5F55171605F242C169331791ECB15374F8C4
                198C3EF613EEE9EBD16D00569D8FA43113F6934C7F94C75DF6D137B30C69BB62
                1E9D32BA433BAF8690BC7104A594DF23DCAC421A1629A46A9A483E51B5EF324B
                5E5616563D31AFA87F3427BFB8AC7B467A4EAB5765DB142805C555E2953577BB
                9794D7CD41120B5556BFD2D4C2E6FD31AC1FF576F31272140E3D3C7B12191E43
                A1D8E31A04EFE28BD29877EB1B606D3A9F1ABC7C198B0291C0F2FA510685D78D
                2EC2221CB39B76C29602E13247C91EE8267F4DFD07AEA0EF46635869E039C0B2
                9B06CD35A60B968FD021FE48AE890FC90BEBC85D23D2C8D0218F6C7CAA444905
                6F5EE556BCCDCE28BCA39C5950351EA706644A8A5B7F69DCA64041220BB1ADBA
                173CCB5275AD1B8EDA7A460D00E5231FF8626FC2C6A0F0C8634BE8618FE20CCD
                C4D0C002BB52B0E80F7BE178353AEFA7E535A567CE5F15F294854B97D14585AB
                D8A97F967EF861B030E926D60E579D74F889060CDE448BB698D19790F0C5FA6D
                A1BEA37048FDB80D99BAE7906F4C3E85E28ADBC8D4279490F3BAA9A8B6E9614E
                C9A3D0E4EC32D98C9CD21FB2728BDAD7D5DE6DF5154F9B020521470279CA9758
                09B101F989AFAEBEC90380D2C417303024BE1E3E428EC29D61CE4FF8E6302E8F
                2D2D6C852B5CF8A60EF6269BB11B9F171AF3C6490E3F9CA76CD8B295264F9F21
                EC57397AF4388E92764183F06B00F33D49769D45D25F6EA4EF26C9D3F8E53A34
                6496228D5F7A99D61FD225051D5B0AC1ED5FE1C98F9A3150FD2ABDE8797156D1
                03B3A2AA7B8B2B6BEFF701289F4422DBA640A9A8BE23858360832263927723F4
                84E106B1270A4AAACDF02C505B510607870B1E85FB3D1C76F82E42BE518C2F83
                52C252625E9CC3FBF1F7F3AE14ACE3E2C3612D474DCF6291F09A356B68C78E1D
                585C7C43D880F0C3908900A50F75E8F6338E938EA2CE7DE7D08061EB68CAC253
                B4E3880E9DBF6A4D9AC6AE2207EFF88FB925AF5E6617BDA8CC28B8E7955D70F7
                505E69FD7078C04EC565D59F84376933A0001231849D0EC85386F805469CB876
                5D331EF7113EC7552E22BEF7C7CFD3F7375084A9367814BE8F90AF96E32BE518
                12BEE869DFBEA3B407174FB276C2A0B46CBED6D1D1C1D7F6D1FCF9F369FDBACD
                C2064A752D0BDAB5FF128D9CB0967AF49B4D1DFBCC22B1AE93A9DB005C0AB5F0
                90E8E839A3261BB7A8B799250F1F5635504149F547B7BCB227A7720A1B27E514
                D7F6C4F7FAC9789336030AC28E1896CB7442223BDAD1C55B019E24D3D0C4F215
                AE9C1359E196520E3BEC51F8760A0605BB54C8DECE49586BCEBBDBF8A6B07DB8
                7C720776B7F1650A7C3307E7291C76189653274E624312EFB9BD46BBB1CA6B1B
                EE20E4AD07DA372C4945CD8414AFE993D235137CDD48A4A965D3E4E014FE262C
                22F75166C1DDF28687A2E8BB8D4D26B5756FF69696DF1F5F5054D71B9E4F0AA0
                7C32DEA4CD800240C4D2320BBA9457354CB5B476D4C16A8B22334BDB37B8F747
                E4ED178C1E8FB7000A0F2431289C9FF08DA67C2F216F5EDA0B2FB20B806CDBB6
                4F0085CF2373D5C35E850FB2CB9D3B4F0AB845E3F2156C37C0CE7B3EBBCCFBDC
                E4AFA89386B625B628B9893C3C639BB03FED6D51F18347F71F52292CB2AAE1AD
                25EC6C65D58BA5A5654F861416DFE99E5F582B05EFF74941D29640118722DB1D
                BD9E79370C2DAC9455B5AAA1A5BCE75517BE08332DA0B047E1CE31DF89CC2B48
                2FE35CF111DCD0BE1B57D8F22648BEC78741D9B31FFBDC90A77042CB9E859B8A
                87B0EF6D37CE2E73A27B922F634045C4FB550CB010D8FE96EDC7002FAF671141
                41954931095105B92566252575270A8A1B9796563C1A515450F765617E6D272C
                C491282AAAF9E4206933A0001009849F3EF02A2B55356EB841BEBF8BC539C24D
                628E2E3CFAF84B8EC2892C8F1A58635F0AEFA03D833516FB7049820009BC095F
                CFC2B0ECC02DA67CE50BC3C29EE500363B1E933D8E7B0A91EC222C1D06408A2A
                3A646BEF260A0E0AFF10131DF9282F2323AB2827C7BE28A7E06C5971D5D2E2E2
                DAE1B9050D7D014BE7E2C27A29C0F24902D2A624FC9CFC32C9BA86875F454427
                6DC5929C4024B08F4E9D956F8667411718F7FCA13C8E0C8910BC09CF9AF0666B
                5E602C7B10AB41B10B7633EE26DC84BB8EF96A968D78E48B1818168682F51479
                5C31C7D7DEEEDC8EAB700F9C2615757D7272F3A7C0A090263F5FEFA7FE1EB732
                7292228D6A8BB3B6DCA9C81FDD585FD3B7AEA6A15351498324EC9306A44D8102
                4F227DE7DED31FFC83220F29ABEA44233F79CA892C5FB2ED8A7C24C43F18D27D
                A4306BC2034CBCE9FA3414DB9D3BF6D1DA359B68DDDAAD78DC42AB576F4619BC
                45B82D6CEB8E83825761500EEF3B4E7BB71F145689AAA81A9091991D9959398A
                B0DDE96D745444454662B84D4D51E6A6BA92EC1F4BB212BBE467A54BE6E5B4DE
                5D27FFCA80D327DF3D2E2BA9172B2CA8E8585E5637025DE00B8A57D552A18DBC
                C00DEA22D648DC713CC313550E27B5E82A132012F6B9E13A3A788EDDB461F30E
                5AB57613AE915B8BB1025C7A808FD76FDA4E9BB6EE822A8BCB95B0667C9FEC21
                3A7EFA0C5D51C26D1837706F0ED6A43BBA7A70A2FC2228342A25392DF70272A4
                D1D046B8D7F449F46EFE5958DA04284585953255950D131D1D3CD414AE5CCFD3
                D5317C8D0B254516BCFB04A030201E10D8385FB981CD90E77029C18EDD07E039
                B6618C600B2D5FB51E3D9D55B410B77FF1C76B376C1540D9B3FF309259DCA17C
                F2149D93BF48CA6AB80205174BDEB47320170FEF66FFA0F027A111B111A919F9
                7B11FEBEE179987FF60DF8545EDF264029C691879AEABBB370DBBAF195CB2AE5
                EA6A3AEF9078A21A7111647A06856F66674D05892EAA993382276128D8933024
                73E62FC1D573B8B8091FB357616F73007BF2CFE0E60EB94B97E9AAB20A69E919
                90A9250EBC3BB992878F7F737058F4E3C898C460B40DB6A1C7F41540F9A444B4
                7F06D24F1E94F2D2DBE225C5D5BD00CA625C2460AF7C4DB35EF5BAD607D647D8
                9BB860609ABD89034A62887042D8D98B1DF8ABA1B032140B70332943326DE63C
                8C3ECEC585964B69C5EA0DC851F60ADE04F32CA4842B6BB1134EF0269636B7C8
                C1056B33FC839AE14D1EC7C4A70422EC6C8688D6EF33287FF1ECEB3F433A4091
                282BADED0B5B0750BCB5B50CEF039426852BCAC2A82377871914CCCE12CBF97C
                433B871D8681216130A6CF9A4F13A7CC148CBD0A7F6DFB2E5C41878B15782FAD
                06AE70D1C5C550C6E65642D8417E423E01C1CDE151F18FE212D3FC311CBD0122
                5A5F087F9FC410D23FF3F36D33554F4559835465C5ED8119E9F9BB305312A6A7
                6BF2F89A925AB31ECE19B3376173C3BDC21C76D05586DA7A1E9B21711BE9CA75
                346FE1324CB02DA249B80F70EC84A9347ED274E139879E5D7B6505A83854E9E1
                22064353332189B5B1772267772FF20B0A6DC66CEE83A4D42C1FE8386BE04DFA
                00943699C87EF2821B20118361A6E3DEE0C88884E3A626D6F1F028CF2FC85D11
                DDC4223F1B9C0A74C349400E3B5C2AA3072454311B714D2E5738EC3D38DC3020
                A3C74DA671B84C92C31027B81C9E78D33526E5500E9BA31CBE2978137B673772
                F7F6A3A0B0C8A6F8A4F47B19D9051E006405ACD767505A69E8F915944E0DB71F
                8EF4F30DBD64666A93AEA6AAFB12F989C801DB0AB83BEC8173C6B6B8B19CAB1D
                1E62E2B298AB1DCE4F66CC5EF09B3719357692000C8722FE3ABF8E955D0C4109
                9060C131D93A380B61C7D337804223633E26A765DFC1B669270C752F4159DCF3
                3328AD1414E427623019789489987955BBA6A4910F8FF2FAC4F1B32286843D0A
                0383616B213FE137BE05142E853937E1B0C3B9C984C933848476312EC7E68A68
                BFEC31012CDEA3CF618741E12496BD892FAEBC0F8B8AFD0050EA720B4A6D01C8
                02588FCFA0B46E50BAD6D7DD9FE960EF8E4B3D75CA74B48DDEB1D8668575A1B6
                5061ED6C9DC8049D62CCD062B5B982A08D706861505A3C0A43C2C6E070B9CCA5
                F141DCE5C74D450C4191096E11BB69774BC84D50ED5060680445C727BD47D8A9
                2C2CA934E7395D58B7CFA0B45E50C4E1517A00948598A4B7D550BF51ABA569F0
                41119B081812F6289CAB70D8E19148AE62586DE564952B1E0665322EB7E690D3
                52F1F0D7B82AE20B161814068C438F2DAE9D636FE21F1CC6DE44949092FE16DE
                A4B4BCAADE0080CC8075E571877FA5A2F814FECC27ADA3B08602EB535BD3B8D2
                C5D9DB1DA03422FC345DC71A2E6B2CF46348589D65AFC0892CEB22AC8F70F93B
                7FD172019429D3E708A07008E22A88C30E27B25C1DB1E6F27B5020B271124B91
                B109A2E4F4AC3705C5158595350D5A006432ACCB67505AAF47910028FD4A4B6A
                363B397A06A8ABE93D943BAFD0AC8625380C883996FA99E246532E7139DFE08A
                87A5795664198A165038EC30309CE072E9CCAF63EFC3703164B8AD43F0282DA0
                44C5253228AFF38BCA732AAA6F2B0390713099CFA0B45E50A400CAA0CC8C823D
                F6B7DCC2314DFFE4E409B9662DEC8735C16A2D632CD0E1C62066688552972579
                2E8D5B34941650D89B707EC225330B6D1C765843515456271ECE6650EC705FA1
                971FF6A84444737EC2A0BCCC2B2C4B2BABACBB084046C27814F373E8696D71B4
                BCF40E573CED613FC4C6A41CB1B5718E81D8F60CC72E84AE317B1243DC8E61A0
                6FFAFF80C2A18513D61645963D096B2933E72C1400E2FC844314370E19304CCA
                FD5AF1B80AD54E78741CC526A6885233739EC3A324009493006428ACC367505A
                A147F915948E0065784870F4199CF64B3232B47C71EEEC2F150F97C70CC90DAC
                37FFBD47F99F40616FC28A2C87244E761914AE903801C6343F59F31DCA1E9E14
                10124E083B8444B6393D3BEF2972942824B30701C877B036DB39FEA495D9E2D2
                06DE00D9092BCD478584C75D36B3BC956E6E65FFF2AC9C82C8C8D48AD8582CE3
                6494AB9713A7E504599E4B63D64AD8A370E8616FC2C68A2C83C2390A97C6EC51
                78428E43CFCD9B36D8748075A398BF8DC62684A4C4B4E6CC8CDCC725C5952135
                D50D3B30E230006D8456BF7DFADF890A9F6CD583630F6258EA27830D90E383C3
                6255004AAE89B9ED6B5C032780C2923D83C2C92827B20C0A7B8BDF83C2E18645
                360686AB20EE28B7E4282CCE716F88438FB5B52DB9B8B8E1AC7218C560B74A72
                527A737656FEC3D2922A5F80B21EA0F405286DB621F8497B14DC2728869DF75D
                B053764A6048B4B6C54D87223D03F33717AFA8FC060A7B13367ED3B9DCFD3D28
                2D0D410E3BDCF3612FC3D2FDEE7D9866FBB53466C87834C1D6F616B9B9791006
                A9292E36895253329B727192ABACB4DA15A02CAFAEBAD31BB0B4D986E0270D0A
                EE12140324DD784B3566650DAD6C9CCA704DED3B1CA1F87F4061AFC2F906E71D
                9CA8B2D7E0EA863D0803C25E85C3107F8EF317566E4F9EB92094C62CDFB377B2
                B74769ECE145A1589791109F42083B1F0AF24BEACACB6A6C00CA0280D2E33328
                AD309165C2F9D24980D21D7BEFE702140B1C9DA80224EF55D474052FD092A3B0
                86C2A52E4FB571586901A5651685616150B8126A11DB5A40E1FC84439893930B
                7979F950785834871D514E76C1BBE2A2F2F28AF25AA3EAAADB333134D50DB0B4
                D9D2F853F728E219D9253DF8B2498062E3E0EC558B2B6B3F68EA607604A0607F
                9B906370C5C3E38C878E9EC251D07DBF81C2BD1E0E3F9CC4B277E1D298C5386E
                1A62825FD050B891C87D22575777F2F5F5A7482C0944D811E5E715BF292BAD2A
                A8ACA8D3002893004A97CFA0B4528F82CB26C501494F5C8EB0282038CADEC5DD
                EF362A9E8FBAFAD04E0009F777B86AE110C26F3CABAD2CDFB77814068501616F
                C2F909F77818247E5D4BC5C3A531779EDDDD7188CC0F1B9B22E3283D2D5B5454
                58F6AAA2BC26B3AAB2FE2A401903503AC33E7B947FA7ACFA6FFDD9B48C12F1C4
                94DC9EB109994B90CC3AB97B05DE3975F6D2477DA35FBC09572BEC4DB85FC372
                7C0B282D47335AE665D9ABB037E1C97B4E76394471F22B0C2C213FC11E38213F
                F1F7C7564994C658A52542D8795159519B0448CEC286A3D7D4F13328ADD4A324
                A51488E396AF5E619149CB4223E25D4D2DECEE22996DD2B9618A8D8E2642B5D3
                22B4FD2D28EC41D89B70D861A1AD65F29E73180685CB694E8239ECD8DC72C65A
                513F0A0DFDA5E2618F02509ED5D5DE89AEAF6B3C84F0F33D12D9F6FFAD5F88D6
                F2F77EB23A0A8382649641590E50DC20B6356A681B3671E8E1DC823D02E719DC
                E3F947A07022CB1E8505392E8DAF285E172A1E739C51E623A99C9F3028F171C9
                0C4A33407902504200CA0E803200A0B469B1ED934E661392F23899ED85DB4819
                1477E828F7E04D9AB0CD407893597EE7FCE4F7A0B0EABA72CD46212769C94F5A
                A6EEB959C8892C27BE3C79CFA18BC38E70C81DF94978F82FA531424F1316F43D
                A8AFBBEB0350D60194BE4864DBB4D8F64983129F982B8ED2B85770583C871E37
                E8288D10DC9A384761A18CDF6CF60C2DA0B02CCF936B3C8BC2A18641E1FC8493
                D996035FFC9A961E0FE7391C769CB099292020882222A22831219535948FA525
                9577008AF3EDFA7BCB004A2F80D2A6C5B64F1A94D8F86C71DC1BD83330247629
                4071062877018A90CCFE3D50B89FC3150FEB280C0B5B0B289CF0B648F75C6233
                287CC230282884A2A26258432148F7EF511A57DFAE6FB40228F350F9744722FB
                1994D6924CFDEDF7111397259E9C96DF3320386609407144E86940E8F9F847A1
                8767515827E10AA7051486858D4B662E9D39916D197FE444960F8DB9B8FB5048
                087A3C317194929CC162DBDBF2B2EA1280A20F50A60394AE6DBDE2F9A43D4A74
                6CA6382EC1EEE11F14BD10A0D82199AD4732FBE18F92D9DF0F2DB500C2C0B0F1
                F6022E8DB97178F59A9A900CB37EC2F9099F5BE6443636369ED252B344E8F1BC
                0628790DB7EFA9019489004506E5719BD6503E6950A262321894EE7E8151F300
                8A15CAE36A94C7EFFFA83C6E01852B9CDF83C2F94ACBE60216E658A463A18D13
                59F626BC2E232C0CB797C625B480F212625B0640B9D270FBFE6880D2E93328AD
                544361C2E31272C4E212B3BAC1A3CC8E4D4837456E5281B55CEF008C88DFE816
                F99E3511EEDDF0C034F7723899652FC21A0A03C3390B27B97C8E871359EE0DB1
                AA8B3DFA427EC2A04460253A6B282CB6419515C4B69AEADB6760C3601D6A6BDA
                C656A5BF97667CB23A0A721431A8B2DD90A3CC8C4BCC303630B62A57D7327887
                10246AE9F3B077E09CE37F0285AB1D0685C16991EEF9B52CB471226B8DF5A2BC
                ADC90F33287F03CAB3AACABA18C07108F63D4069FF199456EC5190A3081E0555
                CF2C806262646A5D8186E03BAC0F15C60C5870632D8525FC1650381769A97A18
                14F62CACABB48C3F72392D0C535BD808892C6F4108C0966BEE1AB34741692C88
                6D00251470EC827D0D50DABCD8F649E7289CCCC627657787E03617A058189BD9
                54213F796F6DE7F2DB741B87117EF319149E336150B8EA6919316891EE5991E5
                5B38389165F9BF45916550B055E93750B232F39AA1A13C041CFE50663702942F
                ABABEADBBCD8F64983C2E5313AC73D422312172047B1012875D0513E602E45E8
                D170086150589D6D018527D85A92D996AE318F46B648F72CF9B322DB020A573C
                BCA7963D0ACBF700A5091ACA3D00E209C16D151E7B039436AFA17CD2A070D583
                1C8505B725D171A98E00A5011ACA473B0777019496D0F37B50B89FC3A0B4C8F7
                3CD5D632FEC8A53137113911E644D6DE0907D2FF0614886D1F511A37C09B3841
                475902507A7E06A515E7274C7858448A787854722F4F9FD0E5B851C30D394A23
                40696A0185AB1E4E665B420FCFC2B2F760385AA47B8686C311573CDCE3E13FC3
                136D9CC8B274CFDB245B420F7B14886DEF511AD7C29B580394F900A5FB67505A
                3928C1A189E241A1717D9CDDFC576111B137407900509A19147EB339ECB087F8
                5B50B821F8B7A0B074CFA5B170CE18EB45B963CC158F8F3F2ECFC69C6C18EE20
                0428C208244AE34A4062061D65363C0B4620EBDBBCD8F649879ED0F0640980F2
                057494754860FD705CE3216069C6910D2174302C5CF570EF86C720B9B2F9DBD0
                D332FEC8892C97C65CF1B022CB150F7B144E663947E1114806252FB7E82DBC48
                E99D86FB068064063EEE0A603E83D25AFB3CFC7D0506C74B00922F7D03223786
                4725069C3C73F1118069C648A490C872AED13266C0A0F0043E871E0E372D1EA5
                05149E41E1ED8F2DD2FDEF4161AFF23B50DE008E2280A20D50A6E0E32E9F4169
                E5A1C7D73F5A1290F4F7F60BDF821DAF419714AE3FBEA2A8D6CCE531572D2DA3
                901C7E38B4B44CE0B79C1264659641615596AB220E512DA0F02AAF963ECFDF80
                F21A70E40314758032111FCB7C06A59583E2ED1B29E9E31F3100B06C47AF2704
                B9C9E3895366371F3E765608192CB4B17148E13913565F595C63918D8795D85A
                40E109B8165018321E2FE005815CF5FC0FA0E400141580321EA074FE0C4AEB07
                450A907C8DF0B3D337203CD4CB37E4C992E5EB9A8F9E382FF4685813616FC249
                2A370479BA8D55592E8D794E968D41E1CFB34761A878328E55596E08FEBE3CFE
                5DE8790538B2008A224019FB1994560E09E7289EDEE10CCA40E828BB71694118
                92D827F02ACDF64EBFECBB672D854309E71E5CFE7288695977C1678D5BD65C30
                289CCCB66C8064F99F9361AE7CD8A370AFE76F40C904285701CA1880828D949F
                93D956DD3074750F96F2F20D638FB20B971684E1FA95279E3EC1CD1EDE41BF75
                80399CB03EC2B3B03C4AC01A0AE7267CDEB805141E58E26497CFF2B4ACB9F8BD
                32CB3ACADF809201501400CAE8CFA07C021EC5D1D95FCAC33B8473941DF028A1
                376D9D9F601EA51965B250DEF23824879D96DDB23C3CCD892CE7262D1B0C38F4
                30289CC3F02C4ACBE21CD6525A9A829F4121C161B46AAFF1F7CA737B371F4957
                DF807E9E81219B93D2B383CC6EDA3D3632B36C76F3F2C5E50626C26E5885AB4A
                7441FE121D387844B8D96BFE22DE2DBB9026CE5840D3E6E260FAEAADB47917EE
                0A943D89F0232F340579F90E5F846D6B6943BE9E1E141F1D45B1318914121C21
                C23CCAAB674F5F65409D557870FFC968886D9D1E3E78FA594769CD3A8AADB3A7
                84A3A7CF176E7E81EB1252337D00CA035D03E366DE2C6D60622AEC86E5EB67CF
                9EC3029DDD389C8EDBBD66CE598CED8F7368EC94393479D6225AB862136DC0CD
                5E078F9F176E23E57C86F7BF191A1A939D952D05F9F9527A72122FCEE1C6A008
                A3909CCC6620EC283C7EF47C341E3B210C7D06A5358372D3C14DDCCEC5AB97A3
                87DFB298C454979BB79CEEE23E9D8F768E2ED85D6F09506E92A292329D3E738E
                76ECC4CAD0151B10721660F1F02C1A37155B96E62CA1C5ABB6D0A69DD887820B
                B2F9D6743EDAA1A2AC41FAFA86E462EF2C7893D2C202EEF108CA2CBAC7AFF071
                D6FD7B8F159F3C7E3106892CC620DBFE74DB271D7AACEC5DC56D9C3C7A2004CD
                0B8D8AB372F5F2ABB96164FA9E2F5DE2EB520C4CCC7169B50A9D9793C7A5D6D8
                8BF2AB4799327D9EE04D662F5A452B37ECA2EDB82FF0C47905011421A10528E6
                E696C23D844579B974FF4E0361B480470C44E81CBF8657C941B851012CE3EFDE
                79D0F93328AD3CA1B5B27717B37674EF02AF32C537284C3B283C5AB8141B4299
                88BD898EBE11A95CD7C0A5D6B82801434B6B712463D6DC25D8D7365FF0267397
                E0FEC08DBB69DBDE6374F894BC107A38F9D5D4D013F6B56524A753E3ED7A7AF3
                E239A15B4C98951535DE7DF8062B2F0AE0493400C8243C974183F073E869CDA1
                C7C2CE550C5EA513BCCA08670F1FF988D8C45468272F50AD88CCAC6C0450D435
                74107EAE23993D2A80326336DFCD338726CD5C483317ACA0A56BB60939CABE23
                67846496B514FD1B26C2C9C08AE2727AF9F40935BD7B4B0082D01014C18BBC05
                346538526A888476269E77438EF27970A93583C2DF9B998DB33480F9C6DADE75
                4F48647C309A810FA1AC36F1254E2C9CE9A21B7C155ACA512C18DE8409FCD9F3
                966243F53C9A327B31CD5AB852A87AD66ED9477B0E9D126E4D675078372D1FCF
                A8AFAAA3B72F5FD08737AFE95EE323E1DC3166653F3C7DF2B20EE1E716C60D96
                2104F501389F47215B3B28C6560E1226371D7B9BDDB45FEA171C698DBE4E1566
                5EDFA157236275D5000AED65F47ACE4174DB8995168B96AE11C20F7B93794BD7
                D2F2753B048FD2020A27B32DA0DCAEFE25ECB03128BCE80F896CD39BD71F1EA2
                5C0EC6DCEC5E543EDFF2143E7295361F7E3E591D852136B5761183C9E8E85B8C
                F5F20BBFECED179A889BD459CA875771A21B1894BE869ECF69F472384F59B966
                33460C56FC06CAA2959B85CA67C77EE429C7CE0B0D445E8DCE2703ABCBAAE8F9
                E34704E184A09708E78EB13E5404305E22B9CD42C9AC028026F3F012F294361F
                7E3E69501816632B27294353DB0156B6AE6BFD0223AC313B5BAEA0A4FE163D1F
                9115869094B1D540010DBF633857BC6EE30E6C2F582E24B31C7A1814F62ADBF7
                1D156E4C671597D7A3F359E3CA920A7AF2E03E3D7BF49090B80A9B0C782131E6
                663F141694DE86F8E60668B6C19B7C0350DAB7753DE59307C5C0DC5EDCD4D209
                5EC56A2466534EB97906451D3874F21124FD2667676F5253D31360390B897EDB
                CE0342F8993E0F974E0214F626AB37ED41E5730432FE19A13C6E49664B0B4AE8
                5EC36DC10084A0CE066088090A6D33207981F5A19908451A4868670392DE0046
                B22DC3F2C9832278157307493D43EBBE36B7DC97A1F77353FEB272159A84EFEC
                EDDD494707BBF0117E2E08E3062705AF327FD93AA13CE6AA67CDE6BD90F165D1
                383C29F47B5899F5F4F4A6DC8C1CAAA928A7DACA0A827E222CFA63509C1CDD44
                10DF3EE2205823E72AF026C711824600181954476D3604B50950740D6E8A59DF
                F294D1D6331BE7E21EA08881EB4C849257FAFA96221869623492BDCAE9739731
                E97610D2FD064170E3D0C31E65FDB67DD8587D4C58CBC5821B2F204E8C491004
                375666E13D84D5E6F026740B13FA2CE7A35C7E83C77294CAB60064FDA387CF06
                A20A6AB321A84D80C25EC5DED9AFBDAA86C1F766960E07A3E3D22320A03D5154
                D46CD6D3332723DE1289D914E42EF01CC70550B8293877C93A214759BD691766
                6A0F0BFB51AE5C46426B6246C17E419491924C85B9390228D8DD26C0E28EA128
                F62C48669BE0599E42B14D430EA30A486642D6EF8510D426CBE536038A8985A3
                849EFECDBEDABA166B307EE06E627EEBAE9C9CD247757503D2C039646D8C1D60
                DB0116FF5D42B8D92D7894D98BD6FC9AD06E43FE222BCCD6E2E24AD2D4D42637
                47574A8C8DA1BCAC4C41C287C0C6CB88855383DE1868C2110E1100FA004DE52E
                54DB000072081ACB3078974E6D51AD6D33A0A86A1A8B5BDE74EDAEA6613C57E7
                86B979644C6AE5F9F38AEFAE5DD3169DC14CAC12460878AB35D6A00BBAC9D235
                5B68CE625CF004AFB2047DA0AD3BD045C65CCA99D3174859F93AD95BDFA29888
                70CACDCC10AA1E5667B939C89D640FEC4DF1F30DE2CF8BE0695EE3F07A318437
                5380B214F94A5F8022D9DA35A87FF6FB6B33A05C37B41553D23197D132B49D60
                64EDAC6AE3E4938B7ED06B34FB449B376CA7BDC84D0C7184E3E245158C45EEA7
                6D3B8ED0CCF9AB69E17268292BA1D06EDE4F3B0F9CA44347E450FD5CC55C8A39
                F9A31CCE4ACFA3DBD50D5457598F92B90A496E1E45864491BF5700C545C65369
                415953624CD2A307771E465795569F79FAE0D988E78F5E74AE29AF6D53225C9B
                0145D3CC514CD3E45607B9ABDAC3AFA8DD3803212EC9C33FFCF9854B2AA2FD7B
                0ED186B55B04D1CDC2C241E8142F5BB195F6038AA9B397D39255DB68FDD683B4
                EBE0293A7CF402C627AFA0FA312037788EC4B8540194869A3BC26379510525C7
                A5A0BB8C836100262D315D949799FFB628B7B8FC6E5DA3255EB30CA0F4BD77FB
                7E9BF22A6D061476A51A2636D29755F4BEBDA2AAB7DFD2C60D4792339F62E8BA
                F9982C42CAF173B404AAECB1C3E73053AB2F7894759BF6D18A353B0450D66D39
                407B0E9CA243C72E602AFF22D68F6A09C73622C263A1D2D6A0F7739BEED4DE15
                3C0BC0A0D888380A0F8A1060C1D79B00CFA3478D8F23F1F17178956180A523E0
                6A335EA54D8172E1BAAE94A1A5D3D72A3A26BBEC1C7DC2C2E3529EE0E460F3C9
                23A74976EF61DAB1750FCD9BBD4C90EB95946FD092155B68EDC6BD42F859B561
                0FEDDC7B9C648FCA09A0702EC3FDA25080509C572278120606E1850A738A04AF
                12151A4D6181E18430C35EE50DBC48314290C1C3BB8FE600949E8DF5F7DA8CAE
                D2A64039795159DAE4A6F3771795340EBA7B0547F905873FB577706D36D430A0
                25B316D34924B107F79DA0D93397D0A9338A74FEA22A2D5AB689E62DD920E429
                EBB71DA0BD87CFD289B317E9CA3575324742EB1F12218051925F4A6585E5C263
                7E5601A52765507C5482E05190A710E0F808881A5F3C7EE97BBFE1C10ED8A0C7
                F79EB4996D4C6D0614032B17317965ED8EAA3AA63FCB29A8CA41A14DC130D30B
                770F5F517C681CE9AAE8D04EE825B2FB4F0AA08C1E3B8B8E9CB8443BF61CA705
                BFC2C24AEDD63D47E9F0099CF3B9A24C06A696E4EE132080C1805414570A9E85
                C1404E42D9693994129F4A05D985F4FED507115EF302B0A422045D46D819FDEC
                E1F3CE00A64D849F36038AB6B1B5B8A29A5E5725159DA93A0626DAAA6ADA8566
                E637DFF8F9048AE242622927299B8EA24BBC62C15ADAB47E177DFBCD481A3A7C
                12EDDC8F5279ED0E9AB3643DCD59BA8E566FD98BA4F6181D3D83925A435B083F
                1C66D8AB707E82F0C2DE83000321791542114304EFC120BD7373742F7FF5F4B5
                29C2CEBC27F79FF6C06BDB44F86933A09CBDA22A79E1AA5A5F80B2CAC6C1C571
                EAB4D975EBD66FFE60830EB299AE2979DC72A79B26D6B47DFD1EDAB2710F2D5E
                B4813A77E94F23C6CDA2D59BF709A04C5F8061A6B5DBD0FBE110840B9EAE280A
                A70D4303C2282B355B4866010135BF131135E1FF6F9B09A1468085BD0D2A9EA6
                2B17141A3FBE69F20448EB91AFF4C3639BA87EDA0428DA37CCC554350D3B2AA9
                6A0E5554523D9699951775E4D0F1C7E2E2E24D6B56AC24772CD731D4C288A36F
                08B938FA60227F13CD9CB18C162EDD485D7B0EA4E1A3A7D3DCC5EB8526E18CF9
                B8426EF14ADA77E8042928AB61EE5613677CEC28D027480841EC4910660830D0
                9BE76F05501812780FD6569A0D740C1F221405BD7BF97E07C0FA1AB0B4893CA5
                4D8072CBC95B42D7C0B23740996B6BE7A41F151D5FE8EB1DF066D9B265A2015F
                F6A37DDBF7D12D0B47CACF29A6D2A25A5C4D1B405BB7C8D2D09F27D3883133A8
                9D744F1AF0DD48F47F960B677D162E5B43CBD76CA2BDB247E90ACEFAE8A1A36C
                6D6E4341BEC1425EC2A5320383325830062735218DB454B53F02AA46C0E10580
                36A24AEA0F983E7B947F5606FE6FBCBEBAEEAE786E4169676C581A7E5D55F3B0
                C32DE7A0C8C8C87BC1FE011F35949569E7E6CD7402CDBE9B560E54505846C5C5
                B564EFEC437297D404916DC2B4458247E9D0B53FB593EC4643868CA3B56BB7A2
                3A42371965B51C7A43661866B2C0E4DBAD9BF68222CB50B017411E2200C310E9
                A8EB366BA868BE0AF60B29023C066F5FBC9B831CA62792D936D124FCA43D4A43
                E323B1BA86FB1D0A8A2B0662A87A8D91B1B9B9EC812325010101AF5D1C1C459E
                CECE949E98482ED875929C94459959F938B3634FC77134434DCB94D474CC690D
                44B73193E651EFFE8349A27D4FEAD2A51F0D1C3898C68F998A5C66075DBD8CD3
                83AADA648AA16B570737416463FDC4DBCD870C758D083989C8CEEA56D34D33EB
                D7F87A4D4C78AC0F125F5924BD4359740348FF37AA1EB85131FC868821068BB5
                A6FFE84738F37BBBE15EFBD2B2AAFEFE01210BEC1D5CD4714164F2B489539F1C
                923DF031D0DB5B949110D7549899FEC13F3CF2FDEB26FA189796D97CE4F4453A
                7F559554B44DE9EC65E42078646576C6ACE5F4C30FA3A94BC7BED451A20B0DEA
                F30DCD99308BB66266E5123ACA175005C9435FB986B2D948CF18DD6577113414
                5664DF79B97A3FB132BD59E6EBE1E707AD450E904C41B5D31395509BF0267FF7
                A420DCA6185CAB04FEA3DBE33FB81320E1DF8EF6F80148B13BC5E7C5F9356CF8
                DC5FF65BF3B0F19ED8D3C74F249E3C7ADEB1B2AAEEABB4F4EC398141610A21A1
                9191B801A371FFAE7DEF3B76906ED256557D131312F4302122AC2EB7B4BC3635
                A7E89EF14DDB17A72E28BEBF7C5DBB595E495B744A5E85AEEB9891929A211D3D
                7E8966CD5A467D7A0CA26E1D7BD18F5F0DA609C3C6D1F8A163E9E01E593A77F2
                3C21B490F10D139189BE6913F296B7AA4A6A4F942E5FABD6BCAE95006F628D32
                F918B49369C84FBE40DE22FDF2C9ABBFECE7F2DF08EBBFFF3BFF30F420619380
                75810D040C3F019A9F00C80F806200AC0F3C4D77C0D2059F6788DA73190813FF
                D504EFF39FF4404F1B1BC41EDFBB23F1F04E63FBC6BB0D3D6AAA6A7FC47CC812
                0C1129FA780784614AFEB69797D75B47BB5B1F7F1A32F885ECCE5D15DECE0E91
                F9E9290E6577EED8E95958FB9DBE7235E3E275ADBA1317159F9D55507FA7A06E
                D074E29C52F31939659192A2AE48EEDC35D1B205EB44037B0F12F596EE251AF1
                F550D1C28973443326CF142D5DB0AC79EB866D4D7B77EC7B7B60F7C1C7278F9C
                AA807789D3D736B043CE721170ACA6661A819F476F0872D2F8E56A3390FCA147
                A9ADA81343C62E0D7DA03F6C369EEF834670123F844300643B0058059B878F27
                039E11F8F87B587F586F5877984C8B07C2A3D4A3FA071230F15F4D0C8FFF8F3D
                BDF358EC0F4C1C9F97787CA75EFAF9FDBB9D9F3E68ECD55877FBFBB2D2E2E969
                29E97B3013A27FD3CA2EF6F225C506DCCEF5464F4FEF63909FFF0B7B1BEB62AD
                6BCA4E5141FEA70B325257BB04042C75F60BDAA96660A4744159C359CDC02CF9
                A28A6E85ECE9CBF7E4AF6A3D3D277FFDC595CB9AAF54AEE9BDBE7E55E7CDA983
                A7DFAC9DBFE6CDCC91535E4F1C3CE6D5C2398B5E6E58BDF1B9ECDE430F4F1F3B
                5381BC24169EE5664470E439849A55F8C5198352B83F7EA96410A22591C8B629
                48FE109486DA3AB1BAAA6AE9EAF28AAF2A4BCB96E1374405D2B52BA009843AE9
                0F0FE30A482CF15BA389FC451E3F9C43F8780BA058CE0D31D8247C3C029FFB01
                5FFB1A9EA72F80EA853FC34A653758577CDC059F97017C9DF1DA4E78DE89BD13
                3F674F85E7FC9A1EF8737D310CF42D460DC7602068210685F6611C51C3CAD2D6
                07F3AB795E9E7E0FD6AFDBFCCE40DFE4233623BDC4045A291E1D71A4623F86A2
                C76202ADDFFDDBCFFBD494350E4A8AC99AE868E3B95157DDE4228030BF2AAFE6
                7BE1B4620C1E532E9D53CE52B8A09AA775DDB0C0D2D8BEC0C6DCB9C050C7321F
                AFCB56BC7C255D57532BD1E9967D484C44A455515EFEB9DB35B52B1006473EBE
                FFA01F1E656052B036A1C2FE4F61EC8F434F758D446D6555F79A8ACA7178238F
                C0A3D822062741A12CCB48CEACC1004F257E9B0AE06DD2E07DA2F11880DF2867
                FC6699E18D56070C1700CA6180B21360AD0300CBF1A62FC0DF350B9F9F0A9B0C
                9B88E7E3F0B55178FD0840378A9FE3DF9A8C7F6B06FEAD0570EB6B3101BF1F70
                5C3133B532B330B70E7273F5CA0D0D89BC8371C497083D1FB76CDED1745541F9
                95A3836B254071C3C4992C8E588CC6545A771C28977A7AFFADC4E3C6D7D27515
                F7BB6626170E080F8C1FEDE91C381F306C31D0B6380218E43494F515CD0C6C55
                FD3DC33572D34B356F573DD4BC5BFB44ADBEF2C1B5FB77EE5E7A74EFFE99678F
                1EEF7FF9F4D932D8A8A70F1F7D09303ADF6BB823D996016981E60F41B953572F
                86DF1AE9FAEA9A3E68B34F806EB017DEC418CDAE184051052FF3086FE40B64FD
                CFA1583E851AC98AE41D948695B07C582A9EC7C042F17A5F982B80B2C1DF638C
                3FAB8BAF6B0236350858CA09D18997D18995471571193A85B28BBDAB26340B43
                475B276B24891EA62696E1F01E1980A20203CDF7318EF80A907CC0D189661363
                8B666DAD1BAFF56F1857A30CF681073981937DE3309AD883CFDAE0D8A710069E
                DE7F29F6FCE16BF147779F49DDA9B9DFB9B2B8B6675E46D157C9B1E93F4687C6
                FF1C1B9E3826252E63424156C9A4DAF286C9F7EA1FB14D6CA8BE370EA08C7A70
                B7713880F80E1EE40B40D2F9F9E3279200A6CD85983F4A8AFFAE8E72B7FEB618
                4C0A9EA207DEE82118055C062F7211E0B8C172608DF8CD7F95939EFB1ED07CC4
                B4D787A4D8E47718117C8DC19E17D0149EC19E008407F8DC5DE80FB5E89B9403
                86624F17AF024090EF64E79C0D1D22DDC6C2360D5A443AC4AB6C0052E0E7E95F
                161D165303101B91B43EC6B4FB4B3CBE435EF211E0886EE81989EC6C1D9B70CC
                F3153E5F8D43E47E38987516904C46A8EAC59EE48F869C9FDC7B2106137FDCF8
                5CEAE19DA7ED0144C7FBB71F777ED0F04406CFBB0026C1F0B10C3ED7193F834E
                B08EB0F630C9C6DBFF3796E7FCA9AAA7E54570AD625C0E237C74022CFD90AB4C
                8037D8096FA0036F1004400A00CA5D84A3E7981D7D0B303EB0BE00289AF07133
                006906284DB08FB00FB077B0B778ED1B40F51AF62A3325EB25E63B5EE2EF7889
                BFF715007C034FF416E0BD072C1F3DDD7D9ADD5C3C9B9DB0D2C2DECEA9D9D1DE
                A5C9C3CDFB5DA07FC89388B0E892BA9A06AFC63B0FCE3CBCFF64EABDBB0FFBDC
                6F7C24F5F8E19FFB6DE7EA84AB33D68A2090FD66A862C45E3F7B23C689E99B17
                F8F8F90BB1FF4B1EE46F3DCB9F56669177F00F530A3FCC6E5CE5200CCDC19B79
                086FB01E1EBD014D3266334A00C76DA8970FE1399EC35E6302EC1DC3036B8297
                6962700049333C45334068061CCD98ED68062C0254A8249A318FDAECE3EEDB8C
                F0D30C45B4D9C7CBFF23E0787F138B7200CA8B90A0F047F9B94555771BEE273C
                7BF2D2AAA1BEF1D08B67AF27BD7EF9AE0F4091C6F3FF3321E1BFAD9FFCC31CE5
                7FFA0678080789A638AC03C0E9057169307EEB666114701BC2D20578027D7817
                2724A041F01A898023079EA50C72771D42CD3D849A8708354FECAD1D9E0082A7
                BFDA333C7F81D0F302FD94E7E8AB3C43087A8A3CE5093AB68FE19D1E0294BB89
                F129D5D5957545CF9FBE4A0310A14F1FBFB081E7B878E7F6BDD5F0243F01989E
                30A907F7DA8664FE5701F067FF9D3FED517EFF17FE2AE74B009C0EA858B884FD
                9AF51494B333F0B81C616A273CCE6994D35C561BC1EC90CBB863AED41F1E2414
                DE241CC96B243C4C342C0E9E2709CF93E15512117A626091F032E1F83B82E1BD
                7CF1E6BB00062B3CEA008C8B0835FB6ED7DD5D0A50C6008EFE80A7333C89243C
                CC674FF25F5AA9F62F81D2020D7B189838CBFAB04EBF6A247DF03810360C361E
                3613B610B612B601B603B607B61F260BE3A9753E0F730E760A7604B61FB607B6
                0DB60EAF59069B07E31ECA48D8B7AC0EC364F8DF06B86D56BFF8B3BFF1FFEDD7
                FD5BA0FCFE9BC31BC63D1F8646E257703AFCFA4676034CEC757AC3BE840DE0C1
                63D837B0EF608311C686C18673C715F603EC5BD840D8572CD6C1ABF4FA55F1ED
                C2E21C4C1A26F19F6C11FCB77FD09FFADFFF1F03E56F7F10BF8223340CB981F8
                AB713351EA5793C6235B7B842F0E611D7F7DE4E7D23029982437269F343E11FF
                D5C4F0F839BCFC97C2CBDF83F9BF06CA9FFD0DE231062E517F6F7FF6CF7E7EDD
                2F7BEAFF0AFB4BFE91BFE23FE4F3BFF1DF05E633287FD16FE4A70EF267503E83
                F2A718F8532FFAD47F1B3E7FFFFF7E58FA0CCA678FF2A718F8532FFAFC1BF9EF
                FF467EEA3FC3CFA07CF6287F8A81FF0F3EBF74638640BCC40000000049454E44
                AE426082}
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
              Width = 485
            end
            object txt_BarCodeRate: TcxTextEdit
              Left = 525
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
              588
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
                000000BD08060000006CF8E571000000017352474200AECE1CE9000000046741
                4D410000B18F0BFC6105000000206348524D00007A26000080840000FA000000
                80E8000075300000EA6000003A98000017709CBA513C00000009704859730000
                0AF200000AF2013D52F711000079C149444154785EEDBD0578D5E7B2BE4D140B
                0EA5500A55ACC5DDDDDDDD25B81382848484B8105722C4DDDDDDDDDD08047727
                59F33DF36BD3AFFF7D9DEEDD6D3D21876BEFB95656B28034EBCEC833F3CEDB8E
                88DA7DB6CF3F837FC4C06748FE03BF28E109F9626C11F1BFD83FFAA17F8A5FFF
                0CCA9F04C52D28412C2CA9402C3ABD542C203243DC3F225D2220225532222157
                3A2EA5A0436C727EC7B8A4DC0EB0F6F189B9D230A984A43C499844787C8E7878
                5C8178447CA15864429158745289584C72E92705D46750FE009498A41AB198C4
                3A3689F0E442A9C0D8ECF64979359DE2B32BBB442615F648C9ADE9939455FE55
                7C7AC9B72151694360C3C3A252878646A6FC101A9EFC2D6C604858527FD817B1
                A945BD0046F7A8C4E2AE8045263426AF6370544EFBC0886CC980F02C89A88432
                F1E8C47231B6D6EA6D3E83F237A00486A48B8545E44AC42796B54F4EADEA02EB
                1D9E9835202C21F3C798D4BC519E41D153DC7C43E747C4A7AF0A8B4DDD1A1A91
                78202A36E5446C4CCAD9B8D8E45309F1A94712E352F727C5A7ED4E894FDD0A5B
                1B1D9DBA1C363F26266D7A6C6CFAF8B8B8AC9FE3E3B3BF4F48C81900EB93109F
                DB1D26939850D011260D93888FCB138F8BCD178B8DC96B15F07C0605A04444E7
                89C5C41789C727954A252497754E4AA9EC939054FE038099E4E593B8CC3F3269
                7B485CFAD184CCA2CB41D129DA8E1E0156DA8696EE078E9D0BDCB5F768A49AA6
                7E8296A641928EB641E20D3DE358237DB3485323CB304B13AB202BD39BBE2E2E
                7EAE6E6E01D65E5E21FA0101512AA1A18972D1D1E98700CBB6C4C4DC9511E1A9
                732323D2264647650D8F8DC9F9262E36B72F40E9111F572003EB10139B2F0593
                8089B1FD6F789DFFB3A04445668AE18D118B084F970C0D49EA101599DE1DF635
                3E1E1D1E9EBC24363653166FA47A54549ABDDCD56B815BF71E889DB77859C6C8
                71130B7F1C3EA27AE0A0EF1B870EFBE9D1EE9D7B9EEAE9E83E37D0D67D017B6E
                A2A5F7CC4C57EFA9C50DFD27D606468F6D0C8D1F581A9BDEB53231ABB136B328
                B1B3BC99E3606D9BE26C671FED6AEF1CE4E6E0E2EAEFE16F1EE815A816EA1776
                3632286A6F4C68EC9AF88884790991891313A392862524647C0DEB1D9798D535
                3621B3634C7C8674745CBA44545CA678546CCE5F02CEFF395000865864448678
                4A72B1747656954C6646057E7B738664A497CE4C4F2BD91A1C9470C9DCDCD1EA
                F46985B0D9B397E77DF9E50FF5DDFAF67F087BF6EDE0612FC74F99FE66D6FC45
                EFC78C9DD83475DA8C66956BD79B75B575447A1A5A224D155591E6556591C655
                C5664D45A5661D25E5663DE5EBCD46BA379A8CF5F4DF9BDC30786BAA6FF8DACC
                C0E8858591C9534B63F347B03B0E371D2A9D6D9DF3DC1D3C927C5C7DC302BD82
                3C427C432DC3FCC3D5C203224EC7C5A5ED802D0524D3603FC306019A3EB18939
                0027BF63445C8E144C3C222E4F8CEDBFE171FECF80929A50229614972F191795
                DD3135B1A8475E56F537A989F9E382FD635738DEF23CA6A369ACB777D721AF59
                D317A44C9E30BD72CECC050F674E9BFB7ACCC8091F3A74EDDAF4E5C081CD3FFE
                344CF4D3889F4563C78FA3614386D2F46953485F4B8B2C8C0DC85C4F970CD4D5
                E8C6B56BA4A7A448062ACA64A6AE4E56DADA64A2A546A6DAEA64AEAB2DB2BCA1
                2BB236D417D91A1B36DF323169B63735FD08CFF3DED6C8E4B58399C50B172BEB
                C71EB60E8D5EB79CAA7D1C5CF27C1D5D1302028303038342EC4342C375C3C223
                E5C2A3E376232F5A119D90362D26217B383CCB0078969E80A573446C81342A2C
                099858785CE17F0C9A360D4A745291585462A13820914A4B2CED0C50BE888FCE
                199A9250381BC0ECB4B17455943BA364B775D3DEA88DEB7616AE58BAEEEEF225
                6B9F6F5ABFEDDD86B55B9A468F182F9214EB40ED2425E9BBA1436902C0183566
                344D983491268C1B4F4B972C224B6363BAA1A54E7AD755485DE10AA95FBC489A
                972F011825B2D0D424DB1B370448D8CC74B41816B2D0D311CC524F4F30731D7E
                D4170118919DB129E0B16C7234BFF9DEC9C2FA35ECB983A3F3432767D77A3777
                CF226F1FBF14BFA0D090E0B058C7B0E844DD8898F43300652B40990F50C60294
                EF00491F581780D21E86F2BCE8DF06A64D821297089D02C969644CBE3412D52E
                59A9D9FD8B728B47C647252C8D8D883B969E94A16FA26FEAB779DD968C4D6B37
                D7ECD9BEF7313E7EB361F5C68F7B77EC6B5EBE688568C7E69D3472D828EADAB1
                1BF5EAD587C68D9B40E3C74F146CD68CD9F455BF01B46FCF5E5255BC46EAD754
                C8D7C98D362E5F41E387FF44D3478FA5758B96D0EAF9F369FBEAD574E6902C5D
                3E7D4A00C95003C0E80212FD1B6465A04FD64686BF3DB7353126474B0B72B5B1
                6E31918BF54D918FFDCD263F479B0FFE4EB66FF0F8C2F396F523D86D6F07DB22
                5F47C7C4E8C000DF98C050F3D890F0AB8911D1FB93A3E297A7C6244E4C8A49F8
                3E313ABE4F444A814C505C96B45F549A847F74FABF044D9B032536A190AB17E9
                E4B4CAAE19D9755F67E7358C2FC92F5D9B1C9722E7E5EA6D15E41B1C1917195F
                64A4677C6FF7B63D2F60EF0147D3CE2DBB448086F09CD6AFDA40DB366EA71FBF
                194C32EDBB50DFBEFD0450A64E9D4ED3A7CFA439B3E6D2A811A3E992FC453284
                3740FE41FAAA9A3475F4181A3B74184DFE79A400CB7878A159E3C6D188EFBF03
                40C368D684F1B46CCE6CDABC72051DD8B6954ECB1EA44BA74E92A98EB6000E83
                626F6E26D82D3353E1399B8B25003233205B431D91959E86C84A5FA7D9D1C2E4
                83BF8BC39B485FDFE75E0EF6F7BC1D5C2A7D5DDC33033DBCC3C2FD826FC58644
                5E4F888A3B901C9BB8342421675C707CF637B09EF8B86368623E6B43FF14306D
                0614949462D01FA492938A64600392120B2724C4E76FC2E7AF021287B0C0F004
                5F0FBF4A40F228273DF70DA0F9287FF6227B0ED1BE9DFBE9D0BEC3B47DD30EDA
                B57537F17386A66FCF2F0550BE193888268E9F400BE6CCA5F9B3E7D0F4C95368
                DEACD9A4A7A549A6BA7AE4EDE44C27F6EEA76FFBF4A5D13F0CA689C387D3B821
                4368321E174E9E4C0BA74EA50553A6D09C09806DE44801A0D13FFC40637EFC51
                781DDBCCB163050FB47FF366923F768CF4949509390C79DBDB93B79D35F93BDE
                A2403727C17C1CEDC9D5DA8A8112D9999A34BBD8D836B9DADABD73B37378E97E
                CBF19187935BAD8F9B574EA0B77F58A87FB04D4844A262444CEACEE8A4AC39B0
                219109197D22E2B23A4526E648C42417FF29603E795092528AC5A03948008A4E
                00E54B3C8E8E89CE5E171E96A6101890E0E2EB13931A1912558B90F314C0BC43
                186A2ACE2B11E566E491F32D173A7F4A8E0EEC3E48270E9F247816C1A39C3E76
                86D6AE58475D3A74A56E9DBAD3707889A98063D9A2C50228A37F1E412B972E23
                038410AD6BCAE4E3EC422BE7CEA71E52EDE99BDE5FD0C09E3D6950AF5E340E20
                4C0718937FFE99668C1943F3264DA245D3A6D1E2E9D369C98C19B46CD62C5A31
                670ECD9D3851B0D9E3C7D3B451A368D24F3F097F869F336447776CA54BC70E93
                9E8A22D9991890BBAD3579D9DB91A7FD2DF2B86547378D8CC9C1D24AE4E5E822
                8247690AF0F27BEFE7E1F3CADBD5F391A7B37BB5AB675086975FB89F5F68AC7E
                7054D291D0989485A1D1E9C34262D27B8544674BA34F25FE8F2AA54F1A94B8C4
                0271780EE9ACACB29EE9C98543E363D2974684269C8B0C8EB58B094B484E8A49
                AB4B4BC87A9E9992F51E5EA419264A4D48233CA78AE24ACACBCC2778193ABCFF
                089D397E968EC91EA7837B904FC85DA1A50B965107898ED4BB5B1F1A8F377BFE
                CC99B40E702C8627190370F66CDE8290A14B288509150B3CC6341AF6F520C1BE
                92E9465F7694A11FFA7C49FD3A7511BC077B117EF3D9A34C193142F8981FF939
                872786828D81E2CFB3576260F8E39FBF1D44A37FFC9EA68CFC99164C9D8C5C68
                199DD8BF0F39CF55E4377A14EAE34B811E9EE4E6E044B7ACACC9DA0CDEE6A69D
                C8CBD5B329D82FE8BD9B93F30B5747A77B2E4ECE459EEE3E610181A1C6111109
                8751394D8F8ECDEC17199FDD3EF21F34333F4950908788C12462E2F33A23B47C
                1D19993A232A2C4536322CD1343A22393A313AB5322329E7697E66F1FB92BC8A
                6600217890FCAC022ACC2922E42C54595245E54515022CE74E9E17ECD2F9CB82
                37B97A5191664E992580C2E167E2E8D1B46CC102DA806475D9DC79341D158FFC
                C953C82B0CC8580B558CEE0DDABA72351DDABE930E6EDD4E5B96AEA0D573E60B
                3679D8CFF4758F1E8287F9B64F1FFABE6F5FFAE1CB2F01D4D734EAFBEF69C2B0
                61C867460BB0CCFF5D98E2E70CCAD8C18369C2F0A134EA87EF68C880FE34A877
                4F1AD8BB170DF97A004DF8E9679A336932AD98BF800EEFDE433734B5C9CBC58D
                42FC82C8D7DD9B6EDDB42373233351B07F80C8D7D3EB234079EDE4E0FAC0C5D5
                B3D8D737D43F243CEE526474FAF4A8849C5E51681BFC3DAFF2C98182C69A584C
                5291745C7C618FE8D8AC615111696B82036354A24313FDD15F29CE4DCB7B589C
                5BF8B622B7B8B93CA74854965D28008270F31B2077EB1AA9A1E68E000AAA2152
                5650A10B67E44943459314E4AFD2950B0A3476C43801943EDDBFA029A346D286
                654B85DFE415F3E6D2925933495311BFCDD0486C0C0D491B95CFFAC54B49EEC8
                31BA7CF234299D93C7E359BA76FE22F28D53747CCF1E40B49D76AC5923841A0E
                2F3F0D1A44DF7DF18500D0D0010368C8575FD1F0810385BC85BD0CE72C0C107B
                94313F721E338CC60D1B4EA37E1C4CC3067D43DFF703345FF4156CE097FDE9BB
                01036938F2A3C963C7D39A152BE9C2D97374CBDA86A2C323C8CBD19602DC9D28
                D8C74DE4EFEEFAD1CDC9F1953BF2183F9F40EFD0D0D87DB1F1D93F4425E4B58F
                4C28F8C37CE59302052D7A7180D201A0F407285322A3330E8687265B14E455A6
                94E455DD292DAA7C5D555CDD545D5A29AA87C7683186E27EC3032A2B2C2794C6
                0220FCFC4EED5DAAADA8231D755DC19B18E81892AA921A5D3C778986FFF813B5
                17EF403DBBF41240D9B26A25AD5FBA8496CE465E01587494AF912EC4356B0303
                3AB27337DEEC8142F859366B0EEDD9B00549E97601128D2B4AA4709AE139472A
                172E088F178E1E15E039B0650B5EBB01F9CD5C21ECB08719DCBF3FFDD8AF9F00
                0E1B7B9FE103BFA191DFFD2054546C237FF891867FF32D0DFE7AA0600CCAD7A8
                CCFA233FEADBA3177DD9BB0F0DFEEE7B21E95EBE7809A929C8938D893E834291
                81FEE4EBE9D1ECE1ECFEDCDF37283D3232F12A40190B503A7FF2A0C4A596B270
                26119D5C2083BCE4DBC8D8CCC568A25D4ECD28F4A9A9BA575C5FD7F8A4A6BCEE
                7D1500B957D340AF1F3CA1778F9FD3F3C67BD458554DF76EDF17ACBEEA363D7F
                F4821E353EA6B4C474F2F3F4276B731BD2D5D0233DCD1BA4795D0BE2993EA11A
                A27EBDFB0B1A4AF7CE3D84B0B065C50A2109E5E472F3CA5550613508723DDD32
                B5A49B0666A4024F7470DB3E5AB37025CD9B3287668C9B86B0309B16CF5C84CF
                2DA76DAB37D2095456FC3A0D78B06BC883AEE2DF5102A0979150CB2347923B7A
                9ACE204FDABD611B2D9A3E9726C3AB4DFC690CFDD06F10F542623DB04F7FEADD
                B93BF591E941037A7D499D243B0090AFE88B9EBD04EB0FEFF2353CCD1700A54B
                6719C17AF540A8EAD585C60CFE06A173019D3AB89F4CF475454931716FFCBDFC
                8AC242A375D0D19E1A1D9FDD05B07CBA1E2536A1580CA048C6A694740B8DCD1A
                1A1C96BA212E294FB7B8E8764C79D5DDFA92A2DA57D555B79B1EDC79247AF9E4
                05BD79FC825E343EA4A70DF7E8D58387F4F1393EF7FC2DBD7EF6460837EC51D0
                D515C20D3ABBE462EF2A40C2DE8481E147B9D317E88B1E7D85AAA7874C4FE1B7
                7DEBCA95B414092D572D3BD76F8070A649DA4AD7C9D9CA96AA0BCAA81839504E
                6226A5452753845F1884337BD257BB8184538D4E2259DEB57E2BAD988BAA09B9
                CFBCC93369E5BC25006B0F5DC1BF751D391183C3C62029200C3230C7F71E12FE
                ECA9034769CBCAF5B47ED96A9A39612A8DFF693412EA11F445F7DEF4559F7ED4
                B97D07EA2029451DA5A4A96BA7CE02201DA4DB0B2683E7BD3A88530FE976D445
                B21D756AD78E06F5EF2B8250F8CEC5DEB92C3D2DC708A0CC0428DD3E5950A2D1
                AB80492133EF199790332A25BD60574E7E8545555563C6FDFB2F1F3C7FF1F6DD
                9B971F9A5F3C7B4D1F5E7E20D1BB266A7EFB91DE3F7B49AF1F3DA5B74F9ED2C7
                172F853CC4F886091D3D784CC843A0A9D093FBF8DA9B264A884E247D6D03FC96
                990AAF61E3C496434E6769FC4676ED0DA16CA2E04596CE9A87DFF4D97468D77E
                32D4D423ADEB1AE4E5EC4D39A9B99495944FB9E9C5549A5F4DA585F594975541
                1929C5949E5C4448AC09093685FA4792CB2D0FD25537A05347CED1B60DBB68ED
                F28D3475FC4C9A3D753EAD5AB28E0EEC3A4C72A72ED1557965BA7E5583349475
                E8EA390552387B857455744859FE1A9D903D41BB36EF42253697664D9941DF7C
                350840772709317112030812E2BF9A8418B56F2F45D2F85C677C2C89473629BC
                0E3F87F7BE3E819559998566E844CF8E89CBEE0E50FEB04C6EB5390A7B128624
                2AB6A0775A46C904C4D1C319D9250E0D8DCFF21F3E7CFDA4B2F2EE87CAAA7AD1
                D3472FE9E37B113D7FF09C1EDD7D40EF5EBC21FA28A2C70D8D14E4E945AA5714
                842AC6C2D8520046F49EE8F1BD270228EC6920EB0B5E84BFCE6666682E94CAEC
                4D3A4A761292D99910DB3621415C3E67012D9E3187CE1F3B2D80A20D3516A301
                949D9243293199141F990A20D22921268BE2A33329292E9732534B28252E8332
                9373A920AB04205552716E3965A5E411CA778A0D4F246F577FA8BBE6023C6B96
                6D10A099366116CD9C3C97E6CD5884247A03FEFD8D746CEF51019AEB0AD74953
                5993AE5D56A40BA7CFD3427C5F3F0D1E2E781206854D5C0CB0FC0A4A073CEFD9
                A903C44349EADAA113C974E8483616B6EF2323622B13E2D3CD31B63027363EA7
                7B74E21FEB29AD121448F062E8D7480196DEB049F9B945278B0A4A3DEA6A1ACA
                E03D9E377DA026511389F03F62E3379C9AF1E1FB66CACDC821530313BA8624D2
                D6D28692E392000ED1ABA7AFE9FDAB0F8271325B57592FC012111C4986BA4674
                D3CC5A3006E5E49153D449AAB390CC72089A367612AD5DB29216CF594CF3A6CF
                13C063AFA0A1AA47B191E9949B5D4159E9B0CC72CACDA9A3F48C1A8A8D2BA2F0
                881C8A8884B7C1E731C64029C9858491068A6590F0D86271B1D9949A524479B9
                D55458504799196584B918B2B274253555233A7F540E89F4069A3266BA601347
                4DA20923D1981C3D516833704B61E8E061D4AD4B579292901400118757619394
                1427292929EAD05E86DAB59314AC67AFBE222727AF779131C915C1A19014E2B3
                66436AE806503E9D1C8521F975D2AC77526AC524D8A9E8C838EFBB0DF72B3FBC
                6B7EF5E0DEE3A6FADA3BF4FAE53B011200234092149B4CDA6A5A824587450182
                C7F416DEE521BC0C27B05CE57012CBA0F0F3772FDFE3EBEF84D0D3020AE72CA6
                484C8F1F3A2194C6D262ED0550268D1C07AD62092D9ABD88E64C9D23842F4D15
                5D52BFAE4B1855A0E4C43C4A8CC363520180A8A4D4B42A4A4C2AA3A464545980
                06638E022469A90845692502340C03BF3E069EA705A424FC5DFC9C41E28F191E
                FE733545B594199F45BEAE0164A46D4A4BE62E2519A92E42681460EEDD973A43
                E0E3D023292E0130240448DAC193B49884787B9294402E0360E6CE5B2482E0F6
                363E29B32C2824C100A30A3330D7D23506C3E37FA4A5B43A8F024F2209507A02
                90F1699935273273EABD5F3E7E5AD5FCF6FD6B00C1FF13C0C0730186FAAA3A84
                8AD382F728CC2F21CE57D81E3F7C46CF9FBE12C2D287D71F85AA87453716DCB8
                2466689E3E784690F4055038C1E5D0C3390A2BB42DA070E819337C8C00C9BC99
                F369C6A439A4AB6544D795F4E8BAF20DCA4C2BA7A2C206CACEAC237CCF149F58
                4111B1C5141A0508122A292DEB2EDDB9F79EEA1A5E5371D9034ACBACC2EBCA28
                051E881FA30118C443E1397F2D197F1F7F9E3F6E799E189946B9A9455451504B
                7969C574F4C049EA28D105907484E7E370C3B989B80085244622D88B088020FC
                B46360C4A4609D485CBA1BB59390A16DBB0E89422393DE60F0A908906843709B
                129D98DBE5930105804820D474C32312D7AAC380C423B7E06EA5A7B3EB6BD93D
                FB9A776EDE4A81DEBEF4E6D90BAA2E2D27475B07FC76ABE38DAFA10777EE0B60
                B0DD6F7C44B7EBEE0A064F24543B0C0AEB28A5A85038F4B408705C05B5E4281C
                76189ADF83C212FEC82190F067CCA7B933E609B983BEAE29295F4562A9A44B39
                7843A10E537C6C1125A6C08364DEA6E48C3A8A4BAEA4F8E41A4ACDBC4319D935
                945F74974ACA1F0A565AF148B0ACDC3A01921650189698F8028A88CE111EE393
                8A85AF65271750727486900715649462B44193BEFF7A0812D85E24D14E8A3A75
                409894EA40D2D2D282893120BF82D2BEA334E0684F62525DA953D7BE98ADE942
                27CE5C160586C6BD8E8CCDC8494E2F520124E361329F0428E9D965E2B109E99D
                C3221386A466E4EEACA8BEEDA0A1AD5FA6AEA6F3EAF0FE43CD93C74DA2FE2805
                BB76EC82AAE42CF40E3D4A894F16BCCBEB67AF04EFC2B0B035D4DC060C6580A2
                04527D05A06AA0F2C25A24900514159240E181D1483C9329292A9562431320C5
                5B408A3722634D03B2D2478EB2FF18B5472CEFC26E1D3ACAF75F7E43D3C74CA1
                B190E3674F9A4A2A0A8A74454E5EC86732103E72322AF15843F13195949C504B
                A9A90D141B5B498989D5545EF14C4862D9B253F37F4B6A2B8B6BA9ACA04AF81C
                DA0C426594975184EFB35A782D3FE7849793E094E46C84AB7C84A3744A4D4817
                FEBB470FF919BACA174245C3C6096B7B3131EA202E8D3C459A78E04A1CA1B31D
                40E2AFB717AA9D76D403798CB1A199283C3CFE656A7A715A647CEE450C788D8C
                4E2AED046BDDA12729AD500C535AD259B9255F67E614AF4ECFCA373D7DEE62FE
                75759DE7A74FC935AF5CB282C68D1C8BBECB171801D88B52D658C83D1810886C
                02240C4745713964FA62F46F72A197A4E1879A82066006DE80124A4B40621914
                473E6E41429501F19AC2FDA304B3B8014FA2618099125D8C2D1A42BF3802BDA1
                FD6FA00C1F34440065F490E102283CACA470E1A290CFA42397C844A848071409
                B1C84DE2AA2939B91E90D4527EFE237AF69CE8C32B1135A1187BF7A2899E3F7C
                4D4FEFBFA4178FDED0B307AFE8E19DA7C2E7AA4BEB856AA828A78C72D2001F2C
                37BD9052E33391ABE420A729C0631665246709FF4DAB162EA3AF20B2756C27F6
                1B080210083392E252F034F022EDE04D000A43247C4DA21DFD0045D7D1DE4514
                1212F32C3DB3342E2C26EB1840190C48DAB77A5052328A25004B2F789499D979
                A52A3A378C9377EF3BF478D75ED98FA3468EA7815026790C809554F620E14111
                4253AFE96D33AA9A14219C704718A304849102A192E1D7B0F173340B29C03782
                3C9DFDD161F521577B4F41CF70B5F320777B2FC19BB046A1A5A441DAD734E9E8
                EE43D44D12CA263C4A1F8C190C19F83D4D1C31967E822C3E1B4D387548F757E4
                E4E0514C05ED241961222D01B9472C208943B849AAA794C43A2A2E7842AF5E10
                3D7FFC91DEBE043080851FDFE073C8B8A809F9381B57654F1FBEA786DA275453
                719F2A4BEF527DF523E1514896E1B538F94D0738996985949B554857CE2B509F
                6EBD4846BA134901965F34124083645642420AE147E2972A07E0C82067618F22
                2D2E460B66CFC7CF22A4393434FE3164871080B2133329036392CBA45A755330
                3EB5502C33B7A2233CCAD088E8A443F64E9E01EB366EBB0350DE8F1E37593412
                3236BB784E3A5903A10F24BCF92CBD73D5D2020543E4EAE02618869204A8FCBD
                0284474FB740720210CE769EE4E1E40758BCE8A6A99D5041186A99A0C1A741D7
                2FA990CAC56B10B494E8D89EC3D457A637C9C075F74065D1BFC717F4F3F74385
                BECAAC8993E05114E9127A36E8CCC20B54422FC91740112049A8A38CD43B4208
                4A4BAEA38AB2A7948D2AA720A78A2A4AEE0800DCBFF3929E3C7827D8C3C6D7F4
                1A5E87E1F9882A9F617AF70ABF0FF86F65C0F2B391EBA094E68A2903A18941C9
                CF2926377B77F476BE842E22036F816A878536C16B7032CB9E84135A49124328
                62B1AD23C20EBFE6C4E1E314E817FA1187D11A1393F3DD9197AC06285F0094D6
                DD3D062812597995BD0342E2178446C41BEF973D51B46CE5BAD75F7FF3A368F6
                BCC5647DD39E1E3D784A4F21CD37D43752786814858544D2C50B5708DA0AF97A
                0790C32D67B2B5B6272B0B1BBA69692B3C7775F620B4D4C9CEC6816ED9B891A5
                993D999B60C8C7C2912C8CACA1AAEA09EAE7153925923F7D91CE9F90C358A23C
                5D387E9E8E0294417DBE46F8C16F2360E90E897C283AB643060DA05993C693CA
                D54B504F4F118E6120D184749F5A4A39293510D62A2835AE9672D3EE51665203
                A52454237F61EF520270F046A32A2A2DBA4777EA5F5343DD2BE1E3ACF42A7888
                5AAAA944087A42F4F21904C107CDF4EC31D1EDDA9794145F4451D10594905826
                94DD69C9C875A0CB24C56440641B016110A0B01761910D1EA523BED7F61D3110
                0EEFD10EE5723B48FBEC4D3AE3355D3A76228C809287ABDFFB8C8C92CAA8984C
                8BE4CCCA79688F748F4D29FFBBC34BFFABE571425A9118AC3D0E767F0F580E28
                28A907CF98BDE8C1B889D39AC6A2A7A16F644E0F208A4170A3CAF21ACACAC8A5
                A888588A898A274505657277F5222F0F5F010E364B736B323745996B76533023
                0353D2D2D02563839BA4AD6144CA8A5AA47049952E9F57A4F3272FD2E9A3E705
                3B8AE4F530F29293078ED3E15DB224BBE3000D1EF083004A67C4F96EE8990CE3
                6EEDC0AF68E6C471A8B41401993C8E6AE808394E416625AA91DB022849D15500
                A791F2331E40C6BF47E5C568402697217F2910806138EEDE7E2340909F532F7C
                3E2FBB8E2ACB1ED1C37B1FE9FEDDF7545BF58CEA6B5E089F6B012536AE580025
                1595501AF4150E794B172C1792FB16505843E92AD38564BA76217149849E5F41
                11247C7C6D14E657DC9D3C44EE2EBEAF73732B73C32252AFA764554D00283200
                E5EF8E44B606506450CF8FC7E16EE5F98B56668F9B38E3D584C93344C678A3D3
                D25109401BA928AFA510E41DB7EC9C050FE3E31D4816083D6E08310E68EA99B2
                0682E76610CCF4A18368A303AC81D101254555924377565141031E48994E1CBB
                4007F69DA00390C28FC89EA21387CED071D9D348900F6056760FEDDDB69736AF
                C180F5C69D68E30FC50FB73D7595EA2480F2E3D7FD6940DF1E3479DC0824D35A
                486471CC02B32838B42594ADB92995E8F754527A5C25E520E4E4A73550696E23
                35D6BC41825B4C31912CCA1553517E23D555BFA46A5443F9390D948E3FF7F411
                7B1112BC083F3636BCA747F74574EFCE07E1F53171E58271E99D92046F925808
                4F5546C70E9F811ADB13421B420C420D0B6DBD7AF5A0EE7D7A90787B80C21A0A
                3702F1F58E486EF7EF3A40015EC84F82629F656755C44644659E884F291F1297
                5AD101D6AA41118747E95E50523F6FCF8153968B96AEA91E3B61FA7B543C141C
                168DDFA06C7273F7216FE41A5AE8F006068409A0D8DA3892F235757272742773
                C8EE0668E899402C33422EA3890EF035CC945C4577581E0348274F9CA3E390C0
                199243074FD3EE9D8769DFEEC374FCC859C19B1C3B780A73B27B3175BF83B6AD
                DF462B16AEA06D6BB6D04FDF0E43B7B523F5ECD8956410F7077ED10BBA85348D
                1F358CECADCD9007399193AD2D39D93853A067180029A6FCF43A00534FD949B5
                94115F253CBF5DF1025E006F6E3C4ADED42A2A2944B25AF60489EE3D849C7AE8
                3075F030EFA8BCE491F039FE3A5B55F953E13101FA4C7C22B41A887799D977E0
                4D50762720B945CEA2A2A4493DBBF7F90D146E007EF1456FEAF5656F92EC0891
                ED5750BAB2C6827C85E76E00CAC794C49C46E43C5ED1B1399B700EE82B40F277
                13594E72FF573D0AE727B03EF1C9792BB7EC38E4366FE18AC66327E59A50F590
                B39B37393AB99381A1193C863540B849C6465680C1925C5D7C008122A0D08797
                71251D6D23E16365542C972F29D3D93397E8F8B17374F8D029923D080F0225F3
                EC59053A72E82CEDDC2E4B87644F0A5F3FB8EF98E05D0EEC96C5118D8D84F33C
                346D22664E662DA42963A708A566F74E5D515D74A36E1D3BA2AF3200257A573A
                7BE208E5A427939DA525B93BBA62A4C08982DCC32905BD9D82148C57B27C1F96
                45F92925988DF9408FEEBCA5C6DA175457FE48B0DB954F84C7B2FC0684A82A7A
                C59EE4EE3B74C091C422997DFEA089DE21C17DD2F81EA12C17492C3C0972A090
                D02CCACEA8A654C8FAA9F1F82542523EA8FF37427ED21D21879B8173E7CCA22E
                DD5009B51727E9CE2893DB4B531789CE988C1B4D0ED62EA2A890A4B789B139A5
                8909454689492573A2134A7AFCA3FCA4B580F22542CF86156BB6FB01948717AF
                A8346BE91A12C3A283470DEED242DBD0D531465831A31B7AA6F02A8E74F4C819
                3A75F2029A66BA74FEDC153A7716F3AE48464F20193D76F4ACF0F523874F0BB6
                73E7213A764C8E8E1D392F78157E9DF0FA1317E8CC497992DD7B98562E594D8B
                302FC2A0CC9D3697A68E9B2A40C2550543D2BF776FB4F3FBA29B2C4393C68E44
                4F4919E25D08C545C450885728057B4450905B14258464503E7A3C3909259497
                5C8C29BB46018C7B75D04E1E365313CA624245F31E55CEC386375453FA809EDE
                FB400F6EBFA6374F51F50096978F44F411950F039487DE5168E82FB0A467D4FE
                920023ECE4A415A182F311A4839E5DBB09B0F48537D9B77737F5EDD79B3A7492
                22A94E288F25000CBCC9DECDFB00B663737468F2D3E4F8BCF8A4C4E273D88CF0
                734C6269A77F949FFCAF8382B02301FB12C72237CC5BB4560045454DB759454D
                9BCECA5D26F98B57E99AB23A2941DF5005103A80451BDE431FEAE96E681D9B36
                ED0200F00C82D738FE9BF17359788DC30C0A80397DFA329D47027BFCF805FCB9
                23B47DFB7EE1CF1FC49F61900E1D38460BE62EA139982A9B3E6986000BDBA0FE
                0385AA82FB3EDCA5FD16A389237006E7EB2FFB00AA5914E0E146F61637714AD0
                8B3C6C3DC8C5CA8D025D83291DBD998CE8144A0E8FA62C74AF8BF0A6E625E5E1
                63780478027E5E0BA5F841F5037AD6F04CB0C7758FE9D5BD57823DA987FEF2EB
                6301D4E4C4382E89EB51391552323ACD3CB65055504138E48541A6894255D305
                F9C99AE54B70FCE438494B415781B8D6A9B334C974E940BD3BF5C111561B91A3
                8DE7FBB8F0CC5AE83E8E4909A56BD1D9EE8F56C33F0C3BAD05943E0065E5AA75
                3B5D56ADDD72475159F3E3854B8A74E234C603018AC25515525050A56B082BEA
                EA3704605454B485377AE5CA8D020C47E1411888431C6A000883D2020B3FDFB4
                690FEDDF7F82CE9CB9228420868BFF0C83B265F36E2485A704506660F28CA7EF
                278F9B227C3CFAA7511860427208199F41E98741E8C9187AFE79C80F386E3A98
                94E4E548E1DC059CB7E1497C0BB233B627376B0F0A7209A400671FC201730AF3
                F2A3F8E07884A2244A8BC25191D84CCA4069CB1FA744304CC9948A399674CCB1
                E4266266056014A3A2A9C60054551E4A677C2E330D0972660D12DF52E836188C
                C24C4B1ED45A1D150DA19AF90A09ECBA654B8404FB98EC7E210475428E222985
                90D4430683E11BC9F3965F73B06FF4B384C8ECD4C4D8BCABE84D8D8F8E29E892
                9856F30FCFF4FCAF8392985E2C0EEB0E5576F645050D13E427E567E514DE1DC6
                60D079794C75011239E825721795F1FC1AC95FBE4EE72E28D1690CEFEC3D7082
                96ADDC04A0908F9CBA48C710420E1F3B4FB248520F1C3A4DFB51D5EC3B7852B0
                B372F026780D1B7F8D3D0A437506FAC90194C6A730D1B61AC74867CDC0C4186C
                EA8469346BEA6C403303AEFD6B0C2F0F16AC6BC7EEF4C3A0EF6912CEDEFC8C63
                146B30B8AC7B5D5518653442126DAE8D01281D2372303623071C05BD65A84D2E
                E606E471F316F942DB0941391FED13488941C867A007A5A3D4CF888C132C2F3E
                857262932813A57F6E5CB2F03C2B3A41780DF77BB837C5435685E8F914A46751
                4C408830DCCDA3992A0036C0D599FC5C9C00C5127C9FD248BC3B0AE1884B6227
                4B77918399C7DBCCA4A2EAC4C83CC7B8C8DC8DB1D1855F2726564AA764D6B7FE
                938280440CD6091ACA282FBFC8CB862637538F9FBAF062DFC1A32239781386E4
                C4C97374F2CC653A74F49C60075112F29BCF402C5ABAEEB7AFF173FE5A0B24FC
                C8C69F63B0D66DDC454B3125B604D3620B3100BD73E741BA20771555911C729C
                4B00E6082D5DBC82E6CFC5CC0942D0EC697384C9B151C347A253FB1386987F44
                8EF21D0DFD1EC73F71FE8641198169F8EB9731A2A8AC8186E20DD2BB8681EB2B
                2A64AAAE45D637008EA63219ABE25807B41CA3EB9AA4A7785D307EEE6862497E
                F62E1486AA2EC2D38F921146E20342059018A2A4E0088AF10D123EE650C38D4C
                56A1E34363292A304400252D2A0A612C8DD263001D4C19C00CF9FA2B8C1FFCA2
                C20EECDF97D455AE8BB2130A3E385978DD2FCEA9894A8E2E380F50C602942EC9
                C9D57FCA9BFCAF7B14FE0692324AA4D1EB19949D5FB5C33720DCE7CCF92B8D07
                0F9FF878F20C348F834705508E22E9640FC2C690EC46B5C29E64EE8295023C2D
                50B480C1D0B077E13FC79EE6BB1F4792046631FA0DF851806BEBD6BDC857CED3
                952BD78530C465F495CBD768E3FA2DB464D1725AB46029CD9C3E8796CC5F0C60
                66D1D89F66D08F0347E3C4E05424B253680A0EAC8FF969040DFEE61B1C3A9F8B
                E9F993744349950C55D448EBF2557CAC808FAF90BE12BADC8A67C8444585CC54
                55C9524383AC711688CD18678B55CF9EA54B870ED1B59327C908DEC150494978
                7432322267ACD370C05190409C3DB631311772212CF8423873C640B70539E2EB
                B70C6FC053D9C083DD20FD6B5768D1D4F1D407554E0F94C9DF6022FFA4EC0151
                7C58E487E88084C789A19969D929653A2931C50B93E34AFA26C49549C6C595FD
                296FD25A4011C736C51E25157767E188A3DE2585EB05C74F9D7F2D7BE464F3E6
                2D3BE9DCF94BC29BCD8030082D6070389A3D6FB9F0F923C7E5FE1FE3D73348A7
                3090CCDE64F1B2F524DDB1277485CEF4E3D0313479F26CDAB061075D4229ADA8
                A84E97103A58A4DBB97D0F2DC3C8E30A9E7607284B17E01C0F6CD5E2ADF4F38F
                93E045C6C2C38CA11F077D8BF0330E83CD53A0E07E4DCBD068533C759E6EEAEA
                C3836020FAA21C299F3D46EA178E90C1B573A48D9D29EAE7CF0B60F0C7A6D7AF
                93ADAE2ED9EBEB931DF6A358618F8AABA9295960F18E16145F7E8DFCC183248B
                333FE7F7EDA3FDDB76D2BEAD3BF0B89D362E5D4E5B57ADA04338CCBE0DC92BDB
                A6C5F368EDBC9934E29BFE34A4DF97347DEC683AB4739728C8CBE383A783F323
                1B2387CCBBE54F4CE223B2D6A7C6967C9B915CD92139B1F24F43D22A40494DAB
                104BCFACE8001B9C945278F09A8A7EE0D1E3971AF71D38F3E1C24555D1EEBD27
                E01D208E9DBB8C37FE1280382780C300705859BB6127E17574EA0CC2C869053A
                7BFE1A9D9353A1D36795F0B1325DBCAC41278E1CA691583BC1BD0E1E2CE629F4
                AFFA7E495BD66F16069F54AE5E170E7DF1B10D591C9198327E1A0EA9AFA7CDEB
                B6C2A3CC45DC5F478B662CC0ACEA441A3D6C34461EC6D3C4319368ECE8093402
                4727D838B7D9BE69273496F398A95522C54BD770865901FDA38B74F5CC391CFC
                023C729704E363199CD7685C5543D75A1BE30DF030F8B72DF40CC9C6D888ECCD
                90E798FFB2EAC2C1549F6CD19FB1C600B8390433038889DA57AEC17329092714
                6FA8A862F3C1753250C57627EC5BE143EBBEAECECD1E0EB7DEB9DAD9DCC3630A
                86D48DB12F661386C2066382B033EC4F879C968EF2FFAAE0D6F24DA465944BE4
                E6D7F54ACB289DAD6F68AB257B582E6BE7EEE3CF4F9CBAD27CF0108321878414
                10C090C308790927B5EC49366FDB2F4072F1323CC3150D3A730EC92E20614014
                1475844723E40B7B766C170E47717795C5297E1CFEE3301C21BD2274A795107A
                AE43F2E74706641666631762989AF595E598515D366789305CCD2391F3672D10
                7298C913A7D1B8311369C6B4D9347D2AA6E6A7CC16FEDC02BC8641DBBB633F76
                A09C22C5B3E771BCF4C22F90E098299FE5B908C5F82274206E442A23F43138EA
                1808D7C25A2FDE5A60009DC644E31733C68C2E43C2B0D86002CF4AC7E097BC47
                5D930CD534C804678E4DD177B2B8A127BA6968D064AEAFF7CAD250BFCEDDDE2E
                0A27033501C61A4C0DFE888D9732B0BFDB256ED533B389C945627905F5F02A65
                DFB9BA876C3B76E2B2333C4AF5B11397DE9EBFA022BA8872F92A9240B64BF84D
                E2DC82B515798C04B494C75C3E6B6818D2C58B2A8266A282E1677E7E15676354
                1495481F9B0736AE5D47BDBA75872ED21E15017A2310A2460E1B211C06E3C35F
                D715D5D0C73113BCC1E2794B69C9BC15B472F15A5A06597FF9221CD780F1E719
                9405B317E2F3CBA15DAC156669199CA913A640E21F875C662CF29849386A3107
                87DB976069CE7674A4F7D239B4F82F9F827741FF49F028F877B5E121B4145584
                53879A989C63D35650205D8C32F02E385EF16580632186181A67E38F79698F91
                860E994394B436B610CC42DF446472C3E883B9A1E9B39B6656A538DCE513111C
                7E09434E0B01C73718D3EC8C99DE7F099256117A5A08CECCAE9248492BEE8A83
                48E394AF1B9CBB72553B5CFE92DA3D350DE30FEA1ABA226DFC16B1E163D2C4C8
                228B6F6A6A7A0234AC895C851BD7D4C4D033C6079494B48447751CA9E047858B
                97C8C400E78AB1CB8417E074EFDC0D67763A088FDC7DE5379A67655595D40553
                B9AA2A3409B7AEDF89377C86E059D8E643DA9F83E31A5C152D9CB388562F5B23
                2CDC59B178A5F0F1DA156B68D5529C284412CC87B3664F852E33793A8E984E15
                92DE8DCB56D19E8D5BE9089A736731E9CF9E85C3107B12C19B5CFD359C70628B
                3CC648F53A19AB7168C11241844836FE58E79A2ADDC0E133636D7D01103C36E3
                9CD15B8072DFD9CE311380D8A625A61E0624533292D3FB01940E00E59F0E37BF
                F72EAD22F4F037841C452C39B5482A37BFE60B7B47BF7956D6EE1ADABA1669FA
                86364F0CF54D3E9A60E400B39E6480DF22361E21B801895F535D872E20E1E5F9
                14550850782DE9EBE14DC7C76C7A80CB10EB29540089B6A60EA923D95CB56235
                F5EED907C214775D2505B1CDC1CE8534D5D00E38839C027A0DCBFBA710DA962E
                5A4DB3672E4172BB88664C9D4733A7C17BCC5828188799E99366D296B55B682B
                C2D556E43C9BD76EA48DABD7D286556BF0F15ADABE71234E03AEA6F52BD7E2F3
                EB69D39A0DB465F53ADAB6768300CD81AD3BE9D8EEBD746A3FCA75544F57CFC8
                911AFE5B3807D1C12805DB6584AD6B97158493897AF024DCDCE32323F0802265
                85EB1F14AFA83EC7C980EA5BB6EE11D8ECA0939490BB3923AD78444A4A414F0C
                7E4BF311987FB428E71F7DBDD580C2DF684656B95861F1EDF618A819E41710BB
                F696838F8599855301664C5EC09A4DE162191686A405085DFC56A9AB6AD165E8
                2E4A10E818289E45E139140DB402F8B9B6A61680414C3730269B9BB6F83B4C68
                D78EDD5801FA33F5EB3B80E4CF5F21C75BAEA484137847705CF32C1250610C01
                A537B7F2B991B87AE516C26A511A3B6A328DFC099B077E9E80A4F617E3DE10E7
                2EAB30DBBB6115CAEFF51B69D7966DB47FE74E3AB4772FC9EE3980C7837470F7
                7EDAB703E30C5BB60B26BB7D37BCCB3E611BC2F13DFBE8CCC123589D71822E43
                7064BB78E424C91F3E81D380677FB5F318983AC767A34558CDD104EFF746475D
                AFF1868E491686919C9212B2CF65A6172D0028DFC6C7664127C997C41EDD7F1B
                9256157A5A88CECAA914CFCCAEE80C5886E2E281DDCEAE818E0E368E65F6D60E
                AF6C2DED9A790492CFE0981B590833AB6C962616C2C1AFEB4AD8F18AC536E6C6
                266461622A3C5A9999234CE99193930B595858213C69D34D2B3BB2C144DC55FC
                B61E3E741C0DC28B4289CC92FE4694CD3B31B8B40D5ACBC6F5BB48F600803975
                85F6EC3B492B566DA3695316D2CFC32708A5F2989F26A14C9E81BD24D8CB3672
                B200D2B2C56B680D36176CC44682AD5B76D1761C44DFBEED30EDDA798CF6A282
                E36EF5FE3D87E8F03E593A71E0109D3BF4CB4E15B62B80E0323CD92578B20B87
                E5F0B57380E70CBCE52591BCDC45D1F973179B611F14AE5C7B8D26E9033B3BD7
                122FAFB090C0E0782DAC28DB9A5F787B6C56767DDFC4E48A0E58D1FE6F859ABF
                F530ADCAA3B47C737905B5B8B420AF1BA6C447E1768AC3DE6E3E9E1ECE9E556E
                8EEEAFB177AD19D0E0C017DE6C0B6BB2C336013EDF63618C59145535011643BD
                1BE474CB9E5C1C1CC9DAC2921CB0B28ACDCCCC4200E51AC4B17367E501C611DA
                BBE720EDD8BE575066B9F3BC03F23E8F2670477AD78E4358117A8CB66E3F447B
                F7A38F74F83CEDD9758C96E378E7D4F1B369E4D0F1806434609926D8C471D369
                F2849958543C871663646113364BEEE1FD70C7B9B37D95CEA1223B8F8AED344A
                E8D30833A70F1D655044974E9C626BC6F29DE62B27E59B154E5D6C563AA3D874
                EDFCB58FCA72CAEFE5CE5D788B0DD92F4D4D2C1FBBB97ADD0E098EC88F894E0E
                4D4CCC344578399693573517A1FBDB389CF643FF460A173DFC47BC48ABCC51FE
                96607816C9AC9C8A9EB009610151A770BCC2D7DBCDB7DAC3D90BDB823C9BF028
                C2581F011E61C8D9C9CE919CED1DC8D4D048D8D6680E3DC2099A828B833D7962
                5C123F644CBC5D876CCF6F9A1C3CC909DA8F7D250C08F77BD89B1CDC8FD6003C
                088F221C963D033B871996F3B419A1672B069EF871CB9603B46CE966DABA017F
                76CF1928B58B01C8629A3A71154D9BB68EA6CFD94433E76FA7794BF6D0FC5507
                68E1EAA3B4759F12ED3BA64967E4F551B21B13B422E44FA8B2AE6960FD84CA7B
                DDEBEA2F3414951FAB5C527CA87251F9A1BAA2D643034DF3FB66FAF677AC8C9D
                AB6362938AE31352D393533223D233729DD2B30A3531417F0887B71625A6140F
                4F492FEB8D03731D92D2ABC493D26BFFE390B4CAD0F3BB10240648A460BD71BE
                650AFA1D672282A3BCFCBD024B00CC634F17EF77F0324D3C031AE41B883D2718
                A87674227F6F1F010E86451B2BC7AD2D9004234F31417EA385D91606E538F6B4
                F1E4DB312CAE6150783E851B84674E5DFECDCE9E46A7F9F455C10E1F97172059
                084FB26D9B2C003B4D1B5663C5E83AE41C3BCFD186B5B228BD8F42ED3D4EEBB7
                A05BBDE33CED3AA040074EA9D13139033A745A8FCE5C3627556D0732B7F4A15B
                0EBE18FEF613F97806BCC77ACF7B90E7331D2CAD435D6C1CFC7C9D7D7C220363
                7CD2E3F33C31D4E45C925B6F95929AA58BB1D0CB19997907B3B20B566564174D
                052883014A9FA4D4924E004512A0FC5700695582DB1F65DC804480A5ACE8761F
                1C7798949654201B17956189CD8FF1C101D1557EDE418FBCDCFD5E7BB8797FC4
                3EB2E6003F7F912F407177732147875B98A335253DAC1457867A698A04D70CC3
                D72A68CEB12EA38C8A88C7152E60528EB596DF9B820276B9FDCE0E032459340F
                57227F59BB7E0F428922666F2FD2B265B2B472C5719A3469078D1E8705C623B7
                D057433750AF1F61C3B6D180898769F0ECB3B47CB7216D39821388575D48CD28
                88CC6C42C9D631A4D9C72FEA795C6C6A3A76CC6963E9E09EECCCBCB5B959C5AB
                F3722A57E565D7ACCCCCAA5F9A965E332F2FAF626A6E6EF9A89C9CB2EFB3B34B
                FB6664957505281DF83C1420F9AF02F24980C2DF24C3929B592E05EB89E5343F
                E19CCBAADCAC52F9B4E43CEBE888F888E080F0021CCDB81BE81FF202A0BCC7E6
                C36657B4DB03FC7DC9C3DD159EC410C34FD7491725338F556AA14AE2A9393D94
                D8373031C79A0C6B2D2CD0B1296371CDB56BBA822929E908761AC2DE11789CFD
                D06BF6ECE3F14A79DA06CF316AD432EAD9630C96D58C2071A991D4AEFD586AD7
                6912B5EB368B24FB2FA7BE63F6D34F0BE469CD0133DA7EDC8A4E2BB991A66928
                99DB8631284DFE81B1F7D35273FD01CA0E803214A07C919359D43B27ABBC37D6
                68F44A4EA9EC199F50DABDA0A0AA0B60E90450DA67659548001271D85F02C827
                030A7FA369A9E56258272199935DDDB9B0E0767FACE51A8D5D22CBD2D20A8EC4
                C767EAC0357BFBFA0567E06281DB5EDEBEAFDC3D3D9AACB043DEDC1273214EF6
                C4A3959779B6854B6878125CC444D7AE6BD3558C05F0E3151C0063BB0C2FC26D
                006E07B0C95FFAC5AE69EBD2666CA63E09714C4E5E9D162EDA4683064DC3D4FB
                30341A4760DC7032B5939A4DED645650BB2FB653BB0107487AB83C0D5C604C93
                7779D356F9683AA4144B978C32C9C8A9886CBD8BC83D20F723161736E417D739
                229C2C4358419E912389BD74E2A9D995E2E939F5E22959B7C59333EBC573B32B
                C57096073F837F5F0FF9477A49AB96F0FFEC379F9559298E3B76A47273AA6400
                CA17F80D1B8CDFB019F8416F8F8B4F51C17525DEAE6E1EC53676B6CFCD2CCC9B
                4CCD4DC8F2A60599A31CBE88461A0F44C943C86238E4D0B83B0971EDBCBCA2D0
                6014ECACA2D0376AB193C84FD84E5DBA427B8F41DFC0DCC9BA0DFBA957EFA1D4
                A1C30F38BA39843A779D42521D6650BB0EF3A85DD755BF80D27737B51B749C7A
                4ED1A0911B1C69E3B9F0DF40D1B3CB256BCF02F20E297C1F9B52568DF10AAB8A
                CABA79C52595DD73F2FFF966DD9FFDD9FDBBAF6B95E5F13FFA8F82DC2F969357
                8B466275079486DDE31233BEC92D289F9A96952BEBE6E5EB606A6955666963FB
                DAC4C25CA4AA09351302DB05F46F648F9C161A8C0CC7B90B57855104EE441F3A
                22F79B1D3E7A810E1FC5B41CECC831086FB04DE8D39C47BFE80824F73E5F0DA3
                5E5F0CA33163D750E72E13A94BF705F028B3E0519651BBEE80E4AB33D4EEFBCB
                24394A97BE5DEB47F3CE15D006F9743AA155408A376B49CFB19A6C026A45A1C9
                F7DFA6143C2CCE2AA8D34DC9CC9F9A949E8BB1C4BFE636AF7FF4F3FD9FBEFE49
                82F2FFEB2D3500A64A3CBFA8521A87DB7B66E6168C4E4ACB3CE6E6E51DACAEAD
                73EFD255858F4AB847E714E65A793C6117A6EDB76CDF8701A8638237E1D1489E
                67D90F518BED802CA6E420721D44498C0E36E0C15920D8F683B274FC823C4DC7
                26C77652BD3025B78B366F91C7619721D4BDD762EAD80D90745947ED7AC39330
                2803E5A8DD1055EAB7D48D669CC8A25DCA8574C9B486B45C1E9289C71D720A6F
                14C5E7BE7C995DFE220DA05CCACC2B19999E53D4292DFB9FBBF1E25F79C3FFD5
                3FF34983D2F21F9D995D2E0693C4C6C83ED81CB9203E29DB18109462D0E92DC6
                1144BCBC8FF7AEF14939DCCD23CC9EF0A66A2DCC81F0A66A9E4351C38132DEB6
                C47B6679DC80CFE8F25A0BC54B4A287F97D1EE1D1BA9FFA0EF00473FBAAA9548
                5F0DDE4FBD7B6DC2B1D34524D36E2C7DD1693A49F4DC00500E51BB915AD46186
                057DB7C982169F0AA65306587E63DE4096DE0FC925F01ED9BBE7351716BD7C92
                10571C81BCEB005A17DFC1A4FFD537F1AFF8736D0214FE41312C00A5537A5631
                AF19BD78F18A6A1AC6215F62124EC4303000A778E12FA0E175A16C7656B784AD
                082CDC39E1B86AA04F10F9B8FB0A221E3FE26E1FE10285F973A6A239389B647A
                F4A66EFDC692A6490EF5FF719F004A1709EC530328BD3B4C25C95E1BA9DD37C7
                A9DD583D01941FB658D16A24B2678CCA49DBE60159F93C226BF76AF20EAEFA58
                54FCEA6E7262997B6E4ECD5A408292B75CF2AF78C3FFD57FA3CD80C23F008082
                1054FE6D566ED9015D7D8B488C423E0130CDEA484259F2674FC2D36CBC849861
                E0B51851A1D1843B7C04C3ED1B585483E57B58B181FB8A293B2D47B8BB67D2F8
                5168060E472E224DD316EC24E35BC5D4F3EB6D4864D76097DA124CCC8DC7F4DC
                7412EFB783C47FBA44ED265B90E44C5B1ABCDD9136A965D205AB3B74C3E31599
                F93C26ED9BB91491F2F87D7EC9AB4A88641639F975F33272CA7BC0FEA3BD997F
                15883651F5FCA3FF788022995758D5AFA0B866A383B38F1F8E773C5050D26CE2
                B63C7B0CDE77CF034ABC3F85AF5F610FC28B781263920430F8A60D8683F7BBF1
                621E86860792268E1B493F7C3B00DB0124E9E879DCF805503AF45A03ED643186
                9F1608A074ED3483DA0FDC4B9DC6290B90B00DDFED4A7B0D4A48C5E539990534
                91A1FB3D52D44F1425E5BD7D9D53F83C3F3DAB563DB7A07E1220E902FB4B7591
                7FF4B3FCDBAFB7358F220E487A1796D42E0F094F70012477AE5DD7FDC8F90683
                C21E85BBCEEC4DD06814C20B6F69626FC2C03018BC23BF003772B057618FF3F3
                90113461D418E1428276D808606C1504753585243881955828C0D24E6A0A75EA
                0160869CA40ED30D497C9E1B89CD75A59FF6FAD341D35A52F36F26C39066BA76
                AB9A2E18248A124A9A5E24153C494DCDBD2D9F535437223DAFAC23EC3328FF2C
                BDFFEAEB730B2A19941EF945D50B9252F36C9454746A55350CDEF3A2E15BD882
                C0F90643C2D03028BC8D89D777B1476140D88BB07108625838C91D3174240DFB
                FE47EAD2BE23A090210FFF4C3A7EC99BA47AAC807EB28C3ACAAC22B10ED3A97B
                DF652433528E3ACD342689F9EE24B5D09346EC0FA4FDC6D5A4E2F381D43C9ED3
                C91B9974DD264F145FFCF15942DEA3D8B4BC86A3D985B53F0292F69F4141EEF0
                AFBEF1FFEC9F43D8110324DD90A7CC419E6206502A35B48DDF213F11F10035DF
                C3C37BF0191A8624146B3482FD427E0385BD08EFA2E55BC238FC7085341AB75B
                0CE8330007AA244946E60B0A8D2EA6B5BB74A843CF1524DE7939497659094576
                01C97CBF85DA4F52A17673ACA8DD422F125FE64F630FFAD3AE1B6574C6F1211D
                B5ACA62D8A51641450DF1C53F2F14962F1A3F094A2FADDE985D583D20ACBFFD4
                F9DF7FF6E7F19F7CFD5FF626FE27BFE93FFABB5A4041E5330BDEC518A0946BE9
                9ABE436523E23C85430F8719F6300C4A74588C50D9C484C7FE060BE728FC9C2F
                83E273C87CA56D9FAE7D04507AF71E48510915347BC5256ADF63397A3B083BD2
                8BA0C82EA2EE437650E769EAD46EB625B55BE049922B020550B66A15D241F31A
                DAA6954D2BCEFA917DFC7306E5514AD9D3C0D4E2DB9BD20AAAFA01947F79E8F9
                AFF8B9F2BFD1E640292AADEB9A965934133D13C3EBEAFA65A87EDE62224EC433
                A67C1483F312CE3DF8E2494E66D9A3302C0C0887215E50CCF94A00B63AF1AEF9
                F1A326081750F23ACE6E5DBEA4A4F46A5AB8F20A20994F62322B49BACF4692E8
                BB9EFA4C384152B3F4A9DD3C3B80E24A3DB645D3E8EDD674D8A4980E9896D28A
                ABB1B4E96A1045D750736CD9BBFB31798DDEE9A5B757A7E495F7492B2C6DD515
                4F9B05051E656642728E21F293323D03CBB79888C310B28A3069CFB90983C225
                3283C21FF323871B06853D0EEFD5E75C864161E32B6D1994CE1D7B532C96E44C
                9973125DE24524DE05BD1D849F76BDD750971107A9DD240D841E1B6AB7D8837A
                6E8FA129079CE98C4D0D9DB4ABA7B52A49B4E33AD69962EB2940B90B505C32CA
                1A96A5E657F4FA0CCA5F989F30F51C7AE051BA65E694CE0A8F4A3656D3342CD7
                37BAF90E6FBA88C30E0B6B187612C20E83C05EA3051C0E370C0A43C31729F05E
                7C8664CAF8A900A42B362E76C02AF15E842BEA68F4845D24D6793149775B0FCF
                C21DE32D2431FC28B59BA24762F3ADA9E34A37EABF2B9CB629789049C81DBAEE
                FD80766926D131BD688A2CA50F09A52FEBE2F3EBED72CA6E2FCC2CA8E8915950
                F6D9A3FC5531B4051494C6DDA0A7CCF1F60B3743225B69646AFB0E6146C4B78F
                F236000E391C7E3C5DBC046FD2F2C8892D1B03C4B90BCBFB7C6C94CFFCC874EA
                2680D2BD6B3FCACCAAA1293321D3C3A34875457F073D1EF17EDB497AC4097813
                53EAB8DC89BAAEF3A6017B22E9AA5D3645D5101946BEA383FA9974D12A83C28A
                9ADE03942A80620150E666175575FB0CCA5FEF51C4014A777896F9B71CBDAC90
                C8D6985AD8BF67ED846FF562AFC183D92CB6B5781216DF1818CE53D8B8746660
                58C1656FB20E57B4B597EE2C2CF7EDDFFF3BAAAE7A4CDBF7689354673408DBAF
                C690D25612C35881D4E8F324B9C8863AAD70A4AEAB1DE9BB1D1EE41C514A58EC
                48D6B16FE8B83EAE89712E1045E5BD7A9B56F2BC3435A7C620BFB866465E5175
                D79CC2D62DB6B5C51C8541E9015B646C66774BE78679BDC54DA70F2CE1B37168
                69E9E9301C2DC62128C43F540088C3133FF26DA5BC75892FCC96C60A5106E5EB
                AF7FA4E2A23B744DCD973A7547592C81FCA4EB16E4283B4862E4590114B6CE2B
                6ED1B7DBDD292CFB213DC44FD92AFA151DD54B24738C1700943719652F0B53B2
                ABB500C964C0D2E53328FF3B1EA5577159FD726D3D3357543C77AD6C5C9A583F
                C1D9202127E150C32188BD0783C2550FE725BC369DF317FE1CC3A2ADA6231C1D
                E5DCA617545909AC0DEFD1B32F36528691B67E3875E9B99EC43B6E22F19E182D
                E8BB872421B6492EB426890537E98B0D4E3452D69DB2ABB1E40FBBEE2D42EED3
                118D70728C6810C5E63D7D9D5BF13C272DAB4CB9A0A0627C717175E7BCC2FFCC
                21ADFF66986F6BE5B104BCC91725E5B7D72191F545C5F3E0A6AD6B338F14B0C7
                68298D59B6E7E79CD4B200C7D0F0E7788F3E871DCE63B8BBCC87D179E460C8D0
                E1D459A62B7A3DD258BAA349CAEA7E022832BDF650C77EB22439F010B51F7391
                A4E04DA417DBD2777BFC68865C18956375681DD6801AF9DD2659D510728BBD2F
                8ACB7FF632AFF2457A6A66E9C5BCBCB29100A5D36750FE628F52545A23896B5C
                BEC2352EDBB159325853C7E0B19D038322074FE2F11B2CBC263D047BD45CE15D
                70EF2F05054662E97110050545D14DAC26B5B47626E4383415E78B794472E172
                4CAE49F4C2396519EAD7E7075A306733EEF4DB4462ED17D0F49576D4733442CE
                2873929A78937ED810415F2D52A32D57ECA9EAED3BAA7CF3962C7DEFD325FD34
                72896C146555363F8FCFA94FC82FBB7DAAAAAE7E686E6E7E87A282E256DDE769
                73394A7159AD3440F9362A36E92040893230B6786A696DDFAC8AFB89F9EC0F57
                331C6A62B1448F2F5FF0442E128104D71F378D32283E3E2164834DD448800558
                78DF1B6F79923DAE8029B64102286C03FB63D9DF8FC85124E7D2B7E35469EEEE
                6CEA31DD89DAFD6C48237626D28CC3AEB45BC58D32EEDCA5BA8F4DA462914FF2
                7A29149CF1A6B9FC3E3D8DCBAE8B4ACA2C3E905350F85D7A7A66AB1E586A0967
                6D26F4601452ACACF276073C0E75F7F23F8D4BA1122D6EDE7A8EC5C622236C32
                0A0B0C15C4340E357CE902DFD0C1ABD3D9A3F878079397672039E30E639CE7A5
                1B865684FC8676EE39426BD6EF200D3D4BEAF92586A9C5F8A6CF8EB85DAB37F6
                B7CDA72EBD9791588F9DB44DBE9A969F29A27E0B1C497AAC010D5C881D2D2691
                D4807B78B0E69E6EFADE217DC7328AC97BDF5C504F0FA352CB03E3D2F3B6E616
                167D555050D4AA0796DA1C28B83D4CACAAB6B1536149F56800A2A0AAA19B71D3
                D6F1E52505659195A9253C09E47378140685BD491036303228BC5FDFC3DD1F87
                C6FC84B0C306459730A2206C769A357719A96387ECF0D1D371055B57DC2DFC05
                756ADF9FBE1B309B868E821A2BB59624BF55A755E74B69A7D67D1AB72B9A86AD
                C18E16BB14AA7B27A29227AFC825E21919B954925FC2C38FC9452FEE24E6D4B9
                E657D4AF2CADACEA535858DCEAFB3C6D2AF4600A5FACF6F6832EA515F593F50C
                4CB5D434F50A1076DE6071A0C8C1C61E95CD2FD36C6CEC4D8203C3C88F2B1F84
                22676C9EE69DFA86D8B3CF87C22E5F55171605F242C169331791ECB15374F8C4
                198C3EF613EEE9EBD16D00569D8FA43113F6934C7F94C75DF6D137B30C69BB62
                1E9D32BA433BAF8690BC7104A594DF23DCAC421A1629A46A9A483E51B5EF324B
                5E5616563D31AFA87F3427BFB8AC7B467A4EAB5765DB142805C555E2953577BB
                9794D7CD41120B5556BFD2D4C2E6FD31AC1FF576F31272140E3D3C7B12191E43
                A1D8E31A04EFE28BD29877EB1B606D3A9F1ABC7C198B0291C0F2FA510685D78D
                2EC2221CB39B76C29602E13247C91EE8267F4DFD07AEA0EF46635869E039C0B2
                9B06CD35A60B968FD021FE48AE890FC90BEBC85D23D2C8D0218F6C7CAA444905
                6F5EE556BCCDCE28BCA39C5950351EA706644A8A5B7F69DCA64041220BB1ADBA
                173CCB5275AD1B8EDA7A460D00E5231FF8626FC2C6A0F0C8634BE8618FE20CCD
                C4D0C002BB52B0E80F7BE178353AEFA7E535A567CE5F15F294854B97D14585AB
                D8A97F967EF861B030E926D60E579D74F889060CDE448BB698D19790F0C5FA6D
                A1BEA37048FDB80D99BAE7906F4C3E85E28ADBC8D4279490F3BAA9A8B6E9614E
                C9A3D0E4EC32D98C9CD21FB2728BDAD7D5DE6DF5154F9B020521470279CA9758
                09B101F989AFAEBEC90380D2C417303024BE1E3E428EC29D61CE4FF8E6302E8F
                2D2D6C852B5CF8A60EF6269BB11B9F171AF3C6490E3F9CA76CD8B295264F9F21
                EC57397AF4388E92764183F06B00F33D49769D45D25F6EA4EF26C9D3F8E53A34
                6496228D5F7A99D61FD225051D5B0AC1ED5FE1C98F9A3150FD2ABDE8797156D1
                03B3A2AA7B8B2B6BEFF701289F4422DBA640A9A8BE23858360832263927723F4
                84E106B1270A4AAACDF02C505B510607870B1E85FB3D1C76F82E42BE518C2F83
                52C252625E9CC3FBF1F7F3AE14ACE3E2C3612D474DCF6291F09A356B68C78E1D
                585C7C43D880F0C3908900A50F75E8F6338E938EA2CE7DE7D08061EB68CAC253
                B4E3880E9DBF6A4D9AC6AE2207EFF88FB925AF5E6617BDA8CC28B8E7955D70F7
                505E69FD7078C04EC565D59F84376933A0001231849D0EC85386F805469CB876
                5D331EF7113EC7552E22BEF7C7CFD3F7375084A9367814BE8F90AF96E32BE518
                12BEE869DFBEA3B407174FB276C2A0B46CBED6D1D1C1D7F6D1FCF9F369FDBACD
                C2064A752D0BDAB5FF128D9CB0967AF49B4D1DFBCC22B1AE93A9DB005C0AB5F0
                90E8E839A3261BB7A8B799250F1F5635504149F547B7BCB227A7720A1B27E514
                D7F6C4F7FAC9789336030AC28E1896CB7442223BDAD1C55B019E24D3D0C4F215
                AE9C1359E196520E3BEC51F8760A0605BB54C8DECE49586BCEBBDBF8A6B07DB8
                7C720776B7F1650A7C3307E7291C76189653274E624312EFB9BD46BBB1CA6B1B
                EE20E4AD07DA372C4945CD8414AFE993D235137CDD48A4A965D3E4E014FE262C
                22F75166C1DDF28687A2E8BB8D4D26B5756FF69696DF1F5F5054D71B9E4F0AA0
                7C32DEA4CD800240C4D2320BBA9457354CB5B476D4C16A8B22334BDB37B8F747
                E4ED178C1E8FB7000A0F2431289C9FF08DA67C2F216F5EDA0B2FB20B806CDBB6
                4F0085CF2373D5C35E850FB2CB9D3B4F0AB845E3F2156C37C0CE7B3EBBCCFBDC
                E4AFA89386B625B628B9893C3C639BB03FED6D51F18347F71F52292CB2AAE1AD
                25EC6C65D58BA5A5654F861416DFE99E5F582B05EFF74941D29640118722DB1D
                BD9E79370C2DAC9455B5AAA1A5BCE75517BE08332DA0B047E1CE31DF89CC2B48
                2FE35CF111DCD0BE1B57D8F22648BEC78741D9B31FFBDC90A77042CB9E859B8A
                87B0EF6D37CE2E73A27B922F634045C4FB550CB010D8FE96EDC7002FAF671141
                41954931095105B92566252575270A8A1B9796563C1A515450F765617E6D272C
                C491282AAAF9E4206933A0001009849F3EF02A2B55356EB841BEBF8BC539C24D
                628E2E3CFAF84B8EC2892C8F1A58635F0AEFA03D833516FB7049820009BC095F
                CFC2B0ECC02DA67CE50BC3C29EE500363B1E933D8E7B0A91EC222C1D06408A2A
                3A646BEF260A0E0AFF10131DF9282F2323AB2827C7BE28A7E06C5971D5D2E2E2
                DAE1B9050D7D014BE7E2C27A29C0F24902D2A624FC9CFC32C9BA86875F454427
                6DC5929C4024B08F4E9D956F8667411718F7FCA13C8E0C8910BC09CF9AF0666B
                5E602C7B10AB41B10B7633EE26DC84BB8EF96A968D78E48B1818168682F51479
                5C31C7D7DEEEDC8EAB700F9C2615757D7272F3A7C0A090263F5FEFA7FE1EB732
                7292228D6A8BB3B6DCA9C81FDD585FD3B7AEA6A15351498324EC9306A44D8102
                4F227DE7DED31FFC83220F29ABEA44233F79CA892C5FB2ED8A7C24C43F18D27D
                A4306BC2034CBCE9FA3414DB9D3BF6D1DA359B68DDDAAD78DC42AB576F4619BC
                45B82D6CEB8E83825761500EEF3B4E7BB71F145689AAA81A9091991D9959398A
                B0DDE96D745444454662B84D4D51E6A6BA92EC1F4BB212BBE467A54BE6E5B4DE
                5D27FFCA80D327DF3D2E2BA9172B2CA8E8585E5637025DE00B8A57D552A18DBC
                C00DEA22D648DC713CC313550E27B5E82A132012F6B9E13A3A788EDDB461F30E
                5AB57613AE915B8BB1025C7A808FD76FDA4E9BB6EE822A8BCB95B0667C9FEC21
                3A7EFA0C5D51C26D1837706F0ED6A43BBA7A70A2FC2228342A25392DF70272A4
                D1D046B8D7F449F46EFE5958DA04284585953255950D131D1D3CD414AE5CCFD3
                D5317C8D0B254516BCFB04A030201E10D8385FB981CD90E77029C18EDD07E039
                B6618C600B2D5FB51E3D9D55B410B77FF1C76B376C1540D9B3FF309259DCA17C
                F2149D93BF48CA6AB80205174BDEB47320170FEF66FFA0F027A111B111A919F9
                7B11FEBEE179987FF60DF8545EDF264029C691879AEABBB370DBBAF195CB2AE5
                EA6A3AEF9078A21A7111647A06856F66674D05892EAA993382276128D8933024
                73E62FC1D573B8B8091FB357616F73007BF2CFE0E60EB94B97E9AAB20A69E919
                90A9250EBC3BB992878F7F737058F4E3C898C460B40DB6A1C7F41540F9A444B4
                7F06D24F1E94F2D2DBE225C5D5BD00CA625C2460AF7C4DB35EF5BAD607D647D8
                9BB860609ABD89034A62887042D8D98B1DF8ABA1B032140B70332943326DE63C
                8C3ECEC585964B69C5EA0DC851F60ADE04F32CA4842B6BB1134EF0269636B7C8
                C1056B33FC839AE14D1EC7C4A70422EC6C8688D6EF33287FF1ECEB3F433A4091
                282BADED0B5B0750BCB5B50CEF039426852BCAC2A82377871914CCCE12CBF97C
                433B871D8681216130A6CF9A4F13A7CC148CBD0A7F6DFB2E5C41878B15782FAD
                06AE70D1C5C550C6E65642D8417E423E01C1CDE151F18FE212D3FC311CBD0122
                5A5F087F9FC410D23FF3F36D33554F4559835465C5ED8119E9F9BB305312A6A7
                6BF2F89A925AB31ECE19B3376173C3BDC21C76D05586DA7A1E9B21711BE9CA75
                346FE1324CB02DA249B80F70EC84A9347ED274E139879E5D7B6505A83854E9E1
                22064353332189B5B1772267772FF20B0A6DC66CEE83A4D42C1FE8386BE04DFA
                00943699C87EF2821B20118361A6E3DEE0C88884E3A626D6F1F028CF2FC85D11
                DDC4223F1B9C0A74C349400E3B5C2AA3072454311B714D2E5738EC3D38DC3020
                A3C74DA671B84C92C31027B81C9E78D33526E5500E9BA31CBE2978137B673772
                F7F6A3A0B0C8A6F8A4F47B19D9051E006405ACD767505A69E8F915944E0DB71F
                8EF4F30DBD64666A93AEA6AAFB12F989C801DB0AB83BEC8173C6B6B8B19CAB1D
                1E62E2B298AB1DCE4F66CC5EF09B3719357692000C8722FE3ABF8E955D0C4109
                9060C131D93A380B61C7D337804223633E26A765DFC1B669270C752F4159DCF3
                3328AD1414E427623019789489987955BBA6A4910F8FF2FAC4F1B32286843D0A
                0383616B213FE137BE05142E853937E1B0C3B9C984C933848476312EC7E68A68
                BFEC31012CDEA3CF618741E12496BD892FAEBC0F8B8AFD0050EA720B4A6D01C8
                02588FCFA0B46E50BAD6D7DD9FE960EF8E4B3D75CA74B48DDEB1D8668575A1B6
                5061ED6C9DC8049D62CCD062B5B982A08D706861505A3C0A43C2C6E070B9CCA5
                F141DCE5C74D450C4191096E11BB69774BC84D50ED5060680445C727BD47D8A9
                2C2CA934E7395D58B7CFA0B45E50C4E1517A00948598A4B7D550BF51ABA569F0
                41119B081812F6289CAB70D8E19148AE62586DE564952B1E0665322EB7E690D3
                52F1F0D7B82AE20B161814068C438F2DAE9D636FE21F1CC6DE44949092FE16DE
                A4B4BCAADE0080CC8075E571877FA5A2F814FECC27ADA3B08602EB535BD3B8D2
                C5D9DB1DA03422FC345DC71A2E6B2CF46348589D65AFC0892CEB22AC8F70F93B
                7FD172019429D3E708A07008E22A88C30E27B25C1DB1E6F27B5020B271124B91
                B109A2E4F4AC3705C5158595350D5A006432ACCB67505AAF47910028FD4A4B6A
                363B397A06A8ABE93D943BAFD0AC8625380C883996FA99E246532E7139DFE08A
                87A5795664198A165038EC30309CE072E9CCAF63EFC3703164B8AD43F0282DA0
                44C5253228AFF38BCA732AAA6F2B0390713099CFA0B45E50A400CAA0CC8C823D
                F6B7DCC2314DFFE4E409B9662DEC8735C16A2D632CD0E1C62066688552972579
                2E8D5B34941650D89B707EC225330B6D1C765843515456271ECE6650EC705FA1
                971FF6A84444737EC2A0BCCC2B2C4B2BABACBB084046C27814F373E8696D71B4
                BCF40E573CED613FC4C6A41CB1B5718E81D8F60CC72E84AE317B1243DC8E61A0
                6FFAFF80C2A18513D61645963D096B2933E72C1400E2FC844314370E19304CCA
                FD5AF1B80AD54E78741CC526A6885233739EC3A324009493006428ACC367505A
                A147F915948E0065784870F4199CF64B3232B47C71EEEC2F150F97C70CC90DAC
                37FFBD47F99F40616FC28A2C87244E761914AE903801C6343F59F31DCA1E9E14
                10124E083B8444B6393D3BEF2972942824B30701C877B036DB39FEA495D9E2D2
                06DE00D9092BCD478584C75D36B3BC956E6E65FFF2AC9C82C8C8D48AD8582CE3
                6494AB9713A7E504599E4B63D64AD8A370E8616FC2C68A2C83C2390A97C6EC51
                78428E43CFCD9B36D8748075A398BF8DC62684A4C4B4E6CC8CDCC725C5952135
                D50D3B30E230006D8456BF7DFADF890A9F6CD583630F6258EA27830D90E383C3
                6255004AAE89B9ED6B5C032780C2923D83C2C92827B20C0A7B8BDF83C2E18645
                360686AB20EE28B7E4282CCE716F88438FB5B52DB9B8B8E1AC7218C560B74A72
                527A737656FEC3D2922A5F80B21EA0F405286DB621F8497B14DC2728869DF75D
                B053764A6048B4B6C54D87223D03F33717AFA8FC060A7B13367ED3B9DCFD3D28
                2D0D410E3BDCF3612FC3D2FDEE7D9866FBB53466C87834C1D6F616B9B9791006
                A9292E36895253329B727192ABACB4DA15A02CAFAEBAD31BB0B4D986E0270D0A
                EE12140324DD784B3566650DAD6C9CCA704DED3B1CA1F87F4061AFC2F906E71D
                9CA8B2D7E0EA863D0803C25E85C3107F8EF317566E4F9EB92094C62CDFB377B2
                B74769ECE145A1589791109F42083B1F0AF24BEACACB6A6C00CA0280D2E33328
                AD309165C2F9D24980D21D7BEFE702140B1C9DA80224EF55D474052FD092A3B0
                86C2A52E4FB571586901A5651685616150B8126A11DB5A40E1FC84439893930B
                7979F950785834871D514E76C1BBE2A2F2F28AF25AA3EAAADB333134D50DB0B4
                D9D2F853F728E219D9253DF8B2498062E3E0EC558B2B6B3F68EA607604A0607F
                9B906370C5C3E38C878E9EC251D07DBF81C2BD1E0E3F9CC4B277E1D298C5386E
                1A62825FD050B891C87D22575777F2F5F5A7482C0944D811E5E715BF292BAD2A
                A8ACA8D3002893004A97CFA0B4528F82CB26C501494F5C8EB0282038CADEC5DD
                EF362A9E8FBAFAD04E0009F777B86AE110C26F3CABAD2CDFB77814068501616F
                C2F909F77818247E5D4BC5C3A531779EDDDD7188CC0F1B9B22E3283D2D5B5454
                58F6AAA2BC26B3AAB2FE2A401903503AC33E7B947FA7ACFA6FFDD9B48C12F1C4
                94DC9EB109994B90CC3AB97B05DE3975F6D2477DA35FBC09572BEC4DB85FC372
                7C0B282D47335AE665D9ABB037E1C97B4E76394471F22B0C2C213FC11E38213F
                F1F7C7564994C658A52542D8795159519B0448CEC286A3D7D4F13328ADD4A324
                A51488E396AF5E619149CB4223E25D4D2DECEE22996DD2B9618A8D8E2642B5D3
                22B4FD2D28EC41D89B70D861A1AD65F29E73180685CB694E8239ECD8DC72C65A
                513F0A0DFDA5E2618F02509ED5D5DE89AEAF6B3C84F0F33D12D9F6FFAD5F88D6
                F2F77EB23A0A8382649641590E50DC20B6356A681B3671E8E1DC823D02E719DC
                E3F947A07022CB1E8505392E8DAF285E172A1E739C51E623A99C9F3028F171C9
                0C4A33407902504200CA0E803200A0B469B1ED934E661392F23899ED85DB4819
                1477E828F7E04D9AB0CD407893597EE7FCE4F7A0B0EABA72CD46212769C94F5A
                A6EEB959C8892C27BE3C79CFA18BC38E70C81DF94978F82FA531424F1316F43D
                A8AFBBEB0350D60194BE4864DBB4D8F64983129F982B8ED2B85770583C871E37
                E8288D10DC9A384761A18CDF6CF60C2DA0B02CCF936B3C8BC2A18641E1FC8493
                D996035FFC9A961E0FE7391C769CB099292020882222A22831219535948FA525
                9577008AF3EDFA7BCB004A2F80D2A6C5B64F1A94D8F86C71DC1BD83330247629
                4071062877018A90CCFE3D50B89FC3150FEB280C0B5B0B289CF0B648F75C6233
                287CC230282884A2A26258432148F7EF511A57DFAE6FB40228F350F9744722FB
                1994D6924CFDEDF7111397259E9C96DF3320386609407144E86940E8F9F847A1
                8767515827E10AA7051486858D4B662E9D39916D197FE444960F8DB9B8FB5048
                087A3C317194929CC162DBDBF2B2EA1280A20F50A60394AE6DBDE2F9A43D4A74
                6CA6382EC1EEE11F14BD10A0D82199AD4732FBE18F92D9DF0F2DB500C2C0B0F1
                F6022E8DB97178F59A9A900CB37EC2F9099F5BE6443636369ED252B344E8F1BC
                0628790DB7EFA9019489004506E5719BD6503E6950A262321894EE7E8151F300
                8A15CAE36A94C7EFFFA83C6E01852B9CDF83C2F94ACBE60216E658A463A18D13
                59F626BC2E232C0CB797C625B480F212625B0640B9D270FBFE6880D2E93328AD
                544361C2E31272C4E212B3BAC1A3CC8E4D4837456E5281B55CEF008C88DFE816
                F99E3511EEDDF0C034F7723899652FC21A0A03C3390B27B97C8E871359EE0DB1
                AA8B3DFA427EC2A04460253A6B282CB6419515C4B69AEADB6760C3601D6A6BDA
                C656A5BF97667CB23A0A721431A8B2DD90A3CC8C4BCC303630B62A57D7327887
                10246AE9F3B077E09CE37F0285AB1D0685C16991EEF9B52CB471226B8DF5A2BC
                ADC90F33287F03CAB3AACABA18C07108F63D4069FF199456EC5190A3081E0555
                CF2C806262646A5D8186E03BAC0F15C60C5870632D8525FC1650381769A97A18
                14F62CACABB48C3F72392D0C535BD808892C6F4108C0966BEE1AB34741692C88
                6D00251470EC827D0D50DABCD8F649E7289CCCC627657787E03617A058189BD9
                54213F796F6DE7F2DB741B87117EF319149E336150B8EA6919316891EE5991E5
                5B38389165F9BF45916550B055E93750B232F39AA1A13C041CFE50663702942F
                ABABEADBBCD8F64983C2E5313AC73D422312172047B1012875D0513E602E45E8
                D170086150589D6D018527D85A92D996AE318F46B648F72CF9B322DB020A573C
                BCA7963D0ACBF700A5091ACA3D00E209C16D151E7B039436AFA17CD2A070D583
                1C8505B725D171A98E00A5011ACA473B0777019496D0F37B50B89FC3A0B4C8F7
                3CD5D632FEC8A53137113911E644D6DE0907D2FF0614886D1F511A37C09B3841
                475902507A7E06A515E7274C7858448A787854722F4F9FD0E5B851C30D394A23
                40696A0185AB1E4E665B420FCFC2B2F760385AA47B8686C311573CDCE3E13FC3
                136D9CC8B274CFDB245B420F7B14886DEF511AD7C29B580394F900A5FB67505A
                3928C1A189E241A1717D9CDDFC576111B137407900509A19147EB339ECB087F8
                5B50B821F8B7A0B074CFA5B170CE18EB45B963CC158F8F3F2ECFC69C6C18EE20
                0428C208244AE34A4062061D65363C0B4620EBDBBCD8F649879ED0F0640980F2
                057494754860FD705CE3216069C6910D2174302C5CF570EF86C720B9B2F9DBD0
                D332FEC8892C97C65CF1B022CB150F7B144E663947E1114806252FB7E82DBC48
                E99D86FB068064063EEE0A603E83D25AFB3CFC7D0506C74B00922F7D03223786
                4725069C3C73F1118069C648A490C872AED13266C0A0F0043E871E0E372D1EA5
                05149E41E1ED8F2DD2FDEF4161AFF23B50DE008E2280A20D50A6E0E32E9F4169
                E5A1C7D73F5A1290F4F7F60BDF821DAF419714AE3FBEA2A8D6CCE531572D2DA3
                901C7E38B4B44CE0B79C1264659641615596AB220E512DA0F02AAF963ECFDF80
                F21A70E40314758032111FCB7C06A59583E2ED1B29E9E31F3100B06C47AF2704
                B9C9E3895366371F3E765608192CB4B17148E13913565F595C63918D8795D85A
                40E109B8165018321E2FE005815CF5FC0FA0E400141580321EA074FE0C4AEB07
                450A907C8DF0B3D337203CD4CB37E4C992E5EB9A8F9E382FF4685813616FC249
                2A370479BA8D55592E8D794E968D41E1CFB34761A878328E55596E08FEBE3CFE
                5DE8790538B2008A224019FB1994560E09E7289EDEE10CCA40E828BB71694118
                92D827F02ACDF64EBFECBB672D854309E71E5CFE7288695977C1678D5BD65C30
                289CCCB66C8064F99F9361AE7CD8A370AFE76F40C904285701CA1880828D949F
                93D956DD3074750F96F2F20D638FB20B971684E1FA95279E3EC1CD1EDE41BF75
                80399CB03EC2B3B03C4AC01A0AE7267CDEB805141E58E26497CFF2B4ACB9F8BD
                32CB3ACADF809201501400CAE8CFA07C021EC5D1D95FCAC33B8473941DF028A1
                376D9D9F601EA51965B250DEF23824879D96DDB23C3CCD892CE7262D1B0C38F4
                30289CC3F02C4ACBE21CD6525A9A829F4121C161B46AAFF1F7CA737B371F4957
                DF807E9E81219B93D2B383CC6EDA3D3632B36C76F3F2C5E50626C26E5885AB4A
                7441FE121D387844B8D96BFE22DE2DBB9026CE5840D3E6E260FAEAADB47917EE
                0A943D89F0232F340579F90E5F846D6B6943BE9E1E141F1D45B1318914121C21
                C23CCAAB674F5F65409D557870FFC968886D9D1E3E78FA594769CD3A8AADB3A7
                84A3A7CF176E7E81EB1252337D00CA035D03E366DE2C6D60622AEC86E5EB67CF
                9EC3029DDD389C8EDBBD66CE598CED8F7368EC94393479D6225AB862136DC0CD
                5E078F9F176E23E57C86F7BF191A1A939D952D05F9F9527A72122FCEE1C6A008
                A3909CCC6620EC283C7EF47C341E3B210C7D06A5358372D3C14DDCCEC5AB97A3
                87DFB298C454979BB79CEEE23E9D8F768E2ED85D6F09506E92A292329D3E738E
                76ECC4CAD0151B10721660F1F02C1A37155B96E62CA1C5ABB6D0A69DD887820B
                B2F9D6743EDAA1A2AC41FAFA86E462EF2C7893D2C202EEF108CA2CBAC7AFF071
                D6FD7B8F159F3C7E3106892CC620DBFE74DB271D7AACEC5DC56D9C3C7A2004CD
                0B8D8AB372F5F2ABB96164FA9E2F5DE2EB520C4CCC7169B50A9D9793C7A5D6D8
                8BF2AB4799327D9EE04D662F5A452B37ECA2EDB82FF0C47905011421A10528E6
                E696C23D844579B974FF4E0361B480470C44E81CBF8657C941B851012CE3EFDE
                79D0F93328AD3CA1B5B27717B37674EF02AF32C537284C3B283C5AB8141B4299
                88BD898EBE11A95CD7C0A5D6B82801434B6B712463D6DC25D8D7365FF0267397
                E0FEC08DBB69DBDE6374F894BC107A38F9D5D4D013F6B56524A753E3ED7A7AF3
                E239A15B4C98951535DE7DF8062B2F0AE0493400C8243C974183F073E869CDA1
                C7C2CE550C5EA513BCCA08670F1FF988D8C45468272F50AD88CCAC6C0450D435
                74107EAE23993D2A80326336DFCD338726CD5C483317ACA0A56BB60939CABE23
                67846496B514FD1B26C2C9C08AE2727AF9F40935BD7B4B0082D01014C18BBC05
                346538526A888476269E77438EF27970A93583C2DF9B998DB33480F9C6DADE75
                4F48647C309A810FA1AC36F1254E2C9CE9A21B7C155ACA512C18DE8409FCD9F3
                966243F53C9A327B31CD5AB852A87AD66ED9477B0E9D126E4D675078372D1FCF
                A8AFAAA3B72F5FD08737AFE95EE323E1DC3166653F3C7DF2B20EE1E716C60D96
                2104F501389F47215B3B28C6560E1226371D7B9BDDB45FEA171C698DBE4E1566
                5EDFA157236275D5000AED65F47ACE4174DB8995168B96AE11C20F7B93794BD7
                D2F2753B048FD2020A27B32DA0DCAEFE25ECB03128BCE80F896CD39BD71F1EA2
                5C0EC6DCEC5E543EDFF2143E7295361F7E3E591D852136B5761183C9E8E85B8C
                F5F20BBFECED179A889BD459CA875771A21B1894BE869ECF69F472384F59B966
                33460C56FC06CAA2959B85CA67C77EE429C7CE0B0D445E8DCE2703ABCBAAE8F9
                E34704E184A09708E78EB13E5404305E22B9CD42C9AC028026F3F012F294361F
                7E3E69501816632B27294353DB0156B6AE6BFD0223AC313B5BAEA0A4FE163D1F
                9115869094B1D540010DBF633857BC6EE30E6C2F582E24B31C7A1814F62ADBF7
                1D156E4C671597D7A3F359E3CA920A7AF2E03E3D7BF49090B80A9B0C782131E6
                663F141694DE86F8E60668B6C19B7C0350DAB7753DE59307C5C0DC5EDCD4D209
                5EC56A2466534EB97906451D3874F21124FD2667676F5253D31360390B897EDB
                CE0342F8993E0F974E0214F626AB37ED41E5730432FE19A13C6E49664B0B4AE8
                5EC36DC10084A0CE066088090A6D33207981F5A19908451A4868670392DE0046
                B22DC3F2C9832278157307493D43EBBE36B7DC97A1F77353FEB272159A84EFEC
                EDDD494707BBF0117E2E08E3062705AF327FD93AA13CE6AA67CDE6BD90F165D1
                383C29F47B5899F5F4F4A6DC8C1CAAA928A7DACA0A827E222CFA63509C1CDD44
                10DF3EE2205823E72AF026C711824600181954476D3604B50950740D6E8A59DF
                F294D1D6331BE7E21EA08881EB4C849257FAFA96221869623492BDCAE9739731
                E97610D2FD064170E3D0C31E65FDB67DD8587D4C58CBC5821B2F204E8C491004
                375666E13D84D5E6F026740B13FA2CE7A35C7E83C77294CAB60064FDA387CF06
                A20A6AB321A84D80C25EC5DED9AFBDAA86C1F766960E07A3E3D22320A03D5154
                D46CD6D3332723DE1289D914E42EF01CC70550B8293877C93A214759BD691766
                6A0F0BFB51AE5C46426B6246C17E419491924C85B9390228D8DD26C0E28EA128
                F62C48669BE0599E42B14D430EA30A486642D6EF8510D426CBE536038A8985A3
                849EFECDBEDABA166B307EE06E627EEBAE9C9CD247757503D2C039646D8C1D60
                DB0116FF5D42B8D92D7894D98BD6FC9AD06E43FE222BCCD6E2E24AD2D4D42637
                47574A8C8DA1BCAC4C41C287C0C6CB88855383DE1868C2110E1100FA004DE52E
                54DB000072081ACB3078974E6D51AD6D33A0A86A1A8B5BDE74EDAEA6613C57E7
                86B979644C6AE5F9F38AEFAE5DD3169DC14CAC12460878AB35D6A00BBAC9D235
                5B68CE625CF004AFB2047DA0AD3BD045C65CCA99D3174859F93AD95BDFA29888
                70CACDCC10AA1E5667B939C89D640FEC4DF1F30DE2CF8BE0695EE3F07A318437
                5380B214F94A5F8022D9DA35A87FF6FB6B33A05C37B41553D23197D132B49D60
                64EDAC6AE3E4938B7ED06B34FB449B376CA7BDC84D0C7184E3E245158C45EEA7
                6D3B8ED0CCF9AB69E17268292BA1D06EDE4F3B0F9CA44347E450FD5CC55C8A39
                F9A31CCE4ACFA3DBD50D5457598F92B90A496E1E45864491BF5700C545C65369
                415953624CD2A307771E465795569F79FAE0D988E78F5E74AE29AF6D53225C9B
                0145D3CC514CD3E45607B9ABDAC3AFA8DD3803212EC9C33FFCF9854B2AA2FD7B
                0ED186B55B04D1CDC2C241E8142F5BB195F6038AA9B397D39255DB68FDD683B4
                EBE0293A7CF402C627AFA0FA312037788EC4B8540194869A3BC26379510525C7
                A5A0BB8C836100262D315D949799FFB628B7B8FC6E5DA3255EB30CA0F4BD77FB
                7E9BF22A6D061476A51A2636D29755F4BEBDA2AAB7DFD2C60D4792339F62E8BA
                F9982C42CAF173B404AAECB1C3E73053AB2F7894759BF6D18A353B0450D66D39
                407B0E9CA243C72E602AFF22D68F6A09C73622C263A1D2D6A0F7739BEED4DE15
                3C0BC0A0D888380A0F8A1060C1D79B00CFA3478D8F23F1F17178956180A523E0
                6A335EA54D8172E1BAAE94A1A5D3D72A3A26BBEC1C7DC2C2E3529EE0E460F3C9
                23A74976EF61DAB1750FCD9BBD4C90EB95946FD092155B68EDC6BD42F859B561
                0FEDDC7B9C648FCA09A0702EC3FDA25080509C572278120606E1850A738A04AF
                12151A4D6181E18430C35EE50DBC48314290C1C3BB8FE600949E8DF5F7DA8CAE
                D2A64039795159DAE4A6F3771795340EBA7B0547F905873FB577706D36D430A0
                25B316D34924B107F79DA0D93397D0A9338A74FEA22A2D5AB689E62DD920E429
                EBB71DA0BD87CFD289B317E9CA3575324742EB1F12218051925F4A6585E5C263
                7E5601A52765507C5482E05190A710E0F808881A5F3C7EE97BBFE1C10ED8A0C7
                F79EB4996D4C6D0614032B17317965ED8EAA3AA63FCB29A8CA41A14DC130D30B
                770F5F517C681CE9AAE8D04EE825B2FB4F0AA08C1E3B8B8E9CB8443BF61CA705
                BFC2C24AEDD63D47E9F0099CF3B9A24C06A696E4EE132080C1805414570A9E85
                C1404E42D9693994129F4A05D985F4FED507115EF302B0A422045D46D819FDEC
                E1F3CE00A64D849F36038AB6B1B5B8A29A5E5725159DA93A0626DAAA6ADA8566
                E637DFF8F9048AE242622927299B8EA24BBC62C15ADAB47E177DFBCD481A3A7C
                12EDDC8F5279ED0E9AB3643DCD59BA8E566FD98BA4F6181D3D83925A435B083F
                1C66D8AB707E82F0C2DE83000321791542114304EFC120BD7373742F7FF5F4B5
                29C2CEBC27F79FF6C06BDB44F86933A09CBDA22A79E1AA5A5F80B2CAC6C1C571
                EAB4D975EBD66FFE60830EB299AE2979DC72A79B26D6B47DFD1EDAB2710F2D5E
                B4813A77E94F23C6CDA2D59BF709A04C5F8061A6B5DBD0FBE110840B9EAE280A
                A70D4303C2282B355B4866010135BF131135E1FF6F9B09A1468085BD0D2A9EA6
                2B17141A3FBE69F20448EB91AFF4C3639BA87EDA0428DA37CCC554350D3B2AA9
                6A0E5554523D9699951775E4D0F1C7E2E2E24D6B56AC24772CD731D4C288A36F
                08B938FA60227F13CD9CB18C162EDD485D7B0EA4E1A3A7D3DCC5EB8526E18CF9
                B8426EF14ADA77E8042928AB61EE5613677CEC28D027480841EC4910660830D0
                9BE76F05501812780FD6569A0D740C1F221405BD7BF97E07C0FA1AB0B4893CA5
                4D8072CBC95B42D7C0B23740996B6BE7A41F151D5FE8EB1DF066D9B265A2015F
                F6A37DDBF7D12D0B47CACF29A6D2A25A5C4D1B405BB7C8D2D09F27D3883133A8
                9D744F1AF0DD48F47F960B677D162E5B43CBD76CA2BDB247E90ACEFAE8A1A36C
                6D6E4341BEC1425EC2A5320383325830062735218DB454B53F02AA46C0E10580
                36A24AEA0F983E7B947F5606FE6FBCBEBAEEAE786E4169676C581A7E5D55F3B0
                C32DE7A0C8C8C87BC1FE011F35949569E7E6CD7402CDBE9B560E54505846C5C5
                B564EFEC437297D404916DC2B4458247E9D0B53FB593EC4643868CA3B56BB7A2
                3A42371965B51C7A43661866B2C0E4DBAD9BF68222CB50B017411E2200C310E9
                A8EB366BA868BE0AF60B29023C066F5FBC9B831CA62792D936D124FCA43D4A43
                E323B1BA86FB1D0A8A2B0662A87A8D91B1B9B9EC812325010101AF5D1C1C459E
                CECE949E98482ED875929C94459959F938B3634FC77134434DCB94D474CC690D
                44B73193E651EFFE8349A27D4FEAD2A51F0D1C3898C68F998A5C66075DBD8CD3
                83AADA648AA16B570737416463FDC4DBCD870C758D083989C8CEEA56D34D33EB
                D7F87A4D4C78AC0F125F5924BD4359740348FF37AA1EB85131FC868821068BB5
                A6FFE84738F37BBBE15EFBD2B2AAFEFE01210BEC1D5CD4714164F2B489539F1C
                923DF031D0DB5B949110D7549899FEC13F3CF2FDEB26FA189796D97CE4F4453A
                7F559554B44DE9EC65E42078646576C6ACE5F4C30FA3A94BC7BED451A20B0DEA
                F30DCD99308BB66266E5123ACA175005C9435FB986B2D948CF18DD6577113414
                5664DF79B97A3FB132BD59E6EBE1E707AD450E904C41B5D31395509BF0267FF7
                A420DCA6185CAB04FEA3DBE33FB81320E1DF8EF6F80148B13BC5E7C5F9356CF8
                DC5FF65BF3B0F19ED8D3C74F249E3C7ADEB1B2AAEEABB4F4EC398141610A21A1
                9191B801A371FFAE7DEF3B76906ED256557D131312F4302122AC2EB7B4BC3635
                A7E89EF14DDB17A72E28BEBF7C5DBB595E495B744A5E85AEEB9891929A211D3D
                7E8966CD5A467D7A0CA26E1D7BD18F5F0DA609C3C6D1F8A163E9E01E593A77F2
                3C21B490F10D139189BE6913F296B7AA4A6A4F942E5FABD6BCAE95006F628D32
                F918B49369C84FBE40DE22FDF2C9ABBFECE7F2DF08EBBFFF3BFF30F420619380
                75810D040C3F019A9F00C80F806200AC0F3C4D77C0D2059F6788DA73190813FF
                D504EFF39FF4404F1B1BC41EDFBB23F1F04E63FBC6BB0D3D6AAA6A7FC47CC812
                0C1129FA780784614AFEB69797D75B47BB5B1F7F1A32F885ECCE5D15DECE0E91
                F9E9290E6577EED8E95958FB9DBE7235E3E275ADBA1317159F9D55507FA7A06E
                D074E29C52F31939659192A2AE48EEDC35D1B205EB44037B0F12F596EE251AF1
                F550D1C28973443326CF142D5DB0AC79EB866D4D7B77EC7B7B60F7C1C7278F9C
                AA807789D3D736B043CE721170ACA6661A819F476F0872D2F8E56A3390FCA147
                A9ADA81343C62E0D7DA03F6C369EEF834670123F844300643B0058059B878F27
                039E11F8F87B587F586F5877984C8B07C2A3D4A3FA071230F15F4D0C8FFF8F3D
                BDF358EC0F4C1C9F97787CA75EFAF9FDBB9D9F3E68ECD55877FBFBB2D2E2E969
                29E97B3013A27FD3CA2EF6F225C506DCCEF5464F4FEF63909FFF0B7B1BEB62AD
                6BCA4E5141FEA70B325257BB04042C75F60BDAA96660A4744159C359CDC02CF9
                A28A6E85ECE9CBF7E4AF6A3D3D277FFDC595CB9AAF54AEE9BDBE7E55E7CDA983
                A7DFAC9DBFE6CDCC91535E4F1C3CE6D5C2398B5E6E58BDF1B9ECDE430F4F1F3B
                5381BC24169EE5664470E439849A55F8C5198352B83F7EA96410A22591C8B629
                48FE109486DA3AB1BAAA6AE9EAF28AAF2A4BCB96E1374405D2B52BA009843AE9
                0F0FE30A482CF15BA389FC451E3F9C43F8780BA058CE0D31D8247C3C029FFB01
                5FFB1A9EA72F80EA853FC34A653758577CDC059F97017C9DF1DA4E78DE89BD13
                3F674F85E7FC9A1EF8737D310CF42D460DC7602068210685F6611C51C3CAD2D6
                07F3AB795E9E7E0FD6AFDBFCCE40DFE4233623BDC4045A291E1D71A4623F86A2
                C76202ADDFFDDBCFFBD494350E4A8AC99AE868E3B95157DDE4228030BF2AAFE6
                7BE1B4620C1E532E9D53CE52B8A09AA775DDB0C0D2D8BEC0C6DCB9C050C7321F
                AFCB56BC7C255D57532BD1E9967D484C44A455515EFEB9DB35B52B1006473EBE
                FFA01F1E656052B036A1C2FE4F61EC8F434F758D446D6555F79A8ACA7178238F
                C0A3D822062741A12CCB48CEACC1004F257E9B0AE06DD2E07DA2F11880DF2867
                FC6699E18D56070C1700CA6180B21360AD0300CBF1A62FC0DF350B9F9F0A9B0C
                9B88E7E3F0B55178FD0840378A9FE3DF9A8C7F6B06FEAD0570EB6B3101BF1F70
                5C3133B532B330B70E7273F5CA0D0D89BC8371C497083D1FB76CDED1745541F9
                95A3836B254071C3C4992C8E588CC6545A771C28977A7AFFADC4E3C6D7D27515
                F7BB6626170E080F8C1FEDE91C381F306C31D0B6380218E43494F515CD0C6C55
                FD3DC33572D34B356F573DD4BC5BFB44ADBEF2C1B5FB77EE5E7A74EFFE99678F
                1EEF7FF9F4D932D8A8A70F1F7D09303ADF6BB823D996016981E60F41B953572F
                86DF1AE9FAEA9A3E68B34F806EB017DEC418CDAE184051052FF3086FE40B64FD
                CFA1583E851AC98AE41D948695B07C582A9EC7C042F17A5F982B80B2C1DF638C
                3FAB8BAF6B0236350858CA09D18997D18995471571193A85B28BBDAB26340B43
                475B276B24891EA62696E1F01E1980A20203CDF7318EF80A907CC0D189661363
                8B666DAD1BAFF56F1857A30CF681073981937DE3309AD883CFDAE0D8A710069E
                DE7F29F6FCE16BF147779F49DDA9B9DFB9B2B8B6675E46D157C9B1E93F4687C6
                FF1C1B9E3826252E63424156C9A4DAF286C9F7EA1FB14D6CA8BE370EA08C7A70
                B7713880F80E1EE40B40D2F9F9E3279200A6CD85983F4A8AFFAE8E72B7FEB618
                4C0A9EA207DEE82118055C062F7211E0B8C172608DF8CD7F95939EFB1ED07CC4
                B4D787A4D8E47718117C8DC19E17D0149EC19E008407F8DC5DE80FB5E89B9403
                86624F17AF024090EF64E79C0D1D22DDC6C2360D5A443AC4AB6C0052E0E7E95F
                161D165303101B91B43EC6B4FB4B3CBE435EF211E0886EE81989EC6C1D9B70CC
                F3153E5F8D43E47E38987516904C46A8EAC59EE48F869C9FDC7B2106137FDCF8
                5CEAE19DA7ED0144C7FBB71F777ED0F04406CFBB0026C1F0B10C3ED7193F834E
                B08EB0F630C9C6DBFF3796E7FCA9AAA7E54570AD625C0E237C74022CFD90AB4C
                8037D8096FA0036F1004400A00CA5D84A3E7981D7D0B303EB0BE00289AF07133
                006906284DB08FB00FB077B0B778ED1B40F51AF62A3325EB25E63B5EE2EF7889
                BFF715007C034FF416E0BD072C1F3DDD7D9ADD5C3C9B9DB0D2C2DECEA9D9D1DE
                A5C9C3CDFB5DA07FC89388B0E892BA9A06AFC63B0FCE3CBCFF64EABDBB0FFBDC
                6F7C24F5F8E19FFB6DE7EA84AB33D68A2090FD66A862C45E3F7B23C689E99B17
                F8F8F90BB1FF4B1EE46F3DCB9F56669177F00F530A3FCC6E5CE5200CCDC19B79
                086FB01E1EBD014D3266334A00C76DA8970FE1399EC35E6302EC1DC3036B8297
                6962700049333C45334068061CCD98ED68062C0254A8249A318FDAECE3EEDB8C
                F0D30C45B4D9C7CBFF23E0787F138B7200CA8B90A0F047F9B94555771BEE273C
                7BF2D2AAA1BEF1D08B67AF27BD7EF9AE0F4091C6F3FF3321E1BFAD9FFCC31CE5
                7FFA0678080789A638AC03C0E9057169307EEB666114701BC2D20578027D7817
                2724A041F01A898023079EA50C72771D42CD3D849A8708354FECAD1D9E0082A7
                BFDA333C7F81D0F302FD94E7E8AB3C43087A8A3CE5093AB68FE19D1E0294BB89
                F129D5D5957545CF9FBE4A0310A14F1FBFB081E7B878E7F6BDD5F0243F01989E
                30A907F7DA8664FE5701F067FF9D3FED517EFF17FE2AE74B009C0EA858B884FD
                9AF51494B333F0B81C616A273CCE6994D35C561BC1EC90CBB863AED41F1E2414
                DE241CC96B243C4C342C0E9E2709CF93E15512117A626091F032E1F83B82E1BD
                7CF1E6BB00062B3CEA008C8B0835FB6ED7DD5D0A50C6008EFE80A7333C89243C
                CC674FF25F5AA9F62F81D2020D7B189838CBFAB04EBF6A247DF03810360C361E
                3613B610B612B601B603B607B61F260BE3A9753E0F730E760A7604B61FB607B6
                0DB60EAF59069B07E31ECA48D8B7AC0EC364F8DF06B86D56BFF8B3BFF1FFEDD7
                FD5BA0FCFE9BC31BC63D1F8646E257703AFCFA4676034CEC757AC3BE840DE0C1
                63D837B0EF608311C686C18673C715F603EC5BD840D8572CD6C1ABF4FA55F1ED
                C2E21C4C1A26F19F6C11FCB77FD09FFADFFF1F03E56F7F10BF8223340CB981F8
                AB713351EA5793C6235B7B842F0E611D7F7DE4E7D23029982437269F343E11FF
                D5C4F0F839BCFC97C2CBDF83F9BF06CA9FFD0DE231062E517F6F7FF6CF7E7EDD
                2F7BEAFF0AFB4BFE91BFE23FE4F3BFF1DF05E633287FD16FE4A70EF267503E83
                F2A718F8532FFAD47F1B3E7FFFFF7E58FA0CCA678FF2A718F8532FFAFC1BF9EF
                FF467EEA3FC3CFA07CF6287F8A81FF0F3EBF74638640BCC40000000049454E44
                AE426082}
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
              Width = 537
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
                0000005D08060000007DD2E2A3000000017352474200AECE1CE9000000046741
                4D410000B18F0BFC6105000000206348524D00007A26000080840000FA000000
                80E8000075300000EA6000003A98000017709CBA513C00000009704859730000
                0EA600000EA60187DCA96F00003F6F49444154785EED7D059C9565FE3D76BBBA
                EEEAAE8A2225250A2220DD2062802869D082947437C31033340CD35DCC0C4C0F
                D3DD9D4C77DE3B75BBCFFFBC2FEA6FF797FF451477D78F9FC7F7CE6DDEF39E6F
                9EEF737B00E8F1FBFAE73D07BF83F74F7E01FF0EE0EF00FEF39A9F7F05D7F13B
                03FF2F067616BC828EFC57202B7A119ADB4FFDD640FF1DC0FF01404D73C12BB2
                D284990D495E1605415628BC658BEEAAE8B9BF03F87F5DF1BFF8E325CFC14436
                19B8B4649729713274B1738CF29035F2569F23ADD5D681B539C73B4BA337A028
                7029F2DD3F41D2B52948B09E8D8AA09D5054FAEF84A6FC91DF0A90FF560CD46B
                4A9E5375A78CEB688C447D79106A0AFD90196B86E8805DB8E1F62DBC1D57C0D7
                E52BDCF2F812E937BE4259D832B445AF81217737DA13B721D1F66B84386C4569
                6EE096DF01FCC599F69F822B55DAC8BCF88308749D8B00A79908BF3E0751D73F
                40AAC72C94842C4075DA4AD4156D4063FD1674779364DA9DD0A98993B054DB80
                F61D6848DF8008872F10E5F43DDAB27C8FFC1640FCB760A0B6E3F65319B117D3
                A26FAC4756F477A8C9D90E79C371689A8E014D2700A905A0384BB0CEC2A83F05
                93E9184CD80F937E07A02578B2CD30B57CCFE79D4541E846F85F5E8550EB3D90
                57A40FBBDF20FE5B0068688D991BE2FC258AE2BE0124BB0816979E4BB51590EF
                E33A0493F210F4AA43506A0F40A1D90FB96EB7B8347C9E52B9151AC56E981447
                D155BF1FC9810B70FDEA2464856C86B2B3F4BE46A6FF1600AA1BC297063B2D85
                A4848C521D25603BB936DF599AC304F4308C8A8322802ADDC19F00541AF642A1
                DE068D66074CBCBFBB99C7EED3E8283F88841B0B71C36A1EF23343D6DC4F16FE
                EB03A8CA18569763511AE9F131D44D34876A82A726900405A6BD50E100BAB4BB
                20576C27CB76C220E3EAD8067DFB56F1689009CCDB0B9D621FB47202DABE0BBA
                CEBD28489C8B20B7E1B0BFB6150D354993EF1788FF16006685EF42B2FF42A083
                E65200908019199868940C5868263B08E88F001AE534AD0C624C5D049847A37C
                0FD4ED7CAE6C8F08A2A69BAB7D379A4A5622FAC6385C3ABB16B9994C2D7EEDA0
                EC87CFFBD7055057F608340C3234A16B92025620276A01F452FA3419C1926D83
                4C7D141DF283506B76C3A0FC9E406D02BAD6019DAB08F44A469D2BB85641DBBD
                1EEA8E0DD0776F87AC85CF911F60E04326576E429EC7FBB872F0034479EE87B1
                9949BE22BB3FB4FC5C352B366AE69BC25215BE282C939C39E72F00F2BF2C8026
                2D830B552A5ACBAD11EAFA398A13BF62347990ECDB0F59F756A80DE650688FA3
                AB7B0BD45DEBA1EDFC0E26E96A469ACB7F008F0076AC865CC2FBC850A5641354
                52063D6DDB8106A616256B51E83D0EF627E622CC6517A3D418BE3E193A4926DA
                AB625092EE8D84902BB86EBF0F5EB67B1071F35CB6B4F6DE9BDA7F5A000D465E
                D1465EDD6A565494C291151545C81A5583AD5F6DE67EE446AE6294B810E1AE13
                107B7D126AB2198176913DCA8330D03C1A149B4476693A77412FDB2BFA3A43C7
                56E8A49B6094104CC9B740CB6A181AF8BA66B2B28DECAC22A82D1B801ADEAE5C
                8392C0C988B79C8A448B0508B15B8928D78D48B05987C88B6B1078ED0022DC4F
                2223EA1C0A532E20CE6E19A2AE7D89FADC807B5A04F8A704D0A82B7FA48B1595
                C6BA5BB89DEA8EAC5B5688F4D98D10D7D508725E8C70B72F10EFB70099C10B50
                9BB10AB599CBD05DCD3C8E3E5023DD01B5E47B11409D6C03BA9A3743DE4646D2
                CF09001A3B797EBB189D767C07B432C094FE0064F5D7D0142F415BEA4728099A
                805CDF514870780BD9D69F20F7DA0A245EDF82FC5B47D1127B168A0C07E86A92
                686E8B19F5A6C1D0198E5C9FCD083CFB195282AE44DF4B53FADB04D0C0EABF2E
                6B3034C9E3208B9B83A69B3B0DB7ED3D3B538F2AAA025722DB6906D2AC8723DD
                E65D24FB4D439AFF4CE487CD4655E21768CF5B014DC546985851412381682570
                6D648D8C47F56618BA57D20F7E03ADEA4B28BA85C086200960B5AF23EBBE83AE
                692D9435DF417A7B0D1A73D72027622152031722C06E36D9BC88A5B42588765F
                87A41B5B511C731A4D79CE682EBB89A6B63474CAF3A1EF2A844A9283D6A61234
                D517A2B929154D4DB148F2DE0F17F325B86E73ACF35F1AC0CEA69471B545D7CD
                F312AE2033E41862DCB621E4326B90171622C57109CA6E7C83C6B02FD115B708
                BA0C8255C3DCAC89D165DB0FAB650F4DDE6E9A3A0686CD04B16D0BF40445DFB2
                86E67115D4D2AFA1EEFE1A7ACD9DA5AE5F0A59D5123417CE4559CA4C02360149
                37C722CA6B347DDB1884B94E467AF062E445AE85B4F83474F50EBC1842087A00
                1916C348351EC6AE64483AB3D12C4987BC255304B0BBA35A5CB2EE02A8D579A8
                8CBF0CDF0BAB607D6A2BCA0A7871DEA380E69767A08E1199AEF839D15F19F3DE
                80915F5EF05732466D1D61CB9545B67ECDA9275AF383BE432CEB9461F61311EE
                3406B19EE390E83309B7E316A029671564955BA0AA65044966695AB7C1D84D90
                981268BA08847C390CF2753481DF41DFCAD5C8A891CB58C7A8B19540D6917DC2
                6A620052CD60246F35DA9296A03E8AEC729D8624C7E988B59B8A28BB1988F398
                87ECD0B5A8CA3C84D6B2CB504AAF83DD0AC0980C833E035A5D3674FA02566772
                98E0E743A5CA855C9E85BAAE6254B71740DA5680CEF662B44B2AD0D6520A496B
                2E145D19684CB642C0C555B0D9BF0C6509F72EEDF8E501D4973EA5EBCA8484FE
                AA3ADF1D39091791107808215EDB11E4B281276D25E25D9623DD67058A6EAD66
                C1F83BC8CBB692556492845163DB2182201CB924BCDDC940A46B2F7DD9365EED
                DF8AE069BBBF6130C2804330859D04AA9D40F171B46C87A16A3DDA3397A03CFC
                03E4DE988074F79188B71B8E38DBE148761C8BF2D005688E273B4BF6F3F9E7C9
                2A7BFA2D4F46ABBE2CB791698608DE26D34C29D06A526130E689000AE0E9F545
                2290DDDD19A8ED2C12016C9714A2ABA384AB9A4056711542D99D0959811B629D
                B6C2D56C1D0A22BDCD7F1B0C54310254301A549159DA9CFED0650E86226E8EAE
                D9E74853D1B9ECD2E43D480A5C8618EFB9087199865B2E9310EB3D0D59C11FA2
                3C61111AB3BE467BC30A06116B59DD205B64426D92664FF0570CEB0D12FA27F9
                7A9AA97564DC5A9AAA0D624E2684F4CACEEDD02BF71258C15412ACFA4330D4EC
                4767F11694C77F85E41B1F208211A8BFDD04043BF0362B312901CB5014BF1DF5
                D916E82EF582B13198014618D91BCECA4C1C014B61013B197A35C1D2A640A7CD
                E079CE87429E449F9906AD2C9960F23E7DF69D23975A9E0C59573ADA3AF320E9
                CA87BC230FB2F65C744BF2D0D5C6A3341B0A690A64259E2280CE471621C3FB64
                8351CA7CF11E98D1BB67A090B0CAF35FD13424A036CB13E9A11688F13D8870F7
                AD08745C8560D7AF11E5FD1532C3BF4551EC1AD466F3A457D34F498E9321AC47
                4A5883A4DFD27533B02068263959D7C9DBEDEBC5656A27608C00F51226D504D0
                245B07AD742DB45D0CF359CBEC66245957B11CF5A9CCF1226621E5FA2CB67908
                96ED6884DA8F4182CF0CE485CF4763DE1628AA78C14B2EF0A220BB141EBC28E8
                BFBA6816BB099A2E81EB87E30F001AC8349D8E6CD36741A34E834A992202096D
                16740413DA4C9AEF3432355504B0AB2315CD044A581DAD99E21200547414A2B3
                8D3EB183CF6D0846FAF5FD703DB60451B67B21AFCB7DE3FE02D8993CAE39FB34
                E2BC3E408CC75424F8CEA2B39F83F2E44568295C81AEEAEF6064688E6E2EB950
                9622BBDAC9B20EB24BB88F21BB81399541B51246F52AE661C2637B606AA5996C
                E69212E43A32AC85AFABFB16EAB2A550DE5E8CCAD80F91EB3F1D096473BCE30C
                84394C4194C77CA4FB6F4469D221B4979F671DD39927986650E309A39266D014
                4D30C2690243613246DEB9ADCA20DB7259C06654AF4FE07D09502BE3A1D625B1
                95940323F2A0D2A6B31B9109AD81C019E8FFF4C2DF4CD63549D0EB1261D224F2
                33527801A6A3BD3901F2F62C7409E0B56511B87402998696563ED69103595B02
                E2034FC1E1CC72F85CDB848A1A46DAF79381E549B67E81D60B5010B184E6883E
                47C69E9AEC24C1618F4DCE5E67377D4A176B8A625E4510BA7814FC1313657149
                C83602A8532C1797B693A692456243F301C84AB7409AF72D1A12BF4471E81464
                F8BE8B28C7DE8876EAC3E360E407CEE463CB20CF63E1B9DE8CEF6D4766F9F333
                7D7891B8F0E84E9678D37FF16F633474AA109A41B20EF13CF1B7C405633ED40A
                32C3401074F1228030A6436F4A835A9B0AA526ED27F0D4BA0C687469774034D0
                B41240A381E614BCBF2B865621450450A7A0FF2380AACE7CD4564442D9950B89
                340B6DACCE0800A6849D85EBF935703EBB0A05256923EF2B8035B78E2822ACC7
                D344B152D1C102302B1C7A9A359550C5506CA67FFA8EE13AE5082A9A3EF91AE6
                5E6411FF5631EFD27431AC976F149369B410BCF2CFD190F009CA423F43B6F717
                887598871887F908E731D2E51364862D4775CE2E74359C83B295497257004D6A
                FC9DAB5F1745B6C4D2671531B0288401A53C2F95D0F2D8D645FFA36A854A2321
                ABDA603014B38416CE63241BB7B1E2FA9195024BF5BA708213019341085A6856
                8D42F4197BE733B4E16C2931A031D25F1A6EB15B1FC0C236031D991F2F805018
                1B7C78D1392337DA12F1370FC1FDCA7294A55F818A014E972489E5BA7814265F
                45A0ED6AD8997D8ACCDC5BACD9FD7C49E65DFBC0B2C07D48729D0979F5463260
                0FF46D6CC11040A34C9021B024A558272EA3FA3B114011BCAED550B6AF660584
                F7B18CD5D1B40C295E7D90EADD17718E4390E43C0139D717A0226223E405E64C
                C6AF90CDCCBB548E5C3CEAC82C0399A48FE267D02FFD00A0C114238227973322
                5411342D030886F702802D6D952829CD4497AC0212E14412401070013C9812E8
                E34244B36A3246414DA6AA9561770024700298C2DF0280D0D3F46A6EC1A01522
                53B25813C8D69217AA324EB0E2B385A5B45570325B00BBD34BE079653542DCB7
                A036CF8E414C32A4CD715076C4A234C316A18EEB7061EF74C425F9D144DD4700
                ABFC9623C37E32EA72E9C3247BC54ABFD8DD56EC60E59E0030F85077ADA47961
                B2DDB99CF546FAB9CE15D00B957E86FB5D550B911D3106915E1FF24ADD8AEEDA
                538C34690A75CCBBF43779727955F344A904F3A78E865C9DC80E793699550685
                BE025DCA2AC8350DD02B1A605249E843F53C511DC8CBCF44484410DCFC3DE0E4
                E30E5BD7089CBEE88DA8945C28D18E6E24A049EE07056E418E30C8108A0E5320
                64A600E8781BC2D2F322D192591A7E0F057DA98A4C53D024D75BA3356D1FF27C
                9721E2EA87F03B3501EEE727C1FEE468C4382F4559E401DC4E3C81D6222B9A72
                6F681B9C206FE2E770E9A411A823A049CEDFC066D748A4DFB209BCAF00B6477D
                8F5C9719A8CCF89A3EE7302347B250BA9D26947E8DE1BE60260DCAB50CFB9731
                19661D91206AA5CCD724CBC4B2554BF1A708F7E88FA602FACF6E6B0247DFA562
                F0A17023433DE8B76E901D413092197A1399A34F45B726131A9A4689AC0015B5
                E9282C4D4252B41F42FC5CE069EF015707775C2768B7A24391559A835A69131A
                DB81A4AC06585A3921BB8C1513B2B7CB18063D5928D5FA8B207621185D869B90
                E96E5052E10BADD287269EC0757AF0FB9D407EC80684D9CE839FE5745C3F3D01
                41E7A6B100B01095B736A0A394116EDB35FA74375EC0C1D0377BDF594D2E50D7
                3988E069A5310CAC222129734786E76A38EE1F8B9410ABB0FB0AA0326637721D
                46B352C266347338531B733656F08D6DF4893497902E636D91B785639350D167
                5BA68EF757AF056A3743C1E43AD5612481E4D52A0FA2C9E2556FE2950E2FB2CC
                8D9D726F322602ADAA58B285550D4D2DE2B352E0151C8CABCE6496872F3C02C2
                10969481F89C2214D6CAD028E357E0B3A5E495141DFC7F37BA0DBC5E3A811327
                CEC3C5E1227B810C600C8249A429E54582769A675E30901180462B6646475115
                B511F14EF3E0737A1CBC4F8F85F7D909347D9FD2BFAD475399390392AB740F8E
                8C62F91D758C74C95A799B17DAAA3D20950442A98844578B172F8220B4B00EDA
                D99E0209CD68635510523CD6C176DF44DCF2B9CF0CD4251E408EFD2814468DFF
                0F00855256CB5730B47E0D6DD312114061191AD88B6B6555BF9991A60060E57A
                74A67C8164BB1134A53C810280AAEB306A3C78323CA036BA4061F2248891E8D0
                27A19C115C70820FAEB9DA233C3919952D5274E9F9B13A2E02D465BCB384DBED
                7C553B79D58E4EFED701B989B8349B70ED9A0BAC2E9933DA64F04300152C91E9
                DBDDD155648E8AC8EF1934CD83F7A9F1703D3A42044E00B0847297F6EC03F4C5
                CC2165B40E72A73B4BEDCA0BC0837ED08341D30D48BBE89B794128DB02D0D6EA
                8F8EF660BEBF2F7DBC074B690962A2DFDA1883B6FA5B48F7DE00BBFD9310EC79
                35BABEE6E70B84EF3A886928747249F0F90695E13398A49251D48FA8D8675392
                85BA862FE92FBEB8B35A3F67857F2E0CD2450C7496F2B95CF55F4357B198D1E6
                6096B9844E800D73AC00E88D41F443D6346F36644F3824867CE434DE46587A31
                AE7BA72131A10E9D4A02A5D7F2711D979A7075721150A5161A822851AAD1A9D5
                B380AC844CD645FFA6A0D9EC868D97370E989F82AA81418832943ED317FE5E0B
                E174E66DB89E1D8E20A7E9C8A78857527A14DAE6CB4C7FEC595C2050423AA2F5
                8241ED469F4C56993C981F3A436B72E5F77467398DA65FEF4A577191C0DA32B0
                B9C848FB1A2AB35896EB08415B9317DA5B6E32880983A2C11F99BEEBE17C740A
                3CECF7A3A98E1DFB9F19C8DC35806D651E17926FAC4071E044B28A4149DB66C8
                A4AC7AD0941A9AE817EB3EBFB39A3F83B6F153E8DA1640DBB218A6DA4534A15F
                8A0026380F456D2C9F2BB5668E15C85CCB1F2AE31511C04E4328CAA5F1084C8B
                445A7933EC6C2370F306234CB24EC57FB554AF40138317198D66A7A691A6CCC4
                0854876EBD116D0A1523529ACFEE4ED4CB5B09B112DE61B7B0CFCC1CF5793CE1
                4C43A0F24751D63ED4656D66915CC85DAFD2FF3288920B3925D9A6746544ED22
                2E83D20D5ADEA7D3BA93719ED019DD4500BB55B6ACD83833BD7081AAFD02EA4A
                0F20D86F3EDCEC66C1E9FCE728883F85EEF69B8C448320978640567703393737
                C1CD6C3A1CAFEE405971C6CFD695DE3580F29688A5F9915B91EFFD3E504EE941
                CB3AC85B5743DBCAF4A65900703E99F639FDDF3C681A3EA1228CC7A62F60ACE4
                FD558B6028FF0299DE43713B820C969C64E8EF059D10099AFC096030AADA9211
                911187C8A21CE43675C3C3271E6EDEB16895F3FC13C06EAE3683012D3A1D9749
                BCAF86BEAE860CAD5333BDE4F32444BA9E80D76A00A79014EC34B74659B6C0AA
                60A60D8C76E9676110CCA18B088291CCD2EBC934234DA3DE9379A1074C5AFA47
                8185329AFA2EAE6E9A5029531AFA4B949C4265D466D1FCFA9C1809EFE323E077
                8915A2EB4BD89FA4B6B4D29515196F96D56E30C10F4047BD2FF243B7C1D36236
                AC2FEE407161EACF4EE6EF1A4068328635E698B566BABE0BDC5E41FBBF9EBA49
                A60ECDF47B4DF479D51CE4218886864F450095C291001A2A3E130134562CE0F0
                C82864F8F102E8B2A441BCC148F306D305467004B0469A8A989C24143092F44F
                C9C755DB009C38E38CEA56252404A559AB457577B7786C20F31A0858850448A9
                E844645E03BC82521112C7E046A21541F48D2FC0A6431790C09A2D3441ECD339
                8860E995760C48C824E6992288044FBC9FE009201A35F46F2ADE965C83A6FA2C
                DA32F6A2F8C672245C9E05DF83C3E17F7E1AC2AC589C0F5985CEF4DD50949951
                B17D06EA4AB2B8F5265A1B5C699DFC209304A1ABF1060AC2B633289A832B67B7
                A0A4E8E75763EE1E40DA6E49854D60B2CD70687317336C5E0D75C362286AE7D3
                077E0643E5C7BCF4C9BAFA39D035529359FB114DEBE730567D4A00E91B2B3F43
                6D2465092E43E8D42C089A17648A60742BA258E56842527A0B6CBD9370D93F06
                FBACDCB1FF84238E5B5E473DA92665B052490A0AABB409088ED7C2C6B312E7EC
                7370C83A18C71C0270C92D18C925CD285600798C769C2273B0D7C20559B16411
                CB615D1296DE984298B42C70EBC82A951D839ACB9454B078A0E27D72A636ADE7
                519DB201B763575332F1316E5E1D03E79343E061398CDD8E4F5095B2069D3516
                94E9D3DF69F8BEBC108C1A5BD6442F330FF66610E38626A93B0B0ABCDD4153DA
                E28BA2B06DB871E1635C3DB9090539541CDC2F1F287CB0ACDED92EF1DA3B90A5
                7D46905641D3B804B2EA792280C6AA4FC8C0CF980B7D2802A8AA9943E91D1958
                C9FB7F00B025618208A0A6E600BAD50EAC4186B3989C80E68602D8BBC4E19273
                141C22D2E0169783A0E81224E748915D6E425456279C437270D22E04872D9370
                E46C326CBDAA70FD561B228ABA104716E6D676A39A6017CA8C28D7029E09C5D8
                7CC40A411E9C85D0B0702D63FEC728D4A8A1CF237826850DC1BB0A79E319CE4E
                EC441275A401D65370FDE2FBF0B93486959649288AFC9A755A162B5A4ED3A40A
                91299752884E099ED68941DA05B692CE43DA64C98A930FD30D2F48BAAFA3B9DD
                036D6D3E3F01186C355F04302B2D76CEFD055012B421E5DA6448E2E7C054B784
                1DEF05D0547D40FFF0298CF5F3C4A5ADFD8066740E5495D3E990E64257CAEF5C
                4E102B3E4257FA58243ABFCA713B566B4C4718203843AEF44671711001BC8582
                06158A54ED68E02382CFCBAF69C5E17337B0D7D20757FD22E1159B8D848236E4
                54AB50C327543069AF509BC45543F072AA3B915CD781EC3615BCE2D370C8D212
                A15EDFB2064BC6E01C734F26E19D67D05EB415B961F3C57694B7E520B89BF541
                D0A5610CF95934CF580979D57682CB40C7748EBEF31CBAB527193C9179B0E437
                F3601DD68925365B16C7AF3208B363A1E132DA59546F6CB4A12F76458DC4162D
                1277C85A3D5114B409B7AC3EA31C713B0A92EF33807A45D482349BA9688A9A09
                5DD50202F70554153345000D7504ABE613B26B9608A0A27C2A4D2A8399E20F60
                2AFD8820CE813C8B923FFBBF405BC1921B8E32FFB3633A41815053229C3DA290
                5FAF441563CE124D271A954AE455B720B14086F20E9AC516152A691E8911CADA
                086EBD1AA56D26A4374A91D3D68DDB2D1A14352A91DFA143AE5403C75BB1D87B
                F224C27D98B6A82F41CEAE7E70C078385B0E869BC56032ED6DC4BB4F4545EC52
                A88AD93D69623B8BE0A29320AB2DC952B24E7B9ABED1024A23172F802EE369A6
                2F3650083E546D4DA5B715AB4556A82543A55267DEEF8D6646B10280D24E26FD
                CC3D73FCD622E8E2C7B03DBE9572430AB6EEA70915265D8B7CD720D79BA904D3
                0263D92C18ABA7425F3B0DEAEA0FA1AF278055FCBB622A4CD58C36AB66F039B3
                E9B8B84A2643933B06592E6FA12B95418DF130DB37663098EC98F846C1D13D08
                89C53528D377A150D9863269074A5BF462A459D6CA97936DD90D5A02C9632390
                DBCCE64E1D8315FACE6B218538764148FE1548A906D279FF79CF140278012951
                47C4C04521B3C40DBF29480BFA106D45EB69FED8D1EF22CB54044D6B09BDF60C
                8B0A9768D2CFF27B5D62CA70966A6E56729417D8E1B8C80BCD8AA2E08BECB2D0
                57320F14FC9F417AE94E2E283947C6BAA2BDFA129A1B2FB0E16B43BFE802ADC4
                9581DB770838370B578F6CC2EDAC94FBEB0305A15279E006E45138AB2F16D203
                062C1593A0AD9E2202282F9F494612A8523E2E804816EA6FCF82E936CD2C01D4
                E58F439AC34034457FC216CF21C8559C12823DE4DDD1F0F08D405C41258AD552
                E47637A1A45542E00C282658793504AB56C5F4428FA842051C428A71CE2305BB
                CEDEC061FB481C738A61E25E86E442209AD2CCC40AE094532C761EB7445ACC31
                76489806F07364DD5407083D4CB18F49DFA8E45147D3AAB16017C29C6D280B26
                ED96648FF94F004A3B4ED3575F419BF424942A2BE6BE97A8D8BE0C15FD1EE843
                050065ADF481CDB62280ED123E87FDCAAE364768DA5C501CB41E2197E6E0DAB1
                EF519CF1F395DA3F2B0A15E85F9670B630C36D1EE419F46B351F43573606FAEA
                0922FB64653308E804984A78A195DE5986E2E9049066B67C3CF425EF23D77A12
                9AFD697EB514C4CA7842F5CEFC07C7C0CB371DA1293528662E97D36942510381
                AB222094A304B01A76DA310BFB2FC4E0FBABD1D87A2D16E7024B611B5B87C85A
                03C22A35882B34882BAA428B183A4833573F6C3AB90F999947A06429AC836D2A
                85DE9E432EA7C565D2917504AF5B610129D929D55C6215C716CD7A6B34991C91
                D77606155A3B6471C8335362897CB915F2645791D87E1C59EAD328E8388E8A0E
                7354769D403D8F6A765664522BB4B75940D679019DCD9758C8E06609375722F8
                FC74581FDF82C2ACDF00805DA56E56C98E1FA13D89ACAA982D02A8A9180B5DDD
                C75054CC82BE92E6F536EBA57F03A0B164064C65E3A8361C8D2287E96860F502
                1A4B6854272928B2279071F0F449C3CDD85224372991C1C42FBBD20047DF52EC
                324FC6B14BF922804E21F5F02F31218CC046D25446D532312078E1D53A24DD86
                086044991A01050D38EEE28B0D27F6A0AC8C81087CD1C96274B7C646649B494D
                73A9B56073D79226F322531A3BB428CE3140FA1E96CE9371CC76020E5B8FC301
                9B89D8C554E2B0E354ECB69E28AE3D2E63B1CD7E384EBB8F4748EA7214525150
                54B30792C6F3145ED9A0B18EF317EDF4972D97A16BBDC67EE7D7621BCAF6C436
                94E4DECF44FE47E72BCDEE1F6E47C979DC2734A333596919CFED544653663195
                0C9C469F379AB1FC7B5C2C3A10306D114D67F114E8F81C75D17B2876EF8F2A1F
                26F39C9635988EB28564C101CB289AD004DC4C2E47067D5E72AB91E6D284C0D4
                46F8A776239E4DF7F80A23E2684A83CAC932B233ACCC88984AC03FA71BD1B7F5
                C8A2F94CCB35212E5F0AF788589C72B0C60E8BAF39CB77902CB7E620A78DB8A0
                3323038F3000394693CA451015B04256DD7E9CF19C866BF18B71D8FF43EC0AF9
                10EB6E4CC1371C299BED3404A32EFC15834EFD01AF1E79087FDED7036F1DEC81
                CF2EBF0C97B2E548EDDC8726C545D4349E404DF3417623D8C1909C8786B2C54C
                5F367C4F8E82F5D9DD28CEBFCF89BC18417517BC12E5F8156A42A7439DCF48B3
                6692C8C28EE249228086D25130E5B35A5340108B46FD04A0BEF47D684B46A1FC
                FA60947B8DA4306833DFCE8C0AB0D3E85686C3D9331A41E9D548685623A24A86
                CC3A1D628B64227831F46BE1854A84162B1150AA4360196B37253A84DF3620B8
                4009FF8C0EF88735C1C1BD10573CE2B0CBE202F69C3D85A3D6EB595C3E4E9DE6
                39CAE02F514D7D8E754EFA5D0208C39D08530050A2398B8C9ABDB0A1C4235369
                01FFDABDB85CF02D2CF257E160F6127CE4FA3666B90CC27B04EC7D875E78F568
                0FF4DDD103538E3D01FBA22F115EBB119592539032C869EE304387F4043A5B2C
                D1596D2E02E86636020E97C8D4BCDF02030962C6CDC3BA02AFF150E44C81B17C
                9CB804F0E4E5CCFDCAC9C00202288048260A0C145958364A5C3541BD50E2D51B
                3AE56A56FA5913559F43435B38AC18740466B48BEC0AAD22BBCA94E2124C6268
                911A61042E962633AECA801086A03792CAE0121A0B3BFF9BB8E07019172DCD61
                716A27CCCE2EC7B1731FC3C683F27CEA45C55D27344C1314DCCC40CEA0454185
                1CFB993A6A52E5EA7D90980EA3DC788CA0ADC19E709AC8C499587473289684BD
                8BD93EFD30D9F3158CB0790A03CFF7C0D02B0F61C0D9A731E8FCB31879FC514C
                3DF418AEA5CF477CD52654D51D85A4E914FD9F19556A475866344753F101AACD
                E7C3E6C850D83A9BA1A48C5ADAFB9A46FCF0E1F5A9D7C2B25C46419E3D996671
                24F4A563E8FF6688661415348F0280B92CBCE70D872A7F82B8D42523686ADF43
                6DF01BC877ED2902A8D61D67D4770195F581B8E2108D90EC2EF8DF56D34C52EC
                90DF8ED872156EDD5622AC58831BB9DDF0CE90E2BC5F264EBA84E3B8CD4D1CB8
                60831DA74E62B7D93E9C3A7E10F636E68848BC8AA25A0734C9BCD1A662E5C440
                2130F538BA4E064C42C42900481D8F51B9439C8FEFC609D4E2146E54AFC2F7FE
                23B13EE47DAC8B9B88E53163303FE46D11C051F6CFE23DBB274510FB9D794204
                70D8A1074400AD58954AACF99EB2C1C3507432ED605023931C659BED0CEA0BF6
                22DE7B1EAE1E1804B7EB6751DF741FFB817F7BE5685B43D6645C190D79C254A8
                CAA751853C09F2DB13D92C65E479FB4D2AF8381251D41FFA7CD63DF326310760
                A45A3400C69241A8F47F1985EEAF53C8BB8C3DBCFD68537B20AB210C671C1D10
                5140D06816C38B8DF0CF5621305703B7D872D80486E2B4CB619CB6DE8B3D2736
                E098F9F7386DF1156CAD16222C60298AB33988D2B48B8A387356491818E94F33
                9733A754F0383FE3200BD77BA9A3D92D8E592BD59BD8C6E2BC0545C5BAAEEDDC
                ADE2005B470711DAB80CAB82FA6153F1447C93F20EBE08781D8B827B6356C0AB
                18EAF438FA3B3C8CBE760FE2F5CB0F61E0E5A730C4FC214CD8F700AEB3519DC5
                092979FB7EA60E7BD0C699FA6EBE9F527A9CADAB0308E76642A737CE4080DF49
                34B7FEFCA9DD9F9D460840EADA42D7249F7F179288B150944E4147C13874178F
                E7710CCD661F18F27AC154FC260C056F918913614C1B0D5D21FF2E1E88FAD05E
                B8EDCDE748586794EDA2E0C805D1455EB87ADD9B26B411D713D80BBC5583531E
                39CCF192B1D5D20B5B4F9FE55A8B03161B71D5F5146E06D921339B2CAB63CF4E
                C142B4F692089E4E61C66AC831CE2F1C678E79942792AC10362B50EE21E3EECC
                C9CB14EB45100DF26DAC87EE16873DE51DBB11CCA6F3DAB08158933D0AAB32DF
                C38A98212280EFBB3C833E577A60A0F36318EAF1347A5E7C0083AF3E83A1A71E
                C1F4A38FC325E663114069139BDB9D07D1C591EC76567D54ED66288EDB8208A7
                9538BB653622422FA4B5DF832D4AEE098050660D4EB563753E5848193E828600
                1A4A2742433369CC23F372FA328019CCDBEFC094C7E893A3EBFABC37C9C68168
                6154976F45606B29B7204B346A3BF8077E8F8B569BE1EC7E141617BFC7A9731B
                71F8E4721C3DB30CE6E717C3D5F32BA4242D4375153729909355BA13E252519B
                AA52715302F976283953A1A7EE54D49E0A5247CE521839DC69EC104C280767B8
                578C28E7D76C1435AB86CE0DA2825C0051D8D0E056DD575817DC0FEBB2DEC39A
                F4E1589338145F45F4C3449F1730CCED590CF67C16AF5EEB813EF68FA09FCD63
                E87BEA414C39F534AE257E8CFCEAAD686CA24696EFA5E4EE17322AD28DCD7B90
                17BA022157A94ADBF925E2C2EECD765DF706404DEE1B55811C69761D0A75AE10
                8D8E85BA700C6479437F02D0543888400EFD7B00730740123011C5B6C3B83700
                3714E0A08A52614D1DE755C426D9C1DDFB044E587C87F357B7C3D5E73812329D
                50D57C93C1862F73C60B14289951B074586497B0948A0322805AE54E6839CC69
                62C06252510D4EA0FE0EC02E9A4F6E7660E8E663DA4D7704C8028094FC0BBB54
                E895FB4500D704F4C6F785E3B0367304D626BFC340A63746BB3D8D775C9FC1DB
                3E7F441FC74745007B5EEC81D78FF7C0B8638FE272EC6C161CB6A0B26A2D2B4A
                3BD045D32C00A8AA61C13C64393CCCE7C2E3E85A2446DC9BFD65EE0D8034A36D
                4557A2C32F8F833C9291670E93F99C811C35EE07530141CC1E0453F650E83306
                43C7BF553983802C3230B33F7B9EE35144512FEABEA1BE940398DC4102DA631C
                7A39C591B4BD28CF590B49F56EFE6DCECD784E53827F880931A5881C7E818285
                6905C5522A2ABDC93025776152708C5AC55978B5C03A3941E9E2E39D5C6D64A2
                B05D562BEFE7E899305E2D888B75DC9942DF2D14B8294CA6FC5FD9FE3D838F9D
                08A9598C8D21FDB1AB6422D6A6BE8315F183F045704F8C707F42349D83AF3F8B
                DECE8FE04D97C73080D1E8DB979FC1C4334FE3722A7737ACD984F246CED11BB8
                EB93740DFD3B85CCE5DC8EC47711ECF7CFA6D26D27B213F2D8F1BE8FC2DEFFF2
                E19D3777C6DA4C41F34D469DF9E3D9E41D0475F600114043D640CE75BE056DDA
                4068F3DFFA0F00D3FB8A2634D7866036AE6078CF13289C44FAA08EC603F44B2C
                2C2B2C29F86510C2705CC6C11775FB01169E392CD3C6B4A37129CB534BA16BA7
                DE947A1C35B5A91A199FD37D9057FD06A8DA04D131DF9793B968A5829CF3F0C2
                9E67464EED6ABABE1397B693E00B0072CF18B574230549C277D885C0CA05D812
                3E08BB6F4FC29AE4A158163B000B425EC338BFE731C2F78F18E0F9145E777810
                7D1C1E421F46A383CF3F8191471FC2F9C40F115EB41285DC1041F8B7A83BA94E
                97AE83A27825E2EC67C376EF2CF89DDD8BAA82DA9F9D420818DC33069AB8F766
                A207A74F6D99B0A7BF0F43DA6B9C15791D869CC19CC61A40B60D8221B53F1485
                6FA03BEF353E87D355296FA221E42D64F9BC2E76ECE56D736972BE60CF8D32FC
                4E46A53CF9C28899813B4408BB47C81A3857C17977431BC1E820A338570829E7
                DC3BD98B946C84AE792341D82C2E45C7629EC085BC183EE70CC342112C61AEB0
                83AF6F93AC4773F797E26AE7F04D9B642B9BAEDC71A9752B2454973771FAD7B5
                F8136C897A0B7B4A2763A3E0079307619EFF9F31CCE3210CF57C0C43BC1FC7F0
                9BCF6398C3E31876E1610C3BFB18017C00A7523FC4CDD21548A95D89FAD64DE8
                E4104F37F797294A5B02AF6BD370FCE064383AEF474173F96F0B40E6052F1670
                F3B7FC4B6F719895B9606A4F98327A89E0890072B2FA47003B735E659DAB176B
                64FD51EEDB17D9BEBD28B798C7087011FDDA22B44BBF40473367E0B94F8BB665
                A508A089134EEA56CE0E723C4D04902018391C2ABC0E6D144BB590518DEBA168
                25F3843D5DBAC84C253732689F4F89FF029109B296F568E1455057BF129554CB
                09ABA66E156A6AD7A2A6693DAA1B36A25EB20DC5FCFB6ADA146C8F7D4764E0FA
                8C77C9C0BEF8D8F7798CB9F934C604BD80C15E8FA19FCBC31862FD10465E7D02
                232E3C89F7CD1EC691D8A970CF5984B87256A7F89ECDF5DF425ABF0E71C133E1
                7679120EEE1E0BAFEB66C86F2ABB2773F2F78C81029D25D5D7CDF31D3F40832F
                7D1A372D42DA1BF47D8C4233FA30F763AA90F23A37C97D998DDC3F01A90431A1
                2F4B697D3891D49B2674317DDB126A4916D28C2DA1547F2905C25F519EB18411
                DC573485CB682A97B175B388D24576FE5B1712C8C5641F855352BA1309D57052
                32B6999AD436BEBEEB53760266A2B5E3334819C844A57DC92EC65A5CE74EBC0E
                9CD4B50F5804F7C8C5700C9F03D7E84FE110371757C2D8A7BB350B365173F09D
                CF206C497A1FBB6E4FC6E6BC91F83675203EB9F11CC6F83F8911D71FC63B5E0F
                6298F743789369C4BB979FC4DB971EC7E84B4F61BAED4BD814FE3ECCE267E054
                F81438C47E02738F89D86E35025F99BD8599FB0661F3CDD5389567D1695960DB
                E09F1F7AA4ACBBF6C5BBF587F71440555BC89A4CEBA9A8F6A44FFB01345D7A6F
                68529907124C5D524FA8F3FEF21F0026F54719C1CBF365B0D340C6114019C151
                10249D8480362F15FD9C00A081927D61B6E23F032880A76B632BABF51B71E928
                AC32342F247B3F468764163BE68B718BDA1BFFA8B9482EDE8F706A4163F20F23
                3A7F376BADDF222C7F256EA62F856BF21722888EF173E19BF315CEE77F8AF30D
                0BB1BD680236E68CC09A9401F89426735CE0D318E9FBA808DE700239F8EA2378
                EF2A59E9F0023EF4784D0470C6F9E730EDD0C398C1FAE8FCED0F63E6EA1EF860
                FDE398B8E6590CFCEA69BCB9A627FEB8E8CFF8EB576F62DE56EE7A981C72D733
                F3F714401DC7AE053F58E0321186841130A50E1041D325BF4CF3F932B4C92F40
                9FFE6768535FE0633D612480559ECFA1D68FFEB0862D254A32F48D54B43509B7
                293FACA582AD9ABD422E138552FAA64FA89A9E292E43E3079C71E7F6647C8D82
                E01B1BC9BCC6AF281CA698B881AF97CC67F23C0FADD22F2931E4E606144E3552
                85D6884CB47002B70E9C9EE5B1148EC8A51A3C199791822B88529B21A873372E
                338DD853F48198467C97FD2E56A7BE894F039EC784E0A730CAEF618CF0EE81F7
                BC09A0F39378E3EA43E87DE5010C77FB1386BBFE05EFBABD8A11763D31D6BA37
                469D7C1983F7FD193D773D8F9776BD8487B63C8D0737FF01CFEC780943CEBC8B
                57660CA082C095D3A5771791DE5300852FD190725897CD197575F4DBD027F583
                3EF93582F7AA08A02EE54F22789A943FF2B19739D9DC1765AE4FA339888CADA2
                2FAB17248982AA4DB84DB3584D69622501A9E0FDD4D7080A375503E51A8DD3B9
                5F0B7538EC39CAF81A793D19574749472D172F0453DD3CB2F0534A1B3E451D01
                0E4BF80801A9AB516708467EE72D64B60622A9CE07694D3711C93A65107B784E
                D52C1CB086E950FA2DAC8BBEC6D98A8522805B8AC6633D19F8DF0138C2EB21BC
                C5EF2F24F23D1989F6BAF8205EB57C10BD2E3C81D7CD1FC76BFB1FC15FBF63B2
                BFED19FC71C3A37866E333E8B1E1313CF4FD7378F9685FFC75772FCCF8FE33F8
                A485B248FB1B01502E895A10623307ADFED3A08F674093C488338D0CCC7811BA
                34FABE8417D8CCE3C61649BDA188EF83DBCE0F4216C180A6FC43B290DAD1FA0F
                A0AF9BC5BC900D626A68504500A9E636557F0A93204DACA724A3818FD5F0FE6A
                024BC9A2B6E123AADF3EA2B08AEAB89AD9047106C55453A0AC9D0255EB47DCAF
                E573F8040CA1D27B2E875E5828A014A248E9880CB90D6EB04272B3EB106CB9DD
                960D73447BEE2F73EEF612985380BC97D28FAD2C09AECF1D8E1529FD31E7E61F
                3026F8698CB8F12846D007BEE7F5287AD9F5407FE7873180F5D17EB64FE3F973
                0FE18FE79EC233E64FE0E9038FE0B95D4CF48FBF8847763F891EEB1EC243DB5F
                C01F0EF547FFFD43F0CEE67771C6EF22124BD3EF3A27BCE70C843E6B700C7707
                AC701D2502684CECC980E5AF227882F944FC1F2952E90965E21B90C5BE8162C7
                1EDCE183014F2941A99E2382A7A96631A096200A000A527C9E4C014010A4FF0C
                A0081E9786E00A00A24E58B308E8542AC2A7733E6F361BAA8B5158361FB63EC3
                9156BF03357012014CA49E25B8FD1082592B75E2A677D6CC110500CF962CC649
                7EEE218A93B7B020BF2EFB1D2C4BEA8BD97ECFE0FDA0A7F0DECDC7683E197D7A
                3F86375DEF00D8C79666F4DA1378EEEC8378CEF2093C7BF249BC70FC69BC74F0
                693CBB83ACDBF9387A6C790A7F3ED10FCF1CE88BD777F4C306DFCDEC6346EECC
                6D2CBEEB19897B0F204D417EFAC9862CAB7150DC1A05633CA3CD94BF4099F207
                6EDF49F0A2FEC2265E3F74C6BF0149645FE4383C43933A81B5530EBF5072AFA8
                FB943B5C082CA49F2390464A104D65D4DA5453AE41659BAE6E0AC199CC9E23C5
                C35CFAAA29F47BD3F95A9A553E47F07F82093509C2E286CFB9D1CF6CB4174C60
                E566096AAB3E839D1B374968D98D5A0EA724482D71AB733FBC591F75649A62CD
                1CD1BA790D2CCB17E044CD3CEC2E998A6D4563B03E8B89FC0F008EA20F1C7E83
                6903F340610D7626806461DF0B3D30E0D29378E5DCD378E5EC9FF082D933F8C3
                8147D1FBF8737866730F3CBEB507FEB8F74F78FDE000F4DC3810AB2DBE415C59
                14A7AFB2EF1ABC7B9AC8FFAD0D5775F81E49BB341A1236427F045091FC2CB756
                799EE295974400A531AFA129F475E43A3E4BF33A856AB52FA0A95C0839B5A39D
                55B3A0AB9D417068864B3E84E1F61C02F4810892861D7F75F544F61C39B25646
                E13055703F02283CC750C3198C8A39EC350A8C266BE927B504564AC963076715
                1333E7E19CFB2806316EC8D3D9225A71044E8D1B61CB42C115EEA97681BB125A
                947D81939CEBD89A371EDB8BC7FE1D8023839EC4303F26F19E8C443D584AB367
                1586200AF9E0A02B64DC99C7F1B2E50B2280CFD207FE69E783E27A6EEF6378E3
                541FF43E321863CFCC846F21A7BBAAE3E7E435E7FEAC7CF0176120B3F891B1DC
                F231DD7138D9474961FC60E8E37A73BDCE7D757A4115FB17FE60CACB90F83F86
                34B74709D0FBD4C9507A51369626730259C73614BBFA108EB7C752D5460695B3
                DB5F44B0D8AED216F048659BB0F425A3C5D783D245944EA35C91E6B7984726E0
                2813946FA3A992A34E8726B5912A0169CB37088E9848C9C52C3468CF218EF555
                9FE6BDF0E32E86B6F4A7E7A8693D53379526F433EC2FFA08DB733EC0FAF42958
                9E3210936E3E8AF1C18FE02D3F32CEEF01F4BFF1A4584E1BC8E2766FAB87F1AA
                450FBC66F1205E39F9205E3CF100FE78E461AE47F1C2E1E7F1DA91DEE8B3E94D
                8CDD36194EF11EC8AFFA0D26F23FB1900056256CA3E67318BAC28671232416B3
                13FBC110CFCA4CFCEB50C6BC0463C25FD1C0503CD3F30911002D3BF9C2510051
                38E90278260118022882C306316E4F8581CD626309B53694270AEA36E135E2EB
                08B2A190E94B3E1F2F984C10093A0144C578C88A4730B99F83062A042A6E7F8A
                AA866FE1E6330EA1992B9066B8889B9283706E5C28026823FD04667CCDD9FA45
                D896390DDBB267E1BBB4C922809379C14D0879F42700FBF93D81BEAE8FE1B56B
                0F8A1D8901D79E42CF330FE0750B8276AC07FE7CFC31BC74E2293C7FF00F1868
                F1167AADEF8B5309E790D99E3FAEA8B692B9D3DD459E7FFBBA5F86814293B7D9
                F748C0A50928BB3906AA18C194BE067DECABE25113C5A086014C3943F01A2F6E
                582488A1B20950C114F60DA99729A289248374EC046804F961E5589A4432B49A
                4097B2A758F51E556DEC6E943255619468A048D8787BCA9D235F6BA4D933158F
                24A8B40015EFB23F39081DD9B4549C146E29FC08DDF56B519EF50D2E58BE85E0
                AA2348672E6853B20A7E5DDB70A966294E96CE270BBFC4918A2FB0356712BE63
                296D250B1133C8C0C901F47D8C4087BA3F8721AECF62107B832FD1FF0D717D9E
                414B0FBCEDF067BC78B8075E357B1A2FECA4D93CF257BC7D7C08066C1B88DD81
                BBE1CFBD45739B727E96DFFB5500A4BD9C13EFFA318AAEBF87EEF0812268C232
                25B09C16CDA43E869D78A727D016D88FC0D1E40900526E612C98086DE104113C
                61A94B095EF9FBD4D0B0BE5A315204D0208052CCA92661B1EB2F024E159C70FC
                5B000D45EF90853C57F563F89AF7D14186D6644E476AF82444FAB1A86C4BFF76
                F97DFAC14B88379DC1B572FABFD2CF71A284014CCE6CECCA9F836DB993B18E0D
                DD55AC28CD24032712C4E11E143411C041CE4FA3970D9379F73FE06582D8EBC2
                A3F8EBC91E78E3CC5378613FA516163D31F46C7FF461BEB7C06521BCEABDAC62
                5B639656292A9FBA17ECFBC582981FBF5CEB6D479718EE67561338923B5EB116
                1ACE94228A5169744F282286A2C0FA197447B04E9A4F5F974533C79AA3218FEC
                2A18296A46356491207E52160D6777FF1D02CB86F0EDB7A9B1219BF269967358
                0028BAB30CF96464EE0868F3C652BAC188B480159BBC8FD0993A9D92C7C9DC12
                E44324384E41ACCB67F0383D1BE7764EC48543F3B078FB04ACB6E48E502D76F0
                6B3C05EBCAAD3859F2254ED52CC11EEA5C37178C6547FE6DAC4C1F88594C2326
                793F8DD14E8F515AF1070CB37F06AF3378E96DFB047A5EA6EFB3789826F409BC
                B8E7510C39F906A69C1B83C11BDFC4E7A7E6E37AF175449747B160FBF3CDE6AF
                C340E18BAA63E646D94F4391274F38733D5324C54BE17FA5B0F33574860C44EE
                D52719D0B05391C37483320B034B56DA6C82953782FBA00D83926A3645E130C8
                F2DFE654D3DB50B2C76828665F31FB8E1CC390D58F8C2583451087B1F748A922
                E72D343993D195369EFB578F4379D030512910693508619747E1CAEE8138B961
                080735E7C2CA6C214552271BCE86EEC57EAFAF585C73C3A5920D3853F60DF617
                7C8C5D85D3B121773456A60CC18AB40198E9FB3426783E290238D68DAD2402D8
                C79E5598AB0FA397D523ACC2709D7E1C7DCD59523BFB26FA6DED89F7F7BD07E7
                122784D486EC2C92B197F64F0520BF6C41CC1145A21D854E013467B798B087D1
                E771B5F8BC8C22A767A048EB2D324A93DD57D4C9E872DE200BFB102446AC396C
                33650B8B2C25DB4C59ECE4734B52A40FE5A269E432A5516B23348BA974EBA686
                B38945EBB280C548715984D04B8BE172741EACF77D81E3EB3FC289EF17E1DA49
                0A963C1D3C93C3C337DC2ECCEB7FBBAE54DC35D03BD9D1E580C72A84749EC7E9
                BC05385A3C1B3B69DAD7678FC7D749EFE2EBD43198E6FB3AC6BABE80918E4F62
                8CFB2318C6FCAF9FFD4378E31A2B3257EEB0AF8F055B4E97876218BB0E63768C
                815D8A033BF459734A5BABEFBAE3F0BF81FE8B05313F7EA8A9CDF748D415EE8C
                EBD01386100211C16026E0CFA871FD236A7CFE0255465F0236E8EF0034E6F7FD
                09405D261BC314451932298CCA19C29AAA20C5E0C590C695F92E8BE56F52CED8
                074D616F8A4C4FB4791BA16747C1FDC8685CDD3606D77673C788A35F22C8661F
                B7C4BC9C509A766B7967DD7FFDC1AA46943F72397A1F2E666E84AF7C3776674E
                FA09C06F92476059FA384CF7EB250238C2FE718C7279106F09A226DB0744F6BD
                7C8EBA184B0A7E2FBE8491E707A1DFE6D77024FA08A25B6297C796A7726F957B
                6B3A7F7CBF5F1C40CAAF1F1136B7297165213A88B95DF470E8A8C62EB57B00D2
                E03F71E37216BCB37A8BCD5F531A7F0A2295176A2A93FD54566C849544934BD6
                99B823872A7924019F8C9698C9684D98266E7192E5F909121D168953AF1EE6F3
                60B97D0ECC377F81F30736C0DEC2AC35D0DDD12529E2D69ADAD2E2FF2F06ECB0
                5B8C8BFC9D40A7C66DD8C0CFD994359DFE6F123EE3F79EE2DF17233DD995A7B4
                70A8337B8136ACC2D0070EB061F5E534FB8256BDF1AEE59B22FB76F14725AF17
                F923AB91F9D12F04DE2F1EC4081F60EAE676CC6461E2F9D16874A1BC22A03F94
                375E4199FD8322809AB43EDCF8B6275B4DFC35540288748296F2224CAC991AE3
                58B91100A4FF51250C842C7E38EAC386A2CCFF5D14F80E45A6D77BF0674BC6ED
                D0185CDD310C5776324936FF1A618E66AD59E15E169599FFD8F8563BCA1EB98D
                C8056BB8899F55C577385CF03996C58CC2F2D409F83A7D02C653FA31C29DDD78
                BBC73082F9EB409A50A10BF1FA8587D09F5598496E6FA3FFE197F1C1A5290893
                856D8997A62E28E9AC164DF42FB57EB137FEBB2FCCAD9933AF7326DC6D0137AA
                FF18AD3706A1D0FA49A8231891122043BC00180992C8BF93D999886760923884
                C93F05C2D1135117C4DF86709BC6C190C508E42F687ADB7C03B3FDD3B077DB6C
                ECDDBA14A78E6D83BD95794350809B556EFE3F06DA7F7762D35AA2E7AEBFFA35
                1CB82FDA91AC95987F6308BE4A1A8AA9017FC150074A29AE3DCCFEDF3364E08B
                78C5EC414CE046B453ECDFC6C0EDAF60FE954FE055EE8D1B858177DDA4FD47C0
                FE750094D2FED5789B879F6162EF3A06D56EBD50EBF112F4CC059142B399F012
                0CB17FE2169D645F02B53431BDA10CEFCD52DB40547AB3F8EC3A823F5B331A37
                CE8DC7F1EF07C07CF7049C3C3413DE2EBB1178FD52420EFD5A53CDBDD983FAC7
                93E7596013B8D2E1231CE78F7F2C8B7C1F0BA2DFC487E1BD30DC85327A47565C
                CE33DAB47A01EFD8BC84E1975FC27BE77B63FCC9B761967A1811ED916B8A74A5
                6F54C8EB9FFB47C0B89BE7FE3A00FE6042A2BC76705F4DFE2C0EF521CDDEEF31
                D71F0B4928956AB16F439B341EDD315350173C05455EFC6516A7D988B49E0717
                B339B0D8311B47B6CCC5C903EB71E1CC01F878BAD9850687EDCCC9CDBF67158D
                FFEEE45D0ABC54B8D676010EC47F8D15A183F1897F2F8C76A4FFB37E02432EBF
                86BE677A622A7FBE60D2E9A118B3FF1D9C8939C151B8A835A915B91C41FEE5CC
                E6AF9707FECD3FC2A064E427095B1EEBB28035D2B12280BAD831E88C18248258
                4B5D4C81535F245FEB8F88B343E0CDAAFDB59D6FC3E9D86C6E51BC189E563B11
                E9EFE059901573D7CDCFBB39A966B7B661991B073B8306606E606F0CB77E0CFD
                2F3C80B7AEBC8E2197FA61FC9521187DB43F3605F07775DB02B6C435245003F2
                EB80F7AB04317FFB8F5119CB1FB9E5B70B29EE5FA3D96716EA39019B69FF0152
                1845C6D9CCE7768F737176DB741CD9F8112C0FAC82DDA5E39DD7194526C6442E
                AD2E2FFBC5CDD17F77E22BB465CFED725F85951E23B18215A589364CD229217C
                EF4A6F6A5E86E3FDE36F6185E397F0A5DF8BA98CFBC5D285FFE9A2F8554DA8F0
                25F45DE14B6F59CD45B9E338E45C7A075167C7C069F7BBB8C49293EDBEA9FC7D
                A115FC910EB3D6F4702797A24CFE6AE3AF7835FF4F9F15D1EA69B1C876301632
                CF9CE1FC0A27739FC138BB8178EB4C5FCCB59B0E0F6EAD1CD31EB934BFABF067
                F5F6EEE6DFFAAB03287CC98AC29471BEEE57A2CF9AEFC2FE83DB607EEA206CED
                2FA60587FA1CC9CEF9F97BA7DCCD89F8BF5E1352E8B7FFB3BD1F60D9E5CFB1F0
                CA8798623E1CB32CF9035939C148B99D34B3B4ADE4FF2BCFFCBF3EE71F7DFCBE
                00287CC986CAACC1D929A16B62E2381C9A153FB3B29A3F8EF51B60DBFFF41DEA
                59A9714CBD123DE7D0247CCA1F7D9C64F60E2E951D434A55E2CC9296A25F34D7
                FBDFCECB7D03F0B70CD6FFF6DDAEDDBA90B6D672396CF9AB9C316DC11BCAA5A5
                F7C537FFF81D7F07F02E585FA0C91C5C8EBC378475BF2FC4DF01BC0B00EF3768
                F7250FFC2DFDA3FF95BECBEF0CFC9D81BF5ED5E15F8939F7EADFF23B037F67E0
                EF0CBC576CBA9BF7F99D81BF33F07706DE0D73EED56B7E67E03F3903FF1FB78D
                055DD7CF4A560000000049454E44AE426082}
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
    Left = 789
    Top = 53
    Width = 416
    Height = 555
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
      Height = 466
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
      Top = 525
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
