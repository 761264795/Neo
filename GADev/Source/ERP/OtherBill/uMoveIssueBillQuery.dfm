inherited MoveIssueBillQuery: TMoveIssueBillQuery
  Width = 917
  Height = 552
  Caption = #35843#25320#20986#24211#21333#26597#35810
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 12
  object Panel1: TPanel [0]
    Left = 0
    Top = 0
    Width = 901
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
      Left = 3
      Top = 16
      AutoSize = False
      Caption = #35843#25320#20986#24211#21333#21495
      Height = 16
      Width = 82
    end
    object txt_Fnumber: TcxTextEdit
      Left = 82
      Top = 13
      TabOrder = 2
      Width = 148
    end
    object cxLabel1: TcxLabel
      Left = 236
      Top = 16
      AutoSize = False
      Caption = #35843#20986#20179#24211
      Height = 16
      Width = 54
    end
    object cxLabel2: TcxLabel
      Left = 471
      Top = 16
      AutoSize = False
      Caption = #35843#20837#20179#24211
      Height = 16
      Width = 54
    end
    object cxLabel3: TcxLabel
      Left = 3
      Top = 45
      AutoSize = False
      Caption = #21046#21333#20154
      Height = 16
      Width = 82
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
      Left = 82
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
      Width = 148
    end
    object txt_OutStock: TcxButtonEdit
      Left = 292
      Top = 13
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ReadOnly = True
      Properties.OnButtonClick = txt_OutStockPropertiesButtonClick
      TabOrder = 10
      OnKeyPress = txt_OutStockKeyPress
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
    Width = 901
    Height = 392
    Align = alClient
    Color = 16511980
    TabOrder = 1
    object cxGrid1: TcxGrid
      Left = 1
      Top = 1
      Width = 899
      Height = 390
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
          DataBinding.FieldName = 'OutNumber'
          Width = 96
        end
        object cxGridEntryCUSTNAME: TcxGridDBColumn
          DataBinding.FieldName = 'OutName'
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
    Top = 465
    Width = 901
    Height = 49
    Align = alBottom
    Color = 16511980
    TabOrder = 2
    DesignSize = (
      901
      49)
    object btn_Exit: TcxButton
      Left = 794
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
      Left = 700
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
    Left = 64
    Top = 320
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
      DisplayLabel = #35843#25320#20986#24211#21333#21495
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
      DisplayLabel = #20986#24211#20179#32534#21495
      FieldName = 'OutNumber'
      Size = 80
    end
    object cdsEntryCUSTNAME: TWideStringField
      DisplayLabel = #20986#24211#20179#21517#31216
      FieldName = 'OutName'
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
