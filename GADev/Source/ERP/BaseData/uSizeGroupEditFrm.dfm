inherited SizeGroupEditFrm: TSizeGroupEditFrm
  Left = 214
  Top = 70
  Width = 966
  Height = 605
  Caption = #23610#30721#32452
  PixelsPerInch = 96
  TextHeight = 12
  inherited p_top: TPanel
    Width = 950
    inherited Image1: TImage
      Width = 950
    end
  end
  inherited cxGroupBox4: TcxGroupBox
    Top = 486
    Width = 950
  end
  inherited TopPl: TPanel
    Width = 950
    inherited txt_FNUMBER: TcxDBTextEdit
      Style.Color = clWhite
    end
    inherited txt_lableFind: TcxTextEdit
      Style.IsFontAssigned = True
    end
  end
  inherited Panel1: TPanel
    Width = 950
    Height = 427
    object cxGroupBox1: TcxGroupBox
      Left = 1
      Top = 1
      Align = alLeft
      Caption = #23610#30721#26126#32454
      TabOrder = 0
      DesignSize = (
        280
        425)
      Height = 425
      Width = 280
      object btn_ColorNewRow: TSpeedButton
        Left = 125
        Top = 15
        Width = 75
        Height = 24
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
        Left = 200
        Top = 15
        Width = 75
        Height = 24
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
      object spt_UP: TSpeedButton
        Left = 21
        Top = 15
        Width = 52
        Height = 24
        Caption = #19978#31227
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
          FF00FFFFFF00FFFFFF00FFFFFF009C3163009C3163009C3163009C3163009C31
          63009C3163009C316300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF009C316300CE9C9C00CE9C9C00CE9C9C00CE9C
          9C00CE9C9C009C316300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF009C3163009C3163009C3163009C316300CE9C9C00CE9C9C00CE9C9C00CE9C
          9C00CE9C9C009C3163009C3163009C3163009C316300FFFFFF00FFFFFF00FFFF
          FF009C316300CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C
          9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C009C316300FFFFFF00FFFFFF00FFFF
          FF00FFFFFF009C316300CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C
          9C00CE9C9C00CE9C9C00CE9C9C009C316300FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF009C316300CE9C9C00CE9C9C00CE9C9C00CE9C9C00CE9C
          9C00CE9C9C00CE9C9C009C316300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF009C316300CE9C9C00CE9C9C00CE9C9C00CE9C
          9C00CE9C9C009C316300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009C316300CE9C9C00CE9C9C00CE9C
          9C009C316300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009C316300CE9C9C009C31
          6300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009C316300FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        OnClick = spt_UPClick
      end
      object spt_Down: TSpeedButton
        Left = 73
        Top = 15
        Width = 52
        Height = 24
        Caption = #19979#31227
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
        OnClick = spt_DownClick
      end
      object cxGrid2: TcxGrid
        Left = 5
        Top = 39
        Width = 270
        Height = 378
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
              Column = cxDetailFSEQ
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsCustomize.ColumnFiltering = False
          OptionsCustomize.ColumnSorting = False
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
          object cxDetailFID: TcxGridDBColumn
            DataBinding.FieldName = 'FID'
            Visible = False
          end
          object cxDetailFSEQ: TcxGridDBColumn
            DataBinding.FieldName = 'FSEQ'
            Width = 30
          end
          object cxDetailFPARENTID: TcxGridDBColumn
            DataBinding.FieldName = 'FPARENTID'
            Visible = False
          end
          object cxDetailCFSEQ: TcxGridDBColumn
            DataBinding.FieldName = 'CFSEQ'
            Visible = False
          end
          object cxDetailCFSIZEID: TcxGridDBColumn
            DataBinding.FieldName = 'CFSIZEID'
            Visible = False
          end
          object cxDetailSizeNumber: TcxGridDBColumn
            DataBinding.FieldName = 'SizeNumber'
            Width = 96
          end
          object cxDetailsizeName: TcxGridDBColumn
            DataBinding.FieldName = 'sizeName'
            Width = 117
          end
        end
        object cxGrid2Level1: TcxGridLevel
          GridView = cxDetail
        end
      end
    end
    object cxGroupBox2: TcxGroupBox
      Left = 281
      Top = 1
      Align = alClient
      Caption = #37197#30721#20998#37197
      TabOrder = 1
      DesignSize = (
        668
        425)
      Height = 425
      Width = 668
      object SpeedButton1: TSpeedButton
        Left = 513
        Top = 15
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
        OnClick = SpeedButton1Click
      end
      object SpeedButton2: TSpeedButton
        Left = 588
        Top = 15
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
        OnClick = SpeedButton2Click
      end
      object cxGrid1: TcxGrid
        Left = 5
        Top = 39
        Width = 658
        Height = 378
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 0
        LookAndFeel.Kind = lfOffice11
        LookAndFeel.SkinName = 'Office2007Black'
        object cxPackAllot: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsPackAllot
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Kind = skCount
              Column = cxPackAllotPackName
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Inserting = False
          OptionsView.DataRowHeight = 22
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderHeight = 22
          OptionsView.Indicator = True
          object cxPackAllotFID: TcxGridDBColumn
            DataBinding.FieldName = 'FID'
            Visible = False
            Options.Editing = False
            Width = 40
          end
          object cxPackAllotFPARENTID: TcxGridDBColumn
            DataBinding.FieldName = 'FPARENTID'
            Visible = False
            Options.Editing = False
            Width = 40
          end
          object cxPackAllotCFPACKID: TcxGridDBColumn
            DataBinding.FieldName = 'CFPACKID'
            Visible = False
            Options.Editing = False
            Width = 40
          end
          object cxPackAllotPackName: TcxGridDBColumn
            DataBinding.FieldName = 'PackName'
            Options.Editing = False
            Width = 75
          end
          object cxPackAllotFSize1: TcxGridDBColumn
            DataBinding.FieldName = 'FSize1'
            Width = 40
          end
          object cxPackAllotFSize2: TcxGridDBColumn
            DataBinding.FieldName = 'FSize2'
            Width = 40
          end
          object cxPackAllotFSize3: TcxGridDBColumn
            DataBinding.FieldName = 'FSize3'
            Width = 40
          end
          object cxPackAllotFSize4: TcxGridDBColumn
            DataBinding.FieldName = 'FSize4'
            Width = 40
          end
          object cxPackAllotFSize5: TcxGridDBColumn
            DataBinding.FieldName = 'FSize5'
            Width = 40
          end
          object cxPackAllotFSize6: TcxGridDBColumn
            DataBinding.FieldName = 'FSize6'
            Width = 40
          end
          object cxPackAllotFSize7: TcxGridDBColumn
            DataBinding.FieldName = 'FSize7'
            Width = 40
          end
          object cxPackAllotFSize8: TcxGridDBColumn
            DataBinding.FieldName = 'FSize8'
            Width = 40
          end
          object cxPackAllotFSize9: TcxGridDBColumn
            DataBinding.FieldName = 'FSize9'
            Width = 40
          end
          object cxPackAllotFSize10: TcxGridDBColumn
            DataBinding.FieldName = 'FSize10'
            Width = 40
          end
          object cxPackAllotFSize11: TcxGridDBColumn
            DataBinding.FieldName = 'FSize11'
            Width = 40
          end
          object cxPackAllotFSize12: TcxGridDBColumn
            DataBinding.FieldName = 'FSize12'
            Width = 40
          end
          object cxPackAllotFSize13: TcxGridDBColumn
            DataBinding.FieldName = 'FSize13'
            Width = 40
          end
          object cxPackAllotFSize14: TcxGridDBColumn
            DataBinding.FieldName = 'FSize14'
            Width = 40
          end
          object cxPackAllotFSize15: TcxGridDBColumn
            DataBinding.FieldName = 'FSize15'
            Width = 40
          end
          object cxPackAllotFSize16: TcxGridDBColumn
            DataBinding.FieldName = 'FSize16'
            Width = 40
          end
          object cxPackAllotFSize17: TcxGridDBColumn
            DataBinding.FieldName = 'FSize17'
            Width = 40
          end
          object cxPackAllotFSize18: TcxGridDBColumn
            DataBinding.FieldName = 'FSize18'
            Width = 40
          end
          object cxPackAllotFSize19: TcxGridDBColumn
            DataBinding.FieldName = 'FSize19'
            Width = 40
          end
          object cxPackAllotFSize20: TcxGridDBColumn
            DataBinding.FieldName = 'FSize20'
            Width = 40
          end
          object cxPackAllotFSize21: TcxGridDBColumn
            DataBinding.FieldName = 'FSize21'
            Width = 40
          end
          object cxPackAllotFSize22: TcxGridDBColumn
            DataBinding.FieldName = 'FSize22'
            Width = 40
          end
          object cxPackAllotFSize23: TcxGridDBColumn
            DataBinding.FieldName = 'FSize23'
            Width = 40
          end
          object cxPackAllotFSize24: TcxGridDBColumn
            DataBinding.FieldName = 'FSize24'
            Width = 40
          end
          object cxPackAllotFSize25: TcxGridDBColumn
            DataBinding.FieldName = 'FSize25'
            Width = 40
          end
          object cxPackAllotFSize26: TcxGridDBColumn
            DataBinding.FieldName = 'FSize26'
            Width = 40
          end
          object cxPackAllotFSize27: TcxGridDBColumn
            DataBinding.FieldName = 'FSize27'
            Width = 40
          end
          object cxPackAllotFSize28: TcxGridDBColumn
            DataBinding.FieldName = 'FSize28'
            Width = 40
          end
          object cxPackAllotFSize29: TcxGridDBColumn
            DataBinding.FieldName = 'FSize29'
            Width = 40
          end
          object cxPackAllotFSize30: TcxGridDBColumn
            DataBinding.FieldName = 'FSize30'
            Width = 40
          end
          object cxPackAllotTatolAmount: TcxGridDBColumn
            DataBinding.FieldName = 'TatolAmount'
            Options.Editing = False
            Width = 40
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxPackAllot
        end
      end
    end
  end
  inherited STBaseEditDataSet: TClientDataSet
    Left = 864
    Top = 496
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
    object cdsMaterFGROUP: TWideStringField
      FieldName = 'FGROUP'
      Size = 44
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
    Active = True
    Data = {
      EF0100009619E0BD010000001800000010000000000003000000EF0107464E55
      4D42455201004A000000010005574944544802000200A0000B4653494D504C45
      4E414D4502004A00000001000557494454480200020040010346494401004A00
      000001000557494454480200020058000A4643524541544F52494401004A0000
      0001000557494454480200020058000B4643524541544554494D450800080000
      00000011464C41535455504441544555534552494401004A0000000100055749
      4454480200020058000F464C41535455504441544554494D4508000800000000
      000E46434F4E54524F4C554E4954494401004A00000001000557494454480200
      0200580008464E414D455F4C3102004A000000010005574944544802000200FC
      0308464E414D455F4C3202004A000000010005574944544802000200FC030846
      4E414D455F4C3302004A000000010005574944544802000200FC030F46444553
      4352495054494F4E5F4C3102004A000000010005574944544802000200FC030F
      464445534352495054494F4E5F4C3202004A0000000100055749445448020002
      00FC030F464445534352495054494F4E5F4C3302004A00000001000557494454
      4802000200FC03064647524F555001004A000000010005574944544802000200
      58000646535441544504000100000000000000}
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
    object cdsSaveFGROUP: TWideStringField
      FieldName = 'FGROUP'
      Size = 44
    end
    object cdsSaveFSTATE: TIntegerField
      FieldName = 'FSTATE'
    end
  end
  object cdsEntry: TClientDataSet
    Aggregates = <>
    Params = <>
    OnCalcFields = cdsEntryCalcFields
    OnNewRecord = cdsEntryNewRecord
    Left = 416
    Top = 312
    object cdsEntryFID: TWideStringField
      FieldName = 'FID'
      Size = 44
    end
    object cdsEntryFSEQ: TFloatField
      DisplayLabel = #24207#21495
      FieldName = 'FSEQ'
    end
    object cdsEntryFPARENTID: TWideStringField
      FieldName = 'FPARENTID'
      Size = 44
    end
    object cdsEntryCFSEQ: TFloatField
      FieldName = 'CFSEQ'
    end
    object cdsEntryCFSIZEID: TWideStringField
      FieldName = 'CFSIZEID'
      Size = 44
    end
    object cdsEntrySizeNumber: TStringField
      DisplayLabel = #23610#30721#32534#21495
      FieldKind = fkCalculated
      FieldName = 'SizeNumber'
      Size = 40
      Calculated = True
    end
    object cdsEntrysizeName: TStringField
      DisplayLabel = #23610#30721#21517#31216
      FieldKind = fkCalculated
      FieldName = 'sizeName'
      Size = 40
      Calculated = True
    end
  end
  object dsEntry: TDataSource
    DataSet = cdsEntry
    Left = 473
    Top = 311
  end
  object cdsPackAllot: TClientDataSet
    Aggregates = <>
    Params = <>
    OnCalcFields = cdsPackAllotCalcFields
    OnNewRecord = cdsPackAllotNewRecord
    Left = 616
    Top = 304
    object cdsPackAllotFID: TWideStringField
      FieldName = 'FID'
      Size = 44
    end
    object cdsPackAllotFPARENTID: TWideStringField
      FieldName = 'FPARENTID'
      Size = 44
    end
    object cdsPackAllotCFPACKID: TWideStringField
      FieldName = 'CFPACKID'
      Size = 44
    end
    object cdsPackAllotPackName: TStringField
      DisplayLabel = #37197#30721
      FieldKind = fkCalculated
      FieldName = 'PackName'
      Size = 60
      Calculated = True
    end
    object cdsPackAllotFSize1: TIntegerField
      FieldName = 'FSize1'
    end
    object cdsPackAllotFSize2: TIntegerField
      FieldName = 'FSize2'
    end
    object cdsPackAllotFSize3: TIntegerField
      FieldName = 'FSize3'
    end
    object cdsPackAllotFSize4: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'FSize4'
      Calculated = True
    end
    object cdsPackAllotFSize5: TIntegerField
      FieldName = 'FSize5'
    end
    object cdsPackAllotFSize6: TIntegerField
      FieldName = 'FSize6'
    end
    object cdsPackAllotFSize7: TIntegerField
      FieldName = 'FSize7'
    end
    object cdsPackAllotFSize8: TIntegerField
      FieldName = 'FSize8'
    end
    object cdsPackAllotFSize9: TIntegerField
      FieldName = 'FSize9'
    end
    object cdsPackAllotFSize10: TIntegerField
      FieldName = 'FSize10'
    end
    object cdsPackAllotFSize11: TIntegerField
      FieldName = 'FSize11'
    end
    object cdsPackAllotFSize12: TIntegerField
      FieldName = 'FSize12'
    end
    object cdsPackAllotFSize13: TIntegerField
      FieldName = 'FSize13'
    end
    object cdsPackAllotFSize14: TIntegerField
      FieldName = 'FSize14'
    end
    object cdsPackAllotFSize15: TIntegerField
      FieldName = 'FSize15'
    end
    object cdsPackAllotFSize16: TIntegerField
      FieldName = 'FSize16'
    end
    object cdsPackAllotFSize17: TIntegerField
      FieldName = 'FSize17'
    end
    object cdsPackAllotFSize18: TIntegerField
      FieldName = 'FSize18'
    end
    object cdsPackAllotFSize19: TIntegerField
      FieldName = 'FSize19'
    end
    object cdsPackAllotFSize20: TIntegerField
      FieldName = 'FSize20'
    end
    object cdsPackAllotFSize21: TIntegerField
      FieldName = 'FSize21'
    end
    object cdsPackAllotFSize22: TIntegerField
      FieldName = 'FSize22'
    end
    object cdsPackAllotFSize23: TIntegerField
      FieldName = 'FSize23'
    end
    object cdsPackAllotFSize24: TIntegerField
      FieldName = 'FSize24'
    end
    object cdsPackAllotFSize25: TIntegerField
      FieldName = 'FSize25'
    end
    object cdsPackAllotFSize26: TIntegerField
      FieldName = 'FSize26'
    end
    object cdsPackAllotFSize27: TIntegerField
      FieldName = 'FSize27'
    end
    object cdsPackAllotFSize28: TIntegerField
      FieldName = 'FSize28'
    end
    object cdsPackAllotFSize29: TIntegerField
      FieldName = 'FSize29'
    end
    object cdsPackAllotFSize30: TIntegerField
      FieldName = 'FSize30'
    end
    object cdsPackAllotTatolAmount: TIntegerField
      DisplayLabel = #21512#35745
      FieldKind = fkCalculated
      FieldName = 'TatolAmount'
      Calculated = True
    end
  end
  object dsPackAllot: TDataSource
    DataSet = cdsPackAllot
    Left = 697
    Top = 303
  end
  object cdscdsPackAllot_save: TClientDataSet
    Aggregates = <>
    Params = <>
    OnNewRecord = cdscdsPackAllot_saveNewRecord
    Left = 416
    Top = 384
    object WideStringField1: TWideStringField
      FieldName = 'FID'
      Size = 44
    end
    object FloatField1: TFloatField
      FieldName = 'FSEQ'
    end
    object WideStringField2: TWideStringField
      FieldName = 'FPARENTID'
      Size = 44
    end
    object FloatField2: TFloatField
      FieldName = 'CFSEQ'
    end
    object WideStringField3: TWideStringField
      FieldName = 'CFPACKID'
      Size = 44
    end
    object WideStringField4: TWideStringField
      FieldName = 'CFSIZEID'
      Size = 44
    end
    object FloatField3: TFloatField
      FieldName = 'CFIAMOUNT'
    end
  end
end
