inherited PriceQueryFrm: TPriceQueryFrm
  Left = 292
  Top = 188
  Caption = #20215#26684#26597#35810
  ClientWidth = 951
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 12
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 0
    Width = 951
    Height = 442
    ActivePage = cxTabSheet1
    Align = alClient
    Style = 10
    TabOrder = 0
    ClientRectBottom = 442
    ClientRectRight = 951
    ClientRectTop = 18
    object cxTabSheet1: TcxTabSheet
      Caption = #28192#36947#35843#20215#26597#35810
      ImageIndex = 0
      object cxGroupBox1: TcxGroupBox
        Left = 0
        Top = 0
        Align = alTop
        Caption = #26465#20214
        TabOrder = 0
        DesignSize = (
          951
          73)
        Height = 73
        Width = 951
        object Label1: TLabel
          Left = 26
          Top = 21
          Width = 54
          Height = 12
          AutoSize = False
          Caption = #35843#20215#26426#26500
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 435
          Top = 21
          Width = 24
          Height = 12
          Caption = #23458#25143
        end
        object Label3: TLabel
          Left = 225
          Top = 21
          Width = 55
          Height = 12
          AutoSize = False
          Caption = #35843#20215#21333#21495
        end
        object Label4: TLabel
          Left = 435
          Top = 47
          Width = 48
          Height = 12
          Caption = #29289#26009#32534#21495
        end
        object Label5: TLabel
          Left = 225
          Top = 47
          Width = 55
          Height = 12
          AutoSize = False
          Caption = #22833#25928#26085#26399
        end
        object Label13: TLabel
          Left = 635
          Top = 47
          Width = 48
          Height = 12
          Caption = #20215#26684#31867#22411
        end
        object txt_CreateUnit: TcxButtonEdit
          Left = 81
          Top = 18
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.ClickKey = 118
          Properties.OnButtonClick = txt_CreateUnitPropertiesButtonClick
          TabOrder = 0
          OnKeyPress = txt_CreateUnitKeyPress
          Width = 140
        end
        object txt_QDMaterial: TcxButtonEdit
          Left = 491
          Top = 43
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.ClickKey = 118
          Properties.OnButtonClick = txt_QDMaterialPropertiesButtonClick
          TabOrder = 8
          OnKeyPress = txt_QDMaterialKeyPress
          Width = 140
        end
        object txt_QDCustomer: TcxButtonEdit
          Left = 491
          Top = 18
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.ClickKey = 118
          Properties.OnButtonClick = txt_QDCustomerPropertiesButtonClick
          TabOrder = 2
          OnKeyPress = txt_QDCustomerKeyPress
          Width = 140
        end
        object txt_QDBill: TcxTextEdit
          Left = 285
          Top = 18
          TabOrder = 1
          Width = 140
        end
        object QDbegin: TcxDateEdit
          Left = 81
          Top = 43
          Properties.SaveTime = False
          Properties.ShowTime = False
          TabOrder = 6
          Width = 140
        end
        object QDEnd: TcxDateEdit
          Left = 285
          Top = 43
          TabOrder = 7
          Width = 140
        end
        object chk_QD: TcxCheckBox
          Left = 6
          Top = 43
          Caption = #29983#25928#26085#26399
          State = cbsChecked
          TabOrder = 5
          Width = 72
        end
        object btn_QDQuery: TcxButton
          Left = 805
          Top = 40
          Width = 63
          Height = 25
          Anchors = [akTop, akRight]
          Caption = #26597#35810
          TabOrder = 3
          OnClick = btn_QDQueryClick
          LookAndFeel.Kind = lfOffice11
        end
        object cxButton3: TcxButton
          Left = 873
          Top = 40
          Width = 63
          Height = 25
          Anchors = [akTop, akRight]
          Caption = #23548#20986
          TabOrder = 4
          OnClick = cxButton3Click
          LookAndFeel.Kind = lfOffice11
        end
        object cb_PriceType: TcxLookupComboBox
          Left = 688
          Top = 43
          Properties.DropDownListStyle = lsFixedList
          Properties.KeyFieldNames = 'FID'
          Properties.ListColumns = <
            item
              FieldName = 'Fname_l2'
            end>
          Properties.ListOptions.ShowHeader = False
          TabOrder = 9
          Width = 105
        end
      end
      object cxGrid2: TcxGrid
        Left = 0
        Top = 73
        Width = 951
        Height = 351
        Align = alClient
        PopupMenu = PopupMenu1
        TabOrder = 1
        LookAndFeel.Kind = lfOffice11
        LookAndFeel.SkinName = 'Office2007Black'
        object cxGridQD: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsQD
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
        end
        object cxGrid2Level1: TcxGridLevel
          GridView = cxGridQD
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = #38646#21806#35843#20215#26597#35810
      ImageIndex = 1
      object cxGroupBox2: TcxGroupBox
        Left = 0
        Top = 0
        Align = alTop
        Caption = #26465#20214
        TabOrder = 0
        DesignSize = (
          951
          73)
        Height = 73
        Width = 951
        object Label6: TLabel
          Left = 26
          Top = 22
          Width = 54
          Height = 12
          AutoSize = False
          Caption = #35843#20215#26426#26500
        end
        object Label7: TLabel
          Left = 435
          Top = 22
          Width = 24
          Height = 12
          Caption = #24215#38138
        end
        object Label8: TLabel
          Left = 225
          Top = 22
          Width = 55
          Height = 12
          AutoSize = False
          Caption = #35843#20215#21333#21495
        end
        object Label9: TLabel
          Left = 435
          Top = 48
          Width = 48
          Height = 12
          Caption = #29289#26009#32534#21495
        end
        object Label10: TLabel
          Left = 225
          Top = 48
          Width = 55
          Height = 12
          AutoSize = False
          Caption = #22833#25928#26085#26399
        end
        object RTUnit: TcxButtonEdit
          Left = 81
          Top = 19
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.ClickKey = 118
          Properties.OnButtonClick = RTUnitPropertiesButtonClick
          TabOrder = 0
          OnKeyPress = RTUnitKeyPress
          Width = 140
        end
        object RTMaterial: TcxButtonEdit
          Left = 491
          Top = 44
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.ClickKey = 118
          Properties.OnButtonClick = RTMaterialPropertiesButtonClick
          TabOrder = 8
          OnKeyPress = RTMaterialKeyPress
          Width = 140
        end
        object RTShop: TcxButtonEdit
          Left = 491
          Top = 19
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.ClickKey = 118
          Properties.OnButtonClick = RTShopPropertiesButtonClick
          TabOrder = 2
          OnKeyPress = RTShopKeyPress
          Width = 140
        end
        object RTBill: TcxTextEdit
          Left = 285
          Top = 19
          TabOrder = 1
          Width = 140
        end
        object RTBegin: TcxDateEdit
          Left = 81
          Top = 44
          Properties.SaveTime = False
          Properties.ShowTime = False
          TabOrder = 6
          Width = 140
        end
        object RTEnd: TcxDateEdit
          Left = 285
          Top = 44
          Properties.SaveTime = False
          Properties.ShowTime = False
          TabOrder = 7
          Width = 140
        end
        object chk_RT: TcxCheckBox
          Left = 6
          Top = 44
          Caption = #29983#25928#26085#26399
          State = cbsChecked
          TabOrder = 5
          Width = 72
        end
        object btn_RTQuery: TcxButton
          Left = 805
          Top = 40
          Width = 63
          Height = 25
          Anchors = [akTop, akRight]
          Caption = #26597#35810
          TabOrder = 3
          OnClick = btn_RTQueryClick
          LookAndFeel.Kind = lfOffice11
        end
        object cxButton4: TcxButton
          Left = 873
          Top = 40
          Width = 63
          Height = 25
          Anchors = [akTop, akRight]
          Caption = #23548#20986
          TabOrder = 4
          OnClick = cxButton4Click
          LookAndFeel.Kind = lfOffice11
        end
      end
      object cxGrid1: TcxGrid
        Left = 0
        Top = 73
        Width = 951
        Height = 351
        Align = alClient
        PopupMenu = PopupMenu1
        TabOrder = 1
        LookAndFeel.Kind = lfOffice11
        LookAndFeel.SkinName = 'Office2007Black'
        object cxGridRT: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsRT
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
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridRT
        end
      end
    end
    object cxTabSheet3: TcxTabSheet
      Caption = #28192#36947#37319#36141#20215#26684#26597#35810
      ImageIndex = 2
      object cxGroupBox3: TcxGroupBox
        Left = 0
        Top = 0
        Align = alTop
        Caption = #26465#20214
        TabOrder = 0
        DesignSize = (
          951
          73)
        Height = 73
        Width = 951
        object Label11: TLabel
          Left = 26
          Top = 22
          Width = 54
          Height = 12
          AutoSize = False
          Caption = #23458#25143
        end
        object Label14: TLabel
          Left = 435
          Top = 48
          Width = 48
          Height = 12
          Caption = #29289#26009#32534#21495
        end
        object Label15: TLabel
          Left = 225
          Top = 48
          Width = 55
          Height = 12
          AutoSize = False
          Caption = #22833#25928#26085#26399
        end
        object Label12: TLabel
          Left = 227
          Top = 24
          Width = 54
          Height = 12
          AutoSize = False
          Caption = #20379#24212#21830
        end
        object Label16: TLabel
          Left = 435
          Top = 24
          Width = 246
          Height = 12
          AutoSize = False
          Caption = #25552#31034':'#27492#22788#21482#25552#20379#26597#35810#20379#24212#21830#35843#25972#36807#21518#30340#20215#26684#12290
        end
        object PUR_Customer: TcxButtonEdit
          Left = 81
          Top = 19
          Enabled = False
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          TabOrder = 0
          Width = 140
        end
        object PurMaterial: TcxButtonEdit
          Left = 491
          Top = 44
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.ClickKey = 118
          Properties.OnButtonClick = PurMaterialPropertiesButtonClick
          TabOrder = 7
          OnKeyPress = PurMaterialKeyPress
          Width = 140
        end
        object PurBegin: TcxDateEdit
          Left = 81
          Top = 44
          Properties.SaveTime = False
          Properties.ShowTime = False
          TabOrder = 5
          Width = 140
        end
        object PurEnd: TcxDateEdit
          Left = 285
          Top = 44
          Properties.SaveTime = False
          Properties.ShowTime = False
          TabOrder = 6
          Width = 140
        end
        object chk_PUR: TcxCheckBox
          Left = 6
          Top = 44
          Caption = #29983#25928#26085#26399
          State = cbsChecked
          TabOrder = 4
          Width = 72
        end
        object Pur_Supper: TcxButtonEdit
          Left = 285
          Top = 19
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.ClickKey = 118
          Properties.OnButtonClick = Pur_SupperPropertiesButtonClick
          TabOrder = 1
          OnKeyPress = Pur_SupperKeyPress
          Width = 140
        end
        object cxButton2: TcxButton
          Left = 805
          Top = 40
          Width = 63
          Height = 25
          Anchors = [akTop, akRight]
          Caption = #26597#35810
          TabOrder = 2
          OnClick = cxButton2Click
          LookAndFeel.Kind = lfOffice11
        end
        object cxButton5: TcxButton
          Left = 873
          Top = 40
          Width = 63
          Height = 25
          Anchors = [akTop, akRight]
          Caption = #23548#20986
          TabOrder = 3
          OnClick = cxButton5Click
          LookAndFeel.Kind = lfOffice11
        end
      end
      object cxGrid3: TcxGrid
        Left = 0
        Top = 73
        Width = 951
        Height = 351
        Align = alClient
        PopupMenu = PopupMenu1
        TabOrder = 1
        LookAndFeel.Kind = lfOffice11
        LookAndFeel.SkinName = 'Office2007Black'
        object cxGridPur: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsPur
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
        end
        object cxGridLevel2: TcxGridLevel
          GridView = cxGridPur
        end
      end
    end
  end
  object cdsQD: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 104
    Top = 162
  end
  object dsQD: TDataSource
    DataSet = cdsQD
    Left = 160
    Top = 162
  end
  object cdsPur: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 520
    Top = 194
  end
  object dsPur: TDataSource
    DataSet = cdsPur
    Left = 616
    Top = 178
  end
  object cdsRT: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 168
    Top = 266
  end
  object dsRT: TDataSource
    DataSet = cdsRT
    Left = 216
    Top = 266
  end
  object PopupMenu1: TPopupMenu
    AutoHotkeys = maManual
    Left = 336
    Top = 200
    object seeMaterialinfo: TMenuItem
      Caption = #26597#30475#29289#26009#20449#24687
      ShortCut = 119
      OnClick = seeMaterialinfoClick
    end
  end
  object SaveDg: TSaveDialog
    Filter = 'EXCEL(*.XLS)|*.XLS'
    Left = 555
    Top = 306
  end
end
