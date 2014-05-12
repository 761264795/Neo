inherited TicketRequisitionFrm: TTicketRequisitionFrm
  Left = 201
  Top = 40
  Width = 1049
  Height = 616
  Caption = #24320#31080#36890#30693#21333#32534#36753#30028#38754
  PixelsPerInch = 96
  TextHeight = 12
  inherited p_bt: TPanel
    Top = 547
    Width = 1033
    TabOrder = 6
    inherited cxFCreatorName: TcxDBMaskEdit
      DataBinding.DataField = 'cxFCreatorName'
      DataBinding.DataSource = dsMaster
    end
    inherited cxFCreatorDate: TcxDBMaskEdit
      DataBinding.DataSource = dsMaster
    end
    inherited cxFAUDITORName: TcxDBMaskEdit
      DataBinding.DataField = 'cxFAUDITORName'
      DataBinding.DataSource = dsMaster
    end
    inherited cxFAUDITORdate: TcxDBMaskEdit
      DataBinding.DataField = 'FAUDITDATE'
      DataBinding.DataSource = dsMaster
    end
    inherited cxFmodifieridName: TcxDBMaskEdit
      DataBinding.DataField = 'cxFmodifieridName'
      DataBinding.DataSource = dsMaster
    end
    inherited Fmodificationtime: TcxDBMaskEdit
      DataBinding.DataSource = dsMaster
    end
  end
  object Panel1: TPanel [1]
    Left = 0
    Top = 53
    Width = 1033
    Height = 325
    Align = alTop
    Color = 16511980
    TabOrder = 1
    DesignSize = (
      1033
      325)
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
      Left = 260
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
      Left = 514
      Top = 14
      Width = 88
      Height = 13
      AutoSize = False
      Caption = #32467#31639#24320#22987#26085#26399
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label10: TLabel
      Left = 742
      Top = 14
      Width = 88
      Height = 13
      AutoSize = False
      Caption = #32467#31639#32467#26463#26085#26399
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label11: TLabel
      Left = 260
      Top = 37
      Width = 58
      Height = 13
      AutoSize = False
      Caption = #32463#21150#20154
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
      Top = 37
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
    object Label13: TLabel
      Left = 14
      Top = 60
      Width = 58
      Height = 13
      AutoSize = False
      Caption = #37096#38376
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label14: TLabel
      Left = 514
      Top = 37
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
    object Label15: TLabel
      Left = 742
      Top = 37
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
    object Label16: TLabel
      Left = 14
      Top = 100
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
    object Label17: TLabel
      Left = 14
      Top = 163
      Width = 112
      Height = 13
      AutoSize = False
      Caption = #20195#31649#21830#25187#28857#27604#20363'%'
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label18: TLabel
      Left = 260
      Top = 163
      Width = 112
      Height = 13
      AutoSize = False
      Caption = #20195#31649#21830#25187#28857#37329#39069
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label19: TLabel
      Left = 514
      Top = 163
      Width = 96
      Height = 13
      AutoSize = False
      Caption = #20195#31649#36153#29992#39033#30446
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label20: TLabel
      Left = 260
      Top = 100
      Width = 58
      Height = 13
      AutoSize = False
      Caption = #38144#21806#37329#39069
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label21: TLabel
      Left = 514
      Top = 100
      Width = 80
      Height = 13
      AutoSize = False
      Caption = #38144#21806#36153#29992#39033#30446
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label22: TLabel
      Left = 14
      Top = 139
      Width = 104
      Height = 13
      AutoSize = False
      Caption = #21830#22330#25187#28857#27604#20363'%'
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label23: TLabel
      Left = 260
      Top = 139
      Width = 104
      Height = 13
      AutoSize = False
      Caption = #21830#22330#25187#28857#37329#39069
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label24: TLabel
      Left = 742
      Top = 139
      Width = 104
      Height = 13
      AutoSize = False
      Caption = #25187#28857#21512#35745
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label25: TLabel
      Left = 742
      Top = 101
      Width = 104
      Height = 13
      AutoSize = False
      Caption = #24320#31080#37329#39069
      Font.Charset = GB2312_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label26: TLabel
      Left = 514
      Top = 60
      Width = 104
      Height = 13
      AutoSize = False
      Caption = #21830#22330#25910#21457#31080#26399#38480
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label27: TLabel
      Left = 742
      Top = 60
      Width = 104
      Height = 13
      AutoSize = False
      Caption = #21830#22330#22238#27454#26399#38480
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label28: TLabel
      Left = 14
      Top = 210
      Width = 104
      Height = 13
      AutoSize = False
      Caption = #22238#27454#37329#39069
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label29: TLabel
      Left = 260
      Top = 213
      Width = 104
      Height = 13
      AutoSize = False
      Caption = #21514#29260#20215#37329#39069
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label30: TLabel
      Left = 513
      Top = 214
      Width = 104
      Height = 13
      AutoSize = False
      Caption = #22238#27454#29575'%'
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
      Top = 297
      Width = 104
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
    object Label32: TLabel
      Left = 14
      Top = 254
      Width = 104
      Height = 13
      AutoSize = False
      Caption = #31246#21495
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label33: TLabel
      Left = 14
      Top = 274
      Width = 104
      Height = 13
      AutoSize = False
      Caption = #24320#25143#34892
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label34: TLabel
      Left = 742
      Top = 164
      Width = 104
      Height = 13
      AutoSize = False
      Caption = #24320#31080#25968#37327
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label35: TLabel
      Left = 260
      Top = 254
      Width = 104
      Height = 13
      AutoSize = False
      Caption = #24320#31080#22320#22336
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label36: TLabel
      Left = 260
      Top = 275
      Width = 48
      Height = 13
      AutoSize = False
      Caption = #36134#21495
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label37: TLabel
      Left = 742
      Top = 254
      Width = 104
      Height = 13
      AutoSize = False
      Caption = #30005#35805
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label38: TLabel
      Left = 514
      Top = 274
      Width = 104
      Height = 13
      AutoSize = False
      Caption = #38134#34892
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label39: TLabel
      Left = 742
      Top = 277
      Width = 104
      Height = 13
      AutoSize = False
      Caption = #23545#36134#23454#32467#37329#39069
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label40: TLabel
      Left = 14
      Top = 188
      Width = 106
      Height = 13
      AutoSize = False
      Caption = #22686#21152'('#25110#20914#20943')'#39033#30446
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label41: TLabel
      Left = 742
      Top = 188
      Width = 110
      Height = 13
      AutoSize = False
      Caption = #22686#21152'('#25110#20914#20943')'#37329#39069
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label42: TLabel
      Left = 514
      Top = 138
      Width = 84
      Height = 13
      AutoSize = False
      Caption = #25187#28857#36153#29992#39033#30446
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label43: TLabel
      Left = 260
      Top = 60
      Width = 64
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
    object Bevel1: TBevel
      Left = 18
      Top = 87
      Width = 955
      Height = 2
    end
    object Bevel2: TBevel
      Left = 18
      Top = 239
      Width = 955
      Height = 2
    end
    object Bevel3: TBevel
      Left = 18
      Top = 125
      Width = 957
      Height = 2
    end
    object Label45: TLabel
      Left = 742
      Top = 300
      Width = 79
      Height = 14
      AutoSize = False
      Caption = #20854#23427#36153#29992#21512#35745
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object lb_entrySum: TLabel
      Left = 852
      Top = 300
      Width = 123
      Height = 15
      Anchors = [akLeft, akBottom]
      AutoSize = False
      Caption = '0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object txt_FNumber: TcxDBTextEdit
      Tag = 100
      Left = 123
      Top = 11
      DataBinding.DataField = 'FNumber'
      DataBinding.DataSource = dsMaster
      Properties.ReadOnly = True
      TabOrder = 0
      Width = 121
    end
    object txt_CFIsCreateList: TcxDBCheckBox
      Left = 742
      Top = 211
      Caption = #26159#21542#24320#28165#21333
      DataBinding.DataField = 'CFIsCreateList'
      DataBinding.DataSource = dsMaster
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 1
      Properties.ValueUnchecked = 0
      TabOrder = 29
      Width = 107
    end
    object txt_CFShopSettleStarDate: TcxDBDateEdit
      Tag = 100
      Left = 609
      Top = 11
      DataBinding.DataField = 'CFSHOPSETTLESTARDATE'
      DataBinding.DataSource = dsMaster
      Properties.SaveTime = False
      Properties.ShowTime = False
      TabOrder = 2
      Width = 121
    end
    object txt_CFShopSettleEndDate: TcxDBDateEdit
      Tag = 100
      Left = 851
      Top = 11
      DataBinding.DataField = 'CFSHOPSETTLEENDDATE'
      DataBinding.DataSource = dsMaster
      Properties.SaveTime = False
      Properties.ShowTime = False
      TabOrder = 3
      Width = 121
    end
    object txt_FBizDate: TcxDBDateEdit
      Tag = 100
      Left = 360
      Top = 11
      DataBinding.DataField = 'FBIZDATE'
      DataBinding.DataSource = dsMaster
      Properties.SaveTime = False
      Properties.ShowTime = False
      TabOrder = 1
      Width = 121
    end
    object txt_CFShopTicketDate: TcxDBDateEdit
      Left = 609
      Top = 57
      DataBinding.DataField = 'CFSHOPTICKETDATE'
      DataBinding.DataSource = dsMaster
      Properties.SaveTime = False
      Properties.ShowTime = False
      TabOrder = 10
      Width = 121
    end
    object txt_CFShopBackDate: TcxDBDateEdit
      Left = 851
      Top = 57
      DataBinding.DataField = 'CFSHOPBACKDATE'
      DataBinding.DataSource = dsMaster
      Properties.SaveTime = False
      Properties.ShowTime = False
      TabOrder = 11
      Width = 121
    end
    object txt_CFManagerName: TcxDBButtonEdit
      Left = 360
      Top = 34
      DataBinding.DataField = 'CFManagerName'
      DataBinding.DataSource = dsMaster
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ClickKey = 118
      Properties.OnButtonClick = txt_CFManagerNamePropertiesButtonClick
      TabOrder = 5
      OnKeyPress = txt_CFManagerNameKeyPress
      Width = 121
    end
    object txt_CFDeptName: TcxDBButtonEdit
      Left = 123
      Top = 57
      DataBinding.DataField = 'CFDeptName'
      DataBinding.DataSource = dsMaster
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ClickKey = 118
      Properties.OnButtonClick = txt_CFDeptNamePropertiesButtonClick
      TabOrder = 8
      OnKeyPress = txt_CFDeptNameKeyPress
      Width = 121
    end
    object txt_CFCustName: TcxDBButtonEdit
      Tag = 100
      Left = 123
      Top = 97
      DataBinding.DataField = 'CFCustName'
      DataBinding.DataSource = dsMaster
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ClickKey = 118
      Properties.OnButtonClick = txt_CFCustNamePropertiesButtonClick
      TabOrder = 12
      OnKeyPress = txt_CFCustNameKeyPress
      Width = 121
    end
    object txt_CFFeeProjectName: TcxDBButtonEdit
      Tag = 100
      Left = 609
      Top = 97
      DataBinding.DataField = 'CFFeeProjectName'
      DataBinding.DataSource = dsMaster
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ClickKey = 118
      Properties.OnButtonClick = txt_CFFeeProjectNamePropertiesButtonClick
      TabOrder = 14
      OnKeyPress = txt_CFFeeProjectNameKeyPress
      Width = 121
    end
    object txt_CFFeeProject1Name: TcxDBButtonEdit
      Left = 609
      Top = 135
      DataBinding.DataField = 'CFFeeProject1Name'
      DataBinding.DataSource = dsMaster
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ClickKey = 118
      Properties.OnButtonClick = txt_CFFeeProject1NamePropertiesButtonClick
      TabOrder = 19
      OnKeyPress = txt_CFFeeProject1NameKeyPress
      Width = 121
    end
    object txt_CFFeeProject2Name: TcxDBButtonEdit
      Left = 609
      Top = 160
      DataBinding.DataField = 'CFFeeProject2Name'
      DataBinding.DataSource = dsMaster
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ClickKey = 118
      Properties.OnButtonClick = txt_CFFeeProject2NamePropertiesButtonClick
      TabOrder = 22
      OnKeyPress = txt_CFFeeProject2NameKeyPress
      Width = 121
    end
    object txt_CFSaleAmount: TcxDBCurrencyEdit
      Tag = 100
      Left = 360
      Top = 97
      DataBinding.DataField = 'CFSALEAMOUNT'
      DataBinding.DataSource = dsMaster
      TabOrder = 13
      Width = 121
    end
    object txt_CFAddSubProjectAmount: TcxDBCurrencyEdit
      Left = 851
      Top = 185
      DataBinding.DataField = 'CFADDSUBPROJECTAMOUNT'
      DataBinding.DataSource = dsMaster
      TabOrder = 25
      Width = 121
    end
    object txt_CFSubtactAmount: TcxDBCurrencyEdit
      Left = 360
      Top = 160
      DataBinding.DataField = 'CFSUBTACTAMOUNT'
      DataBinding.DataSource = dsMaster
      TabOrder = 21
      Width = 122
    end
    object txt_CFShopSubtactAmount: TcxDBCurrencyEdit
      Left = 360
      Top = 136
      DataBinding.DataField = 'CFSHOPSUBTACTAMOUNT'
      DataBinding.DataSource = dsMaster
      TabOrder = 17
      Width = 121
    end
    object txt_CFTicketAmount: TcxDBCurrencyEdit
      Tag = 100
      Left = 851
      Top = 98
      DataBinding.DataField = 'CFTICKETAMOUNT'
      DataBinding.DataSource = dsMaster
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clRed
      Style.Font.Height = -12
      Style.Font.Name = #23435#20307
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 15
      Width = 121
    end
    object txt_CFBackAmount: TcxDBCurrencyEdit
      Left = 123
      Top = 207
      DataBinding.DataField = 'CFBACKAMOUNT'
      DataBinding.DataSource = dsMaster
      Enabled = False
      TabOrder = 26
      Width = 121
    end
    object txt_CFDpAmount: TcxDBCurrencyEdit
      Left = 360
      Top = 209
      DataBinding.DataField = 'CFDPAMOUNT'
      DataBinding.DataSource = dsMaster
      Enabled = False
      TabOrder = 27
      Width = 121
    end
    object txt_CFSettlementAmount: TcxDBCurrencyEdit
      Left = 851
      Top = 271
      DataBinding.DataField = 'CFSETTLEMENTAMOUNT'
      DataBinding.DataSource = dsMaster
      TabOrder = 36
      Width = 121
    end
    object txt_CFSubtactSum: TcxDBCurrencyEdit
      Left = 850
      Top = 136
      DataBinding.DataField = 'CFSUBTACTSUM'
      DataBinding.DataSource = dsMaster
      TabOrder = 18
      Width = 121
    end
    object txt_CFShopSubtactScale: TcxDBCalcEdit
      Left = 123
      Top = 136
      DataBinding.DataField = 'CFSHOPSUBTACTSCALE'
      DataBinding.DataSource = dsMaster
      TabOrder = 16
      Width = 121
    end
    object txt_CFQty: TcxDBCurrencyEdit
      Left = 851
      Top = 161
      DataBinding.DataField = 'CFQTY'
      DataBinding.DataSource = dsMaster
      Properties.DisplayFormat = '0'
      TabOrder = 23
      Width = 121
    end
    object txt_CFSubtactScale: TcxDBCurrencyEdit
      Left = 123
      Top = 160
      DataBinding.DataField = 'CFSUBTACTSCALE'
      DataBinding.DataSource = dsMaster
      Properties.DisplayFormat = '0.00'
      TabOrder = 20
      Width = 121
    end
    object txt_FDescription: TcxDBTextEdit
      Left = 609
      Top = 34
      DataBinding.DataField = 'FDESCRIPTION'
      DataBinding.DataSource = dsMaster
      TabOrder = 6
      Width = 121
    end
    object txt_CFBillStatus: TcxDBTextEdit
      Left = 851
      Top = 34
      DataBinding.DataField = 'CFBILLSTATUS'
      DataBinding.DataSource = dsMaster
      Enabled = False
      TabOrder = 7
      Width = 121
    end
    object txt_CFAddSubProject: TcxDBTextEdit
      Left = 123
      Top = 184
      DataBinding.DataField = 'CFADDSUBPROJECT'
      DataBinding.DataSource = dsMaster
      TabOrder = 24
      Width = 606
    end
    object txt_FTxRegisterNo: TcxDBTextEdit
      Left = 123
      Top = 248
      DataBinding.DataField = 'FTxRegisterNo'
      DataBinding.DataSource = dsMaster
      Enabled = False
      TabOrder = 30
      Width = 121
    end
    object txt_CFAccountBank: TcxDBTextEdit
      Left = 123
      Top = 271
      DataBinding.DataField = 'CFAccountBank'
      DataBinding.DataSource = dsMaster
      TabOrder = 33
      Width = 121
    end
    object txt_FCustAddress: TcxDBTextEdit
      Left = 360
      Top = 248
      DataBinding.DataField = 'FCustAddress'
      DataBinding.DataSource = dsMaster
      Enabled = False
      TabOrder = 31
      Width = 369
    end
    object txt_CFAccount: TcxDBTextEdit
      Left = 360
      Top = 271
      DataBinding.DataField = 'CFACCOUNT'
      DataBinding.DataSource = dsMaster
      TabOrder = 34
      Width = 121
    end
    object txt_CFTelephone: TcxDBTextEdit
      Left = 851
      Top = 248
      DataBinding.DataField = 'CFTELEPHONE'
      DataBinding.DataSource = dsMaster
      TabOrder = 32
      Width = 121
    end
    object txt_CFBank: TcxDBTextEdit
      Left = 609
      Top = 271
      DataBinding.DataField = 'CFBank'
      DataBinding.DataSource = dsMaster
      TabOrder = 35
      Width = 121
    end
    object txt_CfbrandName: TcxDBButtonEdit
      Left = 360
      Top = 57
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
    object txt_CFRemark: TcxDBTextEdit
      Left = 123
      Top = 294
      DataBinding.DataField = 'CFREMARK'
      DataBinding.DataSource = dsMaster
      TabOrder = 37
      Width = 607
    end
    object txt_CFBackRate: TcxDBCurrencyEdit
      Left = 609
      Top = 209
      DataBinding.DataField = 'CFBACKRATE'
      DataBinding.DataSource = dsMaster
      Enabled = False
      TabOrder = 28
      Width = 121
    end
    object CFCompanyName: TcxTextEdit
      Left = 123
      Top = 34
      Enabled = False
      TabOrder = 4
      Text = 'CFCompanyName'
      Width = 121
    end
    object cxDBCheckBox1: TcxDBCheckBox
      Left = 858
      Top = 209
      Caption = #26159#21542#24050#29983#25104#20973#35777
      DataBinding.DataField = 'FFIVOUCHERED'
      DataBinding.DataSource = dsMaster
      Enabled = False
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 1
      Properties.ValueUnchecked = 0
      TabOrder = 38
      Width = 121
    end
  end
  object EntryPage: TcxPageControl [2]
    Left = 0
    Top = 378
    Width = 1033
    Height = 169
    ActivePage = cxTabSheet1
    Align = alClient
    Style = 10
    TabOrder = 3
    ClientRectBottom = 169
    ClientRectRight = 1033
    ClientRectTop = 18
    object cxTabSheet1: TcxTabSheet
      Caption = #20854#23427#36153#29992
      ImageIndex = 0
      object cxGrid1: TcxGrid
        Left = 0
        Top = 0
        Width = 952
        Height = 151
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
          OptionsData.Inserting = False
          OptionsView.DataRowHeight = 22
          OptionsView.GroupByBox = False
          OptionsView.HeaderHeight = 22
          OptionsView.Indicator = True
          object cxGridEntryFSEQ: TcxGridDBColumn
            DataBinding.FieldName = 'FSEQ'
            Visible = False
          end
          object cxGridEntryFID: TcxGridDBColumn
            DataBinding.FieldName = 'FID'
            Visible = False
          end
          object cxGridEntryFPARENTID: TcxGridDBColumn
            DataBinding.FieldName = 'FPARENTID'
            Visible = False
          end
          object cxGridEntryCFFEEPROJECTID: TcxGridDBColumn
            DataBinding.FieldName = 'CFFEEPROJECTID'
            Visible = False
          end
          object cxGridEntryCFFEEPROJECTID_Name: TcxGridDBColumn
            DataBinding.FieldName = 'CFFEEPROJECTID_Name'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.ClickKey = 118
            Properties.OnButtonClick = cxGridEntryCFFEEPROJECTID_NamePropertiesButtonClick
            Width = 151
          end
          object cxGridEntryCFTYPE: TcxGridDBColumn
            DataBinding.FieldName = 'CFTYPE'
            PropertiesClassName = 'TcxComboBoxProperties'
            Properties.DropDownListStyle = lsFixedList
            Properties.Items.Strings = (
              '-'
              '+')
            Width = 81
          end
          object cxGridEntryCFAMOUNT: TcxGridDBColumn
            DataBinding.FieldName = 'CFAMOUNT'
            Width = 145
          end
          object cxGridEntryCFREMARK: TcxGridDBColumn
            DataBinding.FieldName = 'CFREMARK'
            Width = 384
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGridEntry
        end
      end
      object Panel2: TPanel
        Left = 952
        Top = 0
        Width = 81
        Height = 151
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
    object cxTabSheet2: TcxTabSheet
      Caption = #38144#21806#27719#24635#25968#25454
      ImageIndex = 1
      object cxGrid2: TcxGrid
        Left = 0
        Top = 0
        Width = 952
        Height = 151
        Align = alClient
        TabOrder = 0
        LookAndFeel.Kind = lfOffice11
        object cxGridSaleData: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsSaleData
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skSum
              FieldName = 'CFSALEQTY'
              Column = cxGridSaleDataCFSALEQTY
            end
            item
              Kind = skSum
              FieldName = 'CFSALEAMOUNT'
              Column = cxGridSaleDataCFSALEAMOUNT
            end
            item
              Kind = skSum
              FieldName = 'CFDPAMOUNT'
              Column = cxGridSaleDataCFDPAMOUNT
            end>
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
          object cxGridSaleDataFID: TcxGridDBColumn
            DataBinding.FieldName = 'FID'
            Visible = False
          end
          object cxGridSaleDataFSEQ: TcxGridDBColumn
            DataBinding.FieldName = 'FSEQ'
            Visible = False
          end
          object cxGridSaleDataFPARENTID: TcxGridDBColumn
            DataBinding.FieldName = 'FPARENTID'
            Visible = False
          end
          object cxGridSaleDataCFSEQ: TcxGridDBColumn
            DataBinding.FieldName = 'CFSEQ'
            Visible = False
          end
          object cxGridSaleDataCFBRANDID_Name: TcxGridDBColumn
            DataBinding.FieldName = 'CFBRANDID_Name'
            Width = 124
          end
          object cxGridSaleDataCFYearID_Name: TcxGridDBColumn
            DataBinding.FieldName = 'CFYearID_Name'
            Width = 103
          end
          object cxGridSaleDataCFSEASONID_Name: TcxGridDBColumn
            DataBinding.FieldName = 'CFSEASONID_Name'
            Width = 111
          end
          object cxGridSaleDataCFSALEQTY: TcxGridDBColumn
            DataBinding.FieldName = 'CFSALEQTY'
            Width = 138
          end
          object cxGridSaleDataCFSALEAMOUNT: TcxGridDBColumn
            DataBinding.FieldName = 'CFSALEAMOUNT'
            Width = 125
          end
          object cxGridSaleDataCFDPAMOUNT: TcxGridDBColumn
            DataBinding.FieldName = 'CFDPAMOUNT'
            Width = 121
          end
          object cxGridSaleDataCFBRANDID: TcxGridDBColumn
            DataBinding.FieldName = 'CFBRANDID'
            Visible = False
          end
          object cxGridSaleDataCFYEARID: TcxGridDBColumn
            DataBinding.FieldName = 'CFYEARID'
            Visible = False
          end
          object cxGridSaleDataCFSEASONID: TcxGridDBColumn
            DataBinding.FieldName = 'CFSEASONID'
            Visible = False
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridSaleData
        end
      end
      object Panel3: TPanel
        Left = 952
        Top = 0
        Width = 81
        Height = 151
        Align = alRight
        Color = 16511980
        TabOrder = 1
        object btn_RefData: TSpeedButton
          Left = 3
          Top = 7
          Width = 75
          Height = 24
          Caption = #21047#26032
          Flat = True
        end
      end
    end
    object cxTabSheet3: TcxTabSheet
      Caption = #35745#31639#20844#24335#35828#26126
      ImageIndex = 2
      object Label44: TLabel
        Left = 8
        Top = 16
        Width = 553
        Height = 105
        AutoSize = False
        Caption = 
          '1'#12289#24320#31080#37329#39069' = '#38144#21806#37329#39069' - '#25187#28857#21512#35745' '#13#10#13#10'2'#12289#25187#28857#21512#35745' = '#21830#22330#25187#28857#37329#39069' + '#22686#21152'('#25110#20914#20943')'#39033#30446#37329#39069' + '#20195#31649#21830#22330#25187#28857#37329 +
          #39069#13#10#13#10'3'#12289#22238#27454#37329#39069' = '#24320#31080#37329#39069' - '#20854#23427#36153#29992#13#10#13#10'4'#12289#22238#27454#29575'%  = '#22238#27454#37329#39069' / '#21514#29260#37329#39069' * 100'
      end
    end
  end
  inherited STBaseEditDataSet: TClientDataSet
    Left = 840
    Top = 424
  end
  inherited ImageListMainForm: TImageList
    Left = 856
    Top = 16
  end
  inherited actlst1: TActionList
    inherited actNewBill: TAction
      ShortCut = 16462
    end
    inherited actSaveBill: TAction
      OnExecute = actSaveBillExecute
    end
    inherited actAudit: TAction
      OnExecute = actAuditExecute
    end
    inherited actUnAudit: TAction
      OnExecute = actUnAuditExecute
    end
    inherited actPull: TAction
      OnExecute = actPullExecute
    end
    inherited actPush: TAction
      OnExecute = actPushExecute
    end
  end
  inherited dxBarManager1: TdxBarManager
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    Left = 1008
    Top = 79
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
          ItemName = 'barbtnNew'
        end
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
          ItemName = 'dxBarbtnUP'
        end
        item
          Visible = True
          ItemName = 'dxBarbtnDown'
        end
        item
          BeginGroup = True
          UserDefine = [udPaintStyle]
          UserPaintStyle = psCaptionGlyph
          Visible = True
          ItemName = 'Btn_ReceivableBill'
        end
        item
          UserDefine = [udPaintStyle]
          UserPaintStyle = psCaptionGlyph
          Visible = True
          ItemName = 'btn_CreateVoucher'
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
    object Btn_ReceivableBill: TdxBarButton
      Caption = #29983#25104#24212#25910#21333
      Category = 0
      Hint = #29983#25104#24212#25910#21333
      Visible = ivAlways
      ImageIndex = 57
      LargeImageIndex = 57
    end
    object btn_CreateVoucher: TdxBarButton
      Caption = #29983#25104#20973#35777
      Category = 0
      Hint = #29983#25104#20973#35777
      Visible = ivAlways
      ImageIndex = 57
      LargeImageIndex = 57
    end
  end
  inherited cdsMaster: TClientDataSet
    BeforePost = cdsMasterBeforePost
    OnCalcFields = cdsMasterCalcFields
    OnNewRecord = cdsMasterNewRecord
    Left = 64
    Top = 112
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
    object cdsMasterCFAUDITDATE: TDateTimeField
      FieldName = 'CFAUDITDATE'
    end
    object cdsMasterCFCOMPANYID: TWideStringField
      FieldName = 'CFCOMPANYID'
      Size = 44
    end
    object cdsMasterCFSHOPSETTLESTARDATE: TDateTimeField
      FieldName = 'CFSHOPSETTLESTARDATE'
    end
    object cdsMasterCFSHOPSETTLEENDDATE: TDateTimeField
      FieldName = 'CFSHOPSETTLEENDDATE'
    end
    object cdsMasterCFDEPTID: TWideStringField
      FieldName = 'CFDEPTID'
      Size = 44
    end
    object cdsMasterCFMANAGERID: TWideStringField
      FieldName = 'CFMANAGERID'
      Size = 44
    end
    object cdsMasterCFMARKETID: TWideStringField
      FieldName = 'CFMARKETID'
      Size = 44
    end
    object cdsMasterCFSALEAMOUNT: TFloatField
      FieldName = 'CFSALEAMOUNT'
      OnValidate = cdsMasterCFSALEAMOUNTValidate
    end
    object cdsMasterCFSUBTACTAMOUNT: TFloatField
      FieldName = 'CFSUBTACTAMOUNT'
      OnValidate = cdsMasterCFSUBTACTAMOUNTValidate
    end
    object cdsMasterCFADDSUBPROJECTAMOUNT: TWideStringField
      FieldName = 'CFADDSUBPROJECTAMOUNT'
      OnValidate = cdsMasterCFADDSUBPROJECTAMOUNTValidate
      Size = 510
    end
    object cdsMasterCFADDSUBPROJECT: TWideStringField
      FieldName = 'CFADDSUBPROJECT'
      Size = 510
    end
    object cdsMasterCFSHOPSUBTACTAMOUNT: TFloatField
      FieldName = 'CFSHOPSUBTACTAMOUNT'
      OnValidate = cdsMasterCFSHOPSUBTACTAMOUNTValidate
    end
    object cdsMasterCFTICKETAMOUNT: TFloatField
      FieldName = 'CFTICKETAMOUNT'
      OnValidate = cdsMasterCFTICKETAMOUNTValidate
    end
    object cdsMasterCFBACKAMOUNT: TFloatField
      FieldName = 'CFBACKAMOUNT'
      OnValidate = cdsMasterCFBACKAMOUNTValidate
    end
    object cdsMasterCFSHOPTICKETDATE: TDateTimeField
      FieldName = 'CFSHOPTICKETDATE'
    end
    object cdsMasterCFSHOPBACKDATE: TDateTimeField
      FieldName = 'CFSHOPBACKDATE'
    end
    object cdsMasterCFDPAMOUNT: TFloatField
      FieldName = 'CFDPAMOUNT'
      OnValidate = cdsMasterCFDPAMOUNTValidate
    end
    object cdsMasterCFREMARK: TWideStringField
      FieldName = 'CFREMARK'
      Size = 200
    end
    object cdsMasterCFBILLSTATUS: TFloatField
      FieldName = 'CFBILLSTATUS'
      OnGetText = cdsMasterCFBILLSTATUSGetText
    end
    object cdsMasterCFSHOPSUBTACTSCALE: TFloatField
      FieldName = 'CFSHOPSUBTACTSCALE'
    end
    object cdsMasterCFSUBTACTSCALE: TFloatField
      FieldName = 'CFSUBTACTSCALE'
    end
    object cdsMasterCFSUBTACTSUM: TFloatField
      FieldName = 'CFSUBTACTSUM'
      OnValidate = cdsMasterCFSUBTACTSUMValidate
    end
    object cdsMasterCFBACKRATE: TFloatField
      FieldName = 'CFBACKRATE'
    end
    object cdsMasterCFFEEPROJECTID: TWideStringField
      FieldName = 'CFFEEPROJECTID'
      Size = 44
    end
    object cdsMasterCFFEEPROJECT2ID: TWideStringField
      FieldName = 'CFFEEPROJECT2ID'
      Size = 44
    end
    object cdsMasterCFFEEPROJECT1ID: TWideStringField
      FieldName = 'CFFEEPROJECT1ID'
      Size = 44
    end
    object cdsMasterCFACCOUNTBANK: TWideStringField
      FieldName = 'CFACCOUNTBANK'
      Size = 200
    end
    object cdsMasterCFACCOUNT: TWideStringField
      FieldName = 'CFACCOUNT'
      Size = 200
    end
    object cdsMasterCFBANK: TWideStringField
      FieldName = 'CFBANK'
      Size = 200
    end
    object cdsMasterCFQTY: TFloatField
      FieldName = 'CFQTY'
    end
    object cdsMasterCFISCREATELIST: TFloatField
      FieldName = 'CFISCREATELIST'
    end
    object cdsMasterCFTELEPHONE: TWideStringField
      FieldName = 'CFTELEPHONE'
      Size = 200
    end
    object cdsMasterCFSETTLEMENTAMOUNT: TFloatField
      FieldName = 'CFSETTLEMENTAMOUNT'
    end
    object cdsMasterCFBRANDID: TWideStringField
      FieldName = 'CFBRANDID'
      Size = 44
    end
    object cdsMasterFAUDITDATE: TDateTimeField
      FieldName = 'FAUDITDATE'
    end
    object cdsMasterCFManagerName: TStringField
      FieldKind = fkCalculated
      FieldName = 'CFManagerName'
      Size = 80
      Calculated = True
    end
    object cdsMasterCFDeptName: TStringField
      FieldKind = fkCalculated
      FieldName = 'CFDeptName'
      Size = 80
      Calculated = True
    end
    object cdsMasterCfbrandName: TStringField
      FieldKind = fkCalculated
      FieldName = 'CfbrandName'
      Size = 80
      Calculated = True
    end
    object cdsMasterCFCustName: TStringField
      FieldKind = fkCalculated
      FieldName = 'CFCustName'
      Size = 80
      Calculated = True
    end
    object cdsMasterCFFeeProjectName: TStringField
      FieldKind = fkCalculated
      FieldName = 'CFFeeProjectName'
      Size = 80
      Calculated = True
    end
    object cdsMasterCFFeeProject1Name: TStringField
      FieldKind = fkCalculated
      FieldName = 'CFFeeProject1Name'
      Size = 80
      Calculated = True
    end
    object cdsMasterCFFeeProject2Name: TStringField
      FieldKind = fkCalculated
      FieldName = 'CFFeeProject2Name'
      Size = 80
      Calculated = True
    end
    object cdsMastercxFCreatorName: TStringField
      FieldKind = fkCalculated
      FieldName = 'cxFCreatorName'
      Size = 80
      Calculated = True
    end
    object cdsMastercxFAUDITORName: TStringField
      FieldKind = fkCalculated
      FieldName = 'cxFAUDITORName'
      Size = 80
      Calculated = True
    end
    object cdsMastercxFmodifieridName: TStringField
      FieldKind = fkCalculated
      FieldName = 'cxFmodifieridName'
      Size = 80
      Calculated = True
    end
    object cdsMasterFTxRegisterNo: TStringField
      FieldKind = fkCalculated
      FieldName = 'FTxRegisterNo'
      Size = 80
      Calculated = True
    end
    object cdsMasterFCustAddress: TStringField
      FieldKind = fkCalculated
      FieldName = 'FCustAddress'
      Size = 80
      Calculated = True
    end
  end
  inherited dsMaster: TDataSource
    Left = 112
    Top = 112
  end
  inherited cdsDetail: TClientDataSet
    AfterPost = cdsDetailAfterPost
    AfterDelete = cdsDetailAfterDelete
    OnCalcFields = cdsDetailCalcFields
    OnNewRecord = cdsDetailNewRecord
    Left = 64
    Top = 168
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
    object cdsDetailCFFEEPROJECTID: TWideStringField
      FieldName = 'CFFEEPROJECTID'
      Size = 44
    end
    object cdsDetailCFAMOUNT: TFloatField
      DisplayLabel = #37329#39069
      FieldName = 'CFAMOUNT'
    end
    object cdsDetailCFREMARK: TWideStringField
      DisplayLabel = #22791#27880
      FieldName = 'CFREMARK'
      Size = 200
    end
    object cdsDetailCFTYPE: TWideStringField
      DisplayLabel = #31867#22411
      FieldName = 'CFTYPE'
      Size = 100
    end
    object cdsDetailCFFEEPROJECTID_Name: TStringField
      DisplayLabel = #36153#29992#39033#30446
      FieldKind = fkCalculated
      FieldName = 'CFFEEPROJECTID_Name'
      Size = 80
      Calculated = True
    end
  end
  inherited dsDetail: TDataSource
    Left = 104
    Top = 168
  end
  object cdsYear: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 352
    Top = 485
  end
  object cdsSEASON: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 424
    Top = 485
  end
  object cdsSaleData: TClientDataSet
    Aggregates = <>
    Params = <>
    OnNewRecord = cdsSaleDataNewRecord
    Left = 592
    Top = 448
    object cdsSaleDataFID: TWideStringField
      FieldName = 'FID'
      Size = 44
    end
    object cdsSaleDataFSEQ: TFloatField
      FieldName = 'FSEQ'
    end
    object cdsSaleDataFPARENTID: TWideStringField
      FieldName = 'FPARENTID'
      Size = 44
    end
    object cdsSaleDataCFSEQ: TFloatField
      FieldName = 'CFSEQ'
    end
    object cdsSaleDataCFDPAMOUNT: TFloatField
      DisplayLabel = #21514#29260#37329#39069
      FieldName = 'CFDPAMOUNT'
    end
    object cdsSaleDataCFBRANDID: TWideStringField
      FieldName = 'CFBRANDID'
      Size = 44
    end
    object cdsSaleDataCFYEARID: TWideStringField
      FieldName = 'CFYEARID'
      Size = 44
    end
    object cdsSaleDataCFSEASONID: TWideStringField
      FieldName = 'CFSEASONID'
      Size = 44
    end
    object cdsSaleDataCFSALEQTY: TFloatField
      DisplayLabel = #38144#21806#25968#25454
      FieldName = 'CFSALEQTY'
    end
    object cdsSaleDataCFSALEAMOUNT: TFloatField
      DisplayLabel = #38144#21806#37329#39069
      FieldName = 'CFSALEAMOUNT'
    end
    object cdsSaleDataCFYearID_Name: TStringField
      DisplayLabel = #24180#20221
      FieldKind = fkCalculated
      FieldName = 'CFYearID_Name'
      Size = 80
      Calculated = True
    end
    object cdsSaleDataCFBRANDID_Name: TStringField
      DisplayLabel = #21697#29260
      FieldKind = fkCalculated
      FieldName = 'CFBRANDID_Name'
      Size = 80
      Calculated = True
    end
    object cdsSaleDataCFSEASONID_Name: TStringField
      DisplayLabel = #23395#33410
      FieldKind = fkCalculated
      FieldName = 'CFSEASONID_Name'
      Size = 80
      Calculated = True
    end
  end
  object dsSaleData: TDataSource
    DataSet = cdsSaleData
    Left = 664
    Top = 448
  end
  object cdsExpenseItem: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 504
    Top = 485
  end
  object cdsDept: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 296
    Top = 485
  end
end
