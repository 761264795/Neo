inherited AlterPriceEditFrm: TAlterPriceEditFrm
  Left = 202
  Top = 149
  Width = 1016
  Caption = #28192#36947#20215#26684#35843#25972
  PixelsPerInch = 96
  TextHeight = 12
  inherited p_top: TPanel
    Width = 1000
    inherited Image1: TImage
      Width = 1000
    end
    inherited spt_Import: TSpeedButton
      Left = 844
    end
    object sptAdjust: TSpeedButton
      Left = 778
      Top = 0
      Width = 66
      Height = 28
      Caption = #35843#20215'(&T)'
      Flat = True
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CE6B
        0800CE6B0800CE6B0800CE6B0800CE6B0800CE6B0800CE6B0800CE6B0800CE6B
        0800CE6B0800CE6B0800CE6B0800CE6B0800CE6B0800FFFFFF00FFFFFF00CE6B
        0000FFFFFF00FFFFFF00FFFFFF0084CE7300FFEFDE00FFEFDE00FFEFDE00C694
        5A008C843100FFDEB500FFDEB500FFDEB500CE630000FFFFFF00FFFFFF00CE6B
        0800FFFFFF00FFFFFF00FFFFFF0084CE7300FFEFDE00FFF7DE00FFEFD600948C
        840018637B008C847300DEBD9C00FFDEB500CE6B0000FFFFFF00FFFFFF00CE63
        00008CC67B0084C6730084C6730052B542007BC6630084C6630084C663006BAD
        5A00527B8C00B5848400736352006B944A00CE6B0000FFFFFF00FFFFFF00CE6B
        0000F7F7EF00F7FFF700F7FFF7007BC67300E7EFD600F7EFD600F7E7CE00EFE7
        BD0073945A00EFADAD00B58484007B635200CE630000FFFFFF00FFFFFF00CE6B
        0000FFFFFF00FFFFFF00FFFFFF007BC67B00F7F7EF00FFFFF700FFF7EF00FFEF
        D60084BD6300E7B5AD00E7ADAD00C67B7B0084734A00FFFFFF00FFFFFF00D66B
        0000A5A5F7005A63F7004A4AEF003942D6007B7BFF00BDCEDE00BDDE9C00ADD6
        94006BBD5200B5D694009C9C6B008C9CA50010ADD6000029B500FFFFFF008463
        B5006363DE00ADA5C600B5ADC600BDB5CE007373CE002942CE008CB5AD00B5DE
        9C006BBD5200B5DEA500C6D694008CBDBD000873E7000818BD005A5AFF006B73
        F700DEDED600FFF7BD00F7CE9C00FFD69C00FFFFDE008484CE00736BFF00F7F7
        F70084CE7300FFFFFF00FFF7E700FFEFCE007B5A8400FFFFFF005A5AFF00B5B5
        E700FFFFDE00FFFFD600FFF7D600F7DEAD00F7CE9400DED6C6005252DE00C6CE
        EF0094CE7300FFFFF700FFF7DE00FFEFCE00C6631000FFFFFF006B63F700C6CE
        EF00FFFFFF00FFFFE7009C9C8C004A4A4A006B635A00B5ADAD005A63DE00AD63
        5200DE730000D6730000D6730000D6730000FFFFFF00FFFFFF006363FF00C6C6
        E700FFFFFF00FFFFF700E7E7C6007B7B6B00C6AD8400EFD6BD004A5AEF00A55A
        4A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF006363FF009494
        EF00FFF7F700FFFFFF00FFFFFF00F7F7E700BDB59400ADA5C600424AFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF006363
        FF009C94E700E7E7EF00EFF7F700F7F7FF00BDBDE7005252EF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF004A52FF005A5AF7006363EF005252F7004242FF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
      OnClick = sptAdjustClick
    end
  end
  inherited cxGroupBox4: TcxGroupBox
    Width = 1000
    object Label3: TLabel [5]
      Left = 518
      Top = 22
      Width = 53
      Height = 12
      AutoSize = False
      Caption = #21019#24314#32452#32455
    end
    object Label5: TLabel [6]
      Left = 748
      Top = 22
      Width = 65
      Height = 12
      AutoSize = False
      Caption = #23457#26680#20154
    end
    object Label6: TLabel [7]
      Left = 748
      Top = 54
      Width = 81
      Height = 12
      AutoSize = False
      Caption = #23457#26680#26102#38388
    end
    inherited txt_alName: TcxDBTextEdit
      TabOrder = 4
    end
    inherited txt_FLASTUPDATETIME: TcxDBDateEdit
      TabOrder = 5
    end
    inherited txt_FState: TcxDBTextEdit
      DataBinding.DataField = 'FSTATUS'
      TabOrder = 6
    end
    object txt_cbName: TcxDBTextEdit
      Left = 576
      Top = 19
      DataBinding.DataField = 'cbName'
      DataBinding.DataSource = dsMater
      Enabled = False
      TabOrder = 3
      Width = 160
    end
    object txt_FAUDITDATE: TcxDBDateEdit
      Left = 831
      Top = 50
      DataBinding.DataField = 'FAUDITDATE'
      DataBinding.DataSource = dsMater
      Enabled = False
      TabOrder = 7
      Width = 160
    end
    object txt_auName: TcxDBTextEdit
      Left = 831
      Top = 18
      DataBinding.DataField = 'auName'
      DataBinding.DataSource = dsMater
      Enabled = False
      TabOrder = 2
      Width = 160
    end
  end
  inherited TopPl: TPanel
    Width = 1000
    inherited Label1: TLabel
      Left = 220
    end
    inherited Label2: TLabel
      Left = 381
      Top = 11
    end
    inherited Bevel8: TBevel
      Left = 777
    end
    inherited Label55: TLabel
      Left = 781
    end
    object Label4: TLabel [4]
      Left = 551
      Top = 11
      Width = 27
      Height = 12
      AutoSize = False
      Caption = #22791#27880
    end
    object Label7: TLabel [5]
      Left = 8
      Top = 11
      Width = 50
      Height = 12
      AutoSize = False
      Caption = #38144#21806#32452#32455
    end
    inherited txt_FNUMBER: TcxDBTextEdit
      Left = 252
      Top = 7
      Width = 126
    end
    inherited txt_FNAME_L2: TcxDBTextEdit
      Left = 413
      Top = 7
      Width = 135
    end
    inherited txt_lableFind: TcxTextEdit
      Left = 861
      Style.IsFontAssigned = True
    end
    object txt_FDESCRIPTION: TcxDBTextEdit
      Left = 578
      Top = 7
      Anchors = [akLeft, akTop, akRight]
      DataBinding.DataField = 'FDESCRIPTION'
      DataBinding.DataSource = dsMater
      TabOrder = 3
      Width = 199
    end
    object txt_FSaleOrgUnitName: TcxDBButtonEdit
      Tag = 100
      Left = 58
      Top = 7
      DataBinding.DataField = 'FSaleOrgUnitName'
      DataBinding.DataSource = dsMater
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ClickKey = 118
      Properties.OnButtonClick = txt_FSaleOrgUnitNamePropertiesButtonClick
      TabOrder = 4
      Width = 157
    end
  end
  inherited Panel1: TPanel
    Width = 1000
    BevelOuter = bvNone
    object Splitter1: TSplitter
      Left = 417
      Top = 0
      Width = 2
      Height = 341
    end
    object Panel2: TPanel
      Left = 419
      Top = 0
      Width = 581
      Height = 341
      Align = alClient
      Alignment = taLeftJustify
      Color = 16511980
      TabOrder = 1
      object Panel5: TPanel
        Left = 1
        Top = 1
        Width = 579
        Height = 27
        Align = alTop
        BevelOuter = bvNone
        Color = 16511980
        TabOrder = 0
        DesignSize = (
          579
          27)
        object SpeedButton2: TSpeedButton
          Left = 427
          Top = 1
          Width = 75
          Height = 24
          Anchors = [akTop, akRight]
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
          OnClick = SpeedButton2Click
        end
        object SpeedButton3: TSpeedButton
          Left = 502
          Top = 1
          Width = 75
          Height = 24
          Anchors = [akTop, akRight]
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
          OnClick = SpeedButton3Click
        end
        object spt_MaterialDownCopy: TSpeedButton
          Left = 352
          Top = 1
          Width = 75
          Height = 24
          Anchors = [akTop, akRight]
          Caption = #21521#19979#22797#21046
          Flat = True
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009C316300FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009C316300CE9C9C009C31
            6300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009C316300CE9C9C00CE9C9C00CE9C
            9C009C316300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF009C316300CE9C9C00CE9C9C00CE9C9C00CE9C
            9C00CE9C9C009C316300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF009C316300CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C
            9C00CE9C9C00CE9C9C009C316300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF009C316300CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C
            9C00CE9C9C00CE9C9C00CE9C9C009C316300FFFFFF00FFFFFF00FFFFFF00FFFF
            FF009C316300CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C
            9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C009C316300FFFFFF00FFFFFF00FFFF
            FF009C3163009C3163009C3163009C316300CE9C9C00CE9C9C00CE9C9C00CE9C
            9C00CE9C9C009C3163009C3163009C3163009C316300FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF009C316300CE9C9C00CE9C9C00CE9C9C00CE9C
            9C00CE9C9C009C316300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF009C3163009C3163009C3163009C3163009C31
            63009C3163009C316300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        end
      end
      object cxGrid1: TcxGrid
        Left = 1
        Top = 28
        Width = 579
        Height = 312
        Align = alClient
        TabOrder = 1
        LookAndFeel.Kind = lfOffice11
        LookAndFeel.SkinName = 'Office2007Black'
        object cxGridMaterialList: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          OnEditing = cxGridMaterialListEditing
          DataController.DataSource = dsMaterialEntry
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skCount
              FieldName = 'FSEQ'
              Column = cxGridMaterialListFSEQ
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsCustomize.ColumnSorting = False
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Inserting = False
          OptionsView.DataRowHeight = 22
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderHeight = 22
          OptionsView.Indicator = True
          object cxGridMaterialListFID: TcxGridDBColumn
            DataBinding.FieldName = 'FID'
            Visible = False
          end
          object cxGridMaterialListFPARENTID: TcxGridDBColumn
            DataBinding.FieldName = 'FPARENTID'
            Visible = False
          end
          object cxGridMaterialListFSEQ: TcxGridDBColumn
            Caption = #24207#21495
            DataBinding.FieldName = 'FSEQ'
            Options.Editing = False
            Width = 37
          end
          object cxGridMaterialListFBRANCHID: TcxGridDBColumn
            DataBinding.FieldName = 'FBRANCHID'
            Visible = False
          end
          object cxGridMaterialListFMATERIALID: TcxGridDBColumn
            DataBinding.FieldName = 'FMATERIALID'
            Visible = False
            Width = 120
          end
          object cxGridMaterialListFMaterialNumber: TcxGridDBColumn
            Caption = #29289#26009#32534#21495
            DataBinding.FieldName = 'FMaterialNumber'
            Options.Editing = False
            Width = 84
          end
          object cxGridMaterialListFMaterialName: TcxGridDBColumn
            Caption = #29289#26009#21517#31216
            DataBinding.FieldName = 'FMaterialName'
            Options.Editing = False
            Width = 88
          end
          object cxGridMaterialListFPRICETYPEID: TcxGridDBColumn
            DataBinding.FieldName = 'FPRICETYPEID'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownListStyle = lsFixedList
            Properties.KeyFieldNames = 'FID'
            Properties.ListColumns = <
              item
                FieldName = 'FName_l2'
              end>
            Properties.ListOptions.ShowHeader = False
            Width = 78
          end
          object cxGridMaterialListColumn1: TcxGridDBColumn
            DataBinding.FieldName = 'FDisPrice'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Options.Editing = False
          end
          object cxGridMaterialListFDISCOUNT: TcxGridDBColumn
            DataBinding.FieldName = 'FDISCOUNT'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = '0.00'
            Width = 55
          end
          object cxGridMaterialListFPRICE: TcxGridDBColumn
            DataBinding.FieldName = 'FPRICE'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Width = 71
          end
          object cxGridMaterialListFDESCRIPTION: TcxGridDBColumn
            DataBinding.FieldName = 'FDESCRIPTION'
            Width = 141
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridMaterialList
        end
      end
    end
    object Panel3: TPanel
      Left = 0
      Top = 0
      Width = 417
      Height = 341
      Align = alLeft
      Alignment = taLeftJustify
      Color = 16511980
      TabOrder = 0
      object Panel4: TPanel
        Left = 1
        Top = 1
        Width = 415
        Height = 27
        Align = alTop
        BevelOuter = bvNone
        Color = 16511980
        TabOrder = 0
        DesignSize = (
          415
          27)
        object btn_ColorNewRow: TSpeedButton
          Left = 264
          Top = 1
          Width = 75
          Height = 24
          Anchors = [akTop, akRight]
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
          OnClick = btn_ColorNewRowClick
        end
        object btn_ColorDelRow: TSpeedButton
          Left = 339
          Top = 1
          Width = 75
          Height = 24
          Anchors = [akTop, akRight]
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
          OnClick = btn_ColorDelRowClick
        end
        object spt_DetailDownCopy: TSpeedButton
          Left = 189
          Top = 1
          Width = 75
          Height = 24
          Anchors = [akTop, akRight]
          Caption = #21521#19979#22797#21046
          Flat = True
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009C316300FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009C316300CE9C9C009C31
            6300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009C316300CE9C9C00CE9C9C00CE9C
            9C009C316300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF009C316300CE9C9C00CE9C9C00CE9C9C00CE9C
            9C00CE9C9C009C316300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF009C316300CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C
            9C00CE9C9C00CE9C9C009C316300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF009C316300CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C
            9C00CE9C9C00CE9C9C00CE9C9C009C316300FFFFFF00FFFFFF00FFFFFF00FFFF
            FF009C316300CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C
            9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C009C316300FFFFFF00FFFFFF00FFFF
            FF009C3163009C3163009C3163009C316300CE9C9C00CE9C9C00CE9C9C00CE9C
            9C00CE9C9C009C3163009C3163009C3163009C316300FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF009C316300CE9C9C00CE9C9C00CE9C9C00CE9C
            9C00CE9C9C009C316300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF009C3163009C3163009C3163009C3163009C31
            63009C3163009C316300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        end
        object chk_Save: TcxCheckBox
          Left = 2
          Top = 4
          Caption = #20999#25442#23458#25143#34892#33258#21160#20445#23384#29289#26009#26126#32454
          TabOrder = 0
          Width = 186
        end
      end
      object cxGrid2: TcxGrid
        Left = 1
        Top = 28
        Width = 415
        Height = 312
        Align = alClient
        TabOrder = 1
        LookAndFeel.Kind = lfOffice11
        LookAndFeel.SkinName = 'Office2007Black'
        object cxDetail: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          OnEditing = cxDetailEditing
          OnFocusedRecordChanged = cxDetailFocusedRecordChanged
          DataController.DataSource = dsBranchEntry
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skCount
              FieldName = 'FSEQ'
              Column = cxDetailFSEQ
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsCustomize.ColumnSorting = False
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Inserting = False
          OptionsView.DataRowHeight = 22
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderHeight = 22
          OptionsView.Indicator = True
          object cxDetailFID: TcxGridDBColumn
            DataBinding.FieldName = 'FID'
            Visible = False
          end
          object cxDetailFPARENTID: TcxGridDBColumn
            DataBinding.FieldName = 'FPARENTID'
            Visible = False
          end
          object cxDetailFSEQ: TcxGridDBColumn
            DataBinding.FieldName = 'FSEQ'
            Options.Editing = False
            Width = 41
          end
          object cxDetailFBRANCHID: TcxGridDBColumn
            DataBinding.FieldName = 'FCustomerID'
            Visible = False
          end
          object cxDetailFCustomerNumber: TcxGridDBColumn
            DataBinding.FieldName = 'FCustomerNumber'
            Options.Editing = False
            Width = 96
          end
          object cxDetailFCustomerName: TcxGridDBColumn
            DataBinding.FieldName = 'FCustomerName'
            Options.Editing = False
            Width = 97
          end
          object cxDetailFBEGINDATE: TcxGridDBColumn
            DataBinding.FieldName = 'FBEGINDATE'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.SaveTime = False
            Properties.ShowTime = False
            Width = 94
          end
          object cxDetailFENDDATE: TcxGridDBColumn
            DataBinding.FieldName = 'FENDDATE'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.SaveTime = False
            Properties.ShowTime = False
            Width = 86
          end
          object cxDetailFDESCRIPTION: TcxGridDBColumn
            DataBinding.FieldName = 'FDESCRIPTION'
            Width = 120
          end
        end
        object cxGrid2Level1: TcxGridLevel
          GridView = cxDetail
        end
      end
    end
  end
  inherited STBaseEditDataSet: TClientDataSet
    Left = 896
    Top = 200
  end
  inherited cdsMater: TClientDataSet
    OnCalcFields = cdsMaterCalcFields
    Left = 48
    Top = 152
    object cdsMaterFID: TWideStringField
      FieldName = 'FID'
      Size = 44
    end
    object cdsMaterFCREATORID: TWideStringField
      FieldName = 'FCREATORID'
      Size = 44
    end
    object cdsMaterFCREATETIME: TDateTimeField
      FieldName = 'FCREATETIME'
    end
    object cdsMaterFLASTUPDATEUSERID: TWideStringField
      FieldName = 'FLASTUPDATEUSERID'
      Size = 44
    end
    object cdsMaterFLASTUPDATETIME: TDateTimeField
      FieldName = 'FLASTUPDATETIME'
    end
    object cdsMaterFCONTROLUNITID: TWideStringField
      FieldName = 'FCONTROLUNITID'
      Size = 44
    end
    object cdsMaterFNUMBER: TWideStringField
      FieldName = 'FNUMBER'
      Size = 80
    end
    object cdsMaterFDESCRIPTION: TWideStringField
      FieldName = 'FDESCRIPTION'
      Size = 500
    end
    object cdsMaterFAUDITORID: TWideStringField
      FieldName = 'FAUDITORID'
      Size = 44
    end
    object cdsMaterFAUDITDATE: TDateTimeField
      FieldName = 'FAUDITDATE'
    end
    object cdsMaterFNAME_L1: TWideStringField
      FieldName = 'FNAME_L1'
      Size = 510
    end
    object cdsMaterFNAME_L2: TWideStringField
      FieldName = 'FNAME_L2'
      Size = 510
    end
    object cdsMaterFNAME_L3: TWideStringField
      FieldName = 'FNAME_L3'
      Size = 510
    end
    object cdsMaterFCREATEUNITID: TWideStringField
      FieldName = 'FBranchID'
      Size = 44
    end
    object cdsMaterFSTATUS: TIntegerField
      FieldName = 'FSTATUS'
    end
    object cdsMaterctName: TWideStringField
      FieldName = 'ctName'
      Size = 80
    end
    object cdsMateralName: TWideStringField
      FieldName = 'alName'
      Size = 80
    end
    object cdsMatercbName: TWideStringField
      FieldName = 'cbName'
      Size = 80
    end
    object cdsMaterauName: TWideStringField
      FieldName = 'auName'
      Size = 80
    end
    object cdsMaterFSaleOrgUnitID: TWideStringField
      FieldName = 'FSaleOrgUnitID'
      Size = 60
    end
    object cdsMaterFSaleOrgUnitName: TStringField
      FieldKind = fkCalculated
      FieldName = 'FSaleOrgUnitName'
      Size = 80
      Calculated = True
    end
  end
  inherited dsMater: TDataSource
    Left = 97
    Top = 151
  end
  inherited cdsSave: TClientDataSet
    Left = 152
    Top = 152
    object cdsSaveFID: TWideStringField
      FieldName = 'FID'
      Size = 44
    end
    object cdsSaveFCREATORID: TWideStringField
      FieldName = 'FCREATORID'
      Size = 44
    end
    object cdsSaveFCREATETIME: TDateTimeField
      FieldName = 'FCREATETIME'
    end
    object cdsSaveFLASTUPDATEUSERID: TWideStringField
      FieldName = 'FLASTUPDATEUSERID'
      Size = 44
    end
    object cdsSaveFLASTUPDATETIME: TDateTimeField
      FieldName = 'FLASTUPDATETIME'
    end
    object cdsSaveFCONTROLUNITID: TWideStringField
      FieldName = 'FCONTROLUNITID'
      Size = 44
    end
    object cdsSaveFNUMBER: TWideStringField
      FieldName = 'FNUMBER'
      Size = 80
    end
    object cdsSaveFDESCRIPTION: TWideStringField
      FieldName = 'FDESCRIPTION'
      Size = 500
    end
    object cdsSaveFAUDITORID: TWideStringField
      FieldName = 'FAUDITORID'
      Size = 44
    end
    object cdsSaveFAUDITDATE: TDateTimeField
      FieldName = 'FAUDITDATE'
    end
    object cdsSaveFNAME_L1: TWideStringField
      FieldName = 'FNAME_L1'
      Size = 510
    end
    object cdsSaveFNAME_L2: TWideStringField
      FieldName = 'FNAME_L2'
      Size = 510
    end
    object cdsSaveFNAME_L3: TWideStringField
      FieldName = 'FNAME_L3'
      Size = 510
    end
    object cdsSaveFCREATEUNITID: TWideStringField
      FieldName = 'FBranchID'
      Size = 44
    end
    object cdsSaveFSTATUS: TIntegerField
      FieldName = 'FSTATUS'
    end
    object cdsSaveFSaleOrgUnitID: TWideStringField
      FieldName = 'FSaleOrgUnitID'
      Size = 80
    end
  end
  object cdsBranchEntry: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterOpen = cdsBranchEntryAfterOpen
    BeforePost = cdsBranchEntryBeforePost
    OnNewRecord = cdsBranchEntryNewRecord
    Left = 49
    Top = 222
    object cdsBranchEntryFID: TWideStringField
      FieldName = 'FID'
      Size = 44
    end
    object cdsBranchEntryFPARENTID: TWideStringField
      FieldName = 'FPARENTID'
      Size = 44
    end
    object cdsBranchEntryFSEQ: TFloatField
      DisplayLabel = #24207#21495
      FieldName = 'FSEQ'
    end
    object cdsBranchEntryFBRANCHID: TWideStringField
      FieldName = 'FCustomerID'
      Size = 44
    end
    object cdsBranchEntryFBEGINDATE: TDateTimeField
      DisplayLabel = #29983#25928#26085#26399
      FieldName = 'FBEGINDATE'
    end
    object cdsBranchEntryFENDDATE: TDateTimeField
      DisplayLabel = #22833#25928#26085#26399
      FieldName = 'FENDDATE'
    end
    object cdsBranchEntryFDESCRIPTION: TWideStringField
      DisplayLabel = #22791#27880
      FieldName = 'FDESCRIPTION'
      Size = 500
    end
    object cdsBranchEntryFBRANCH_Name: TWideStringField
      DisplayLabel = #23458#25143
      FieldName = 'FCustomerName'
      Size = 80
    end
    object cdsBranchEntryFCustomerNumber: TWideStringField
      DisplayLabel = #23458#25143#32534#21495
      FieldName = 'FCustomerNumber'
      Size = 80
    end
  end
  object dsBranchEntry: TDataSource
    DataSet = cdsBranchEntry
    Left = 144
    Top = 222
  end
  object cdsSaveBranchEntry: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 241
    Top = 222
    object cdsSaveBranchEntryFID: TWideStringField
      FieldName = 'FID'
      Size = 44
    end
    object cdsSaveBranchEntryFPARENTID: TWideStringField
      FieldName = 'FPARENTID'
      Size = 44
    end
    object cdsSaveBranchEntryFSEQ: TFloatField
      FieldName = 'FSEQ'
    end
    object cdsSaveBranchEntryFBRANCHID: TWideStringField
      FieldName = 'FCustomerID'
      Size = 44
    end
    object cdsSaveBranchEntryFBEGINDATE: TDateTimeField
      FieldName = 'FBEGINDATE'
    end
    object cdsSaveBranchEntryFENDDATE: TDateTimeField
      FieldName = 'FENDDATE'
    end
    object cdsSaveBranchEntryFDESCRIPTION: TWideStringField
      FieldName = 'FDESCRIPTION'
      Size = 500
    end
  end
  object cdsMaterialEntry: TClientDataSet
    Aggregates = <>
    Params = <>
    BeforePost = cdsMaterialEntryBeforePost
    OnNewRecord = cdsMaterialEntryNewRecord
    Left = 472
    Top = 294
    object cdsMaterialEntryFID: TWideStringField
      FieldName = 'FID'
      Size = 44
    end
    object cdsMaterialEntryFPARENTID: TWideStringField
      FieldName = 'FPARENTID'
      Size = 44
    end
    object cdsMaterialEntryFSEQ: TFloatField
      FieldName = 'FSEQ'
    end
    object cdsMaterialEntryFBRANCHID: TWideStringField
      FieldName = 'FCustomerID'
      Size = 44
    end
    object cdsMaterialEntryFMATERIALID: TWideStringField
      FieldName = 'FMATERIALID'
      Size = 44
    end
    object cdsMaterialEntryFPRICETYPEID: TWideStringField
      DisplayLabel = #20215#26684#31867#22411
      FieldName = 'FPRICETYPEID'
      Size = 44
    end
    object cdsMaterialEntryFDISCOUNT: TFloatField
      DisplayLabel = #25240#25187
      FieldName = 'FDISCOUNT'
      OnValidate = cdsMaterialEntryFDISCOUNTValidate
    end
    object cdsMaterialEntryFPRICE: TFloatField
      DisplayLabel = #21333#20215
      FieldName = 'FPRICE'
      OnValidate = cdsMaterialEntryFPRICEValidate
    end
    object cdsMaterialEntryFDESCRIPTION: TWideStringField
      DisplayLabel = #22791#27880
      FieldName = 'FDESCRIPTION'
      Size = 500
    end
    object cdsMaterialEntryFMaterialNumber: TWideStringField
      FieldName = 'FMaterialNumber'
      Size = 80
    end
    object cdsMaterialEntryFMaterialName: TWideStringField
      FieldName = 'FMaterialName'
      Size = 80
    end
    object cdsMaterialEntryFDisPrice: TFloatField
      DisplayLabel = #26631#20934#20215
      FieldName = 'FDisPrice'
    end
  end
  object dsMaterialEntry: TDataSource
    DataSet = cdsMaterialEntry
    Left = 560
    Top = 294
  end
  object cdsSaveMaterialEntry: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 664
    Top = 294
    object cdsSaveMaterialEntryFID: TWideStringField
      FieldName = 'FID'
      Size = 44
    end
    object cdsSaveMaterialEntryFPARENTID: TWideStringField
      FieldName = 'FPARENTID'
      Size = 44
    end
    object cdsSaveMaterialEntryFSEQ: TFloatField
      FieldName = 'FSEQ'
    end
    object cdsSaveMaterialEntryFBRANCHID: TWideStringField
      FieldName = 'FCustomerID'
      Size = 44
    end
    object cdsSaveMaterialEntryFMATERIALID: TWideStringField
      FieldName = 'FMATERIALID'
      Size = 44
    end
    object cdsSaveMaterialEntryFPRICETYPEID: TWideStringField
      FieldName = 'FPRICETYPEID'
      Size = 44
    end
    object cdsSaveMaterialEntryFDISCOUNT: TFloatField
      FieldName = 'FDISCOUNT'
    end
    object cdsSaveMaterialEntryFPRICE: TFloatField
      FieldName = 'FPRICE'
    end
    object cdsSaveMaterialEntryFDESCRIPTION: TWideStringField
      FieldName = 'FDESCRIPTION'
      Size = 500
    end
  end
end
