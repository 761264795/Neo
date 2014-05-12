inherited FM_SelectParamScopeForm: TFM_SelectParamScopeForm
  Left = 360
  Top = 149
  Width = 829
  Height = 617
  Align = alNone
  BorderStyle = bsSizeable
  Caption = #36873#25321#25511#21046#26426#26500
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 12
  object Panel1: TPanel
    Left = 0
    Top = 36
    Width = 813
    Height = 513
    Align = alClient
    BevelOuter = bvNone
    Color = 16511980
    TabOrder = 1
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 361
      Height = 513
      Align = alLeft
      Color = 16511980
      TabOrder = 0
      object cxGrid1: TcxGrid
        Left = 1
        Top = 1
        Width = 359
        Height = 511
        Align = alClient
        TabOrder = 0
        LookAndFeel.SkinName = 'Office2007Black'
        object cxgridBranchList: TcxGridDBTableView
          OnDblClick = cxgridBranchListDblClick
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsBranchlist
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.DataRowHeight = 22
          OptionsView.GroupByBox = False
          OptionsView.HeaderHeight = 22
          object cxgridBranchListFnumber: TcxGridDBColumn
            Caption = #26426#26500#32534#21495
            DataBinding.FieldName = 'Fnumber'
            Width = 167
          end
          object cxgridBranchListFname_l2: TcxGridDBColumn
            Caption = #26426#26500#21517#31216
            DataBinding.FieldName = 'Fname_l2'
            Width = 184
          end
          object cxgridBranchListColumn1: TcxGridDBColumn
            DataBinding.FieldName = 'FID'
            Visible = False
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxgridBranchList
        end
      end
    end
    object Panel3: TPanel
      Left = 361
      Top = 0
      Width = 32
      Height = 513
      Align = alLeft
      Color = 16511980
      TabOrder = 1
      object cxbtnIns: TcxButton
        Left = 0
        Top = 127
        Width = 31
        Height = 26
        Caption = '>'
        TabOrder = 1
        OnClick = cxbtnInsClick
        LookAndFeel.Kind = lfOffice11
      end
      object cxbtnBachIns: TcxButton
        Left = 0
        Top = 87
        Width = 31
        Height = 26
        Caption = '>>'
        TabOrder = 0
        OnClick = cxbtnBachInsClick
        LookAndFeel.Kind = lfOffice11
      end
    end
    object Panel4: TPanel
      Left = 393
      Top = 0
      Width = 420
      Height = 513
      Align = alClient
      Color = 16511980
      TabOrder = 2
      object cxGrid2: TcxGrid
        Left = 1
        Top = 1
        Width = 418
        Height = 511
        Align = alClient
        TabOrder = 0
        LookAndFeel.SkinName = 'Office2007Black'
        object cxgridselected: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          OnFocusedRecordChanged = cxgridselectedFocusedRecordChanged
          DataController.DataSource = dsSelectBranch
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.DataRowHeight = 22
          OptionsView.GroupByBox = False
          OptionsView.HeaderHeight = 22
          object cxgridselectedFNUMBER: TcxGridDBColumn
            Caption = #26426#26500#32534#21495
            DataBinding.FieldName = 'FNUMBER'
            Options.Editing = False
            Width = 120
          end
          object cxgridselectedFNAME_L2: TcxGridDBColumn
            Caption = #26426#26500#21517#31216
            DataBinding.FieldName = 'FNAME_L2'
            Options.Editing = False
            Width = 150
          end
          object cxgridselectedFVALUEALIAS_L2: TcxGridDBColumn
            Caption = #21442#25968#20540
            DataBinding.FieldName = 'FVALUEALIAS_L2'
            PropertiesClassName = 'TcxComboBoxProperties'
            Width = 134
          end
        end
        object cxGrid2Level1: TcxGridLevel
          GridView = cxgridselected
        end
      end
      object cmblist: TComboBox
        Left = 0
        Top = 448
        Width = 25
        Height = 20
        ItemHeight = 12
        TabOrder = 1
        Visible = False
      end
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 549
    Width = 813
    Height = 30
    Align = alBottom
    Color = 16511980
    TabOrder = 2
    DesignSize = (
      813
      30)
    object btYes: TcxButton
      Left = 598
      Top = 2
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #30830#35748'(&Y)'
      TabOrder = 0
      OnClick = btYesClick
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF008400000084000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF0084000000008400000084000084000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00840000000084000000840000008400000084000084000000FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00840000000084000000840000008400000084000000840000008400008400
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF008400
        000000840000008400000084000000FF00000084000000840000008400000084
        000084000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000084
        0000008400000084000000FF0000FF00FF0000FF000000840000008400000084
        000084000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000FF
        00000084000000FF0000FF00FF00FF00FF00FF00FF0000FF0000008400000084
        00000084000084000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0000FF0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000FF00000084
        0000008400000084000084000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000FF
        000000840000008400000084000084000000FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0000FF000000840000008400000084000084000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0000FF000000840000008400000084000084000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF0000FF0000008400000084000000840000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF0000FF00000084000000840000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF0000FF000000840000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000FF0000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.SkinName = 'Seven'
    end
    object btCancel: TcxButton
      Left = 726
      Top = 2
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #20851#38381'(&C)'
      TabOrder = 1
      OnClick = btCancelClick
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF009C6363006B313100FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF009C6363009C636300BD636300BD6B6B006B313100FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF009C6363009C636300C66B6B00D66B6B00D66B6B00C66B6B006B3131009C63
        63009C6363009C6363009C6363009C6363009C636300FF00FF00FF00FF00FF00
        FF009C636300DE737300D6737300D66B7300D66B6B00C66B6B006B313100FFA5
        A500FFADB500FFBDBD00FFC6C600FFC6C6009C636300FF00FF00FF00FF00FF00
        FF009C636300E7737B00DE737300DE737300DE737300CE6B73006B31310039C6
        630021CE630029CE630018CE5A00FFC6C6009C636300FF00FF00FF00FF00FF00
        FF009C636300E77B7B00E77B7B00DE7B7B00DE737B00D67373006B31310042C6
        6B0031CE630031CE630021CE6300FFC6C6009C636300FF00FF00FF00FF00FF00
        FF009C636300EF848400E77B8400E77B7B00E7848400D67373006B31310039C6
        630029CE630029CE630021CE5A00FFC6C6009C636300FF00FF00FF00FF00FF00
        FF009C636300F7848C00EF848400EF949400FFDEDE00DE8C8C006B313100BDE7
        AD006BDE8C005AD6840042D67300FFC6C6009C636300FF00FF00FF00FF00FF00
        FF009C636300F78C8C00EF848400F79C9C00FFDEDE00DE8C8C006B313100FFF7
        DE00FFFFE700FFFFDE00EFFFD600FFC6C6009C636300FF00FF00FF00FF00FF00
        FF009C636300FF949400F78C8C00F78C8C00F78C8C00DE7B84006B313100FFF7
        D600FFFFDE00FFFFDE00FFFFE700FFC6C6009C636300FF00FF00FF00FF00FF00
        FF009C636300FF949C00FF949400FF949400FF949400E78484006B313100FFF7
        D600FFFFDE00FFFFDE00FFFFDE00FFC6C6009C636300FF00FF00FF00FF00FF00
        FF009C636300FF9C9C00FF949C00FF949400FF949C00E78C8C006B313100FFF7
        D600FFFFDE00FFFFDE00FFFFDE00FFC6C6009C636300FF00FF00FF00FF00FF00
        FF009C636300FF9CA500FF9C9C00FF9C9C00FF9C9C00E78C8C006B313100FFF7
        D600FFFFDE00FFFFDE00FFFFDE00FFC6C6009C636300FF00FF00FF00FF00FF00
        FF009C6363009C636300EF8C8C00FF9C9C00FF9C9C00EF8C94006B313100FFF7
        D600FFFFDE00FFFFDE00FFFFDE00FFC6C6009C636300FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF009C636300B5737300D6848400DE8C8C006B3131009C63
        63009C6363009C6363009C6363009C6363009C636300FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF009C6363009C6363006B313100FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.SkinName = 'Seven'
    end
  end
  object Panel6: TPanel
    Left = 0
    Top = 0
    Width = 813
    Height = 36
    Align = alTop
    Color = 16511980
    TabOrder = 0
    object cxLabel1: TcxLabel
      Left = 8
      Top = 12
      Caption = #26426#26500#32534#21495'/'#26426#26500#21517#31216
    end
    object cxedtBranch: TcxTextEdit
      Left = 116
      Top = 10
      Properties.OnChange = cxedtBranchPropertiesChange
      TabOrder = 0
      OnKeyDown = cxedtBranchKeyDown
      Width = 243
    end
  end
  object dsBranchlist: TDataSource
    DataSet = cdsBranchList
    Left = 8
    Top = 68
  end
  object cdsBranchList: TClientDataSet
    Aggregates = <>
    Params = <>
    OnFilterRecord = cdsBranchListFilterRecord
    Left = 88
    Top = 76
    object cdsBranchListFnumber: TWideStringField
      FieldName = 'Fnumber'
      Size = 50
    end
    object cdsBranchListFname_l2: TWideStringField
      FieldName = 'Fname_l2'
      Size = 100
    end
    object cdsBranchListFID: TWideStringField
      FieldName = 'FID'
      Size = 44
    end
  end
  object cdsSelectBranch: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterPost = cdsSelectBranchAfterPost
    Left = 681
    Top = 236
    object cdsSelectBranchFID: TWideStringField
      FieldName = 'FID'
      Size = 44
    end
    object cdsSelectBranchFVALUE_L1: TWideStringField
      FieldName = 'FVALUE_L1'
      Size = 400
    end
    object cdsSelectBranchFVALUE_L2: TWideStringField
      FieldName = 'FVALUE_L2'
      Size = 400
    end
    object cdsSelectBranchFVALUE_L3: TWideStringField
      FieldName = 'FVALUE_L3'
      Size = 400
    end
    object cdsSelectBranchFVALUEALIAS_L1: TWideStringField
      FieldName = 'FVALUEALIAS_L1'
      Size = 400
    end
    object cdsSelectBranchFVALUEALIAS_L2: TWideStringField
      FieldName = 'FVALUEALIAS_L2'
      Size = 400
    end
    object cdsSelectBranchFNUMBER: TWideStringField
      FieldName = 'FNUMBER'
      Size = 160
    end
    object cdsSelectBranchFNAME_L2: TWideStringField
      FieldName = 'FNAME_L2'
      Size = 510
    end
    object cdsSelectBranchFkeyID: TWideStringField
      FieldName = 'FkeyID'
      Size = 44
    end
    object cdsSelectBranchforgunitid: TWideStringField
      FieldName = 'forgunitid'
      Size = 44
    end
  end
  object dsSelectBranch: TDataSource
    DataSet = cdsSelectBranch
    Left = 585
    Top = 244
  end
  object cdsBParamSave: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 489
    Top = 316
  end
  object cdsBrandParam: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 96
    Top = 220
  end
end
