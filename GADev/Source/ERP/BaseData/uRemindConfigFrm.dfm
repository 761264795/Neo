inherited RemindConfigFrm: TRemindConfigFrm
  Left = 206
  Top = 158
  Caption = #20170#26085#25552#37266#37197#32622
  ClientWidth = 1056
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 12
  object Splitter1: TSplitter
    Left = 185
    Top = 25
    Width = 2
    Height = 417
  end
  object p_top: TPanel
    Left = 0
    Top = 0
    Width = 1056
    Height = 25
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Image1: TImage
      Left = 0
      Top = 0
      Width = 1056
      Height = 25
      Align = alClient
      Stretch = True
    end
    object btn_Save: TSpeedButton
      Left = 0
      Top = 0
      Width = 73
      Height = 25
      Caption = #20445#23384'(&S)'
      Flat = True
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
        FF00AD5A5A00AD525200A54A4A00AD949400C6CEC600CECECE00CECECE00CECE
        C600C6CECE00B59C9C009C4242009C424200A5525200FFFFFF00FFFFFF00BD7B
        7300CE636300D66B6B00BD5A5A009C848400BDA5A500E7D6CE00FFFFF700FFFF
        FF00F7F7F700D6B5B500942929009C313100C65A5A00B55A5A00FFFFFF00BD7B
        7300CE636300CE636300BD5A5A009C7B7B009C424200B5737300E7DEDE00FFFF
        FF00FFFFFF00DEBDBD00942929009C313100C65A5A00AD5A5A00FFFFFF00BD7B
        7300CE636300CE636300BD5A5A00AD8484009C3939009C313100CEBDBD00F7F7
        EF00FFFFFF00E7C6C600942929009C313100C65A5A00AD5A5A00FFFFFF00BD7B
        7300CE636300CE636300B55A5A00B58C8C009C4A4A0094313100A59C9C00D6DE
        DE00FFFFFF00E7CECE009429290094313100BD5A5A00AD5A5A00FFFFFF00BD7B
        7300CE636300CE636300BD5A5A00C6948C00C6949400B5848400AD8C8C00BDA5
        A500E7CECE00DEADAD00A5393900A5393900C65A5A00AD525A00FFFFFF00BD7B
        7300CE636300CE636300CE636300CE636300CE636300CE636300CE636300CE5A
        5A00CE5A5A00CE636300CE636300CE636300CE6B6B00AD525200FFFFFF00BD7B
        7300B5525200B55A5200C6848400D6A5A500D6ADAD00D6ADAD00D6ADAD00D6A5
        A500D6ADA500D6ADAD00D6ADAD00D69C9C00CE636300AD525200FFFFFF00BD7B
        7300B54A4A00E7CECE00FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7
        F700FFF7F700FFF7F700FFFFFF00DEBDBD00C65A5A00AD525200FFFFFF00BD7B
        7300B5524A00EFD6D600FFFFFF00F7F7EF00F7F7F700F7F7F700F7F7F700F7F7
        F700F7F7F700F7F7F700FFFFFF00DEBDBD00C65A5A00AD525200FFFFFF00BD7B
        7300B5524A00EFD6D600F7EFEF00DED6D600DED6D600DED6D600DED6D600DED6
        D600DED6D600DED6D600EFEFEF00E7BDBD00C65A5A00AD525200FFFFFF00BD7B
        7300B5524A00EFD6D600F7F7F700DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
        DE00DEDEDE00DEDEDE00EFEFEF00E7BDBD00C65A5A00AD525200FFFFFF00BD7B
        7300B5524A00EFD6D600F7F7F700E7DEDE00E7E7E700E7E7E700E7E7E700E7E7
        E700E7E7E700E7DEDE00F7F7F700DEBDBD00C65A5A00AD525200FFFFFF00BD7B
        7300B5524A00EFD6D600F7F7EF00DED6D600DEDED600DEDED600DEDED600DEDE
        D600DEDED600DED6D600EFEFEF00E7BDBD00C65A5A00AD525200FFFFFF00BD7B
        7300B5524A00EFD6D600FFFFFF00FFF7F700FFF7F700FFF7F700FFF7F700FFF7
        F700FFF7F700FFF7F700FFFFFF00DEBDBD00C65A5A00AD525200FFFFFF00FFFF
        FF00AD524A00CEB5B500D6D6D600D6CECE00D6CECE00D6CECE00D6CECE00D6CE
        CE00D6CECE00D6CECE00D6D6D600CEADAD00A54A4A00FFFFFF00}
      OnClick = btn_SaveClick
    end
    object btn_New: TSpeedButton
      Left = 73
      Top = 0
      Width = 68
      Height = 25
      Caption = #26032#22686'(&N)'
      Flat = True
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF0000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF000000000000000000000000000000000000000000000000000000
        000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
      OnClick = btn_NewClick
    end
    object btn_Del: TSpeedButton
      Left = 141
      Top = 0
      Width = 68
      Height = 25
      Caption = #21024#38500'(&D)'
      Flat = True
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF000000B5000000B500FF00FF000000
        B5000000B500FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF000000B5000000B500FF00FF00FF00FF000000
        B5000000B5000000B500FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF000000B5000000B500FF00FF00FF00FF00FF00FF000000
        B5000000B5000000B5000000B500FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF000000B5000000B500FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF000000D6000000BD000000B5000000B500FF00FF00FF00FF00FF00FF00FF00
        FF000000B5000000B500FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF000000B5000000B5000000B500FF00FF000000B5000000
        B5000000B500FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF000000B5000000C6000000C6000000CE000000
        B500FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF000000C6000000C6000000DE00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF000000B5000000D6000000CE000000DE000000
        EF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF000000E7000000DE000000D600FF00FF00FF00FF000000
        E7000000EF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF000000FF000000DE000000EF00FF00FF00FF00FF00FF00FF00FF00
        FF000000FF000000F700FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF000000F7000000F7000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF000000F7000000F700FF00FF00FF00FF00FF00FF00FF00FF000000
        F7000000F7000000F700FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF000000F700FF00FF00FF00FF000000F7000000
        F7000000F700FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000F7000000
        F700FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      OnClick = btn_DelClick
    end
    object SpeedButton4: TSpeedButton
      Left = 209
      Top = 0
      Width = 73
      Height = 25
      Caption = #21551#29992'(&Q)'
      Flat = True
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00000073000000730000006B00000063000000
        630000006300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF000000B5000000B5000008AD003939B5005A5AB5005252AD002929
        940000006B0000006B0000006B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF000010CE000810C6006B73DE00CED6F700FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00C6C6DE005A5A9C0000006B0000007B00FFFFFF00FFFFFF00FFFFFF000018
        DE000818D600ADB5EF00FFFFFF00FFFFFF00BDBDEF008C8CD6008C8CD600CECE
        EF00FFFFFF00FFFFFF008C8CBD0000006B0000007300FFFFFF00FFFFFF000018
        DE00949CEF00FFFFFF00E7EFFF004A52CE000000AD0000009C00000094000000
        94005A5ABD00F7F7FF00FFFFFF006363A50000007300FFFFFF000018F7002142
        E700FFFFFF00F7FFFF00394ADE000000C6001018BD00B5B5E700A5A5E7000808
        A50000008C005252BD00FFFFFF00DEDEEF0008087B0000007B000018F7007384
        F700FFFFFF0094A5F7000008DE000008D6001018CE00F7F7FF00DEE7F7000008
        AD0000009C0000009400ADADDE00FFFFFF005252AD0000007B000021FF00ADBD
        FF00FFFFFF004263F7001031EF00A5ADF700BDBDF700FFFFFF00F7F7FF00B5BD
        EF00949CDE000808A5005A5ABD00FFFFFF008484D60000007B000839FF00C6CE
        FF00FFFFFF00315AFF00214AFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00EFEFFF001018B5004A4AC600FFFFFF009494DE000000A5003963FF00C6D6
        FF00FFFFFF005A7BFF000029FF00315AFF005A6BF700F7F7FF00E7E7FF004A5A
        DE003142D6000000B500737BD600FFFFFF007B7BD6000000AD001039FF00B5C6
        FF00FFFFFF00C6D6FF000029FF000021FF001039FF00F7F7FF00E7E7FF000018
        DE000000CE000818CE00DEDEF700FFFFFF003139CE000000AD00FFFFFF008CA5
        FF00FFFFFF00FFFFFF008CA5FF000021FF000029FF00426BFF004263FF000018
        EF000018DE00A5ADF700FFFFFF00B5BDEF000000BD00FFFFFF00FFFFFF00738C
        FF00DEE7FF00FFFFFF00FFFFFF00B5C6FF00395AFF001039FF001039FF004A63
        FF00C6CEFF00FFFFFF00EFEFFF003142D6000000BD00FFFFFF00FFFFFF00FFFF
        FF008CA5FF00E7EFFF00FFFFFF00FFFFFF00FFFFFF00E7EFFF00E7EFFF00FFFF
        FF00FFFFFF00DEE7FF003952E7000008CE00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF008CA5FF00BDC6FF00EFEFFF00FFFFFF00FFFFFF00FFFFFF00E7EF
        FF008C9CF7001039E7000008CE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF008CA5FF008CA5FF0094A5FF007B94FF004A6B
        FF001842EF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
      OnClick = SpeedButton4Click
    end
    object spt_uBear: TSpeedButton
      Left = 282
      Top = 0
      Width = 73
      Height = 25
      Caption = #31105#29992'(&J)'
      Flat = True
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00000042000000420000003900000031000000
        310000003100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF0000009400000094000000840010188C0029298C00292984000808
        6300000042000000390000003900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF000000B5000000A5003942C600B5B5EF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00A5A5CE00292973000000390000004A00FFFFFF00FFFFFF00FFFFFF000000
        CE000000BD007B8CE700FFFFFF00FFFFFF009C9CDE005A5AB5005A5AB500ADAD
        DE00FFFFFF00FFFFFF005A5A9C000000390000004200FFFFFF00FFFFFF000000
        CE006373E700FFFFFF00D6DEF7002121B5000000840000009C0000008C000000
        6B0031319C00E7E7F700FFFFFF0031317B0000004200FFFFFF000000EF000818
        DE00FFFFFF00F7F7FF001021C60000009C0000009C0000008C00000073000000
        73000000630021219400FFFFFF00C6C6DE000000520000004A000000EF00425A
        F700FFFFFF006373EF000000C6000000B5000000AD0000008400000073000000
        7B0000006B00000063008484CE00FFFFFF0021218C0000004A000008F7007B94
        FF00FFFFFF001831F7000010E700F7F7FF00F7F7FF00F7F7FF00EFEFFF00EFEF
        FF00EFEFFF0000007B0029299C00FFFFFF00525ABD0000004A000018FF00A5B5
        FF00FFFFFF001029FF000821F700A5B5FF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00DEE7F70000008C002121A500FFFFFF006363C60000007B001031FF00A5B5
        FF00FFFFFF00294AFF000008FF000010FF000008DE000008D6000000C6000000
        B5000000940000009400424ABD00FFFFFF004A4ABD0000007B000018FF0094A5
        FF00FFFFFF00ADBDFF000008FF000008FF000008FF000010DE000000D6000000
        C6000000B5000000AD00C6C6EF00FFFFFF001010AD0000007B00FFFFFF005A7B
        FF00FFFFFF00FFFFFF005A73FF000008FF000008FF000008FF000018FF000000
        DE000000CE007384EF00FFFFFF008C94E70000009C00FFFFFF00FFFFFF00425A
        FF00C6CEFF00FFFFFF00FFFFFF008C9CFF001029FF000010FF000010FF002131
        F7009CADF700FFFFFF00E7E7FF001018BD0000009C00FFFFFF00FFFFFF00FFFF
        FF005A73FF00D6DEFF00FFFFFF00FFFFFF00FFFFFF00D6DEFF00D6DEFF00FFFF
        FF00FFFFFF00C6CEF7001821CE000000B500FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF005A73FF0094ADFF00DEE7FF00FFFFFF00FFFFFF00FFFFFF00D6DE
        FF005A6BF7000010D6000000B500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF005A73FF005A7BFF00637BFF004A63FF002139
        F7000018E700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
      OnClick = spt_uBearClick
    end
  end
  object left_p: TPanel
    Left = 0
    Top = 25
    Width = 185
    Height = 417
    Align = alLeft
    Color = 16511980
    TabOrder = 1
    object cxGrid2: TcxGrid
      Left = 1
      Top = 1
      Width = 183
      Height = 415
      Align = alClient
      TabOrder = 0
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.SkinName = 'Office2007Green'
      object cxList: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsMater
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.DataRowHeight = 22
        OptionsView.GroupByBox = False
        OptionsView.HeaderHeight = 22
        OptionsView.Indicator = True
        Styles.Inactive = cxStyle1
        object cxListFID: TcxGridDBColumn
          DataBinding.FieldName = 'FID'
          Visible = False
        end
        object cxListFNAME_L2: TcxGridDBColumn
          Caption = #25552#37266#21517#31216
          DataBinding.FieldName = 'FNAME_L2'
          HeaderAlignmentHorz = taCenter
          Width = 160
        end
        object cxListFDES: TcxGridDBColumn
          DataBinding.FieldName = 'FDES'
          Visible = False
        end
        object cxListFRETURNVALUE: TcxGridDBColumn
          DataBinding.FieldName = 'FRETURNVALUE'
          Visible = False
        end
        object cxListFBASESQL: TcxGridDBColumn
          DataBinding.FieldName = 'FBASESQL'
          Visible = False
        end
        object cxListFCREATORID: TcxGridDBColumn
          DataBinding.FieldName = 'FCREATORID'
          Visible = False
        end
        object cxListFCREATETIME: TcxGridDBColumn
          DataBinding.FieldName = 'FCREATETIME'
          Visible = False
        end
        object cxListFLASTUPDATEUSERID: TcxGridDBColumn
          DataBinding.FieldName = 'FLASTUPDATEUSERID'
          Visible = False
        end
        object cxListFLASTUPDATETIME: TcxGridDBColumn
          DataBinding.FieldName = 'FLASTUPDATETIME'
          Visible = False
        end
        object cxListctName: TcxGridDBColumn
          DataBinding.FieldName = 'ctName'
          Visible = False
        end
        object cxListalName: TcxGridDBColumn
          DataBinding.FieldName = 'alName'
          Visible = False
        end
      end
      object cxGrid2Level1: TcxGridLevel
        GridView = cxList
      end
    end
  end
  object right_P: TPanel
    Left = 187
    Top = 25
    Width = 869
    Height = 417
    Align = alClient
    BevelOuter = bvNone
    Color = 16511980
    TabOrder = 2
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 869
      Height = 417
      Align = alClient
      BevelOuter = bvNone
      Color = 16511980
      TabOrder = 1
    end
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 869
      Height = 417
      Align = alClient
      Color = 16511980
      TabOrder = 0
      object cxPage: TcxPageControl
        Left = 1
        Top = 1
        Width = 867
        Height = 415
        ActivePage = tb_Config
        Align = alClient
        Style = 10
        TabOrder = 0
        ClientRectBottom = 415
        ClientRectRight = 867
        ClientRectTop = 18
        object tb_Config: TcxTabSheet
          Caption = #25552#37266#37197#32622
          ImageIndex = 3
          object Panel4: TPanel
            Left = 0
            Top = 0
            Width = 867
            Height = 101
            Align = alTop
            Color = 16511980
            TabOrder = 0
            object Label33: TLabel
              Left = 622
              Top = 77
              Width = 81
              Height = 12
              AutoSize = False
              Caption = #26368#21518#20462#25913#26102#38388
            end
            object Label2: TLabel
              Left = 6
              Top = 32
              Width = 47
              Height = 12
              AutoSize = False
              Caption = #22791#27880
            end
            object Label21: TLabel
              Left = 6
              Top = 77
              Width = 53
              Height = 12
              AutoSize = False
              Caption = #21019#24314#20154
            end
            object Label31: TLabel
              Left = 206
              Top = 78
              Width = 65
              Height = 12
              AutoSize = False
              Caption = #21019#24314#26102#38388
            end
            object Label32: TLabel
              Left = 410
              Top = 77
              Width = 65
              Height = 12
              AutoSize = False
              Caption = #26368#21518#20462#25913#20154
            end
            object Label1: TLabel
              Left = 6
              Top = 8
              Width = 51
              Height = 12
              AutoSize = False
              Caption = #25552#37266#21517#31216
              Color = 16511980
              ParentColor = False
            end
            object Label4: TLabel
              Left = 6
              Top = 54
              Width = 47
              Height = 12
              AutoSize = False
              Caption = #36820#22238#20540
            end
            object Label5: TLabel
              Left = 724
              Top = 9
              Width = 40
              Height = 12
              AutoSize = False
              Caption = #29366#24577
            end
            object Label6: TLabel
              Left = 412
              Top = 9
              Width = 65
              Height = 12
              AutoSize = False
              Caption = #20851#32852#33756#21333
            end
            object txt_FNAME_L2: TcxDBTextEdit
              Tag = 100
              Left = 60
              Top = 5
              DataBinding.DataField = 'FNAME_L2'
              DataBinding.DataSource = dsMater
              TabOrder = 0
              Width = 344
            end
            object txt_FLASTUPDATETIME: TcxDBDateEdit
              Left = 705
              Top = 74
              DataBinding.DataField = 'FLASTUPDATETIME'
              DataBinding.DataSource = dsMater
              Enabled = False
              TabOrder = 8
              Width = 140
            end
            object txt_FDES: TcxDBTextEdit
              Left = 60
              Top = 28
              DataBinding.DataField = 'FDES'
              DataBinding.DataSource = dsMater
              TabOrder = 3
              Width = 785
            end
            object txt_FCREATETIME: TcxDBDateEdit
              Left = 263
              Top = 74
              DataBinding.DataField = 'FCREATETIME'
              DataBinding.DataSource = dsMater
              Enabled = False
              TabOrder = 6
              Width = 140
            end
            object txt_ctName: TcxDBTextEdit
              Left = 60
              Top = 74
              DataBinding.DataField = 'CtName'
              DataBinding.DataSource = dsMater
              Enabled = False
              TabOrder = 5
              Width = 140
            end
            object txt_alName: TcxDBTextEdit
              Left = 475
              Top = 74
              DataBinding.DataField = 'AlName'
              DataBinding.DataSource = dsMater
              Enabled = False
              TabOrder = 7
              Width = 140
            end
            object txt_FRETURNVALUE: TcxDBTextEdit
              Tag = 100
              Left = 60
              Top = 50
              DataBinding.DataField = 'FRETURNVALUE'
              DataBinding.DataSource = dsMater
              TabOrder = 4
              Width = 785
            end
            object txt_FState: TcxDBTextEdit
              Left = 765
              Top = 5
              DataBinding.DataField = 'FState'
              DataBinding.DataSource = dsMater
              Enabled = False
              TabOrder = 2
              Width = 79
            end
            object txt_FRelevanceName: TcxDBButtonEdit
              Left = 475
              Top = 5
              DataBinding.DataField = 'FRelevanceName'
              DataBinding.DataSource = dsMater
              Properties.Buttons = <
                item
                  Default = True
                  Kind = bkEllipsis
                end>
              Properties.OnButtonClick = txt_FRelevanceNamePropertiesButtonClick
              TabOrder = 1
              OnKeyPress = txt_FRelevanceNameKeyPress
              Width = 230
            end
          end
          object cxGroupBox2: TcxGroupBox
            Left = 0
            Top = 101
            Align = alClient
            Caption = 'SQL'#35821#21477
            TabOrder = 1
            Height = 296
            Width = 867
            object mm_FBASESQL: TcxDBMemo
              Tag = 100
              Left = 2
              Top = 17
              Align = alClient
              DataBinding.DataField = 'FBASESQL'
              DataBinding.DataSource = dsMater
              Properties.ScrollBars = ssBoth
              Style.LookAndFeel.Kind = lfOffice11
              Style.LookAndFeel.SkinName = 'Office2007Green'
              StyleDisabled.LookAndFeel.Kind = lfOffice11
              StyleDisabled.LookAndFeel.SkinName = 'Office2007Green'
              StyleFocused.LookAndFeel.Kind = lfOffice11
              StyleFocused.LookAndFeel.SkinName = 'Office2007Green'
              StyleHot.LookAndFeel.Kind = lfOffice11
              StyleHot.LookAndFeel.SkinName = 'Office2007Green'
              TabOrder = 0
              Height = 277
              Width = 863
            end
          end
        end
        object tb_Help: TcxTabSheet
          Caption = #37197#32622#24517#35835
          ImageIndex = 4
          object Label3: TLabel
            Left = 0
            Top = 0
            Width = 564
            Height = 96
            Align = alClient
            Caption = 
              #13#10'1'#12289'SQL'#35821#21477#21487#20197#20256#20837#21464#37327','#30331#24405#29992#25143'FID'#30340#21464#37327#20026'"@User_ID",'#30331#24405#20998#25903#26426#26500'FID'#20026'"@Branch_ID"'#12290#13#10#13 +
              #10'2'#12289'SQL'#35821#21477#37324#24517#39035#21253#21547#23383#27573' "FResult" '#21542#21017#22312#35843#29992#26102#20250#20986#38169' '#12290#13#10#13#10'3'#12289#36820#22238#20540#26684#24335#20026' "'#26410#23457#26680#21333#25454'@Result'#24352 +
              ','#35831#21450#26102#22788#29702'!" '#30340#20889#27861#65292'@Result'#20026#21464#37327#65292#31995#32479#20250#21462'FResult'#30340#20540#12290#13#10#13#10'4'#12289#21482#21462'SQL'#36820#22238#31532#19968#34892#25968#25454#30340'FResult' +
              #23383#27573#30340#20540#65292#25152#20197#19981#35201'SQL'#20869#36820#22238#22810#34892#25968#25454#21644#22810#20010#23383#27573#12290
          end
        end
      end
    end
  end
  object cdsMater: TClientDataSet
    Aggregates = <>
    Params = <>
    BeforePost = cdsMaterBeforePost
    OnCalcFields = cdsMaterCalcFields
    OnNewRecord = cdsMaterNewRecord
    Left = 416
    Top = 148
    object cdsMaterctName: TStringField
      FieldKind = fkCalculated
      FieldName = 'ctName'
      Size = 80
      Calculated = True
    end
    object cdsMateralName: TStringField
      FieldKind = fkCalculated
      FieldName = 'alName'
      Size = 80
      Calculated = True
    end
    object cdsMaterFRelevanceName: TStringField
      FieldKind = fkCalculated
      FieldName = 'FRelevanceName'
      Size = 80
      Calculated = True
    end
    object cdsMaterFID: TStringField
      FieldName = 'FID'
      Size = 44
    end
    object cdsMaterFname_l2: TStringField
      FieldName = 'Fname_l2'
      Size = 200
    end
    object cdsMaterFDES: TStringField
      FieldName = 'FDES'
      Size = 500
    end
    object cdsMaterFState: TIntegerField
      FieldName = 'FState'
    end
    object cdsMaterFReturnValue: TStringField
      FieldName = 'FReturnValue'
      Size = 500
    end
    object cdsMaterFBASESQL: TMemoField
      FieldName = 'FBASESQL'
      BlobType = ftMemo
    end
    object cdsMaterFRelevanceID: TStringField
      FieldName = 'FRelevanceID'
      Size = 44
    end
    object cdsMaterFCREATORID: TStringField
      FieldName = 'FCREATORID'
      Size = 44
    end
    object cdsMaterFCREATETIME: TDateTimeField
      FieldName = 'FCREATETIME'
    end
    object cdsMaterFLASTUPDATEUSERID: TStringField
      FieldName = 'FLASTUPDATEUSERID'
      Size = 44
    end
    object cdsMaterFLASTUPDATETIME: TDateTimeField
      FieldName = 'FLASTUPDATETIME'
    end
  end
  object dsMater: TDataSource
    DataSet = cdsMater
    Left = 416
    Top = 204
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 56
    Top = 136
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor]
      Color = clHighlight
    end
  end
end
