inherited MallCompareEditFrm: TMallCompareEditFrm
  Left = 175
  Top = 65
  Height = 649
  Caption = #21830#22330#23545#36134#21333#32534#36753#30028#38754
  PixelsPerInch = 96
  TextHeight = 12
  inherited p_bt: TPanel
    Top = 588
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
      DataBinding.DataField = 'CFAUDITDATE'
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
    Height = 173
    Align = alTop
    Color = 16511980
    TabOrder = 5
    DesignSize = (
      1036
      173)
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
    object Label5: TLabel
      Left = 204
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
    object Label16: TLabel
      Left = 419
      Top = 14
      Width = 58
      Height = 13
      AutoSize = False
      Caption = #21830#22330
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label7: TLabel
      Left = 661
      Top = 14
      Width = 58
      Height = 13
      AutoSize = False
      Caption = #24215#38138
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label10: TLabel
      Left = 204
      Top = 39
      Width = 88
      Height = 13
      AutoSize = False
      Caption = #23545#36134#24320#22987#26085#26399
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label11: TLabel
      Left = 419
      Top = 39
      Width = 88
      Height = 13
      AutoSize = False
      Caption = #23545#36134#32467#26463#26085#26399
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label15: TLabel
      Left = 661
      Top = 39
      Width = 58
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
    object Label31: TLabel
      Left = 14
      Top = 89
      Width = 47
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
    object Label12: TLabel
      Left = 14
      Top = 39
      Width = 58
      Height = 13
      AutoSize = False
      Caption = #20844#21496
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label43: TLabel
      Left = 14
      Top = 64
      Width = 36
      Height = 13
      AutoSize = False
      Caption = #21697#29260
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label14: TLabel
      Left = 419
      Top = 64
      Width = 58
      Height = 13
      AutoSize = False
      Caption = #25688#35201
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label13: TLabel
      Left = 204
      Top = 64
      Width = 58
      Height = 13
      AutoSize = False
      Caption = #23545#36134#24180#26376
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Bevel1: TBevel
      Left = 2
      Top = 112
      Width = 1023
      Height = 2
      Anchors = [akLeft, akTop, akRight]
    end
    object Label17: TLabel
      Left = 14
      Top = 125
      Width = 47
      Height = 13
      AutoSize = False
      Caption = #24635#25968#37327
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label18: TLabel
      Left = 204
      Top = 125
      Width = 91
      Height = 13
      AutoSize = False
      Caption = #38144#21806#23454#25910#37329#39069
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label19: TLabel
      Left = 419
      Top = 125
      Width = 91
      Height = 13
      AutoSize = False
      Caption = #25187#28857#37329#39069
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label20: TLabel
      Left = 661
      Top = 125
      Width = 52
      Height = 13
      AutoSize = False
      Caption = #25187#28857#29575'%'
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label21: TLabel
      Left = 14
      Top = 148
      Width = 64
      Height = 13
      AutoSize = False
      Caption = #24212#25910#37329#39069
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label22: TLabel
      Left = 204
      Top = 148
      Width = 64
      Height = 13
      AutoSize = False
      Caption = #35843#25972#37329#39069
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label23: TLabel
      Left = 661
      Top = 148
      Width = 58
      Height = 13
      AutoSize = False
      Caption = #23454#32467#37329#39069
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label24: TLabel
      Left = 420
      Top = 150
      Width = 64
      Height = 13
      AutoSize = False
      Caption = #20854#23427#36153#29992
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
      Width = 121
    end
    object txt_FBizDate: TcxDBDateEdit
      Tag = 100
      Left = 288
      Top = 9
      DataBinding.DataField = 'FBIZDATE'
      DataBinding.DataSource = dsMaster
      Enabled = False
      Properties.SaveTime = False
      Properties.ShowTime = False
      TabOrder = 1
      Width = 121
    end
    object txt_CFCustName: TcxDBButtonEdit
      Tag = 100
      Left = 507
      Top = 9
      DataBinding.DataField = 'CFCustName'
      DataBinding.DataSource = dsMaster
      Enabled = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ClickKey = 118
      TabOrder = 2
      Width = 148
    end
    object txt_warehouseName: TcxDBButtonEdit
      Tag = 100
      Left = 717
      Top = 9
      DataBinding.DataField = 'warehouseName'
      DataBinding.DataSource = dsMaster
      Enabled = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ClickKey = 118
      TabOrder = 3
      Width = 148
    end
    object txt_CFBeginDate: TcxDBDateEdit
      Tag = 100
      Left = 288
      Top = 35
      DataBinding.DataField = 'CFBEGINDATE'
      DataBinding.DataSource = dsMaster
      Enabled = False
      Properties.SaveTime = False
      Properties.ShowTime = False
      TabOrder = 4
      Width = 121
    end
    object txt_CFEndDate: TcxDBDateEdit
      Tag = 100
      Left = 507
      Top = 35
      DataBinding.DataField = 'CFENDDATE'
      DataBinding.DataSource = dsMaster
      Enabled = False
      Properties.SaveTime = False
      Properties.ShowTime = False
      TabOrder = 5
      Width = 148
    end
    object txt_CFBaseStatus: TcxDBTextEdit
      Left = 717
      Top = 35
      DataBinding.DataField = 'CFBaseStatus'
      DataBinding.DataSource = dsMaster
      Enabled = False
      TabOrder = 6
      Width = 148
    end
    object txt_CFDec: TcxDBTextEdit
      Left = 70
      Top = 87
      DataBinding.DataField = 'CFDEC'
      DataBinding.DataSource = dsMaster
      TabOrder = 7
      Width = 796
    end
    object CFCompanyName: TcxTextEdit
      Left = 70
      Top = 35
      Enabled = False
      TabOrder = 8
      Text = 'CFCompanyName'
      Width = 121
    end
    object txt_CfbrandName: TcxDBButtonEdit
      Left = 70
      Top = 61
      DataBinding.DataField = 'CfbrandName'
      DataBinding.DataSource = dsMaster
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ClickKey = 118
      Properties.OnButtonClick = txt_CfbrandNamePropertiesButtonClick
      TabOrder = 9
      OnKeyPress = txt_CfbrandNameKeyPress
      Width = 121
    end
    object txt_FDescription: TcxDBTextEdit
      Left = 507
      Top = 61
      DataBinding.DataField = 'FDescription'
      DataBinding.DataSource = dsMaster
      TabOrder = 10
      Width = 359
    end
    object txt_CFSettleYearMonth: TcxDBTextEdit
      Left = 288
      Top = 61
      DataBinding.DataField = 'CFSETTLEYEARMONTH'
      DataBinding.DataSource = dsMaster
      Enabled = False
      TabOrder = 11
      Width = 121
    end
    object txt_CFTotalQty: TcxDBCalcEdit
      Left = 70
      Top = 120
      DataBinding.DataField = 'CFTotalQty'
      DataBinding.DataSource = dsMaster
      Enabled = False
      TabOrder = 12
      Width = 121
    end
    object txt_CFDeductPoint: TcxDBCalcEdit
      Left = 717
      Top = 120
      DataBinding.DataField = 'CFDEDUCTPOINT'
      DataBinding.DataSource = dsMaster
      Enabled = False
      TabOrder = 13
      Width = 149
    end
    object txt_CFpaymentTotal: TcxDBCurrencyEdit
      Left = 288
      Top = 120
      DataBinding.DataField = 'CFPAYMENTTOTAL'
      DataBinding.DataSource = dsMaster
      Enabled = False
      TabOrder = 14
      Width = 121
    end
    object txt_CFbalanceTotal: TcxDBCurrencyEdit
      Left = 507
      Top = 120
      DataBinding.DataField = 'CFBALANCETOTAL'
      DataBinding.DataSource = dsMaster
      Enabled = False
      TabOrder = 15
      Width = 148
    end
    object txt_CFYS_total: TcxDBCurrencyEdit
      Left = 70
      Top = 144
      DataBinding.DataField = 'CFYS_TOTAL'
      DataBinding.DataSource = dsMaster
      Enabled = False
      TabOrder = 16
      Width = 121
    end
    object txt_CFAdjust_total: TcxDBCurrencyEdit
      Left = 288
      Top = 144
      DataBinding.DataField = 'CFADJUST_TOTAL'
      DataBinding.DataSource = dsMaster
      TabOrder = 17
      Width = 121
    end
    object txt_CFFact_total: TcxDBCurrencyEdit
      Left = 717
      Top = 144
      DataBinding.DataField = 'CFFACT_TOTAL'
      DataBinding.DataSource = dsMaster
      Enabled = False
      TabOrder = 18
      Width = 149
    end
    object txt_OtherAmount: TcxCurrencyEdit
      Left = 507
      Top = 144
      EditValue = 0.000000000000000000
      Enabled = False
      Properties.Alignment.Horz = taRightJustify
      TabOrder = 19
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
      Width = 148
    end
  end
  object Panel2: TPanel [2]
    Left = 0
    Top = 226
    Width = 1036
    Height = 362
    Align = alClient
    Color = 16511980
    TabOrder = 6
    object EntryPage: TcxPageControl
      Left = 1
      Top = 1
      Width = 1034
      Height = 360
      ActivePage = cxTabSheet1
      Align = alClient
      Style = 10
      TabOrder = 0
      ClientRectBottom = 360
      ClientRectRight = 1034
      ClientRectTop = 18
      object cxTabSheet1: TcxTabSheet
        Caption = #38144#21806#26126#32454
        ImageIndex = 0
        object cxGrid1: TcxGrid
          Left = 0
          Top = 0
          Width = 1034
          Height = 342
          Align = alClient
          TabOrder = 0
          LookAndFeel.Kind = lfOffice11
          object cxGridEntry: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = dsDetail
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.DataRowHeight = 22
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.HeaderHeight = 22
            OptionsView.Indicator = True
            object cxGridEntryFSEQ: TcxGridDBColumn
              DataBinding.FieldName = 'FSEQ'
              Visible = False
              Width = 80
            end
            object cxGridEntryFID: TcxGridDBColumn
              DataBinding.FieldName = 'FID'
              Visible = False
              Width = 80
            end
            object cxGridEntryFPARENTID: TcxGridDBColumn
              DataBinding.FieldName = 'FPARENTID'
              Visible = False
              Width = 80
            end
            object cxGridEntryCFRETAILBILL_NUM: TcxGridDBColumn
              DataBinding.FieldName = 'CFRETAILBILL_NUM'
              Width = 80
            end
            object cxGridEntryCFRETAILBILL_ID: TcxGridDBColumn
              DataBinding.FieldName = 'CFRETAILBILL_ID'
              Visible = False
              Width = 80
            end
            object cxGridEntryCFMATERIALID: TcxGridDBColumn
              DataBinding.FieldName = 'CFMATERIALID'
              Visible = False
              Width = 80
            end
            object cxGridEntryCFMATERIALNAME: TcxGridDBColumn
              DataBinding.FieldName = 'CFMATERIALNAME'
              Visible = False
              Width = 80
            end
            object cxGridEntryCFCOLORID: TcxGridDBColumn
              DataBinding.FieldName = 'CFCOLORID'
              Visible = False
              Width = 80
            end
            object cxGridEntryCFSIZEID: TcxGridDBColumn
              DataBinding.FieldName = 'CFSIZEID'
              Visible = False
              Width = 80
            end
            object cxGridEntryCFCUPID: TcxGridDBColumn
              DataBinding.FieldName = 'CFCUPID'
              Visible = False
              Width = 80
            end
            object cxGridEntryCFASSTATTRVALUEID: TcxGridDBColumn
              DataBinding.FieldName = 'CFASSTATTRVALUEID'
              Visible = False
              Width = 80
            end
            object cxGridEntryCFPAYMENTTOTAL: TcxGridDBColumn
              DataBinding.FieldName = 'CFPAYMENTTOTAL'
              Width = 80
            end
            object cxGridEntrySPTNAME: TcxGridDBColumn
              DataBinding.FieldName = 'SPTNAME'
              Width = 80
            end
            object cxGridEntryCFAGIOPOINT: TcxGridDBColumn
              DataBinding.FieldName = 'CFAGIOPOINT'
              Width = 80
            end
            object cxGridEntryCFBALANCETOTAL: TcxGridDBColumn
              DataBinding.FieldName = 'CFBALANCETOTAL'
              Width = 80
            end
            object cxGridEntryMATERIALNUMBER: TcxGridDBColumn
              DataBinding.FieldName = 'MATERIALNUMBER'
              Width = 80
            end
            object cxGridEntryMATERIALNAME: TcxGridDBColumn
              DataBinding.FieldName = 'MATERIALNAME'
              Width = 80
            end
            object cxGridEntryCOLORNUMBER: TcxGridDBColumn
              DataBinding.FieldName = 'COLORNUMBER'
              Width = 80
            end
            object cxGridEntryCOLORNAME: TcxGridDBColumn
              DataBinding.FieldName = 'COLORNAME'
              Width = 80
            end
            object cxGridEntrySIZENAME: TcxGridDBColumn
              DataBinding.FieldName = 'SIZENAME'
              Width = 45
            end
            object cxGridEntryCUPNAME: TcxGridDBColumn
              DataBinding.FieldName = 'CUPNAME'
              Width = 41
            end
            object cxGridEntryCFQTY: TcxGridDBColumn
              DataBinding.FieldName = 'CFQTY'
              Width = 80
            end
            object cxGridEntryCFRETAILPRICE: TcxGridDBColumn
              DataBinding.FieldName = 'CFRETAILPRICE'
              Width = 80
            end
            object cxGridEntryCFRETAILTOTAL: TcxGridDBColumn
              DataBinding.FieldName = 'CFRETAILTOTAL'
              Width = 80
            end
            object cxGridEntryCFAGIO: TcxGridDBColumn
              DataBinding.FieldName = 'CFAGIO'
              Width = 55
            end
            object cxGridEntryCFAGIOPRICE: TcxGridDBColumn
              DataBinding.FieldName = 'CFAGIOPRICE'
              Width = 71
            end
            object cxGridEntryCFAGIOTYPEID: TcxGridDBColumn
              DataBinding.FieldName = 'CFAGIOTYPEID'
              Visible = False
              Width = 80
            end
            object cxGridEntryCFSALEMANID: TcxGridDBColumn
              DataBinding.FieldName = 'CFSALEMANID'
              Visible = False
              Width = 80
            end
            object cxGridEntryCFAGIOTOTAL: TcxGridDBColumn
              DataBinding.FieldName = 'CFAGIOTOTAL'
              Width = 80
            end
            object cxGridEntryCFSALEDATE: TcxGridDBColumn
              DataBinding.FieldName = 'CFSALEDATE'
              Width = 101
            end
            object cxGridEntryPERSONNAME: TcxGridDBColumn
              DataBinding.FieldName = 'PERSONNAME'
              Width = 80
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = cxGridEntry
          end
        end
      end
      object cxTabSheet2: TcxTabSheet
        Caption = #20854#23427#36153#29992
        ImageIndex = 1
        object cxGrid2: TcxGrid
          Left = 0
          Top = 0
          Width = 945
          Height = 335
          Align = alClient
          TabOrder = 0
          LookAndFeel.Kind = lfOffice11
          object cxGridExecItem: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = dsExes
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Kind = skSum
                FieldName = 'CFTOTAL'
                Column = cxGridExecItemCFTOTAL
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
            object cxGridExecItemFID: TcxGridDBColumn
              DataBinding.FieldName = 'FID'
              Visible = False
              Options.Editing = False
              Width = 80
            end
            object cxGridExecItemFSEQ: TcxGridDBColumn
              DataBinding.FieldName = 'FSEQ'
              Visible = False
              Options.Editing = False
              Width = 80
            end
            object cxGridExecItemFPARENTID: TcxGridDBColumn
              DataBinding.FieldName = 'FPARENTID'
              Visible = False
              Options.Editing = False
              Width = 80
            end
            object cxGridExecItemCFSEQ: TcxGridDBColumn
              DataBinding.FieldName = 'CFSEQ'
              Visible = False
              Options.Editing = False
              Width = 80
            end
            object cxGridExecItemCFExecItemName: TcxGridDBColumn
              DataBinding.FieldName = 'CFExecItemName'
              PropertiesClassName = 'TcxButtonEditProperties'
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.ClickKey = 118
              Properties.OnButtonClick = cxGridExecItemCFExecItemNamePropertiesButtonClick
              Width = 127
            end
            object cxGridExecItemCFADD_DEC_TYPE: TcxGridDBColumn
              DataBinding.FieldName = 'CFADD_DEC_TYPE'
              PropertiesClassName = 'TcxComboBoxProperties'
              Properties.DropDownListStyle = lsFixedList
              Properties.Items.Strings = (
                '-'
                '+')
              Width = 80
            end
            object cxGridExecItemCFQTY: TcxGridDBColumn
              DataBinding.FieldName = 'CFQTY'
              Width = 80
            end
            object cxGridExecItemCFPRICE: TcxGridDBColumn
              DataBinding.FieldName = 'CFPRICE'
              Width = 81
            end
            object cxGridExecItemCFTOTAL: TcxGridDBColumn
              DataBinding.FieldName = 'CFTOTAL'
              Options.Editing = False
              Width = 149
            end
            object cxGridExecItemCFEXECITEMID: TcxGridDBColumn
              DataBinding.FieldName = 'CFEXECITEMID'
              Visible = False
              Options.Editing = False
              Width = 80
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = cxGridExecItem
          end
        end
        object Panel3: TPanel
          Left = 945
          Top = 0
          Width = 81
          Height = 335
          Align = alRight
          Color = 16511980
          TabOrder = 1
          object btn_NewRow: TSpeedButton
            Left = 3
            Top = 7
            Width = 75
            Height = 24
            Caption = #26032#22686#34892
            Flat = True
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00087B0800087B0800FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00087B080073FFA50008A51800087B
              0800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00087B080073FFA50008AD1800087B
              0800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00087B080073FFA50008AD1800087B
              0800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00087B080073FFA50010AD1800087B
              0800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00087B0800087B0800087B0800087B0800087B080073FFA50018B52900087B
              0800087B0800087B0800087B0800087B0800FFFFFF00FFFFFF00FFFFFF00087B
              080073FFA50052E784004ADE730042D66B0031CE520029BD420021B5310018B5
              310010AD210008AD180008AD180008A51800087B0800FFFFFF00FFFFFF00087B
              080073FFA50073FFA50073FFA50073FFA50073FFA50073FFA50029BD4A0073FF
              A50073FFA50073FFA50073FFA50073FFA500087B0800FFFFFF00FFFFFF00FFFF
              FF00087B0800087B0800087B0800087B0800087B080073FFA50039CE5A00087B
              0800087B0800087B0800087B0800087B0800FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00087B080073FFA5004ADE7300087B
              0800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00087B080073FFA50052E78400087B
              0800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00087B080073FFA50063F79400087B
              0800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00087B080073FFA50073FFA500087B
              0800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00087B0800087B0800FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
            OnClick = btn_NewRowClick
          end
          object btn_DelRow: TSpeedButton
            Left = 3
            Top = 34
            Width = 75
            Height = 24
            Caption = #21024#38500#34892
            Flat = True
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF000000A5000000A5000000A5000000A5000000A5000000A5000000
              A5000000A5000000A5000000A500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF000000A5005A84FF000021FF000031FF000031FF000029F7000029EF000029
              E7000031DE000031D6000031CE000000A500FFFFFF00FFFFFF00FFFFFF00FFFF
              FF000000A500ADC6FF006384FF00638CFF00638CFF006384FF006384F7006384
              F700527BEF004A73E7004A73E7000000A500FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF000000A5000000A5000000A5000000A5000000A5000000A5000000
              A5000000A5000000A5000000A500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
            OnClick = btn_DelRowClick
          end
        end
      end
      object cxTabSheet3: TcxTabSheet
        Caption = #35745#31639#20844#24335#35828#26126
        ImageIndex = 2
        object Label25: TLabel
          Left = 8
          Top = 24
          Width = 577
          Height = 177
          AutoSize = False
          Caption = 
            '1'#12289#25187#28857#29575'%  = ('#25187#28857#37329#39069' / '#38144#21806#23454#25910#37329#39069')*100'#13#10#13#10'2'#12289#24212#25910#37329#39069' =  '#38144#21806#23454#25910#37329#39069' - '#25187#28857#37329#39069#13#10#13#10'3'#12289#23454#32467 +
            #37329#39069' = '#24212#25910#37329#39069' - '#35843#25972#37329#39069' - '#20854#23427#36153#29992
          Transparent = True
          WordWrap = True
        end
      end
    end
  end
  inherited ImageListMainForm: TImageList
    Left = 912
    Top = 0
  end
  inherited actlst1: TActionList
    Top = 336
    inherited actSaveBill: TAction
      OnExecute = actSaveBillExecute
    end
    inherited actAudit: TAction
      OnExecute = actAuditExecute
    end
    inherited actUnAudit: TAction
      OnExecute = actUnAuditExecute
    end
    inherited actPush: TAction
      Caption = #29983#25104#20973#35777
    end
  end
  inherited dxBarManager1: TdxBarManager
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    Left = 808
    Top = 7
    DockControlHeights = (
      0
      0
      53
      0)
    inherited dxBarManager1Bar2: TdxBar
      ItemLinks = <
        item
          UserDefine = [udPaintStyle]
          UserPaintStyle = psCaptionGlyph
          Visible = True
          ItemName = 'dxBarbtnEdit'
        end
        item
          UserDefine = [udPaintStyle]
          UserPaintStyle = psCaptionGlyph
          Visible = True
          ItemName = 'btn_Save'
        end
        item
          UserDefine = [udPaintStyle]
          UserPaintStyle = psCaptionGlyph
          Visible = True
          ItemName = 'btn_DelBill'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem1'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarBtnFirst'
        end
        item
          Visible = True
          ItemName = 'dxBarBtnPrior'
        end
        item
          Visible = True
          ItemName = 'dxBarbtnNext'
        end
        item
          Visible = True
          ItemName = 'dxBarbtnlast'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarbtnDown'
        end
        item
          UserDefine = [udPaintStyle]
          UserPaintStyle = psCaptionGlyph
          Visible = True
          ItemName = 'dxbarbtnPush'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_Print'
        end
        item
          BeginGroup = True
          UserDefine = [udPaintStyle]
          UserPaintStyle = psCaptionGlyph
          Visible = True
          ItemName = 'dxBarButton9'
        end>
    end
    inherited dxBarSubItem8: TdxBarSubItem
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_Save'
        end
        item
          Visible = True
          ItemName = 'btn_DelBill'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_Audit'
        end
        item
          Visible = True
          ItemName = 'btn_uAudit'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_Print'
        end>
    end
  end
  inherited cdsMaster: TClientDataSet
    OnCalcFields = cdsMasterCalcFields
    Left = 112
    Top = 328
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
    object cdsMasterFCONTROLUNITID: TWideStringField
      FieldName = 'FCONTROLUNITID'
      Size = 44
    end
    object cdsMasterFNUMBER: TWideStringField
      FieldName = 'FNUMBER'
      Size = 160
    end
    object cdsMasterFBIZDATE: TDateTimeField
      FieldName = 'FBIZDATE'
    end
    object cdsMasterFHANDLERID: TWideStringField
      FieldName = 'FHANDLERID'
      Size = 44
    end
    object cdsMasterFDESCRIPTION: TWideStringField
      FieldName = 'FDESCRIPTION'
      Size = 160
    end
    object cdsMasterFHASEFFECTED: TFloatField
      FieldName = 'FHASEFFECTED'
    end
    object cdsMasterFAUDITORID: TWideStringField
      FieldName = 'FAUDITORID'
      Size = 44
    end
    object cdsMasterFSOURCEBILLID: TWideStringField
      FieldName = 'FSOURCEBILLID'
      Size = 160
    end
    object cdsMasterFSOURCEFUNCTION: TWideStringField
      FieldName = 'FSOURCEFUNCTION'
      Size = 160
    end
    object cdsMasterFID: TWideStringField
      FieldName = 'FID'
      Size = 44
    end
    object cdsMasterFFIVOUCHERED: TFloatField
      FieldName = 'FFIVOUCHERED'
    end
    object cdsMasterCFSALEORGUNITID: TWideStringField
      FieldName = 'CFSALEORGUNITID'
      Size = 44
    end
    object cdsMasterCFSTOREID: TWideStringField
      FieldName = 'CFSTOREID'
      Size = 44
    end
    object cdsMasterCFSTOREORGUNITID: TWideStringField
      FieldName = 'CFSTOREORGUNITID'
      Size = 44
    end
    object cdsMasterCFCUSTOMERSETTLEID: TWideStringField
      FieldName = 'CFCUSTOMERSETTLEID'
      Size = 44
    end
    object cdsMasterCFBEGINDATE: TDateTimeField
      FieldName = 'CFBEGINDATE'
    end
    object cdsMasterCFENDDATE: TDateTimeField
      FieldName = 'CFENDDATE'
    end
    object cdsMasterCFDEC: TWideStringField
      FieldName = 'CFDEC'
      Size = 200
    end
    object cdsMasterCFYS_TOTAL: TFloatField
      FieldName = 'CFYS_TOTAL'
    end
    object cdsMasterCFADJUST_TOTAL: TFloatField
      FieldName = 'CFADJUST_TOTAL'
      OnValidate = cdsMasterCFADJUST_TOTALValidate
    end
    object cdsMasterCFFACT_TOTAL: TFloatField
      FieldName = 'CFFACT_TOTAL'
    end
    object cdsMasterCFSETTLEYEARMONTH: TWideStringField
      FieldName = 'CFSETTLEYEARMONTH'
      Size = 200
    end
    object cdsMasterCFBASESTATUS: TWideStringField
      FieldName = 'CFBASESTATUS'
      OnGetText = cdsMasterCFBASESTATUSGetText
      Size = 100
    end
    object cdsMasterCFCOMPANYORGID: TWideStringField
      FieldName = 'CFCOMPANYORGID'
      Size = 44
    end
    object cdsMasterCFBALANCETOTAL: TFloatField
      FieldName = 'CFBALANCETOTAL'
    end
    object cdsMasterCFPAYMENTTOTAL: TFloatField
      FieldName = 'CFPAYMENTTOTAL'
    end
    object cdsMasterCFAUDITDATE: TDateTimeField
      FieldName = 'CFAUDITDATE'
    end
    object cdsMasterCFTOTALQTY: TFloatField
      FieldName = 'CFTOTALQTY'
    end
    object cdsMasterCFDEDUCTPOINT: TFloatField
      FieldName = 'CFDEDUCTPOINT'
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
    object cdsMasterCFCustName: TStringField
      FieldKind = fkCalculated
      FieldName = 'CFCustName'
      Size = 80
      Calculated = True
    end
    object cdsMasterCfbrandName: TStringField
      FieldKind = fkCalculated
      FieldName = 'CfbrandName'
      Size = 80
      Calculated = True
    end
    object cdsMasterwarehouseName: TStringField
      FieldKind = fkCalculated
      FieldName = 'warehouseName'
      Size = 80
      Calculated = True
    end
    object cdsMastercfbrandid: TWideStringField
      FieldName = 'cfbrandid'
      Size = 60
    end
  end
  inherited dsMaster: TDataSource
    Left = 176
    Top = 328
  end
  inherited cdsDetail: TClientDataSet
    Left = 104
    Top = 392
    object cdsDetailFSEQ: TFloatField
      FieldName = 'FSEQ'
    end
    object cdsDetailFID: TWideStringField
      FieldName = 'FID'
      Size = 44
    end
    object cdsDetailFPARENTID: TWideStringField
      FieldName = 'FPARENTID'
      Size = 44
    end
    object cdsDetailCFRETAILBILL_NUM: TWideStringField
      DisplayLabel = #38646#21806#21333#21495
      FieldName = 'CFRETAILBILL_NUM'
      Size = 200
    end
    object cdsDetailCFRETAILBILL_ID: TWideStringField
      FieldName = 'CFRETAILBILL_ID'
      Size = 200
    end
    object cdsDetailCFMATERIALID: TWideStringField
      FieldName = 'CFMATERIALID'
      Size = 44
    end
    object cdsDetailCFMATERIALNAME: TWideStringField
      FieldName = 'CFMATERIALNAME'
      Size = 300
    end
    object cdsDetailCFCOLORID: TWideStringField
      FieldName = 'CFCOLORID'
      Size = 44
    end
    object cdsDetailCFSIZEID: TWideStringField
      FieldName = 'CFSIZEID'
      Size = 44
    end
    object cdsDetailCFCUPID: TWideStringField
      FieldName = 'CFCUPID'
      Size = 44
    end
    object cdsDetailCFASSTATTRVALUEID: TWideStringField
      FieldName = 'CFASSTATTRVALUEID'
      Size = 44
    end
    object cdsDetailCFQTY: TFloatField
      DisplayLabel = #25968#37327
      FieldName = 'CFQTY'
    end
    object cdsDetailCFRETAILPRICE: TFloatField
      DisplayLabel = #38646#21806#20215
      FieldName = 'CFRETAILPRICE'
    end
    object cdsDetailCFRETAILTOTAL: TFloatField
      DisplayLabel = #38646#21806#20215#37329#39069
      FieldName = 'CFRETAILTOTAL'
    end
    object cdsDetailCFAGIO: TFloatField
      DisplayLabel = #25240#25187'%'
      FieldName = 'CFAGIO'
    end
    object cdsDetailCFAGIOPRICE: TFloatField
      DisplayLabel = #25240#21518#21333#20215
      FieldName = 'CFAGIOPRICE'
    end
    object cdsDetailCFAGIOTYPEID: TWideStringField
      FieldName = 'CFAGIOTYPEID'
      Size = 44
    end
    object cdsDetailCFAGIOPOINT: TFloatField
      DisplayLabel = #25187#28857
      FieldName = 'CFAGIOPOINT'
    end
    object cdsDetailCFBALANCETOTAL: TFloatField
      DisplayLabel = #25187#28857#37329#39069
      FieldName = 'CFBALANCETOTAL'
    end
    object cdsDetailCFSALEDATE: TDateTimeField
      DisplayLabel = #38144#21806#26085#26399
      FieldName = 'CFSALEDATE'
    end
    object cdsDetailCFSALEMANID: TWideStringField
      FieldName = 'CFSALEMANID'
      Size = 44
    end
    object cdsDetailCFAGIOTOTAL: TFloatField
      DisplayLabel = #25240#21518#37329#39069
      FieldName = 'CFAGIOTOTAL'
    end
    object cdsDetailCFPAYMENTTOTAL: TFloatField
      DisplayLabel = #38144#21806#23454#25910
      FieldName = 'CFPAYMENTTOTAL'
    end
    object cdsDetailMATERIALNUMBER: TWideStringField
      DisplayLabel = #29289#26009#32534#21495
      FieldName = 'MATERIALNUMBER'
      Size = 80
    end
    object cdsDetailMATERIALNAME: TWideStringField
      DisplayLabel = #29289#26009#21517#31216
      FieldName = 'MATERIALNAME'
      Size = 510
    end
    object cdsDetailCOLORNUMBER: TWideStringField
      DisplayLabel = #39068#33394#32534#21495
      FieldName = 'COLORNUMBER'
      Size = 80
    end
    object cdsDetailCOLORNAME: TWideStringField
      DisplayLabel = #39068#33394#21517#31216
      FieldName = 'COLORNAME'
      Size = 510
    end
    object cdsDetailSIZENAME: TWideStringField
      DisplayLabel = #23610#30721
      FieldName = 'SIZENAME'
      Size = 510
    end
    object cdsDetailCUPNAME: TWideStringField
      DisplayLabel = #20869#38271
      FieldName = 'CUPNAME'
      Size = 510
    end
    object cdsDetailSPTNAME: TWideStringField
      DisplayLabel = #25187#28857#31867#22411
      FieldName = 'SPTNAME'
      Size = 510
    end
    object cdsDetailPERSONNAME: TWideStringField
      DisplayLabel = #38144#21806#21592
      FieldName = 'PERSONNAME'
      Size = 160
    end
  end
  inherited dsDetail: TDataSource
    Left = 176
    Top = 400
  end
  object cdsExes: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterPost = cdsExesAfterPost
    AfterDelete = cdsExesAfterDelete
    OnCalcFields = cdsExesCalcFields
    OnNewRecord = cdsExesNewRecord
    Left = 104
    Top = 456
    object cdsExesFID: TWideStringField
      FieldName = 'FID'
      Size = 44
    end
    object cdsExesFSEQ: TFloatField
      FieldName = 'FSEQ'
    end
    object cdsExesFPARENTID: TWideStringField
      FieldName = 'FPARENTID'
      Size = 44
    end
    object cdsExesCFSEQ: TFloatField
      FieldName = 'CFSEQ'
    end
    object cdsExesCFADD_DEC_TYPE: TWideStringField
      DisplayLabel = #31867#22411
      FieldName = 'CFADD_DEC_TYPE'
      Size = 100
    end
    object cdsExesCFQTY: TFloatField
      DisplayLabel = #25968#37327
      FieldName = 'CFQTY'
      OnValidate = cdsExesCFQTYValidate
    end
    object cdsExesCFPRICE: TFloatField
      DisplayLabel = #21333#20215
      FieldName = 'CFPRICE'
      OnValidate = cdsExesCFPRICEValidate
    end
    object cdsExesCFTOTAL: TFloatField
      DisplayLabel = #37329#39069
      FieldName = 'CFTOTAL'
    end
    object cdsExesCFEXECITEMID: TWideStringField
      FieldName = 'CFEXECITEMID'
      Size = 44
    end
    object cdsExesCFExecItemName: TStringField
      DisplayLabel = #36153#29992#31867#22411
      FieldKind = fkCalculated
      FieldName = 'CFExecItemName'
      Size = 80
      Calculated = True
    end
  end
  object dsExes: TDataSource
    DataSet = cdsExes
    Left = 168
    Top = 464
  end
  object cdsExpenseItem: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 504
    Top = 485
  end
end
