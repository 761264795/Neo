object ExportMainFrm: TExportMainFrm
  Left = 361
  Top = 68
  Width = 813
  Height = 633
  Caption = 'Oracle'#25968#25454#23548#20986#23548#20837#24037#20855
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #23435#20307
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 12
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 797
    Height = 41
    Align = alTop
    Color = 12105840
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 7
      Width = 353
      Height = 28
      AutoSize = False
      Caption = 'Oracle'#25968#25454#34920#23548#20986#23548#20837#24037#20855
      Color = 12105840
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = #24494#36719#38597#40657
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 797
    Height = 513
    Align = alClient
    Color = 16116704
    TabOrder = 1
    object cxPage: TcxPageControl
      Left = 1
      Top = 1
      Width = 795
      Height = 511
      ActivePage = cxTabSheet1
      Align = alClient
      HideTabs = True
      Style = 10
      TabOrder = 0
      ClientRectBottom = 511
      ClientRectRight = 795
      ClientRectTop = 0
      object cxTabSheet1: TcxTabSheet
        ImageIndex = 0
        object cxGroupBox3: TcxGroupBox
          Left = 0
          Top = 0
          Align = alTop
          Caption = #20351#29992#35828#26126':'
          Style.LookAndFeel.Kind = lfOffice11
          Style.LookAndFeel.SkinName = 'Office2007Green'
          StyleDisabled.LookAndFeel.Kind = lfOffice11
          StyleDisabled.LookAndFeel.SkinName = 'Office2007Green'
          StyleFocused.LookAndFeel.Kind = lfOffice11
          StyleFocused.LookAndFeel.SkinName = 'Office2007Green'
          StyleHot.LookAndFeel.Kind = lfOffice11
          StyleHot.LookAndFeel.SkinName = 'Office2007Green'
          TabOrder = 0
          Height = 97
          Width = 795
          object Label2: TLabel
            Left = 17
            Top = 22
            Width = 752
            Height = 63
            AutoSize = False
            Caption = 
              '1'#12289#27492#24037#20855#23548#20986#25991#20214#26684#24335#20026'Access'#25968#25454#24211'".mdb"'#26684#24335#12290#13#10#13#10'2'#12289#27492#24037#20855#21482#23548#20986#23548#20837#25968#25454#34920#65292#19981#25805#20316#34920#32467#26500#65292#19968#33324#29992#20110#36801#31227#21021#22987#21270 +
              #24211#30340#22522#30784#25968#25454#21450#37197#32622#34920#20449#24687','#35831#19981#35201#20316#20026#25968#25454#24211#22791#20221#24037#20855#20351#29992#12290#13#10#13#10'3'#12289#25968#25454#34920'FID'#25110'ID'#23383#27573#23548#20986#21040'Access'#20250#33258#21160#35774#32622#20026#20027#38190#12290#13 +
              #10
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -12
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            Transparent = True
            WordWrap = True
          end
        end
        object cxPageControl1: TcxPageControl
          Left = 0
          Top = 97
          Width = 795
          Height = 414
          ActivePage = cxTabSheet2
          Align = alClient
          Style = 10
          TabOrder = 1
          OnChange = cxPageControl1Change
          ClientRectBottom = 414
          ClientRectRight = 795
          ClientRectTop = 18
          object cxTabSheet2: TcxTabSheet
            Caption = #25968#25454#34920#23548#20986
            ImageIndex = 0
            object Panel4: TPanel
              Left = 0
              Top = 29
              Width = 795
              Height = 367
              Align = alClient
              BevelOuter = bvNone
              Color = 16116704
              TabOrder = 1
              object Panel6: TPanel
                Left = 391
                Top = 0
                Width = 404
                Height = 367
                Align = alClient
                BevelOuter = bvNone
                Color = 16116704
                TabOrder = 1
                object Panel8: TPanel
                  Left = 0
                  Top = 0
                  Width = 40
                  Height = 367
                  Align = alLeft
                  Color = 16116704
                  TabOrder = 0
                  object SpeedButton1: TSpeedButton
                    Left = 0
                    Top = 80
                    Width = 40
                    Height = 24
                    Caption = '>'
                    Flat = True
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -12
                    Font.Name = #23435#20307
                    Font.Style = [fsBold]
                    ParentFont = False
                    OnClick = SpeedButton1Click
                  end
                  object SpeedButton2: TSpeedButton
                    Left = 0
                    Top = 177
                    Width = 40
                    Height = 24
                    Caption = '<'
                    Flat = True
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -12
                    Font.Name = #23435#20307
                    Font.Style = [fsBold]
                    ParentFont = False
                    OnClick = SpeedButton2Click
                  end
                  object SpeedButton3: TSpeedButton
                    Left = 0
                    Top = 209
                    Width = 40
                    Height = 24
                    Caption = '<<'
                    Flat = True
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -12
                    Font.Name = #23435#20307
                    Font.Style = [fsBold]
                    ParentFont = False
                    OnClick = SpeedButton3Click
                  end
                  object SpeedButton4: TSpeedButton
                    Left = 0
                    Top = 112
                    Width = 40
                    Height = 24
                    Caption = '>>'
                    Flat = True
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -12
                    Font.Name = #23435#20307
                    Font.Style = [fsBold]
                    ParentFont = False
                    OnClick = SpeedButton4Click
                  end
                end
                object cxGrid2: TcxGrid
                  Left = 40
                  Top = 0
                  Width = 364
                  Height = 367
                  Align = alClient
                  TabOrder = 1
                  LookAndFeel.Kind = lfOffice11
                  LookAndFeel.SkinName = 'Office2007Green'
                  object cxGridSelect: TcxGridDBTableView
                    NavigatorButtons.ConfirmDelete = False
                    OnCellDblClick = cxGridSelectCellDblClick
                    DataController.DataSource = dsSelect
                    DataController.Summary.DefaultGroupSummaryItems = <>
                    DataController.Summary.FooterSummaryItems = <
                      item
                        Kind = skCount
                        FieldName = 'Table_Name'
                        Column = cxGridSelectTable_Name
                      end>
                    DataController.Summary.SummaryGroups = <>
                    OptionsData.CancelOnExit = False
                    OptionsData.Deleting = False
                    OptionsData.DeletingConfirmation = False
                    OptionsData.Inserting = False
                    OptionsSelection.CellSelect = False
                    OptionsView.DataRowHeight = 22
                    OptionsView.Footer = True
                    OptionsView.GroupByBox = False
                    OptionsView.HeaderHeight = 22
                    OptionsView.Indicator = True
                    Styles.Inactive = cxStyle1
                    object cxGridSelectTable_Name: TcxGridDBColumn
                      DataBinding.FieldName = 'Table_Name'
                      Width = 350
                    end
                  end
                  object cxGridLevel1: TcxGridLevel
                    GridView = cxGridSelect
                  end
                end
              end
              object Panel7: TPanel
                Left = 0
                Top = 0
                Width = 391
                Height = 367
                Align = alLeft
                BevelOuter = bvNone
                Color = 16116704
                TabOrder = 0
                object cxGrid1: TcxGrid
                  Left = 0
                  Top = 0
                  Width = 391
                  Height = 367
                  Align = alClient
                  TabOrder = 0
                  LookAndFeel.Kind = lfOffice11
                  LookAndFeel.SkinName = 'Office2007Green'
                  object cxGridTable: TcxGridDBTableView
                    NavigatorButtons.ConfirmDelete = False
                    OnCellDblClick = cxGridTableCellDblClick
                    DataController.DataSource = dsTableList
                    DataController.Summary.DefaultGroupSummaryItems = <>
                    DataController.Summary.FooterSummaryItems = <
                      item
                        Kind = skCount
                        FieldName = 'Table_Name'
                        Column = cxGridTableTable_Name
                      end>
                    DataController.Summary.SummaryGroups = <>
                    OptionsData.CancelOnExit = False
                    OptionsData.Deleting = False
                    OptionsData.DeletingConfirmation = False
                    OptionsData.Editing = False
                    OptionsData.Inserting = False
                    OptionsSelection.CellSelect = False
                    OptionsView.DataRowHeight = 22
                    OptionsView.Footer = True
                    OptionsView.GroupByBox = False
                    OptionsView.HeaderHeight = 22
                    OptionsView.Indicator = True
                    Styles.Inactive = cxStyle1
                    object cxGridTableTable_Name: TcxGridDBColumn
                      Caption = #34920#21517#31216
                      DataBinding.FieldName = 'Table_Name'
                      Width = 350
                    end
                  end
                  object cxGrid1Level1: TcxGridLevel
                    GridView = cxGridTable
                  end
                end
              end
            end
            object Panel5: TPanel
              Left = 0
              Top = 0
              Width = 795
              Height = 29
              Align = alTop
              Color = 16116704
              TabOrder = 0
              DesignSize = (
                795
                29)
              object txt_TableName: TcxTextEdit
                Left = 82
                Top = 5
                Properties.OnChange = txt_TableNamePropertiesChange
                TabOrder = 2
                OnKeyDown = txt_TableNameKeyDown
                Width = 161
              end
              object cxLabel3: TcxLabel
                Left = 4
                Top = 6
                AutoSize = False
                Caption = #34920#21517#36807#28388'(&F)'
                FocusControl = txt_TableName
                Properties.Alignment.Horz = taRightJustify
                Height = 17
                Width = 78
                AnchorX = 82
              end
              object btn_SelectTable: TcxButton
                Left = 680
                Top = 2
                Width = 111
                Height = 25
                Anchors = [akRight, akBottom]
                Caption = #20174'INI'#25991#20214#36873#25321#34920#21517
                TabOrder = 1
                OnClick = btn_SelectTableClick
                LookAndFeel.Kind = lfOffice11
                LookAndFeel.SkinName = 'Office2007Green'
              end
              object btn_DefExport: TcxButton
                Left = 568
                Top = 2
                Width = 111
                Height = 25
                Anchors = [akRight, akBottom]
                Caption = #24120#29992#32452#21512#34920#23548#20986
                TabOrder = 0
                OnClick = btn_DefExportClick
                LookAndFeel.Kind = lfOffice11
                LookAndFeel.SkinName = 'Office2007Green'
              end
            end
          end
          object cxTabSheet4: TcxTabSheet
            Caption = #25968#25454#34920#23548#20837
            ImageIndex = 1
            object Panel9: TPanel
              Left = 0
              Top = 0
              Width = 795
              Height = 41
              Align = alTop
              Color = 16116704
              TabOrder = 0
              object cxLabel6: TcxLabel
                Left = 4
                Top = 10
                AutoSize = False
                Caption = #25991#20214#21517
                Properties.Alignment.Horz = taRightJustify
                Height = 17
                Width = 52
                AnchorX = 56
              end
              object btn_File: TcxButton
                Left = 709
                Top = 6
                Width = 58
                Height = 23
                Caption = #36873#25321'...'
                TabOrder = 0
                OnClick = btn_FileClick
                LookAndFeel.Kind = lfOffice11
                LookAndFeel.SkinName = 'Office2007Green'
              end
              object edt_File: TcxTextEdit
                Left = 64
                Top = 8
                Properties.OnChange = edt_FilePropertiesChange
                TabOrder = 1
                Width = 641
              end
            end
            object cxGrid3: TcxGrid
              Left = 0
              Top = 41
              Width = 795
              Height = 355
              Align = alClient
              TabOrder = 1
              LookAndFeel.Kind = lfOffice11
              LookAndFeel.SkinName = 'Office2007Green'
              object cximportList: TcxGridDBTableView
                NavigatorButtons.ConfirmDelete = False
                OnCellDblClick = cxGridSelectCellDblClick
                DataController.DataSource = dsImport
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <
                  item
                    Kind = skCount
                    FieldName = 'selected'
                    Column = cximportListselected
                  end>
                DataController.Summary.SummaryGroups = <>
                OptionsData.CancelOnExit = False
                OptionsData.Deleting = False
                OptionsData.DeletingConfirmation = False
                OptionsData.Inserting = False
                OptionsView.DataRowHeight = 22
                OptionsView.Footer = True
                OptionsView.GroupByBox = False
                OptionsView.HeaderHeight = 22
                OptionsView.Indicator = True
                Styles.Inactive = cxStyle1
                object cximportListselected: TcxGridDBColumn
                  DataBinding.FieldName = 'selected'
                  PropertiesClassName = 'TcxCheckBoxProperties'
                  Properties.NullStyle = nssUnchecked
                  Width = 60
                end
                object cximportListFTable_name: TcxGridDBColumn
                  DataBinding.FieldName = 'FTable_name'
                  Options.Editing = False
                  Width = 808
                end
              end
              object cxGridLevel2: TcxGridLevel
                GridView = cximportList
              end
            end
          end
        end
      end
      object cxTabSheet3: TcxTabSheet
        Caption = 'cxTabSheet3'
        ImageIndex = 2
        object cxGroupBox5: TcxGroupBox
          Left = 0
          Top = 0
          Align = alClient
          Caption = #23548#20986'/'#23548#20837#26085#24535#20449#24687
          Style.LookAndFeel.Kind = lfOffice11
          Style.LookAndFeel.SkinName = 'Office2007Green'
          StyleDisabled.LookAndFeel.Kind = lfOffice11
          StyleDisabled.LookAndFeel.SkinName = 'Office2007Green'
          StyleFocused.LookAndFeel.Kind = lfOffice11
          StyleFocused.LookAndFeel.SkinName = 'Office2007Green'
          StyleHot.LookAndFeel.Kind = lfOffice11
          StyleHot.LookAndFeel.SkinName = 'Office2007Green'
          TabOrder = 0
          Height = 511
          Width = 795
          object mm_log: TcxMemo
            Left = 2
            Top = 16
            Align = alClient
            Lines.Strings = (
              'hdfgdfg')
            ParentFont = False
            Properties.ReadOnly = True
            Properties.ScrollBars = ssVertical
            Style.Color = clWhite
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clBlack
            Style.Font.Height = -12
            Style.Font.Name = #23435#20307
            Style.Font.Style = []
            Style.LookAndFeel.Kind = lfOffice11
            Style.LookAndFeel.SkinName = 'Office2007Green'
            Style.TextColor = clBlack
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.Kind = lfOffice11
            StyleDisabled.LookAndFeel.SkinName = 'Office2007Green'
            StyleFocused.LookAndFeel.Kind = lfOffice11
            StyleFocused.LookAndFeel.SkinName = 'Office2007Green'
            StyleHot.LookAndFeel.Kind = lfOffice11
            StyleHot.LookAndFeel.SkinName = 'Office2007Green'
            TabOrder = 0
            Height = 488
            Width = 791
          end
        end
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 554
    Width = 797
    Height = 41
    Align = alBottom
    Color = 16116704
    TabOrder = 2
    DesignSize = (
      797
      41)
    object btn_UP: TcxButton
      Left = 612
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #19978#19968#27493
      TabOrder = 2
      Visible = False
      OnClick = btn_UPClick
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.SkinName = 'Office2007Green'
    end
    object btn_Export: TcxButton
      Left = 692
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #23548#20986
      TabOrder = 3
      OnClick = btn_ExportClick
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.SkinName = 'Office2007Green'
    end
    object btn_ALL: TcxButton
      Left = 12
      Top = 8
      Width = 54
      Height = 25
      Caption = #20840#36873
      TabOrder = 0
      Visible = False
      OnClick = btn_ALLClick
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.SkinName = 'Office2007Green'
    end
    object btn_uAll: TcxButton
      Left = 69
      Top = 8
      Width = 54
      Height = 25
      Caption = #21453#36873
      TabOrder = 1
      Visible = False
      OnClick = btn_uAllClick
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.SkinName = 'Office2007Green'
    end
  end
  object cdsSelect: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 489
    Top = 426
    object cdsSelectTable_Name: TStringField
      DisplayLabel = #34920#21517#31216
      FieldName = 'Table_Name'
      Size = 200
    end
  end
  object dsSelect: TDataSource
    DataSet = cdsSelect
    Left = 545
    Top = 426
  end
  object dsTableList: TDataSource
    DataSet = QryTableList
    Left = 169
    Top = 410
  end
  object sdFile: TSaveDialog
    Left = 305
    Top = 347
  end
  object AccessConn: TADOConnection
    CommandTimeout = 0
    ConnectionTimeout = 0
    LoginPrompt = False
    Left = 225
    Top = 274
  end
  object QryAcc: TADOQuery
    Connection = AccessConn
    LockType = ltBatchOptimistic
    CommandTimeout = 0
    Parameters = <>
    Left = 289
    Top = 274
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 72
    Top = 496
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor]
      Color = clSkyBlue
    end
  end
  object OpenDg: TOpenDialog
    Filter = #25991#20214'(*.ini)|*.ini'
    Left = 496
    Top = 314
  end
  object AccDg: TOpenDialog
    Filter = 'Access'#25991#20214'(*.mdb)|*.mdb'
    Left = 568
    Top = 314
  end
  object PubQry: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspExport'
    RemoteServer = CliDM.SckCon
    Left = 41
    Top = 242
  end
  object QryTableList: TClientDataSet
    Aggregates = <>
    Params = <>
    OnFilterRecord = QryTableListFilterRecord
    Left = 105
    Top = 410
    object QryTableListTable_Name: TWideStringField
      FieldName = 'Table_Name'
      Size = 250
    end
  end
  object cdsImport: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 657
    Top = 258
  end
  object pm_table: TPopupMenu
    AutoHotkeys = maManual
    Left = 584
    Top = 242
    object N1: TMenuItem
      Caption = #25253#34920#20013#24515#37197#32622#34920
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #25171#21360#27169#26495#37197#32622#34920
      OnClick = N2Click
    end
    object N3: TMenuItem
      Caption = #21333#25454#21015#34920#37197#32622#34920
      OnClick = N3Click
    end
    object N4: TMenuItem
      Caption = #21333#25454#19978#19979#26597#37197#32622#34920
      OnClick = N4Click
    end
    object N5: TMenuItem
      Caption = #20107#21153#37197#32622#34920
      OnClick = N5Click
    end
    object N6: TMenuItem
      Caption = #25171#21360#25968#25454#28304#37197#32622
      OnClick = N6Click
    end
    object N7: TMenuItem
      Caption = #20170#26085#25552#37266#37197#32622#34920
      OnClick = N7Click
    end
  end
  object cdsImportList: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 281
    Top = 429
    object cdsImportListselected: TBooleanField
      DisplayLabel = #36873#25321
      FieldName = 'selected'
    end
    object cdsImportListFTable_name: TStringField
      DisplayLabel = #34920#21517#31216
      FieldName = 'FTable_name'
      Size = 255
    end
  end
  object dsImport: TDataSource
    DataSet = cdsImportList
    Left = 361
    Top = 429
  end
end
