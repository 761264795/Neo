inherited RepairEditFrm: TRepairEditFrm
  Left = 244
  Top = 116
  Caption = #36820#20462#21333#32534#36753
  PixelsPerInch = 96
  TextHeight = 12
  inherited p_bt: TPanel
    inherited cxFCreatorName: TcxDBMaskEdit
      DataBinding.DataSource = dsMaster
    end
    inherited cxFCreatorDate: TcxDBMaskEdit
      DataBinding.DataSource = dsMaster
    end
    inherited cxFAUDITORName: TcxDBMaskEdit
      DataBinding.DataSource = dsMaster
    end
    inherited cxFAUDITORdate: TcxDBMaskEdit
      DataBinding.DataSource = dsMaster
    end
    inherited cxFmodifieridName: TcxDBMaskEdit
      DataBinding.DataSource = dsMaster
    end
    inherited Fmodificationtime: TcxDBMaskEdit
      DataBinding.DataSource = dsMaster
    end
  end
  object Panel1: TPanel [1]
    Left = 0
    Top = 53
    Width = 1036
    Height = 88
    Align = alTop
    Color = 16511980
    TabOrder = 5
    object Label2: TLabel
      Left = 14
      Top = 14
      Width = 52
      Height = 13
      AutoSize = False
      Caption = #21333#25454#32534#21495
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label14: TLabel
      Left = 14
      Top = 62
      Width = 58
      Height = 13
      AutoSize = False
      Caption = #22791#27880
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label15: TLabel
      Left = 500
      Top = 39
      Width = 40
      Height = 13
      AutoSize = False
      Caption = #29366#24577
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label5: TLabel
      Left = 246
      Top = 14
      Width = 58
      Height = 13
      AutoSize = False
      Caption = #19994#21153#26085#26399
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label7: TLabel
      Left = 14
      Top = 39
      Width = 59
      Height = 13
      AutoSize = False
      Caption = #36820#20462#26426#26500
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label10: TLabel
      Left = 246
      Top = 39
      Width = 59
      Height = 13
      AutoSize = False
      Caption = #22788#29702#26426#26500
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object txt_FNumber: TcxDBTextEdit
      Tag = 100
      Left = 70
      Top = 9
      DataBinding.DataField = 'FNumber'
      DataBinding.DataSource = dsMaster
      Properties.ReadOnly = True
      TabOrder = 0
      Width = 169
    end
    object txt_FBizDate: TcxDBDateEdit
      Tag = 100
      Left = 308
      Top = 9
      DataBinding.DataField = 'FBIZDATE'
      DataBinding.DataSource = dsMaster
      Enabled = False
      Properties.SaveTime = False
      Properties.ShowTime = False
      TabOrder = 1
      Width = 164
    end
    object txt_CFBaseStatus: TcxDBTextEdit
      Left = 549
      Top = 34
      DataBinding.DataField = 'FBASESTATUS'
      DataBinding.DataSource = dsMaster
      Enabled = False
      TabOrder = 2
      Width = 108
    end
    object txt_FDescription: TcxDBTextEdit
      Left = 70
      Top = 59
      DataBinding.DataField = 'FDescription'
      DataBinding.DataSource = dsMaster
      TabOrder = 3
      Width = 587
    end
    object txt_FReturnBranchName: TcxDBButtonEdit
      Tag = 100
      Left = 70
      Top = 34
      DataBinding.DataField = 'FReturnBranchName'
      DataBinding.DataSource = dsMaster
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ClickKey = 118
      Properties.OnButtonClick = txt_FReturnBranchNamePropertiesButtonClick
      TabOrder = 4
      Width = 169
    end
    object txt_FDisposeBranchName: TcxDBButtonEdit
      Tag = 100
      Left = 308
      Top = 34
      DataBinding.DataField = 'FDisposeBranchName'
      DataBinding.DataSource = dsMaster
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ClickKey = 118
      Properties.OnButtonClick = txt_FDisposeBranchNamePropertiesButtonClick
      TabOrder = 5
      Width = 164
    end
  end
  object Panel2: TPanel [2]
    Left = 0
    Top = 141
    Width = 1036
    Height = 371
    Align = alClient
    Color = 16511980
    TabOrder = 6
    object cxGrid1: TcxGrid
      Left = 1
      Top = 1
      Width = 1034
      Height = 369
      Align = alClient
      TabOrder = 0
      LookAndFeel.Kind = lfOffice11
      object cxGridEntry: TcxGridDBBandedTableView
        PopupMenu = pm_Entry
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsDetail
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.DataRowHeight = 22
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderHeight = 22
        OptionsView.BandHeaderHeight = 22
        Bands = <
          item
            Caption = #22522#26412#20449#24687
          end
          item
            Caption = #21806#21518#20837#24211
          end
          item
            Caption = #24037#21378#32500#20462
          end
          item
            Caption = #20462#22797#20837#24211
          end
          item
            Caption = #20462#22797#20986#24211
          end
          item
            Caption = #36136#36864#24037#21378
          end
          item
            Caption = #36229#26399#25913#36864
          end
          item
            Caption = #25253#30130
          end
          item
            Caption = #29305#27530#22788#29702
          end
          item
            Caption = #20854#23427#20449#24687
          end>
        object cxGridEntryFID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'FID'
          Visible = False
          Width = 80
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGridEntryFPARENTID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'FPARENTID'
          Visible = False
          Width = 80
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cxGridEntryFSEQ: TcxGridDBBandedColumn
          DataBinding.FieldName = 'FSEQ'
          Visible = False
          Width = 80
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object cxGridEntryFWarehouseName: TcxGridDBBandedColumn
          DataBinding.FieldName = 'FWarehouseName'
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.ClickKey = 118
          Properties.OnButtonClick = cxGridEntryFWarehouseNamePropertiesButtonClick
          Width = 80
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object cxGridEntryFSOURCEBILLID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'FSOURCEBILLID'
          Visible = False
          Width = 80
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object cxGridEntryFSOURCEBILLNUMBER: TcxGridDBBandedColumn
          DataBinding.FieldName = 'FSOURCEBILLNUMBER'
          Visible = False
          Width = 80
          Position.BandIndex = 0
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object cxGridEntryFSOURCEBILLENTRYID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'FSOURCEBILLENTRYID'
          Visible = False
          Width = 80
          Position.BandIndex = 0
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object cxGridEntryFSOURCEBILLENTRYSEQ: TcxGridDBBandedColumn
          DataBinding.FieldName = 'FSOURCEBILLENTRYSEQ'
          Visible = False
          Width = 80
          Position.BandIndex = 0
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
        object cxGridEntryFSOURCEBILLTYPEID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'FSOURCEBILLTYPEID'
          Visible = False
          Width = 80
          Position.BandIndex = 0
          Position.ColIndex = 8
          Position.RowIndex = 0
        end
        object cxGridEntryFASSISTPROPERTYID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'FASSISTPROPERTYID'
          Visible = False
          Width = 80
          Position.BandIndex = 0
          Position.ColIndex = 9
          Position.RowIndex = 0
        end
        object cxGridEntryFMaterialNumber: TcxGridDBBandedColumn
          DataBinding.FieldName = 'FMaterialNumber'
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.ClickKey = 118
          Properties.OnButtonClick = cxGridEntryFMaterialNumberPropertiesButtonClick
          Width = 80
          Position.BandIndex = 0
          Position.ColIndex = 10
          Position.RowIndex = 0
        end
        object cxGridEntryFMaterialName: TcxGridDBBandedColumn
          DataBinding.FieldName = 'FMaterialName'
          Options.Editing = False
          Width = 80
          Position.BandIndex = 0
          Position.ColIndex = 11
          Position.RowIndex = 0
        end
        object cxGridEntryFColorNumber: TcxGridDBBandedColumn
          DataBinding.FieldName = 'FColorNumber'
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.ClickKey = 118
          Properties.OnButtonClick = cxGridEntryFColorNumberPropertiesButtonClick
          Width = 80
          Position.BandIndex = 0
          Position.ColIndex = 12
          Position.RowIndex = 0
        end
        object cxGridEntryFColorName: TcxGridDBBandedColumn
          DataBinding.FieldName = 'FColorName'
          Width = 80
          Position.BandIndex = 0
          Position.ColIndex = 13
          Position.RowIndex = 0
        end
        object cxGridEntryFSizeName: TcxGridDBBandedColumn
          DataBinding.FieldName = 'FSizeName'
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.ClickKey = 118
          Properties.OnButtonClick = cxGridEntryFSizeNamePropertiesButtonClick
          Width = 42
          Position.BandIndex = 0
          Position.ColIndex = 14
          Position.RowIndex = 0
        end
        object cxGridEntryFCupName: TcxGridDBBandedColumn
          DataBinding.FieldName = 'FCupName'
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.ClickKey = 118
          Properties.OnButtonClick = cxGridEntryFCupNamePropertiesButtonClick
          Width = 40
          Position.BandIndex = 0
          Position.ColIndex = 15
          Position.RowIndex = 0
        end
        object cxGridEntryFMATERIALID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'FMATERIALID'
          Visible = False
          Width = 80
          Position.BandIndex = 0
          Position.ColIndex = 16
          Position.RowIndex = 0
        end
        object cxGridEntryFWAREHOUSEID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'FWAREHOUSEID'
          Visible = False
          Width = 80
          Position.BandIndex = 0
          Position.ColIndex = 17
          Position.RowIndex = 0
        end
        object cxGridEntryCFCUPID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CFCUPID'
          Visible = False
          Width = 80
          Position.BandIndex = 0
          Position.ColIndex = 18
          Position.RowIndex = 0
        end
        object cxGridEntryCFSIZESID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CFSIZESID'
          Visible = False
          Width = 80
          Position.BandIndex = 0
          Position.ColIndex = 19
          Position.RowIndex = 0
        end
        object cxGridEntryCFCOLORID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CFCOLORID'
          Visible = False
          Width = 80
          Position.BandIndex = 0
          Position.ColIndex = 20
          Position.RowIndex = 0
        end
        object cxGridEntryCFSIZEGROUPID: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CFSIZEGROUPID'
          Visible = False
          Width = 80
          Position.BandIndex = 0
          Position.ColIndex = 21
          Position.RowIndex = 0
        end
        object cxGridEntryCFDPPRICE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CFDPPRICE'
          Width = 53
          Position.BandIndex = 9
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGridEntryCFRETURNDATE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CFRETURNDATE'
          Width = 69
          Position.BandIndex = 0
          Position.ColIndex = 22
          Position.RowIndex = 0
        end
        object cxGridEntryCFTYPE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CFTYPE'
          PropertiesClassName = 'TcxComboBoxProperties'
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            #26032
            #26087)
          Width = 43
          Position.BandIndex = 0
          Position.ColIndex = 23
          Position.RowIndex = 0
        end
        object cxGridEntryCFCODE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CFCODE'
          Width = 44
          Position.BandIndex = 0
          Position.ColIndex = 24
          Position.RowIndex = 0
        end
        object cxGridEntryCFQUALITYCAUSE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CFQUALITYCAUSE'
          Width = 80
          Position.BandIndex = 0
          Position.ColIndex = 25
          Position.RowIndex = 0
        end
        object cxGridEntryCFSALEINDATE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CFSALEINDATE'
          Width = 72
          Position.BandIndex = 1
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGridEntryCFSALEINQTY: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CFSALEINQTY'
          Width = 56
          Position.BandIndex = 1
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cxGridEntryCFMAINTAINDATE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CFMAINTAINDATE'
          Width = 52
          Position.BandIndex = 2
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGridEntryCFMAINTAINDATENUMBER: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CFMAINTAINDATENUMBER'
          Width = 65
          Position.BandIndex = 2
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cxGridEntryCFMAINTAINQTY: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CFMAINTAINQTY'
          Width = 80
          Position.BandIndex = 2
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object cxGridEntryCFREPAIRINDATE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CFREPAIRINDATE'
          Width = 80
          Position.BandIndex = 3
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGridEntryCFREPAIRINQTY: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CFREPAIRINQTY'
          Width = 46
          Position.BandIndex = 3
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cxGridEntryCFREPAIROUTDATE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CFREPAIROUTDATE'
          Width = 75
          Position.BandIndex = 4
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGridEntryCFREPAIROUTNUMBER: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CFREPAIROUTNUMBER'
          Width = 65
          Position.BandIndex = 4
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cxGridEntryCFRETURNFACTORYDATE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CFRETURNFACTORYDATE'
          Width = 61
          Position.BandIndex = 5
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGridEntryCFRETURNFACTORYNUMBER: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CFRETURNFACTORYNUMBER'
          Width = 59
          Position.BandIndex = 5
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cxGridEntryCFRETURNFACTORYQTY: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CFRETURNFACTORYQTY'
          Width = 48
          Position.BandIndex = 5
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object cxGridEntryCFEXCEEDTIME: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CFEXCEEDTIME'
          Width = 52
          Position.BandIndex = 6
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGridEntryCFEXCEEDQTY: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CFEXCEEDQTY'
          Width = 67
          Position.BandIndex = 6
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cxGridEntryCFABANDONITEM: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CFABANDONITEM'
          Width = 80
          Position.BandIndex = 7
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGridEntryCFABANDONTIME: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CFABANDONTIME'
          Width = 54
          Position.BandIndex = 7
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cxGridEntryCFABANDONQTY: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CFABANDONQTY'
          Width = 49
          Position.BandIndex = 8
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGridEntryCFSPECIALDATE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CFSPECIALDATE'
          Width = 52
          Position.BandIndex = 8
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cxGridEntryCFSPECIALQTY: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CFSPECIALQTY'
          Width = 41
          Position.BandIndex = 8
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object cxGridEntryFREMARK: TcxGridDBBandedColumn
          DataBinding.FieldName = 'FREMARK'
          Width = 80
          Position.BandIndex = 9
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGridEntry
      end
    end
  end
  inherited ImageListMainForm: TImageList
    Left = 624
    Top = 224
  end
  inherited actlst1: TActionList
    inherited actSaveBill: TAction
      OnExecute = actSaveBillExecute
    end
    inherited actAudit: TAction
      OnExecute = actAuditExecute
    end
    inherited actUnAudit: TAction
      OnExecute = actUnAuditExecute
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
  end
  inherited cdsMaster: TClientDataSet
    OnCalcFields = cdsMasterCalcFields
    OnNewRecord = cdsMasterNewRecord
    Left = 176
    Top = 200
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
    object cdsMasterFRETURNBRANCH: TWideStringField
      FieldName = 'FRETURNBRANCH'
      Size = 44
    end
    object cdsMasterFDISPOSEBRANCH: TWideStringField
      FieldName = 'FDISPOSEBRANCH'
      Size = 44
    end
    object cdsMasterFCONTROLUNITID: TWideStringField
      FieldName = 'FCONTROLUNITID'
      Size = 44
    end
    object cdsMasterFNUMBER: TWideStringField
      FieldName = 'FNUMBER'
      Size = 80
    end
    object cdsMasterFBIZDATE: TDateTimeField
      FieldName = 'FBIZDATE'
    end
    object cdsMasterFDESCRIPTION: TWideStringField
      FieldName = 'FDESCRIPTION'
      Size = 160
    end
    object cdsMasterFAUDITORID: TWideStringField
      FieldName = 'FAUDITORID'
      Size = 44
    end
    object cdsMasterFSOURCEBILLID: TWideStringField
      FieldName = 'FSOURCEBILLID'
      Size = 44
    end
    object cdsMasterFSOURCEFUNCTION: TWideStringField
      FieldName = 'FSOURCEFUNCTION'
      Size = 160
    end
    object cdsMasterFAUDITTIME: TDateTimeField
      FieldName = 'FAUDITTIME'
    end
    object cdsMasterFBASESTATUS: TFloatField
      FieldName = 'FBASESTATUS'
      OnGetText = cdsMasterFBASESTATUSGetText
    end
    object cdsMasterFBIZTYPEID: TWideStringField
      FieldName = 'FBIZTYPEID'
      Size = 44
    end
    object cdsMasterFSOURCEBILLTYPEID: TWideStringField
      FieldName = 'FSOURCEBILLTYPEID'
      Size = 44
    end
    object cdsMasterFBILLTYPEID: TWideStringField
      FieldName = 'FBILLTYPEID'
      Size = 44
    end
    object cdsMasterFCreatorName: TStringField
      FieldKind = fkCalculated
      FieldName = 'FCreatorName'
      Size = 80
      Calculated = True
    end
    object cdsMasterFAuditorName: TStringField
      FieldKind = fkCalculated
      FieldName = 'FAuditorName'
      Size = 80
      Calculated = True
    end
    object cdsMasterCFModifierName: TStringField
      FieldKind = fkCalculated
      FieldName = 'CFModifierName'
      Size = 80
      Calculated = True
    end
    object cdsMasterFReturnBranchName: TStringField
      FieldKind = fkCalculated
      FieldName = 'FReturnBranchName'
      Size = 80
      Calculated = True
    end
    object cdsMasterFDisposeBranchName: TStringField
      FieldKind = fkCalculated
      FieldName = 'FDisposeBranchName'
      Size = 80
      Calculated = True
    end
  end
  inherited dsMaster: TDataSource
    Left = 240
    Top = 200
  end
  inherited cdsDetail: TClientDataSet
    BeforePost = cdsDetailBeforePost
    BeforeDelete = cdsDetailBeforeDelete
    OnNewRecord = cdsDetailNewRecord
    Left = 168
    Top = 368
    object cdsDetailFID: TWideStringField
      FieldName = 'FID'
      Size = 44
    end
    object cdsDetailFPARENTID: TWideStringField
      FieldName = 'FPARENTID'
      Size = 44
    end
    object cdsDetailFSEQ: TFloatField
      FieldName = 'FSEQ'
    end
    object cdsDetailFWarehouseName: TStringField
      DisplayLabel = #24215#38138
      FieldName = 'FWarehouseName'
      Size = 80
    end
    object cdsDetailFSOURCEBILLID: TWideStringField
      FieldName = 'FSOURCEBILLID'
      Size = 44
    end
    object cdsDetailFSOURCEBILLNUMBER: TWideStringField
      FieldName = 'FSOURCEBILLNUMBER'
      Size = 160
    end
    object cdsDetailFSOURCEBILLENTRYID: TWideStringField
      FieldName = 'FSOURCEBILLENTRYID'
      Size = 44
    end
    object cdsDetailFSOURCEBILLENTRYSEQ: TFloatField
      FieldName = 'FSOURCEBILLENTRYSEQ'
    end
    object cdsDetailFSOURCEBILLTYPEID: TWideStringField
      FieldName = 'FSOURCEBILLTYPEID'
      Size = 44
    end
    object cdsDetailFASSISTPROPERTYID: TWideStringField
      FieldName = 'FASSISTPROPERTYID'
      Size = 44
    end
    object cdsDetailFMaterialNumber: TStringField
      DisplayLabel = #29289#26009#32534#21495
      FieldName = 'FMaterialNumber'
      Size = 80
    end
    object cdsDetailFMaterialName: TStringField
      DisplayLabel = #29289#26009#21517#31216
      FieldName = 'FMaterialName'
      Size = 80
    end
    object cdsDetailFColorNumber: TStringField
      DisplayLabel = #39068#33394#32534#21495
      FieldName = 'FColorNumber'
      Size = 80
    end
    object cdsDetailFColorName: TStringField
      DisplayLabel = #39068#33394#21517#31216
      FieldName = 'FColorName'
      Size = 80
    end
    object cdsDetailFSizeName: TStringField
      DisplayLabel = #23610#30721
      FieldName = 'FSizeName'
      Size = 80
    end
    object cdsDetailFCupName: TStringField
      DisplayLabel = #20869#38271
      FieldName = 'FCupName'
      Size = 80
    end
    object cdsDetailFMATERIALID: TWideStringField
      FieldName = 'FMATERIALID'
      Size = 44
    end
    object cdsDetailFWAREHOUSEID: TWideStringField
      FieldName = 'FWAREHOUSEID'
      Size = 44
    end
    object cdsDetailCFCUPID: TWideStringField
      FieldName = 'CFCUPID'
      Size = 44
    end
    object cdsDetailCFSIZESID: TWideStringField
      FieldName = 'CFSIZESID'
      Size = 44
    end
    object cdsDetailCFCOLORID: TWideStringField
      FieldName = 'CFCOLORID'
      Size = 44
    end
    object cdsDetailCFSIZEGROUPID: TWideStringField
      FieldName = 'CFSIZEGROUPID'
      Size = 44
    end
    object cdsDetailCFDPPRICE: TFloatField
      DisplayLabel = #21514#29260#20215
      FieldName = 'CFDPPRICE'
    end
    object cdsDetailCFRETURNDATE: TDateTimeField
      DisplayLabel = #36864#36135#26085#26399
      FieldName = 'CFRETURNDATE'
    end
    object cdsDetailCFTYPE: TWideStringField
      DisplayLabel = #31867#22411
      FieldName = 'CFTYPE'
      Size = 40
    end
    object cdsDetailCFCODE: TWideStringField
      DisplayLabel = #20195#30721
      FieldName = 'CFCODE'
      Size = 40
    end
    object cdsDetailCFQUALITYCAUSE: TWideStringField
      DisplayLabel = #36136#37327#21407#22240
      FieldName = 'CFQUALITYCAUSE'
      Size = 480
    end
    object cdsDetailCFSALEINDATE: TDateTimeField
      DisplayLabel = #26085#26399
      FieldName = 'CFSALEINDATE'
    end
    object cdsDetailCFSALEINQTY: TFloatField
      DisplayLabel = #25968#37327
      FieldName = 'CFSALEINQTY'
    end
    object cdsDetailCFMAINTAINDATE: TDateTimeField
      DisplayLabel = #26085#26399
      FieldName = 'CFMAINTAINDATE'
    end
    object cdsDetailCFMAINTAINDATENUMBER: TWideStringField
      DisplayLabel = #21333#21495
      FieldName = 'CFMAINTAINDATENUMBER'
      Size = 40
    end
    object cdsDetailCFMAINTAINQTY: TFloatField
      DisplayLabel = #25968#37327' '
      FieldName = 'CFMAINTAINQTY'
    end
    object cdsDetailCFREPAIRINDATE: TDateTimeField
      DisplayLabel = #26085#26399
      FieldName = 'CFREPAIRINDATE'
    end
    object cdsDetailCFREPAIRINQTY: TFloatField
      DisplayLabel = #25968#37327
      FieldName = 'CFREPAIRINQTY'
    end
    object cdsDetailCFREPAIROUTDATE: TDateTimeField
      DisplayLabel = #26085#26399
      FieldName = 'CFREPAIROUTDATE'
    end
    object cdsDetailCFREPAIROUTNUMBER: TWideStringField
      DisplayLabel = #21333#21495
      FieldName = 'CFREPAIROUTNUMBER'
      Size = 40
    end
    object cdsDetailCFRETURNFACTORYDATE: TDateTimeField
      DisplayLabel = #26085#26399
      FieldName = 'CFRETURNFACTORYDATE'
    end
    object cdsDetailCFRETURNFACTORYNUMBER: TWideStringField
      DisplayLabel = #21333#21495
      FieldName = 'CFRETURNFACTORYNUMBER'
      Size = 40
    end
    object cdsDetailCFRETURNFACTORYQTY: TFloatField
      DisplayLabel = #25968#37327
      FieldName = 'CFRETURNFACTORYQTY'
    end
    object cdsDetailCFEXCEEDTIME: TDateTimeField
      DisplayLabel = #26085#26399
      FieldName = 'CFEXCEEDTIME'
    end
    object cdsDetailCFEXCEEDQTY: TFloatField
      DisplayLabel = #25968#37327
      FieldName = 'CFEXCEEDQTY'
    end
    object cdsDetailCFABANDONITEM: TWideStringField
      DisplayLabel = #39033#30446
      FieldName = 'CFABANDONITEM'
      Size = 480
    end
    object cdsDetailCFABANDONTIME: TDateTimeField
      DisplayLabel = #26085#26399
      FieldName = 'CFABANDONTIME'
    end
    object cdsDetailCFABANDONQTY: TFloatField
      DisplayLabel = #25968#37327
      FieldName = 'CFABANDONQTY'
    end
    object cdsDetailCFSPECIALDATE: TDateTimeField
      DisplayLabel = #26085#26399
      FieldName = 'CFSPECIALDATE'
    end
    object cdsDetailCFSPECIALQTY: TFloatField
      DisplayLabel = #25968#37327
      FieldName = 'CFSPECIALQTY'
    end
    object cdsDetailFREMARK: TWideStringField
      DisplayLabel = #22791#27880
      FieldName = 'FREMARK'
      Size = 480
    end
  end
  inherited dsDetail: TDataSource
    Left = 232
    Top = 360
  end
  object cdsDetail_Save: TClientDataSet
    Aggregates = <>
    Params = <>
    BeforeInsert = cdsDetailBeforeInsert
    BeforeEdit = cdsDetailBeforeEdit
    Left = 168
    Top = 272
    object WideStringField1: TWideStringField
      FieldName = 'FID'
      Size = 44
    end
    object WideStringField2: TWideStringField
      FieldName = 'FPARENTID'
      Size = 44
    end
    object FloatField1: TFloatField
      FieldName = 'FSEQ'
    end
    object WideStringField3: TWideStringField
      FieldName = 'FSOURCEBILLID'
      Size = 44
    end
    object WideStringField4: TWideStringField
      FieldName = 'FSOURCEBILLNUMBER'
      Size = 160
    end
    object WideStringField5: TWideStringField
      FieldName = 'FSOURCEBILLENTRYID'
      Size = 44
    end
    object FloatField2: TFloatField
      FieldName = 'FSOURCEBILLENTRYSEQ'
    end
    object WideStringField6: TWideStringField
      FieldName = 'FSOURCEBILLTYPEID'
      Size = 44
    end
    object WideStringField7: TWideStringField
      FieldName = 'FASSISTPROPERTYID'
      Size = 44
    end
    object WideStringField8: TWideStringField
      FieldName = 'FMATERIALID'
      Size = 44
    end
    object WideStringField9: TWideStringField
      FieldName = 'FWAREHOUSEID'
      Size = 44
    end
    object WideStringField10: TWideStringField
      FieldName = 'CFCUPID'
      Size = 44
    end
    object WideStringField11: TWideStringField
      FieldName = 'CFSIZESID'
      Size = 44
    end
    object WideStringField12: TWideStringField
      FieldName = 'CFCOLORID'
      Size = 44
    end
    object WideStringField13: TWideStringField
      FieldName = 'FREMARK'
      Size = 480
    end
    object WideStringField14: TWideStringField
      FieldName = 'CFSIZEGROUPID'
      Size = 44
    end
    object FloatField3: TFloatField
      FieldName = 'CFDPPRICE'
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'CFRETURNDATE'
    end
    object WideStringField15: TWideStringField
      FieldName = 'CFTYPE'
      Size = 40
    end
    object WideStringField16: TWideStringField
      FieldName = 'CFCODE'
      Size = 40
    end
    object WideStringField17: TWideStringField
      FieldName = 'CFQUALITYCAUSE'
      Size = 480
    end
    object DateTimeField2: TDateTimeField
      FieldName = 'CFSALEINDATE'
    end
    object FloatField4: TFloatField
      FieldName = 'CFSALEINQTY'
    end
    object DateTimeField3: TDateTimeField
      FieldName = 'CFMAINTAINDATE'
    end
    object WideStringField18: TWideStringField
      FieldName = 'CFMAINTAINDATENUMBER'
      Size = 40
    end
    object FloatField5: TFloatField
      FieldName = 'CFMAINTAINQTY'
    end
    object DateTimeField4: TDateTimeField
      FieldName = 'CFREPAIRINDATE'
    end
    object FloatField6: TFloatField
      FieldName = 'CFREPAIRINQTY'
    end
    object DateTimeField5: TDateTimeField
      FieldName = 'CFREPAIROUTDATE'
    end
    object WideStringField19: TWideStringField
      FieldName = 'CFREPAIROUTNUMBER'
      Size = 40
    end
    object DateTimeField6: TDateTimeField
      FieldName = 'CFRETURNFACTORYDATE'
    end
    object WideStringField20: TWideStringField
      FieldName = 'CFRETURNFACTORYNUMBER'
      Size = 40
    end
    object FloatField7: TFloatField
      FieldName = 'CFRETURNFACTORYQTY'
    end
    object DateTimeField7: TDateTimeField
      FieldName = 'CFEXCEEDTIME'
    end
    object FloatField8: TFloatField
      FieldName = 'CFEXCEEDQTY'
    end
    object WideStringField21: TWideStringField
      FieldName = 'CFABANDONITEM'
      Size = 480
    end
    object DateTimeField8: TDateTimeField
      FieldName = 'CFABANDONTIME'
    end
    object FloatField9: TFloatField
      FieldName = 'CFABANDONQTY'
    end
    object DateTimeField9: TDateTimeField
      FieldName = 'CFSPECIALDATE'
    end
    object FloatField10: TFloatField
      FieldName = 'CFSPECIALQTY'
    end
  end
  object pm_Entry: TPopupMenu
    AutoHotkeys = maManual
    Left = 360
    Top = 293
    object btn_NewRow: TMenuItem
      Caption = #26032#22686#20998#24405#34892
      OnClick = btn_NewRowClick
    end
    object btn_DelRow: TMenuItem
      Caption = #21024#38500#20998#24405#34892
      OnClick = btn_DelRowClick
    end
    object btn_ClearEntry: TMenuItem
      Caption = #28165#31354#20998#24405#34892
      OnClick = btn_ClearEntryClick
    end
  end
end
