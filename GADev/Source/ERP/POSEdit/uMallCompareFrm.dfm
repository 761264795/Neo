inherited MallCompareFrm: TMallCompareFrm
  Left = 273
  Top = 97
  Width = 843
  Height = 563
  Caption = #29983#25104#21830#22330#23545#36134#21333
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 12
  object Panel1: TPanel [0]
    Left = 0
    Top = 0
    Width = 827
    Height = 41
    Align = alTop
    Color = 16511980
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 10
      Width = 361
      Height = 25
      AutoSize = False
      Caption = #29983#25104#21830#22330#23545#36134#21333
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
  end
  object Panel2: TPanel [1]
    Left = 0
    Top = 41
    Width = 827
    Height = 484
    Align = alClient
    BevelOuter = bvNone
    Color = 16511980
    TabOrder = 1
    object TPanel
      Left = 0
      Top = 0
      Width = 827
      Height = 36
      Align = alTop
      Color = 16511980
      TabOrder = 0
      DesignSize = (
        827
        36)
      object btn_Query: TcxButton
        Left = 646
        Top = 4
        Width = 75
        Height = 25
        Anchors = [akTop, akRight]
        Caption = #26597#35810'(&F)'
        TabOrder = 0
        OnClick = btn_QueryClick
        LookAndFeel.Kind = lfOffice11
      end
      object cxLabel1: TcxLabel
        Left = 6
        Top = 10
        AutoSize = False
        Caption = #23545#36134#24180#20221
        Height = 17
        Width = 63
      end
      object cxLabel2: TcxLabel
        Left = 169
        Top = 10
        AutoSize = False
        Caption = #23545#36134#26376#20221
        Height = 16
        Width = 63
      end
      object cxLabel3: TcxLabel
        Left = 330
        Top = 10
        AutoSize = False
        Caption = #24215#38138#25152#23646#21306#22495
        Height = 16
        Width = 86
      end
      object cb_Years: TcxComboBox
        Left = 64
        Top = 8
        Properties.DropDownListStyle = lsFixedList
        Properties.Items.Strings = (
          '2010'
          '2011'
          '2012'
          '2013'
          '2014'
          '2015'
          '2016'
          '2017'
          '2018'
          '2019'
          '2020'
          '2021'
          '2022'
          '2023'
          '2024'
          '2025'
          '2026'
          '2027'
          '2028'
          '2029'
          '2030')
        TabOrder = 4
        Width = 91
      end
      object cb_Months: TcxComboBox
        Left = 225
        Top = 8
        Properties.DropDownListStyle = lsFixedList
        Properties.Items.Strings = (
          '01'
          '02'
          '03'
          '04'
          '05'
          '06'
          '07'
          '08'
          '09'
          '10'
          '11'
          '12')
        TabOrder = 5
        Width = 91
      end
      object txt_Area: TcxButtonEdit
        Left = 410
        Top = 8
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.ClickKey = 118
        Properties.OnButtonClick = txt_AreaPropertiesButtonClick
        TabOrder = 6
        OnKeyPress = txt_AreaKeyPress
        Width = 153
      end
      object btn_Reset: TcxButton
        Left = 734
        Top = 4
        Width = 75
        Height = 25
        Anchors = [akTop, akRight]
        Caption = #37325#32622'(&R)'
        Enabled = False
        TabOrder = 7
        OnClick = btn_ResetClick
        LookAndFeel.Kind = lfOffice11
      end
    end
    object pl_Create: TPanel
      Left = 0
      Top = 431
      Width = 827
      Height = 53
      Align = alBottom
      Color = 16511980
      TabOrder = 1
      DesignSize = (
        827
        53)
      object cxGroupBox1: TcxGroupBox
        Left = 1
        Top = 1
        Align = alLeft
        Caption = #22914#26377#24050#29983#25104#20294#26410#23457#26680#30340#23545#36134#21333#26102
        TabOrder = 0
        Height = 51
        Width = 240
        object rbt_Cover: TcxRadioButton
          Left = 16
          Top = 24
          Width = 113
          Height = 17
          Caption = #35206#30422#29983#25104
          TabOrder = 0
        end
        object rbt_Skip: TcxRadioButton
          Left = 144
          Top = 24
          Width = 75
          Height = 17
          Caption = #36339#36807
          Checked = True
          TabOrder = 1
          TabStop = True
        end
      end
      object chk_AutoAudit: TcxCheckBox
        Left = 248
        Top = 22
        Caption = #33258#21160#23457#26680#23545#36134#21333
        State = cbsChecked
        TabOrder = 1
        Width = 121
      end
      object btn_CreateBill: TcxButton
        Left = 593
        Top = 18
        Width = 121
        Height = 25
        Anchors = [akTop, akRight]
        Caption = #29983#25104#23545#36134#21333'(&C)'
        TabOrder = 2
        OnClick = btn_CreateBillClick
        LookAndFeel.Kind = lfOffice11
      end
      object btn_Exit: TcxButton
        Left = 729
        Top = 18
        Width = 75
        Height = 25
        Anchors = [akTop, akRight]
        Caption = #36864#20986'(&E)'
        TabOrder = 3
        OnClick = btn_ExitClick
        LookAndFeel.Kind = lfOffice11
      end
    end
    object EntryPage: TcxPageControl
      Left = 0
      Top = 36
      Width = 827
      Height = 395
      ActivePage = cxTabSheet1
      Align = alClient
      Style = 10
      TabOrder = 2
      ClientRectBottom = 395
      ClientRectRight = 827
      ClientRectTop = 18
      object cxTabSheet1: TcxTabSheet
        Caption = #21487#23545#36134#24215#38138
        ImageIndex = 0
        object cxGrid1: TcxGrid
          Left = 0
          Top = 0
          Width = 827
          Height = 352
          Align = alClient
          TabOrder = 0
          LookAndFeel.Kind = lfOffice11
          object cxGridEntry: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = dsMater
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Inserting = False
            OptionsView.DataRowHeight = 22
            OptionsView.GroupByBox = False
            OptionsView.HeaderHeight = 22
            OptionsView.Indicator = True
            object cxGridEntrySelected: TcxGridDBColumn
              DataBinding.FieldName = 'Selected'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.NullStyle = nssUnchecked
              Width = 48
            end
            object cxGridEntryWarehouseFID: TcxGridDBColumn
              DataBinding.FieldName = 'WarehouseFID'
              Visible = False
              Options.Editing = False
              Width = 80
            end
            object cxGridEntryWarehouseName: TcxGridDBColumn
              DataBinding.FieldName = 'WarehouseName'
              Options.Editing = False
              Width = 150
            end
            object cxGridEntryCustFID: TcxGridDBColumn
              DataBinding.FieldName = 'CustFID'
              Visible = False
              Options.Editing = False
              Width = 80
            end
            object cxGridEntryCustName: TcxGridDBColumn
              DataBinding.FieldName = 'CustName'
              Options.Editing = False
              Width = 164
            end
            object cxGridEntrySaleQty: TcxGridDBColumn
              DataBinding.FieldName = 'SaleQty'
              Options.Editing = False
              Width = 113
            end
            object cxGridEntrySaleAmount: TcxGridDBColumn
              DataBinding.FieldName = 'SaleAmount'
              Options.Editing = False
              Width = 98
            end
            object cxGridEntryBeginDate: TcxGridDBColumn
              DataBinding.FieldName = 'BeginDate'
              Options.Editing = False
              Width = 93
            end
            object cxGridEntryEndDate: TcxGridDBColumn
              DataBinding.FieldName = 'EndDate'
              Options.Editing = False
              Width = 105
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = cxGridEntry
          end
        end
        object Panel3: TPanel
          Left = 0
          Top = 352
          Width = 827
          Height = 25
          Align = alBottom
          Color = 16511980
          TabOrder = 1
          object cxButton4: TcxButton
            Left = 49
            Top = 1
            Width = 44
            Height = 23
            Caption = #21453#36873
            TabOrder = 0
            OnClick = cxButton4Click
            LookAndFeel.Kind = lfOffice11
          end
          object cxButton3: TcxButton
            Left = 3
            Top = 1
            Width = 44
            Height = 23
            Caption = #20840#36873
            TabOrder = 1
            OnClick = cxButton3Click
            LookAndFeel.Kind = lfOffice11
          end
          object cxLabel4: TcxLabel
            Left = 109
            Top = 4
            AutoSize = False
            Caption = #23545#36134#21333#25688#35201
            Height = 16
            Width = 77
          end
          object txt_dec: TcxTextEdit
            Left = 178
            Top = 2
            TabOrder = 3
            Width = 639
          end
        end
      end
      object cxTabSheet2: TcxTabSheet
        Caption = #26085#24535
        ImageIndex = 1
        object m_log: TcxMemo
          Left = 0
          Top = 0
          Align = alClient
          ParentFont = False
          Properties.ReadOnly = True
          Properties.ScrollBars = ssBoth
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = #23435#20307
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 0
          Height = 377
          Width = 827
        end
      end
    end
  end
  inherited STBaseEditDataSet: TClientDataSet
    Left = 704
    Top = 360
  end
  object cdsMater: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 152
    Top = 191
    object cdsMaterSelected: TBooleanField
      DisplayLabel = #36873#25321
      FieldName = 'Selected'
    end
    object cdsMaterWarehouseFID: TStringField
      FieldName = 'WarehouseFID'
      Size = 80
    end
    object cdsMaterWarehouseName: TStringField
      DisplayLabel = #24215#38138
      FieldName = 'WarehouseName'
      Size = 80
    end
    object cdsMaterCustFID: TStringField
      FieldName = 'CustFID'
      Size = 80
    end
    object cdsMaterCustName: TStringField
      DisplayLabel = #23545#36134#21830#22330
      FieldName = 'CustName'
      Size = 80
    end
    object cdsMaterSaleQty: TIntegerField
      DisplayLabel = #38144#21806#25968#25454
      FieldName = 'SaleQty'
    end
    object cdsMaterSaleAmount: TFloatField
      DisplayLabel = #38144#21806#37329#39069
      FieldName = 'SaleAmount'
    end
    object cdsMaterBeginDate: TStringField
      DisplayLabel = #23545#36134#24320#22987#26085
      FieldName = 'BeginDate'
      Size = 80
    end
    object cdsMaterEndDate: TStringField
      DisplayLabel = #23545#36134#32467#26463#26085
      FieldName = 'EndDate'
      Size = 40
    end
  end
  object dsMater: TDataSource
    DataSet = cdsMater
    Left = 248
    Top = 191
  end
  object cdsPub: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 344
    Top = 199
  end
  object cdsMcEntry: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 504
    Top = 359
  end
  object cdsMcMater: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 416
    Top = 359
  end
end
