inherited RepairManFrm: TRepairManFrm
  Left = 382
  Top = 95
  Width = 808
  Height = 426
  Caption = #36865#20462#20154
  PixelsPerInch = 96
  TextHeight = 12
  inherited p_bt: TPanel
    Top = 357
    Width = 792
    Visible = False
  end
  object Panel1: TPanel [1]
    Left = 0
    Top = 53
    Width = 792
    Height = 92
    Align = alTop
    TabOrder = 5
    object cxLabel1: TcxLabel
      Left = 16
      Top = 8
      Caption = #32534#21495
    end
    object cxLabel2: TcxLabel
      Left = 328
      Top = 8
      Caption = #22995#21517
    end
    object cxLabel3: TcxLabel
      Left = 520
      Top = 8
      Caption = #30005#35805
    end
    object cxLabel4: TcxLabel
      Left = 16
      Top = 28
      Caption = #36523#20221#35777#21495
    end
    object cxLabel5: TcxLabel
      Left = 328
      Top = 28
      Caption = #37038#31665
    end
    object cxLabel6: TcxLabel
      Left = 16
      Top = 61
      Caption = #22320#22336
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 72
      Top = 4
      DataBinding.DataField = 'FNumber'
      DataBinding.DataSource = dsMaster
      TabOrder = 6
      Width = 153
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 360
      Top = 4
      DataBinding.DataField = 'CFName'
      DataBinding.DataSource = dsMaster
      TabOrder = 7
      Width = 153
    end
    object cxDBTextEdit3: TcxDBTextEdit
      Left = 548
      Top = 4
      DataBinding.DataField = 'CFTel'
      DataBinding.DataSource = dsMaster
      TabOrder = 8
      Width = 153
    end
    object c350521198310159013: TcxDBTextEdit
      Left = 72
      Top = 24
      DataBinding.DataField = 'CFIdNumber'
      DataBinding.DataSource = dsMaster
      TabOrder = 9
      Width = 153
    end
    object cxDBTextEdit5: TcxDBTextEdit
      Left = 360
      Top = 24
      DataBinding.DataField = 'CFEmail'
      DataBinding.DataSource = dsMaster
      TabOrder = 10
      Width = 153
    end
    object cxDBMemo1: TcxDBMemo
      Left = 72
      Top = 44
      DataBinding.DataField = 'CFAddr'
      DataBinding.DataSource = dsMaster
      TabOrder = 11
      Height = 33
      Width = 441
    end
  end
  object cxGrid1: TcxGrid [2]
    Left = 0
    Top = 145
    Width = 792
    Height = 212
    Align = alClient
    TabOrder = 6
    object cxGrid1DBTableView1: TcxGridDBTableView
      OnDblClick = cxGrid1DBTableView1DblClick
      NavigatorButtons.ConfirmDelete = False
      OnCanSelectRecord = cxGrid1DBTableView1CanSelectRecord
      OnFocusedRecordChanged = cxGrid1DBTableView1FocusedRecordChanged
      DataController.DataSource = dsList
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsSelection.CellSelect = False
      OptionsView.GroupByBox = False
      object cxdbColNumer: TcxGridDBColumn
        Caption = #32534#21495
        DataBinding.FieldName = 'FNumber'
        Width = 87
      end
      object cxdbColName: TcxGridDBColumn
        Caption = #22995#21517
        DataBinding.FieldName = 'CFName'
        Width = 103
      end
      object cxdbColTel: TcxGridDBColumn
        Caption = #30005#35805
        DataBinding.FieldName = 'CFTel'
        Width = 128
      end
      object cxdbColEMail: TcxGridDBColumn
        Caption = #37038#31665
        DataBinding.FieldName = 'CFEmail'
        Width = 92
      end
      object cxdbColAddr: TcxGridDBColumn
        Caption = #22320#22336
        DataBinding.FieldName = 'CFAddr'
        Width = 364
      end
      object cxdbColIDNumber: TcxGridDBColumn
        Caption = #36523#20221#35777#21495
        DataBinding.FieldName = 'CFIdNumber'
        Width = 111
      end
      object cxdbColZipCode: TcxGridDBColumn
        Caption = #37038#32534
        DataBinding.FieldName = 'CFZipCode'
        Width = 74
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  inherited ImageListMainForm: TImageList
    Left = 744
    Top = 200
  end
  inherited actlst1: TActionList
    Left = 704
    Top = 64
    inherited actSaveBill: TAction
      OnExecute = actSaveBillExecute
    end
  end
  inherited dxBarManager1: TdxBarManager
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    DockControlHeights = (
      0
      0
      53
      0)
    inherited dxBarButton3: TdxBarButton
      Visible = ivNever
    end
    inherited dxBarSubItem1: TdxBarSubItem
      Visible = ivNever
    end
    inherited btn_Audit: TdxBarButton
      Visible = ivNever
    end
    inherited btn_uAudit: TdxBarButton
      Visible = ivNever
    end
    inherited dxBarButton7: TdxBarButton
      Visible = ivNever
    end
    inherited dxBarButton8: TdxBarButton
      Visible = ivNever
    end
    inherited dxBarSubItem3: TdxBarSubItem
      Visible = ivNever
    end
    inherited dxBarButton11: TdxBarButton
      Visible = ivNever
    end
    inherited dxBarButton12: TdxBarButton
      Visible = ivNever
    end
    inherited dxBarSubItem9: TdxBarSubItem
      Visible = ivNever
    end
    inherited dxBarButton17: TdxBarButton
      Visible = ivNever
    end
    inherited dxBarButton19: TdxBarButton
      Visible = ivNever
    end
    inherited dxBarButton23: TdxBarButton
      Visible = ivNever
    end
    inherited dxBarButton24: TdxBarButton
      Visible = ivNever
    end
    inherited dxBarButton25: TdxBarButton
      Visible = ivNever
    end
    inherited dxBarToExcel: TdxBarButton
      Visible = ivNever
    end
    inherited dxBarImportXls: TdxBarButton
      Visible = ivNever
    end
    inherited bt_sendMsg: TdxBarButton
      Visible = ivNever
    end
    inherited dxBarBtnFirst: TdxBarButton
      Visible = ivNever
    end
    inherited dxBarBtnPrior: TdxBarButton
      Visible = ivNever
    end
    inherited dxBarbtnNext: TdxBarButton
      Visible = ivNever
    end
    inherited dxBarbtnlast: TdxBarButton
      Visible = ivNever
    end
    inherited dxBarbtnUP: TdxBarButton
      Visible = ivNever
    end
    inherited dxBarbtnDown: TdxBarButton
      Visible = ivNever
    end
    inherited dxBarbtnPull: TdxBarButton
      Visible = ivNever
    end
    inherited dxbarbtnPush: TdxBarButton
      Visible = ivNever
    end
    inherited btn_Print: TdxBarButton
      Visible = ivNever
    end
  end
  inherited cdsMaster: TClientDataSet
    Left = 96
    Top = 104
    object cdsMasterFNumber: TWideStringField
      FieldName = 'FNumber'
      Size = 80
    end
    object cdsMasterFBizDate: TDateTimeField
      FieldName = 'FBizDate'
    end
    object cdsMasterFID: TStringField
      FieldName = 'FID'
      Size = 44
    end
    object cdsMasterFCreatorID: TStringField
      FieldName = 'FCreatorID'
      Size = 44
    end
    object cdsMasterFCreateTime: TDateTimeField
      FieldName = 'FCreateTime'
    end
    object cdsMasterFLastUpdateUserID: TStringField
      FieldName = 'FLastUpdateUserID'
      Size = 44
    end
    object cdsMasterFLastUpdateTime: TDateTimeField
      FieldName = 'FLastUpdateTime'
    end
    object cdsMasterFHandlerID: TStringField
      FieldName = 'FHandlerID'
      Size = 44
    end
    object cdsMasterFDescription: TWideStringField
      FieldName = 'FDescription'
      Size = 80
    end
    object cdsMasterFHasEffected: TIntegerField
      FieldName = 'FHasEffected'
    end
    object cdsMasterFAuditorID: TStringField
      FieldName = 'FAuditorID'
      Size = 44
    end
    object cdsMasterFSourceBillID: TWideStringField
      FieldName = 'FSourceBillID'
      Size = 80
    end
    object cdsMasterFSourceFunction: TWideStringField
      FieldName = 'FSourceFunction'
      Size = 80
    end
    object cdsMasterFCompanyID: TStringField
      FieldName = 'FCompanyID'
      Size = 44
    end
    object cdsMasterFControlUnitID: TStringField
      FieldName = 'FControlUnitID'
      Size = 44
    end
    object cdsMasterFFivouchered: TIntegerField
      FieldName = 'FFivouchered'
    end
    object cdsMasterFBaseStatus: TIntegerField
      FieldName = 'FBaseStatus'
    end
    object cdsMasterFAuditTime: TDateTimeField
      FieldName = 'FAuditTime'
    end
    object cdsMasterCFName: TWideStringField
      FieldName = 'CFName'
      Size = 100
    end
    object cdsMasterCFTel: TWideStringField
      FieldName = 'CFTel'
      Size = 100
    end
    object cdsMasterCFEmail: TWideStringField
      FieldName = 'CFEmail'
      Size = 100
    end
    object cdsMasterCFIdNumber: TWideStringField
      FieldName = 'CFIdNumber'
      Size = 100
    end
    object cdsMasterCFZipCode: TWideStringField
      FieldName = 'CFZipCode'
      Size = 100
    end
    object cdsMasterCFAddr: TWideStringField
      FieldName = 'CFAddr'
      Size = 255
    end
    object cdsMasterCFOrgUnitID: TStringField
      FieldName = 'CFOrgUnitID'
      Size = 44
    end
  end
  inherited dsMaster: TDataSource
    Left = 40
    Top = 104
  end
  inherited cdsDetail: TClientDataSet
    Left = 264
    Top = 104
    object cdsDetailFSeq: TIntegerField
      FieldName = 'FSeq'
    end
    object cdsDetailFID: TStringField
      FieldName = 'FID'
      Size = 44
    end
    object cdsDetailFParentID: TStringField
      FieldName = 'FParentID'
      Size = 44
    end
    object cdsDetailFLineStatus: TIntegerField
      FieldName = 'FLineStatus'
    end
    object cdsDetailFLineDesc: TWideStringField
      FieldName = 'FLineDesc'
      Size = 255
    end
    object cdsDetailCFVehicleID: TStringField
      FieldName = 'CFVehicleID'
      Size = 44
    end
  end
  inherited dsDetail: TDataSource
    Left = 328
    Top = 104
  end
  object cdsList: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 400
    Top = 272
    object cdsListFID: TStringField
      FieldName = 'FID'
    end
    object cdsListFNumber: TWideStringField
      FieldName = 'FNumber'
      Size = 80
    end
    object cdsListCFName: TWideStringField
      FieldName = 'CFName'
      Size = 100
    end
    object cdsListCFTel: TWideStringField
      FieldName = 'CFTel'
      Size = 100
    end
    object cdsListCFEmail: TWideStringField
      FieldName = 'CFEmail'
      Size = 100
    end
    object cdsListCFAddr: TWideStringField
      FieldName = 'CFAddr'
      Size = 255
    end
    object cdsListCFIdNumber: TWideStringField
      FieldName = 'CFIdNumber'
      Size = 100
    end
    object cdsListCFZipCode: TWideStringField
      FieldName = 'CFZipCode'
      Size = 100
    end
  end
  object dsList: TDataSource
    DataSet = cdsList
    Left = 392
    Top = 200
  end
end
