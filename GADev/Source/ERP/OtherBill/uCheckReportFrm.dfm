inherited Frm_CheckReport: TFrm_CheckReport
  Left = 150
  Top = 51
  Width = 1036
  Height = 702
  Caption = #30424#28857#20998#26512
  OldCreateOrder = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 12
  object Panel1: TPanel [0]
    Left = 0
    Top = 0
    Width = 1020
    Height = 65
    Align = alTop
    BevelOuter = bvNone
    Color = 16053228
    TabOrder = 0
    DesignSize = (
      1020
      65)
    object Label1: TLabel
      Left = 7
      Top = 16
      Width = 89
      Height = 13
      AutoSize = False
      Caption = #36873#25321#30424#28857#26085#26399
      Transparent = True
    end
    object Label5: TLabel
      Left = 5
      Top = 44
      Width = 91
      Height = 13
      AutoSize = False
      Caption = #21830#21697#32534#21495#36807#28388
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label2: TLabel
      Left = 686
      Top = 15
      Width = 89
      Height = 13
      Anchors = [akTop, akRight]
      AutoSize = False
      Caption = #25152#26377#30424#28857#26085#26399
      Transparent = True
    end
    object cbCheckDate: TcxComboBox
      Left = 82
      Top = 11
      Properties.DropDownListStyle = lsFixedList
      Properties.ReadOnly = False
      TabOrder = 0
      Width = 121
    end
    object btFind: TcxButton
      Left = 540
      Top = 8
      Width = 117
      Height = 25
      Caption = #30424#28857#30830#35748#21069#20998#26512
      TabOrder = 1
      OnClick = btFindClick
      LookAndFeel.Kind = lfOffice11
    end
    object bt_material: TcxTextEdit
      Left = 82
      Top = 40
      Properties.OnChange = cxTextEdit1PropertiesChange
      TabOrder = 2
      Width = 121
    end
    object cbOldCheckDate: TcxComboBox
      Left = 767
      Top = 11
      Anchors = [akTop, akRight]
      Properties.DropDownListStyle = lsFixedList
      Properties.ReadOnly = False
      TabOrder = 3
      Width = 118
    end
    object btOldFind: TcxButton
      Left = 906
      Top = 8
      Width = 117
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #26597#30475#21382#21490#30424#28857#25253#34920
      TabOrder = 4
      OnClick = btOldFindClick
      LookAndFeel.Kind = lfOffice11
    end
    object cxButton4: TcxButton
      Left = 908
      Top = 40
      Width = 117
      Height = 25
      Caption = #33719#21462#21382#21490#30424#28857#26085#26399
      TabOrder = 5
      Visible = False
      OnClick = cxButton4Click
      LookAndFeel.Kind = lfOffice11
    end
    object cxLabel1: TcxLabel
      Left = 235
      Top = 16
      Caption = #30424#28857#20179#24211
    end
    object cxbtnWarehouse: TcxButtonEdit
      Left = 290
      Top = 11
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ReadOnly = True
      Properties.OnButtonClick = cxbtnWarehousePropertiesButtonClick
      TabOrder = 7
      Width = 231
    end
  end
  object Panel2: TPanel [1]
    Left = 0
    Top = 65
    Width = 1020
    Height = 558
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object PageControl1: TPageControl
      Left = 0
      Top = 0
      Width = 1020
      Height = 558
      ActivePage = TabSheet1
      Align = alClient
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = #30424#28857#30408#20111#20998#26512
        object cxGrid1: TcxGrid
          Left = 0
          Top = 0
          Width = 1012
          Height = 531
          Align = alClient
          TabOrder = 0
          LookAndFeel.Kind = lfOffice11
          LookAndFeel.SkinName = 'Office2007Black'
          object dbgList: TcxGridDBBandedTableView
            OnKeyDown = dbgListKeyDown
            OnMouseDown = dbgListMouseDown
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = dsCheckList
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
            Bands = <
              item
                Caption = #21830#21697#20449#24687
                Width = 695
              end
              item
                Caption = #24211#23384#25968#37327
                Width = 410
              end
              item
                Caption = #30424#28857#25968#37327
                Width = 400
              end
              item
                Caption = #30408#20111#25968#37327
                Width = 400
              end>
          end
          object dbgLevel1: TcxGridLevel
            Caption = #31446#25490
            GridView = dbgList
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = #26410#30424#21830#21697#28165#21333
        ImageIndex = 1
        object cxGrid2: TcxGrid
          Left = 0
          Top = 0
          Width = 1020
          Height = 535
          Align = alClient
          TabOrder = 0
          LookAndFeel.Kind = lfOffice11
          LookAndFeel.SkinName = 'Office2007Black'
          object dbgList2: TcxGridDBBandedTableView
            OnKeyDown = dbgListKeyDown
            OnMouseDown = dbgListMouseDown
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = dsCheckList2
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
            Bands = <
              item
                Caption = #21830#21697#20449#24687
                Width = 471
              end
              item
                Caption = #24211#23384#25968#37327
                Width = 553
              end>
          end
          object cxGridLevel1: TcxGridLevel
            Caption = #31446#25490
            GridView = dbgList2
          end
        end
      end
    end
  end
  object Panel3: TPanel [2]
    Left = 0
    Top = 623
    Width = 1020
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    Color = 16053228
    TabOrder = 2
    DesignSize = (
      1020
      41)
    object Label4: TLabel
      Left = 734
      Top = 12
      Width = 66
      Height = 12
      Cursor = crHandPoint
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      AutoSize = False
      Caption = #21344#27604#32479#35745
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      Transparent = True
      OnClick = Label4Click
    end
    object Image2: TImage
      Left = 731
      Top = 10
      Width = 16
      Height = 16
      Anchors = [akTop, akRight]
      AutoSize = True
      Picture.Data = {
        07544269746D617036040000424D360400000000000036000000280000001000
        0000100000000100200000000000000400000000000000000000000000000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00A5735200735A4A009C6B4A009C6B4A009C6B
        4A009C6B4A009C6B4A00735A4A00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00735A4A00735A4A009C6B4A00BD845200CE8C5200D694
        5200D6945200C6845200A57B4A0084634200846B6300FF00FF00FF00FF00FF00
        FF00FF00FF00735A4A00A5735200BD845200CE8C5200CE8C5200C68C4A00CE8C
        5200CE8C5200CE845200CE8C5200C6845200A5734A0063527B00FF00FF00FF00
        FF00735A4A00A5735200C6845200C6844A00CE8C4A00CE8C5200D6945200CE94
        5200C68C5200CE945200CE8C4A00C68C4A00A57B52005A4ABD00736BA500FF00
        FF00A5735200BD7B4200C6844A00DEA56300E7BD8400F7D6A500F7E7B500FFEF
        BD00FFEFB500F7E7B500F7CE9C00DEB57B00B5845A00634AAD005A4A9400FF00
        FF00A5735200C68C5200DEB57B00F7DEAD00F7E7AD00F7E7B500F7E7AD00F7E7
        AD00FFE7AD00FFE7AD00F7E7B500E7D6A500A5948C007363C6005A4A9400FF00
        FF00A5735200E7BD8400F7DEA500F7DEAD00F7DEAD00F7DEAD00F7DEAD00FFDE
        AD00F7DEAD00E7D6A500B5A59400ADA5BD00AD9CDE009C8CEF006B639C00FF00
        FF00A5735200DEC69C00E7CEA500DECE9C00DECE9C00DECE9C00DECEA500DEC6
        A500B5AD9C00948CBD00AD94EF00AD94EF00A594F700AD94F700847BAD00FF00
        FF008C9CA50084C6B50084CEC60084CEC60084CEC6008CCEC60084CEC60084B5
        BD008C8CC6009C84E7009C8CEF009C84E7009C8CEF009C8CE7007B73A500FF00
        FF008C9CA50073CECE0073F7FF0073F7FF007BF7FF007BF7FF0073F7F70073F7
        F7007BBDD600847BCE009473E7009473E7009473E7008C73D6008C849C00FF00
        FF00FF00FF008C9CA5007BD6DE007BEFFF0073EFFF0073EFFF0073EFFF006BEF
        FF006BE7FF0073BDCE007B73C6008C63D6008C63D60084739C00FF00FF00FF00
        FF00FF00FF00FF00FF009CA5B50073B5C6006BCEDE006BD6EF006BDEFF006BDE
        FF006BDEFF006BD6EF0073A5BD007B73A5009484A500FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00ADBDBD008CB5BD007BADBD0073AD
        B50073A5BD0084ADBD009CB5BD00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00}
      Transparent = True
    end
    object Label6: TLabel
      Left = 8
      Top = 8
      Width = 577
      Height = 29
      AutoSize = False
      Caption = #30424#30408#25968#37327'='#30408#20111#25968#37327#26639#21508#26126#32454#23610#30721#21015#30340#27491#25968#20043#21644#12290#13#10#30424#20111#25968#37327'='#30408#20111#25968#37327#26639#21508#26126#32454#23610#30721#21015#30340#36127#25968#20043#21644#12290
      WordWrap = True
    end
    object cxButton1: TcxButton
      Left = 824
      Top = 8
      Width = 85
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #23548#20986'Excel'
      TabOrder = 0
      OnClick = cxButton1Click
      LookAndFeel.Kind = lfOffice11
    end
    object cxButton2: TcxButton
      Left = 922
      Top = 8
      Width = 81
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #36864#20986
      TabOrder = 1
      OnClick = cxButton2Click
      LookAndFeel.Kind = lfOffice11
    end
  end
  object cdsCheckList: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 368
    Top = 145
  end
  object dsCheckList: TDataSource
    DataSet = cdsCheckList
    Left = 360
    Top = 193
  end
  object SaveDg: TSaveDialog
    Filter = 'EXCEL(*.XLS)|*.XLS'
    Left = 523
    Top = 146
  end
  object cdsCheckDate: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 408
    Top = 57
  end
  object ActionList1: TActionList
    Left = 584
    Top = 153
    object act_SetSizesCaption: TAction
      Caption = #35774#32622#23610#30721#26631#39064
      OnExecute = act_SetSizesCaptionExecute
    end
  end
  object cdsCheckList2: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 776
    Top = 201
  end
  object dsCheckList2: TDataSource
    DataSet = cdsCheckList2
    Left = 768
    Top = 249
  end
  object cdsOldCheckDate: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 672
    Top = 25
  end
end
