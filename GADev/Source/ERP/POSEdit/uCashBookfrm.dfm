inherited frmCashBook: TfrmCashBook
  Left = 292
  Top = 226
  Width = 651
  Height = 428
  BorderIcons = [biSystemMenu]
  Caption = #38065#31665#29616#37329#21488#36134
  Font.Height = -13
  Font.Name = #23435#20307
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel [0]
    Left = 0
    Top = 0
    Width = 635
    Height = 390
    Align = alClient
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 200
      Height = 353
      Align = alLeft
      TabOrder = 0
      object Bevel1: TBevel
        Left = 6
        Top = 289
        Width = 187
        Height = 2
      end
      object cxGroupBox1: TcxGroupBox
        Left = 3
        Top = 0
        Caption = #29616#37329
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clMenuText
        Style.Font.Height = -16
        Style.Font.Name = #23435#20307
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 0
        Height = 217
        Width = 193
        object cxLabel1: TcxLabel
          Left = 8
          Top = 24
          Caption = #19978#29677#32467#20313#65306
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clDefault
          Style.Font.Height = -13
          Style.Font.Name = #23435#20307
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
        end
        object cxLabel2: TcxLabel
          Left = 32
          Top = 56
          Caption = #22791#29992#65306
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = #23435#20307
          Style.Font.Style = []
          Style.IsFontAssigned = True
        end
        object cxLabel3: TcxLabel
          Left = 32
          Top = 88
          Caption = #25910#27454#65306
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = #23435#20307
          Style.Font.Style = []
          Style.IsFontAssigned = True
        end
        object cxLabel4: TcxLabel
          Left = 32
          Top = 120
          Caption = #21462#27454#65306
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = #23435#20307
          Style.Font.Style = []
          Style.IsFontAssigned = True
        end
        object cxLabel5: TcxLabel
          Left = 32
          Top = 152
          Caption = #36864#27454#65306
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = #23435#20307
          Style.Font.Style = []
          Style.IsFontAssigned = True
        end
        object cxLabel6: TcxLabel
          Left = 8
          Top = 184
          Caption = #29616#37329#32467#20313#65306
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clDefault
          Style.Font.Height = -13
          Style.Font.Name = #23435#20307
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 72
          Top = 21
          DataBinding.DataField = 'lastbalance'
          DataBinding.DataSource = ds1
          ParentFont = False
          Properties.ReadOnly = True
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clRed
          Style.Font.Height = -16
          Style.Font.Name = #23435#20307
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 6
          Width = 112
        end
        object cxDBTextEdit2: TcxDBTextEdit
          Left = 72
          Top = 53
          DataBinding.DataField = 'byj'
          DataBinding.DataSource = ds1
          ParentFont = False
          Properties.ReadOnly = True
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clMenuText
          Style.Font.Height = -13
          Style.Font.Name = #23435#20307
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 7
          Width = 112
        end
        object cxDBTextEdit3: TcxDBTextEdit
          Left = 73
          Top = 85
          DataBinding.DataField = 'sk'
          DataBinding.DataSource = ds1
          ParentFont = False
          Properties.ReadOnly = True
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clMenuText
          Style.Font.Height = -13
          Style.Font.Name = #23435#20307
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 8
          Width = 112
        end
        object cxDBTextEdit4: TcxDBTextEdit
          Left = 73
          Top = 117
          DataBinding.DataField = 'qk'
          DataBinding.DataSource = ds1
          ParentFont = False
          Properties.ReadOnly = True
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clMenuText
          Style.Font.Height = -13
          Style.Font.Name = #23435#20307
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 9
          Width = 112
        end
        object cxDBTextEdit5: TcxDBTextEdit
          Left = 73
          Top = 149
          DataBinding.DataField = 'tk'
          DataBinding.DataSource = ds1
          ParentFont = False
          Properties.ReadOnly = True
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clMenuText
          Style.Font.Height = -13
          Style.Font.Name = #23435#20307
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 10
          Width = 112
        end
        object cxDBTextEdit6: TcxDBTextEdit
          Left = 73
          Top = 181
          DataBinding.DataField = 'cashBal'
          DataBinding.DataSource = ds1
          ParentFont = False
          Properties.ReadOnly = True
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clRed
          Style.Font.Height = -16
          Style.Font.Name = #23435#20307
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 11
          Width = 112
        end
      end
      object cxLabel7: TcxLabel
        Left = 12
        Top = 230
        Caption = #20854#20182#27454#39033#65306
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = #23435#20307
        Style.Font.Style = []
        Style.IsFontAssigned = True
      end
      object cxDBTextEdit8: TcxDBTextEdit
        Left = 76
        Top = 227
        DataBinding.DataField = 'qt'
        DataBinding.DataSource = ds1
        Properties.ReadOnly = True
        TabOrder = 2
        Width = 112
      end
      object cxDBTextEdit9: TcxDBTextEdit
        Left = 77
        Top = 296
        DataBinding.DataField = 'totalamt'
        DataBinding.DataSource = ds1
        ParentFont = False
        Properties.ReadOnly = True
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clRed
        Style.Font.Height = -16
        Style.Font.Name = #23435#20307
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 3
        Width = 112
      end
      object cxLabel9: TcxLabel
        Left = 33
        Top = 299
        Caption = #21512#35745#65306
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clDefault
        Style.Font.Height = -13
        Style.Font.Name = #23435#20307
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 354
      Width = 633
      Height = 35
      Align = alBottom
      TabOrder = 1
      object cxbtnReturn: TcxButton
        Left = 552
        Top = 5
        Width = 65
        Height = 25
        Caption = #20851#38381'(&C)'
        TabOrder = 0
        OnClick = cxbtnReturnClick
        LookAndFeel.Kind = lfOffice11
      end
      object cxButton1: TcxButton
        Left = 464
        Top = 5
        Width = 83
        Height = 25
        Caption = #23548#20986#26126#32454'(&E)'
        TabOrder = 1
        OnClick = cxButton1Click
        LookAndFeel.Kind = lfOffice11
      end
    end
    object Panel4: TPanel
      Left = 201
      Top = 1
      Width = 433
      Height = 353
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 2
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 433
        Height = 353
        Align = alClient
        TabOrder = 0
        object cxgridlist: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dslist
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsCustomize.ColumnFiltering = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.CellSelect = False
          OptionsView.GroupByBox = False
          object cxgridlistColumn1: TcxGridDBColumn
            Caption = #26102#38388
            DataBinding.FieldName = 'FCASHDATE'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            Width = 150
          end
          object cxgridlistColumn2: TcxGridDBColumn
            Caption = #37329#39069#24615#36136
            DataBinding.FieldName = 'FNote'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Width = 97
          end
          object cxgridlistColumn3: TcxGridDBColumn
            Caption = #23384#21462
            DataBinding.FieldName = 'FPlus'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            FooterAlignmentHorz = taCenter
            HeaderAlignmentHorz = taCenter
            Width = 50
          end
          object cxgridlistColumn4: TcxGridDBColumn
            Caption = #37329#39069
            DataBinding.FieldName = 'FMoney'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = '0.00'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.Grouping = False
            Width = 132
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxgridlist
        end
      end
    end
  end
  object ds1: TDataSource
    DataSet = cdstotal
    Left = 12
    Top = 137
  end
  object dslist: TDataSource
    DataSet = qryPOSList
    Left = 449
    Top = 105
  end
  object qryPOSList: TADOQuery
    Connection = CliDM.conClient
    Parameters = <>
    SQL.Strings = (
      
        'select FCASHDATE,FMoney,FNote,FPlus from T_POSCASH_List where FC' +
        'ashType<>5 and FEmployeeID='#39#39' and FwarehouseID='#39#39
      'and fINTERVALID='#39#39' and Isnull(FMachineNo,'#39#39')='#39#39)
    Left = 457
    Top = 145
    object qryPOSListFCASHDATE: TDateTimeField
      FieldName = 'FCASHDATE'
    end
    object qryPOSListFMoney: TBCDField
      FieldName = 'FMoney'
      Precision = 20
      Size = 8
    end
    object qryPOSListFNote: TWideStringField
      FieldName = 'FNote'
      Size = 255
    end
    object qryPOSListFPlus: TStringField
      FieldName = 'FPlus'
      Size = 2
    end
  end
  object cdstotal: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 225
    Top = 113
    object cdstotalfbalance: TFloatField
      FieldName = 'lastbalance'
      DisplayFormat = '###,###,##0.00'
    end
    object cdstotalbyj: TFloatField
      FieldName = 'byj'
      DisplayFormat = '###,###,##0.00'
    end
    object cdstotalqk: TFloatField
      FieldName = 'qk'
      DisplayFormat = '###,###,##0.00'
    end
    object cdstotalsk: TFloatField
      FieldName = 'sk'
      DisplayFormat = '###,###,##0.00'
    end
    object cdstotaltk: TFloatField
      FieldName = 'tk'
      DisplayFormat = '###,###,##0.00'
    end
    object cdstotalqt: TFloatField
      FieldName = 'qt'
      DisplayFormat = '###,###,##0.00'
    end
    object cdstotalcashBal: TFloatField
      FieldName = 'cashBal'
      DisplayFormat = '###,###,##0.00'
    end
    object cdstotaltotalamt: TCurrencyField
      FieldName = 'totalamt'
      DisplayFormat = '###,###,##0.00'
    end
  end
end
