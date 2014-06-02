inherited RepairWOEditFrm: TRepairWOEditFrm
  Left = 122
  Top = 13
  Width = 1131
  Height = 581
  Caption = #32500#20462#24037#21333
  PixelsPerInch = 96
  TextHeight = 12
  inherited p_bt: TPanel
    Top = 518
    Width = 1115
    Height = 24
    inherited Label1: TLabel
      Top = 6
    end
    inherited Label6: TLabel
      Top = 6
    end
    inherited Label3: TLabel
      Left = 336
      Top = 6
      Width = 73
    end
    inherited Label4: TLabel
      Top = 6
    end
    inherited Label8: TLabel
      Top = 6
    end
    inherited Label9: TLabel
      Top = 6
    end
    inherited cxFCreatorName: TcxDBMaskEdit
      Top = 1
      DataBinding.DataSource = dsMaster
    end
    inherited cxFCreatorDate: TcxDBMaskEdit
      Top = 1
      DataBinding.DataSource = dsMaster
    end
    inherited cxFAUDITORName: TcxDBMaskEdit
      Top = 1
      DataBinding.DataSource = dsMaster
    end
    inherited cxFAUDITORdate: TcxDBMaskEdit
      Top = 1
      DataBinding.DataSource = dsMaster
    end
    inherited cxFmodifieridName: TcxDBMaskEdit
      Top = 1
      DataBinding.DataSource = dsMaster
    end
    inherited Fmodificationtime: TcxDBMaskEdit
      Top = 1
      DataBinding.DataSource = dsMaster
    end
  end
  object panelHead: TPanel [1]
    Left = 0
    Top = 53
    Width = 1115
    Height = 212
    Align = alTop
    TabOrder = 5
    object cxHeadPage1: TcxPageControl
      Left = 1
      Top = 42
      Width = 1113
      Height = 147
      ActivePage = cxtbsht1
      Align = alClient
      LookAndFeel.Kind = lfUltraFlat
      ShowFrame = True
      Style = 10
      TabOrder = 0
      ClientRectBottom = 146
      ClientRectLeft = 1
      ClientRectRight = 1112
      ClientRectTop = 18
      object cxtbsht1: TcxTabSheet
        Caption = #19994#21153#20449#24687
        ImageIndex = 0
        object cxlbl4: TcxLabel
          Left = 10
          Top = 9
          Caption = #36710#29260#21495
        end
        object cxlbl5: TcxLabel
          Left = 326
          Top = 9
          Caption = #24213#30424#21495
        end
        object cxlbl6: TcxLabel
          Left = 665
          Top = 9
          Caption = #36710#22411
        end
        object cxlbl7: TcxLabel
          Left = 1023
          Top = 9
          Caption = #19994#21153#31867#22411
        end
        object cxlbl8: TcxLabel
          Left = 10
          Top = 33
          Caption = #26381#21153#39038#38382
        end
        object cxlbl9: TcxLabel
          Left = 326
          Top = 33
          Caption = #36865#20462#20154
        end
        object cxlbl10: TcxLabel
          Left = 665
          Top = 33
          Caption = #36865#20462#30005#35805
        end
        object cxlbl11: TcxLabel
          Left = 1023
          Top = 33
          Caption = #36134#25143#20195#30721
        end
        object cxlbl12: TcxLabel
          Left = 10
          Top = 57
          Caption = #36827#21378#26102#38388
        end
        object cxlbl13: TcxLabel
          Left = 326
          Top = 57
          Caption = #39044#35745#20986#21378#26102#38388
        end
        object cxlbl14: TcxLabel
          Left = 665
          Top = 57
          Caption = #36827#21378#34892#39542#37324#31243#25968
        end
        object cxlbl15: TcxLabel
          Left = 10
          Top = 81
          Caption = #39318#30331#26085#26399
        end
        object cxdbEditPlateNum: TcxDBButtonEdit
          Left = 74
          Top = 5
          DataBinding.DataField = 'FPlateNum'
          DataBinding.DataSource = dsMaster
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.ClickKey = 118
          Properties.OnButtonClick = cxdbEditPlateNumPropertiesButtonClick
          Style.LookAndFeel.Kind = lfUltraFlat
          StyleDisabled.LookAndFeel.Kind = lfUltraFlat
          StyleFocused.LookAndFeel.Kind = lfUltraFlat
          StyleHot.LookAndFeel.Kind = lfUltraFlat
          TabOrder = 12
          OnKeyPress = cxdbEditPlateNumKeyPress
          Width = 200
        end
        object cxdbEditVin: TcxDBButtonEdit
          Left = 413
          Top = 5
          DataBinding.DataField = 'FVin'
          DataBinding.DataSource = dsMaster
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = cxdbEditPlateNumPropertiesButtonClick
          TabOrder = 13
          OnKeyPress = cxdbEditVinKeyPress
          Width = 200
        end
        object cxdbEditBizType: TcxDBButtonEdit
          Left = 1088
          Top = 5
          DataBinding.DataField = 'repairBizTypeName'
          DataBinding.DataSource = dsMaster
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = cxdbEditBizTypePropertiesButtonClick
          TabOrder = 14
          OnKeyPress = cxdbEditBizTypeKeyPress
          Width = 200
        end
        object cxdbEditSA: TcxDBButtonEdit
          Left = 74
          Top = 29
          DataBinding.DataField = 'saName'
          DataBinding.DataSource = dsMaster
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = cxdbEditSAPropertiesButtonClick
          TabOrder = 15
          OnKeyPress = cxdbEditSAKeyPress
          Width = 200
        end
        object cxdbEditSender: TcxDBButtonEdit
          Left = 413
          Top = 29
          DataBinding.DataField = 'FRepairSender'
          DataBinding.DataSource = dsMaster
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = cxdbEditSenderPropertiesButtonClick
          TabOrder = 16
          Width = 200
        end
        object cxdbTxtTel: TcxDBTextEdit
          Left = 771
          Top = 29
          DataBinding.DataField = 'FTel'
          DataBinding.DataSource = dsMaster
          TabOrder = 17
          Width = 200
        end
        object cxdbEditAccountCode: TcxDBButtonEdit
          Left = 1088
          Top = 29
          DataBinding.DataField = 'customerAccountName'
          DataBinding.DataSource = dsMaster
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = cxdbEditAccountCodePropertiesButtonClick
          TabOrder = 18
          OnKeyPress = cxdbEditAccountCodeKeyPress
          Width = 200
        end
        object cxdbDateComeTime: TcxDBDateEdit
          Left = 74
          Top = 53
          DataBinding.DataField = 'FComeTime'
          DataBinding.DataSource = dsMaster
          Properties.DateButtons = [btnClear, btnNow, btnToday]
          Properties.Kind = ckDateTime
          TabOrder = 19
          Width = 200
        end
        object cxLabel1: TcxLabel
          Left = 326
          Top = 81
          Caption = #19994#21153#21592
        end
        object cxLabel2: TcxLabel
          Left = 665
          Top = 81
          Caption = #22791#27880
        end
        object cxLabel3: TcxLabel
          Left = 1024
          Top = 81
          Caption = #23458#25143#20449#24687
        end
        object cxdbDateIntendDeliveryTime: TcxDBDateEdit
          Left = 413
          Top = 53
          DataBinding.DataField = 'FIntendDeliveryTime'
          DataBinding.DataSource = dsMaster
          Properties.DateButtons = [btnClear, btnNow, btnToday]
          Properties.Kind = ckDateTime
          TabOrder = 23
          Width = 200
        end
        object cxdbMaskMile: TcxDBMaskEdit
          Left = 771
          Top = 53
          DataBinding.DataField = 'FMile'
          DataBinding.DataSource = dsMaster
          TabOrder = 24
          Width = 200
        end
        object cxdbDateFirstBookInDate: TcxDBDateEdit
          Left = 74
          Top = 77
          DataBinding.DataField = 'CFFirstBookInDate'
          DataBinding.DataSource = dsMaster
          TabOrder = 25
          Width = 200
        end
        object cxdbEditBizPerson: TcxDBButtonEdit
          Left = 413
          Top = 77
          DataBinding.DataField = 'bizPersonName'
          DataBinding.DataSource = dsMaster
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = cxdbEditBizPersonPropertiesButtonClick
          TabOrder = 26
          OnKeyPress = cxdbEditBizPersonKeyPress
          Width = 200
        end
        object cxdbMemoWipRemark: TcxDBMemo
          Left = 771
          Top = 77
          DataBinding.DataField = 'CFWipRemark'
          DataBinding.DataSource = dsMaster
          TabOrder = 27
          Height = 20
          Width = 200
        end
        object cxdbMemoCustomerInfo1: TcxDBMemo
          Left = 1088
          Top = 52
          DataBinding.DataField = 'CFCustomerInfo'
          DataBinding.DataSource = dsMaster
          TabOrder = 28
          Height = 45
          Width = 200
        end
        object cxdbTxtModel: TcxDBTextEdit
          Left = 771
          Top = 5
          DataBinding.DataField = 'modelName'
          DataBinding.DataSource = dsMaster
          Properties.ReadOnly = True
          TabOrder = 29
          Width = 200
        end
      end
      object cxtbsht2: TcxTabSheet
        Caption = #20854#20182#20449#24687
        ImageIndex = 1
        object cxLabel6: TcxLabel
          Left = 10
          Top = 10
          Caption = #21457#21160#26426#21495
        end
        object cxLabel7: TcxLabel
          Left = 10
          Top = 34
          Caption = #36710#31995
        end
        object cxLabel8: TcxLabel
          Left = 386
          Top = 10
          Caption = #36710#20027
        end
        object cxLabel9: TcxLabel
          Left = 690
          Top = 10
          Caption = #21697#29260
        end
        object cxLabel10: TcxLabel
          Left = 386
          Top = 34
          Caption = #20844#21496
        end
        object cxLabel11: TcxLabel
          Left = 10
          Top = 81
          Caption = #21382#21490#22791#27880
        end
        object cxLabel12: TcxLabel
          Left = 386
          Top = 81
          Caption = #32500#20462#22791#27880
        end
        object cxLabel13: TcxLabel
          Left = 690
          Top = 34
          Caption = #32500#20462#26041#24335
        end
        object cxLabel14: TcxLabel
          Left = 690
          Top = 58
          Caption = #32500#20462#22806#21253#20844#21496
        end
        object cxdbMemoRemark: TcxDBMemo
          Left = 445
          Top = 54
          DataBinding.DataField = 'FRemark'
          DataBinding.DataSource = dsMaster
          TabOrder = 9
          Height = 43
          Width = 200
        end
        object cxmemoRemarkList: TcxMemo
          Left = 71
          Top = 54
          Properties.ReadOnly = True
          TabOrder = 10
          Height = 43
          Width = 200
        end
        object cxdbTxtEngineNum: TcxDBTextEdit
          Left = 71
          Top = 6
          DataBinding.DataField = 'FEngineNum'
          DataBinding.DataSource = dsMaster
          Properties.ReadOnly = True
          TabOrder = 11
          Width = 200
        end
        object cxdbTxtOwner: TcxDBTextEdit
          Left = 445
          Top = 6
          DataBinding.DataField = 'customerName'
          DataBinding.DataSource = dsMaster
          Properties.ReadOnly = True
          TabOrder = 12
          Width = 200
        end
        object cxdbTxtBrand: TcxDBTextEdit
          Left = 773
          Top = 6
          DataBinding.DataField = 'brandName'
          DataBinding.DataSource = dsMaster
          Properties.ReadOnly = True
          TabOrder = 13
          Width = 200
        end
        object cxdbTxtSerise: TcxDBTextEdit
          Left = 71
          Top = 30
          DataBinding.DataField = 'seriesName'
          DataBinding.DataSource = dsMaster
          Properties.ReadOnly = True
          TabOrder = 14
          Width = 200
        end
        object cxdbTxtCompany: TcxDBTextEdit
          Left = 445
          Top = 30
          DataBinding.DataField = 'companyName'
          DataBinding.DataSource = dsMaster
          Properties.ReadOnly = True
          TabOrder = 15
          Width = 200
        end
        object cxdblkpcmbxRepairType: TcxDBLookupComboBox
          Left = 773
          Top = 30
          DataBinding.DataField = 'FRepairWay'
          DataBinding.DataSource = dsMaster
          Properties.KeyFieldNames = 'FNumber'
          Properties.ListColumns = <
            item
              FieldName = 'FName'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dsRepairWay
          Properties.OnChange = cxdblkpcmbxRepairTypePropertiesChange
          TabOrder = 16
          Width = 200
        end
        object cxdbEditSupplier: TcxDBButtonEdit
          Left = 773
          Top = 54
          DataBinding.DataField = 'supplierName'
          DataBinding.DataSource = dsMaster
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = cxdbEditSupplierPropertiesButtonClick
          TabOrder = 17
          Width = 200
        end
      end
    end
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 1113
      Height = 41
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      object cxdbComboxStatus: TcxDBComboBox
        Left = 787
        Top = 6
        DataBinding.DataField = 'gaBillStatusName'
        DataBinding.DataSource = dsMaster
        Properties.MaxLength = 0
        Properties.ReadOnly = True
        TabOrder = 0
        Width = 200
      end
      object cxdbChkPrintedSettle: TcxDBCheckBox
        Left = 1131
        Top = 5
        Caption = #32467#31639#25171#21360
        DataBinding.DataField = 'CFIsPrintedSettle'
        DataBinding.DataSource = dsMaster
        Properties.NullStyle = nssUnchecked
        Properties.ReadOnly = True
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        TabOrder = 1
        Width = 121
      end
      object cxdbTxtNumber1: TcxDBTextEdit
        Left = 100
        Top = 6
        DataBinding.DataField = 'FNumber'
        DataBinding.DataSource = dsMaster
        Properties.ReadOnly = False
        TabOrder = 2
        Width = 200
      end
      object cxdbTxtWipNo1: TcxDBTextEdit
        Left = 444
        Top = 6
        DataBinding.DataField = 'FCompanyNumber'
        DataBinding.DataSource = dsMaster
        Properties.ReadOnly = True
        TabOrder = 3
        Width = 200
      end
      object cxlbl1: TcxLabel
        Left = 28
        Top = 10
        Caption = #32500#20462#24037#21333#21495
      end
      object cxlbl2: TcxLabel
        Left = 375
        Top = 10
        Caption = 'DMS WIP'#21495
      end
      object cxlbl3: TcxLabel
        Left = 731
        Top = 10
        Caption = #21333#25454#29366#24577
      end
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 1113
        Height = 212
        Align = alTop
        TabOrder = 7
        object cxPageControl1: TcxPageControl
          Left = 1
          Top = 42
          Width = 1111
          Height = 147
          ActivePage = cxTabSheet1
          Align = alClient
          LookAndFeel.Kind = lfUltraFlat
          ShowFrame = True
          Style = 10
          TabOrder = 0
          ClientRectBottom = 146
          ClientRectLeft = 1
          ClientRectRight = 1110
          ClientRectTop = 18
          object cxTabSheet1: TcxTabSheet
            Caption = #19994#21153#20449#24687
            ImageIndex = 0
            object cxLabel5: TcxLabel
              Left = 10
              Top = 9
              Caption = #36710#29260#21495
            end
            object cxLabel15: TcxLabel
              Left = 326
              Top = 9
              Caption = #24213#30424#21495
            end
            object cxLabel16: TcxLabel
              Left = 665
              Top = 9
              Caption = #36710#22411
            end
            object cxLabel17: TcxLabel
              Left = 1023
              Top = 9
              Caption = #19994#21153#31867#22411
            end
            object cxLabel18: TcxLabel
              Left = 10
              Top = 33
              Caption = #26381#21153#39038#38382
            end
            object cxLabel19: TcxLabel
              Left = 326
              Top = 33
              Caption = #36865#20462#20154
            end
            object cxLabel20: TcxLabel
              Left = 665
              Top = 33
              Caption = #36865#20462#30005#35805
            end
            object cxLabel21: TcxLabel
              Left = 1023
              Top = 33
              Caption = #36134#25143#20195#30721
            end
            object cxLabel22: TcxLabel
              Left = 10
              Top = 57
              Caption = #36827#21378#26102#38388
            end
            object cxLabel23: TcxLabel
              Left = 326
              Top = 57
              Caption = #39044#35745#20986#21378#26102#38388
            end
            object cxLabel24: TcxLabel
              Left = 665
              Top = 57
              Caption = #36827#21378#34892#39542#37324#31243#25968
            end
            object cxLabel25: TcxLabel
              Left = 10
              Top = 81
              Caption = #39318#30331#26085#26399
            end
            object cxDBButtonEdit1: TcxDBButtonEdit
              Left = 74
              Top = 5
              DataBinding.DataField = 'FPlateNum'
              DataBinding.DataSource = dsMaster
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.ClickKey = 118
              Properties.OnButtonClick = cxdbEditPlateNumPropertiesButtonClick
              Style.LookAndFeel.Kind = lfUltraFlat
              StyleDisabled.LookAndFeel.Kind = lfUltraFlat
              StyleFocused.LookAndFeel.Kind = lfUltraFlat
              StyleHot.LookAndFeel.Kind = lfUltraFlat
              TabOrder = 12
              OnKeyPress = cxdbEditPlateNumKeyPress
              Width = 200
            end
            object cxDBButtonEdit2: TcxDBButtonEdit
              Left = 413
              Top = 5
              DataBinding.DataField = 'FVin'
              DataBinding.DataSource = dsMaster
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = cxdbEditPlateNumPropertiesButtonClick
              TabOrder = 13
              OnKeyPress = cxdbEditVinKeyPress
              Width = 200
            end
            object cxDBButtonEdit3: TcxDBButtonEdit
              Left = 1088
              Top = 5
              DataBinding.DataField = 'repairBizTypeName'
              DataBinding.DataSource = dsMaster
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = cxdbEditBizTypePropertiesButtonClick
              TabOrder = 14
              OnKeyPress = cxdbEditBizTypeKeyPress
              Width = 200
            end
            object cxDBButtonEdit4: TcxDBButtonEdit
              Left = 74
              Top = 29
              DataBinding.DataField = 'saName'
              DataBinding.DataSource = dsMaster
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = cxdbEditSAPropertiesButtonClick
              TabOrder = 15
              OnKeyPress = cxdbEditSAKeyPress
              Width = 200
            end
            object cxDBButtonEdit5: TcxDBButtonEdit
              Left = 413
              Top = 29
              DataBinding.DataField = 'FRepairSender'
              DataBinding.DataSource = dsMaster
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = cxdbEditSenderPropertiesButtonClick
              TabOrder = 16
              Width = 200
            end
            object cxDBTextEdit1: TcxDBTextEdit
              Left = 771
              Top = 29
              DataBinding.DataField = 'FTel'
              DataBinding.DataSource = dsMaster
              TabOrder = 17
              Width = 200
            end
            object cxDBButtonEdit6: TcxDBButtonEdit
              Left = 1088
              Top = 29
              DataBinding.DataField = 'customerAccountName'
              DataBinding.DataSource = dsMaster
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = cxdbEditAccountCodePropertiesButtonClick
              TabOrder = 18
              OnKeyPress = cxdbEditAccountCodeKeyPress
              Width = 200
            end
            object cxDBDateEdit1: TcxDBDateEdit
              Left = 74
              Top = 53
              DataBinding.DataField = 'FComeTime'
              DataBinding.DataSource = dsMaster
              Properties.DateButtons = [btnClear, btnNow, btnToday]
              Properties.Kind = ckDateTime
              TabOrder = 19
              Width = 200
            end
            object cxLabel26: TcxLabel
              Left = 326
              Top = 81
              Caption = #19994#21153#21592
            end
            object cxLabel27: TcxLabel
              Left = 665
              Top = 81
              Caption = #22791#27880
            end
            object cxLabel28: TcxLabel
              Left = 1024
              Top = 81
              Caption = #23458#25143#20449#24687
            end
            object cxDBDateEdit2: TcxDBDateEdit
              Left = 413
              Top = 53
              DataBinding.DataField = 'FIntendDeliveryTime'
              DataBinding.DataSource = dsMaster
              Properties.DateButtons = [btnClear, btnNow, btnToday]
              Properties.Kind = ckDateTime
              TabOrder = 23
              Width = 200
            end
            object cxDBMaskEdit1: TcxDBMaskEdit
              Left = 771
              Top = 53
              DataBinding.DataField = 'FMile'
              DataBinding.DataSource = dsMaster
              TabOrder = 24
              Width = 200
            end
            object cxDBDateEdit3: TcxDBDateEdit
              Left = 74
              Top = 77
              DataBinding.DataField = 'CFFirstBookInDate'
              DataBinding.DataSource = dsMaster
              TabOrder = 25
              Width = 200
            end
            object cxDBButtonEdit7: TcxDBButtonEdit
              Left = 413
              Top = 77
              DataBinding.DataField = 'bizPersonName'
              DataBinding.DataSource = dsMaster
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = cxdbEditBizPersonPropertiesButtonClick
              TabOrder = 26
              OnKeyPress = cxdbEditBizPersonKeyPress
              Width = 200
            end
            object cxDBMemo1: TcxDBMemo
              Left = 771
              Top = 77
              DataBinding.DataField = 'CFWipRemark'
              DataBinding.DataSource = dsMaster
              TabOrder = 27
              Height = 20
              Width = 200
            end
            object cxDBMemo2: TcxDBMemo
              Left = 1088
              Top = 52
              DataBinding.DataField = 'CFCustomerInfo'
              DataBinding.DataSource = dsMaster
              TabOrder = 28
              Height = 45
              Width = 200
            end
            object cxDBTextEdit2: TcxDBTextEdit
              Left = 771
              Top = 5
              DataBinding.DataField = 'modelName'
              DataBinding.DataSource = dsMaster
              Properties.ReadOnly = True
              TabOrder = 29
              Width = 200
            end
          end
          object cxTabSheet2: TcxTabSheet
            Caption = #20854#20182#20449#24687
            ImageIndex = 1
            object cxLabel29: TcxLabel
              Left = 10
              Top = 10
              Caption = #21457#21160#26426#21495
            end
            object cxLabel30: TcxLabel
              Left = 10
              Top = 34
              Caption = #36710#31995
            end
            object cxLabel31: TcxLabel
              Left = 386
              Top = 10
              Caption = #36710#20027
            end
            object cxLabel32: TcxLabel
              Left = 690
              Top = 10
              Caption = #21697#29260
            end
            object cxLabel33: TcxLabel
              Left = 386
              Top = 34
              Caption = #20844#21496
            end
            object cxLabel34: TcxLabel
              Left = 10
              Top = 81
              Caption = #21382#21490#22791#27880
            end
            object cxLabel35: TcxLabel
              Left = 386
              Top = 81
              Caption = #32500#20462#22791#27880
            end
            object cxLabel36: TcxLabel
              Left = 690
              Top = 34
              Caption = #32500#20462#26041#24335
            end
            object cxLabel37: TcxLabel
              Left = 690
              Top = 58
              Caption = #32500#20462#22806#21253#20844#21496
            end
            object cxDBMemo3: TcxDBMemo
              Left = 445
              Top = 54
              DataBinding.DataField = 'FRemark'
              DataBinding.DataSource = dsMaster
              TabOrder = 9
              Height = 43
              Width = 200
            end
            object cxMemo1: TcxMemo
              Left = 71
              Top = 54
              Properties.ReadOnly = True
              TabOrder = 10
              Height = 43
              Width = 200
            end
            object cxDBTextEdit3: TcxDBTextEdit
              Left = 71
              Top = 6
              DataBinding.DataField = 'FEngineNum'
              DataBinding.DataSource = dsMaster
              Properties.ReadOnly = True
              TabOrder = 11
              Width = 200
            end
            object cxDBTextEdit4: TcxDBTextEdit
              Left = 445
              Top = 6
              DataBinding.DataField = 'customerName'
              DataBinding.DataSource = dsMaster
              Properties.ReadOnly = True
              TabOrder = 12
              Width = 200
            end
            object cxDBTextEdit5: TcxDBTextEdit
              Left = 773
              Top = 6
              DataBinding.DataField = 'brandName'
              DataBinding.DataSource = dsMaster
              Properties.ReadOnly = True
              TabOrder = 13
              Width = 200
            end
            object cxDBTextEdit6: TcxDBTextEdit
              Left = 71
              Top = 30
              DataBinding.DataField = 'seriesName'
              DataBinding.DataSource = dsMaster
              Properties.ReadOnly = True
              TabOrder = 14
              Width = 200
            end
            object cxDBTextEdit7: TcxDBTextEdit
              Left = 445
              Top = 30
              DataBinding.DataField = 'companyName'
              DataBinding.DataSource = dsMaster
              Properties.ReadOnly = True
              TabOrder = 15
              Width = 200
            end
            object cxDBLookupComboBox1: TcxDBLookupComboBox
              Left = 773
              Top = 30
              DataBinding.DataField = 'FRepairWay'
              DataBinding.DataSource = dsMaster
              Properties.KeyFieldNames = 'FNumber'
              Properties.ListColumns = <
                item
                  FieldName = 'FName'
                end>
              Properties.ListOptions.ShowHeader = False
              Properties.ListSource = dsRepairWay
              Properties.OnChange = cxdblkpcmbxRepairTypePropertiesChange
              TabOrder = 16
              Width = 200
            end
            object cxDBButtonEdit8: TcxDBButtonEdit
              Left = 773
              Top = 54
              DataBinding.DataField = 'supplierName'
              DataBinding.DataSource = dsMaster
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = cxdbEditSupplierPropertiesButtonClick
              TabOrder = 17
              Width = 200
            end
          end
        end
        object Panel5: TPanel
          Left = 1
          Top = 1
          Width = 1111
          Height = 41
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          object cxDBComboBox1: TcxDBComboBox
            Left = 787
            Top = 6
            DataBinding.DataField = 'gaBillStatusName'
            DataBinding.DataSource = dsMaster
            Properties.MaxLength = 0
            Properties.ReadOnly = True
            TabOrder = 0
            Width = 200
          end
          object cxDBCheckBox1: TcxDBCheckBox
            Left = 1131
            Top = 5
            Caption = #32467#31639#25171#21360
            DataBinding.DataField = 'CFIsPrintedSettle'
            DataBinding.DataSource = dsMaster
            Properties.NullStyle = nssUnchecked
            Properties.ReadOnly = True
            Properties.ValueChecked = 1
            Properties.ValueUnchecked = 0
            TabOrder = 1
            Width = 121
          end
          object cxDBTextEdit8: TcxDBTextEdit
            Left = 100
            Top = 6
            DataBinding.DataField = 'FNumber'
            DataBinding.DataSource = dsMaster
            Properties.ReadOnly = False
            TabOrder = 2
            Width = 200
          end
          object cxDBTextEdit9: TcxDBTextEdit
            Left = 444
            Top = 6
            DataBinding.DataField = 'FCompanyNumber'
            DataBinding.DataSource = dsMaster
            Properties.ReadOnly = True
            TabOrder = 3
            Width = 200
          end
          object cxLabel38: TcxLabel
            Left = 28
            Top = 10
            Caption = #32500#20462#24037#21333#21495
          end
          object cxLabel39: TcxLabel
            Left = 375
            Top = 10
            Caption = 'DMS WIP'#21495
          end
          object cxLabel40: TcxLabel
            Left = 731
            Top = 10
            Caption = #21333#25454#29366#24577
          end
        end
        object Panel6: TPanel
          Left = 1
          Top = 189
          Width = 1111
          Height = 22
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 2
          DesignSize = (
            1111
            22)
          object cxLabel41: TcxLabel
            Left = 17
            Top = 2
            Caption = 'T'
          end
          object cxComboBox1: TcxComboBox
            Left = 28
            Top = 1
            Properties.DropDownListStyle = lsEditFixedList
            Properties.Items.Strings = (
              'P'
              'L')
            Properties.ReadOnly = False
            Properties.OnChange = cxComboxTPropertiesChange
            TabOrder = 1
            Text = 'P'
            Width = 33
          end
          object cxButtonEdit1: TcxButtonEdit
            Left = 69
            Top = 1
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = cxEditItemSPPropertiesButtonClick
            TabOrder = 2
            Width = 244
          end
          object cxButton1: TcxButton
            Left = 979
            Top = 2
            Width = 65
            Height = 20
            Anchors = [akTop, akRight]
            Caption = #34892#20998#25285
            TabOrder = 3
          end
          object cxButton2: TcxButton
            Left = 1045
            Top = 2
            Width = 61
            Height = 20
            Anchors = [akTop, akRight]
            Caption = #21024#38500#34892
            TabOrder = 4
            OnClick = cxBtnRemoveLineClick
          end
        end
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 189
      Width = 1113
      Height = 22
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 2
      DesignSize = (
        1113
        22)
      object cxLabel4: TcxLabel
        Left = 17
        Top = 2
        Caption = 'T'
      end
      object cxComboxT: TcxComboBox
        Left = 28
        Top = 1
        Properties.DropDownListStyle = lsEditFixedList
        Properties.Items.Strings = (
          'P'
          'L')
        Properties.ReadOnly = False
        Properties.OnChange = cxComboxTPropertiesChange
        TabOrder = 1
        Text = 'P'
        Width = 33
      end
      object cxEditItemSP: TcxButtonEdit
        Left = 69
        Top = 1
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = cxEditItemSPPropertiesButtonClick
        TabOrder = 2
        Width = 244
      end
      object cxBtnlAllocateLine: TcxButton
        Left = 979
        Top = 2
        Width = 65
        Height = 20
        Anchors = [akTop, akRight]
        Caption = #34892#20998#25285
        TabOrder = 3
      end
      object cxBtnRemoveLine: TcxButton
        Left = 1045
        Top = 2
        Width = 61
        Height = 20
        Anchors = [akTop, akRight]
        Caption = #21024#38500#34892
        TabOrder = 4
        OnClick = cxBtnRemoveLineClick
      end
    end
  end
  object Panel1: TPanel [2]
    Left = 0
    Top = 265
    Width = 1115
    Height = 253
    Align = alClient
    TabOrder = 6
    object cxGrid1: TcxGrid
      Left = 1
      Top = 1
      Width = 1113
      Height = 251
      Align = alClient
      TabOrder = 0
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.SkinName = 'Office2007Black'
      object cxGrid1DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        OnCellClick = cxGrid1DBTableView1CellClick
        OnCustomDrawCell = cxGrid1DBTableView1CustomDrawCell
        OnEditing = cxGrid1DBTableView1Editing
        DataController.DataSource = dsDetail
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnSorting = False
        OptionsView.DataRowHeight = 22
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderHeight = 22
        object cxdbColSeq: TcxGridDBColumn
          Caption = #24207#21495
          DataBinding.FieldName = 'FSeq'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 39
        end
        object cxdbColT: TcxGridDBColumn
          Caption = 'T'
          DataBinding.FieldName = 'CFT'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 29
        end
        object cxdbColItemSpNum: TcxGridDBColumn
          Caption = #39033#30446
          DataBinding.FieldName = 'CFItemspNum'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 181
        end
        object cxdbColItemspName: TcxGridDBColumn
          Caption = #35828#26126
          DataBinding.FieldName = 'CFItemspName'
          HeaderAlignmentHorz = taCenter
          Width = 178
        end
        object cxdbColRepairPkg: TcxGridDBColumn
          Caption = #22871#39184
          DataBinding.FieldName = 'CFRepairPkgNum'
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = cxdbColRepairPkgPropertiesButtonClick
          HeaderAlignmentHorz = taCenter
          Width = 63
        end
        object cxdbColW: TcxGridDBColumn
          Caption = 'W'
          DataBinding.FieldName = 'CFWNum'
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.ReadOnly = True
          Properties.OnButtonClick = cxdbColWPropertiesButtonClick
          HeaderAlignmentHorz = taCenter
          Width = 28
        end
        object cxdbColIsCT: TcxGridDBColumn
          Caption = #26159#21542#25286#36864
          DataBinding.FieldName = 'CFIsCT'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          HeaderAlignmentHorz = taCenter
        end
        object cxdbColQty: TcxGridDBColumn
          Caption = #25968#37327
          DataBinding.FieldName = 'CFQty'
          HeaderAlignmentHorz = taCenter
        end
        object cxdbColUnIssueQty: TcxGridDBColumn
          Caption = #26410#20986#24211#25968
          DataBinding.FieldName = 'CFUnIssueQty'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
        end
        object cxdbColIssueQty: TcxGridDBColumn
          Caption = #24050#20986#24211#25968
          DataBinding.FieldName = 'CFIssueQty'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
        end
        object cxdbColPrice: TcxGridDBColumn
          Caption = #26410#31246#20215#26684
          DataBinding.FieldName = 'CFPrice'
          HeaderAlignmentHorz = taCenter
        end
        object cxdbColTaxPrice: TcxGridDBColumn
          Caption = #21547#31246#20215#26684
          DataBinding.FieldName = 'CFTaxPrice'
          HeaderAlignmentHorz = taCenter
        end
        object cxdbColDiscountRate: TcxGridDBColumn
          Caption = #25240#25187'%'
          DataBinding.FieldName = 'CFDiscountRate'
          HeaderAlignmentHorz = taCenter
        end
        object cxdbColAmount: TcxGridDBColumn
          Caption = #24635#35745
          DataBinding.FieldName = 'CFAmount'
          HeaderAlignmentHorz = taCenter
        end
        object cxdbColTaxAmount: TcxGridDBColumn
          Caption = #21547#31246#24635#35745
          DataBinding.FieldName = 'CFTaxAmount'
          HeaderAlignmentHorz = taCenter
        end
        object cxdbColTaxRate: TcxGridDBColumn
          Caption = #31246#29575'%'
          DataBinding.FieldName = 'CFTaxRate'
          HeaderAlignmentHorz = taCenter
        end
        object cxdbColI: TcxGridDBColumn
          Caption = #36134#21333#29366#24577
          DataBinding.FieldName = 'CFI'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 70
        end
        object cxdbColSettleDate: TcxGridDBColumn
          Caption = #32467#36134#26085#26399
          DataBinding.FieldName = 'CFSettleDate'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
        end
        object cxdbColIsAPSettle: TcxGridDBColumn
          Caption = #24212#20184#32467#31639
          DataBinding.FieldName = 'CFIsAPSettle'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
        end
        object cxdbColAllocateExenseRate: TcxGridDBColumn
          Caption = #36153#29992#20998#25285'%'
          DataBinding.FieldName = 'CFAllocateExenseRate'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
        end
        object cxdbColPerson: TcxGridDBColumn
          Caption = #32500#20462#25216#24072
          DataBinding.FieldName = 'CFPersonName'
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = cxdbColPersonPropertiesButtonClick
          HeaderAlignmentHorz = taCenter
          Width = 53
        end
        object cxdbColWorkTimeQty: TcxGridDBColumn
          Caption = #24037#26102#25968#37327
          DataBinding.FieldName = 'CFWorktimeQty'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
        end
        object cxdbColWorktimePrice: TcxGridDBColumn
          Caption = #24037#26102#21333#20215
          DataBinding.FieldName = 'CFWorktimePrice'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
        end
        object cxdbColWorktimeCost: TcxGridDBColumn
          Caption = #24037#26102#25104#26412
          DataBinding.FieldName = 'CFWorktimeCost'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
        end
        object cxdbColGiftDept: TcxGridDBColumn
          Caption = #36192#36865#37096#38376
          DataBinding.FieldName = 'CFGiftDeptName'
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.ClickKey = 118
          Properties.OnButtonClick = cxdbColGiftDeptPropertiesButtonClick
          HeaderAlignmentHorz = taCenter
          Width = 70
        end
        object cxdbColRepairWay: TcxGridDBColumn
          Caption = #32500#20462#26041#24335
          DataBinding.FieldName = 'CFRepairWay'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'FNumber'
          Properties.ListColumns = <
            item
              FieldName = 'FName'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dsRepairWayEntry
          HeaderAlignmentHorz = taCenter
          Width = 89
        end
        object cxdbColSupplier: TcxGridDBColumn
          Caption = #32500#20462#22806#21253#20844#21496
          DataBinding.FieldName = 'CFSupplierName'
          PropertiesClassName = 'TcxButtonEditProperties'
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = cxdbColSupplierPropertiesButtonClick
          HeaderAlignmentHorz = taCenter
          Width = 124
        end
        object cxdbColWipFactLineNo: TcxGridDBColumn
          Caption = 'DMS'#23454#38469#34892#21495
          DataBinding.FieldName = 'CFWipFactLineNo'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
        end
        object cxdbColWipLineNo: TcxGridDBColumn
          Caption = 'DMS'#34892#21495
          DataBinding.FieldName = 'CFWipLineNo'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
        end
        object cxdbColIsDelete: TcxGridDBColumn
          Caption = #26159#21542#21024#38500
          DataBinding.FieldName = 'CFISDELETE'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.NullStyle = nssUnchecked
          Properties.ValueChecked = 1
          Properties.ValueUnchecked = 0
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
        end
        object cxdbColSettlementObject: TcxGridDBColumn
          Caption = #32467#31639#23545#35937
          DataBinding.FieldName = 'CFSettlementObject'
          HeaderAlignmentHorz = taCenter
          Options.Editing = False
          Width = 78
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
  end
  inherited STBaseEditDataSet: TClientDataSet
    Left = 1019
    Top = 306
  end
  inherited ImageListMainForm: TImageList
    Left = 1080
    Top = 264
  end
  inherited actlst1: TActionList
    Left = 1147
    Top = 18
    inherited actSaveBill: TAction
      OnExecute = actSaveBillExecute
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
    Left = 1072
    Top = 15
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
          ItemName = 'dxBarbtnDown'
        end
        item
          UserDefine = [udPaintStyle]
          UserPaintStyle = psCaptionGlyph
          Visible = True
          ItemName = 'dxBarbtnPull'
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
    inherited dxBarManager1Bar1: TdxBar
      FloatLeft = 872
      FloatTop = 358
      FloatClientWidth = 57
      FloatClientHeight = 69
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarSubItem8'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem3'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem9'
        end>
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
    inherited dxBarbtnPull: TdxBarButton
      Visible = ivNever
    end
  end
  inherited cdsMaster: TClientDataSet
    BeforePost = cdsMasterBeforePost
    BeforeDelete = cdsMasterBeforeDelete
    OnCalcFields = cdsMasterCalcFields
    OnNewRecord = cdsMasterNewRecord
    Left = 147
    Top = 58
    object cdsMasterFCreatorID: TStringField
      FieldName = 'FCreatorID'
      OnChange = cdsMasterFCreatorIDChange
      Size = 44
    end
    object cdsMasterFCreateTime: TDateTimeField
      FieldName = 'FCreateTime'
    end
    object cdsMasterFLastUpdateUserID: TStringField
      FieldName = 'FLastUpdateUserID'
      OnChange = cdsMasterFLastUpdateUserIDChange
      Size = 44
    end
    object cdsMasterFLastUpdateTime: TDateTimeField
      FieldName = 'FLastUpdateTime'
    end
    object cdsMasterFControlUnitID: TStringField
      FieldName = 'FControlUnitID'
      LookupDataSet = cdsDetail
      Size = 44
    end
    object cdsMasterFNumber: TWideStringField
      FieldName = 'FNumber'
      Size = 80
    end
    object cdsMasterFBizDate: TDateTimeField
      FieldName = 'FBizDate'
    end
    object cdsMasterFHandlerID: TStringField
      FieldName = 'FHandlerID'
      LookupDataSet = cdsDetail
      Size = 44
    end
    object cdsMasterFDescription: TWideStringField
      FieldName = 'FDescription'
      Size = 255
    end
    object cdsMasterFHasEffected: TIntegerField
      FieldName = 'FHasEffected'
    end
    object cdsMasterFAuditorID: TStringField
      FieldName = 'FAuditorID'
      OnChange = cdsMasterFAuditorIDChange
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
    object cdsMasterFID: TStringField
      FieldName = 'FID'
      Size = 44
    end
    object cdsMasterFAuditTime: TDateTimeField
      FieldName = 'FAuditTime'
    end
    object cdsMasterFBrandID: TStringField
      FieldName = 'FBrandID'
      Size = 44
    end
    object cdsMasterFOrgUnitID: TStringField
      FieldName = 'FOrgUnitID'
      Size = 44
    end
    object cdsMasterFStatus: TStringField
      FieldName = 'FStatus'
      Size = 100
    end
    object cdsMasterFRemark: TWideStringField
      FieldName = 'FRemark'
      Size = 255
    end
    object cdsMasterFVehicleID: TStringField
      FieldName = 'FVehicleID'
      OnChange = cdsMasterFVehicleIDChange
      Size = 44
    end
    object cdsMasterFSAID: TStringField
      FieldName = 'FSAID'
      OnChange = cdsMasterFSAIDChange
      Size = 44
    end
    object cdsMasterFComeTime: TDateTimeField
      FieldName = 'FComeTime'
    end
    object cdsMasterFIntendDeliveryTime: TDateTimeField
      FieldName = 'FIntendDeliveryTime'
    end
    object cdsMasterFFactDeliveryTime: TDateTimeField
      FieldName = 'FFactDeliveryTime'
    end
    object cdsMasterFRepairTotalAmount: TFloatField
      FieldName = 'FRepairTotalAmount'
    end
    object cdsMasterFReceiveTotalAmount: TFloatField
      FieldName = 'FReceiveTotalAmount'
    end
    object cdsMasterFInvoicedTotalAmount: TFloatField
      FieldName = 'FInvoicedTotalAmount'
    end
    object cdsMasterFIsStat: TIntegerField
      FieldName = 'FIsStat'
    end
    object cdsMasterFMile: TFloatField
      FieldName = 'FMile'
    end
    object cdsMasterFOilQty: TStringField
      FieldName = 'FOilQty'
      Size = 100
    end
    object cdsMasterFKeyNumber: TWideStringField
      FieldName = 'FKeyNumber'
      LookupDataSet = cdsDetail
      Size = 255
    end
    object cdsMasterFConsignation: TWideStringField
      FieldName = 'FConsignation'
      Size = 255
    end
    object cdsMasterFWarrantyTypeID: TStringField
      FieldName = 'FWarrantyTypeID'
      Size = 44
    end
    object cdsMasterFInsuranCompanyID: TStringField
      FieldName = 'FInsuranCompanyID'
      Size = 44
    end
    object cdsMasterFRepairTypeID: TStringField
      FieldName = 'FRepairTypeID'
      Size = 44
    end
    object cdsMasterFIsPriorAssign: TIntegerField
      FieldName = 'FIsPriorAssign'
    end
    object cdsMasterFIsWash: TIntegerField
      FieldName = 'FIsWash'
    end
    object cdsMasterFIsWaitForStore: TIntegerField
      FieldName = 'FIsWaitForStore'
    end
    object cdsMasterFCustomerRequest: TWideStringField
      FieldName = 'FCustomerRequest'
      Size = 255
    end
    object cdsMasterFCompanyNumber: TWideStringField
      FieldName = 'FCompanyNumber'
      Size = 80
    end
    object cdsMasterFWashRemark: TWideStringField
      FieldName = 'FWashRemark'
      Size = 255
    end
    object cdsMasterFFinishTime: TDateTimeField
      FieldName = 'FFinishTime'
    end
    object cdsMasterFWasherID: TStringField
      FieldName = 'FWasherID'
      Size = 44
    end
    object cdsMasterFBreakTypeID: TStringField
      FieldName = 'FBreakTypeID'
      Size = 44
    end
    object cdsMasterFStatusWhenCanceled: TStringField
      FieldName = 'FStatusWhenCanceled'
      Size = 100
    end
    object cdsMasterFSourceBillTypeID: TStringField
      FieldName = 'FSourceBillTypeID'
      Size = 44
    end
    object cdsMasterFSourceBillEntryID: TWideStringField
      FieldName = 'FSourceBillEntryID'
      Size = 44
    end
    object cdsMasterFSourceBillNumber: TWideStringField
      FieldName = 'FSourceBillNumber'
      Size = 160
    end
    object cdsMasterFSourceBillEntrySeq: TIntegerField
      FieldName = 'FSourceBillEntrySeq'
    end
    object cdsMasterFCustomerID: TStringField
      FieldName = 'FCustomerID'
      Size = 44
    end
    object cdsMasterFRepairSender: TWideStringField
      FieldName = 'FRepairSender'
      Size = 80
    end
    object cdsMasterFTel: TWideStringField
      FieldName = 'FTel'
      Size = 80
    end
    object cdsMasterFOldID: TWideStringField
      FieldName = 'FOldID'
      Size = 44
    end
    object cdsMasterFRepairBookingID: TWideStringField
      FieldName = 'FRepairBookingID'
      Size = 44
    end
    object cdsMasterFReturnRepair: TStringField
      FieldName = 'FReturnRepair'
      Size = 100
    end
    object cdsMasterFIsClaim: TIntegerField
      FieldName = 'FIsClaim'
    end
    object cdsMasterFIsWarranty: TIntegerField
      FieldName = 'FIsWarranty'
    end
    object cdsMasterFCustomerDiscountClassifyID: TStringField
      FieldName = 'FCustomerDiscountClassifyID'
      Size = 44
    end
    object cdsMasterFOldReturnRepair: TStringField
      FieldName = 'FOldReturnRepair'
      Size = 100
    end
    object cdsMasterFRecentlyComeTime: TDateTimeField
      FieldName = 'FRecentlyComeTime'
    end
    object cdsMasterFVersion: TIntegerField
      FieldName = 'FVersion'
    end
    object cdsMasterFCardID: TStringField
      FieldName = 'FCardID'
      Size = 44
    end
    object cdsMasterFRecentlyComeMile: TFloatField
      FieldName = 'FRecentlyComeMile'
    end
    object cdsMasterFIsNextWarrEdit: TIntegerField
      FieldName = 'FIsNextWarrEdit'
    end
    object cdsMasterFIsWorkCost: TIntegerField
      FieldName = 'FIsWorkCost'
    end
    object cdsMasterFSupplierID: TStringField
      FieldName = 'FSupplierID'
      OnChange = cdsMasterFSupplierIDChange
      Size = 44
    end
    object cdsMasterFRepairWay: TStringField
      FieldName = 'FRepairWay'
      Size = 40
    end
    object cdsMasterFGroupOrgunitID: TStringField
      FieldName = 'FGroupOrgunitID'
      Size = 44
    end
    object cdsMasterFIsReceive: TIntegerField
      FieldName = 'FIsReceive'
    end
    object cdsMasterFIsPay: TIntegerField
      FieldName = 'FIsPay'
    end
    object cdsMasterFAccountCFGID: TStringField
      FieldName = 'FAccountCFGID'
      Size = 44
    end
    object cdsMasterCFCustomer1ID: TStringField
      FieldName = 'CFCustomer1ID'
      Size = 44
    end
    object cdsMasterCFCustomerInfo: TWideStringField
      FieldName = 'CFCustomerInfo'
      Size = 200
    end
    object cdsMasterCFDeptID: TStringField
      FieldName = 'CFDeptID'
      Size = 44
    end
    object cdsMasterCFCustomInfo: TWideStringField
      FieldName = 'CFCustomInfo'
      Size = 255
    end
    object cdsMasterCFSaleType: TWideStringField
      FieldName = 'CFSaleType'
      Size = 100
    end
    object cdsMasterCFCustomerAccountI: TStringField
      FieldName = 'CFCustomerAccountI'
      OnChange = cdsMasterCFCustomerAccountIChange
      Size = 44
    end
    object cdsMasterCFCustomerAccountName: TWideStringField
      FieldName = 'CFCustomerAccountName'
      Size = 80
    end
    object cdsMasterCFGaDept: TWideStringField
      FieldName = 'CFGaDept'
      Size = 100
    end
    object cdsMasterCFRepairBizTypeID: TStringField
      FieldName = 'CFRepairBizTypeID'
      OnChange = cdsMasterCFRepairBizTypeIDChange
      Size = 44
    end
    object cdsMasterCFRepairManID: TStringField
      FieldName = 'CFRepairManID'
      Size = 44
    end
    object cdsMasterCFGaBillStatus: TStringField
      FieldName = 'CFGaBillStatus'
      Size = 100
    end
    object cdsMasterCFFirstBookInDate: TDateTimeField
      FieldName = 'CFFirstBookInDate'
    end
    object cdsMasterCFSaler: TWideStringField
      FieldName = 'CFSaler'
      Size = 100
    end
    object cdsMasterCFIsPrintedSettle: TIntegerField
      FieldName = 'CFIsPrintedSettle'
    end
    object cdsMasterCFWipRemark: TWideStringField
      FieldName = 'CFWipRemark'
      Size = 255
    end
    object cdsMasterCFBizPersonID: TStringField
      FieldName = 'CFBizPersonID'
      OnChange = cdsMasterCFBizPersonIDChange
      Size = 44
    end
    object cdsMasterFCreatorName: TWideStringField
      FieldName = 'FCreatorName'
    end
    object cdsMasterFAuditorName: TWideStringField
      FieldKind = fkCalculated
      FieldName = 'FAuditorName'
      Calculated = True
    end
    object cdsMasterCFModifierName: TWideStringField
      FieldName = 'CFModifierName'
    end
    object cdsMasterCFGaBillStatusName: TStringField
      FieldKind = fkCalculated
      FieldName = 'gaBillStatusName'
      Calculated = True
    end
    object cdsMasterFPlateNum: TWideStringField
      FieldName = 'FPlateNum'
      Size = 100
    end
    object cdsMasterFVin: TWideStringField
      FieldName = 'FVin'
      Size = 100
    end
    object cdsMastermodelName: TWideStringField
      FieldName = 'modelName'
      Size = 100
    end
    object cdsMasterrepairBizTypeName: TWideStringField
      FieldName = 'repairBizTypeName'
      Size = 100
    end
    object cdsMastersaName: TWideStringField
      FieldName = 'saName'
      Size = 100
    end
    object cdsMastercustomerAccountName: TWideStringField
      FieldName = 'customerAccountName'
      Size = 100
    end
    object cdsMasterbizPersonName: TWideStringField
      FieldName = 'bizPersonName'
      Size = 100
    end
    object cdsMastersupplierName: TWideStringField
      FieldName = 'supplierName'
      Size = 100
    end
    object cdsMasterFEngineNum: TWideStringField
      FieldName = 'FEngineNum'
      Size = 100
    end
    object cdsMastercustomerName: TWideStringField
      FieldName = 'customerName'
      Size = 100
    end
    object cdsMasterbrandName: TWideStringField
      FieldName = 'brandName'
      Size = 100
    end
    object cdsMasterseriesName: TWideStringField
      FieldName = 'seriesName'
      Size = 100
    end
    object cdsMastercompanyName: TWideStringField
      FieldName = 'companyName'
      Size = 100
    end
    object cdsMasterFPlateDate: TDateTimeField
      FieldName = 'FPlateDate'
    end
    object cdsMasterbrandNum: TWideStringField
      FieldName = 'brandNum'
      Size = 100
    end
  end
  inherited dsMaster: TDataSource
    Left = 27
    Top = 50
  end
  inherited cdsDetail: TClientDataSet
    BeforePost = cdsDetailBeforePost
    BeforeDelete = cdsDetailBeforeDelete
    Left = 267
    Top = 282
    object cdsDetailFID: TStringField
      FieldName = 'FID'
      Size = 44
    end
    object cdsDetailFSeq: TIntegerField
      FieldName = 'FSeq'
    end
    object cdsDetailFParentID: TStringField
      FieldName = 'FParentID'
      Size = 44
    end
    object cdsDetailCFSeq: TIntegerField
      FieldName = 'CFSeq'
    end
    object cdsDetailCFT: TStringField
      FieldName = 'CFT'
      Size = 100
    end
    object cdsDetailCFItemspNum: TWideStringField
      FieldName = 'CFItemspNum'
      Size = 100
    end
    object cdsDetailCFItemspName: TWideStringField
      FieldName = 'CFItemspName'
      Size = 300
    end
    object cdsDetailCFRepairItemID: TStringField
      FieldName = 'CFRepairItemID'
      Size = 44
    end
    object cdsDetailCFMaterialID: TStringField
      FieldName = 'CFMaterialID'
      Size = 44
    end
    object cdsDetailCFTaocan: TWideStringField
      FieldName = 'CFTaocan'
      Size = 100
    end
    object cdsDetailCFQty: TFloatField
      FieldName = 'CFQty'
      OnChange = cdsDetailCFQtyChange
    end
    object cdsDetailCFPrice: TFloatField
      FieldName = 'CFPrice'
      OnChange = cdsDetailCFPriceChange
    end
    object cdsDetailCFDiscountRate: TFloatField
      FieldName = 'CFDiscountRate'
      OnChange = cdsDetailCFDiscountRateChange
    end
    object cdsDetailCFAmount: TFloatField
      FieldName = 'CFAmount'
      OnChange = cdsDetailCFAmountChange
    end
    object cdsDetailCFI: TStringField
      FieldName = 'CFI'
      Size = 100
    end
    object cdsDetailCFIsCT: TIntegerField
      FieldName = 'CFIsCT'
      OnChange = cdsDetailCFIsCTChange
    end
    object cdsDetailCFUnIssueQty: TFloatField
      FieldName = 'CFUnIssueQty'
    end
    object cdsDetailCFIssueQty: TFloatField
      FieldName = 'CFIssueQty'
    end
    object cdsDetailCFTaxRate: TFloatField
      FieldName = 'CFTaxRate'
      OnChange = cdsDetailCFTaxRateChange
    end
    object cdsDetailCFSettlementObject: TStringField
      FieldName = 'CFSettlementObject'
      Size = 100
    end
    object cdsDetailCFWID: TStringField
      FieldName = 'CFWID'
      OnChange = cdsDetailCFWIDChange
      Size = 44
    end
    object cdsDetailCFWipLineNo: TIntegerField
      FieldName = 'CFWipLineNo'
    end
    object cdsDetailCFWipFactLineNo: TIntegerField
      FieldName = 'CFWipFactLineNo'
    end
    object cdsDetailCFIsCreateTo: TIntegerField
      FieldName = 'CFIsCreateTo'
    end
    object cdsDetailCFSaleType: TWideStringField
      FieldName = 'CFSaleType'
      Size = 100
    end
    object cdsDetailCFRts: TWideStringField
      FieldName = 'CFRts'
      Size = 100
    end
    object cdsDetailCFBillNum: TWideStringField
      FieldName = 'CFBillNum'
      Size = 100
    end
    object cdsDetailCFPostingDate: TDateTimeField
      FieldName = 'CFPostingDate'
    end
    object cdsDetailCFIsAPSettle: TIntegerField
      FieldName = 'CFIsAPSettle'
    end
    object cdsDetailCFCostAmount: TFloatField
      FieldName = 'CFCostAmount'
    end
    object cdsDetailCFAccount: TWideStringField
      FieldName = 'CFAccount'
      Size = 100
    end
    object cdsDetailCFISDELETE: TIntegerField
      FieldName = 'CFISDELETE'
    end
    object cdsDetailCFTaxPrice: TFloatField
      FieldName = 'CFTaxPrice'
      OnChange = cdsDetailCFTaxPriceChange
    end
    object cdsDetailCFTaxAmount: TFloatField
      FieldName = 'CFTaxAmount'
      OnChange = cdsDetailCFTaxAmountChange
    end
    object cdsDetailCFRepairPkgID: TStringField
      FieldName = 'CFRepairPkgID'
      OnChange = cdsDetailCFRepairPkgIDChange
      Size = 44
    end
    object cdsDetailCFAllocateExenseRate: TFloatField
      FieldName = 'CFAllocateExenseRate'
    end
    object cdsDetailCFRepairWay: TStringField
      FieldName = 'CFRepairWay'
      OnChange = cdsDetailCFRepairWayChange
      Size = 100
    end
    object cdsDetailCFSupplierID: TStringField
      FieldName = 'CFSupplierID'
      OnChange = cdsDetailCFSupplierIDChange
      Size = 44
    end
    object cdsDetailCFInitFactPrice: TFloatField
      FieldName = 'CFInitFactPrice'
    end
    object cdsDetailCFWprice: TFloatField
      FieldName = 'CFWprice'
    end
    object cdsDetailCFOriginalEntryId: TStringField
      FieldName = 'CFOriginalEntryId'
      Size = 44
    end
    object cdsDetailCFOriginalQty: TFloatField
      FieldName = 'CFOriginalQty'
    end
    object cdsDetailCFIsCreateTo2: TIntegerField
      FieldName = 'CFIsCreateTo2'
    end
    object cdsDetailCFSettleDate: TDateTimeField
      FieldName = 'CFSettleDate'
    end
    object cdsDetailCFPersonID: TStringField
      FieldName = 'CFPersonID'
      OnChange = cdsDetailCFPersonIDChange
      Size = 44
    end
    object cdsDetailCFAllocateCount: TIntegerField
      FieldName = 'CFAllocateCount'
    end
    object cdsDetailCFRelateItemEntryId: TStringField
      FieldName = 'CFRelateItemEntryId'
      Size = 44
    end
    object cdsDetailCFGiftDeptID: TStringField
      FieldName = 'CFGiftDeptID'
      OnChange = cdsDetailCFGiftDeptIDChange
      Size = 44
    end
    object cdsDetailCFWorktimeQty: TFloatField
      FieldName = 'CFWorktimeQty'
    end
    object cdsDetailCFWorktimePrice: TFloatField
      FieldName = 'CFWorktimePrice'
    end
    object cdsDetailCFWorktimeCost: TFloatField
      FieldName = 'CFWorktimeCost'
    end
    object cdsDetailCFRepairPkgName: TWideStringField
      FieldName = 'CFRepairPkgName'
      Size = 100
    end
    object cdsDetailCFPersonName: TWideStringField
      FieldName = 'CFPersonName'
      Size = 100
    end
    object cdsDetailCFGiftDeptName: TWideStringField
      FieldName = 'CFGiftDeptName'
      Size = 100
    end
    object cdsDetailCFSupplierName: TWideStringField
      FieldName = 'CFSupplierName'
      Size = 100
    end
    object cdsDetailCFRepairWayName: TWideStringField
      FieldKind = fkInternalCalc
      FieldName = 'CFRepairWayName'
    end
    object cdsDetailCFRepairPkgNum: TWideStringField
      FieldName = 'CFRepairPkgNum'
      Size = 100
    end
    object cdsDetailCFWNum: TWideStringField
      FieldName = 'CFWNum'
      Size = 100
    end
    object cdsDetailCFPersonNum: TWideStringField
      FieldName = 'CFPersonNum'
      Size = 100
    end
    object cdsDetailCFGiftDeptNum: TWideStringField
      FieldName = 'CFGiftDeptNum'
      Size = 100
    end
    object cdsDetailCFSupplierNum: TWideStringField
      FieldName = 'CFSupplierNum'
      Size = 100
    end
    object cdsDetailCFWName: TWideStringField
      FieldName = 'CFWName'
      Size = 100
    end
    object cdsDetailCFTypeCode: TWideStringField
      FieldName = 'CFTypeCode'
      Size = 100
    end
  end
  inherited dsDetail: TDataSource
    Left = 331
    Top = 282
  end
  object cdsRepairWay: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 1100
    Top = 120
    object cdsRepairWayFNumber: TStringField
      FieldName = 'FNumber'
      Size = 10
    end
    object cdsRepairWayFName: TStringField
      FieldName = 'FName'
      Size = 100
    end
  end
  object dsRepairWay: TDataSource
    AutoEdit = False
    DataSet = cdsRepairWay
    Left = 1113
    Top = 71
  end
  object dsRepairWayEntry: TDataSource
    DataSet = cdsRepairWayEntry
    Left = 848
    Top = 272
  end
  object cdsRepairWayEntry: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 744
    Top = 288
    object cdsRepairWayEntryFNumber: TStringField
      FieldName = 'FNumber'
      Size = 100
    end
    object cdsRepairWayEntryFName: TStringField
      FieldName = 'FName'
      Size = 100
    end
  end
  object cdsDetail_Save: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 264
    Top = 344
    object cdsDetail_SaveFID: TStringField
      FieldName = 'FID'
      Size = 44
    end
    object cdsDetail_SaveFSeq: TIntegerField
      FieldName = 'FSeq'
    end
    object cdsDetail_SaveFParentID: TStringField
      FieldName = 'FParentID'
      Size = 44
    end
    object cdsDetail_SaveCFSeq: TIntegerField
      FieldName = 'CFSeq'
    end
    object cdsDetail_SaveCFT: TStringField
      FieldName = 'CFT'
      Size = 100
    end
    object cdsDetail_SaveCFItemspNum: TWideStringField
      FieldName = 'CFItemspNum'
      Size = 100
    end
    object cdsDetail_SaveCFItemspName: TWideStringField
      FieldName = 'CFItemspName'
      Size = 300
    end
    object cdsDetail_SaveCFRepairItemID: TStringField
      FieldName = 'CFRepairItemID'
      Size = 44
    end
    object cdsDetail_SaveCFMaterialID: TStringField
      FieldName = 'CFMaterialID'
      Size = 44
    end
    object cdsDetail_SaveCFTaocan: TWideStringField
      FieldName = 'CFTaocan'
      Size = 100
    end
    object cdsDetail_SaveCFQty: TFloatField
      FieldName = 'CFQty'
    end
    object cdsDetail_SaveCFPrice: TFloatField
      FieldName = 'CFPrice'
    end
    object cdsDetail_SaveCFDiscountRate: TFloatField
      FieldName = 'CFDiscountRate'
    end
    object cdsDetail_SaveCFAmount: TFloatField
      FieldName = 'CFAmount'
    end
    object cdsDetail_SaveCFI: TStringField
      FieldName = 'CFI'
      Size = 100
    end
    object cdsDetail_SaveCFIsCT: TIntegerField
      FieldName = 'CFIsCT'
    end
    object cdsDetail_SaveCFUnIssueQty: TFloatField
      FieldName = 'CFUnIssueQty'
    end
    object cdsDetail_SaveCFIssueQty: TFloatField
      FieldName = 'CFIssueQty'
    end
    object cdsDetail_SaveCFTaxRate: TFloatField
      FieldName = 'CFTaxRate'
    end
    object cdsDetail_SaveCFSettlementObject: TStringField
      FieldName = 'CFSettlementObject'
      Size = 100
    end
    object cdsDetail_SaveCFWID: TStringField
      FieldName = 'CFWID'
      Size = 44
    end
    object cdsDetail_SaveCFWipLineNo: TIntegerField
      FieldName = 'CFWipLineNo'
    end
    object cdsDetail_SaveCFWipFactLineNo: TIntegerField
      FieldName = 'CFWipFactLineNo'
    end
    object cdsDetail_SaveCFIsCreateTo: TIntegerField
      FieldName = 'CFIsCreateTo'
    end
    object cdsDetail_SaveCFSaleType: TWideStringField
      FieldName = 'CFSaleType'
      Size = 100
    end
    object cdsDetail_SaveCFRts: TWideStringField
      FieldName = 'CFRts'
      Size = 100
    end
    object cdsDetail_SaveCFBillNum: TWideStringField
      FieldName = 'CFBillNum'
      Size = 100
    end
    object cdsDetail_SaveCFPostingDate: TDateTimeField
      FieldName = 'CFPostingDate'
    end
    object cdsDetail_SaveCFIsAPSettle: TIntegerField
      FieldName = 'CFIsAPSettle'
    end
    object cdsDetail_SaveCFCostAmount: TFloatField
      FieldName = 'CFCostAmount'
    end
    object cdsDetail_SaveCFAccount: TWideStringField
      FieldName = 'CFAccount'
      Size = 100
    end
    object cdsDetail_SaveCFISDELETE: TIntegerField
      FieldName = 'CFISDELETE'
    end
    object cdsDetail_SaveCFTaxPrice: TFloatField
      FieldName = 'CFTaxPrice'
    end
    object cdsDetail_SaveCFTaxAmount: TFloatField
      FieldName = 'CFTaxAmount'
    end
    object cdsDetail_SaveCFRepairPkgID: TStringField
      FieldName = 'CFRepairPkgID'
      Size = 44
    end
    object cdsDetail_SaveCFAllocateExenseRate: TFloatField
      FieldName = 'CFAllocateExenseRate'
    end
    object cdsDetail_SaveCFRepairWay: TStringField
      FieldName = 'CFRepairWay'
      Size = 100
    end
    object cdsDetail_SaveCFSupplierID: TStringField
      FieldName = 'CFSupplierID'
      Size = 44
    end
    object cdsDetail_SaveCFInitFactPrice: TFloatField
      FieldName = 'CFInitFactPrice'
    end
    object cdsDetail_SaveCFWprice: TFloatField
      FieldName = 'CFWprice'
    end
    object cdsDetail_SaveCFOriginalEntryId: TStringField
      FieldName = 'CFOriginalEntryId'
      Size = 44
    end
    object cdsDetail_SaveCFOriginalQty: TFloatField
      FieldName = 'CFOriginalQty'
    end
    object cdsDetail_SaveCFIsCreateTo2: TIntegerField
      FieldName = 'CFIsCreateTo2'
    end
    object cdsDetail_SaveCFSettleDate: TDateTimeField
      FieldName = 'CFSettleDate'
    end
    object cdsDetail_SaveCFPersonID: TStringField
      FieldName = 'CFPersonID'
      Size = 44
    end
    object cdsDetail_SaveCFAllocateCount: TIntegerField
      FieldName = 'CFAllocateCount'
    end
    object cdsDetail_SaveCFRelateItemEntryId: TStringField
      FieldName = 'CFRelateItemEntryId'
      Size = 44
    end
    object cdsDetail_SaveCFGiftDeptID: TStringField
      FieldName = 'CFGiftDeptID'
      Size = 44
    end
    object cdsDetail_SaveCFWorktimeQty: TFloatField
      FieldName = 'CFWorktimeQty'
    end
    object cdsDetail_SaveCFWorktimePrice: TFloatField
      FieldName = 'CFWorktimePrice'
    end
    object cdsDetail_SaveCFWorktimeCost: TFloatField
      FieldName = 'CFWorktimeCost'
    end
  end
  object dsDetail_Save: TDataSource
    DataSet = cdsDetail_Save
    Left = 336
    Top = 344
  end
  object dsMaster_Save: TDataSource
    DataSet = cdsMaster_Save
    Left = 216
    Top = 64
  end
  object cdsMaster_Save: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 288
    Top = 64
    object cdsMaster_SaveFCreatorID: TStringField
      FieldName = 'FCreatorID'
      Size = 44
    end
    object cdsMaster_SaveFCreateTime: TDateTimeField
      FieldName = 'FCreateTime'
    end
    object cdsMaster_SaveFLastUpdateUserID: TStringField
      FieldName = 'FLastUpdateUserID'
      Size = 44
    end
    object cdsMaster_SaveFLastUpdateTime: TDateTimeField
      FieldName = 'FLastUpdateTime'
    end
    object cdsMaster_SaveFControlUnitID: TStringField
      FieldName = 'FControlUnitID'
      Size = 44
    end
    object cdsMaster_SaveFNumber: TWideStringField
      FieldName = 'FNumber'
      Size = 80
    end
    object cdsMaster_SaveFBizDate: TDateTimeField
      FieldName = 'FBizDate'
    end
    object cdsMaster_SaveFHandlerID: TStringField
      FieldName = 'FHandlerID'
      Size = 44
    end
    object cdsMaster_SaveFDescription: TWideStringField
      FieldName = 'FDescription'
      Size = 255
    end
    object cdsMaster_SaveFHasEffected: TIntegerField
      FieldName = 'FHasEffected'
    end
    object cdsMaster_SaveFAuditorID: TStringField
      FieldName = 'FAuditorID'
      Size = 44
    end
    object cdsMaster_SaveFSourceBillID: TWideStringField
      FieldName = 'FSourceBillID'
      Size = 80
    end
    object cdsMaster_SaveFSourceFunction: TWideStringField
      FieldName = 'FSourceFunction'
      Size = 80
    end
    object cdsMaster_SaveFID: TStringField
      FieldName = 'FID'
      Size = 44
    end
    object cdsMaster_SaveFAuditTime: TDateTimeField
      FieldName = 'FAuditTime'
    end
    object cdsMaster_SaveFBrandID: TStringField
      FieldName = 'FBrandID'
      Size = 44
    end
    object cdsMaster_SaveFOrgUnitID: TStringField
      FieldName = 'FOrgUnitID'
      Size = 44
    end
    object cdsMaster_SaveFStatus: TStringField
      FieldName = 'FStatus'
      Size = 100
    end
    object cdsMaster_SaveFRemark: TWideStringField
      FieldName = 'FRemark'
      Size = 255
    end
    object cdsMaster_SaveFVehicleID: TStringField
      FieldName = 'FVehicleID'
      Size = 44
    end
    object cdsMaster_SaveFSAID: TStringField
      FieldName = 'FSAID'
      Size = 44
    end
    object cdsMaster_SaveFComeTime: TDateTimeField
      FieldName = 'FComeTime'
    end
    object cdsMaster_SaveFIntendDeliveryTime: TDateTimeField
      FieldName = 'FIntendDeliveryTime'
    end
    object cdsMaster_SaveFFactDeliveryTime: TDateTimeField
      FieldName = 'FFactDeliveryTime'
    end
    object cdsMaster_SaveFRepairTotalAmount: TFloatField
      FieldName = 'FRepairTotalAmount'
    end
    object cdsMaster_SaveFReceiveTotalAmount: TFloatField
      FieldName = 'FReceiveTotalAmount'
    end
    object cdsMaster_SaveFInvoicedTotalAmount: TFloatField
      FieldName = 'FInvoicedTotalAmount'
    end
    object cdsMaster_SaveFIsStat: TIntegerField
      FieldName = 'FIsStat'
    end
    object cdsMaster_SaveFMile: TFloatField
      FieldName = 'FMile'
    end
    object cdsMaster_SaveFOilQty: TStringField
      FieldName = 'FOilQty'
      Size = 100
    end
    object cdsMaster_SaveFKeyNumber: TWideStringField
      FieldName = 'FKeyNumber'
      Size = 255
    end
    object cdsMaster_SaveFConsignation: TWideStringField
      FieldName = 'FConsignation'
      Size = 255
    end
    object cdsMaster_SaveFWarrantyTypeID: TStringField
      FieldName = 'FWarrantyTypeID'
      Size = 44
    end
    object cdsMaster_SaveFInsuranCompanyID: TStringField
      FieldName = 'FInsuranCompanyID'
      Size = 44
    end
    object cdsMaster_SaveFRepairTypeID: TStringField
      FieldName = 'FRepairTypeID'
      Size = 44
    end
    object cdsMaster_SaveFIsPriorAssign: TIntegerField
      FieldName = 'FIsPriorAssign'
    end
    object cdsMaster_SaveFIsWash: TIntegerField
      FieldName = 'FIsWash'
    end
    object cdsMaster_SaveFIsWaitForStore: TIntegerField
      FieldName = 'FIsWaitForStore'
    end
    object cdsMaster_SaveFCustomerRequest: TWideStringField
      FieldName = 'FCustomerRequest'
      Size = 255
    end
    object cdsMaster_SaveFCompanyNumber: TWideStringField
      FieldName = 'FCompanyNumber'
      Size = 80
    end
    object cdsMaster_SaveFWashRemark: TWideStringField
      FieldName = 'FWashRemark'
      Size = 255
    end
    object cdsMaster_SaveFFinishTime: TDateTimeField
      FieldName = 'FFinishTime'
    end
    object cdsMaster_SaveFWasherID: TStringField
      FieldName = 'FWasherID'
      Size = 44
    end
    object cdsMaster_SaveFBreakTypeID: TStringField
      FieldName = 'FBreakTypeID'
      Size = 44
    end
    object cdsMaster_SaveFStatusWhenCanceled: TStringField
      FieldName = 'FStatusWhenCanceled'
      Size = 100
    end
    object cdsMaster_SaveFSourceBillTypeID: TStringField
      FieldName = 'FSourceBillTypeID'
      Size = 44
    end
    object cdsMaster_SaveFSourceBillEntryID: TWideStringField
      FieldName = 'FSourceBillEntryID'
      Size = 44
    end
    object cdsMaster_SaveFSourceBillNumber: TWideStringField
      FieldName = 'FSourceBillNumber'
      Size = 160
    end
    object cdsMaster_SaveFSourceBillEntrySeq: TIntegerField
      FieldName = 'FSourceBillEntrySeq'
    end
    object cdsMaster_SaveFCustomerID: TStringField
      FieldName = 'FCustomerID'
      Size = 44
    end
    object cdsMaster_SaveFRepairSender: TWideStringField
      FieldName = 'FRepairSender'
      Size = 80
    end
    object cdsMaster_SaveFTel: TWideStringField
      FieldName = 'FTel'
      Size = 80
    end
    object cdsMaster_SaveFOldID: TWideStringField
      FieldName = 'FOldID'
      Size = 44
    end
    object cdsMaster_SaveFRepairBookingID: TWideStringField
      FieldName = 'FRepairBookingID'
      Size = 44
    end
    object cdsMaster_SaveFReturnRepair: TStringField
      FieldName = 'FReturnRepair'
      Size = 100
    end
    object cdsMaster_SaveFIsClaim: TIntegerField
      FieldName = 'FIsClaim'
    end
    object cdsMaster_SaveFIsWarranty: TIntegerField
      FieldName = 'FIsWarranty'
    end
    object cdsMaster_SaveFCustomerDiscountClassifyID: TStringField
      FieldName = 'FCustomerDiscountClassifyID'
      Size = 44
    end
    object cdsMaster_SaveFOldReturnRepair: TStringField
      FieldName = 'FOldReturnRepair'
      Size = 100
    end
    object cdsMaster_SaveFRecentlyComeTime: TDateTimeField
      FieldName = 'FRecentlyComeTime'
    end
    object cdsMaster_SaveFVersion: TIntegerField
      FieldName = 'FVersion'
    end
    object cdsMaster_SaveFCardID: TStringField
      FieldName = 'FCardID'
      Size = 44
    end
    object cdsMaster_SaveFRecentlyComeMile: TFloatField
      FieldName = 'FRecentlyComeMile'
    end
    object cdsMaster_SaveFIsNextWarrEdit: TIntegerField
      FieldName = 'FIsNextWarrEdit'
    end
    object cdsMaster_SaveFIsWorkCost: TIntegerField
      FieldName = 'FIsWorkCost'
    end
    object cdsMaster_SaveFSupplierID: TStringField
      FieldName = 'FSupplierID'
      Size = 44
    end
    object cdsMaster_SaveFRepairWay: TStringField
      FieldName = 'FRepairWay'
      Size = 40
    end
    object cdsMaster_SaveFGroupOrgunitID: TStringField
      FieldName = 'FGroupOrgunitID'
      Size = 44
    end
    object cdsMaster_SaveFIsReceive: TIntegerField
      FieldName = 'FIsReceive'
    end
    object cdsMaster_SaveFIsPay: TIntegerField
      FieldName = 'FIsPay'
    end
    object cdsMaster_SaveFAccountCFGID: TStringField
      FieldName = 'FAccountCFGID'
      Size = 44
    end
    object cdsMaster_SaveCFCustomer1ID: TStringField
      FieldName = 'CFCustomer1ID'
      Size = 44
    end
    object cdsMaster_SaveCFCustomerInfo: TWideStringField
      FieldName = 'CFCustomerInfo'
      Size = 200
    end
    object cdsMaster_SaveCFDeptID: TStringField
      FieldName = 'CFDeptID'
      Size = 44
    end
    object cdsMaster_SaveCFCustomInfo: TWideStringField
      FieldName = 'CFCustomInfo'
      Size = 255
    end
    object cdsMaster_SaveCFSaleType: TWideStringField
      FieldName = 'CFSaleType'
      Size = 100
    end
    object cdsMaster_SaveCFCustomerAccountI: TStringField
      FieldName = 'CFCustomerAccountI'
      Size = 44
    end
    object cdsMaster_SaveCFCustomerAccountName: TWideStringField
      FieldName = 'CFCustomerAccountName'
      Size = 80
    end
    object cdsMaster_SaveCFGaDept: TWideStringField
      FieldName = 'CFGaDept'
      Size = 100
    end
    object cdsMaster_SaveCFRepairBizTypeID: TStringField
      FieldName = 'CFRepairBizTypeID'
      Size = 44
    end
    object cdsMaster_SaveCFRepairManID: TStringField
      FieldName = 'CFRepairManID'
      Size = 44
    end
    object cdsMaster_SaveCFGaBillStatus: TStringField
      FieldName = 'CFGaBillStatus'
      Size = 100
    end
    object cdsMaster_SaveCFFirstBookInDate: TDateTimeField
      FieldName = 'CFFirstBookInDate'
    end
    object cdsMaster_SaveCFSaler: TWideStringField
      FieldName = 'CFSaler'
      Size = 100
    end
    object cdsMaster_SaveCFIsPrintedSettle: TIntegerField
      FieldName = 'CFIsPrintedSettle'
    end
    object cdsMaster_SaveCFWipRemark: TWideStringField
      FieldName = 'CFWipRemark'
      Size = 255
    end
    object cdsMaster_SaveCFBizPersonID: TStringField
      FieldName = 'CFBizPersonID'
      Size = 44
    end
  end
  object cdsGABillStatus: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 672
    Top = 56
    object cdsGABillStatusFNumber: TStringField
      FieldName = 'FNumber'
      Size = 100
    end
    object cdsGABillStatusFName: TStringField
      FieldName = 'FName'
      Size = 100
    end
  end
  object dsGABillStatus: TDataSource
    DataSet = cdsGABillStatus
    Left = 696
    Top = 64
  end
  object dsWarrRemind: TDataSource
    DataSet = cdsWarrRemind
    Left = 504
    Top = 80
  end
  object cdsWarrRemind: TClientDataSet
    Aggregates = <>
    Params = <>
    OnNewRecord = cdsWarrRemindNewRecord
    Left = 552
    Top = 80
    object cdsWarrRemindFCreatorID: TStringField
      FieldName = 'FCreatorID'
      Size = 44
    end
    object cdsWarrRemindFCreateTime: TDateTimeField
      FieldName = 'FCreateTime'
    end
    object cdsWarrRemindFLastUpdateUserID: TStringField
      FieldName = 'FLastUpdateUserID'
      Size = 44
    end
    object cdsWarrRemindFLastUpdateTime: TDateTimeField
      FieldName = 'FLastUpdateTime'
    end
    object cdsWarrRemindFControlUnitID: TStringField
      FieldName = 'FControlUnitID'
      Size = 44
    end
    object cdsWarrRemindFNumber: TWideStringField
      FieldName = 'FNumber'
      Size = 80
    end
    object cdsWarrRemindFBizDate: TDateTimeField
      FieldName = 'FBizDate'
    end
    object cdsWarrRemindFHandlerID: TStringField
      FieldName = 'FHandlerID'
      Size = 44
    end
    object cdsWarrRemindFDescription: TWideStringField
      FieldName = 'FDescription'
      Size = 80
    end
    object cdsWarrRemindFHasEffected: TIntegerField
      FieldName = 'FHasEffected'
    end
    object cdsWarrRemindFAuditorID: TStringField
      FieldName = 'FAuditorID'
      Size = 44
    end
    object cdsWarrRemindFSourceBillID: TWideStringField
      FieldName = 'FSourceBillID'
      Size = 80
    end
    object cdsWarrRemindFSourceFunction: TWideStringField
      FieldName = 'FSourceFunction'
      Size = 80
    end
    object cdsWarrRemindFID: TStringField
      FieldName = 'FID'
      Size = 44
    end
    object cdsWarrRemindFAuditTime: TDateTimeField
      FieldName = 'FAuditTime'
    end
    object cdsWarrRemindFBrandID: TStringField
      FieldName = 'FBrandID'
      Size = 44
    end
    object cdsWarrRemindFOrgUnitID: TStringField
      FieldName = 'FOrgUnitID'
      Size = 44
    end
    object cdsWarrRemindFRepairWOID: TStringField
      FieldName = 'FRepairWOID'
      Size = 44
    end
    object cdsWarrRemindFVehicleID: TStringField
      FieldName = 'FVehicleID'
      Size = 44
    end
    object cdsWarrRemindFReturnTime: TDateTimeField
      FieldName = 'FReturnTime'
    end
    object cdsWarrRemindFNextWarrMile: TFloatField
      FieldName = 'FNextWarrMile'
    end
    object cdsWarrRemindFIsEffect: TIntegerField
      FieldName = 'FIsEffect'
    end
    object cdsWarrRemindFNextWarrTime: TDateTimeField
      FieldName = 'FNextWarrTime'
    end
    object cdsWarrRemindFReturnMile: TFloatField
      FieldName = 'FReturnMile'
    end
  end
  object cdsRepairRemark: TClientDataSet
    Aggregates = <>
    Params = <>
    OnNewRecord = cdsRepairRemarkNewRecord
    Left = 960
    Top = 64
    object cdsRepairRemarkFID: TStringField
      FieldName = 'FID'
      Size = 44
    end
    object cdsRepairRemarkFSeq: TIntegerField
      FieldName = 'FSeq'
    end
    object cdsRepairRemarkFParentID: TStringField
      FieldName = 'FParentID'
      Size = 44
    end
    object cdsRepairRemarkCFSeq: TIntegerField
      FieldName = 'CFSeq'
    end
    object cdsRepairRemarkCFRemark: TWideStringField
      FieldName = 'CFRemark'
      Size = 255
    end
    object cdsRepairRemarkCFRepairWOID: TStringField
      FieldName = 'CFRepairWOID'
      Size = 44
    end
    object cdsRepairRemarkCFCreateTime: TDateTimeField
      FieldName = 'CFCreateTime'
    end
  end
  object dsRepairRemark: TDataSource
    DataSet = cdsRepairRemark
    Left = 896
    Top = 64
  end
  object dsSelDetail: TDataSource
    DataSet = cdsSelDetail
    Left = 144
    Top = 296
  end
  object dsSelMaster: TDataSource
    DataSet = cdsSelMaster
    Left = 352
    Top = 72
  end
  object cdsSelMaster: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 408
    Top = 80
  end
  object cdsSelDetail: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 200
    Top = 280
  end
end
