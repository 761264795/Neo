inherited BillQueryFrm: TBillQueryFrm
  Left = 253
  Top = 74
  Caption = #21333#25454#21015#34920#26597#35810#37197#32622
  ClientHeight = 603
  ClientWidth = 1044
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 12
  object Splitter1: TSplitter
    Left = 185
    Top = 25
    Width = 2
    Height = 578
  end
  object p_top: TPanel
    Left = 0
    Top = 0
    Width = 1044
    Height = 25
    Align = alTop
    TabOrder = 0
    object Image1: TImage
      Left = 1
      Top = 1
      Width = 1042
      Height = 23
      Align = alClient
      Stretch = True
    end
    object btn_Save: TSpeedButton
      Left = 0
      Top = 0
      Width = 73
      Height = 26
      Caption = #20445#23384'(&S)'
      Flat = True
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
        FF00AD5A5A00AD525200A54A4A00AD949400C6CEC600CECECE00CECECE00CECE
        C600C6CECE00B59C9C009C4242009C424200A5525200FFFFFF00FFFFFF00BD7B
        7300CE636300D66B6B00BD5A5A009C848400BDA5A500E7D6CE00FFFFF700FFFF
        FF00F7F7F700D6B5B500942929009C313100C65A5A00B55A5A00FFFFFF00BD7B
        7300CE636300CE636300BD5A5A009C7B7B009C424200B5737300E7DEDE00FFFF
        FF00FFFFFF00DEBDBD00942929009C313100C65A5A00AD5A5A00FFFFFF00BD7B
        7300CE636300CE636300BD5A5A00AD8484009C3939009C313100CEBDBD00F7F7
        EF00FFFFFF00E7C6C600942929009C313100C65A5A00AD5A5A00FFFFFF00BD7B
        7300CE636300CE636300B55A5A00B58C8C009C4A4A0094313100A59C9C00D6DE
        DE00FFFFFF00E7CECE009429290094313100BD5A5A00AD5A5A00FFFFFF00BD7B
        7300CE636300CE636300BD5A5A00C6948C00C6949400B5848400AD8C8C00BDA5
        A500E7CECE00DEADAD00A5393900A5393900C65A5A00AD525A00FFFFFF00BD7B
        7300CE636300CE636300CE636300CE636300CE636300CE636300CE636300CE5A
        5A00CE5A5A00CE636300CE636300CE636300CE6B6B00AD525200FFFFFF00BD7B
        7300B5525200B55A5200C6848400D6A5A500D6ADAD00D6ADAD00D6ADAD00D6A5
        A500D6ADA500D6ADAD00D6ADAD00D69C9C00CE636300AD525200FFFFFF00BD7B
        7300B54A4A00E7CECE00FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7
        F700FFF7F700FFF7F700FFFFFF00DEBDBD00C65A5A00AD525200FFFFFF00BD7B
        7300B5524A00EFD6D600FFFFFF00F7F7EF00F7F7F700F7F7F700F7F7F700F7F7
        F700F7F7F700F7F7F700FFFFFF00DEBDBD00C65A5A00AD525200FFFFFF00BD7B
        7300B5524A00EFD6D600F7EFEF00DED6D600DED6D600DED6D600DED6D600DED6
        D600DED6D600DED6D600EFEFEF00E7BDBD00C65A5A00AD525200FFFFFF00BD7B
        7300B5524A00EFD6D600F7F7F700DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
        DE00DEDEDE00DEDEDE00EFEFEF00E7BDBD00C65A5A00AD525200FFFFFF00BD7B
        7300B5524A00EFD6D600F7F7F700E7DEDE00E7E7E700E7E7E700E7E7E700E7E7
        E700E7E7E700E7DEDE00F7F7F700DEBDBD00C65A5A00AD525200FFFFFF00BD7B
        7300B5524A00EFD6D600F7F7EF00DED6D600DEDED600DEDED600DEDED600DEDE
        D600DEDED600DED6D600EFEFEF00E7BDBD00C65A5A00AD525200FFFFFF00BD7B
        7300B5524A00EFD6D600FFFFFF00FFF7F700FFF7F700FFF7F700FFF7F700FFF7
        F700FFF7F700FFF7F700FFFFFF00DEBDBD00C65A5A00AD525200FFFFFF00FFFF
        FF00AD524A00CEB5B500D6D6D600D6CECE00D6CECE00D6CECE00D6CECE00D6CE
        CE00D6CECE00D6CECE00D6D6D600CEADAD00A54A4A00FFFFFF00}
      OnClick = btn_SaveClick
    end
  end
  object left_p: TPanel
    Left = 0
    Top = 25
    Width = 185
    Height = 578
    Align = alLeft
    Color = 16511980
    TabOrder = 1
    object cxGrid2: TcxGrid
      Left = 1
      Top = 1
      Width = 183
      Height = 576
      Align = alClient
      TabOrder = 0
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.SkinName = 'Office2007Green'
      object cxBillType: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        OnFocusedRecordChanged = cxBillTypeFocusedRecordChanged
        DataController.DataSource = dsBillType
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.DataRowHeight = 22
        OptionsView.GroupByBox = False
        OptionsView.HeaderHeight = 22
        OptionsView.Indicator = True
        Styles.Inactive = cxStyle1
        object cxBillTypeFID: TcxGridDBColumn
          DataBinding.FieldName = 'FID'
          Visible = False
        end
        object cxBillTypeFnumber: TcxGridDBColumn
          Caption = #31867#22411#32534#21495
          DataBinding.FieldName = 'Fnumber'
          Width = 61
        end
        object cxBillTypeFNAME_L2: TcxGridDBColumn
          Caption = #21333#25454#21517#31216
          DataBinding.FieldName = 'FNAME_L2'
          Width = 95
        end
        object cxBillTypeFBOSTYPE: TcxGridDBColumn
          Caption = #21333#25454#26631#35782
          DataBinding.FieldName = 'FBOSTYPE'
          Width = 58
        end
      end
      object cxGrid2Level1: TcxGridLevel
        GridView = cxBillType
      end
    end
  end
  object right_P: TPanel
    Left = 187
    Top = 25
    Width = 857
    Height = 578
    Align = alClient
    BevelOuter = bvNone
    Color = 16511980
    TabOrder = 2
    object Splitter2: TSplitter
      Left = 0
      Top = 351
      Width = 857
      Height = 2
      Cursor = crVSplit
      Align = alBottom
    end
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 857
      Height = 351
      Align = alClient
      BevelOuter = bvNone
      Color = 16511980
      TabOrder = 0
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 857
        Height = 69
        Align = alTop
        Color = 16511980
        TabOrder = 0
        object Label1: TLabel
          Left = 6
          Top = 8
          Width = 51
          Height = 12
          AutoSize = False
          Caption = #21333#25454#31867#22411
        end
        object Label21: TLabel
          Left = 6
          Top = 49
          Width = 53
          Height = 12
          AutoSize = False
          Caption = #21019#24314#20154
        end
        object Label32: TLabel
          Left = 410
          Top = 49
          Width = 65
          Height = 12
          AutoSize = False
          Caption = #26368#21518#20462#25913#20154
        end
        object Label33: TLabel
          Left = 622
          Top = 49
          Width = 81
          Height = 12
          AutoSize = False
          Caption = #26368#21518#20462#25913#26102#38388
        end
        object Label31: TLabel
          Left = 206
          Top = 50
          Width = 65
          Height = 12
          AutoSize = False
          Caption = #21019#24314#26102#38388
        end
        object Label2: TLabel
          Left = 6
          Top = 29
          Width = 47
          Height = 12
          AutoSize = False
          Caption = #22791#27880
        end
        object txt_ctName: TcxDBTextEdit
          Left = 60
          Top = 46
          DataBinding.DataField = 'CtName'
          DataBinding.DataSource = dsMater
          Enabled = False
          TabOrder = 5
          Width = 140
        end
        object txt_alName: TcxDBTextEdit
          Left = 477
          Top = 46
          DataBinding.DataField = 'AlName'
          DataBinding.DataSource = dsMater
          Enabled = False
          TabOrder = 7
          Width = 140
        end
        object txt_FLASTUPDATETIME: TcxDBDateEdit
          Left = 705
          Top = 46
          DataBinding.DataField = 'FLASTUPDATETIME'
          DataBinding.DataSource = dsMater
          Enabled = False
          TabOrder = 8
          Width = 140
        end
        object txt_FCREATETIME: TcxDBDateEdit
          Left = 263
          Top = 46
          DataBinding.DataField = 'FCREATETIME'
          DataBinding.DataSource = dsMater
          Enabled = False
          TabOrder = 6
          Width = 140
        end
        object chk_FISWHERE: TcxDBCheckBox
          Left = 204
          Top = 5
          Caption = #22522#26412#35821#21477#21253#21547' Where '#23376#21477
          DataBinding.DataField = 'FISWHERE'
          DataBinding.DataSource = dsMater
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          TabOrder = 1
          Width = 161
        end
        object chk_FIS_DRAG: TcxDBCheckBox
          Left = 412
          Top = 5
          Caption = #24320#21551#25302#21160#20998#32452
          DataBinding.DataField = 'FIS_DRAG'
          DataBinding.DataSource = dsMater
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          TabOrder = 2
          Width = 96
        end
        object txt_FDES: TcxDBTextEdit
          Left = 60
          Top = 25
          DataBinding.DataField = 'FDES'
          DataBinding.DataSource = dsMater
          TabOrder = 4
          Width = 785
        end
        object txt_FNAME_L2: TcxDBTextEdit
          Left = 60
          Top = 5
          DataBinding.DataField = 'FNAME_L2'
          DataBinding.DataSource = dsBillType
          Enabled = False
          TabOrder = 0
          Width = 140
        end
        object is_chart_cb: TcxDBCheckBox
          Left = 586
          Top = 6
          Caption = #26159#21542#24320#21551#22270#34920#20998#26512
          DataBinding.DataField = 'FIS_CHART'
          DataBinding.DataSource = dsMater
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          TabOrder = 3
          Width = 121
        end
      end
      object Panel4: TPanel
        Left = 0
        Top = 69
        Width = 857
        Height = 182
        Align = alClient
        Color = 16511980
        TabOrder = 1
        object cxGroupBox2: TcxGroupBox
          Left = 1
          Top = 1
          Align = alClient
          Caption = #22522#26412#35821#21477
          TabOrder = 0
          Height = 180
          Width = 855
          object mm_FBASESQL: TcxDBMemo
            Left = 2
            Top = 17
            Align = alClient
            DataBinding.DataField = 'FBASESQL'
            DataBinding.DataSource = dsMater
            Properties.ScrollBars = ssBoth
            Style.LookAndFeel.Kind = lfOffice11
            Style.LookAndFeel.SkinName = 'Office2007Green'
            StyleDisabled.LookAndFeel.Kind = lfOffice11
            StyleDisabled.LookAndFeel.SkinName = 'Office2007Green'
            StyleFocused.LookAndFeel.Kind = lfOffice11
            StyleFocused.LookAndFeel.SkinName = 'Office2007Green'
            StyleHot.LookAndFeel.Kind = lfOffice11
            StyleHot.LookAndFeel.SkinName = 'Office2007Green'
            TabOrder = 0
            Height = 161
            Width = 851
          end
        end
      end
      object Panel5: TPanel
        Left = 0
        Top = 251
        Width = 857
        Height = 100
        Align = alBottom
        Color = 16511980
        TabOrder = 2
        object cxGroupBox1: TcxGroupBox
          Left = 1
          Top = 1
          Align = alClient
          Caption = #20998#32452#21450#25490#24207#35821#21477
          TabOrder = 0
          Height = 98
          Width = 855
          object mm_FGROUPSQL: TcxDBMemo
            Left = 2
            Top = 17
            Align = alClient
            DataBinding.DataField = 'FGROUPSQL'
            DataBinding.DataSource = dsMater
            Properties.ScrollBars = ssBoth
            Style.LookAndFeel.Kind = lfOffice11
            Style.LookAndFeel.SkinName = 'Office2007Green'
            StyleDisabled.LookAndFeel.Kind = lfOffice11
            StyleDisabled.LookAndFeel.SkinName = 'Office2007Green'
            StyleFocused.LookAndFeel.Kind = lfOffice11
            StyleFocused.LookAndFeel.SkinName = 'Office2007Green'
            StyleHot.LookAndFeel.Kind = lfOffice11
            StyleHot.LookAndFeel.SkinName = 'Office2007Green'
            TabOrder = 0
            Height = 79
            Width = 851
          end
        end
      end
    end
    object Panel2: TPanel
      Left = 0
      Top = 353
      Width = 857
      Height = 225
      Align = alBottom
      Color = 16511980
      TabOrder = 1
      object cxPage: TcxPageControl
        Left = 1
        Top = 1
        Width = 855
        Height = 198
        ActivePage = tb_FieldList
        Align = alClient
        Style = 10
        TabOrder = 0
        OnChange = cxPageChange
        ClientRectBottom = 198
        ClientRectRight = 855
        ClientRectTop = 18
        object tb_FieldList: TcxTabSheet
          Caption = #26174#31034#23383#27573#37197#32622
          ImageIndex = 0
          object cxGrid1: TcxGrid
            Left = 0
            Top = 0
            Width = 855
            Height = 180
            Align = alClient
            TabOrder = 0
            LookAndFeel.Kind = lfOffice11
            LookAndFeel.SkinName = 'Office2007Green'
            object cxFiledList: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              OnEditing = cxFiledListEditing
              DataController.DataSource = dsFieldList
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsCustomize.ColumnFiltering = False
              OptionsCustomize.ColumnGrouping = False
              OptionsCustomize.ColumnSorting = False
              OptionsData.CancelOnExit = False
              OptionsData.Deleting = False
              OptionsData.DeletingConfirmation = False
              OptionsData.Inserting = False
              OptionsView.DataRowHeight = 22
              OptionsView.GroupByBox = False
              OptionsView.HeaderHeight = 22
              OptionsView.Indicator = True
              object cxFiledListFID: TcxGridDBColumn
                DataBinding.FieldName = 'FID'
                Visible = False
                HeaderAlignmentHorz = taCenter
                Width = 120
              end
              object cxFiledListFPARENTID: TcxGridDBColumn
                DataBinding.FieldName = 'FPARENTID'
                Visible = False
                HeaderAlignmentHorz = taCenter
                Width = 120
              end
              object cxFiledListFLSH: TcxGridDBColumn
                Caption = #39034#24207#21495
                DataBinding.FieldName = 'FLSH'
                HeaderAlignmentHorz = taCenter
                Options.Editing = False
                Options.Filtering = False
                Options.Sorting = False
                Width = 37
              end
              object cxFiledListFIELDNAME: TcxGridDBColumn
                Caption = #23383#27573#21517
                DataBinding.FieldName = 'FIELDNAME'
                HeaderAlignmentHorz = taCenter
                Width = 120
              end
              object cxFiledListFIELDCHNAME: TcxGridDBColumn
                Caption = #23383#27573#20013#25991#21517
                DataBinding.FieldName = 'FIELDCHNAME'
                HeaderAlignmentHorz = taCenter
                Width = 120
              end
              object cxFiledListFISVISIBLE: TcxGridDBColumn
                Caption = #21487#35265
                DataBinding.FieldName = 'FISVISIBLE'
                PropertiesClassName = 'TcxCheckBoxProperties'
                Properties.NullStyle = nssUnchecked
                Properties.ValueChecked = 1
                Properties.ValueUnchecked = 0
                HeaderAlignmentHorz = taCenter
                Width = 42
              end
              object cxFiledListFISFILTER: TcxGridDBColumn
                Caption = #36807#28388
                DataBinding.FieldName = 'FISFILTER'
                PropertiesClassName = 'TcxCheckBoxProperties'
                Properties.NullStyle = nssUnchecked
                Properties.ValueChecked = 1
                Properties.ValueUnchecked = 0
                HeaderAlignmentHorz = taCenter
                Width = 43
              end
              object cxFiledListFISSORT: TcxGridDBColumn
                Caption = #25490#24207
                DataBinding.FieldName = 'FISSORT'
                PropertiesClassName = 'TcxCheckBoxProperties'
                Properties.NullStyle = nssUnchecked
                Properties.ValueChecked = 1
                Properties.ValueUnchecked = 0
                HeaderAlignmentHorz = taCenter
                Width = 47
              end
              object cxFiledListFISGROUP: TcxGridDBColumn
                Caption = #20998#32452
                DataBinding.FieldName = 'FISGROUP'
                PropertiesClassName = 'TcxCheckBoxProperties'
                Properties.NullStyle = nssUnchecked
                Properties.ValueChecked = 1
                Properties.ValueUnchecked = 0
                HeaderAlignmentHorz = taCenter
                Width = 46
              end
              object cxFiledListFISBARSHOW: TcxGridDBColumn
                Caption = #26174#31034#36827#24230#26465
                DataBinding.FieldName = 'FISBARSHOW'
                PropertiesClassName = 'TcxCheckBoxProperties'
                Properties.NullStyle = nssUnchecked
                Properties.ValueChecked = 1
                Properties.ValueUnchecked = 0
                HeaderAlignmentHorz = taCenter
                Width = 71
              end
              object cxFiledListFISMERGE: TcxGridDBColumn
                Caption = #21512#24182
                DataBinding.FieldName = 'FISMERGE'
                PropertiesClassName = 'TcxCheckBoxProperties'
                Properties.NullStyle = nssUnchecked
                Properties.ValueChecked = 1
                Properties.ValueUnchecked = 0
                HeaderAlignmentHorz = taCenter
                Width = 76
              end
              object cxFiledListColumnFisPyFilter: TcxGridDBColumn
                Caption = #25340#38899#36807#28388
                DataBinding.FieldName = 'FisPyFilter'
                PropertiesClassName = 'TcxCheckBoxProperties'
                Properties.NullStyle = nssUnchecked
                Properties.ValueChecked = 1
                Properties.ValueUnchecked = 0
                HeaderAlignmentHorz = taCenter
              end
              object cxFiledListFDEFWIDTH: TcxGridDBColumn
                Caption = #40664#35748#23485#24230
                DataBinding.FieldName = 'FDEFWIDTH'
                HeaderAlignmentHorz = taCenter
                Width = 65
              end
              object cxFiledListFFORMATCOUNT: TcxGridDBColumn
                Caption = #23567#25968#20301#25968
                DataBinding.FieldName = 'FFORMATCOUNT'
                HeaderAlignmentHorz = taCenter
                Width = 51
              end
              object cxFiledListFSTATTYPE: TcxGridDBColumn
                Caption = #32479#35745#26041#24335
                DataBinding.FieldName = 'FSTATTYPE'
                PropertiesClassName = 'TcxComboBoxProperties'
                Properties.DropDownListStyle = lsFixedList
                Properties.Items.Strings = (
                  ''
                  'SUM'
                  'COUNT'
                  'MAX'
                  'MIN'
                  'AVE')
                HeaderAlignmentHorz = taCenter
                Width = 65
              end
              object cxFiledListFSYSTEMPARA_NAME: TcxGridDBColumn
                Caption = #26597#30475#26435#38480
                DataBinding.FieldName = 'FSYSTEMPARA_NAME'
                PropertiesClassName = 'TcxComboBoxProperties'
                Properties.DropDownListStyle = lsFixedList
                Properties.Items.Strings = (
                  ''
                  #26597#30475#21333#20215
                  #26597#30475#37329#39069
                  #26597#30475#25104#26412
                  #39044#30041)
                HeaderAlignmentHorz = taCenter
                Width = 106
              end
            end
            object cxGridLevel1: TcxGridLevel
              GridView = cxFiledList
            end
          end
        end
        object tb_FindList: TcxTabSheet
          Caption = #26597#25214#26465#20214#37197#32622
          ImageIndex = 1
          object cxGrid3: TcxGrid
            Left = 0
            Top = 0
            Width = 855
            Height = 180
            Align = alClient
            TabOrder = 0
            LookAndFeel.Kind = lfOffice11
            LookAndFeel.SkinName = 'Office2007Green'
            object cxFindList: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              DataController.DataSource = dsFindList
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsCustomize.ColumnFiltering = False
              OptionsCustomize.ColumnGrouping = False
              OptionsCustomize.ColumnSorting = False
              OptionsData.CancelOnExit = False
              OptionsData.Deleting = False
              OptionsData.DeletingConfirmation = False
              OptionsData.Inserting = False
              OptionsView.DataRowHeight = 22
              OptionsView.GroupByBox = False
              OptionsView.HeaderHeight = 22
              OptionsView.Indicator = True
              object cxFindListFID: TcxGridDBColumn
                DataBinding.FieldName = 'FID'
                Visible = False
                HeaderAlignmentHorz = taCenter
                Width = 100
              end
              object cxFindListFPARENTID: TcxGridDBColumn
                DataBinding.FieldName = 'FPARENTID'
                Visible = False
                HeaderAlignmentHorz = taCenter
                Width = 100
              end
              object cxFindListFSortFlag: TcxGridDBColumn
                DataBinding.FieldName = 'FSortFlag'
                HeaderAlignmentHorz = taCenter
                Width = 50
              end
              object cxFindListFFIELDNAME: TcxGridDBColumn
                Caption = #23383#27573#21517
                DataBinding.FieldName = 'FFIELDNAME'
                PropertiesClassName = 'TcxComboBoxProperties'
                HeaderAlignmentHorz = taCenter
                Width = 78
              end
              object cxFindListFFIELDNAMEORTABLENAME: TcxGridDBColumn
                Caption = #23383#27573#24102#34920#21517
                DataBinding.FieldName = 'FFIELDNAMEORTABLENAME'
                HeaderAlignmentHorz = taCenter
                Width = 100
              end
              object cxFindListFFIELDCHNAME: TcxGridDBColumn
                Caption = #23383#27573#20013#25991#21517
                DataBinding.FieldName = 'FFIELDCHNAME'
                HeaderAlignmentHorz = taCenter
                Width = 100
              end
              object cxFindListFDATATYPE: TcxGridDBColumn
                Caption = #25968#25454#31867#22411
                DataBinding.FieldName = 'FDATATYPE'
                PropertiesClassName = 'TcxComboBoxProperties'
                Properties.DropDownListStyle = lsFixedList
                Properties.Items.Strings = (
                  'String'
                  'Float'
                  'Int'
                  'Date')
                HeaderAlignmentHorz = taCenter
                Width = 83
              end
              object cxFindListFFINDVALUE: TcxGridDBColumn
                Caption = #26597#25214#20540#36873#25321
                DataBinding.FieldName = 'FFINDVALUE'
                PropertiesClassName = 'TcxButtonEditProperties'
                Properties.Buttons = <
                  item
                    Default = True
                    Kind = bkEllipsis
                  end>
                Properties.ClickKey = 118
                Properties.OnButtonClick = cxFindListFFINDVALUEPropertiesButtonClick
                HeaderAlignmentHorz = taCenter
                Width = 109
              end
              object cxFindListFDIALOGTYPE: TcxGridDBColumn
                Caption = #22522#30784#36164#26009
                DataBinding.FieldName = 'FDIALOGTYPE'
                PropertiesClassName = 'TcxComboBoxProperties'
                Properties.DropDownListStyle = lsFixedList
                HeaderAlignmentHorz = taCenter
                Width = 72
              end
              object cxFindListFISINPUT: TcxGridDBColumn
                Caption = #24517#22635
                DataBinding.FieldName = 'FISINPUT'
                PropertiesClassName = 'TcxCheckBoxProperties'
                Properties.NullStyle = nssUnchecked
                Properties.ValueChecked = 1
                Properties.ValueUnchecked = 0
                HeaderAlignmentHorz = taCenter
                Width = 39
              end
              object cxFindListFISRADIOSELECT: TcxGridDBColumn
                Caption = #21333#36873
                DataBinding.FieldName = 'FISRADIOSELECT'
                PropertiesClassName = 'TcxCheckBoxProperties'
                Properties.NullStyle = nssUnchecked
                Properties.ValueChecked = 1
                Properties.ValueUnchecked = 0
                HeaderAlignmentHorz = taCenter
                Width = 34
              end
              object cxFindListFVisbleInFastQuery: TcxGridDBColumn
                Caption = #24555#36895#26597#35810
                DataBinding.FieldName = 'FVisbleInFastQuery'
                PropertiesClassName = 'TcxCheckBoxProperties'
                HeaderAlignmentHorz = taCenter
                Width = 72
              end
              object cxFindListFVisbleOnlyInFastQuery: TcxGridDBColumn
                Caption = #20165#24555#36895#26597#35810
                DataBinding.FieldName = 'FVisbleOnlyInFastQuery'
                PropertiesClassName = 'TcxCheckBoxProperties'
                HeaderAlignmentHorz = taCenter
                Width = 75
              end
              object cxFindListFCompareType: TcxGridDBColumn
                Caption = #27604#36739#20540#31867#22411
                DataBinding.FieldName = 'FCompareType'
                PropertiesClassName = 'TcxComboBoxProperties'
                Properties.DropDownListStyle = lsFixedList
                Properties.Items.Strings = (
                  #31561#20110
                  #22823#20110#31561#20110
                  #22823#20110
                  #23567#20110#31561#20110
                  #23567#20110
                  #30456#20284
                  #21253#21547)
                HeaderAlignmentHorz = taCenter
                Width = 68
              end
            end
            object cxGridLevel2: TcxGridLevel
              GridView = cxFindList
            end
          end
        end
        object tb_ReportList: TcxTabSheet
          Caption = #30456#20851#25253#34920#37197#32622
          ImageIndex = 3
          object cxGrid4: TcxGrid
            Left = 0
            Top = 0
            Width = 855
            Height = 180
            Align = alClient
            TabOrder = 0
            LookAndFeel.Kind = lfOffice11
            LookAndFeel.SkinName = 'Office2007Green'
            object cxReportList: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              DataController.DataSource = dsReportList
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsCustomize.ColumnFiltering = False
              OptionsCustomize.ColumnGrouping = False
              OptionsCustomize.ColumnSorting = False
              OptionsData.CancelOnExit = False
              OptionsData.Deleting = False
              OptionsData.DeletingConfirmation = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsView.DataRowHeight = 22
              OptionsView.GroupByBox = False
              OptionsView.HeaderHeight = 22
              OptionsView.Indicator = True
              object cxReportListFID: TcxGridDBColumn
                DataBinding.FieldName = 'FID'
                Visible = False
              end
              object cxReportListFPARENTID: TcxGridDBColumn
                DataBinding.FieldName = 'FPARENTID'
                Visible = False
              end
              object cxReportListFREPORTID: TcxGridDBColumn
                DataBinding.FieldName = 'FREPORTID'
                Visible = False
              end
              object cxReportListFReportNumber: TcxGridDBColumn
                DataBinding.FieldName = 'FReportNumber'
                Width = 160
              end
              object cxReportListFReportName: TcxGridDBColumn
                DataBinding.FieldName = 'FReportName'
                Width = 389
              end
            end
            object cxGridLevel3: TcxGridLevel
              GridView = cxReportList
            end
          end
        end
        object tb_Chart: TcxTabSheet
          Caption = #40664#35748#22270#34920#37197#32622
          ImageIndex = 2
          object DBChart1: TDBChart
            Left = 0
            Top = 34
            Width = 855
            Height = 146
            AllowPanning = pmNone
            AllowZoom = False
            BackWall.Brush.Color = clWhite
            BackWall.Brush.Style = bsClear
            BackWall.Pen.Visible = False
            Foot.AdjustFrame = False
            Foot.Visible = False
            Gradient.EndColor = clWhite
            Gradient.StartColor = 8421440
            Gradient.Visible = True
            LeftWall.Brush.Color = clWhite
            MarginRight = 45
            MarginTop = 10
            Title.AdjustFrame = False
            Title.Brush.Color = clWhite
            Title.Brush.Style = bsClear
            Title.Text.Strings = (
              #22270#34920#25928#26524#22270)
            AxisVisible = False
            Chart3DPercent = 10
            ClipPoints = False
            Frame.Visible = False
            Legend.ColorWidth = 10
            Legend.TopPos = 5
            View3DOptions.Elevation = 315
            View3DOptions.Orthogonal = False
            View3DOptions.Perspective = 0
            View3DOptions.Rotation = 360
            View3DWalls = False
            Align = alClient
            BevelOuter = bvNone
            Color = clWindow
            TabOrder = 1
            object Label15: TLabel
              Left = 512
              Top = 136
              Width = 241
              Height = 38
              AutoSize = False
              Caption = #27880#24847#65306#13#10'    X'#36724#35831#36873#25321#23383#31526#23383#27573#65292'Y'#36724#35831#36873#25321#20540#23383#27573#13#10'    '#22914#65306'X'#36724'='#39#24215#21517#39'  Y'#36724'='#39#25968#37327#39#12290
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clYellow
              Font.Height = -12
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
              Transparent = True
            end
            object Panel8: TPanel
              Left = 899
              Top = 3
              Width = 121
              Height = 73
              BevelInner = bvRaised
              BevelOuter = bvLowered
              TabOrder = 0
              Visible = False
              object Label9: TLabel
                Left = 6
                Top = 6
                Width = 78
                Height = 12
                Caption = #37096#20998#25968#25454#22788#29702':'
              end
              object Label12: TLabel
                Left = 6
                Top = 22
                Width = 24
                Height = 12
                Caption = #26041#24335
              end
              object Label13: TLabel
                Left = 6
                Top = 38
                Width = 12
                Height = 12
                Caption = #20540
              end
              object Label14: TLabel
                Left = 6
                Top = 55
                Width = 24
                Height = 12
                Caption = #26631#31614
              end
            end
            object Series1: TPieSeries
              Marks.Arrow.Color = clBlack
              Marks.ArrowLength = 8
              Marks.Visible = True
              SeriesColor = clRed
              OtherSlice.Text = 'Other'
              PieValues.DateTime = False
              PieValues.Name = 'Pie'
              PieValues.Multiplier = 1.000000000000000000
              PieValues.Order = loNone
            end
            object Series2: TBarSeries
              Active = False
              ColorEachPoint = True
              Marks.Arrow.Color = clBlack
              Marks.ArrowLength = 20
              Marks.Visible = True
              SeriesColor = clGreen
              XValues.DateTime = False
              XValues.Name = 'X'
              XValues.Multiplier = 1.000000000000000000
              XValues.Order = loAscending
              YValues.DateTime = False
              YValues.Name = 'Bar'
              YValues.Multiplier = 1.000000000000000000
              YValues.Order = loNone
            end
            object Series3: TFastLineSeries
              Active = False
              Marks.Arrow.Color = clBlack
              Marks.ArrowLength = 8
              Marks.Visible = False
              SeriesColor = clRed
              LinePen.Color = clRed
              XValues.DateTime = False
              XValues.Name = 'X'
              XValues.Multiplier = 1.000000000000000000
              XValues.Order = loAscending
              YValues.DateTime = False
              YValues.Name = 'Y'
              YValues.Multiplier = 1.000000000000000000
              YValues.Order = loNone
            end
            object Series4: TAreaSeries
              Active = False
              Marks.Arrow.Color = clBlack
              Marks.ArrowLength = 8
              Marks.Visible = False
              SeriesColor = clBlue
              DrawArea = True
              Pointer.InflateMargins = True
              Pointer.Style = psRectangle
              Pointer.Visible = False
              XValues.DateTime = False
              XValues.Name = 'X'
              XValues.Multiplier = 1.000000000000000000
              XValues.Order = loAscending
              YValues.DateTime = False
              YValues.Name = 'Y'
              YValues.Multiplier = 1.000000000000000000
              YValues.Order = loNone
            end
            object Series5: THorizBarSeries
              Active = False
              Marks.Arrow.Color = clBlack
              Marks.ArrowLength = 20
              Marks.Visible = True
              SeriesColor = clWhite
              XValues.DateTime = False
              XValues.Name = 'Bar'
              XValues.Multiplier = 1.000000000000000000
              XValues.Order = loNone
              YValues.DateTime = False
              YValues.Name = 'Y'
              YValues.Multiplier = 1.000000000000000000
              YValues.Order = loNone
            end
          end
          object Panel9: TPanel
            Left = 0
            Top = 0
            Width = 855
            Height = 34
            Align = alTop
            BevelInner = bvRaised
            BevelOuter = bvLowered
            Color = 16511980
            TabOrder = 0
            object SpeedButton1: TSpeedButton
              Left = 3
              Top = 3
              Width = 28
              Height = 28
              GroupIndex = 1
              Down = True
              Flat = True
              Glyph.Data = {
                96010000424D9601000000000000760000002800000018000000180000000100
                0400000000002001000000000000000000001000000010000000000000000000
                80000080000000808000800000008000800080800000C0C0C000808080000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFF
                FFF00AAAAAA00FFFFFFFFFFFF00B0AAAAAAAA00FFFFFFFFF0BBBB0AAAAAAA0C0
                FFFFFFFF0BBBB0AAAAAA0CC0FFFFFFF0BBBBBB0AAAA0CCCC0FFFFFF0BBBBBB0A
                AA0CCCCC0FFFFF0BBBBBBBB0A0CCCCCCC0FFFF0BBBBBBBB00CCCCCCCC0FFFF0B
                BBBBBBB00CCCCCCCC0FFFF0BBBBBBB0990CCCCCCC0FFFF0BBBBBBB09990CCCCC
                C0FFFFF0BBBBB0999990CCCC0FFFFFF0BBBBB09999990CCC0FFFFFFF0BBB0999
                999990C0FFFFFFFF0BBB099999999900FFFFFFFFF00099999999900FFFFFFFFF
                FFF0099999900FFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
              OnClick = SpeedButton1Click
            end
            object SpeedButton2: TSpeedButton
              Left = 31
              Top = 3
              Width = 28
              Height = 28
              GroupIndex = 1
              Flat = True
              Glyph.Data = {
                96010000424D9601000000000000760000002800000018000000180000000100
                0400000000002001000000000000000000001000000010000000000000000000
                80000080000000808000800000008000800080800000C0C0C000808080000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                8F8F8F8F8F8F8F8F8FFFFFF000000000000000000FFFFF80F99FCCF22FEEF11F
                FFFFFFF0F99FCCF22FEEF11FFFFFFF80F99FCCF22FEEF11FFFFFFFF0F99FCCF2
                2FEEFFFFFFFFFF80F99FCCF22FEEFFFFFFFFFFF0FFFFCCF22FEEFFFFFFFFFF80
                FFFFCCF22FEEFFFFFFFFFFF0FFFFCCF22FEEFFFFFFFFFF80FFFFFFF22FEEFFFF
                FFFFFFF0FFFFFFF22FEEFFFFFFFFFF80FFFFFFF22FFFFFFFFFFFFFF0FFFFFFF2
                2FFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFF0FFFFFFFFFFFFFFFFFFFFFF80
                FFFFFFFFFFFFFFFFFFFFFFF0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
              OnClick = SpeedButton1Click
            end
            object SpeedButton3: TSpeedButton
              Left = 59
              Top = 3
              Width = 28
              Height = 28
              GroupIndex = 1
              Flat = True
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                0400000000000001000000000000000000001000000010000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00337333733373
                3373337F3F7F3F7F3F7F33737373737373733F7F7F7F7F7F7F7F770000000000
                000077777777777777773303333333333333337FFF333333333F370993333333
                3399377773F33333337733033933333339333F7FF7FFFFFFF7FF770777977777
                977777777777777777773303339333339333337F3373F3337333370333393339
                3333377F33373FF7333333033333999333333F7FFFFF777FFFFF770777777777
                777777777777777777773303333333333333337F333333333333370333333333
                3333377F33333333333333033333333333333F7FFFFFFFFFFFFF770777777777
                7777777777777777777733333333333333333333333333333333}
              NumGlyphs = 2
              OnClick = SpeedButton1Click
            end
            object SpeedButton4: TSpeedButton
              Left = 87
              Top = 3
              Width = 28
              Height = 28
              GroupIndex = 1
              Flat = True
              Glyph.Data = {
                96010000424D9601000000000000760000002800000018000000180000000100
                0400000000002001000000000000000000001000000010000000000000000000
                80000080000000808000800000008000800080800000C0C0C000808080000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                8F8F8F8F8F8F8F8F8FFFFFF000000000000000000FFFFF809999999999999999
                9FFFFFF099999999999999999FFFFF8099999999999999999FFFFFF099999999
                999999999FFFFF8099999999999999999FFFFFF099999999C99999999FFFFF80
                999C999CCC9999999FFFFFF099CCC9CCCCC99999CFFFFF809FFCCCCCCCCC999C
                CFFFFFF0FFFFCCCCCCCCC9CCCFFFFF80FFFFFCCCFCCCCCCCCFFFFFF0FFFFFFCF
                FFCCCCCCCFFFFF80FFFFFFFFFFFCCCCCCFFFFFF0FFFFFFFFFFFFCCCFCFFFFF80
                FFFFFFFFFFFFFCFFFFFFFFF0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
              OnClick = SpeedButton1Click
            end
            object SpeedButton5: TSpeedButton
              Left = 115
              Top = 3
              Width = 28
              Height = 28
              GroupIndex = 1
              Flat = True
              Glyph.Data = {
                96010000424D9601000000000000760000002800000018000000180000000100
                0400000000002001000000000000000000001000000010000000000000000000
                80000080000000808000800000008000800080800000C0C0C000808080000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8F8F8F8F8F8FFFFFFFF
                00000000000000000FFFFFF80FFFFFFFFFFFFFFFFFFFFFFF099999FFFFFFFFFF
                FFFFFFF8099999FFFFFFFFFFFFFFFFFF0FFFFFFFFFFFFFFFFFFFFFF80CCCCCCC
                CFFFFFFFFFFFFFFF0CCCCCCCCFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFF
                0222222222222FFFFFFFFFF80222222222222FFFFFFFFFFF0FFFFFFFFFFFFFFF
                FFFFFFF80EEEEEEEEEEFFFFFFFFFFFFF0EEEEEEEEEEFFFFFFFFFFFF80FFFFFFF
                FFFFFFFFFFFFFFFF0111FFFFFFFFFFFFFFFFFFF80111FFFFFFFFFFFFFFFFFFFF
                0FFFFFFFFFFFFFFFFFFFFFF80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
              OnClick = SpeedButton1Click
            end
            object Label10: TLabel
              Left = 156
              Top = 11
              Width = 18
              Height = 12
              Caption = 'X'#36724
            end
            object Label11: TLabel
              Left = 343
              Top = 11
              Width = 18
              Height = 12
              Caption = 'Y'#36724
            end
            object X_Field: TcxDBComboBox
              Left = 180
              Top = 7
              DataBinding.DataField = 'FX_FIELD'
              DataBinding.DataSource = dsMater
              Properties.DropDownListStyle = lsEditFixedList
              Properties.Items.Strings = (
                #22522#26412#25253#34920'(CxGRID'#25511#20214')'
                #20132#21449#25253#34920'(CubeX'#25511#20214')')
              TabOrder = 0
              Width = 153
            end
            object Y_Field: TcxDBComboBox
              Left = 369
              Top = 7
              DataBinding.DataField = 'FY_FIELD'
              DataBinding.DataSource = dsMater
              Properties.DropDownListStyle = lsEditFixedList
              Properties.Items.Strings = (
                #22522#26412#25253#34920'(CxGRID'#25511#20214')'
                #20132#21449#25253#34920'(CubeX'#25511#20214')')
              TabOrder = 1
              Width = 153
            end
          end
        end
        object tb_Help: TcxTabSheet
          Caption = #37197#32622#24517#35835
          ImageIndex = 4
          object Label3: TLabel
            Left = 0
            Top = 0
            Width = 762
            Height = 48
            Align = alClient
            Caption = 
              #13#10'1'#12289#22522#26412#35821#21477#21644#33258#23450#20041#23545#35805#26694'SQL'#37324#21487#20197#20256#20837#21464#37327','#30331#24405#29992#25143'FID'#30340#21464#37327#20026'"@User_ID",'#30331#24405#20998#25903#26426#26500'FID'#20026'"@Bran' +
              'ch_ID",'#33258#23450#20041#21464#37327#20026'"@Defined"'#12290#13#10#13#10'2'#12289#22522#26412#35821#21477#37324#24517#39035#21253#21547#21333#25454#20027#34920#30340#20027#38190#23383#27573' "FID" '#21450#21333#25454#29366#24577#23383#27573' "' +
              'FBaseStatus",'#21542#21017#22312#35843#29992#21015#34920#26041#27861#26102#20250#20986#38169' '#12290
          end
        end
      end
      object Panel10: TPanel
        Left = 1
        Top = 199
        Width = 855
        Height = 25
        Align = alBottom
        BevelOuter = bvNone
        Color = 16511980
        TabOrder = 1
        object InsertRow: TSpeedButton
          Left = 0
          Top = 0
          Width = 68
          Height = 25
          Caption = #26032#22686#34892
          Flat = True
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004A4A
            4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00A5A5A500A5A5A500A5A5A500A5A5A500FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00A5A5A500A5A5A500A5A5A500A5A5A500FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF004A4A4A004A4A4A004A4A4A004A4A4A00FFFFFF00FFFFFF00FFFFFF004A4A
            4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A00FFFFFF00FFFFFF00FFFF
            FF004A4A4A00FFFFFF0063FFFF004A4A4A00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004A4A4A004A4A
            4A004A4A4A0063FFFF00FFFFFF004A4A4A004A4A4A004A4A4A00FFFFFF00FFFF
            FF00FFFFFF00A5A5A500A5A5A500A5A5A500A5A5A500FFFFFF004A4A4A00FFFF
            FF0063FFFF00FFFFFF0063FFFF00FFFFFF0063FFFF004A4A4A00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004A4A4A0063FF
            FF00FFFFFF0063FFFF00FFFFFF0063FFFF00FFFFFF004A4A4A00FFFFFF00FFFF
            FF00FFFFFF00A5A5A500A5A5A500A5A5A500A5A5A500FFFFFF004A4A4A004A4A
            4A004A4A4A00FFFFFF0063FFFF004A4A4A004A4A4A004A4A4A00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF004A4A4A0063FFFF00FFFFFF004A4A4A00FFFFFF00FFFFFF00FFFFFF004A4A
            4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A00FFFFFF00FFFFFF00FFFF
            FF004A4A4A004A4A4A004A4A4A004A4A4A00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
          OnClick = InsertRowClick
        end
        object DelRow: TSpeedButton
          Left = 136
          Top = 0
          Width = 68
          Height = 25
          Caption = #21024#38500#34892
          Flat = True
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF000000B5000000B500FF00FF000000
            B5000000B500FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF000000B5000000B500FF00FF00FF00FF000000
            B5000000B5000000B500FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF000000B5000000B500FF00FF00FF00FF00FF00FF000000
            B5000000B5000000B5000000B500FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF000000B5000000B500FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF000000D6000000BD000000B5000000B500FF00FF00FF00FF00FF00FF00FF00
            FF000000B5000000B500FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF000000B5000000B5000000B500FF00FF000000B5000000
            B5000000B500FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF000000B5000000C6000000C6000000CE000000
            B500FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF000000C6000000C6000000DE00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF000000B5000000D6000000CE000000DE000000
            EF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF000000E7000000DE000000D600FF00FF00FF00FF000000
            E7000000EF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF000000FF000000DE000000EF00FF00FF00FF00FF00FF00FF00FF00
            FF000000FF000000F700FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF000000F7000000F7000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF000000F7000000F700FF00FF00FF00FF00FF00FF00FF00FF000000
            F7000000F7000000F700FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF000000F700FF00FF00FF00FF000000F7000000
            F7000000F700FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000F7000000
            F700FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          OnClick = DelRowClick
        end
        object DelAll: TSpeedButton
          Left = 204
          Top = 1
          Width = 72
          Height = 24
          Caption = #20840#37096#21024#38500
          Flat = True
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF0018A5D60018A5D60018A5D60018A5D60018A5D60018A5
            D60018A5D6005ACEEF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF0018A5D60084DEF7008CDEF7003984E70052BDEF0042C6EF0042BD
            EF0039BDE70018A5D600FF00FF000031E700FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF0018A5D600A5EFFF00A5E7FF00184AE7002163E7004ABDEF0042C6
            EF0042BDEF00189CD6000029E7000031E700FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF0018A5D600B5EFFF00C6EFFF0084BDF700215AE7002163EF004AB5
            EF00319CEF000839F7000029EF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF0018A5D600BDF7FF00D6F7FF00C6EFFF008CD6F700296BEF00104A
            EF00104AEF000839F700FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF0018A5D600BDF7FF00DEF7FF00D6F7FF00ADEFFF00428CF7000839
            F7001052F7001894DE00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF0018A5D600BDF7FF00DEF7FF00CEEFFF005A94FF00104AF7004AA5
            F7004A9CFF000839F700FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF0018A5D600BDF7FF00DEF7FF005A84FF001042F7005AADFF0084EF
            FF0084EFFF00188CDE000839F700FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF0018A5D600BDF7FF00DEF7FF001042FF0073ADFF008CEFFF0084EF
            FF008CEFFF0018A5D600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF0018A5D600BDF7FF00DEF7FF00D6F7FF00B5F7FF008CEFFF0084EF
            FF008CEFFF0018A5D600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF0018A5D600BDF7FF00DEFFFF00DEFFFF00BDF7FF008CEFFF008CEF
            FF008CEFFF0018A5D600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF0018A5D600B5F7FF00CEF7FF00BDEFF7009CE7F70073DEF7007BE7
            FF008CEFFF0018A5D600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF0018A5D6007BD6EF0084D6EF007BD6EF0073CEEF0063CEEF005ACE
            EF005ACEEF0018A5D600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF0018A5D6009CE7F700ADEFFF00ADEFFF009CEFFF0094EFFF0084E7
            FF0073DEF70018A5D600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF0018A5D60018A5D60018A5D60018A5D60018A5D60018A5
            D60018A5D600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          OnClick = DelAllClick
        end
        object SbUp: TSpeedButton
          Left = 460
          Top = 0
          Width = 56
          Height = 25
          Caption = #19978#31227
          Flat = True
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF0000104A000010630000187300001873000010
            630000105200FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00001063000010630000219C000021BD000021BD000021BD000021
            BD0000219C0000106B0000106B00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF000018730000188C000029C6000029C6000021BD000021BD000021BD000021
            BD000029C6000029C60000188C0000105200FF00FF00FF00FF00FF00FF000018
            7300001894000029D6000029CE000021BD000021BD00C6CEEF00FFFFFF004A63
            CE000021BD000021BD000029C60000188C0000106B00FF00FF00FF00FF000018
            73000029DE000029DE000029CE000021BD000021BD00BDCEEF00FFFFFF004A63
            CE000021BD000021BD000021BD000029C60000106B00FF00FF0000187B000021
            B5000031F7000029DE000029C6000021BD000021BD00BDC6EF00FFFFFF004A63
            CE000021BD000021BD000021BD000029C60000219C000010630000187B000029
            E7000031F7000029DE002142CE000829BD000021BD00BDC6EF00FFFFFF004A63
            CE000021BD002142C6000831BD000021BD000021B50000106300001894000031
            FF000031FF000031FF00DEE7FF0094ADF7000031EF00BDC6FF00FFFFFF00395A
            CE004A63CE00F7F7FF00ADB5EF000021BD000021BD0000106B000021A5002152
            FF000839FF000031FF00EFF7FF00FFFFFF008CA5FF00BDCEFF00FFFFFF008494
            DE00E7E7F700FFFFFF0094A5E7000021BD000021BD00001873000021A500426B
            FF00315AFF000031F7005A7BFF00F7FFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF008C9CEF000029D6000029CE000021BD00001063000021A500315A
            FF00849CFF000031FF000031F7005273FF00F7FFFF00FFFFFF00FFFFFF00FFFF
            FF0094A5EF000029DE000029D6000029CE000021AD0000106300FF00FF000031
            EF00ADBDFF005A7BFF000031EF000031F7005273FF00F7F7FF00FFFFFF00A5B5
            F7000029DE000029D6000029CE000029D60000188C00FF00FF00FF00FF000031
            EF00426BFF00C6D6FF005A7BFF000031FF000031EF006B8CFF00BDCEFF001842
            EF000029E7000029DE000029E7000029C60000188C00FF00FF00FF00FF00FF00
            FF000029D6005A7BFF00D6DEFF0094ADFF003963FF00184AFF000839FF001042
            FF001042FF000039FF000029D60000188C00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00315AFF00315AFF0094ADFF00BDCEFF00A5BDFF008CA5FF007394
            FF003963FF000029E7000029E700FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF000031EF001042FF00295AFF002152FF000031
            FF000029C600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          OnClick = SbUpClick
        end
        object SbDown: TSpeedButton
          Left = 516
          Top = 0
          Width = 56
          Height = 25
          Caption = #19979#31227
          Flat = True
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF0000104A000010630000187300001873000010
            630000105200FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00001063000010630000219C000021BD000021BD000021BD000021
            BD0000219C0000106B0000106B00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF000018730000188C000029C6000029C6000021BD000021BD000021BD000021
            BD000029C6000029C60000188C0000105200FF00FF00FF00FF00FF00FF000018
            7300001894000029D6000029CE000021BD000021BD006B84D600BDC6EF001839
            C6000021BD000021BD000029C60000188C0000106B00FF00FF00FF00FF000018
            73000029DE000029DE000029CE000021BD00526BD600F7F7FF00FFFFFF00A5B5
            E7000029BD000021BD000021BD000029C60000106B00FF00FF0000187B000021
            B5000031F7000029DE000029C600526BD600F7F7FF00FFFFFF00FFFFFF00FFFF
            FF0094A5E7000029BD000021BD000029C60000219C000010630000187B000029
            E7000031F7000029DE005A73DE00F7FFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF008C9CDE000029BD000021BD000021B50000106300001894000031
            FF000031FF000031FF00EFF7FF00FFFFFF008CA5F700BDCEFF00FFFFFF008494
            DE00E7E7F700FFFFFF0094A5E7000021BD000021BD0000106B000021A5002152
            FF000839FF000031FF00DEE7FF0094ADFF000031FF00BDCEFF00FFFFFF00395A
            CE004A63CE00F7F7FF00ADB5EF000021BD000021BD00001873000021A500426B
            FF00315AFF000031F700214AFF000839FF000031FF00BDCEFF00FFFFFF004A6B
            E7000029D6002142D6000831D6000029CE000021BD00001063000021A500315A
            FF00849CFF000031FF000031F7000031FF000031FF00BDCEFF00FFFFFF004A6B
            EF000029DE000029DE000029D6000029CE000021AD0000106300FF00FF000031
            EF00ADBDFF005A7BFF000031EF000031F7000031FF00BDCEFF00FFFFFF004A6B
            EF000029DE000029D6000029CE000029D60000188C00FF00FF00FF00FF000031
            EF00426BFF00C6D6FF005A7BFF000031FF000031EF00C6CEFF00FFFFFF004A6B
            F7000029E7000029DE000029E7000029C60000188C00FF00FF00FF00FF00FF00
            FF000029D6005A7BFF00D6DEFF0094ADFF003963FF00184AFF000839FF001042
            FF001042FF000039FF000029D60000188C00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00315AFF00315AFF0094ADFF00BDCEFF00A5BDFF008CA5FF007394
            FF003963FF000029E7000029E700FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF000031EF001042FF00295AFF002152FF000031
            FF000029C600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          OnClick = SbDownClick
        end
        object sbLoadfield: TSpeedButton
          Left = 387
          Top = 1
          Width = 73
          Height = 24
          Caption = #21152#36733#23383#27573
          Flat = True
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B5848400B5848400B584
            8400B5848400B5848400B5848400B5848400B5848400B5848400FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B57B8400FFEFD600F7E7
            C600F7DEB500F7DEAD00F7D69C00F7D69C00FFDE9C00B5848400FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A5737300E7D6C600DECE
            BD00DECEAD00E7CEAD00EFD6AD00EFCE9C00F7D69C00B5848400FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008C736B00B5B5AD00B5AD
            9C00B5A59400CEBDA500E7CEAD00EFCEA500F7D69C00B5848400FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000073FF00735A5200848484000073
            FF008C847B00AD9C8C00CEBDA500E7CEAD00F7DEAD00B5848400BD848400BD84
            8400B5848400B5848400A5737300846363000073FF000073FF000073FF000073
            FF0073736B008C847B00B5AD9400DEC6AD00F7DEB500B5848400B5848400FFEF
            CE00F7DEBD00EFD6AD000073FF000073FF000073FF000073FF000073FF000073
            FF000073FF000073FF00B5AD9C00E7D6BD00EFE7C600B5848400BD848400FFF7
            DE00F7DEC600EFD6B500DEBD9C000073FF000073FF00735A4A00949494000073
            FF000073FF0084848400B5ADA500A5736B00B5847300B5848400BD8C8400FFFF
            EF00F7E7D600EFDEC600DEC6A5000073FF000073FF006B5A4A007B7B7B000073
            FF000073FF008C8C8C00B5B5B500A5736B00E7A55A00CE8C6300BD8C8400FFFF
            FF00FFEFDE00F7E7CE000073FF000073FF000073FF000073FF000073FF000073
            FF000073FF000073FF00CECECE00AD7B7300D69C7B00FFFFFF00CE9C8400FFFF
            FF00FFF7EF00FFEFDE00F7E7CE00E7D6BD000073FF000073FF000073FF000073
            FF00DEAD8400DEAD8400DEAD8400B5847300FFFFFF00FFFFFF00CE9C8400FFFF
            FF00FFFFFF00FFF7EF00FFEFDE00F7E7CE000073FF00DEC6AD00A57373000073
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEAD8400FFFF
            FF00FFFFFF00FFFFFF00FFF7EF00FFEFDE00B5847B00B5847300B57B7B00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7B58C00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00EFDEDE00BD847B00DE9C5A00C6846B00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFBD9400FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00EFDEE700BD847B00DEA57300FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFBD9400DEAD
            8400DEAD8400DEAD8400DEAD8400DEAD8400BD847B00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
          OnClick = sbLoadfieldClick
        end
        object SbInsertRow: TSpeedButton
          Left = 68
          Top = 0
          Width = 68
          Height = 25
          Caption = #25554#20837#34892
          Flat = True
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004A4A
            4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00A5A5A500A5A5A500A5A5A500A5A5A500FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00A5A5A500A5A5A500A5A5A500A5A5A500FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004A4A
            4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004A4A4A004A4A
            4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A00FFFFFF00FFFF
            FF00FFFFFF00A5A5A500A5A5A500A5A5A500A5A5A500FFFFFF004A4A4A00FFFF
            FF00ADFFFF00FFFFFF00ADFFFF00FFFFFF00ADFFFF004A4A4A00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004A4A4A00ADFF
            FF00FFFFFF00ADFFFF00FFFFFF00ADFFFF00FFFFFF004A4A4A00FFFFFF00FFFF
            FF00FFFFFF00A5A5A500A5A5A500A5A5A500A5A5A500FFFFFF004A4A4A004A4A
            4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004A4A
            4A004A4A4A004A4A4A004A4A4A004A4A4A004A4A4A00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
          OnClick = SbInsertRowClick
        end
        object SpAllSelect: TSpeedButton
          Left = 331
          Top = -1
          Width = 56
          Height = 26
          Cursor = crHandPoint
          Caption = #20840#36873
          Flat = True
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF0084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
            FF0084848400FFFFFF00FFFFFF000000840000008400FFFFFF00FFFFFF000000
            840000008400FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
            FF0084848400FFFFFF00FFFFFF00FFFFFF000000840000008400000084000000
            840000008400FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
            FF0084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF0000008400000084000000
            8400FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
            FF0084848400FFFFFF00FFFFFF00FFFFFF000000840000008400000084000000
            8400FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
            FF0084848400FFFFFF00FFFFFF00000084000000840000008400FFFFFF000000
            840000008400FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
            FF0084848400FFFFFF00000084000000840000008400FFFFFF00FFFFFF00FFFF
            FF000000840000008400FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
            FF0084848400FFFFFF00FFFFFF0000008400FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF0000008400FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
            FF0084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF000000840000000000FFFFFF00FFFFFF00FFFFFF00FFFF
            FF0084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF0000008400FFFFFF00FFFFFF00FFFFFF00FFFF
            FF0084848400FFFFFF00FFFFFF00000000000000000000000000000000000000
            000000000000FFFFFF00FFFFFF000000000000008400FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00848484008484840000000000FFFFFF00C6C6C600C6C6C600C6C6
            C600000000008484840084848400FFFFFF00FFFFFF0000008400FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484840084848400848484008484
            8400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
          OnClick = SpAllSelectClick
        end
        object SbUselect: TSpeedButton
          Left = 276
          Top = 0
          Width = 56
          Height = 25
          Cursor = crHandPoint
          Caption = #21453#36873
          Flat = True
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000FF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF000000FF000000FF000000
            FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF0000000000FFFFFF00FFFFFF000000FF000000FF000000FF000000
            FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF0000000000FFFFFF000000FF000000FF000000FF000000FF000000
            FF000000FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00000000000000FF000000FF000000FF00FFFFFF00FFFFFF00FFFF
            FF000000FF000000FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF0000000000FFFFFF000000FF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF000000FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF000000FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF000000FF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00000000000000000000000000000000000000FF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF0000000000FFFFFF0000000000FFFFFF00FFFFFF000000FF00FFFFFF00FFFF
            FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF000000000000000000000000000000000000000000000000000000
            000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
          OnClick = SbUselectClick
        end
        object SpeedButton6: TSpeedButton
          Left = 572
          Top = 0
          Width = 108
          Height = 25
          Caption = #28165#31354#20010#20154#26041#26696
          Flat = True
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
            FF00FFFFFF000000FF00000084000000840084848400FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF000000FF0084848400FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF000000FF0000008400000084000000840084848400FFFFFF00FFFF
            FF00FFFFFF000000FF00000084000000840084848400FFFFFF00FFFFFF00FFFF
            FF00FFFFFF000000FF000000840000008400000084000000840084848400FFFF
            FF000000FF000000840000008400000084000000840084848400FFFFFF00FFFF
            FF00FFFFFF00FFFFFF000000FF00000084000000840000008400000084008484
            8400000084000000840000008400000084000000840084848400FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF000000FF000000840000008400000084000000
            84000000840000008400000084000000840084848400FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000FF0000008400000084000000
            840000008400000084000000840084848400FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000008400000084000000
            8400000084000000840084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000FF00000084000000
            8400000084000000840084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000FF0000008400000084000000
            8400000084000000840084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF000000FF000000840000008400000084008484
            840000008400000084000000840084848400FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF000000FF0000008400000084000000840084848400FFFF
            FF000000FF0000008400000084000000840084848400FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF000000FF00000084000000840084848400FFFFFF00FFFF
            FF00FFFFFF000000FF0000008400000084000000840084848400FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF000000FF0000008400FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF000000FF00000084000000840000008400FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF000000FF00000084000000FF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
          OnClick = SpeedButton6Click
        end
      end
    end
  end
  object cdsBillType: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 64
    Top = 412
  end
  object dsBillType: TDataSource
    DataSet = cdsBillType
    Left = 64
    Top = 468
  end
  object cdsMater: TClientDataSet
    Aggregates = <>
    Params = <>
    BeforePost = cdsMaterBeforePost
    OnCalcFields = cdsMaterCalcFields
    OnNewRecord = cdsMaterNewRecord
    Left = 416
    Top = 148
    object cdsMaterAlName: TStringField
      FieldKind = fkCalculated
      FieldName = 'AlName'
      Size = 100
      Calculated = True
    end
    object cdsMaterCtName: TStringField
      FieldKind = fkCalculated
      FieldName = 'CtName'
      Size = 100
      Calculated = True
    end
    object cdsMaterFID: TWideStringField
      FieldName = 'FID'
      Size = 44
    end
    object cdsMaterFBILLTYPEID: TWideStringField
      FieldName = 'FBILLTYPEID'
      Size = 44
    end
    object cdsMaterFDES: TMemoField
      FieldName = 'FDES'
      BlobType = ftMemo
    end
    object cdsMaterFBASESQL: TMemoField
      FieldName = 'FBASESQL'
      BlobType = ftMemo
    end
    object cdsMaterFGROUPSQL: TMemoField
      FieldName = 'FGROUPSQL'
      BlobType = ftMemo
    end
    object cdsMaterFISWHERE: TIntegerField
      FieldName = 'FISWHERE'
    end
    object cdsMaterFIS_CHART: TIntegerField
      FieldName = 'FIS_CHART'
    end
    object cdsMaterFIS_DRAG: TIntegerField
      FieldName = 'FIS_DRAG'
    end
    object cdsMaterFCHARTTYPE: TFloatField
      FieldName = 'FCHARTTYPE'
    end
    object cdsMaterFX_FIELD: TWideStringField
      FieldName = 'FX_FIELD'
      Size = 80
    end
    object cdsMaterFY_FIELD: TWideStringField
      FieldName = 'FY_FIELD'
      Size = 80
    end
    object cdsMaterFCREATORID: TWideStringField
      FieldName = 'FCREATORID'
      Size = 44
    end
    object cdsMaterFCREATETIME: TDateTimeField
      FieldName = 'FCREATETIME'
    end
    object cdsMaterFLASTUPDATEUSERID: TWideStringField
      FieldName = 'FLASTUPDATEUSERID'
      Size = 44
    end
    object cdsMaterFLASTUPDATETIME: TDateTimeField
      FieldName = 'FLASTUPDATETIME'
    end
  end
  object dsMater: TDataSource
    DataSet = cdsMater
    Left = 416
    Top = 204
  end
  object cdsFieldList: TClientDataSet
    Aggregates = <>
    Params = <>
    OnNewRecord = cdsFieldListNewRecord
    Left = 216
    Top = 444
    object cdsFieldListFID: TWideStringField
      FieldName = 'FID'
      Size = 44
    end
    object cdsFieldListFPARENTID: TWideStringField
      FieldName = 'FPARENTID'
      Size = 44
    end
    object cdsFieldListFIELDNAME: TWideStringField
      FieldName = 'FIELDNAME'
      Size = 100
    end
    object cdsFieldListFIELDCHNAME: TWideStringField
      FieldName = 'FIELDCHNAME'
      Size = 100
    end
    object cdsFieldListFISVISIBLE: TIntegerField
      FieldName = 'FISVISIBLE'
    end
    object cdsFieldListFDEFWIDTH: TFloatField
      FieldName = 'FDEFWIDTH'
    end
    object cdsFieldListFLSH: TFloatField
      FieldName = 'FLSH'
    end
    object cdsFieldListFISFILTER: TIntegerField
      FieldName = 'FISFILTER'
    end
    object cdsFieldListFISSORT: TIntegerField
      FieldName = 'FISSORT'
    end
    object cdsFieldListFSYSTEMPARA_NAME: TWideStringField
      FieldName = 'FSYSTEMPARA_NAME'
      Size = 30
    end
    object cdsFieldListFSTATTYPE: TWideStringField
      FieldName = 'FSTATTYPE'
      Size = 30
    end
    object cdsFieldListFISGROUP: TIntegerField
      FieldName = 'FISGROUP'
    end
    object cdsFieldListFFORMATCOUNT: TFloatField
      FieldName = 'FFORMATCOUNT'
    end
    object cdsFieldListFISBARSHOW: TIntegerField
      FieldName = 'FISBARSHOW'
    end
    object cdsFieldListFISMERGE: TIntegerField
      FieldName = 'FISMERGE'
    end
    object cdsFieldListFISPYFILTER: TIntegerField
      FieldName = 'FISPYFILTER'
    end
  end
  object dsFieldList: TDataSource
    DataSet = cdsFieldList
    Left = 216
    Top = 500
  end
  object cdsFindList: TClientDataSet
    Aggregates = <>
    Params = <>
    OnNewRecord = cdsFindListNewRecord
    Left = 296
    Top = 444
    object cdsFindListFID: TWideStringField
      FieldName = 'FID'
      Size = 44
    end
    object cdsFindListFPARENTID: TWideStringField
      FieldName = 'FPARENTID'
      Size = 44
    end
    object cdsFindListFFIELDNAME: TWideStringField
      FieldName = 'FFIELDNAME'
      Size = 100
    end
    object cdsFindListFFIELDNAMEORTABLENAME: TWideStringField
      FieldName = 'FFIELDNAMEORTABLENAME'
      Size = 100
    end
    object cdsFindListFFIELDCHNAME: TWideStringField
      FieldName = 'FFIELDCHNAME'
      Size = 100
    end
    object cdsFindListFDATATYPE: TWideStringField
      FieldName = 'FDATATYPE'
      Size = 30
    end
    object cdsFindListFFINDVALUE: TMemoField
      FieldName = 'FFINDVALUE'
      BlobType = ftMemo
    end
    object cdsFindListFDIALOGTYPE: TWideStringField
      FieldName = 'FDIALOGTYPE'
      Size = 60
    end
    object cdsFindListFISINPUT: TIntegerField
      FieldName = 'FISINPUT'
    end
    object cdsFindListFISRADIOSELECT: TIntegerField
      FieldName = 'FISRADIOSELECT'
    end
    object cdsFindListFCompareType: TWideStringField
      FieldName = 'FCompareType'
      Size = 10
    end
    object cdsFindListFVisbleOnlyInFastQuery: TBooleanField
      FieldName = 'FVisbleOnlyInFastQuery'
    end
    object cdsFindListFVisbleInFastQuery: TBooleanField
      FieldName = 'FVisbleInFastQuery'
    end
    object cdsFindListFSortFlag: TIntegerField
      DisplayLabel = #39034#24207#21495
      FieldName = 'FSortFlag'
    end
  end
  object dsFindList: TDataSource
    DataSet = cdsFindList
    Left = 296
    Top = 500
  end
  object cdsReportList: TClientDataSet
    Aggregates = <>
    Params = <>
    OnCalcFields = cdsReportListCalcFields
    OnNewRecord = cdsReportListNewRecord
    Left = 376
    Top = 444
    object cdsReportListFID: TWideStringField
      FieldName = 'FID'
      Size = 44
    end
    object cdsReportListFPARENTID: TWideStringField
      FieldName = 'FPARENTID'
      Size = 44
    end
    object cdsReportListFREPORTID: TWideStringField
      FieldName = 'FREPORTID'
      Size = 44
    end
    object cdsReportListFReportNumber: TStringField
      DisplayLabel = #25253#34920#32534#21495
      FieldKind = fkCalculated
      FieldName = 'FReportNumber'
      Size = 100
      Calculated = True
    end
    object cdsReportListFReportName: TStringField
      DisplayLabel = #25253#34920#21517#31216
      FieldKind = fkCalculated
      FieldName = 'FReportName'
      Size = 200
      Calculated = True
    end
  end
  object dsReportList: TDataSource
    DataSet = cdsReportList
    Left = 376
    Top = 500
  end
  object cdsReportType: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 64
    Top = 348
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 64
    Top = 48
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor]
      Color = clHighlight
    end
  end
  object cdsChart: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 688
    Top = 456
  end
end
