inherited FM_PurInWarehsBill: TFM_PurInWarehsBill
  Left = 322
  Top = 26
  Caption = 'FM_PurInWarehsBill'
  PixelsPerInch = 96
  TextHeight = 12
  inherited pnl_top: TPanel
    inherited HeadPageCtrl: TcxPageControl
      inherited cxTabBaseInfo: TcxTabSheet
        inherited pnlTop: TPanel
          inherited lblPID: TLabel
            Top = 8
          end
          inherited lblBIZDate: TLabel
            Left = 324
            Top = 9
          end
          inherited lblLBStatus: TLabel
            Top = 9
          end
          inherited bvl7: TBevel
            Left = 8
          end
          inherited bvl9: TBevel
            Left = 635
            Top = 24
          end
          object lbl7: TLabel [7]
            Left = 8
            Top = 34
            Width = 39
            Height = 13
            Caption = #20379#24212#21830
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object bvl10: TBevel [8]
            Left = 8
            Top = 49
            Width = 236
            Height = 2
            Shape = bsTopLine
            Style = bsRaised
          end
          object lbl8: TLabel [9]
            Left = 324
            Top = 35
            Width = 52
            Height = 13
            Caption = #19994#21153#31867#22411
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object bvl11: TBevel [10]
            Left = 324
            Top = 49
            Width = 236
            Height = 2
            Shape = bsTopLine
            Style = bsRaised
          end
          object lbl9: TLabel [11]
            Left = 635
            Top = 34
            Width = 52
            Height = 13
            Caption = #20107#21153#31867#22411
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object bvl12: TBevel [12]
            Left = 635
            Top = 49
            Width = 236
            Height = 2
            Shape = bsTopLine
            Style = bsRaised
          end
          object lbl10: TLabel [13]
            Left = 8
            Top = 59
            Width = 52
            Height = 13
            Caption = #24211#23384#32452#32455
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object bvl13: TBevel [14]
            Left = 8
            Top = 74
            Width = 236
            Height = 2
            Shape = bsTopLine
            Style = bsRaised
          end
          object lbl11: TLabel [15]
            Left = 324
            Top = 59
            Width = 26
            Height = 13
            Caption = #24065#21035
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object bvl14: TBevel [16]
            Left = 324
            Top = 75
            Width = 236
            Height = 2
            Shape = bsTopLine
            Style = bsRaised
          end
          object lbl12: TLabel [17]
            Left = 635
            Top = 59
            Width = 26
            Height = 13
            Caption = #27719#29575
            Font.Charset = GB2312_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = #23435#20307
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object bvl15: TBevel [18]
            Left = 635
            Top = 75
            Width = 236
            Height = 2
            Shape = bsTopLine
            Style = bsRaised
          end
          object bvl16: TBevel [19]
            Left = 8
            Top = 99
            Width = 865
            Height = 2
            Shape = bsTopLine
            Style = bsRaised
          end
          inherited cxBIZDATE: TcxDBDateEdit
            Left = 396
            ParentFont = False
            Style.Font.Height = -15
            Style.IsFontAssigned = True
          end
          inherited cxFNumber: TcxDBMaskEdit
            Left = 75
          end
          inherited dbimgcmbFBaseStatus: TcxDBImageComboBox
            Left = 707
            Width = 166
          end
          object dbedtbtnFSupplierName: TcxDBButtonEdit
            Left = 74
            Top = 30
            DataBinding.DataField = 'FSupplierName'
            DataBinding.DataSource = dsMaster
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = dbedtbtn1PropertiesButtonClick
            TabOrder = 4
            Width = 173
          end
          object dbedtbtnFBizTypeName: TcxDBButtonEdit
            Tag = 100
            Left = 396
            Top = 30
            DataBinding.DataField = 'FBizTypeName'
            DataBinding.DataSource = dsMaster
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
                Visible = False
              end>
            Properties.ReadOnly = True
            TabOrder = 5
            Width = 167
          end
          object dbedtbtnFTransactionTypeName: TcxDBButtonEdit
            Left = 707
            Top = 30
            DataBinding.DataField = 'FTransactionTypeName'
            DataBinding.DataSource = dsMaster
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = dbedtbtn3PropertiesButtonClick
            TabOrder = 6
            Width = 166
          end
          object dbedtbtnFStorageOrgUnitName: TcxDBButtonEdit
            Tag = 100
            Left = 74
            Top = 55
            DataBinding.DataField = 'FStorageOrgUnitName'
            DataBinding.DataSource = dsMaster
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
                Visible = False
              end>
            Properties.ReadOnly = True
            TabOrder = 7
            Width = 173
          end
          object dbedtbtnFCurrencyName: TcxDBButtonEdit
            Tag = 100
            Left = 396
            Top = 56
            DataBinding.DataField = 'FCurrencyName'
            DataBinding.DataSource = dsMaster
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
                Visible = False
              end>
            Properties.ReadOnly = True
            TabOrder = 8
            Width = 167
          end
          object dbedtbtnFExchangeRate: TcxDBButtonEdit
            Tag = 100
            Left = 707
            Top = 56
            DataBinding.DataField = 'FExchangeRate'
            DataBinding.DataSource = dsMaster
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
                Visible = False
              end>
            Properties.ReadOnly = True
            TabOrder = 9
            Width = 166
          end
          object FDescription: TcxDBMemo
            Left = 74
            Top = 80
            DataBinding.DataField = 'FDescription'
            DataBinding.DataSource = dsMaster
            TabOrder = 10
            Height = 22
            Width = 489
          end
          object cxLabel2: TcxLabel
            Left = 8
            Top = 83
            Caption = #25688#35201
          end
        end
      end
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
    CommandText = 
      'select A.*,B.FName_L2 as FSupplierName,C.FName_L2 as FBizTypeNam' +
      'e,D.FName_L2 as FTransactionTypeName, E.FName_L2 as FStorageOrgU' +
      'nitName,G.FName_L2 as FCurrencyName,H.FName_L2 as FCreatorName,I' +
      '.FName_L2 as FModifierName,J.FName_L2 as FAuditorName  from T_IM' +
      '_PurInWarehsBill A left outer join T_BD_Supplier B on A.FSupplie' +
      'rID=B.FID left outer join T_SCM_BizType C on A.FBizTypeID=C.FID ' +
      'left outer join T_SCM_TransactionType D on A.FTransactionTypeID=' +
      'D.FID left outer join T_ORG_Storage E on A.FStorageOrgUnitID=E.F' +
      'ID left outer join T_BD_Currency G on A.FCurrencyID=G.FID  left ' +
      'outer join T_PM_User H on A.FCreatorID=H.FID  left outer join T_' +
      'PM_User I on A.FModifierID=I.FID  left outer join T_PM_User J on' +
      ' A.FAuditorID=J.FID'
    OnNewRecord = cdsMasterNewRecord
  end
  inherited cdsDetail: TClientDataSet
    CommandText = 
      'select A.*,B.FName_L2 as FMaterialName,B.FNumber as FMaterialNum' +
      'ber,C.FName_L2 as FWarehouseName  from T_IM_PurInWarehsEntry A l' +
      'eft outer join T_BD_Material B on  A.FMaterialID=B.FID left oute' +
      'r join T_DB_WAREHOUSE C on A.FWarehouseID =C.FID'
  end
  inherited cdsMaster_Save: TClientDataSet
    CommandText = 'select * from T_IM_PurInWarehsBill'
    ProviderName = 'dsp_Pub'
    RemoteServer = CliDM.SckCon
  end
  inherited cdsDetail_Save: TClientDataSet
    CommandText = 'select * from T_IM_PurInWarehsEntry'
    ProviderName = 'dsp_Pub'
    RemoteServer = CliDM.SckCon
  end
end
