inherited TreeBaseEditFrm: TTreeBaseEditFrm
  Left = 374
  Top = 126
  Width = 749
  Height = 596
  Caption = #26641#32467#26500#32500#25252#22522#31867
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 12
  object Panel1: TPanel [0]
    Left = 0
    Top = 0
    Width = 733
    Height = 516
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 1
      Top = 1
      Width = 457
      Height = 514
      Align = alClient
      Caption = #23376#31995#32479
      Color = 16511980
      ParentColor = False
      TabOrder = 0
      DesignSize = (
        457
        514)
      object btn_New: TcxButton
        Left = 348
        Top = 24
        Width = 97
        Height = 25
        Anchors = [akTop, akRight]
        Caption = #26032#22686#33410#28857'(&N)'
        TabOrder = 1
        OnClick = btn_NewClick
        LookAndFeel.Kind = lfOffice11
      end
      object btn_newSubItem: TcxButton
        Left = 348
        Top = 56
        Width = 97
        Height = 25
        Anchors = [akTop, akRight]
        Caption = #26032#22686#23376#33410#28857'(&U)'
        TabOrder = 2
        OnClick = btn_newSubItemClick
        LookAndFeel.Kind = lfOffice11
      end
      object btn_del: TcxButton
        Left = 348
        Top = 88
        Width = 97
        Height = 25
        Anchors = [akTop, akRight]
        Caption = #21024#38500#33410#28857'(&D)'
        TabOrder = 3
        OnClick = btn_delClick
        LookAndFeel.Kind = lfOffice11
      end
      object btn_open: TcxButton
        Left = 348
        Top = 120
        Width = 97
        Height = 25
        Anchors = [akTop, akRight]
        Caption = #20840#37096#23637#24320
        TabOrder = 4
        OnClick = btn_openClick
        LookAndFeel.Kind = lfOffice11
      end
      object btn_ss: TcxButton
        Left = 348
        Top = 152
        Width = 97
        Height = 25
        Anchors = [akTop, akRight]
        Caption = #20840#37096#25910#32553
        TabOrder = 5
        OnClick = btn_ssClick
        LookAndFeel.Kind = lfOffice11
      end
      object btn_move: TcxButton
        Left = 348
        Top = 184
        Width = 97
        Height = 25
        Anchors = [akTop, akRight]
        Caption = #31227#21160#33410#28857'(&M)'
        TabOrder = 6
        OnClick = btn_moveClick
        LookAndFeel.Kind = lfOffice11
      end
      object TreeList: TcxDBTreeList
        Left = 9
        Top = 16
        Width = 328
        Height = 491
        Anchors = [akLeft, akTop, akRight, akBottom]
        Bands = <
          item
          end>
        DataController.DataSource = dsMenu
        DataController.ParentField = 'FPARENTID'
        DataController.KeyField = 'FID'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        LookAndFeel.Kind = lfOffice11
        LookAndFeel.NativeStyle = True
        OptionsData.Editing = False
        OptionsData.Deleting = False
        OptionsSelection.CellSelect = False
        OptionsSelection.HideFocusRect = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.Headers = False
        ParentFont = False
        RootValue = -1
        TabOrder = 0
        OnFocusedNodeChanged = TreeListFocusedNodeChanged
        object cxDBTreeList1cxDBTreeListColumn1: TcxDBTreeListColumn
          Visible = False
          DataBinding.FieldName = 'FID'
          Position.ColIndex = 0
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object cxDBTreeList1cxDBTreeListColumn2: TcxDBTreeListColumn
          Visible = False
          DataBinding.FieldName = 'FNUMBER'
          Position.ColIndex = 1
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object cxDBTreeList1cxDBTreeListColumn3: TcxDBTreeListColumn
          Visible = False
          DataBinding.FieldName = 'FNAME_L1'
          Width = 463
          Position.ColIndex = 2
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object cxDBTreeList1cxDBTreeListColumn4: TcxDBTreeListColumn
          DataBinding.FieldName = 'FNAME_L2'
          Position.ColIndex = 3
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object cxDBTreeList1cxDBTreeListColumn5: TcxDBTreeListColumn
          Visible = False
          DataBinding.FieldName = 'FNAME_L3'
          Position.ColIndex = 4
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object cxDBTreeList1cxDBTreeListColumn6: TcxDBTreeListColumn
          Visible = False
          DataBinding.FieldName = 'FPARENTID'
          Position.ColIndex = 5
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object cxDBTreeList1cxDBTreeListColumn7: TcxDBTreeListColumn
          Visible = False
          DataBinding.FieldName = 'FISROOT'
          Position.ColIndex = 6
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object cxDBTreeList1cxDBTreeListColumn8: TcxDBTreeListColumn
          Visible = False
          DataBinding.FieldName = 'FIMGAGEINDEX'
          Position.ColIndex = 7
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object cxDBTreeList1cxDBTreeListColumn9: TcxDBTreeListColumn
          Visible = False
          DataBinding.FieldName = 'FSELECTIMGAGEINDEX'
          Position.ColIndex = 8
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object cxDBTreeList1cxDBTreeListColumn10: TcxDBTreeListColumn
          Visible = False
          DataBinding.FieldName = 'FISSYSTEM'
          Position.ColIndex = 9
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object cxDBTreeList1cxDBTreeListColumn11: TcxDBTreeListColumn
          Visible = False
          DataBinding.FieldName = 'FLASTUPDATETIME'
          Position.ColIndex = 10
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
        object cxDBTreeList1cxDBTreeListColumn12: TcxDBTreeListColumn
          Visible = False
          DataBinding.FieldName = 'FLASTUPDATEUSER'
          Position.ColIndex = 11
          Position.RowIndex = 0
          Position.BandIndex = 0
          Summary.FooterSummaryItems = <>
          Summary.GroupFooterSummaryItems = <>
        end
      end
    end
    object GroupBox2: TGroupBox
      Left = 458
      Top = 1
      Width = 274
      Height = 514
      Align = alRight
      Caption = #33410#28857#23646#24615
      Color = 16511980
      ParentColor = False
      TabOrder = 1
      DesignSize = (
        274
        514)
      object Label1: TLabel
        Left = 15
        Top = 37
        Width = 57
        Height = 12
        AutoSize = False
        Caption = #32534#21495
      end
      object Label2: TLabel
        Left = 15
        Top = 66
        Width = 57
        Height = 12
        AutoSize = False
        Caption = #21517#31216
      end
      object Label3: TLabel
        Left = 15
        Top = 95
        Width = 57
        Height = 12
        AutoSize = False
        Caption = #22270#26631#32534#21495
      end
      object txt_number: TcxDBTextEdit
        Left = 97
        Top = 34
        DataBinding.DataField = 'FNUMBER'
        DataBinding.DataSource = dsMenu
        TabOrder = 0
        Width = 161
      end
      object spe_imgindex: TcxDBSpinEdit
        Left = 97
        Top = 91
        DataBinding.DataField = 'FIMGAGEINDEX'
        DataBinding.DataSource = dsMenu
        Enabled = False
        Properties.SpinButtons.Visible = False
        Style.LookAndFeel.Kind = lfUltraFlat
        StyleDisabled.LookAndFeel.Kind = lfUltraFlat
        StyleFocused.LookAndFeel.Kind = lfUltraFlat
        StyleHot.LookAndFeel.Kind = lfUltraFlat
        TabOrder = 2
        Width = 83
      end
      object txt_Name: TcxDBTextEdit
        Left = 97
        Top = 61
        DataBinding.DataField = 'FNAME_L2'
        DataBinding.DataSource = dsMenu
        TabOrder = 1
        Width = 161
      end
      object chk_Sytem: TcxDBCheckBox
        Left = 96
        Top = 123
        Caption = #31995#32479#39044#32622
        DataBinding.DataField = 'FISSYSTEM'
        DataBinding.DataSource = dsMenu
        Enabled = False
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        TabOrder = 3
        Width = 82
      end
      object btn_Config: TcxButton
        Left = 167
        Top = 176
        Width = 75
        Height = 25
        Anchors = [akTop, akRight]
        Caption = #30830#35748'(&A)'
        TabOrder = 4
        OnClick = btn_ConfigClick
        LookAndFeel.Kind = lfOffice11
      end
      object cb_imgindex: TdxImageComboBox
        Left = 184
        Top = 90
        Width = 73
        Height = 22
        Alignment = taLeftJustify
        ImageAlign = dxliLeft
        ItemHeight = 0
        MultiLines = False
        VertAlignment = tvaCenter
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 5
        OnChange = cb_imgindexChange
        SaveStrings = ()
      end
      object cxDBCheckBox1: TcxDBCheckBox
        Left = 184
        Top = 123
        Caption = #26174#31034
        DataBinding.DataField = 'FVisible'
        DataBinding.DataSource = dsMenu
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        TabOrder = 6
        Width = 73
      end
    end
  end
  object Panel2: TPanel [1]
    Left = 0
    Top = 516
    Width = 733
    Height = 41
    Align = alBottom
    Color = 16511980
    TabOrder = 1
    DesignSize = (
      733
      41)
    object btn_Save: TcxButton
      Left = 514
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #20445#23384'(&S)'
      TabOrder = 0
      OnClick = btn_SaveClick
      LookAndFeel.Kind = lfOffice11
    end
    object tbn_Exit: TcxButton
      Left = 610
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #36864#20986'(&E)'
      TabOrder = 1
      OnClick = tbn_ExitClick
      LookAndFeel.Kind = lfOffice11
    end
  end
  inherited STBaseEditDataSet: TClientDataSet
    Left = 312
    Top = 256
  end
  object cdsMenu: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterInsert = cdsMenuAfterInsert
    BeforePost = cdsMenuBeforePost
    AfterScroll = cdsMenuAfterScroll
    Left = 520
    Top = 272
    object cdsMenuFID: TStringField
      FieldName = 'FID'
      Size = 44
    end
    object cdsMenuFNUMBER: TStringField
      FieldName = 'FNUMBER'
      Size = 200
    end
    object cdsMenuFNAME_L1: TWideStringField
      FieldName = 'FNAME_L1'
      Size = 200
    end
    object cdsMenuFNAME_L2: TWideStringField
      FieldName = 'FNAME_L2'
      Size = 200
    end
    object cdsMenuFNAME_L3: TWideStringField
      FieldName = 'FNAME_L3'
      Size = 200
    end
    object cdsMenuFPARENTID: TStringField
      FieldName = 'FPARENTID'
      Size = 44
    end
    object cdsMenuFISROOT: TIntegerField
      FieldName = 'FISROOT'
    end
    object cdsMenuFIMGAGEINDEX: TIntegerField
      FieldName = 'FIMGAGEINDEX'
    end
    object cdsMenuFSELECTIMGAGEINDEX: TIntegerField
      FieldName = 'FSELECTIMGAGEINDEX'
    end
    object cdsMenuFISSYSTEM: TIntegerField
      FieldName = 'FISSYSTEM'
    end
    object cdsMenuFLASTUPDATETIME: TDateTimeField
      FieldName = 'FLASTUPDATETIME'
    end
    object cdsMenuFLASTUPDATEUSER: TStringField
      FieldName = 'FLASTUPDATEUSERID'
      Size = 44
    end
    object cdsMenuFVisible: TIntegerField
      FieldName = 'FVisible'
    end
    object cdsMenuflongnumber: TWideStringField
      FieldName = 'flongnumber'
      Size = 1200
    end
    object cdsMenufcreatorid: TStringField
      FieldName = 'fcreatorid'
      Size = 80
    end
    object cdsMenufcreatetime: TDateTimeField
      FieldName = 'fcreatetime'
    end
    object cdsMenuFLevel: TIntegerField
      FieldName = 'FLevel'
    end
  end
  object dsMenu: TDataSource
    DataSet = cdsMenu
    Left = 569
    Top = 273
  end
end
