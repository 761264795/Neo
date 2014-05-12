inherited SmsSendQueryFrm: TSmsSendQueryFrm
  Caption = #30701#20449#21457#36865#26597#35810
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 12
  object p_top: TPanel
    Left = 0
    Top = 0
    Width = 912
    Height = 28
    Align = alTop
    Color = 16511980
    TabOrder = 0
    object cxLabel2: TcxLabel
      Left = 9
      Top = 6
      AutoSize = False
      Caption = #21457#36865#26102#38388
      Transparent = True
      Height = 16
      Width = 54
    end
    object dBegin: TcxDateEdit
      Left = 65
      Top = 4
      EditValue = 40452d
      TabOrder = 1
      Width = 86
    end
    object cxLabel3: TcxLabel
      Left = 151
      Top = 6
      Caption = #33267
      Transparent = True
    end
    object Dend: TcxDateEdit
      Left = 167
      Top = 4
      EditValue = 42278d
      TabOrder = 3
      Width = 84
    end
    object btn1: TcxButton
      Left = 689
      Top = 1
      Width = 78
      Height = 25
      Caption = #26597#25214'(&F)'
      TabOrder = 4
      OnClick = btn1Click
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00B5848400B5848400B5848400B5848400B5848400B5848400B5848400B584
        8400B5848400B5848400B5848400B5848400B5848400FF00FF00FF00FF00FF00
        FF00636B7B00FFEFD600F7E7C600F7DEBD00F7DEB500F7D6AD00F7D6A500F7CE
        9C00F7CE9400F7CE9C00F7CE9C00F7D69C00B5848400FF00FF00FF00FF005A9C
        C600318CD6007B849C00F7E7CE00F7DEC600F7DEBD00F7D6B500F7D6AD00F7D6
        A500EFCE9C00EFCE9400EFCE9400F7D69C00B5848400FF00FF00FF00FF00FF00
        FF004AB5FF00298CE70084849C00F7E7CE00F7DEC600F7DEBD00F7D6B500F7D6
        AD00F7D6A500EFCE9C00EFCE9400F7D69C00B5848400FF00FF00FF00FF00FF00
        FF00B58473004AB5FF00218CDE007B849C00F7E7CE00F7DEC600F7DEBD00F7D6
        B500F7D6AD00F7D6A500EFCE9C00F7D69C00B5848400FF00FF00FF00FF00FF00
        FF00BD8C8400FFFFF7004ABDFF005A94BD00A5847B00BD948C00AD7B7B00BD94
        8C00D6B59C00F7D6AD00F7D6A500F7D69C00B5848400FF00FF00FF00FF00FF00
        FF00BD8C8400FFFFFF00FFF7EF00BDA59C00C6A59C00E7CEBD00F7DEC600E7C6
        AD00C69C9400D6B59C00F7D6AD00F7D6A500B5848400FF00FF00FF00FF00FF00
        FF00CE9C8400FFFFFF00FFFFF700C69C9400E7CEC600FFEFDE00FFE7D600FFFF
        F700E7C6AD00BD948C00F7DEB500F7DEAD00B5848400FF00FF00FF00FF00FF00
        FF00CE9C8400FFFFFF00FFFFFF00AD7B7B00FFEFE700FFEFE700FFEFDE00FFFF
        F700F7DEC600AD7B7B00F7DEBD00FFDEB500B5848400FF00FF00FF00FF00FF00
        FF00DEAD8400FFFFFF00FFFFFF00C69C9C00E7D6D600FFF7EF00FFEFE700FFFF
        DE00E7CEBD00BD948C00F7E7C600F7DEB500B5848400FF00FF00FF00FF00FF00
        FF00DEAD8400FFFFFF00FFFFFF00DECECE00CEADAD00E7D6D600FFEFE700E7CE
        C600C6A59C00C6A59400E7DEC600C6BDAD00B5848400FF00FF00FF00FF00FF00
        FF00E7B58C00FFFFFF00FFFFFF00FFFFFF00DECECE00C69C9C00AD7B7B00C69C
        9400D6BDB500BD847B00BD847B00BD847B00B5848400FF00FF00FF00FF00FF00
        FF00E7B58C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00E7CECE00BD847B00EFB57300EFA54A00C6846B00FF00FF00FF00FF00FF00
        FF00EFBD9400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00E7D6D600BD847B00FFC67300CE947300FF00FF00FF00FF00FF00FF00FF00
        FF00EFBD9400FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7
        F700E7D6CE00BD847B00CE9C8400FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00EFBD9400DEAD8400DEAD8400DEAD8400DEAD8400DEAD8400DEAD8400DEAD
        8400DEAD8400BD847B00FF00FF00FF00FF00FF00FF00FF00FF00}
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.SkinName = 'Office2007Black'
    end
    object cxLabel1: TcxLabel
      Left = 259
      Top = 6
      AutoSize = False
      Caption = #21457#36865#29992#25143
      Transparent = True
      Height = 16
      Width = 54
    end
    object bte_SendUser: TcxButtonEdit
      Left = 316
      Top = 4
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ClearKey = 46
      Properties.ClickKey = 118
      Properties.ReadOnly = False
      Properties.OnButtonClick = bte_SendUserPropertiesButtonClick
      Properties.OnChange = bte_SendUserPropertiesChange
      TabOrder = 6
      Width = 121
    end
    object cxLabel4: TcxLabel
      Left = 443
      Top = 5
      AutoSize = False
      Caption = #25509#25910#21495#30721
      Transparent = True
      Height = 16
      Width = 54
    end
    object txt_Tel: TcxTextEdit
      Left = 498
      Top = 3
      TabOrder = 8
      Width = 183
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 28
    Width = 912
    Height = 414
    Align = alClient
    TabOrder = 1
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.SkinName = 'Office2007Green'
    object bgGrid: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsSmsList
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.GroupRowStyle = grsOffice11
      OptionsView.HeaderHeight = 22
      object bgGridFNUMBER: TcxGridDBColumn
        DataBinding.FieldName = 'FNUMBER'
        Width = 118
      end
      object bgGridFNAME_L2: TcxGridDBColumn
        DataBinding.FieldName = 'FNAME_L2'
        Width = 87
      end
      object bgGridFPHONENUMBER: TcxGridDBColumn
        DataBinding.FieldName = 'FPHONENUMBER'
        Width = 135
      end
      object bgGridFSMSCONTENT: TcxGridDBColumn
        DataBinding.FieldName = 'FSMSCONTENT'
        PropertiesClassName = 'TcxMemoProperties'
        Properties.ReadOnly = True
        Width = 364
      end
      object bgGridSENDDATETIME: TcxGridDBColumn
        DataBinding.FieldName = 'SENDDATETIME'
        Width = 206
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = bgGrid
    end
  end
  object cdsSmsList: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 264
    Top = 184
    object cdsSmsListFNUMBER: TWideStringField
      DisplayLabel = #21457#36865#29992#25143#32534#21495
      FieldName = 'FNUMBER'
      Size = 160
    end
    object cdsSmsListFNAME_L2: TWideStringField
      DisplayLabel = #21457#36865#29992#25143
      FieldName = 'FNAME_L2'
      Size = 160
    end
    object cdsSmsListFPHONENUMBER: TWideStringField
      DisplayLabel = #25509#25910#21495#30721
      FieldName = 'FPHONENUMBER'
      Size = 2000
    end
    object cdsSmsListFSMSCONTENT: TWideStringField
      DisplayLabel = #30701#20449#20869#23481
      FieldName = 'FSMSCONTENT'
      Size = 500
    end
    object cdsSmsListSENDDATETIME: TWideStringField
      DisplayLabel = #21457#36865#26102#38388
      FieldName = 'SENDDATETIME'
      ReadOnly = True
      Size = 4000
    end
  end
  object dsSmsList: TDataSource
    DataSet = cdsSmsList
    Left = 376
    Top = 184
  end
end
