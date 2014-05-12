inherited ReadCodeScenarioEditFrm: TReadCodeScenarioEditFrm
  Left = 199
  Top = 81
  Width = 963
  Height = 615
  Caption = #26465#30721#35835#21462#26041#26696
  PixelsPerInch = 96
  TextHeight = 12
  inherited p_top: TPanel
    Width = 947
    inherited Image1: TImage
      Width = 947
    end
  end
  inherited cxGroupBox4: TcxGroupBox
    Top = 496
    Width = 947
    inherited txt_FLASTUPDATETIME: TcxDBDateEdit
      TabOrder = 4
    end
    inherited txt_FState: TcxDBTextEdit
      TabOrder = 3
    end
  end
  inherited TopPl: TPanel
    Width = 947
    Height = 79
    inherited Label2: TLabel
      Left = 212
    end
    object Bevel1: TBevel [4]
      Left = 664
      Top = 34
      Width = 282
      Height = 1
      Anchors = [akTop, akRight]
    end
    object Label3: TLabel [5]
      Left = 407
      Top = 11
      Width = 29
      Height = 12
      AutoSize = False
      Caption = #31616#31216
    end
    object Label4: TLabel [6]
      Left = 8
      Top = 35
      Width = 57
      Height = 12
      AutoSize = False
      Caption = #26465#30721#38271#24230
    end
    object Label5: TLabel [7]
      Left = 212
      Top = 35
      Width = 49
      Height = 12
      AutoSize = False
      Caption = #38388#38548#31526
    end
    object Label6: TLabel [8]
      Left = 8
      Top = 59
      Width = 49
      Height = 12
      AutoSize = False
      Caption = #24320#22987#20301
    end
    object Label7: TLabel [9]
      Left = 212
      Top = 59
      Width = 49
      Height = 12
      AutoSize = False
      Caption = #32467#26463#20301
    end
    object Label8: TLabel [10]
      Left = 407
      Top = 59
      Width = 49
      Height = 12
      AutoSize = False
      Caption = #24517#39035#21253#21547
    end
    inherited txt_FNUMBER: TcxDBTextEdit
      Left = 61
    end
    inherited txt_FNAME_L2: TcxDBTextEdit
      Left = 258
      Width = 140
    end
    inherited txt_lableFind: TcxTextEdit
      Style.IsFontAssigned = True
    end
    object txt_FSimpleName: TcxDBTextEdit
      Left = 465
      Top = 6
      DataBinding.DataField = 'FSIMPLENAME'
      DataBinding.DataSource = dsMater
      TabOrder = 3
      Width = 140
    end
    object txt_CFIsSpaceMark: TcxDBCheckBox
      Left = 465
      Top = 32
      Caption = #21551#29992#38388#38548#31526
      DataBinding.DataField = 'CFIsSpaceMark'
      DataBinding.DataSource = dsMater
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 1
      Properties.ValueUnchecked = 0
      TabOrder = 6
      Width = 140
    end
    object txt_CFCompriseValue: TcxDBTextEdit
      Left = 465
      Top = 56
      DataBinding.DataField = 'CFCOMPRISEVALUE'
      DataBinding.DataSource = dsMater
      TabOrder = 10
      Width = 140
    end
    object cxDBCheckBox2: TcxDBCheckBox
      Left = 624
      Top = 55
      Caption = #21551#29992#20301#26816#26597
      DataBinding.DataField = 'CFIsPositionCheck'
      DataBinding.DataSource = dsMater
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 1
      Properties.ValueUnchecked = 0
      TabOrder = 7
      Width = 140
    end
    object txt_CFBarCodeLen: TcxDBCalcEdit
      Left = 61
      Top = 31
      DataBinding.DataField = 'CFBarCodeLen'
      DataBinding.DataSource = dsMater
      TabOrder = 5
      Width = 140
    end
    object txt_CFSpaceMark: TcxDBTextEdit
      Left = 258
      Top = 30
      DataBinding.DataField = 'CFSPACEMARK'
      DataBinding.DataSource = dsMater
      TabOrder = 4
      Width = 140
    end
    object txt_CFBeginPosition: TcxDBCalcEdit
      Left = 61
      Top = 56
      DataBinding.DataField = 'CFBeginPosition'
      DataBinding.DataSource = dsMater
      TabOrder = 8
      Width = 140
    end
    object txt_CFEndPosition: TcxDBCalcEdit
      Left = 258
      Top = 56
      DataBinding.DataField = 'CFEndPosition'
      DataBinding.DataSource = dsMater
      TabOrder = 9
      Width = 140
    end
  end
  inherited Panel1: TPanel
    Top = 104
    Width = 947
    Height = 392
    BevelOuter = bvNone
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 665
      Height = 392
      Align = alClient
      Caption = 'Panel2'
      Color = 16511980
      TabOrder = 0
      DesignSize = (
        665
        392)
      object btn_EntryNewRow: TSpeedButton
        Left = 512
        Top = -1
        Width = 75
        Height = 25
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
        OnClick = btn_EntryNewRowClick
      end
      object btn_EntryDelRow: TSpeedButton
        Left = 587
        Top = -1
        Width = 75
        Height = 25
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
        OnClick = btn_EntryDelRowClick
      end
      object Label9: TLabel
        Left = 6
        Top = 7
        Width = 65
        Height = 12
        AutoSize = False
        Caption = #39033#30446#35774#32622
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
      end
      object cxGrid2: TcxGrid
        Left = 1
        Top = 24
        Width = 661
        Height = 363
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 0
        LookAndFeel.Kind = lfOffice11
        LookAndFeel.SkinName = 'Office2007Black'
        object cxDetail: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsEntry
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skCount
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Appending = True
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Inserting = False
          OptionsView.DataRowHeight = 24
          OptionsView.GroupByBox = False
          OptionsView.HeaderHeight = 26
          OptionsView.Indicator = True
          object cxDetailFID: TcxGridDBColumn
            DataBinding.FieldName = 'FID'
            Visible = False
            Width = 80
          end
          object cxDetailFSEQ: TcxGridDBColumn
            DataBinding.FieldName = 'FSEQ'
            Visible = False
            Width = 80
          end
          object cxDetailFPARENTID: TcxGridDBColumn
            DataBinding.FieldName = 'FPARENTID'
            Visible = False
            Width = 80
          end
          object cxDetailCFSEQ: TcxGridDBColumn
            DataBinding.FieldName = 'CFSEQ'
            Visible = False
            Width = 80
          end
          object cxDetailCFITEM: TcxGridDBColumn
            DataBinding.FieldName = 'CFITEM'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownListStyle = lsFixedList
            Properties.KeyFieldNames = 'ItemID'
            Properties.ListColumns = <
              item
                FieldName = 'ItemName'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = dsItem
            Width = 80
          end
          object cxDetailCFLENGTH: TcxGridDBColumn
            DataBinding.FieldName = 'CFLENGTH'
            Width = 80
          end
          object cxDetailCFBEGINPOSITION: TcxGridDBColumn
            DataBinding.FieldName = 'CFBEGINPOSITION'
            Width = 80
          end
          object cxDetailCFREADORDER: TcxGridDBColumn
            DataBinding.FieldName = 'CFREADORDER'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownListStyle = lsFixedList
            Properties.KeyFieldNames = 'ItemID'
            Properties.ListColumns = <
              item
                FieldName = 'ItemName'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = dsReadOrder
            Width = 80
          end
          object cxDetailCFMAKEUPVAL: TcxGridDBColumn
            DataBinding.FieldName = 'CFMAKEUPVAL'
            Width = 80
          end
          object cxDetailCFMARKUPPOSITION: TcxGridDBColumn
            DataBinding.FieldName = 'CFMARKUPPOSITION'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownListStyle = lsFixedList
            Properties.KeyFieldNames = 'ItemID'
            Properties.ListColumns = <
              item
                FieldName = 'ItemName'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = dsMarkupPosition
            Width = 80
          end
          object cxDetailCFOLDVALUE: TcxGridDBColumn
            DataBinding.FieldName = 'CFOLDVALUE'
            Width = 80
          end
          object cxDetailCFUPDATEVALUE: TcxGridDBColumn
            DataBinding.FieldName = 'CFUPDATEVALUE'
            Width = 80
          end
        end
        object cxGrid2Level1: TcxGridLevel
          GridView = cxDetail
        end
      end
    end
    object Panel3: TPanel
      Left = 665
      Top = 0
      Width = 282
      Height = 392
      Align = alRight
      Caption = 'Panel3'
      Color = 16511980
      TabOrder = 1
      DesignSize = (
        282
        392)
      object spt_ListNewRow: TSpeedButton
        Left = 130
        Top = -1
        Width = 75
        Height = 25
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
        OnClick = spt_ListNewRowClick
      end
      object spt_ListDelRow: TSpeedButton
        Left = 205
        Top = -1
        Width = 75
        Height = 25
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
        OnClick = spt_ListDelRowClick
      end
      object Label10: TLabel
        Left = 3
        Top = 7
        Width = 65
        Height = 12
        AutoSize = False
        Caption = #36716#25442#35774#32622
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
      end
      object cxGrid1: TcxGrid
        Left = 2
        Top = 24
        Width = 278
        Height = 363
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 0
        LookAndFeel.Kind = lfOffice11
        LookAndFeel.SkinName = 'Office2007Black'
        object cxList: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsList
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skCount
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Appending = True
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Inserting = False
          OptionsView.DataRowHeight = 24
          OptionsView.GroupByBox = False
          OptionsView.HeaderHeight = 26
          OptionsView.Indicator = True
          object cxListFID: TcxGridDBColumn
            DataBinding.FieldName = 'FID'
            Visible = False
          end
          object cxListFSEQ: TcxGridDBColumn
            DataBinding.FieldName = 'FSEQ'
            Visible = False
          end
          object cxListFPARENTID: TcxGridDBColumn
            DataBinding.FieldName = 'FPARENTID'
            Visible = False
          end
          object cxListCFSEQ: TcxGridDBColumn
            DataBinding.FieldName = 'CFSEQ'
            Visible = False
          end
          object cxListCFITEM: TcxGridDBColumn
            DataBinding.FieldName = 'CFITEM'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.DropDownListStyle = lsFixedList
            Properties.KeyFieldNames = 'ItemID'
            Properties.ListColumns = <
              item
                FieldName = 'ItemName'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = dsItem
            Width = 99
          end
          object cxListCFOLDVALUE: TcxGridDBColumn
            DataBinding.FieldName = 'CFOLDVALUE'
            Width = 80
          end
          object cxListCFUPDATEVALUE: TcxGridDBColumn
            DataBinding.FieldName = 'CFUPDATEVALUE'
            Width = 80
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxList
        end
      end
    end
  end
  inherited cdsMater: TClientDataSet
    object cdsMaterFNUMBER: TWideStringField
      FieldName = 'FNUMBER'
      Size = 80
    end
    object cdsMaterFSIMPLENAME: TWideStringField
      FieldName = 'FSIMPLENAME'
      Size = 160
    end
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
    object cdsMaterCFSPACEMARK: TWideStringField
      FieldName = 'CFSPACEMARK'
      Size = 40
    end
    object cdsMaterCFBEGINPOSITION: TFloatField
      FieldName = 'CFBEGINPOSITION'
    end
    object cdsMaterCFENDPOSITION: TFloatField
      FieldName = 'CFENDPOSITION'
    end
    object cdsMaterCFCOMPRISEVALUE: TWideStringField
      FieldName = 'CFCOMPRISEVALUE'
      Size = 60
    end
    object cdsMaterCFBARCODELEN: TFloatField
      FieldName = 'CFBARCODELEN'
    end
    object cdsMaterCFISSPACEMARK: TFloatField
      FieldName = 'CFISSPACEMARK'
    end
    object cdsMaterCFISPOSITIONCHECK: TFloatField
      FieldName = 'CFISPOSITIONCHECK'
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
    object cdsMaterFDESCRIPTION_L1: TWideStringField
      FieldName = 'FDESCRIPTION_L1'
      Size = 510
    end
    object cdsMaterFDESCRIPTION_L2: TWideStringField
      FieldName = 'FDESCRIPTION_L2'
      Size = 510
    end
    object cdsMaterFDESCRIPTION_L3: TWideStringField
      FieldName = 'FDESCRIPTION_L3'
      Size = 510
    end
    object cdsMaterFSTATE: TIntegerField
      FieldName = 'FSTATE'
      OnGetText = cdsMaterFSTATEGetText
    end
    object cdsMaterCTNAME: TWideStringField
      FieldName = 'CTNAME'
      Size = 160
    end
    object cdsMaterALNAME: TWideStringField
      FieldName = 'ALNAME'
      Size = 160
    end
    object cdsMaterBASEUNITNAME: TWideStringField
      FieldName = 'BASEUNITNAME'
      Size = 510
    end
  end
  inherited cdsSave: TClientDataSet
    object cdsSaveFNUMBER: TWideStringField
      FieldName = 'FNUMBER'
      Size = 80
    end
    object cdsSaveFSIMPLENAME: TWideStringField
      FieldName = 'FSIMPLENAME'
      Size = 160
    end
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
    object cdsSaveCFSPACEMARK: TWideStringField
      FieldName = 'CFSPACEMARK'
      Size = 40
    end
    object cdsSaveCFBEGINPOSITION: TFloatField
      FieldName = 'CFBEGINPOSITION'
    end
    object cdsSaveCFENDPOSITION: TFloatField
      FieldName = 'CFENDPOSITION'
    end
    object cdsSaveCFCOMPRISEVALUE: TWideStringField
      FieldName = 'CFCOMPRISEVALUE'
      Size = 60
    end
    object cdsSaveCFBARCODELEN: TFloatField
      FieldName = 'CFBARCODELEN'
    end
    object cdsSaveCFISSPACEMARK: TFloatField
      FieldName = 'CFISSPACEMARK'
    end
    object cdsSaveCFISPOSITIONCHECK: TFloatField
      FieldName = 'CFISPOSITIONCHECK'
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
    object cdsSaveFDESCRIPTION_L1: TWideStringField
      FieldName = 'FDESCRIPTION_L1'
      Size = 510
    end
    object cdsSaveFDESCRIPTION_L2: TWideStringField
      FieldName = 'FDESCRIPTION_L2'
      Size = 510
    end
    object cdsSaveFDESCRIPTION_L3: TWideStringField
      FieldName = 'FDESCRIPTION_L3'
      Size = 510
    end
    object cdsSaveFSTATE: TIntegerField
      FieldName = 'FSTATE'
    end
  end
  object cdsEntry: TClientDataSet
    Aggregates = <>
    Params = <>
    OnNewRecord = cdsEntryNewRecord
    Left = 488
    Top = 270
    object cdsEntryFID: TWideStringField
      FieldName = 'FID'
      Size = 44
    end
    object cdsEntryFSEQ: TFloatField
      FieldName = 'FSEQ'
    end
    object cdsEntryFPARENTID: TWideStringField
      FieldName = 'FPARENTID'
      Size = 44
    end
    object cdsEntryCFSEQ: TFloatField
      FieldName = 'CFSEQ'
    end
    object cdsEntryCFITEM: TWideStringField
      DisplayLabel = #39033#30446
      FieldName = 'CFITEM'
      Size = 100
    end
    object cdsEntryCFLENGTH: TFloatField
      DisplayLabel = #38271#24230
      FieldName = 'CFLENGTH'
    end
    object cdsEntryCFBEGINPOSITION: TFloatField
      DisplayLabel = #24320#22987#20301
      FieldName = 'CFBEGINPOSITION'
    end
    object cdsEntryCFMAKEUPVAL: TWideStringField
      DisplayLabel = #34917#20805#20540
      FieldName = 'CFMAKEUPVAL'
      Size = 100
    end
    object cdsEntryCFOLDVALUE: TWideStringField
      DisplayLabel = #21407#20540
      FieldName = 'CFOLDVALUE'
      Size = 200
    end
    object cdsEntryCFUPDATEVALUE: TWideStringField
      DisplayLabel = #36716#25442#20540
      FieldName = 'CFUPDATEVALUE'
      Size = 200
    end
    object cdsEntryCFREADORDER: TWideStringField
      DisplayLabel = #35835#21462#39034#24207
      FieldName = 'CFREADORDER'
      Size = 100
    end
    object cdsEntryCFMARKUPPOSITION: TWideStringField
      DisplayLabel = #34917#20805#20301#32622
      FieldName = 'CFMARKUPPOSITION'
      Size = 100
    end
  end
  object cdsList: TClientDataSet
    Aggregates = <>
    Params = <>
    OnNewRecord = cdsListNewRecord
    Left = 824
    Top = 198
    object cdsListFID: TWideStringField
      FieldName = 'FID'
      Size = 44
    end
    object cdsListFSEQ: TFloatField
      FieldName = 'FSEQ'
    end
    object cdsListFPARENTID: TWideStringField
      FieldName = 'FPARENTID'
      Size = 44
    end
    object cdsListCFSEQ: TFloatField
      FieldName = 'CFSEQ'
    end
    object cdsListCFITEM: TWideStringField
      DisplayLabel = #39033#30446
      FieldName = 'CFITEM'
      Size = 100
    end
    object cdsListCFOLDVALUE: TWideStringField
      DisplayLabel = #21407#20540
      FieldName = 'CFOLDVALUE'
      Size = 200
    end
    object cdsListCFUPDATEVALUE: TWideStringField
      DisplayLabel = #36716#25442#20540
      FieldName = 'CFUPDATEVALUE'
      Size = 200
    end
  end
  object dsEntry: TDataSource
    DataSet = cdsEntry
    Left = 544
    Top = 270
  end
  object dsList: TDataSource
    DataSet = cdsList
    Left = 840
    Top = 254
  end
  object cdsItem: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 449
    Top = 364
    object cdsItemItemID: TStringField
      FieldName = 'ItemID'
    end
    object cdsItemItemName: TStringField
      FieldName = 'ItemName'
    end
  end
  object dsItem: TDataSource
    DataSet = cdsItem
    Left = 497
    Top = 364
  end
  object cdsReadOrder: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 369
    Top = 428
    object StringField1: TStringField
      FieldName = 'ItemID'
    end
    object StringField2: TStringField
      FieldName = 'ItemName'
    end
  end
  object dsReadOrder: TDataSource
    DataSet = cdsReadOrder
    Left = 449
    Top = 428
  end
  object cdsMarkupPosition: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 705
    Top = 356
    object StringField3: TStringField
      FieldName = 'ItemID'
    end
    object StringField4: TStringField
      FieldName = 'ItemName'
    end
  end
  object dsMarkupPosition: TDataSource
    DataSet = cdsMarkupPosition
    Left = 817
    Top = 356
  end
end
