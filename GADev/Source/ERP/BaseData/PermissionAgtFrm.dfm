inherited PermissionAssignmentFrm: TPermissionAssignmentFrm
  Left = 270
  Top = 58
  Width = 876
  Height = 672
  Caption = #26435#38480#20998#37197
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 12
  object Splitter1: TSplitter [0]
    Left = 0
    Top = 182
    Width = 868
    Height = 2
    Cursor = crVSplit
    Align = alTop
  end
  object p_top: TPanel [1]
    Left = 0
    Top = 0
    Width = 868
    Height = 25
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Image1: TImage
      Left = 0
      Top = 0
      Width = 868
      Height = 25
      Align = alClient
      Stretch = True
    end
    object SpeedButton1: TSpeedButton
      Left = 0
      Top = 0
      Width = 73
      Height = 26
      Caption = #20445#23384'(&S)'
      Flat = True
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FF00000000000000000000000000000000
        0000000000000000000000000000000000000000000000FF00FFFF00FF000000
        008080008080000000000000000000000000000000000000FF00FFFF00FF0000
        00008080000000FF00FFFF00FF00000000808000808000000000000000000000
        0000000000000000FF00FFFF00FF000000008080000000FF00FFFF00FF000000
        008080008080000000000000000000000000000000000000FF00FFFF00FF0000
        00008080000000FF00FFFF00FF00000000808000808000000000000000000000
        0000000000000000000000000000000000008080000000FF00FFFF00FF000000
        0080800080800080800080800080800080800080800080800080800080800080
        80008080000000FF00FFFF00FF00000000808000808000000000000000000000
        0000000000000000000000000000008080008080000000FF00FFFF00FF000000
        008080000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000
        00008080000000FF00FFFF00FF000000008080000000FF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FF000000008080000000FF00FFFF00FF000000
        008080000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000
        00008080000000FF00FFFF00FF000000008080000000FF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FF000000008080000000FF00FFFF00FF000000
        008080000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000
        00000000000000FF00FFFF00FF000000008080000000FF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FF000000FF00FF000000FF00FFFF00FF000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      OnClick = SpeedButton1Click
    end
    object spt_Exit: TSpeedButton
      Left = 73
      Top = 0
      Width = 66
      Height = 26
      Caption = #36864#20986'(&E)'
      Flat = True
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009C6363006B313100FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF009C6363009C636300BD636300BD6B6B006B313100FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF009C6363009C636300C66B6B00D66B6B00D66B6B00C66B6B006B3131009C63
        63009C6363009C6363009C6363009C6363009C636300FFFFFF00FFFFFF00FFFF
        FF009C636300DE737300D6737300D66B7300D66B6B00C66B6B006B313100FFA5
        A500FFADB500FFBDBD00FFC6C600FFC6C6009C636300FFFFFF00FFFFFF00FFFF
        FF009C636300E7737B00DE737300DE737300DE737300CE6B73006B31310039C6
        630021CE630029CE630018CE5A00FFC6C6009C636300FFFFFF00FFFFFF00FFFF
        FF009C636300E77B7B00E77B7B00DE7B7B00DE737B00D67373006B31310042C6
        6B0031CE630031CE630021CE6300FFC6C6009C636300FFFFFF00FFFFFF00FFFF
        FF009C636300EF848400E77B8400E77B7B00E7848400D67373006B31310039C6
        630029CE630029CE630021CE5A00FFC6C6009C636300FFFFFF00FFFFFF00FFFF
        FF009C636300F7848C00EF848400EF949400FFDEDE00DE8C8C006B313100BDE7
        AD006BDE8C005AD6840042D67300FFC6C6009C636300FFFFFF00FFFFFF00FFFF
        FF009C636300F78C8C00EF848400F79C9C00FFDEDE00DE8C8C006B313100FFF7
        DE00FFFFE700FFFFDE00EFFFD600FFC6C6009C636300FFFFFF00FFFFFF00FFFF
        FF009C636300FF949400F78C8C00F78C8C00F78C8C00DE7B84006B313100FFF7
        D600FFFFDE00FFFFDE00FFFFE700FFC6C6009C636300FFFFFF00FFFFFF00FFFF
        FF009C636300FF949C00FF949400FF949400FF949400E78484006B313100FFF7
        D600FFFFDE00FFFFDE00FFFFDE00FFC6C6009C636300FFFFFF00FFFFFF00FFFF
        FF009C636300FF9C9C00FF949C00FF949400FF949C00E78C8C006B313100FFF7
        D600FFFFDE00FFFFDE00FFFFDE00FFC6C6009C636300FFFFFF00FFFFFF00FFFF
        FF009C636300FF9CA500FF9C9C00FF9C9C00FF9C9C00E78C8C006B313100FFF7
        D600FFFFDE00FFFFDE00FFFFDE00FFC6C6009C636300FFFFFF00FFFFFF00FFFF
        FF009C6363009C636300EF8C8C00FF9C9C00FF9C9C00EF8C94006B313100FFF7
        D600FFFFDE00FFFFDE00FFFFDE00FFC6C6009C636300FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF009C636300B5737300D6848400DE8C8C006B3131009C63
        63009C6363009C6363009C6363009C6363009C636300FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009C6363009C6363006B313100FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
      OnClick = spt_ExitClick
    end
  end
  object p_Tops: TPanel [2]
    Left = 0
    Top = 25
    Width = 868
    Height = 157
    Align = alTop
    BevelOuter = bvNone
    Color = 16511980
    TabOrder = 1
    object p_btnAddDel: TPanel
      Left = 0
      Top = 0
      Width = 868
      Height = 29
      Align = alTop
      Color = 16511980
      TabOrder = 0
      DesignSize = (
        868
        29)
      object btn_NewRow: TSpeedButton
        Left = 706
        Top = 1
        Width = 76
        Height = 26
        Caption = #22686#21152#26426#26500
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
        Left = 782
        Top = 1
        Width = 76
        Height = 26
        Caption = #21024#38500#26426#26500
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
      object cxLabel1: TcxLabel
        Left = 4
        Top = 7
        Caption = #20998#25903#26426#26500
      end
      object txt_FBranchName: TcxButtonEdit
        Left = 60
        Top = 4
        Anchors = [akLeft, akTop, akRight]
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.ClickKey = 118
        Properties.ReadOnly = True
        Properties.OnButtonClick = txt_FBranchNamePropertiesButtonClick
        TabOrder = 0
        Width = 265
      end
    end
    object cxGrid2: TcxGrid
      Left = 0
      Top = 29
      Width = 868
      Height = 128
      Align = alClient
      TabOrder = 1
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.SkinName = 'Office2007Black'
      object cxDetail: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsBranch
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.MultiSelect = True
        OptionsView.DataRowHeight = 22
        OptionsView.GroupByBox = False
        OptionsView.HeaderHeight = 22
        OptionsView.Indicator = True
        object cxDetailFID: TcxGridDBColumn
          DataBinding.FieldName = 'FID'
          Visible = False
        end
        object cxDetailFBranchNumber: TcxGridDBColumn
          DataBinding.FieldName = 'FBranchNumber'
          Width = 156
        end
        object cxDetailFBranchName: TcxGridDBColumn
          DataBinding.FieldName = 'FBranchName'
          Width = 448
        end
      end
      object cxGrid2Level1: TcxGridLevel
        GridView = cxDetail
      end
    end
  end
  object Panel1: TPanel [3]
    Left = 0
    Top = 184
    Width = 868
    Height = 457
    Align = alClient
    BevelOuter = bvNone
    Color = 16511980
    TabOrder = 2
    object Splitter2: TSplitter
      Left = 416
      Top = 0
      Width = 2
      Height = 457
    end
    object Panel2: TPanel
      Left = 418
      Top = 0
      Width = 450
      Height = 457
      Align = alClient
      BevelOuter = bvNone
      Color = 16511980
      TabOrder = 1
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 33
        Height = 457
        Align = alLeft
        BevelOuter = bvNone
        Color = 16511980
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        object spt_AllAdd: TSpeedButton
          Left = 0
          Top = 72
          Width = 33
          Height = 26
          Hint = #22686#21152
          Caption = '>>'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          OnClick = spt_AllAddClick
        end
        object spt_ADD: TSpeedButton
          Left = -1
          Top = 98
          Width = 34
          Height = 26
          Hint = #25554#20837
          Caption = '>'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          OnClick = spt_ADDClick
        end
        object spt_AllDel: TSpeedButton
          Left = -1
          Top = 190
          Width = 34
          Height = 26
          Hint = #20840#31227
          Caption = '<<'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          OnClick = spt_AllDelClick
        end
        object spt_del: TSpeedButton
          Left = -1
          Top = 216
          Width = 34
          Height = 26
          Hint = #31227#38500
          Caption = '<'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          OnClick = spt_delClick
        end
      end
      object cxPageControl2: TcxPageControl
        Left = 33
        Top = 0
        Width = 417
        Height = 457
        ActivePage = cxTabSheet2
        Align = alClient
        Style = 10
        TabOrder = 1
        ClientRectBottom = 457
        ClientRectRight = 417
        ClientRectTop = 18
        object cxTabSheet2: TcxTabSheet
          Caption = #24050#25480#26435
          ImageIndex = 0
          object ExistsTree: TcxDBTreeList
            Left = 0
            Top = 0
            Width = 417
            Height = 439
            Align = alClient
            Bands = <
              item
              end>
            DataController.DataSource = dsExistsList
            DataController.ImageIndexField = 'FimgIndex'
            DataController.ParentField = 'FPARENTID'
            DataController.KeyField = 'FPermID'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
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
            Styles.Background = cxStyle1
            Styles.Content = cxStyle1
            TabOrder = 0
            object ExistsTreecxDBTreeListColumn3: TcxDBTreeListColumn
              Visible = False
              DataBinding.FieldName = 'FPermID'
              Position.ColIndex = 0
              Position.RowIndex = 0
              Position.BandIndex = 0
              Summary.FooterSummaryItems = <>
              Summary.GroupFooterSummaryItems = <>
            end
            object ExistsTreecxDBTreeListColumn2: TcxDBTreeListColumn
              Visible = False
              DataBinding.FieldName = 'FPARENTID'
              Position.ColIndex = 1
              Position.RowIndex = 0
              Position.BandIndex = 0
              Summary.FooterSummaryItems = <>
              Summary.GroupFooterSummaryItems = <>
            end
            object ExistsTreecxDBTreeListColumn4: TcxDBTreeListColumn
              DataBinding.FieldName = 'fname_l2'
              Position.ColIndex = 2
              Position.RowIndex = 0
              Position.BandIndex = 0
              Summary.FooterSummaryItems = <>
              Summary.GroupFooterSummaryItems = <>
            end
            object ExistsTreecxDBTreeListColumn5: TcxDBTreeListColumn
              Visible = False
              DataBinding.FieldName = 'FimgIndex'
              Position.ColIndex = 3
              Position.RowIndex = 0
              Position.BandIndex = 0
              Summary.FooterSummaryItems = <>
              Summary.GroupFooterSummaryItems = <>
            end
          end
        end
      end
    end
    object Panel3: TPanel
      Left = 0
      Top = 0
      Width = 416
      Height = 457
      Align = alLeft
      Color = 16511980
      TabOrder = 0
      object cxPageControl1: TcxPageControl
        Left = 1
        Top = 1
        Width = 414
        Height = 455
        ActivePage = cxTabSheet1
        Align = alClient
        Style = 10
        TabOrder = 0
        ClientRectBottom = 455
        ClientRectRight = 414
        ClientRectTop = 18
        object cxTabSheet1: TcxTabSheet
          Caption = #21487#25480#26435#21015#34920
          ImageIndex = 0
          object TreeList: TcxDBTreeList
            Left = 0
            Top = 0
            Width = 414
            Height = 437
            Align = alClient
            Bands = <
              item
              end>
            DataController.DataSource = dsPermList
            DataController.ImageIndexField = 'FImgIndex'
            DataController.ParentField = 'FPARENTID'
            DataController.KeyField = 'FID'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
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
            Styles.Background = cxStyle1
            Styles.Content = cxStyle1
            TabOrder = 0
            object TreeListcxDBTreeListColumn1: TcxDBTreeListColumn
              Visible = False
              DataBinding.FieldName = 'FID'
              Position.ColIndex = 0
              Position.RowIndex = 0
              Position.BandIndex = 0
              Summary.FooterSummaryItems = <>
              Summary.GroupFooterSummaryItems = <>
            end
            object TreeListcxDBTreeListColumn2: TcxDBTreeListColumn
              Visible = False
              DataBinding.FieldName = 'FPARENTID'
              Position.ColIndex = 1
              Position.RowIndex = 0
              Position.BandIndex = 0
              Summary.FooterSummaryItems = <>
              Summary.GroupFooterSummaryItems = <>
            end
            object TreeListcxDBTreeListColumn3: TcxDBTreeListColumn
              DataBinding.FieldName = 'FName_l2'
              Position.ColIndex = 2
              Position.RowIndex = 0
              Position.BandIndex = 0
              Summary.FooterSummaryItems = <>
              Summary.GroupFooterSummaryItems = <>
            end
            object TreeListcxDBTreeListColumn4: TcxDBTreeListColumn
              Visible = False
              DataBinding.FieldName = 'FImgIndex'
              Position.ColIndex = 3
              Position.RowIndex = 0
              Position.BandIndex = 0
              Summary.FooterSummaryItems = <>
              Summary.GroupFooterSummaryItems = <>
            end
            object TreeListcxDBTreeListColumn5: TcxDBTreeListColumn
              Visible = False
              DataBinding.FieldName = 'ftype'
              Position.ColIndex = 4
              Position.RowIndex = 0
              Position.BandIndex = 0
              Summary.FooterSummaryItems = <>
              Summary.GroupFooterSummaryItems = <>
            end
          end
        end
      end
    end
  end
  object cdsBranch: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 376
    Top = 112
    object cdsBranchFID: TWideStringField
      FieldName = 'FID'
      Size = 44
    end
    object cdsBranchFBranchNumber: TStringField
      DisplayLabel = #26426#26500#32534#21495
      FieldName = 'FBranchNumber'
      Size = 80
    end
    object cdsBranchFBranchName: TStringField
      DisplayLabel = #26426#26500#21517#31216
      FieldName = 'FBranchName'
    end
  end
  object dsBranch: TDataSource
    DataSet = cdsBranch
    Left = 433
    Top = 111
  end
  object cdsPermList: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 168
    Top = 336
    object WideStringField1: TWideStringField
      FieldName = 'FID'
      Size = 44
    end
    object cdsPermListFPARENTID: TWideStringField
      FieldName = 'FPARENTID'
      Size = 80
    end
    object cdsPermListFName: TWideStringField
      FieldName = 'FName_l2'
      Size = 80
    end
    object cdsPermListFImgIndex: TFloatField
      FieldName = 'FImgIndex'
    end
    object cdsPermListftype: TFloatField
      FieldName = 'ftype'
    end
  end
  object dsPermList: TDataSource
    DataSet = cdsPermList
    Left = 297
    Top = 335
  end
  object cdsExistsList: TClientDataSet
    Aggregates = <>
    Params = <>
    OnNewRecord = cdsExistsListNewRecord
    Left = 547
    Top = 341
    object cdsExistsListFID: TStringField
      FieldName = 'FID'
      Size = 44
    end
    object cdsExistsListFPARENTID: TStringField
      FieldName = 'FPARENTID'
      Size = 44
    end
    object cdsExistsListFPermID: TStringField
      FieldName = 'FPermID'
      Size = 44
    end
    object cdsExistsListfname_l2: TWideStringField
      FieldName = 'fname_l2'
      Size = 255
    end
    object cdsExistsListFimgIndex: TIntegerField
      FieldName = 'FimgIndex'
    end
    object cdsExistsListftype: TIntegerField
      FieldName = 'ftype'
    end
  end
  object dsExistsList: TDataSource
    DataSet = cdsExistsList
    Left = 643
    Top = 341
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 176
    Top = 128
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor]
      Color = 16511980
    end
  end
  object cxStyleRepository2: TcxStyleRepository
    Left = 32
    Top = 136
    PixelsPerInch = 96
    object cxStyle2: TcxStyle
    end
  end
  object cdsRolePerm: TClientDataSet
    Aggregates = <>
    Params = <>
    OnNewRecord = cdsRolePermNewRecord
    Left = 169
    Top = 510
    object cdsRolePermFID: TWideStringField
      FieldName = 'FID'
      Size = 44
    end
    object cdsRolePermFROLEID: TWideStringField
      FieldName = 'FROLEID'
      Size = 44
    end
    object cdsRolePermFPARENTID: TWideStringField
      FieldName = 'FPARENTID'
      Size = 44
    end
    object cdsRolePermFPERMID: TWideStringField
      FieldName = 'FPERMID'
      Size = 44
    end
    object cdsRolePermFCREATORID: TWideStringField
      FieldName = 'FCREATORID'
      Size = 44
    end
    object cdsRolePermFTYPE: TIntegerField
      FieldName = 'FTYPE'
    end
    object cdsRolePermFCREATETIME: TDateTimeField
      FieldName = 'FCREATETIME'
    end
    object cdsRolePermFLASTUPDATEUSERID: TWideStringField
      FieldName = 'FLASTUPDATEUSERID'
      Size = 44
    end
    object cdsRolePermFLASTUPDATETIME: TDateTimeField
      FieldName = 'FLASTUPDATETIME'
    end
    object cdsRolePermFCONTROLUNITID: TWideStringField
      FieldName = 'FCONTROLUNITID'
      Size = 44
    end
  end
  object cdsUserPerm: TClientDataSet
    Aggregates = <>
    Params = <>
    OnNewRecord = cdsUserPermNewRecord
    Left = 273
    Top = 510
    object cdsUserPermFID: TWideStringField
      FieldName = 'FID'
      Size = 44
    end
    object cdsUserPermFUSERID: TWideStringField
      FieldName = 'FUSERID'
      Size = 44
    end
    object cdsUserPermFPARENTID: TWideStringField
      FieldName = 'FPARENTID'
      Size = 44
    end
    object cdsUserPermFPERMID: TWideStringField
      FieldName = 'FPERMID'
      Size = 44
    end
    object cdsUserPermFTYPE: TIntegerField
      FieldName = 'FTYPE'
    end
    object cdsUserPermFBRANCHID: TWideStringField
      FieldName = 'FBRANCHID'
      Size = 44
    end
    object cdsUserPermFCREATORID: TWideStringField
      FieldName = 'FCREATORID'
      Size = 44
    end
    object cdsUserPermFCREATETIME: TDateTimeField
      FieldName = 'FCREATETIME'
    end
    object cdsUserPermFLASTUPDATEUSERID: TWideStringField
      FieldName = 'FLASTUPDATEUSERID'
      Size = 44
    end
    object cdsUserPermFLASTUPDATETIME: TDateTimeField
      FieldName = 'FLASTUPDATETIME'
    end
    object cdsUserPermFCONTROLUNITID: TWideStringField
      FieldName = 'FCONTROLUNITID'
      Size = 44
    end
  end
end
