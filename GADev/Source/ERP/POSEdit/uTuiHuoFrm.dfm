inherited FrmTuiHuo: TFrmTuiHuo
  Left = 182
  Top = 131
  Width = 945
  Height = 518
  Caption = #36864#25442#36135
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 12
  object plTop: TPanel [0]
    Left = 0
    Top = 0
    Width = 937
    Height = 30
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      937
      30)
    object Image1: TImage
      Left = 0
      Top = 0
      Width = 937
      Height = 30
      Align = alClient
    end
    object Label1: TLabel
      Left = 6
      Top = 11
      Width = 48
      Height = 12
      Caption = #28304#21333#32534#21495
      Transparent = True
    end
    object Label3: TLabel
      Left = 404
      Top = 11
      Width = 12
      Height = 12
      Caption = #21040
      Transparent = True
    end
    object Label4: TLabel
      Left = 539
      Top = 11
      Width = 48
      Height = 12
      Caption = #21830#21697#32534#21495
      Transparent = True
    end
    object lb_MaterialID: TLabel
      Left = 686
      Top = 12
      Width = 30
      Height = 12
      AutoSize = False
      Visible = False
    end
    object Label2: TLabel
      Left = 271
      Top = 11
      Width = 12
      Height = 12
      Caption = #20174
      Transparent = True
    end
    object cxBillNo: TcxTextEdit
      Left = 58
      Top = 7
      TabOrder = 1
      Width = 127
    end
    object deBegin: TcxDateEdit
      Left = 288
      Top = 7
      Properties.SaveTime = False
      Properties.ShowTime = False
      TabOrder = 3
      Width = 112
    end
    object deEnd: TcxDateEdit
      Left = 420
      Top = 7
      Properties.SaveTime = False
      Properties.ShowTime = False
      TabOrder = 4
      Width = 112
    end
    object btFind: TcxButton
      Left = 701
      Top = 5
      Width = 52
      Height = 23
      Anchors = [akTop, akRight]
      Caption = #26597#35810'(&F)'
      TabOrder = 0
      OnClick = btFindClick
      LookAndFeel.Kind = lfOffice11
    end
    object buttStyleCode: TcxButtonEdit
      Left = 592
      Top = 7
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = cxButtonEdit1PropertiesButtonClick
      Properties.OnChange = buttStyleCodePropertiesChange
      TabOrder = 5
      OnExit = buttStyleCodeExit
      Width = 89
    end
    object cbDateType: TcxComboBox
      Left = 194
      Top = 7
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        #19994#21153#26085#26399
        #24320#21333#26085#26399)
      Properties.ReadOnly = False
      TabOrder = 2
      Text = #19994#21153#26085#26399
      Width = 70
    end
  end
  object plClient: TPanel [1]
    Left = 0
    Top = 30
    Width = 937
    Height = 402
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object cxGrid1: TcxGrid
      Left = 0
      Top = 0
      Width = 937
      Height = 402
      Align = alClient
      TabOrder = 0
      object cxDBtv: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        OnCellDblClick = cxDBtvCellDblClick
        DataController.DataSource = dsList
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.NoDataToDisplayInfoText = '<'#31354#25968#25454'>'
        OptionsView.GroupByBox = False
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxDBtv
      end
    end
  end
  object plButton: TPanel [2]
    Left = 0
    Top = 432
    Width = 937
    Height = 59
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    DesignSize = (
      937
      59)
    object Image2: TImage
      Left = 0
      Top = 0
      Width = 937
      Height = 59
      Align = alClient
    end
    object Label5: TLabel
      Left = 7
      Top = 7
      Width = 644
      Height = 47
      AutoSize = False
      Caption = 
        #35828#26126#65306#13#10'1'#12289#27492#22788#21482#26174#31034#24403#21069#24215#38138#24050#32467#21333#30340#38144#21806#25968#25454#65292#19981#21253#25324#36864#36135#21333#21450#37096#20998#24050#36864#36135#30340#21333#25454#12290#13#10'2'#12289#22914#38144#21806#21333#20869#26377'3'#20010#27454#24335#65292#24050#36864#20854#20013#19968#20010#27454#24335 +
        #65292#36825#37324#23558#19981#26174#31034#27492#21333#21495#65292#22914#35201#32487#32493#36864#36135#21487#20197#25163#24037#24320#36127#25968#21333#25454#12290#13#10'3'#12289#25163#24037#24320#30340#36127#25968#21333#37324#35831#19981#35201#24405#20837#27491#25968#12290
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object btOK: TcxButton
      Left = 732
      Top = 29
      Width = 53
      Height = 23
      Anchors = [akRight, akBottom]
      Caption = #30830#23450'(&Y)'
      TabOrder = 0
      OnClick = btOKClick
      LookAndFeel.Kind = lfOffice11
    end
    object btCancel: TcxButton
      Left = 798
      Top = 29
      Width = 53
      Height = 23
      Anchors = [akRight, akBottom]
      Caption = #36820#22238'(&C)'
      TabOrder = 1
      OnClick = btCancelClick
      LookAndFeel.Kind = lfOffice11
    end
  end
  object cdsRetrunBillList: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 88
    Top = 81
  end
  object dsList: TDataSource
    DataSet = cdsRetrunBillList
    Left = 88
    Top = 137
  end
  object csMaster: TClientDataSet
    Aggregates = <>
    Params = <>
    RemoteServer = CliDM.SckCon
    Left = 352
    Top = 121
  end
  object csDetail: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 416
    Top = 121
  end
  object dsMaster: TDataSource
    DataSet = csMaster
    Left = 352
    Top = 73
  end
  object dsDetail: TDataSource
    DataSet = csDetail
    Left = 409
    Top = 73
  end
  object QryMater: TADOQuery
    Connection = CliDM.conClient
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      'select * from CT_BIL_RETAILPOS(nolock)')
    Left = 352
    Top = 176
  end
  object QryDetail: TADOQuery
    Connection = CliDM.conClient
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      'select * from CT_BIL_RETAILPOSENTRY(nolock)')
    Left = 416
    Top = 176
  end
  object QryReturnList: TADOQuery
    Connection = CliDM.conClient
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      'select * from CT_BIL_RETAILPOS(nolock)')
    Left = 88
    Top = 192
  end
end
