inherited PostReqQueryFrm: TPostReqQueryFrm
  Left = 252
  Top = 131
  Width = 901
  Height = 546
  Caption = #37197#36135#21333#26597#35810
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 12
  object Panel1: TPanel [0]
    Left = 0
    Top = 0
    Width = 885
    Height = 73
    Align = alTop
    Color = 16511980
    TabOrder = 0
    object btn_Query: TcxButton
      Left = 766
      Top = 39
      Width = 81
      Height = 25
      Caption = #26597#35810'(&F)'
      TabOrder = 0
      OnClick = btn_QueryClick
      LookAndFeel.Kind = lfOffice11
    end
    object cxLabel15: TcxLabel
      Left = 7
      Top = 16
      AutoSize = False
      Caption = #37197#36135#21333#21495
      Height = 16
      Width = 54
    end
    object txt_Fnumber: TcxTextEdit
      Left = 63
      Top = 13
      TabOrder = 2
      Width = 160
    end
    object cxLabel1: TcxLabel
      Left = 236
      Top = 16
      AutoSize = False
      Caption = #35746#36135#23458#25143
      Height = 16
      Width = 54
    end
    object cxLabel2: TcxLabel
      Left = 471
      Top = 16
      AutoSize = False
      Caption = #25910#36135#20179#24211
      Height = 16
      Width = 54
    end
    object cxLabel3: TcxLabel
      Left = 7
      Top = 45
      AutoSize = False
      Caption = #21046#21333#20154
      Height = 16
      Width = 54
    end
    object cxLabel4: TcxLabel
      Left = 236
      Top = 45
      AutoSize = False
      Caption = #23457#26680#20154
      Height = 16
      Width = 54
    end
    object cxLabel5: TcxLabel
      Left = 471
      Top = 45
      AutoSize = False
      Caption = #19994#21153#26085#26399
      Height = 16
      Width = 54
    end
    object cxLabel6: TcxLabel
      Left = 627
      Top = 43
      AutoSize = False
      Caption = #33267
      Height = 16
      Width = 17
    end
    object txt_Creater: TcxButtonEdit
      Left = 63
      Top = 42
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ReadOnly = True
      Properties.OnButtonClick = txt_CreaterPropertiesButtonClick
      TabOrder = 9
      OnKeyPress = txt_CreaterKeyPress
      Width = 160
    end
    object txt_Customer: TcxButtonEdit
      Left = 292
      Top = 13
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ReadOnly = True
      Properties.OnButtonClick = txt_CustomerPropertiesButtonClick
      TabOrder = 10
      OnKeyPress = txt_CustomerKeyPress
      Width = 160
    end
    object txt_InStock: TcxButtonEdit
      Left = 527
      Top = 13
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ReadOnly = True
      Properties.OnButtonClick = txt_InStockPropertiesButtonClick
      TabOrder = 11
      OnKeyPress = txt_InStockKeyPress
      Width = 217
    end
    object txt_Auditr: TcxButtonEdit
      Left = 292
      Top = 42
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ReadOnly = True
      Properties.OnButtonClick = txt_AuditrPropertiesButtonClick
      TabOrder = 12
      OnKeyPress = txt_AuditrKeyPress
      Width = 160
    end
    object BeginDate: TcxDateEdit
      Left = 528
      Top = 42
      Properties.SaveTime = False
      Properties.ShowTime = False
      TabOrder = 13
      Width = 97
    end
    object EndDate: TcxDateEdit
      Left = 648
      Top = 42
      Properties.SaveTime = False
      Properties.ShowTime = False
      TabOrder = 14
      Width = 97
    end
  end
  object Panel2: TPanel [1]
    Left = 0
    Top = 73
    Width = 885
    Height = 386
    Align = alClient
    Color = 16511980
    TabOrder = 1
    object cxGrid1: TcxGrid
      Left = 1
      Top = 1
      Width = 883
      Height = 384
      Align = alClient
      TabOrder = 0
      LookAndFeel.Kind = lfOffice11
      object cxGridEntry: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        OnCellDblClick = cxGridEntryCellDblClick
        DataController.DataSource = dsEntry
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.DataRowHeight = 22
        OptionsView.GroupByBox = False
        OptionsView.HeaderHeight = 22
        OptionsView.Indicator = True
        object cxGridEntryFID: TcxGridDBColumn
          DataBinding.FieldName = 'FID'
          Visible = False
          Width = 80
        end
        object cxGridEntryFNUMBER: TcxGridDBColumn
          DataBinding.FieldName = 'FNUMBER'
          Width = 104
        end
        object cxGridEntrycfinputway: TcxGridDBColumn
          DataBinding.FieldName = 'cfinputway'
          Width = 72
        end
        object cxGridEntryFBIZDATE: TcxGridDBColumn
          DataBinding.FieldName = 'FBIZDATE'
          Width = 93
        end
        object cxGridEntryCUSTNUMBER: TcxGridDBColumn
          DataBinding.FieldName = 'CUSTNUMBER'
          Width = 96
        end
        object cxGridEntryCUSTNAME: TcxGridDBColumn
          DataBinding.FieldName = 'CUSTNAME'
          Width = 92
        end
        object cxGridEntryWARHNUMBER: TcxGridDBColumn
          DataBinding.FieldName = 'WARHNUMBER'
          Width = 90
        end
        object cxGridEntryWARHNAME: TcxGridDBColumn
          DataBinding.FieldName = 'WARHNAME'
          Width = 85
        end
        object cxGridEntryCTNAME: TcxGridDBColumn
          DataBinding.FieldName = 'CTNAME'
          Width = 80
        end
        object cxGridEntryatuserName: TcxGridDBColumn
          DataBinding.FieldName = 'atuserName'
          Width = 80
        end
        object cxGridEntryfdescription: TcxGridDBColumn
          DataBinding.FieldName = 'fdescription'
          Width = 253
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGridEntry
      end
    end
  end
  object Panel3: TPanel [2]
    Left = 0
    Top = 459
    Width = 885
    Height = 49
    Align = alBottom
    Color = 16511980
    TabOrder = 2
    DesignSize = (
      885
      49)
    object btn_Exit: TcxButton
      Left = 778
      Top = 12
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #36864#20986'(&E)'
      TabOrder = 0
      OnClick = btn_ExitClick
      LookAndFeel.Kind = lfOffice11
    end
    object btn_OK: TcxButton
      Left = 684
      Top = 12
      Width = 81
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #30830#23450'(&Y)'
      TabOrder = 1
      OnClick = btn_OKClick
      LookAndFeel.Kind = lfOffice11
    end
  end
  inherited STBaseEditDataSet: TClientDataSet
    Left = 80
    Top = 344
  end
  object cdsEntry: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 152
    Top = 217
    object cdsEntryFID: TWideStringField
      FieldName = 'FID'
      Size = 44
    end
    object cdsEntryFNUMBER: TWideStringField
      DisplayLabel = #37197#36135#21333#21495
      FieldName = 'FNUMBER'
      Size = 80
    end
    object cdsEntryFBIZDATE: TWideStringField
      DisplayLabel = #19994#21153#26085#26399
      FieldName = 'FBIZDATE'
      ReadOnly = True
      Size = 10
    end
    object cdsEntryCUSTNUMBER: TWideStringField
      DisplayLabel = #23458#25143#32534#21495
      FieldName = 'CUSTNUMBER'
      Size = 80
    end
    object cdsEntryCUSTNAME: TWideStringField
      DisplayLabel = #23458#25143#21517#31216
      FieldName = 'CUSTNAME'
      Size = 510
    end
    object cdsEntryWARHNUMBER: TWideStringField
      DisplayLabel = #25910#36135#20179#32534#21495
      FieldName = 'WARHNUMBER'
      Size = 80
    end
    object cdsEntryWARHNAME: TWideStringField
      DisplayLabel = #25910#36135#20179#21517#31216
      FieldName = 'WARHNAME'
      Size = 510
    end
    object cdsEntryCTNAME: TWideStringField
      DisplayLabel = #21046#21333#20154
      FieldName = 'CTNAME'
      Size = 160
    end
    object cdsEntryFNAME_L2: TWideStringField
      DisplayLabel = #23457#26680#20154
      FieldName = 'atuserName'
      Size = 160
    end
    object cdsEntryfdescription: TWideStringField
      DisplayLabel = #22791#27880
      FieldKind = fkCalculated
      FieldName = 'fdescription'
      Size = 255
      Calculated = True
    end
    object cdsEntrycfinputway: TWideStringField
      DisplayLabel = #24405#20837#26041#24335
      FieldName = 'cfinputway'
    end
  end
  object dsEntry: TDataSource
    DataSet = cdsEntry
    Left = 216
    Top = 225
  end
end
