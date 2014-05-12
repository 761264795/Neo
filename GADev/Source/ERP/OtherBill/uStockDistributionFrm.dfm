inherited StockDistributionFrm: TStockDistributionFrm
  Left = 202
  Top = 124
  Caption = #25353#24211#23384#26234#33021#37197#36135
  ClientHeight = 553
  ClientWidth = 945
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 12
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 945
    Height = 512
    Align = alClient
    Color = 16511980
    TabOrder = 0
    object mPage: TcxPageControl
      Left = 1
      Top = 1
      Width = 943
      Height = 510
      ActivePage = cxTabSheet1
      Align = alClient
      Style = 10
      TabOrder = 0
      OnChange = mPageChange
      ClientRectBottom = 510
      ClientRectRight = 943
      ClientRectTop = 18
      object cxTabSheet1: TcxTabSheet
        Caption = '1-'#20179#24211'/'#24215#38138#33539#22260#21644#29289#26009#33539#22260
        ImageIndex = 0
        object Panel13: TPanel
          Left = 0
          Top = 0
          Width = 481
          Height = 492
          Align = alLeft
          BevelOuter = bvNone
          Color = 16511980
          TabOrder = 0
          object Panel4: TPanel
            Left = 0
            Top = 0
            Width = 481
            Height = 27
            Align = alTop
            Color = 16511980
            TabOrder = 0
            DesignSize = (
              481
              27)
            object btn_ColorNewRow: TSpeedButton
              Left = 329
              Top = 1
              Width = 75
              Height = 24
              Anchors = [akTop, akRight]
              Caption = #22686#21152
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
              Left = 404
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
            object Label2: TLabel
              Left = 9
              Top = 8
              Width = 93
              Height = 12
              AutoSize = False
              Caption = #20179#24211'/'#24215#38138#36807#28388
            end
            object txtCustomer: TcxTextEdit
              Left = 96
              Top = 4
              Properties.OnChange = txtCustomerPropertiesChange
              TabOrder = 0
              Width = 184
            end
          end
          object cxGrid2: TcxGrid
            Left = 0
            Top = 27
            Width = 481
            Height = 465
            Align = alClient
            TabOrder = 1
            LookAndFeel.Kind = lfOffice11
            LookAndFeel.SkinName = 'Office2007Black'
            object cxCustomer: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              DataController.DataSource = dsCustomer
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  Kind = skCount
                  FieldName = 'CustomerNumber'
                  Column = cxCustomerCustomerNumber
                end>
              DataController.Summary.SummaryGroups = <>
              OptionsCustomize.ColumnFiltering = False
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
              object cxCustomerCustomerFID: TcxGridDBColumn
                DataBinding.FieldName = 'CustomerFID'
                Visible = False
                Options.Editing = False
              end
              object cxCustomerCustomerNumber: TcxGridDBColumn
                DataBinding.FieldName = 'CustomerNumber'
                Options.Editing = False
                Width = 150
              end
              object cxCustomerCustomerName: TcxGridDBColumn
                DataBinding.FieldName = 'CustomerName'
                Options.Editing = False
                Width = 303
              end
            end
            object cxGrid2Level1: TcxGridLevel
              GridView = cxCustomer
            end
          end
        end
        object Panel14: TPanel
          Left = 481
          Top = 0
          Width = 462
          Height = 492
          Align = alClient
          BevelOuter = bvNone
          Color = 16511980
          TabOrder = 1
          object Panel5: TPanel
            Left = 0
            Top = 0
            Width = 462
            Height = 27
            Align = alTop
            Color = 16511980
            TabOrder = 0
            DesignSize = (
              462
              27)
            object SpeedButton1: TSpeedButton
              Left = 310
              Top = 1
              Width = 75
              Height = 24
              Anchors = [akTop, akRight]
              Caption = #22686#21152
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
              Left = 385
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
              OnClick = SpeedButton2Click
            end
            object Label3: TLabel
              Left = 9
              Top = 8
              Width = 56
              Height = 12
              AutoSize = False
              Caption = #29289#26009#36807#28388
            end
            object txtMaterial: TcxTextEdit
              Left = 64
              Top = 4
              Properties.OnChange = txtMaterialPropertiesChange
              TabOrder = 0
              Width = 184
            end
          end
          object cxGrid1: TcxGrid
            Left = 0
            Top = 27
            Width = 462
            Height = 465
            Align = alClient
            PopupMenu = pm_material
            TabOrder = 1
            LookAndFeel.Kind = lfOffice11
            LookAndFeel.SkinName = 'Office2007Black'
            object cxGridDBTableView1: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              DataController.DataSource = dsMaterial
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <
                item
                  Kind = skCount
                  FieldName = 'MaterialNumber'
                  Column = cxGridDBTableView1MaterialNumber
                end>
              DataController.Summary.SummaryGroups = <>
              OptionsCustomize.ColumnFiltering = False
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
              object cxGridDBTableView1MaterialFID: TcxGridDBColumn
                DataBinding.FieldName = 'MaterialFID'
                Visible = False
                Options.Editing = False
              end
              object cxGridDBTableView1MaterialNumber: TcxGridDBColumn
                DataBinding.FieldName = 'MaterialNumber'
                Options.Editing = False
                Width = 164
              end
              object cxGridDBTableView1MaterialName: TcxGridDBColumn
                DataBinding.FieldName = 'MaterialName'
                Options.Editing = False
                Width = 360
              end
            end
            object cxGridLevel1: TcxGridLevel
              GridView = cxGridDBTableView1
            end
          end
        end
      end
      object cxTabSheet2: TcxTabSheet
        Caption = '2-'#35843#37197#26126#32454
        ImageIndex = 2
        object Splitter1: TSplitter
          Left = 0
          Top = 277
          Width = 943
          Height = 3
          Cursor = crVSplit
          Align = alBottom
        end
        object Panel1: TPanel
          Left = 0
          Top = 0
          Width = 943
          Height = 277
          Align = alClient
          BevelOuter = bvNone
          Color = 16511980
          TabOrder = 0
          object Panel8: TPanel
            Left = 0
            Top = 0
            Width = 760
            Height = 277
            Align = alClient
            BevelOuter = bvNone
            Color = 16511980
            TabOrder = 0
            object Panel12: TPanel
              Left = 0
              Top = 0
              Width = 760
              Height = 25
              Align = alTop
              Color = 16511980
              TabOrder = 0
              DesignSize = (
                760
                25)
              object Label14: TLabel
                Left = 631
                Top = 7
                Width = 78
                Height = 12
                Anchors = [akTop, akRight]
                AutoSize = False
                Caption = #22825#20869#38144#21806#25968#25454
              end
              object Label4: TLabel
                Left = 3
                Top = 7
                Width = 56
                Height = 12
                AutoSize = False
                Caption = #29289#26009#36807#28388
              end
              object spe_SaleDays: TcxSpinEdit
                Left = 585
                Top = 3
                Anchors = [akTop, akRight]
                Properties.AssignedValues.MinValue = True
                Properties.MaxValue = 365.000000000000000000
                TabOrder = 0
                Value = 30
                Width = 45
              end
              object btn_RefDownData: TcxButton
                Left = 711
                Top = 1
                Width = 44
                Height = 23
                Anchors = [akTop, akRight]
                Caption = #21047#26032
                TabOrder = 1
                OnClick = btn_RefDownDataClick
                LookAndFeel.Kind = lfOffice11
              end
              object txt_DH: TcxTextEdit
                Left = 58
                Top = 3
                Properties.OnChange = txt_DHPropertiesChange
                TabOrder = 2
                Width = 184
              end
            end
            object cxGrid7: TcxGrid
              Left = 0
              Top = 25
              Width = 760
              Height = 252
              Align = alClient
              TabOrder = 1
              LookAndFeel.Kind = lfOffice11
              LookAndFeel.SkinName = 'Office2007Black'
              object cxAllocation: TcxGridDBTableView
                NavigatorButtons.ConfirmDelete = False
                DataController.DataSource = dsAllocation
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                OptionsData.Deleting = False
                OptionsData.DeletingConfirmation = False
                OptionsData.Inserting = False
                OptionsView.DataRowHeight = 22
                OptionsView.Footer = True
                OptionsView.GroupByBox = False
                OptionsView.HeaderHeight = 22
                OptionsView.Indicator = True
                object cxAllocationselected: TcxGridDBColumn
                  DataBinding.FieldName = 'selected'
                  PropertiesClassName = 'TcxCheckBoxProperties'
                  Properties.NullStyle = nssUnchecked
                  Width = 44
                end
                object cxAllocationBILLFID: TcxGridDBColumn
                  DataBinding.FieldName = 'BILLFID'
                  Visible = False
                  Options.Editing = False
                  Width = 80
                end
                object cxAllocationFNUMBER: TcxGridDBColumn
                  DataBinding.FieldName = 'FNUMBER'
                  Options.Editing = False
                  Width = 80
                end
                object cxAllocationCUSTFID: TcxGridDBColumn
                  DataBinding.FieldName = 'CUSTFID'
                  Visible = False
                  Options.Editing = False
                  Width = 80
                end
                object cxAllocationCUSTNUMBER: TcxGridDBColumn
                  DataBinding.FieldName = 'CUSTNUMBER'
                  Visible = False
                  Options.Editing = False
                  Width = 80
                end
                object cxAllocationCUSTNAME: TcxGridDBColumn
                  DataBinding.FieldName = 'CUSTNAME'
                  Visible = False
                  Options.Editing = False
                  Width = 80
                end
                object cxAllocationOUTWARHFID: TcxGridDBColumn
                  DataBinding.FieldName = 'OUTWARHFID'
                  Visible = False
                  Options.Editing = False
                  Width = 80
                end
                object cxAllocationOUTWARHNUMBER: TcxGridDBColumn
                  DataBinding.FieldName = 'OUTWARHNUMBER'
                  Visible = False
                  Options.Editing = False
                  Width = 80
                end
                object cxAllocationOUTWARHNAME: TcxGridDBColumn
                  DataBinding.FieldName = 'OUTWARHNAME'
                  Visible = False
                  Options.Editing = False
                  Width = 80
                end
                object cxAllocationINWARHFID: TcxGridDBColumn
                  DataBinding.FieldName = 'INWARHFID'
                  Visible = False
                  Options.Editing = False
                  Width = 80
                end
                object cxAllocationINWARHNUMBER: TcxGridDBColumn
                  DataBinding.FieldName = 'INWARHNUMBER'
                  Visible = False
                  Options.Editing = False
                  Width = 80
                end
                object cxAllocationINWARHNAME: TcxGridDBColumn
                  DataBinding.FieldName = 'INWARHNAME'
                  Visible = False
                  Options.Editing = False
                  Width = 80
                end
                object cxAllocationMATERNUMBER: TcxGridDBColumn
                  DataBinding.FieldName = 'MATERNUMBER'
                  Options.Editing = False
                  Width = 80
                end
                object cxAllocationMATERNAME: TcxGridDBColumn
                  DataBinding.FieldName = 'MATERNAME'
                  Options.Editing = False
                  Width = 80
                end
                object cxAllocationCOLORNUMBER: TcxGridDBColumn
                  DataBinding.FieldName = 'COLORNUMBER'
                  Options.Editing = False
                  Width = 80
                end
                object cxAllocationCOLORNAME: TcxGridDBColumn
                  DataBinding.FieldName = 'COLORNAME'
                  Options.Editing = False
                  Width = 80
                end
                object cxAllocationCUPNAME: TcxGridDBColumn
                  DataBinding.FieldName = 'CUPNAME'
                  Options.Editing = False
                  Width = 44
                end
                object cxAllocationPACKNAME: TcxGridDBColumn
                  DataBinding.FieldName = 'PACKNAME'
                  Options.Editing = False
                  Width = 46
                end
                object cxAllocationFMATERIALID: TcxGridDBColumn
                  DataBinding.FieldName = 'FMATERIALID'
                  Visible = False
                  Options.Editing = False
                  Width = 80
                end
                object cxAllocationCFCOLORID: TcxGridDBColumn
                  DataBinding.FieldName = 'CFCOLORID'
                  Visible = False
                  Options.Editing = False
                  Width = 80
                end
                object cxAllocationCFPACKID: TcxGridDBColumn
                  DataBinding.FieldName = 'CFPACKID'
                  Visible = False
                  Options.Editing = False
                  Width = 80
                end
                object cxAllocationCFCUPID: TcxGridDBColumn
                  DataBinding.FieldName = 'CFCUPID'
                  Visible = False
                  Options.Editing = False
                  Width = 80
                end
                object cxAllocationCFPACKNUM: TcxGridDBColumn
                  DataBinding.FieldName = 'CFPACKNUM'
                  Width = 63
                end
                object cxAllocationFQty_1: TcxGridDBColumn
                  DataBinding.FieldName = 'FQty_1'
                  Visible = False
                  Width = 40
                end
                object cxAllocationFQty_2: TcxGridDBColumn
                  DataBinding.FieldName = 'FQty_2'
                  Visible = False
                  Width = 40
                end
                object cxAllocationFQty_3: TcxGridDBColumn
                  DataBinding.FieldName = 'FQty_3'
                  Visible = False
                  Width = 40
                end
                object cxAllocationFQty_4: TcxGridDBColumn
                  DataBinding.FieldName = 'FQty_4'
                  Visible = False
                  Width = 40
                end
                object cxAllocationFQty_5: TcxGridDBColumn
                  DataBinding.FieldName = 'FQty_5'
                  Visible = False
                  Width = 40
                end
                object cxAllocationFQty_6: TcxGridDBColumn
                  DataBinding.FieldName = 'FQty_6'
                  Visible = False
                  Width = 40
                end
                object cxAllocationFQty_7: TcxGridDBColumn
                  DataBinding.FieldName = 'FQty_7'
                  Visible = False
                  Width = 40
                end
                object cxAllocationFQty_8: TcxGridDBColumn
                  DataBinding.FieldName = 'FQty_8'
                  Visible = False
                  Width = 40
                end
                object cxAllocationFQty_9: TcxGridDBColumn
                  DataBinding.FieldName = 'FQty_9'
                  Visible = False
                  Width = 40
                end
                object cxAllocationFQty_10: TcxGridDBColumn
                  DataBinding.FieldName = 'FQty_10'
                  Visible = False
                  Width = 40
                end
                object cxAllocationFQty_11: TcxGridDBColumn
                  DataBinding.FieldName = 'FQty_11'
                  Visible = False
                  Width = 40
                end
                object cxAllocationFQty_12: TcxGridDBColumn
                  DataBinding.FieldName = 'FQty_12'
                  Visible = False
                  Width = 40
                end
                object cxAllocationFQty_13: TcxGridDBColumn
                  DataBinding.FieldName = 'FQty_13'
                  Visible = False
                  Width = 40
                end
                object cxAllocationFQty_14: TcxGridDBColumn
                  DataBinding.FieldName = 'FQty_14'
                  Visible = False
                  Width = 40
                end
                object cxAllocationFQty_15: TcxGridDBColumn
                  DataBinding.FieldName = 'FQty_15'
                  Visible = False
                  Width = 40
                end
                object cxAllocationFQty_16: TcxGridDBColumn
                  DataBinding.FieldName = 'FQty_16'
                  Visible = False
                  Width = 40
                end
                object cxAllocationFQty_17: TcxGridDBColumn
                  DataBinding.FieldName = 'FQty_17'
                  Visible = False
                  Width = 40
                end
                object cxAllocationFQty_18: TcxGridDBColumn
                  DataBinding.FieldName = 'FQty_18'
                  Visible = False
                  Width = 40
                end
                object cxAllocationFQty_19: TcxGridDBColumn
                  DataBinding.FieldName = 'FQty_19'
                  Visible = False
                  Width = 40
                end
                object cxAllocationFQty_20: TcxGridDBColumn
                  DataBinding.FieldName = 'FQty_20'
                  Visible = False
                  Width = 40
                end
                object cxAllocationFQty_21: TcxGridDBColumn
                  DataBinding.FieldName = 'FQty_21'
                  Visible = False
                  Width = 40
                end
                object cxAllocationFQty_22: TcxGridDBColumn
                  DataBinding.FieldName = 'FQty_22'
                  Visible = False
                  Width = 40
                end
                object cxAllocationFQty_23: TcxGridDBColumn
                  DataBinding.FieldName = 'FQty_23'
                  Visible = False
                  Width = 40
                end
                object cxAllocationFQty_24: TcxGridDBColumn
                  DataBinding.FieldName = 'FQty_24'
                  Visible = False
                  Width = 40
                end
                object cxAllocationFQty_25: TcxGridDBColumn
                  DataBinding.FieldName = 'FQty_25'
                  Visible = False
                  Width = 40
                end
                object cxAllocationFQty_26: TcxGridDBColumn
                  DataBinding.FieldName = 'FQty_26'
                  Visible = False
                  Width = 40
                end
                object cxAllocationFQty_27: TcxGridDBColumn
                  DataBinding.FieldName = 'FQty_27'
                  Visible = False
                  Width = 40
                end
                object cxAllocationFQty_28: TcxGridDBColumn
                  DataBinding.FieldName = 'FQty_28'
                  Visible = False
                  Width = 40
                end
                object cxAllocationFQty_29: TcxGridDBColumn
                  DataBinding.FieldName = 'FQty_29'
                  Visible = False
                  Width = 40
                end
                object cxAllocationFQty_30: TcxGridDBColumn
                  DataBinding.FieldName = 'FQty_30'
                  Visible = False
                  Width = 40
                end
                object cxAllocationFTotalQty: TcxGridDBColumn
                  DataBinding.FieldName = 'FTotalQty'
                  Options.Editing = False
                  Width = 66
                end
                object cxAllocationCFNotPACKNUM: TcxGridDBColumn
                  DataBinding.FieldName = 'CFNotPACKNUM'
                  Options.Editing = False
                  Width = 62
                end
                object cxAllocationFNotQty_1: TcxGridDBColumn
                  DataBinding.FieldName = 'FNotQty_1'
                  Visible = False
                  Options.Editing = False
                  Width = 40
                end
                object cxAllocationFNotQty_2: TcxGridDBColumn
                  DataBinding.FieldName = 'FNotQty_2'
                  Visible = False
                  Options.Editing = False
                  Width = 40
                end
                object cxAllocationFNotQty_3: TcxGridDBColumn
                  DataBinding.FieldName = 'FNotQty_3'
                  Visible = False
                  Options.Editing = False
                  Width = 40
                end
                object cxAllocationFNotQty_4: TcxGridDBColumn
                  DataBinding.FieldName = 'FNotQty_4'
                  Visible = False
                  Options.Editing = False
                  Width = 40
                end
                object cxAllocationFNotQty_5: TcxGridDBColumn
                  DataBinding.FieldName = 'FNotQty_5'
                  Visible = False
                  Options.Editing = False
                  Width = 40
                end
                object cxAllocationFNotQty_6: TcxGridDBColumn
                  DataBinding.FieldName = 'FNotQty_6'
                  Visible = False
                  Options.Editing = False
                  Width = 40
                end
                object cxAllocationFNotQty_7: TcxGridDBColumn
                  DataBinding.FieldName = 'FNotQty_7'
                  Visible = False
                  Options.Editing = False
                  Width = 40
                end
                object cxAllocationFNotQty_8: TcxGridDBColumn
                  DataBinding.FieldName = 'FNotQty_8'
                  Visible = False
                  Options.Editing = False
                  Width = 40
                end
                object cxAllocationFNotQty_9: TcxGridDBColumn
                  DataBinding.FieldName = 'FNotQty_9'
                  Visible = False
                  Options.Editing = False
                  Width = 40
                end
                object cxAllocationFNotQty_10: TcxGridDBColumn
                  DataBinding.FieldName = 'FNotQty_10'
                  Visible = False
                  Options.Editing = False
                  Width = 40
                end
                object cxAllocationFNotQty_11: TcxGridDBColumn
                  DataBinding.FieldName = 'FNotQty_11'
                  Visible = False
                  Options.Editing = False
                  Width = 40
                end
                object cxAllocationFNotQty_12: TcxGridDBColumn
                  DataBinding.FieldName = 'FNotQty_12'
                  Visible = False
                  Options.Editing = False
                  Width = 40
                end
                object cxAllocationFNotQty_13: TcxGridDBColumn
                  DataBinding.FieldName = 'FNotQty_13'
                  Visible = False
                  Options.Editing = False
                  Width = 40
                end
                object cxAllocationFNotQty_14: TcxGridDBColumn
                  DataBinding.FieldName = 'FNotQty_14'
                  Visible = False
                  Options.Editing = False
                  Width = 40
                end
                object cxAllocationFNotQty_15: TcxGridDBColumn
                  DataBinding.FieldName = 'FNotQty_15'
                  Visible = False
                  Options.Editing = False
                  Width = 40
                end
                object cxAllocationFNotQty_16: TcxGridDBColumn
                  DataBinding.FieldName = 'FNotQty_16'
                  Visible = False
                  Options.Editing = False
                  Width = 40
                end
                object cxAllocationFNotQty_17: TcxGridDBColumn
                  DataBinding.FieldName = 'FNotQty_17'
                  Visible = False
                  Options.Editing = False
                  Width = 40
                end
                object cxAllocationFNotQty_18: TcxGridDBColumn
                  DataBinding.FieldName = 'FNotQty_18'
                  Visible = False
                  Options.Editing = False
                  Width = 40
                end
                object cxAllocationFNotQty_19: TcxGridDBColumn
                  DataBinding.FieldName = 'FNotQty_19'
                  Visible = False
                  Options.Editing = False
                  Width = 40
                end
                object cxAllocationFNotQty_20: TcxGridDBColumn
                  DataBinding.FieldName = 'FNotQty_20'
                  Visible = False
                  Options.Editing = False
                  Width = 40
                end
                object cxAllocationFNotQty_21: TcxGridDBColumn
                  DataBinding.FieldName = 'FNotQty_21'
                  Visible = False
                  Options.Editing = False
                  Width = 40
                end
                object cxAllocationFNotQty_22: TcxGridDBColumn
                  DataBinding.FieldName = 'FNotQty_22'
                  Visible = False
                  Options.Editing = False
                  Width = 40
                end
                object cxAllocationFNotQty_23: TcxGridDBColumn
                  DataBinding.FieldName = 'FNotQty_23'
                  Visible = False
                  Options.Editing = False
                  Width = 40
                end
                object cxAllocationFNotQty_24: TcxGridDBColumn
                  DataBinding.FieldName = 'FNotQty_24'
                  Visible = False
                  Options.Editing = False
                  Width = 40
                end
                object cxAllocationFNotQty_25: TcxGridDBColumn
                  DataBinding.FieldName = 'FNotQty_25'
                  Visible = False
                  Options.Editing = False
                  Width = 40
                end
                object cxAllocationFNotQty_26: TcxGridDBColumn
                  DataBinding.FieldName = 'FNotQty_26'
                  Visible = False
                  Options.Editing = False
                  Width = 40
                end
                object cxAllocationFNotQty_27: TcxGridDBColumn
                  DataBinding.FieldName = 'FNotQty_27'
                  Visible = False
                  Options.Editing = False
                  Width = 40
                end
                object cxAllocationFNotQty_28: TcxGridDBColumn
                  DataBinding.FieldName = 'FNotQty_28'
                  Visible = False
                  Options.Editing = False
                  Width = 40
                end
                object cxAllocationFNotQty_29: TcxGridDBColumn
                  DataBinding.FieldName = 'FNotQty_29'
                  Visible = False
                  Options.Editing = False
                  Width = 40
                end
                object cxAllocationFNotQty_30: TcxGridDBColumn
                  DataBinding.FieldName = 'FNotQty_30'
                  Visible = False
                  Options.Editing = False
                  Width = 40
                end
                object cxAllocationFNotTotalQty: TcxGridDBColumn
                  DataBinding.FieldName = 'FNotTotalQty'
                  Options.Editing = False
                  Width = 62
                end
                object cxAllocationCFDPPRICE: TcxGridDBColumn
                  DataBinding.FieldName = 'CFDPPRICE'
                  Options.Editing = False
                  Width = 59
                end
                object cxAllocationFPRICE: TcxGridDBColumn
                  DataBinding.FieldName = 'FPRICE'
                  Options.Editing = False
                  Width = 44
                end
                object cxAllocationFDISCOUNT: TcxGridDBColumn
                  DataBinding.FieldName = 'FDISCOUNT'
                  Options.Editing = False
                  Width = 52
                end
                object cxAllocationFACTUALPRICE: TcxGridDBColumn
                  DataBinding.FieldName = 'FACTUALPRICE'
                  Options.Editing = False
                  Width = 58
                end
                object cxAllocationFAmount: TcxGridDBColumn
                  DataBinding.FieldName = 'FAmount'
                  Options.Editing = False
                  Width = 80
                end
                object cxAllocationFDpAmount: TcxGridDBColumn
                  DataBinding.FieldName = 'FDpAmount'
                  Options.Editing = False
                  Width = 80
                end
                object cxAllocationFNotAmount: TcxGridDBColumn
                  DataBinding.FieldName = 'FNotAmount'
                  Options.Editing = False
                  Width = 80
                end
                object cxAllocationFDpNotAmount: TcxGridDBColumn
                  DataBinding.FieldName = 'FDpNotAmount'
                  Options.Editing = False
                  Width = 80
                end
                object cxAllocationBRANDNAME: TcxGridDBColumn
                  DataBinding.FieldName = 'BRANDNAME'
                  Options.Editing = False
                  Width = 80
                end
                object cxAllocationYEARSNAME: TcxGridDBColumn
                  DataBinding.FieldName = 'YEARSNAME'
                  Options.Editing = False
                  Width = 80
                end
                object cxAllocationATTBNAME: TcxGridDBColumn
                  DataBinding.FieldName = 'ATTBNAME'
                  Options.Editing = False
                  Width = 80
                end
              end
              object cxAllocation_bands: TcxGridDBBandedTableView
                NavigatorButtons.ConfirmDelete = False
                OnCellDblClick = cxAllocation_bandsCellDblClick
                OnFocusedRecordChanged = cxAllocation_bandsFocusedRecordChanged
                DataController.DataSource = dsAllocation
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                OptionsView.DataRowHeight = 22
                OptionsView.Footer = True
                OptionsView.GroupByBox = False
                OptionsView.HeaderHeight = 22
                OptionsView.Indicator = True
                Styles.Inactive = cxStyle1
                Bands = <
                  item
                    Caption = #22522#26412#20449#24687
                  end
                  item
                    Caption = #24211#23384#25968#37327
                  end
                  item
                    Caption = #38144#21806#25968#37327
                  end
                  item
                    Caption = #20854#23427#20449#24687
                  end>
                object cxAllocation_bandsINWARHFID: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'INWARHFID'
                  Visible = False
                  Options.Editing = False
                  Width = 80
                  Position.BandIndex = 0
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxAllocation_bandsINWARHNUMBER: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'INWARHNUMBER'
                  Options.Editing = False
                  Width = 80
                  Position.BandIndex = 0
                  Position.ColIndex = 1
                  Position.RowIndex = 0
                end
                object cxAllocation_bandsINWARHNAME: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'INWARHNAME'
                  Options.Editing = False
                  Width = 80
                  Position.BandIndex = 0
                  Position.ColIndex = 2
                  Position.RowIndex = 0
                end
                object cxAllocation_bandsMATERNUMBER: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'MATERNUMBER'
                  Options.Editing = False
                  Width = 87
                  Position.BandIndex = 0
                  Position.ColIndex = 3
                  Position.RowIndex = 0
                end
                object cxAllocation_bandsMATERNAME: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'MATERNAME'
                  Options.Editing = False
                  Width = 94
                  Position.BandIndex = 0
                  Position.ColIndex = 4
                  Position.RowIndex = 0
                end
                object cxAllocation_bandsCOLORNUMBER: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'COLORNUMBER'
                  Options.Editing = False
                  Width = 80
                  Position.BandIndex = 0
                  Position.ColIndex = 5
                  Position.RowIndex = 0
                end
                object cxAllocation_bandsCOLORNAME: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'COLORNAME'
                  Options.Editing = False
                  Width = 76
                  Position.BandIndex = 0
                  Position.ColIndex = 6
                  Position.RowIndex = 0
                end
                object cxAllocation_bandsCUPNAME: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'CUPNAME'
                  Options.Editing = False
                  Width = 39
                  Position.BandIndex = 0
                  Position.ColIndex = 7
                  Position.RowIndex = 0
                end
                object cxAllocation_bandsFMATERIALID: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'FMATERIALID'
                  Visible = False
                  Options.Editing = False
                  Width = 80
                  Position.BandIndex = 0
                  Position.ColIndex = 8
                  Position.RowIndex = 0
                end
                object cxAllocation_bandsCFCOLORID: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'CFCOLORID'
                  Visible = False
                  Options.Editing = False
                  Width = 80
                  Position.BandIndex = 0
                  Position.ColIndex = 9
                  Position.RowIndex = 0
                end
                object cxAllocation_bandsCFCUPID: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'CFCUPID'
                  Visible = False
                  Options.Editing = False
                  Width = 80
                  Position.BandIndex = 0
                  Position.ColIndex = 10
                  Position.RowIndex = 0
                end
                object cxAllocation_bandsFQty_1: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'FQty_1'
                  Visible = False
                  Options.Editing = False
                  Width = 40
                  Position.BandIndex = 1
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxAllocation_bandsFQty_2: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'FQty_2'
                  Visible = False
                  Options.Editing = False
                  Width = 40
                  Position.BandIndex = 1
                  Position.ColIndex = 1
                  Position.RowIndex = 0
                end
                object cxAllocation_bandsFQty_3: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'FQty_3'
                  Visible = False
                  Options.Editing = False
                  Width = 40
                  Position.BandIndex = 1
                  Position.ColIndex = 2
                  Position.RowIndex = 0
                end
                object cxAllocation_bandsFQty_4: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'FQty_4'
                  Visible = False
                  Options.Editing = False
                  Width = 40
                  Position.BandIndex = 1
                  Position.ColIndex = 3
                  Position.RowIndex = 0
                end
                object cxAllocation_bandsFQty_5: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'FQty_5'
                  Visible = False
                  Options.Editing = False
                  Width = 40
                  Position.BandIndex = 1
                  Position.ColIndex = 4
                  Position.RowIndex = 0
                end
                object cxAllocation_bandsFQty_6: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'FQty_6'
                  Visible = False
                  Options.Editing = False
                  Width = 40
                  Position.BandIndex = 1
                  Position.ColIndex = 5
                  Position.RowIndex = 0
                end
                object cxAllocation_bandsFQty_7: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'FQty_7'
                  Visible = False
                  Options.Editing = False
                  Width = 40
                  Position.BandIndex = 1
                  Position.ColIndex = 6
                  Position.RowIndex = 0
                end
                object cxAllocation_bandsFQty_8: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'FQty_8'
                  Visible = False
                  Options.Editing = False
                  Width = 40
                  Position.BandIndex = 1
                  Position.ColIndex = 7
                  Position.RowIndex = 0
                end
                object cxAllocation_bandsFQty_9: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'FQty_9'
                  Visible = False
                  Options.Editing = False
                  Width = 40
                  Position.BandIndex = 1
                  Position.ColIndex = 8
                  Position.RowIndex = 0
                end
                object cxAllocation_bandsFQty_10: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'FQty_10'
                  Visible = False
                  Options.Editing = False
                  Width = 40
                  Position.BandIndex = 1
                  Position.ColIndex = 9
                  Position.RowIndex = 0
                end
                object cxAllocation_bandsFQty_11: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'FQty_11'
                  Visible = False
                  Options.Editing = False
                  Width = 40
                  Position.BandIndex = 1
                  Position.ColIndex = 10
                  Position.RowIndex = 0
                end
                object cxAllocation_bandsFQty_12: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'FQty_12'
                  Visible = False
                  Options.Editing = False
                  Width = 40
                  Position.BandIndex = 1
                  Position.ColIndex = 11
                  Position.RowIndex = 0
                end
                object cxAllocation_bandsFQty_13: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'FQty_13'
                  Visible = False
                  Options.Editing = False
                  Width = 40
                  Position.BandIndex = 1
                  Position.ColIndex = 12
                  Position.RowIndex = 0
                end
                object cxAllocation_bandsFQty_14: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'FQty_14'
                  Visible = False
                  Options.Editing = False
                  Width = 40
                  Position.BandIndex = 1
                  Position.ColIndex = 13
                  Position.RowIndex = 0
                end
                object cxAllocation_bandsFQty_15: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'FQty_15'
                  Visible = False
                  Options.Editing = False
                  Width = 40
                  Position.BandIndex = 1
                  Position.ColIndex = 14
                  Position.RowIndex = 0
                end
                object cxAllocation_bandsFQty_16: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'FQty_16'
                  Visible = False
                  Options.Editing = False
                  Width = 40
                  Position.BandIndex = 1
                  Position.ColIndex = 15
                  Position.RowIndex = 0
                end
                object cxAllocation_bandsFQty_17: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'FQty_17'
                  Visible = False
                  Options.Editing = False
                  Width = 40
                  Position.BandIndex = 1
                  Position.ColIndex = 16
                  Position.RowIndex = 0
                end
                object cxAllocation_bandsFQty_18: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'FQty_18'
                  Visible = False
                  Options.Editing = False
                  Width = 40
                  Position.BandIndex = 1
                  Position.ColIndex = 17
                  Position.RowIndex = 0
                end
                object cxAllocation_bandsFQty_19: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'FQty_19'
                  Visible = False
                  Options.Editing = False
                  Width = 40
                  Position.BandIndex = 1
                  Position.ColIndex = 18
                  Position.RowIndex = 0
                end
                object cxAllocation_bandsFQty_20: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'FQty_20'
                  Visible = False
                  Options.Editing = False
                  Width = 40
                  Position.BandIndex = 1
                  Position.ColIndex = 19
                  Position.RowIndex = 0
                end
                object cxAllocation_bandsFQty_21: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'FQty_21'
                  Visible = False
                  Options.Editing = False
                  Width = 40
                  Position.BandIndex = 1
                  Position.ColIndex = 20
                  Position.RowIndex = 0
                end
                object cxAllocation_bandsFQty_22: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'FQty_22'
                  Visible = False
                  Options.Editing = False
                  Width = 40
                  Position.BandIndex = 1
                  Position.ColIndex = 21
                  Position.RowIndex = 0
                end
                object cxAllocation_bandsFQty_23: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'FQty_23'
                  Visible = False
                  Options.Editing = False
                  Width = 40
                  Position.BandIndex = 1
                  Position.ColIndex = 22
                  Position.RowIndex = 0
                end
                object cxAllocation_bandsFQty_24: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'FQty_24'
                  Visible = False
                  Options.Editing = False
                  Width = 40
                  Position.BandIndex = 1
                  Position.ColIndex = 23
                  Position.RowIndex = 0
                end
                object cxAllocation_bandsFQty_25: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'FQty_25'
                  Visible = False
                  Options.Editing = False
                  Width = 40
                  Position.BandIndex = 1
                  Position.ColIndex = 24
                  Position.RowIndex = 0
                end
                object cxAllocation_bandsFQty_26: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'FQty_26'
                  Visible = False
                  Options.Editing = False
                  Width = 40
                  Position.BandIndex = 1
                  Position.ColIndex = 25
                  Position.RowIndex = 0
                end
                object cxAllocation_bandsFQty_27: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'FQty_27'
                  Visible = False
                  Options.Editing = False
                  Width = 40
                  Position.BandIndex = 1
                  Position.ColIndex = 26
                  Position.RowIndex = 0
                end
                object cxAllocation_bandsFQty_28: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'FQty_28'
                  Visible = False
                  Options.Editing = False
                  Width = 40
                  Position.BandIndex = 1
                  Position.ColIndex = 27
                  Position.RowIndex = 0
                end
                object cxAllocation_bandsFQty_29: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'FQty_29'
                  Visible = False
                  Options.Editing = False
                  Width = 40
                  Position.BandIndex = 1
                  Position.ColIndex = 28
                  Position.RowIndex = 0
                end
                object cxAllocation_bandsFQty_30: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'FQty_30'
                  Visible = False
                  Options.Editing = False
                  Width = 40
                  Position.BandIndex = 1
                  Position.ColIndex = 29
                  Position.RowIndex = 0
                end
                object cxAllocation_bandsFTotalQty: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'FTotalQty'
                  Options.Editing = False
                  Width = 54
                  Position.BandIndex = 1
                  Position.ColIndex = 30
                  Position.RowIndex = 0
                end
                object cxAllocation_bandsFDpAmount: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'FDpAmount'
                  Options.Editing = False
                  Width = 79
                  Position.BandIndex = 1
                  Position.ColIndex = 31
                  Position.RowIndex = 0
                end
                object cxAllocation_bandsFNotQty_1: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'FNotQty_1'
                  Visible = False
                  Options.Editing = False
                  Width = 40
                  Position.BandIndex = 2
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxAllocation_bandsFNotQty_2: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'FNotQty_2'
                  Visible = False
                  Options.Editing = False
                  Width = 40
                  Position.BandIndex = 2
                  Position.ColIndex = 1
                  Position.RowIndex = 0
                end
                object cxAllocation_bandsFNotQty_3: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'FNotQty_3'
                  Visible = False
                  Options.Editing = False
                  Width = 40
                  Position.BandIndex = 2
                  Position.ColIndex = 2
                  Position.RowIndex = 0
                end
                object cxAllocation_bandsFNotQty_4: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'FNotQty_4'
                  Visible = False
                  Options.Editing = False
                  Width = 40
                  Position.BandIndex = 2
                  Position.ColIndex = 3
                  Position.RowIndex = 0
                end
                object cxAllocation_bandsFNotQty_5: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'FNotQty_5'
                  Visible = False
                  Options.Editing = False
                  Width = 40
                  Position.BandIndex = 2
                  Position.ColIndex = 4
                  Position.RowIndex = 0
                end
                object cxAllocation_bandsFNotQty_6: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'FNotQty_6'
                  Visible = False
                  Options.Editing = False
                  Width = 40
                  Position.BandIndex = 2
                  Position.ColIndex = 5
                  Position.RowIndex = 0
                end
                object cxAllocation_bandsFNotQty_7: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'FNotQty_7'
                  Visible = False
                  Options.Editing = False
                  Width = 40
                  Position.BandIndex = 2
                  Position.ColIndex = 6
                  Position.RowIndex = 0
                end
                object cxAllocation_bandsFNotQty_8: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'FNotQty_8'
                  Visible = False
                  Options.Editing = False
                  Width = 40
                  Position.BandIndex = 2
                  Position.ColIndex = 7
                  Position.RowIndex = 0
                end
                object cxAllocation_bandsFNotQty_9: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'FNotQty_9'
                  Visible = False
                  Options.Editing = False
                  Width = 40
                  Position.BandIndex = 2
                  Position.ColIndex = 8
                  Position.RowIndex = 0
                end
                object cxAllocation_bandsFNotQty_10: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'FNotQty_10'
                  Visible = False
                  Options.Editing = False
                  Width = 40
                  Position.BandIndex = 2
                  Position.ColIndex = 9
                  Position.RowIndex = 0
                end
                object cxAllocation_bandsFNotQty_11: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'FNotQty_11'
                  Visible = False
                  Options.Editing = False
                  Width = 40
                  Position.BandIndex = 2
                  Position.ColIndex = 10
                  Position.RowIndex = 0
                end
                object cxAllocation_bandsFNotQty_12: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'FNotQty_12'
                  Visible = False
                  Options.Editing = False
                  Width = 40
                  Position.BandIndex = 2
                  Position.ColIndex = 11
                  Position.RowIndex = 0
                end
                object cxAllocation_bandsFNotQty_13: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'FNotQty_13'
                  Visible = False
                  Options.Editing = False
                  Width = 40
                  Position.BandIndex = 2
                  Position.ColIndex = 12
                  Position.RowIndex = 0
                end
                object cxAllocation_bandsFNotQty_14: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'FNotQty_14'
                  Visible = False
                  Options.Editing = False
                  Width = 40
                  Position.BandIndex = 2
                  Position.ColIndex = 13
                  Position.RowIndex = 0
                end
                object cxAllocation_bandsFNotQty_15: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'FNotQty_15'
                  Visible = False
                  Options.Editing = False
                  Width = 40
                  Position.BandIndex = 2
                  Position.ColIndex = 14
                  Position.RowIndex = 0
                end
                object cxAllocation_bandsFNotQty_16: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'FNotQty_16'
                  Visible = False
                  Options.Editing = False
                  Width = 40
                  Position.BandIndex = 2
                  Position.ColIndex = 15
                  Position.RowIndex = 0
                end
                object cxAllocation_bandsFNotQty_17: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'FNotQty_17'
                  Visible = False
                  Options.Editing = False
                  Width = 40
                  Position.BandIndex = 2
                  Position.ColIndex = 16
                  Position.RowIndex = 0
                end
                object cxAllocation_bandsFNotQty_18: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'FNotQty_18'
                  Visible = False
                  Options.Editing = False
                  Width = 40
                  Position.BandIndex = 2
                  Position.ColIndex = 17
                  Position.RowIndex = 0
                end
                object cxAllocation_bandsFNotQty_19: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'FNotQty_19'
                  Visible = False
                  Options.Editing = False
                  Width = 40
                  Position.BandIndex = 2
                  Position.ColIndex = 18
                  Position.RowIndex = 0
                end
                object cxAllocation_bandsFNotQty_20: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'FNotQty_20'
                  Visible = False
                  Options.Editing = False
                  Width = 40
                  Position.BandIndex = 2
                  Position.ColIndex = 19
                  Position.RowIndex = 0
                end
                object cxAllocation_bandsFNotQty_21: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'FNotQty_21'
                  Visible = False
                  Options.Editing = False
                  Width = 40
                  Position.BandIndex = 2
                  Position.ColIndex = 20
                  Position.RowIndex = 0
                end
                object cxAllocation_bandsFNotQty_22: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'FNotQty_22'
                  Visible = False
                  Options.Editing = False
                  Width = 40
                  Position.BandIndex = 2
                  Position.ColIndex = 21
                  Position.RowIndex = 0
                end
                object cxAllocation_bandsFNotQty_23: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'FNotQty_23'
                  Visible = False
                  Options.Editing = False
                  Width = 40
                  Position.BandIndex = 2
                  Position.ColIndex = 22
                  Position.RowIndex = 0
                end
                object cxAllocation_bandsFNotQty_24: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'FNotQty_24'
                  Visible = False
                  Options.Editing = False
                  Width = 40
                  Position.BandIndex = 2
                  Position.ColIndex = 23
                  Position.RowIndex = 0
                end
                object cxAllocation_bandsFNotQty_25: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'FNotQty_25'
                  Visible = False
                  Options.Editing = False
                  Width = 40
                  Position.BandIndex = 2
                  Position.ColIndex = 24
                  Position.RowIndex = 0
                end
                object cxAllocation_bandsFNotQty_26: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'FNotQty_26'
                  Visible = False
                  Options.Editing = False
                  Width = 40
                  Position.BandIndex = 2
                  Position.ColIndex = 25
                  Position.RowIndex = 0
                end
                object cxAllocation_bandsFNotQty_27: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'FNotQty_27'
                  Visible = False
                  Options.Editing = False
                  Width = 40
                  Position.BandIndex = 2
                  Position.ColIndex = 26
                  Position.RowIndex = 0
                end
                object cxAllocation_bandsFNotQty_28: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'FNotQty_28'
                  Visible = False
                  Options.Editing = False
                  Width = 40
                  Position.BandIndex = 2
                  Position.ColIndex = 27
                  Position.RowIndex = 0
                end
                object cxAllocation_bandsFNotQty_29: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'FNotQty_29'
                  Visible = False
                  Options.Editing = False
                  Width = 40
                  Position.BandIndex = 2
                  Position.ColIndex = 28
                  Position.RowIndex = 0
                end
                object cxAllocation_bandsFNotQty_30: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'FNotQty_30'
                  Visible = False
                  Options.Editing = False
                  Width = 40
                  Position.BandIndex = 2
                  Position.ColIndex = 29
                  Position.RowIndex = 0
                end
                object cxAllocation_bandsFNotTotalQty: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'FNotTotalQty'
                  Options.Editing = False
                  Width = 57
                  Position.BandIndex = 2
                  Position.ColIndex = 30
                  Position.RowIndex = 0
                end
                object cxAllocation_bandsFDpNotAmount: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'FDpNotAmount'
                  Options.Editing = False
                  Width = 60
                  Position.BandIndex = 2
                  Position.ColIndex = 31
                  Position.RowIndex = 0
                end
                object cxAllocation_bandsCFDPPRICE: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'CFDPPRICE'
                  Options.Editing = False
                  Width = 51
                  Position.BandIndex = 0
                  Position.ColIndex = 11
                  Position.RowIndex = 0
                end
                object cxAllocation_bandsBRANDNAME: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'BRANDNAME'
                  Options.Editing = False
                  Width = 47
                  Position.BandIndex = 3
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object cxAllocation_bandsYEARSNAME: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'YEARSNAME'
                  Options.Editing = False
                  Width = 51
                  Position.BandIndex = 3
                  Position.ColIndex = 1
                  Position.RowIndex = 0
                end
                object cxAllocation_bandsATTBNAME: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'ATTBNAME'
                  Options.Editing = False
                  Width = 48
                  Position.BandIndex = 3
                  Position.ColIndex = 2
                  Position.RowIndex = 0
                end
              end
              object cxGrid7Level1: TcxGridLevel
                GridView = cxAllocation_bands
              end
            end
          end
          object Panel9: TPanel
            Left = 760
            Top = 0
            Width = 183
            Height = 277
            Align = alRight
            BevelOuter = bvNone
            Color = 16511980
            TabOrder = 1
            object Panel10: TPanel
              Left = 0
              Top = 160
              Width = 183
              Height = 117
              Align = alClient
              BevelOuter = bvLowered
              Color = 16511980
              TabOrder = 0
              object Label1: TLabel
                Left = 1
                Top = 1
                Width = 174
                Height = 108
                Align = alClient
                Caption = 
                  #25805#20316#35828#26126':'#13#10#13#10'1'#12289#21452#20987#24038#36793#25968#25454#24320#22987#35843#20986#25805#20316#12290#13#10#13#10'2'#12289#22312#19979#26041#32593#26684#36755#20837#35843#20837#25968#37327#12290#13#10#13#10'3'#12289#21333#20987'"'#28155#21152#21040#35843#37197#28165#21333'"'#12290#13#10#13#10 +
                  '4'#12289#21333#20987#8220#19979#19968#27493#8221#29983#25104#37197#36135#21333#12290
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -12
                Font.Name = #23435#20307
                Font.Style = []
                ParentFont = False
                Transparent = True
                WordWrap = True
              end
            end
            object pl_Image: TPanel
              Left = 0
              Top = 0
              Width = 183
              Height = 160
              Align = alTop
              BevelOuter = bvLowered
              Caption = #26080#22270#29255
              Color = 16511980
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clScrollBar
              Font.Height = -12
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              object img_MainMaterial: TImage
                Left = 1
                Top = 1
                Width = 181
                Height = 158
                Hint = #21452#20987#26597#30475#21407#22270
                Align = alClient
                ParentShowHint = False
                ShowHint = True
                Stretch = True
                OnDblClick = img_MainMaterialDblClick
              end
            end
          end
        end
        object Panel6: TPanel
          Left = 0
          Top = 280
          Width = 943
          Height = 212
          Align = alBottom
          Color = 16511980
          TabOrder = 1
          object cxGrid3: TcxGrid
            Left = 1
            Top = 23
            Width = 941
            Height = 188
            Align = alClient
            TabOrder = 0
            LookAndFeel.Kind = lfOffice11
            LookAndFeel.SkinName = 'Office2007Black'
            object cxGridDBTableView2: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              DataController.DataSource = dsAllocation
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsData.Deleting = False
              OptionsData.DeletingConfirmation = False
              OptionsData.Inserting = False
              OptionsView.DataRowHeight = 22
              OptionsView.Footer = True
              OptionsView.GroupByBox = False
              OptionsView.HeaderHeight = 22
              OptionsView.Indicator = True
              object cxGridDBColumn1: TcxGridDBColumn
                DataBinding.FieldName = 'selected'
                PropertiesClassName = 'TcxCheckBoxProperties'
                Properties.NullStyle = nssUnchecked
                Width = 44
              end
              object cxGridDBColumn2: TcxGridDBColumn
                DataBinding.FieldName = 'BILLFID'
                Visible = False
                Options.Editing = False
                Width = 80
              end
              object cxGridDBColumn3: TcxGridDBColumn
                DataBinding.FieldName = 'FNUMBER'
                Options.Editing = False
                Width = 80
              end
              object cxGridDBColumn4: TcxGridDBColumn
                DataBinding.FieldName = 'CUSTFID'
                Visible = False
                Options.Editing = False
                Width = 80
              end
              object cxGridDBColumn5: TcxGridDBColumn
                DataBinding.FieldName = 'CUSTNUMBER'
                Visible = False
                Options.Editing = False
                Width = 80
              end
              object cxGridDBColumn6: TcxGridDBColumn
                DataBinding.FieldName = 'CUSTNAME'
                Visible = False
                Options.Editing = False
                Width = 80
              end
              object cxGridDBColumn7: TcxGridDBColumn
                DataBinding.FieldName = 'OUTWARHFID'
                Visible = False
                Options.Editing = False
                Width = 80
              end
              object cxGridDBColumn8: TcxGridDBColumn
                DataBinding.FieldName = 'OUTWARHNUMBER'
                Visible = False
                Options.Editing = False
                Width = 80
              end
              object cxGridDBColumn9: TcxGridDBColumn
                DataBinding.FieldName = 'OUTWARHNAME'
                Visible = False
                Options.Editing = False
                Width = 80
              end
              object cxGridDBColumn10: TcxGridDBColumn
                DataBinding.FieldName = 'INWARHFID'
                Visible = False
                Options.Editing = False
                Width = 80
              end
              object cxGridDBColumn11: TcxGridDBColumn
                DataBinding.FieldName = 'INWARHNUMBER'
                Visible = False
                Options.Editing = False
                Width = 80
              end
              object cxGridDBColumn12: TcxGridDBColumn
                DataBinding.FieldName = 'INWARHNAME'
                Visible = False
                Options.Editing = False
                Width = 80
              end
              object cxGridDBColumn13: TcxGridDBColumn
                DataBinding.FieldName = 'MATERNUMBER'
                Options.Editing = False
                Width = 80
              end
              object cxGridDBColumn14: TcxGridDBColumn
                DataBinding.FieldName = 'MATERNAME'
                Options.Editing = False
                Width = 80
              end
              object cxGridDBColumn15: TcxGridDBColumn
                DataBinding.FieldName = 'COLORNUMBER'
                Options.Editing = False
                Width = 80
              end
              object cxGridDBColumn16: TcxGridDBColumn
                DataBinding.FieldName = 'COLORNAME'
                Options.Editing = False
                Width = 80
              end
              object cxGridDBColumn17: TcxGridDBColumn
                DataBinding.FieldName = 'CUPNAME'
                Options.Editing = False
                Width = 44
              end
              object cxGridDBColumn18: TcxGridDBColumn
                DataBinding.FieldName = 'PACKNAME'
                Options.Editing = False
                Width = 46
              end
              object cxGridDBColumn19: TcxGridDBColumn
                DataBinding.FieldName = 'FMATERIALID'
                Visible = False
                Options.Editing = False
                Width = 80
              end
              object cxGridDBColumn20: TcxGridDBColumn
                DataBinding.FieldName = 'CFCOLORID'
                Visible = False
                Options.Editing = False
                Width = 80
              end
              object cxGridDBColumn21: TcxGridDBColumn
                DataBinding.FieldName = 'CFPACKID'
                Visible = False
                Options.Editing = False
                Width = 80
              end
              object cxGridDBColumn22: TcxGridDBColumn
                DataBinding.FieldName = 'CFCUPID'
                Visible = False
                Options.Editing = False
                Width = 80
              end
              object cxGridDBColumn23: TcxGridDBColumn
                DataBinding.FieldName = 'CFPACKNUM'
                Width = 63
              end
              object cxGridDBColumn24: TcxGridDBColumn
                DataBinding.FieldName = 'FQty_1'
                Visible = False
                Width = 40
              end
              object cxGridDBColumn25: TcxGridDBColumn
                DataBinding.FieldName = 'FQty_2'
                Visible = False
                Width = 40
              end
              object cxGridDBColumn26: TcxGridDBColumn
                DataBinding.FieldName = 'FQty_3'
                Visible = False
                Width = 40
              end
              object cxGridDBColumn27: TcxGridDBColumn
                DataBinding.FieldName = 'FQty_4'
                Visible = False
                Width = 40
              end
              object cxGridDBColumn28: TcxGridDBColumn
                DataBinding.FieldName = 'FQty_5'
                Visible = False
                Width = 40
              end
              object cxGridDBColumn29: TcxGridDBColumn
                DataBinding.FieldName = 'FQty_6'
                Visible = False
                Width = 40
              end
              object cxGridDBColumn30: TcxGridDBColumn
                DataBinding.FieldName = 'FQty_7'
                Visible = False
                Width = 40
              end
              object cxGridDBColumn31: TcxGridDBColumn
                DataBinding.FieldName = 'FQty_8'
                Visible = False
                Width = 40
              end
              object cxGridDBColumn32: TcxGridDBColumn
                DataBinding.FieldName = 'FQty_9'
                Visible = False
                Width = 40
              end
              object cxGridDBColumn33: TcxGridDBColumn
                DataBinding.FieldName = 'FQty_10'
                Visible = False
                Width = 40
              end
              object cxGridDBColumn34: TcxGridDBColumn
                DataBinding.FieldName = 'FQty_11'
                Visible = False
                Width = 40
              end
              object cxGridDBColumn35: TcxGridDBColumn
                DataBinding.FieldName = 'FQty_12'
                Visible = False
                Width = 40
              end
              object cxGridDBColumn36: TcxGridDBColumn
                DataBinding.FieldName = 'FQty_13'
                Visible = False
                Width = 40
              end
              object cxGridDBColumn37: TcxGridDBColumn
                DataBinding.FieldName = 'FQty_14'
                Visible = False
                Width = 40
              end
              object cxGridDBColumn38: TcxGridDBColumn
                DataBinding.FieldName = 'FQty_15'
                Visible = False
                Width = 40
              end
              object cxGridDBColumn39: TcxGridDBColumn
                DataBinding.FieldName = 'FQty_16'
                Visible = False
                Width = 40
              end
              object cxGridDBColumn40: TcxGridDBColumn
                DataBinding.FieldName = 'FQty_17'
                Visible = False
                Width = 40
              end
              object cxGridDBColumn41: TcxGridDBColumn
                DataBinding.FieldName = 'FQty_18'
                Visible = False
                Width = 40
              end
              object cxGridDBColumn42: TcxGridDBColumn
                DataBinding.FieldName = 'FQty_19'
                Visible = False
                Width = 40
              end
              object cxGridDBColumn43: TcxGridDBColumn
                DataBinding.FieldName = 'FQty_20'
                Visible = False
                Width = 40
              end
              object cxGridDBColumn44: TcxGridDBColumn
                DataBinding.FieldName = 'FQty_21'
                Visible = False
                Width = 40
              end
              object cxGridDBColumn45: TcxGridDBColumn
                DataBinding.FieldName = 'FQty_22'
                Visible = False
                Width = 40
              end
              object cxGridDBColumn46: TcxGridDBColumn
                DataBinding.FieldName = 'FQty_23'
                Visible = False
                Width = 40
              end
              object cxGridDBColumn47: TcxGridDBColumn
                DataBinding.FieldName = 'FQty_24'
                Visible = False
                Width = 40
              end
              object cxGridDBColumn48: TcxGridDBColumn
                DataBinding.FieldName = 'FQty_25'
                Visible = False
                Width = 40
              end
              object cxGridDBColumn49: TcxGridDBColumn
                DataBinding.FieldName = 'FQty_26'
                Visible = False
                Width = 40
              end
              object cxGridDBColumn50: TcxGridDBColumn
                DataBinding.FieldName = 'FQty_27'
                Visible = False
                Width = 40
              end
              object cxGridDBColumn51: TcxGridDBColumn
                DataBinding.FieldName = 'FQty_28'
                Visible = False
                Width = 40
              end
              object cxGridDBColumn52: TcxGridDBColumn
                DataBinding.FieldName = 'FQty_29'
                Visible = False
                Width = 40
              end
              object cxGridDBColumn53: TcxGridDBColumn
                DataBinding.FieldName = 'FQty_30'
                Visible = False
                Width = 40
              end
              object cxGridDBColumn54: TcxGridDBColumn
                DataBinding.FieldName = 'FTotalQty'
                Options.Editing = False
                Width = 66
              end
              object cxGridDBColumn55: TcxGridDBColumn
                DataBinding.FieldName = 'CFNotPACKNUM'
                Options.Editing = False
                Width = 62
              end
              object cxGridDBColumn56: TcxGridDBColumn
                DataBinding.FieldName = 'FNotQty_1'
                Visible = False
                Options.Editing = False
                Width = 40
              end
              object cxGridDBColumn57: TcxGridDBColumn
                DataBinding.FieldName = 'FNotQty_2'
                Visible = False
                Options.Editing = False
                Width = 40
              end
              object cxGridDBColumn58: TcxGridDBColumn
                DataBinding.FieldName = 'FNotQty_3'
                Visible = False
                Options.Editing = False
                Width = 40
              end
              object cxGridDBColumn59: TcxGridDBColumn
                DataBinding.FieldName = 'FNotQty_4'
                Visible = False
                Options.Editing = False
                Width = 40
              end
              object cxGridDBColumn60: TcxGridDBColumn
                DataBinding.FieldName = 'FNotQty_5'
                Visible = False
                Options.Editing = False
                Width = 40
              end
              object cxGridDBColumn61: TcxGridDBColumn
                DataBinding.FieldName = 'FNotQty_6'
                Visible = False
                Options.Editing = False
                Width = 40
              end
              object cxGridDBColumn62: TcxGridDBColumn
                DataBinding.FieldName = 'FNotQty_7'
                Visible = False
                Options.Editing = False
                Width = 40
              end
              object cxGridDBColumn63: TcxGridDBColumn
                DataBinding.FieldName = 'FNotQty_8'
                Visible = False
                Options.Editing = False
                Width = 40
              end
              object cxGridDBColumn64: TcxGridDBColumn
                DataBinding.FieldName = 'FNotQty_9'
                Visible = False
                Options.Editing = False
                Width = 40
              end
              object cxGridDBColumn65: TcxGridDBColumn
                DataBinding.FieldName = 'FNotQty_10'
                Visible = False
                Options.Editing = False
                Width = 40
              end
              object cxGridDBColumn66: TcxGridDBColumn
                DataBinding.FieldName = 'FNotQty_11'
                Visible = False
                Options.Editing = False
                Width = 40
              end
              object cxGridDBColumn67: TcxGridDBColumn
                DataBinding.FieldName = 'FNotQty_12'
                Visible = False
                Options.Editing = False
                Width = 40
              end
              object cxGridDBColumn68: TcxGridDBColumn
                DataBinding.FieldName = 'FNotQty_13'
                Visible = False
                Options.Editing = False
                Width = 40
              end
              object cxGridDBColumn69: TcxGridDBColumn
                DataBinding.FieldName = 'FNotQty_14'
                Visible = False
                Options.Editing = False
                Width = 40
              end
              object cxGridDBColumn70: TcxGridDBColumn
                DataBinding.FieldName = 'FNotQty_15'
                Visible = False
                Options.Editing = False
                Width = 40
              end
              object cxGridDBColumn71: TcxGridDBColumn
                DataBinding.FieldName = 'FNotQty_16'
                Visible = False
                Options.Editing = False
                Width = 40
              end
              object cxGridDBColumn72: TcxGridDBColumn
                DataBinding.FieldName = 'FNotQty_17'
                Visible = False
                Options.Editing = False
                Width = 40
              end
              object cxGridDBColumn73: TcxGridDBColumn
                DataBinding.FieldName = 'FNotQty_18'
                Visible = False
                Options.Editing = False
                Width = 40
              end
              object cxGridDBColumn74: TcxGridDBColumn
                DataBinding.FieldName = 'FNotQty_19'
                Visible = False
                Options.Editing = False
                Width = 40
              end
              object cxGridDBColumn75: TcxGridDBColumn
                DataBinding.FieldName = 'FNotQty_20'
                Visible = False
                Options.Editing = False
                Width = 40
              end
              object cxGridDBColumn76: TcxGridDBColumn
                DataBinding.FieldName = 'FNotQty_21'
                Visible = False
                Options.Editing = False
                Width = 40
              end
              object cxGridDBColumn77: TcxGridDBColumn
                DataBinding.FieldName = 'FNotQty_22'
                Visible = False
                Options.Editing = False
                Width = 40
              end
              object cxGridDBColumn78: TcxGridDBColumn
                DataBinding.FieldName = 'FNotQty_23'
                Visible = False
                Options.Editing = False
                Width = 40
              end
              object cxGridDBColumn79: TcxGridDBColumn
                DataBinding.FieldName = 'FNotQty_24'
                Visible = False
                Options.Editing = False
                Width = 40
              end
              object cxGridDBColumn80: TcxGridDBColumn
                DataBinding.FieldName = 'FNotQty_25'
                Visible = False
                Options.Editing = False
                Width = 40
              end
              object cxGridDBColumn81: TcxGridDBColumn
                DataBinding.FieldName = 'FNotQty_26'
                Visible = False
                Options.Editing = False
                Width = 40
              end
              object cxGridDBColumn82: TcxGridDBColumn
                DataBinding.FieldName = 'FNotQty_27'
                Visible = False
                Options.Editing = False
                Width = 40
              end
              object cxGridDBColumn83: TcxGridDBColumn
                DataBinding.FieldName = 'FNotQty_28'
                Visible = False
                Options.Editing = False
                Width = 40
              end
              object cxGridDBColumn84: TcxGridDBColumn
                DataBinding.FieldName = 'FNotQty_29'
                Visible = False
                Options.Editing = False
                Width = 40
              end
              object cxGridDBColumn85: TcxGridDBColumn
                DataBinding.FieldName = 'FNotQty_30'
                Visible = False
                Options.Editing = False
                Width = 40
              end
              object cxGridDBColumn86: TcxGridDBColumn
                DataBinding.FieldName = 'FNotTotalQty'
                Options.Editing = False
                Width = 62
              end
              object cxGridDBColumn87: TcxGridDBColumn
                DataBinding.FieldName = 'CFDPPRICE'
                Options.Editing = False
                Width = 59
              end
              object cxGridDBColumn88: TcxGridDBColumn
                DataBinding.FieldName = 'FPRICE'
                Options.Editing = False
                Width = 44
              end
              object cxGridDBColumn89: TcxGridDBColumn
                DataBinding.FieldName = 'FDISCOUNT'
                Options.Editing = False
                Width = 52
              end
              object cxGridDBColumn90: TcxGridDBColumn
                DataBinding.FieldName = 'FACTUALPRICE'
                Options.Editing = False
                Width = 58
              end
              object cxGridDBColumn91: TcxGridDBColumn
                DataBinding.FieldName = 'FAmount'
                Options.Editing = False
                Width = 80
              end
              object cxGridDBColumn92: TcxGridDBColumn
                DataBinding.FieldName = 'FDpAmount'
                Options.Editing = False
                Width = 80
              end
              object cxGridDBColumn93: TcxGridDBColumn
                DataBinding.FieldName = 'FNotAmount'
                Options.Editing = False
                Width = 80
              end
              object cxGridDBColumn94: TcxGridDBColumn
                DataBinding.FieldName = 'FDpNotAmount'
                Options.Editing = False
                Width = 80
              end
              object cxGridDBColumn95: TcxGridDBColumn
                DataBinding.FieldName = 'BRANDNAME'
                Options.Editing = False
                Width = 80
              end
              object cxGridDBColumn96: TcxGridDBColumn
                DataBinding.FieldName = 'YEARSNAME'
                Options.Editing = False
                Width = 80
              end
              object cxGridDBColumn97: TcxGridDBColumn
                DataBinding.FieldName = 'ATTBNAME'
                Options.Editing = False
                Width = 80
              end
            end
            object cxDownData: TcxGridDBBandedTableView
              NavigatorButtons.ConfirmDelete = False
              DataController.DataSource = dsDownData
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsView.DataRowHeight = 22
              OptionsView.Footer = True
              OptionsView.GroupByBox = False
              OptionsView.HeaderHeight = 22
              OptionsView.Indicator = True
              Bands = <
                item
                  Caption = #22522#26412#20449#24687
                  Width = 583
                end
                item
                  Caption = #35843#20837#25968#37327
                end
                item
                  Caption = #24211#23384#25968#37327
                end
                item
                  Caption = #38144#21806#25968#37327
                end
                item
                  Caption = #20854#23427#20449#24687
                end>
              object cxDownDataINWARHFID: TcxGridDBBandedColumn
                DataBinding.FieldName = 'INWARHFID'
                Visible = False
                Options.Editing = False
                Width = 40
                Position.BandIndex = 0
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object cxDownDataINWARHNUMBER: TcxGridDBBandedColumn
                DataBinding.FieldName = 'INWARHNUMBER'
                Options.Editing = False
                Width = 72
                Position.BandIndex = 0
                Position.ColIndex = 1
                Position.RowIndex = 0
              end
              object cxDownDataINWARHNAME: TcxGridDBBandedColumn
                DataBinding.FieldName = 'INWARHNAME'
                Options.Editing = False
                Width = 77
                Position.BandIndex = 0
                Position.ColIndex = 2
                Position.RowIndex = 0
              end
              object cxDownDataMATERNUMBER: TcxGridDBBandedColumn
                DataBinding.FieldName = 'MATERNUMBER'
                Options.Editing = False
                Width = 86
                Position.BandIndex = 0
                Position.ColIndex = 3
                Position.RowIndex = 0
              end
              object cxDownDataMATERNAME: TcxGridDBBandedColumn
                DataBinding.FieldName = 'MATERNAME'
                Options.Editing = False
                Width = 92
                Position.BandIndex = 0
                Position.ColIndex = 4
                Position.RowIndex = 0
              end
              object cxDownDataCOLORNUMBER: TcxGridDBBandedColumn
                DataBinding.FieldName = 'COLORNUMBER'
                Options.Editing = False
                Width = 62
                Position.BandIndex = 0
                Position.ColIndex = 5
                Position.RowIndex = 0
              end
              object cxDownDataCOLORNAME: TcxGridDBBandedColumn
                DataBinding.FieldName = 'COLORNAME'
                Options.Editing = False
                Width = 92
                Position.BandIndex = 0
                Position.ColIndex = 6
                Position.RowIndex = 0
              end
              object cxDownDataCUPNAME: TcxGridDBBandedColumn
                DataBinding.FieldName = 'CUPNAME'
                Options.Editing = False
                Width = 50
                Position.BandIndex = 0
                Position.ColIndex = 7
                Position.RowIndex = 0
              end
              object cxDownDataFMATERIALID: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FMATERIALID'
                Visible = False
                Options.Editing = False
                Width = 40
                Position.BandIndex = 0
                Position.ColIndex = 8
                Position.RowIndex = 0
              end
              object cxDownDataCFCOLORID: TcxGridDBBandedColumn
                DataBinding.FieldName = 'CFCOLORID'
                Visible = False
                Options.Editing = False
                Width = 40
                Position.BandIndex = 0
                Position.ColIndex = 9
                Position.RowIndex = 0
              end
              object cxDownDataCFCUPID: TcxGridDBBandedColumn
                DataBinding.FieldName = 'CFCUPID'
                Visible = False
                Options.Editing = False
                Width = 40
                Position.BandIndex = 0
                Position.ColIndex = 10
                Position.RowIndex = 0
              end
              object cxDownDataCFDPPRICE: TcxGridDBBandedColumn
                DataBinding.FieldName = 'CFDPPRICE'
                Options.Editing = False
                Width = 64
                Position.BandIndex = 0
                Position.ColIndex = 11
                Position.RowIndex = 0
              end
              object cxDownDataFQty_1: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FQty_1'
                Visible = False
                Options.Editing = False
                Width = 40
                Position.BandIndex = 2
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object cxDownDataFQty_2: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FQty_2'
                Visible = False
                Options.Editing = False
                Width = 40
                Position.BandIndex = 2
                Position.ColIndex = 1
                Position.RowIndex = 0
              end
              object cxDownDataFQty_3: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FQty_3'
                Visible = False
                Options.Editing = False
                Width = 40
                Position.BandIndex = 2
                Position.ColIndex = 2
                Position.RowIndex = 0
              end
              object cxDownDataFQty_4: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FQty_4'
                Visible = False
                Options.Editing = False
                Width = 40
                Position.BandIndex = 2
                Position.ColIndex = 3
                Position.RowIndex = 0
              end
              object cxDownDataFQty_5: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FQty_5'
                Visible = False
                Options.Editing = False
                Width = 40
                Position.BandIndex = 2
                Position.ColIndex = 4
                Position.RowIndex = 0
              end
              object cxDownDataFQty_6: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FQty_6'
                Visible = False
                Options.Editing = False
                Width = 40
                Position.BandIndex = 2
                Position.ColIndex = 5
                Position.RowIndex = 0
              end
              object cxDownDataFQty_7: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FQty_7'
                Visible = False
                Options.Editing = False
                Width = 40
                Position.BandIndex = 2
                Position.ColIndex = 6
                Position.RowIndex = 0
              end
              object cxDownDataFQty_8: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FQty_8'
                Visible = False
                Options.Editing = False
                Width = 40
                Position.BandIndex = 2
                Position.ColIndex = 7
                Position.RowIndex = 0
              end
              object cxDownDataFQty_9: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FQty_9'
                Visible = False
                Options.Editing = False
                Width = 40
                Position.BandIndex = 2
                Position.ColIndex = 8
                Position.RowIndex = 0
              end
              object cxDownDataFQty_10: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FQty_10'
                Visible = False
                Options.Editing = False
                Width = 40
                Position.BandIndex = 2
                Position.ColIndex = 9
                Position.RowIndex = 0
              end
              object cxDownDataFQty_11: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FQty_11'
                Visible = False
                Options.Editing = False
                Width = 40
                Position.BandIndex = 2
                Position.ColIndex = 10
                Position.RowIndex = 0
              end
              object cxDownDataFQty_12: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FQty_12'
                Visible = False
                Options.Editing = False
                Width = 40
                Position.BandIndex = 2
                Position.ColIndex = 11
                Position.RowIndex = 0
              end
              object cxDownDataFQty_13: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FQty_13'
                Visible = False
                Options.Editing = False
                Width = 40
                Position.BandIndex = 2
                Position.ColIndex = 12
                Position.RowIndex = 0
              end
              object cxDownDataFQty_14: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FQty_14'
                Visible = False
                Options.Editing = False
                Width = 40
                Position.BandIndex = 2
                Position.ColIndex = 13
                Position.RowIndex = 0
              end
              object cxDownDataFQty_15: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FQty_15'
                Visible = False
                Options.Editing = False
                Width = 40
                Position.BandIndex = 2
                Position.ColIndex = 14
                Position.RowIndex = 0
              end
              object cxDownDataFQty_16: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FQty_16'
                Visible = False
                Options.Editing = False
                Width = 40
                Position.BandIndex = 2
                Position.ColIndex = 15
                Position.RowIndex = 0
              end
              object cxDownDataFQty_17: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FQty_17'
                Visible = False
                Options.Editing = False
                Width = 40
                Position.BandIndex = 2
                Position.ColIndex = 16
                Position.RowIndex = 0
              end
              object cxDownDataFQty_18: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FQty_18'
                Visible = False
                Options.Editing = False
                Width = 40
                Position.BandIndex = 2
                Position.ColIndex = 17
                Position.RowIndex = 0
              end
              object cxDownDataFQty_19: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FQty_19'
                Visible = False
                Options.Editing = False
                Width = 40
                Position.BandIndex = 2
                Position.ColIndex = 18
                Position.RowIndex = 0
              end
              object cxDownDataFQty_20: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FQty_20'
                Visible = False
                Options.Editing = False
                Width = 40
                Position.BandIndex = 2
                Position.ColIndex = 19
                Position.RowIndex = 0
              end
              object cxDownDataFQty_21: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FQty_21'
                Visible = False
                Options.Editing = False
                Width = 40
                Position.BandIndex = 2
                Position.ColIndex = 20
                Position.RowIndex = 0
              end
              object cxDownDataFQty_22: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FQty_22'
                Visible = False
                Options.Editing = False
                Width = 40
                Position.BandIndex = 2
                Position.ColIndex = 21
                Position.RowIndex = 0
              end
              object cxDownDataFQty_23: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FQty_23'
                Visible = False
                Options.Editing = False
                Width = 40
                Position.BandIndex = 2
                Position.ColIndex = 22
                Position.RowIndex = 0
              end
              object cxDownDataFQty_24: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FQty_24'
                Visible = False
                Options.Editing = False
                Width = 40
                Position.BandIndex = 2
                Position.ColIndex = 23
                Position.RowIndex = 0
              end
              object cxDownDataFQty_25: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FQty_25'
                Visible = False
                Options.Editing = False
                Width = 40
                Position.BandIndex = 2
                Position.ColIndex = 24
                Position.RowIndex = 0
              end
              object cxDownDataFQty_26: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FQty_26'
                Visible = False
                Options.Editing = False
                Width = 40
                Position.BandIndex = 2
                Position.ColIndex = 25
                Position.RowIndex = 0
              end
              object cxDownDataFQty_27: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FQty_27'
                Visible = False
                Options.Editing = False
                Width = 40
                Position.BandIndex = 2
                Position.ColIndex = 26
                Position.RowIndex = 0
              end
              object cxDownDataFQty_28: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FQty_28'
                Visible = False
                Options.Editing = False
                Width = 40
                Position.BandIndex = 2
                Position.ColIndex = 27
                Position.RowIndex = 0
              end
              object cxDownDataFQty_29: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FQty_29'
                Visible = False
                Options.Editing = False
                Width = 40
                Position.BandIndex = 2
                Position.ColIndex = 28
                Position.RowIndex = 0
              end
              object cxDownDataFQty_30: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FQty_30'
                Visible = False
                Options.Editing = False
                Width = 40
                Position.BandIndex = 2
                Position.ColIndex = 29
                Position.RowIndex = 0
              end
              object cxDownDataFTotalQty: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FTotalQty'
                Options.Editing = False
                Width = 63
                Position.BandIndex = 2
                Position.ColIndex = 30
                Position.RowIndex = 0
              end
              object cxDownDataFDpAmount: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FDpAmount'
                Options.Editing = False
                Width = 87
                Position.BandIndex = 2
                Position.ColIndex = 31
                Position.RowIndex = 0
              end
              object cxDownDataFNotQty_1: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FNotQty_1'
                Visible = False
                Options.Editing = False
                Width = 40
                Position.BandIndex = 3
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object cxDownDataFNotQty_2: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FNotQty_2'
                Visible = False
                Options.Editing = False
                Width = 40
                Position.BandIndex = 3
                Position.ColIndex = 1
                Position.RowIndex = 0
              end
              object cxDownDataFNotQty_3: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FNotQty_3'
                Visible = False
                Options.Editing = False
                Width = 40
                Position.BandIndex = 3
                Position.ColIndex = 2
                Position.RowIndex = 0
              end
              object cxDownDataFNotQty_4: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FNotQty_4'
                Visible = False
                Options.Editing = False
                Width = 40
                Position.BandIndex = 3
                Position.ColIndex = 3
                Position.RowIndex = 0
              end
              object cxDownDataFNotQty_5: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FNotQty_5'
                Visible = False
                Options.Editing = False
                Width = 40
                Position.BandIndex = 3
                Position.ColIndex = 4
                Position.RowIndex = 0
              end
              object cxDownDataFNotQty_6: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FNotQty_6'
                Visible = False
                Options.Editing = False
                Width = 40
                Position.BandIndex = 3
                Position.ColIndex = 5
                Position.RowIndex = 0
              end
              object cxDownDataFNotQty_7: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FNotQty_7'
                Visible = False
                Options.Editing = False
                Width = 40
                Position.BandIndex = 3
                Position.ColIndex = 6
                Position.RowIndex = 0
              end
              object cxDownDataFNotQty_8: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FNotQty_8'
                Visible = False
                Options.Editing = False
                Width = 40
                Position.BandIndex = 3
                Position.ColIndex = 7
                Position.RowIndex = 0
              end
              object cxDownDataFNotQty_9: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FNotQty_9'
                Visible = False
                Options.Editing = False
                Width = 40
                Position.BandIndex = 3
                Position.ColIndex = 8
                Position.RowIndex = 0
              end
              object cxDownDataFNotQty_10: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FNotQty_10'
                Visible = False
                Options.Editing = False
                Width = 40
                Position.BandIndex = 3
                Position.ColIndex = 9
                Position.RowIndex = 0
              end
              object cxDownDataFNotQty_11: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FNotQty_11'
                Visible = False
                Options.Editing = False
                Width = 40
                Position.BandIndex = 3
                Position.ColIndex = 10
                Position.RowIndex = 0
              end
              object cxDownDataFNotQty_12: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FNotQty_12'
                Visible = False
                Options.Editing = False
                Width = 40
                Position.BandIndex = 3
                Position.ColIndex = 11
                Position.RowIndex = 0
              end
              object cxDownDataFNotQty_13: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FNotQty_13'
                Visible = False
                Options.Editing = False
                Width = 40
                Position.BandIndex = 3
                Position.ColIndex = 12
                Position.RowIndex = 0
              end
              object cxDownDataFNotQty_14: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FNotQty_14'
                Visible = False
                Options.Editing = False
                Width = 40
                Position.BandIndex = 3
                Position.ColIndex = 13
                Position.RowIndex = 0
              end
              object cxDownDataFNotQty_15: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FNotQty_15'
                Visible = False
                Options.Editing = False
                Width = 40
                Position.BandIndex = 3
                Position.ColIndex = 14
                Position.RowIndex = 0
              end
              object cxDownDataFNotQty_16: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FNotQty_16'
                Visible = False
                Options.Editing = False
                Width = 40
                Position.BandIndex = 3
                Position.ColIndex = 15
                Position.RowIndex = 0
              end
              object cxDownDataFNotQty_17: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FNotQty_17'
                Visible = False
                Options.Editing = False
                Width = 40
                Position.BandIndex = 3
                Position.ColIndex = 16
                Position.RowIndex = 0
              end
              object cxDownDataFNotQty_18: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FNotQty_18'
                Visible = False
                Options.Editing = False
                Width = 40
                Position.BandIndex = 3
                Position.ColIndex = 17
                Position.RowIndex = 0
              end
              object cxDownDataFNotQty_19: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FNotQty_19'
                Visible = False
                Options.Editing = False
                Width = 40
                Position.BandIndex = 3
                Position.ColIndex = 18
                Position.RowIndex = 0
              end
              object cxDownDataFNotQty_20: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FNotQty_20'
                Visible = False
                Options.Editing = False
                Width = 40
                Position.BandIndex = 3
                Position.ColIndex = 19
                Position.RowIndex = 0
              end
              object cxDownDataFNotQty_21: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FNotQty_21'
                Visible = False
                Options.Editing = False
                Width = 40
                Position.BandIndex = 3
                Position.ColIndex = 20
                Position.RowIndex = 0
              end
              object cxDownDataFNotQty_22: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FNotQty_22'
                Visible = False
                Options.Editing = False
                Width = 40
                Position.BandIndex = 3
                Position.ColIndex = 21
                Position.RowIndex = 0
              end
              object cxDownDataFNotQty_23: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FNotQty_23'
                Visible = False
                Options.Editing = False
                Width = 40
                Position.BandIndex = 3
                Position.ColIndex = 22
                Position.RowIndex = 0
              end
              object cxDownDataFNotQty_24: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FNotQty_24'
                Visible = False
                Options.Editing = False
                Width = 40
                Position.BandIndex = 3
                Position.ColIndex = 23
                Position.RowIndex = 0
              end
              object cxDownDataFNotQty_25: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FNotQty_25'
                Visible = False
                Options.Editing = False
                Width = 40
                Position.BandIndex = 3
                Position.ColIndex = 24
                Position.RowIndex = 0
              end
              object cxDownDataFNotQty_26: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FNotQty_26'
                Visible = False
                Options.Editing = False
                Width = 40
                Position.BandIndex = 3
                Position.ColIndex = 25
                Position.RowIndex = 0
              end
              object cxDownDataFNotQty_27: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FNotQty_27'
                Visible = False
                Options.Editing = False
                Width = 40
                Position.BandIndex = 3
                Position.ColIndex = 26
                Position.RowIndex = 0
              end
              object cxDownDataFNotQty_28: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FNotQty_28'
                Visible = False
                Options.Editing = False
                Width = 40
                Position.BandIndex = 3
                Position.ColIndex = 27
                Position.RowIndex = 0
              end
              object cxDownDataFNotQty_29: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FNotQty_29'
                Visible = False
                Options.Editing = False
                Width = 40
                Position.BandIndex = 3
                Position.ColIndex = 28
                Position.RowIndex = 0
              end
              object cxDownDataFNotQty_30: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FNotQty_30'
                Visible = False
                Options.Editing = False
                Width = 40
                Position.BandIndex = 3
                Position.ColIndex = 29
                Position.RowIndex = 0
              end
              object cxDownDataFNotTotalQty: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FNotTotalQty'
                Options.Editing = False
                Width = 58
                Position.BandIndex = 3
                Position.ColIndex = 30
                Position.RowIndex = 0
              end
              object cxDownDataFDpNotAmount: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FDpNotAmount'
                Options.Editing = False
                Width = 86
                Position.BandIndex = 3
                Position.ColIndex = 31
                Position.RowIndex = 0
              end
              object cxDownDataFSaleQty_1: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FSaleQty_1'
                Visible = False
                Width = 40
                Position.BandIndex = 1
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object cxDownDataFSaleQty_2: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FSaleQty_2'
                Visible = False
                Width = 40
                Position.BandIndex = 1
                Position.ColIndex = 1
                Position.RowIndex = 0
              end
              object cxDownDataFSaleQty_3: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FSaleQty_3'
                Visible = False
                Width = 40
                Position.BandIndex = 1
                Position.ColIndex = 2
                Position.RowIndex = 0
              end
              object cxDownDataFSaleQty_4: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FSaleQty_4'
                Visible = False
                Width = 40
                Position.BandIndex = 1
                Position.ColIndex = 3
                Position.RowIndex = 0
              end
              object cxDownDataFSaleQty_5: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FSaleQty_5'
                Visible = False
                Width = 40
                Position.BandIndex = 1
                Position.ColIndex = 4
                Position.RowIndex = 0
              end
              object cxDownDataFSaleQty_6: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FSaleQty_6'
                Visible = False
                Width = 40
                Position.BandIndex = 1
                Position.ColIndex = 5
                Position.RowIndex = 0
              end
              object cxDownDataFSaleQty_7: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FSaleQty_7'
                Visible = False
                Width = 40
                Position.BandIndex = 1
                Position.ColIndex = 6
                Position.RowIndex = 0
              end
              object cxDownDataFSaleQty_8: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FSaleQty_8'
                Visible = False
                Width = 40
                Position.BandIndex = 1
                Position.ColIndex = 7
                Position.RowIndex = 0
              end
              object cxDownDataFSaleQty_9: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FSaleQty_9'
                Visible = False
                Width = 40
                Position.BandIndex = 1
                Position.ColIndex = 8
                Position.RowIndex = 0
              end
              object cxDownDataFSaleQty_10: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FSaleQty_10'
                Visible = False
                Width = 40
                Position.BandIndex = 1
                Position.ColIndex = 9
                Position.RowIndex = 0
              end
              object cxDownDataFSaleQty_11: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FSaleQty_11'
                Visible = False
                Width = 40
                Position.BandIndex = 1
                Position.ColIndex = 10
                Position.RowIndex = 0
              end
              object cxDownDataFSaleQty_12: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FSaleQty_12'
                Visible = False
                Width = 40
                Position.BandIndex = 1
                Position.ColIndex = 11
                Position.RowIndex = 0
              end
              object cxDownDataFSaleQty_13: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FSaleQty_13'
                Visible = False
                Width = 40
                Position.BandIndex = 1
                Position.ColIndex = 12
                Position.RowIndex = 0
              end
              object cxDownDataFSaleQty_14: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FSaleQty_14'
                Visible = False
                Width = 40
                Position.BandIndex = 1
                Position.ColIndex = 13
                Position.RowIndex = 0
              end
              object cxDownDataFSaleQty_15: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FSaleQty_15'
                Visible = False
                Width = 40
                Position.BandIndex = 1
                Position.ColIndex = 14
                Position.RowIndex = 0
              end
              object cxDownDataFSaleQty_16: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FSaleQty_16'
                Visible = False
                Width = 40
                Position.BandIndex = 1
                Position.ColIndex = 15
                Position.RowIndex = 0
              end
              object cxDownDataFSaleQty_17: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FSaleQty_17'
                Visible = False
                Width = 40
                Position.BandIndex = 1
                Position.ColIndex = 16
                Position.RowIndex = 0
              end
              object cxDownDataFSaleQty_18: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FSaleQty_18'
                Visible = False
                Width = 40
                Position.BandIndex = 1
                Position.ColIndex = 17
                Position.RowIndex = 0
              end
              object cxDownDataFSaleQty_19: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FSaleQty_19'
                Visible = False
                Width = 40
                Position.BandIndex = 1
                Position.ColIndex = 18
                Position.RowIndex = 0
              end
              object cxDownDataFSaleQty_20: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FSaleQty_20'
                Visible = False
                Width = 40
                Position.BandIndex = 1
                Position.ColIndex = 19
                Position.RowIndex = 0
              end
              object cxDownDataFSaleQty_21: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FSaleQty_21'
                Visible = False
                Width = 40
                Position.BandIndex = 1
                Position.ColIndex = 20
                Position.RowIndex = 0
              end
              object cxDownDataFSaleQty_22: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FSaleQty_22'
                Visible = False
                Width = 40
                Position.BandIndex = 1
                Position.ColIndex = 21
                Position.RowIndex = 0
              end
              object cxDownDataFSaleQty_23: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FSaleQty_23'
                Visible = False
                Width = 40
                Position.BandIndex = 1
                Position.ColIndex = 22
                Position.RowIndex = 0
              end
              object cxDownDataFSaleQty_24: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FSaleQty_24'
                Visible = False
                Width = 40
                Position.BandIndex = 1
                Position.ColIndex = 23
                Position.RowIndex = 0
              end
              object cxDownDataFSaleQty_25: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FSaleQty_25'
                Visible = False
                Width = 40
                Position.BandIndex = 1
                Position.ColIndex = 24
                Position.RowIndex = 0
              end
              object cxDownDataFSaleQty_26: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FSaleQty_26'
                Visible = False
                Width = 40
                Position.BandIndex = 1
                Position.ColIndex = 25
                Position.RowIndex = 0
              end
              object cxDownDataFSaleQty_27: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FSaleQty_27'
                Visible = False
                Width = 40
                Position.BandIndex = 1
                Position.ColIndex = 26
                Position.RowIndex = 0
              end
              object cxDownDataFSaleQty_28: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FSaleQty_28'
                Visible = False
                Width = 40
                Position.BandIndex = 1
                Position.ColIndex = 27
                Position.RowIndex = 0
              end
              object cxDownDataFSaleQty_29: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FSaleQty_29'
                Visible = False
                Width = 40
                Position.BandIndex = 1
                Position.ColIndex = 28
                Position.RowIndex = 0
              end
              object cxDownDataFSaleQty_30: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FSaleQty_30'
                Visible = False
                Width = 40
                Position.BandIndex = 1
                Position.ColIndex = 29
                Position.RowIndex = 0
              end
              object cxDownDataFSaleTotalQty: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FSaleTotalQty'
                Options.Editing = False
                Width = 61
                Position.BandIndex = 1
                Position.ColIndex = 30
                Position.RowIndex = 0
              end
              object cxDownDataFSaleDpAmount: TcxGridDBBandedColumn
                DataBinding.FieldName = 'FSaleDpAmount'
                Options.Editing = False
                Width = 77
                Position.BandIndex = 1
                Position.ColIndex = 31
                Position.RowIndex = 0
              end
              object cxDownDatacfsizegroupid: TcxGridDBBandedColumn
                DataBinding.FieldName = 'cfsizegroupid'
                Visible = False
                Options.Editing = False
                Width = 40
                Position.BandIndex = 4
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object cxDownDataBRANDNAME: TcxGridDBBandedColumn
                DataBinding.FieldName = 'BRANDNAME'
                Options.Editing = False
                Width = 68
                Position.BandIndex = 4
                Position.ColIndex = 1
                Position.RowIndex = 0
              end
              object cxDownDataYEARSNAME: TcxGridDBBandedColumn
                DataBinding.FieldName = 'YEARSNAME'
                Options.Editing = False
                Width = 61
                Position.BandIndex = 4
                Position.ColIndex = 2
                Position.RowIndex = 0
              end
              object cxDownDataATTBNAME: TcxGridDBBandedColumn
                DataBinding.FieldName = 'ATTBNAME'
                Options.Editing = False
                Width = 60
                Position.BandIndex = 4
                Position.ColIndex = 3
                Position.RowIndex = 0
              end
            end
            object cxGridLevel2: TcxGridLevel
              GridView = cxDownData
            end
          end
          object Panel11: TPanel
            Left = 1
            Top = 1
            Width = 941
            Height = 22
            Align = alTop
            BevelOuter = bvLowered
            Color = 16511980
            TabOrder = 1
            DesignSize = (
              941
              22)
            object lb_OutInfo: TLabel
              Left = 4
              Top = 5
              Width = 934
              Height = 15
              Anchors = [akLeft, akTop, akRight]
              AutoSize = False
              Caption = #35843#20986#20179#24211':ST00'#12304#24635#37096#20179#24211#12305'     '#29289#26009':F000893'#12304#24320#34923#21355#34915#12305'     '#39068#33394':R001'#12304#32418#33394#12305'   '#39068#33394':F'#12304'F'#12305' '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Height = -13
              Font.Name = #23435#20307
              Font.Style = []
              ParentFont = False
            end
          end
        end
      end
      object cxTabSheet3: TcxTabSheet
        Caption = '3-'#35843#37197#28165#21333
        ImageIndex = 3
        object Panel7: TPanel
          Left = 0
          Top = 0
          Width = 943
          Height = 27
          Align = alTop
          Color = 16511980
          TabOrder = 0
          object lb_Customer: TLabel
            Left = 9
            Top = 8
            Width = 54
            Height = 12
            AutoSize = False
            Caption = #29289#26009#36807#28388
          end
          object txt_ItemFilter: TcxTextEdit
            Left = 63
            Top = 4
            Properties.OnChange = txt_ItemFilterPropertiesChange
            TabOrder = 0
            Width = 184
          end
        end
        object cxGrid4: TcxGrid
          Left = 0
          Top = 27
          Width = 943
          Height = 424
          Align = alClient
          TabOrder = 1
          LookAndFeel.Kind = lfOffice11
          LookAndFeel.SkinName = 'Office2007Black'
          object cxGridDBTableView3: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = dsAllocation
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Inserting = False
            OptionsView.DataRowHeight = 22
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.HeaderHeight = 22
            OptionsView.Indicator = True
            object cxGridDBColumn98: TcxGridDBColumn
              DataBinding.FieldName = 'selected'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.NullStyle = nssUnchecked
              Width = 44
            end
            object cxGridDBColumn99: TcxGridDBColumn
              DataBinding.FieldName = 'BILLFID'
              Visible = False
              Options.Editing = False
              Width = 80
            end
            object cxGridDBColumn100: TcxGridDBColumn
              DataBinding.FieldName = 'FNUMBER'
              Options.Editing = False
              Width = 80
            end
            object cxGridDBColumn101: TcxGridDBColumn
              DataBinding.FieldName = 'CUSTFID'
              Visible = False
              Options.Editing = False
              Width = 80
            end
            object cxGridDBColumn102: TcxGridDBColumn
              DataBinding.FieldName = 'CUSTNUMBER'
              Visible = False
              Options.Editing = False
              Width = 80
            end
            object cxGridDBColumn103: TcxGridDBColumn
              DataBinding.FieldName = 'CUSTNAME'
              Visible = False
              Options.Editing = False
              Width = 80
            end
            object cxGridDBColumn104: TcxGridDBColumn
              DataBinding.FieldName = 'OUTWARHFID'
              Visible = False
              Options.Editing = False
              Width = 80
            end
            object cxGridDBColumn105: TcxGridDBColumn
              DataBinding.FieldName = 'OUTWARHNUMBER'
              Visible = False
              Options.Editing = False
              Width = 80
            end
            object cxGridDBColumn106: TcxGridDBColumn
              DataBinding.FieldName = 'OUTWARHNAME'
              Visible = False
              Options.Editing = False
              Width = 80
            end
            object cxGridDBColumn107: TcxGridDBColumn
              DataBinding.FieldName = 'INWARHFID'
              Visible = False
              Options.Editing = False
              Width = 80
            end
            object cxGridDBColumn108: TcxGridDBColumn
              DataBinding.FieldName = 'INWARHNUMBER'
              Visible = False
              Options.Editing = False
              Width = 80
            end
            object cxGridDBColumn109: TcxGridDBColumn
              DataBinding.FieldName = 'INWARHNAME'
              Visible = False
              Options.Editing = False
              Width = 80
            end
            object cxGridDBColumn110: TcxGridDBColumn
              DataBinding.FieldName = 'MATERNUMBER'
              Options.Editing = False
              Width = 80
            end
            object cxGridDBColumn111: TcxGridDBColumn
              DataBinding.FieldName = 'MATERNAME'
              Options.Editing = False
              Width = 80
            end
            object cxGridDBColumn112: TcxGridDBColumn
              DataBinding.FieldName = 'COLORNUMBER'
              Options.Editing = False
              Width = 80
            end
            object cxGridDBColumn113: TcxGridDBColumn
              DataBinding.FieldName = 'COLORNAME'
              Options.Editing = False
              Width = 80
            end
            object cxGridDBColumn114: TcxGridDBColumn
              DataBinding.FieldName = 'CUPNAME'
              Options.Editing = False
              Width = 44
            end
            object cxGridDBColumn115: TcxGridDBColumn
              DataBinding.FieldName = 'PACKNAME'
              Options.Editing = False
              Width = 46
            end
            object cxGridDBColumn116: TcxGridDBColumn
              DataBinding.FieldName = 'FMATERIALID'
              Visible = False
              Options.Editing = False
              Width = 80
            end
            object cxGridDBColumn117: TcxGridDBColumn
              DataBinding.FieldName = 'CFCOLORID'
              Visible = False
              Options.Editing = False
              Width = 80
            end
            object cxGridDBColumn118: TcxGridDBColumn
              DataBinding.FieldName = 'CFPACKID'
              Visible = False
              Options.Editing = False
              Width = 80
            end
            object cxGridDBColumn119: TcxGridDBColumn
              DataBinding.FieldName = 'CFCUPID'
              Visible = False
              Options.Editing = False
              Width = 80
            end
            object cxGridDBColumn120: TcxGridDBColumn
              DataBinding.FieldName = 'CFPACKNUM'
              Width = 63
            end
            object cxGridDBColumn121: TcxGridDBColumn
              DataBinding.FieldName = 'FQty_1'
              Visible = False
              Width = 40
            end
            object cxGridDBColumn122: TcxGridDBColumn
              DataBinding.FieldName = 'FQty_2'
              Visible = False
              Width = 40
            end
            object cxGridDBColumn123: TcxGridDBColumn
              DataBinding.FieldName = 'FQty_3'
              Visible = False
              Width = 40
            end
            object cxGridDBColumn124: TcxGridDBColumn
              DataBinding.FieldName = 'FQty_4'
              Visible = False
              Width = 40
            end
            object cxGridDBColumn125: TcxGridDBColumn
              DataBinding.FieldName = 'FQty_5'
              Visible = False
              Width = 40
            end
            object cxGridDBColumn126: TcxGridDBColumn
              DataBinding.FieldName = 'FQty_6'
              Visible = False
              Width = 40
            end
            object cxGridDBColumn127: TcxGridDBColumn
              DataBinding.FieldName = 'FQty_7'
              Visible = False
              Width = 40
            end
            object cxGridDBColumn128: TcxGridDBColumn
              DataBinding.FieldName = 'FQty_8'
              Visible = False
              Width = 40
            end
            object cxGridDBColumn129: TcxGridDBColumn
              DataBinding.FieldName = 'FQty_9'
              Visible = False
              Width = 40
            end
            object cxGridDBColumn130: TcxGridDBColumn
              DataBinding.FieldName = 'FQty_10'
              Visible = False
              Width = 40
            end
            object cxGridDBColumn131: TcxGridDBColumn
              DataBinding.FieldName = 'FQty_11'
              Visible = False
              Width = 40
            end
            object cxGridDBColumn132: TcxGridDBColumn
              DataBinding.FieldName = 'FQty_12'
              Visible = False
              Width = 40
            end
            object cxGridDBColumn133: TcxGridDBColumn
              DataBinding.FieldName = 'FQty_13'
              Visible = False
              Width = 40
            end
            object cxGridDBColumn134: TcxGridDBColumn
              DataBinding.FieldName = 'FQty_14'
              Visible = False
              Width = 40
            end
            object cxGridDBColumn135: TcxGridDBColumn
              DataBinding.FieldName = 'FQty_15'
              Visible = False
              Width = 40
            end
            object cxGridDBColumn136: TcxGridDBColumn
              DataBinding.FieldName = 'FQty_16'
              Visible = False
              Width = 40
            end
            object cxGridDBColumn137: TcxGridDBColumn
              DataBinding.FieldName = 'FQty_17'
              Visible = False
              Width = 40
            end
            object cxGridDBColumn138: TcxGridDBColumn
              DataBinding.FieldName = 'FQty_18'
              Visible = False
              Width = 40
            end
            object cxGridDBColumn139: TcxGridDBColumn
              DataBinding.FieldName = 'FQty_19'
              Visible = False
              Width = 40
            end
            object cxGridDBColumn140: TcxGridDBColumn
              DataBinding.FieldName = 'FQty_20'
              Visible = False
              Width = 40
            end
            object cxGridDBColumn141: TcxGridDBColumn
              DataBinding.FieldName = 'FQty_21'
              Visible = False
              Width = 40
            end
            object cxGridDBColumn142: TcxGridDBColumn
              DataBinding.FieldName = 'FQty_22'
              Visible = False
              Width = 40
            end
            object cxGridDBColumn143: TcxGridDBColumn
              DataBinding.FieldName = 'FQty_23'
              Visible = False
              Width = 40
            end
            object cxGridDBColumn144: TcxGridDBColumn
              DataBinding.FieldName = 'FQty_24'
              Visible = False
              Width = 40
            end
            object cxGridDBColumn145: TcxGridDBColumn
              DataBinding.FieldName = 'FQty_25'
              Visible = False
              Width = 40
            end
            object cxGridDBColumn146: TcxGridDBColumn
              DataBinding.FieldName = 'FQty_26'
              Visible = False
              Width = 40
            end
            object cxGridDBColumn147: TcxGridDBColumn
              DataBinding.FieldName = 'FQty_27'
              Visible = False
              Width = 40
            end
            object cxGridDBColumn148: TcxGridDBColumn
              DataBinding.FieldName = 'FQty_28'
              Visible = False
              Width = 40
            end
            object cxGridDBColumn149: TcxGridDBColumn
              DataBinding.FieldName = 'FQty_29'
              Visible = False
              Width = 40
            end
            object cxGridDBColumn150: TcxGridDBColumn
              DataBinding.FieldName = 'FQty_30'
              Visible = False
              Width = 40
            end
            object cxGridDBColumn151: TcxGridDBColumn
              DataBinding.FieldName = 'FTotalQty'
              Options.Editing = False
              Width = 66
            end
            object cxGridDBColumn152: TcxGridDBColumn
              DataBinding.FieldName = 'CFNotPACKNUM'
              Options.Editing = False
              Width = 62
            end
            object cxGridDBColumn153: TcxGridDBColumn
              DataBinding.FieldName = 'FNotQty_1'
              Visible = False
              Options.Editing = False
              Width = 40
            end
            object cxGridDBColumn154: TcxGridDBColumn
              DataBinding.FieldName = 'FNotQty_2'
              Visible = False
              Options.Editing = False
              Width = 40
            end
            object cxGridDBColumn155: TcxGridDBColumn
              DataBinding.FieldName = 'FNotQty_3'
              Visible = False
              Options.Editing = False
              Width = 40
            end
            object cxGridDBColumn156: TcxGridDBColumn
              DataBinding.FieldName = 'FNotQty_4'
              Visible = False
              Options.Editing = False
              Width = 40
            end
            object cxGridDBColumn157: TcxGridDBColumn
              DataBinding.FieldName = 'FNotQty_5'
              Visible = False
              Options.Editing = False
              Width = 40
            end
            object cxGridDBColumn158: TcxGridDBColumn
              DataBinding.FieldName = 'FNotQty_6'
              Visible = False
              Options.Editing = False
              Width = 40
            end
            object cxGridDBColumn159: TcxGridDBColumn
              DataBinding.FieldName = 'FNotQty_7'
              Visible = False
              Options.Editing = False
              Width = 40
            end
            object cxGridDBColumn160: TcxGridDBColumn
              DataBinding.FieldName = 'FNotQty_8'
              Visible = False
              Options.Editing = False
              Width = 40
            end
            object cxGridDBColumn161: TcxGridDBColumn
              DataBinding.FieldName = 'FNotQty_9'
              Visible = False
              Options.Editing = False
              Width = 40
            end
            object cxGridDBColumn162: TcxGridDBColumn
              DataBinding.FieldName = 'FNotQty_10'
              Visible = False
              Options.Editing = False
              Width = 40
            end
            object cxGridDBColumn163: TcxGridDBColumn
              DataBinding.FieldName = 'FNotQty_11'
              Visible = False
              Options.Editing = False
              Width = 40
            end
            object cxGridDBColumn164: TcxGridDBColumn
              DataBinding.FieldName = 'FNotQty_12'
              Visible = False
              Options.Editing = False
              Width = 40
            end
            object cxGridDBColumn165: TcxGridDBColumn
              DataBinding.FieldName = 'FNotQty_13'
              Visible = False
              Options.Editing = False
              Width = 40
            end
            object cxGridDBColumn166: TcxGridDBColumn
              DataBinding.FieldName = 'FNotQty_14'
              Visible = False
              Options.Editing = False
              Width = 40
            end
            object cxGridDBColumn167: TcxGridDBColumn
              DataBinding.FieldName = 'FNotQty_15'
              Visible = False
              Options.Editing = False
              Width = 40
            end
            object cxGridDBColumn168: TcxGridDBColumn
              DataBinding.FieldName = 'FNotQty_16'
              Visible = False
              Options.Editing = False
              Width = 40
            end
            object cxGridDBColumn169: TcxGridDBColumn
              DataBinding.FieldName = 'FNotQty_17'
              Visible = False
              Options.Editing = False
              Width = 40
            end
            object cxGridDBColumn170: TcxGridDBColumn
              DataBinding.FieldName = 'FNotQty_18'
              Visible = False
              Options.Editing = False
              Width = 40
            end
            object cxGridDBColumn171: TcxGridDBColumn
              DataBinding.FieldName = 'FNotQty_19'
              Visible = False
              Options.Editing = False
              Width = 40
            end
            object cxGridDBColumn172: TcxGridDBColumn
              DataBinding.FieldName = 'FNotQty_20'
              Visible = False
              Options.Editing = False
              Width = 40
            end
            object cxGridDBColumn173: TcxGridDBColumn
              DataBinding.FieldName = 'FNotQty_21'
              Visible = False
              Options.Editing = False
              Width = 40
            end
            object cxGridDBColumn174: TcxGridDBColumn
              DataBinding.FieldName = 'FNotQty_22'
              Visible = False
              Options.Editing = False
              Width = 40
            end
            object cxGridDBColumn175: TcxGridDBColumn
              DataBinding.FieldName = 'FNotQty_23'
              Visible = False
              Options.Editing = False
              Width = 40
            end
            object cxGridDBColumn176: TcxGridDBColumn
              DataBinding.FieldName = 'FNotQty_24'
              Visible = False
              Options.Editing = False
              Width = 40
            end
            object cxGridDBColumn177: TcxGridDBColumn
              DataBinding.FieldName = 'FNotQty_25'
              Visible = False
              Options.Editing = False
              Width = 40
            end
            object cxGridDBColumn178: TcxGridDBColumn
              DataBinding.FieldName = 'FNotQty_26'
              Visible = False
              Options.Editing = False
              Width = 40
            end
            object cxGridDBColumn179: TcxGridDBColumn
              DataBinding.FieldName = 'FNotQty_27'
              Visible = False
              Options.Editing = False
              Width = 40
            end
            object cxGridDBColumn180: TcxGridDBColumn
              DataBinding.FieldName = 'FNotQty_28'
              Visible = False
              Options.Editing = False
              Width = 40
            end
            object cxGridDBColumn181: TcxGridDBColumn
              DataBinding.FieldName = 'FNotQty_29'
              Visible = False
              Options.Editing = False
              Width = 40
            end
            object cxGridDBColumn182: TcxGridDBColumn
              DataBinding.FieldName = 'FNotQty_30'
              Visible = False
              Options.Editing = False
              Width = 40
            end
            object cxGridDBColumn183: TcxGridDBColumn
              DataBinding.FieldName = 'FNotTotalQty'
              Options.Editing = False
              Width = 62
            end
            object cxGridDBColumn184: TcxGridDBColumn
              DataBinding.FieldName = 'CFDPPRICE'
              Options.Editing = False
              Width = 59
            end
            object cxGridDBColumn185: TcxGridDBColumn
              DataBinding.FieldName = 'FPRICE'
              Options.Editing = False
              Width = 44
            end
            object cxGridDBColumn186: TcxGridDBColumn
              DataBinding.FieldName = 'FDISCOUNT'
              Options.Editing = False
              Width = 52
            end
            object cxGridDBColumn187: TcxGridDBColumn
              DataBinding.FieldName = 'FACTUALPRICE'
              Options.Editing = False
              Width = 58
            end
            object cxGridDBColumn188: TcxGridDBColumn
              DataBinding.FieldName = 'FAmount'
              Options.Editing = False
              Width = 80
            end
            object cxGridDBColumn189: TcxGridDBColumn
              DataBinding.FieldName = 'FDpAmount'
              Options.Editing = False
              Width = 80
            end
            object cxGridDBColumn190: TcxGridDBColumn
              DataBinding.FieldName = 'FNotAmount'
              Options.Editing = False
              Width = 80
            end
            object cxGridDBColumn191: TcxGridDBColumn
              DataBinding.FieldName = 'FDpNotAmount'
              Options.Editing = False
              Width = 80
            end
            object cxGridDBColumn192: TcxGridDBColumn
              DataBinding.FieldName = 'BRANDNAME'
              Options.Editing = False
              Width = 80
            end
            object cxGridDBColumn193: TcxGridDBColumn
              DataBinding.FieldName = 'YEARSNAME'
              Options.Editing = False
              Width = 80
            end
            object cxGridDBColumn194: TcxGridDBColumn
              DataBinding.FieldName = 'ATTBNAME'
              Options.Editing = False
              Width = 80
            end
          end
          object cxAlloctionDatalist: TcxGridDBBandedTableView
            NavigatorButtons.ConfirmDelete = False
            OnFocusedRecordChanged = cxAlloctionDatalistFocusedRecordChanged
            DataController.DataSource = dsAllDataList
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsView.DataRowHeight = 22
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.HeaderHeight = 22
            OptionsView.Indicator = True
            Styles.Inactive = cxStyle1
            Bands = <
              item
                Caption = #22522#26412#20449#24687
                Width = 702
              end
              item
                Caption = #35843#20837#25968#37327
              end
              item
                Caption = #35843#20837#20179#24211#23384#25968#37327
              end
              item
                Caption = #35843#20837#20179#38144#21806#25968#37327
              end
              item
                Caption = #20854#23427#20449#24687
              end>
            object cxAlloctionDatalistoutWARHFID: TcxGridDBBandedColumn
              DataBinding.FieldName = 'outWARHFID'
              Visible = False
              Options.Editing = False
              Width = 40
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxAlloctionDatalistoutWARHNumber: TcxGridDBBandedColumn
              DataBinding.FieldName = 'outWARHNumber'
              Options.Editing = False
              Width = 77
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxAlloctionDatalistOutWARHName: TcxGridDBBandedColumn
              DataBinding.FieldName = 'OutWARHName'
              Options.Editing = False
              Width = 78
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxAlloctionDatalistunitFID: TcxGridDBBandedColumn
              DataBinding.FieldName = 'unitFID'
              Visible = False
              Options.Editing = False
              Width = 40
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxAlloctionDatalistINWARHFID: TcxGridDBBandedColumn
              DataBinding.FieldName = 'INWARHFID'
              Visible = False
              Options.Editing = False
              Width = 40
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cxAlloctionDatalistINWARHNUMBER: TcxGridDBBandedColumn
              DataBinding.FieldName = 'INWARHNUMBER'
              Options.Editing = False
              Width = 78
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object cxAlloctionDatalistINWARHNAME: TcxGridDBBandedColumn
              DataBinding.FieldName = 'INWARHNAME'
              Options.Editing = False
              Width = 95
              Position.BandIndex = 0
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object cxAlloctionDatalistMATERNUMBER: TcxGridDBBandedColumn
              DataBinding.FieldName = 'MATERNUMBER'
              Options.Editing = False
              Width = 66
              Position.BandIndex = 0
              Position.ColIndex = 7
              Position.RowIndex = 0
            end
            object cxAlloctionDatalistMATERNAME: TcxGridDBBandedColumn
              DataBinding.FieldName = 'MATERNAME'
              Options.Editing = False
              Width = 78
              Position.BandIndex = 0
              Position.ColIndex = 8
              Position.RowIndex = 0
            end
            object cxAlloctionDatalistCOLORNUMBER: TcxGridDBBandedColumn
              DataBinding.FieldName = 'COLORNUMBER'
              Options.Editing = False
              Width = 51
              Position.BandIndex = 0
              Position.ColIndex = 9
              Position.RowIndex = 0
            end
            object cxAlloctionDatalistCOLORNAME: TcxGridDBBandedColumn
              DataBinding.FieldName = 'COLORNAME'
              Options.Editing = False
              Width = 78
              Position.BandIndex = 0
              Position.ColIndex = 10
              Position.RowIndex = 0
            end
            object cxAlloctionDatalistCUPNAME: TcxGridDBBandedColumn
              DataBinding.FieldName = 'CUPNAME'
              Options.Editing = False
              Width = 55
              Position.BandIndex = 0
              Position.ColIndex = 11
              Position.RowIndex = 0
            end
            object cxAlloctionDatalistFMATERIALID: TcxGridDBBandedColumn
              DataBinding.FieldName = 'FMATERIALID'
              Visible = False
              Options.Editing = False
              Width = 40
              Position.BandIndex = 0
              Position.ColIndex = 12
              Position.RowIndex = 0
            end
            object cxAlloctionDatalistCFCOLORID: TcxGridDBBandedColumn
              DataBinding.FieldName = 'CFCOLORID'
              Visible = False
              Options.Editing = False
              Width = 40
              Position.BandIndex = 0
              Position.ColIndex = 13
              Position.RowIndex = 0
            end
            object cxAlloctionDatalistCFCUPID: TcxGridDBBandedColumn
              DataBinding.FieldName = 'CFCUPID'
              Visible = False
              Options.Editing = False
              Width = 40
              Position.BandIndex = 0
              Position.ColIndex = 14
              Position.RowIndex = 0
            end
            object cxAlloctionDatalistCFDPPRICE: TcxGridDBBandedColumn
              DataBinding.FieldName = 'CFDPPRICE'
              Options.Editing = False
              Width = 46
              Position.BandIndex = 0
              Position.ColIndex = 15
              Position.RowIndex = 0
            end
            object cxAlloctionDatalistFQty_1: TcxGridDBBandedColumn
              DataBinding.FieldName = 'FQty_1'
              Visible = False
              Options.Editing = False
              Width = 40
              Position.BandIndex = 2
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxAlloctionDatalistFQty_2: TcxGridDBBandedColumn
              DataBinding.FieldName = 'FQty_2'
              Visible = False
              Options.Editing = False
              Width = 40
              Position.BandIndex = 2
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxAlloctionDatalistFQty_3: TcxGridDBBandedColumn
              DataBinding.FieldName = 'FQty_3'
              Visible = False
              Options.Editing = False
              Width = 40
              Position.BandIndex = 2
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxAlloctionDatalistFQty_4: TcxGridDBBandedColumn
              DataBinding.FieldName = 'FQty_4'
              Visible = False
              Options.Editing = False
              Width = 40
              Position.BandIndex = 2
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxAlloctionDatalistFQty_5: TcxGridDBBandedColumn
              DataBinding.FieldName = 'FQty_5'
              Visible = False
              Options.Editing = False
              Width = 40
              Position.BandIndex = 2
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cxAlloctionDatalistFQty_6: TcxGridDBBandedColumn
              DataBinding.FieldName = 'FQty_6'
              Visible = False
              Options.Editing = False
              Width = 40
              Position.BandIndex = 2
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object cxAlloctionDatalistFQty_7: TcxGridDBBandedColumn
              DataBinding.FieldName = 'FQty_7'
              Visible = False
              Options.Editing = False
              Width = 40
              Position.BandIndex = 2
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object cxAlloctionDatalistFQty_8: TcxGridDBBandedColumn
              DataBinding.FieldName = 'FQty_8'
              Visible = False
              Options.Editing = False
              Width = 40
              Position.BandIndex = 2
              Position.ColIndex = 7
              Position.RowIndex = 0
            end
            object cxAlloctionDatalistFQty_9: TcxGridDBBandedColumn
              DataBinding.FieldName = 'FQty_9'
              Visible = False
              Options.Editing = False
              Width = 40
              Position.BandIndex = 2
              Position.ColIndex = 8
              Position.RowIndex = 0
            end
            object cxAlloctionDatalistFQty_10: TcxGridDBBandedColumn
              DataBinding.FieldName = 'FQty_10'
              Visible = False
              Options.Editing = False
              Width = 40
              Position.BandIndex = 2
              Position.ColIndex = 9
              Position.RowIndex = 0
            end
            object cxAlloctionDatalistFQty_11: TcxGridDBBandedColumn
              DataBinding.FieldName = 'FQty_11'
              Visible = False
              Options.Editing = False
              Width = 40
              Position.BandIndex = 2
              Position.ColIndex = 10
              Position.RowIndex = 0
            end
            object cxAlloctionDatalistFQty_12: TcxGridDBBandedColumn
              DataBinding.FieldName = 'FQty_12'
              Visible = False
              Options.Editing = False
              Width = 40
              Position.BandIndex = 2
              Position.ColIndex = 11
              Position.RowIndex = 0
            end
            object cxAlloctionDatalistFQty_13: TcxGridDBBandedColumn
              DataBinding.FieldName = 'FQty_13'
              Visible = False
              Options.Editing = False
              Width = 40
              Position.BandIndex = 2
              Position.ColIndex = 12
              Position.RowIndex = 0
            end
            object cxAlloctionDatalistFQty_14: TcxGridDBBandedColumn
              DataBinding.FieldName = 'FQty_14'
              Visible = False
              Options.Editing = False
              Width = 40
              Position.BandIndex = 2
              Position.ColIndex = 13
              Position.RowIndex = 0
            end
            object cxAlloctionDatalistFQty_15: TcxGridDBBandedColumn
              DataBinding.FieldName = 'FQty_15'
              Visible = False
              Options.Editing = False
              Width = 40
              Position.BandIndex = 2
              Position.ColIndex = 14
              Position.RowIndex = 0
            end
            object cxAlloctionDatalistFQty_16: TcxGridDBBandedColumn
              DataBinding.FieldName = 'FQty_16'
              Visible = False
              Options.Editing = False
              Width = 40
              Position.BandIndex = 2
              Position.ColIndex = 15
              Position.RowIndex = 0
            end
            object cxAlloctionDatalistFQty_17: TcxGridDBBandedColumn
              DataBinding.FieldName = 'FQty_17'
              Visible = False
              Options.Editing = False
              Width = 40
              Position.BandIndex = 2
              Position.ColIndex = 16
              Position.RowIndex = 0
            end
            object cxAlloctionDatalistFQty_18: TcxGridDBBandedColumn
              DataBinding.FieldName = 'FQty_18'
              Visible = False
              Options.Editing = False
              Width = 40
              Position.BandIndex = 2
              Position.ColIndex = 17
              Position.RowIndex = 0
            end
            object cxAlloctionDatalistFQty_19: TcxGridDBBandedColumn
              DataBinding.FieldName = 'FQty_19'
              Visible = False
              Options.Editing = False
              Width = 40
              Position.BandIndex = 2
              Position.ColIndex = 18
              Position.RowIndex = 0
            end
            object cxAlloctionDatalistFQty_20: TcxGridDBBandedColumn
              DataBinding.FieldName = 'FQty_20'
              Visible = False
              Options.Editing = False
              Width = 40
              Position.BandIndex = 2
              Position.ColIndex = 19
              Position.RowIndex = 0
            end
            object cxAlloctionDatalistFQty_21: TcxGridDBBandedColumn
              DataBinding.FieldName = 'FQty_21'
              Visible = False
              Options.Editing = False
              Width = 40
              Position.BandIndex = 2
              Position.ColIndex = 20
              Position.RowIndex = 0
            end
            object cxAlloctionDatalistFQty_22: TcxGridDBBandedColumn
              DataBinding.FieldName = 'FQty_22'
              Visible = False
              Options.Editing = False
              Width = 40
              Position.BandIndex = 2
              Position.ColIndex = 21
              Position.RowIndex = 0
            end
            object cxAlloctionDatalistFQty_23: TcxGridDBBandedColumn
              DataBinding.FieldName = 'FQty_23'
              Visible = False
              Options.Editing = False
              Width = 40
              Position.BandIndex = 2
              Position.ColIndex = 22
              Position.RowIndex = 0
            end
            object cxAlloctionDatalistFQty_24: TcxGridDBBandedColumn
              DataBinding.FieldName = 'FQty_24'
              Visible = False
              Options.Editing = False
              Width = 40
              Position.BandIndex = 2
              Position.ColIndex = 23
              Position.RowIndex = 0
            end
            object cxAlloctionDatalistFQty_25: TcxGridDBBandedColumn
              DataBinding.FieldName = 'FQty_25'
              Visible = False
              Options.Editing = False
              Width = 40
              Position.BandIndex = 2
              Position.ColIndex = 24
              Position.RowIndex = 0
            end
            object cxAlloctionDatalistFQty_26: TcxGridDBBandedColumn
              DataBinding.FieldName = 'FQty_26'
              Visible = False
              Options.Editing = False
              Width = 40
              Position.BandIndex = 2
              Position.ColIndex = 25
              Position.RowIndex = 0
            end
            object cxAlloctionDatalistFQty_27: TcxGridDBBandedColumn
              DataBinding.FieldName = 'FQty_27'
              Visible = False
              Options.Editing = False
              Width = 40
              Position.BandIndex = 2
              Position.ColIndex = 26
              Position.RowIndex = 0
            end
            object cxAlloctionDatalistFQty_28: TcxGridDBBandedColumn
              DataBinding.FieldName = 'FQty_28'
              Visible = False
              Options.Editing = False
              Width = 40
              Position.BandIndex = 2
              Position.ColIndex = 27
              Position.RowIndex = 0
            end
            object cxAlloctionDatalistFQty_29: TcxGridDBBandedColumn
              DataBinding.FieldName = 'FQty_29'
              Visible = False
              Options.Editing = False
              Width = 40
              Position.BandIndex = 2
              Position.ColIndex = 28
              Position.RowIndex = 0
            end
            object cxAlloctionDatalistFQty_30: TcxGridDBBandedColumn
              DataBinding.FieldName = 'FQty_30'
              Visible = False
              Options.Editing = False
              Width = 40
              Position.BandIndex = 2
              Position.ColIndex = 29
              Position.RowIndex = 0
            end
            object cxAlloctionDatalistFTotalQty: TcxGridDBBandedColumn
              DataBinding.FieldName = 'FTotalQty'
              Options.Editing = False
              Width = 63
              Position.BandIndex = 2
              Position.ColIndex = 30
              Position.RowIndex = 0
            end
            object cxAlloctionDatalistFDpAmount: TcxGridDBBandedColumn
              DataBinding.FieldName = 'FDpAmount'
              Options.Editing = False
              Width = 79
              Position.BandIndex = 2
              Position.ColIndex = 31
              Position.RowIndex = 0
            end
            object cxAlloctionDatalistFNotQty_1: TcxGridDBBandedColumn
              DataBinding.FieldName = 'FNotQty_1'
              Visible = False
              Options.Editing = False
              Width = 40
              Position.BandIndex = 3
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxAlloctionDatalistFNotQty_2: TcxGridDBBandedColumn
              DataBinding.FieldName = 'FNotQty_2'
              Visible = False
              Options.Editing = False
              Width = 40
              Position.BandIndex = 3
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxAlloctionDatalistFNotQty_3: TcxGridDBBandedColumn
              DataBinding.FieldName = 'FNotQty_3'
              Visible = False
              Options.Editing = False
              Width = 40
              Position.BandIndex = 3
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxAlloctionDatalistFNotQty_4: TcxGridDBBandedColumn
              DataBinding.FieldName = 'FNotQty_4'
              Visible = False
              Options.Editing = False
              Width = 40
              Position.BandIndex = 3
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxAlloctionDatalistFNotQty_5: TcxGridDBBandedColumn
              DataBinding.FieldName = 'FNotQty_5'
              Visible = False
              Options.Editing = False
              Width = 40
              Position.BandIndex = 3
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cxAlloctionDatalistFNotQty_6: TcxGridDBBandedColumn
              DataBinding.FieldName = 'FNotQty_6'
              Visible = False
              Options.Editing = False
              Width = 40
              Position.BandIndex = 3
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object cxAlloctionDatalistFNotQty_7: TcxGridDBBandedColumn
              DataBinding.FieldName = 'FNotQty_7'
              Visible = False
              Options.Editing = False
              Width = 40
              Position.BandIndex = 3
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object cxAlloctionDatalistFNotQty_8: TcxGridDBBandedColumn
              DataBinding.FieldName = 'FNotQty_8'
              Visible = False
              Options.Editing = False
              Width = 40
              Position.BandIndex = 3
              Position.ColIndex = 7
              Position.RowIndex = 0
            end
            object cxAlloctionDatalistFNotQty_9: TcxGridDBBandedColumn
              DataBinding.FieldName = 'FNotQty_9'
              Visible = False
              Options.Editing = False
              Width = 40
              Position.BandIndex = 3
              Position.ColIndex = 8
              Position.RowIndex = 0
            end
            object cxAlloctionDatalistFNotQty_10: TcxGridDBBandedColumn
              DataBinding.FieldName = 'FNotQty_10'
              Visible = False
              Options.Editing = False
              Width = 40
              Position.BandIndex = 3
              Position.ColIndex = 9
              Position.RowIndex = 0
            end
            object cxAlloctionDatalistFNotQty_11: TcxGridDBBandedColumn
              DataBinding.FieldName = 'FNotQty_11'
              Visible = False
              Options.Editing = False
              Width = 40
              Position.BandIndex = 3
              Position.ColIndex = 10
              Position.RowIndex = 0
            end
            object cxAlloctionDatalistFNotQty_12: TcxGridDBBandedColumn
              DataBinding.FieldName = 'FNotQty_12'
              Visible = False
              Options.Editing = False
              Width = 40
              Position.BandIndex = 3
              Position.ColIndex = 11
              Position.RowIndex = 0
            end
            object cxAlloctionDatalistFNotQty_13: TcxGridDBBandedColumn
              DataBinding.FieldName = 'FNotQty_13'
              Visible = False
              Options.Editing = False
              Width = 40
              Position.BandIndex = 3
              Position.ColIndex = 12
              Position.RowIndex = 0
            end
            object cxAlloctionDatalistFNotQty_14: TcxGridDBBandedColumn
              DataBinding.FieldName = 'FNotQty_14'
              Visible = False
              Options.Editing = False
              Width = 40
              Position.BandIndex = 3
              Position.ColIndex = 13
              Position.RowIndex = 0
            end
            object cxAlloctionDatalistFNotQty_15: TcxGridDBBandedColumn
              DataBinding.FieldName = 'FNotQty_15'
              Visible = False
              Options.Editing = False
              Width = 40
              Position.BandIndex = 3
              Position.ColIndex = 14
              Position.RowIndex = 0
            end
            object cxAlloctionDatalistFNotQty_16: TcxGridDBBandedColumn
              DataBinding.FieldName = 'FNotQty_16'
              Visible = False
              Options.Editing = False
              Width = 40
              Position.BandIndex = 3
              Position.ColIndex = 15
              Position.RowIndex = 0
            end
            object cxAlloctionDatalistFNotQty_17: TcxGridDBBandedColumn
              DataBinding.FieldName = 'FNotQty_17'
              Visible = False
              Options.Editing = False
              Width = 40
              Position.BandIndex = 3
              Position.ColIndex = 16
              Position.RowIndex = 0
            end
            object cxAlloctionDatalistFNotQty_18: TcxGridDBBandedColumn
              DataBinding.FieldName = 'FNotQty_18'
              Visible = False
              Options.Editing = False
              Width = 40
              Position.BandIndex = 3
              Position.ColIndex = 17
              Position.RowIndex = 0
            end
            object cxAlloctionDatalistFNotQty_19: TcxGridDBBandedColumn
              DataBinding.FieldName = 'FNotQty_19'
              Visible = False
              Options.Editing = False
              Width = 40
              Position.BandIndex = 3
              Position.ColIndex = 18
              Position.RowIndex = 0
            end
            object cxAlloctionDatalistFNotQty_20: TcxGridDBBandedColumn
              DataBinding.FieldName = 'FNotQty_20'
              Visible = False
              Options.Editing = False
              Width = 40
              Position.BandIndex = 3
              Position.ColIndex = 19
              Position.RowIndex = 0
            end
            object cxAlloctionDatalistFNotQty_21: TcxGridDBBandedColumn
              DataBinding.FieldName = 'FNotQty_21'
              Visible = False
              Options.Editing = False
              Width = 40
              Position.BandIndex = 3
              Position.ColIndex = 20
              Position.RowIndex = 0
            end
            object cxAlloctionDatalistFNotQty_22: TcxGridDBBandedColumn
              DataBinding.FieldName = 'FNotQty_22'
              Visible = False
              Options.Editing = False
              Width = 40
              Position.BandIndex = 3
              Position.ColIndex = 21
              Position.RowIndex = 0
            end
            object cxAlloctionDatalistFNotQty_23: TcxGridDBBandedColumn
              DataBinding.FieldName = 'FNotQty_23'
              Visible = False
              Options.Editing = False
              Width = 40
              Position.BandIndex = 3
              Position.ColIndex = 22
              Position.RowIndex = 0
            end
            object cxAlloctionDatalistFNotQty_24: TcxGridDBBandedColumn
              DataBinding.FieldName = 'FNotQty_24'
              Visible = False
              Options.Editing = False
              Width = 40
              Position.BandIndex = 3
              Position.ColIndex = 23
              Position.RowIndex = 0
            end
            object cxAlloctionDatalistFNotQty_25: TcxGridDBBandedColumn
              DataBinding.FieldName = 'FNotQty_25'
              Visible = False
              Options.Editing = False
              Width = 40
              Position.BandIndex = 3
              Position.ColIndex = 24
              Position.RowIndex = 0
            end
            object cxAlloctionDatalistFNotQty_26: TcxGridDBBandedColumn
              DataBinding.FieldName = 'FNotQty_26'
              Visible = False
              Options.Editing = False
              Width = 40
              Position.BandIndex = 3
              Position.ColIndex = 25
              Position.RowIndex = 0
            end
            object cxAlloctionDatalistFNotQty_27: TcxGridDBBandedColumn
              DataBinding.FieldName = 'FNotQty_27'
              Visible = False
              Options.Editing = False
              Width = 40
              Position.BandIndex = 3
              Position.ColIndex = 26
              Position.RowIndex = 0
            end
            object cxAlloctionDatalistFNotQty_28: TcxGridDBBandedColumn
              DataBinding.FieldName = 'FNotQty_28'
              Visible = False
              Options.Editing = False
              Width = 40
              Position.BandIndex = 3
              Position.ColIndex = 27
              Position.RowIndex = 0
            end
            object cxAlloctionDatalistFNotQty_29: TcxGridDBBandedColumn
              DataBinding.FieldName = 'FNotQty_29'
              Visible = False
              Options.Editing = False
              Width = 40
              Position.BandIndex = 3
              Position.ColIndex = 28
              Position.RowIndex = 0
            end
            object cxAlloctionDatalistFNotQty_30: TcxGridDBBandedColumn
              DataBinding.FieldName = 'FNotQty_30'
              Visible = False
              Options.Editing = False
              Width = 40
              Position.BandIndex = 3
              Position.ColIndex = 29
              Position.RowIndex = 0
            end
            object cxAlloctionDatalistFNotTotalQty: TcxGridDBBandedColumn
              DataBinding.FieldName = 'FNotTotalQty'
              Options.Editing = False
              Width = 64
              Position.BandIndex = 3
              Position.ColIndex = 30
              Position.RowIndex = 0
            end
            object cxAlloctionDatalistFDpNotAmount: TcxGridDBBandedColumn
              DataBinding.FieldName = 'FDpNotAmount'
              Options.Editing = False
              Width = 83
              Position.BandIndex = 3
              Position.ColIndex = 31
              Position.RowIndex = 0
            end
            object cxAlloctionDatalistcfsizegroupid: TcxGridDBBandedColumn
              DataBinding.FieldName = 'cfsizegroupid'
              Visible = False
              Options.Editing = False
              Width = 63
              Position.BandIndex = 0
              Position.ColIndex = 16
              Position.RowIndex = 0
            end
            object cxAlloctionDatalistFSaleQty_1: TcxGridDBBandedColumn
              DataBinding.FieldName = 'FSaleQty_1'
              Visible = False
              Width = 40
              Position.BandIndex = 1
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxAlloctionDatalistFSaleQty_2: TcxGridDBBandedColumn
              DataBinding.FieldName = 'FSaleQty_2'
              Visible = False
              Width = 40
              Position.BandIndex = 1
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxAlloctionDatalistFSaleQty_3: TcxGridDBBandedColumn
              DataBinding.FieldName = 'FSaleQty_3'
              Visible = False
              Width = 40
              Position.BandIndex = 1
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxAlloctionDatalistFSaleQty_4: TcxGridDBBandedColumn
              DataBinding.FieldName = 'FSaleQty_4'
              Visible = False
              Width = 40
              Position.BandIndex = 1
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxAlloctionDatalistFSaleQty_5: TcxGridDBBandedColumn
              DataBinding.FieldName = 'FSaleQty_5'
              Visible = False
              Width = 40
              Position.BandIndex = 1
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cxAlloctionDatalistFSaleQty_6: TcxGridDBBandedColumn
              DataBinding.FieldName = 'FSaleQty_6'
              Visible = False
              Width = 40
              Position.BandIndex = 1
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object cxAlloctionDatalistFSaleQty_7: TcxGridDBBandedColumn
              DataBinding.FieldName = 'FSaleQty_7'
              Visible = False
              Width = 40
              Position.BandIndex = 1
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object cxAlloctionDatalistFSaleQty_8: TcxGridDBBandedColumn
              DataBinding.FieldName = 'FSaleQty_8'
              Visible = False
              Width = 40
              Position.BandIndex = 1
              Position.ColIndex = 7
              Position.RowIndex = 0
            end
            object cxAlloctionDatalistFSaleQty_9: TcxGridDBBandedColumn
              DataBinding.FieldName = 'FSaleQty_9'
              Visible = False
              Width = 40
              Position.BandIndex = 1
              Position.ColIndex = 8
              Position.RowIndex = 0
            end
            object cxAlloctionDatalistFSaleQty_10: TcxGridDBBandedColumn
              DataBinding.FieldName = 'FSaleQty_10'
              Visible = False
              Width = 40
              Position.BandIndex = 1
              Position.ColIndex = 9
              Position.RowIndex = 0
            end
            object cxAlloctionDatalistFSaleQty_11: TcxGridDBBandedColumn
              DataBinding.FieldName = 'FSaleQty_11'
              Visible = False
              Width = 40
              Position.BandIndex = 1
              Position.ColIndex = 10
              Position.RowIndex = 0
            end
            object cxAlloctionDatalistFSaleQty_12: TcxGridDBBandedColumn
              DataBinding.FieldName = 'FSaleQty_12'
              Visible = False
              Width = 40
              Position.BandIndex = 1
              Position.ColIndex = 11
              Position.RowIndex = 0
            end
            object cxAlloctionDatalistFSaleQty_13: TcxGridDBBandedColumn
              DataBinding.FieldName = 'FSaleQty_13'
              Visible = False
              Width = 40
              Position.BandIndex = 1
              Position.ColIndex = 12
              Position.RowIndex = 0
            end
            object cxAlloctionDatalistFSaleQty_14: TcxGridDBBandedColumn
              DataBinding.FieldName = 'FSaleQty_14'
              Visible = False
              Width = 40
              Position.BandIndex = 1
              Position.ColIndex = 13
              Position.RowIndex = 0
            end
            object cxAlloctionDatalistFSaleQty_15: TcxGridDBBandedColumn
              DataBinding.FieldName = 'FSaleQty_15'
              Visible = False
              Width = 40
              Position.BandIndex = 1
              Position.ColIndex = 14
              Position.RowIndex = 0
            end
            object cxAlloctionDatalistFSaleQty_16: TcxGridDBBandedColumn
              DataBinding.FieldName = 'FSaleQty_16'
              Visible = False
              Width = 40
              Position.BandIndex = 1
              Position.ColIndex = 15
              Position.RowIndex = 0
            end
            object cxAlloctionDatalistFSaleQty_17: TcxGridDBBandedColumn
              DataBinding.FieldName = 'FSaleQty_17'
              Visible = False
              Width = 40
              Position.BandIndex = 1
              Position.ColIndex = 16
              Position.RowIndex = 0
            end
            object cxAlloctionDatalistFSaleQty_18: TcxGridDBBandedColumn
              DataBinding.FieldName = 'FSaleQty_18'
              Visible = False
              Width = 40
              Position.BandIndex = 1
              Position.ColIndex = 17
              Position.RowIndex = 0
            end
            object cxAlloctionDatalistFSaleQty_19: TcxGridDBBandedColumn
              DataBinding.FieldName = 'FSaleQty_19'
              Visible = False
              Width = 40
              Position.BandIndex = 1
              Position.ColIndex = 18
              Position.RowIndex = 0
            end
            object cxAlloctionDatalistFSaleQty_20: TcxGridDBBandedColumn
              DataBinding.FieldName = 'FSaleQty_20'
              Visible = False
              Width = 40
              Position.BandIndex = 1
              Position.ColIndex = 19
              Position.RowIndex = 0
            end
            object cxAlloctionDatalistFSaleQty_21: TcxGridDBBandedColumn
              DataBinding.FieldName = 'FSaleQty_21'
              Visible = False
              Width = 40
              Position.BandIndex = 1
              Position.ColIndex = 20
              Position.RowIndex = 0
            end
            object cxAlloctionDatalistFSaleQty_22: TcxGridDBBandedColumn
              DataBinding.FieldName = 'FSaleQty_22'
              Visible = False
              Width = 40
              Position.BandIndex = 1
              Position.ColIndex = 21
              Position.RowIndex = 0
            end
            object cxAlloctionDatalistFSaleQty_23: TcxGridDBBandedColumn
              DataBinding.FieldName = 'FSaleQty_23'
              Visible = False
              Width = 40
              Position.BandIndex = 1
              Position.ColIndex = 22
              Position.RowIndex = 0
            end
            object cxAlloctionDatalistFSaleQty_24: TcxGridDBBandedColumn
              DataBinding.FieldName = 'FSaleQty_24'
              Visible = False
              Width = 40
              Position.BandIndex = 1
              Position.ColIndex = 23
              Position.RowIndex = 0
            end
            object cxAlloctionDatalistFSaleQty_25: TcxGridDBBandedColumn
              DataBinding.FieldName = 'FSaleQty_25'
              Visible = False
              Width = 40
              Position.BandIndex = 1
              Position.ColIndex = 24
              Position.RowIndex = 0
            end
            object cxAlloctionDatalistFSaleQty_26: TcxGridDBBandedColumn
              DataBinding.FieldName = 'FSaleQty_26'
              Visible = False
              Width = 40
              Position.BandIndex = 1
              Position.ColIndex = 25
              Position.RowIndex = 0
            end
            object cxAlloctionDatalistFSaleQty_27: TcxGridDBBandedColumn
              DataBinding.FieldName = 'FSaleQty_27'
              Visible = False
              Width = 40
              Position.BandIndex = 1
              Position.ColIndex = 26
              Position.RowIndex = 0
            end
            object cxAlloctionDatalistFSaleQty_28: TcxGridDBBandedColumn
              DataBinding.FieldName = 'FSaleQty_28'
              Visible = False
              Width = 40
              Position.BandIndex = 1
              Position.ColIndex = 27
              Position.RowIndex = 0
            end
            object cxAlloctionDatalistFSaleQty_29: TcxGridDBBandedColumn
              DataBinding.FieldName = 'FSaleQty_29'
              Visible = False
              Width = 40
              Position.BandIndex = 1
              Position.ColIndex = 28
              Position.RowIndex = 0
            end
            object cxAlloctionDatalistFSaleQty_30: TcxGridDBBandedColumn
              DataBinding.FieldName = 'FSaleQty_30'
              Visible = False
              Width = 40
              Position.BandIndex = 1
              Position.ColIndex = 29
              Position.RowIndex = 0
            end
            object cxAlloctionDatalistFSaleTotalQty: TcxGridDBBandedColumn
              DataBinding.FieldName = 'FSaleTotalQty'
              Options.Editing = False
              Width = 65
              Position.BandIndex = 1
              Position.ColIndex = 30
              Position.RowIndex = 0
            end
            object cxAlloctionDatalistFSaleDpAmount: TcxGridDBBandedColumn
              DataBinding.FieldName = 'FSaleDpAmount'
              Options.Editing = False
              Width = 80
              Position.BandIndex = 1
              Position.ColIndex = 31
              Position.RowIndex = 0
            end
            object cxAlloctionDatalistBRANDNAME: TcxGridDBBandedColumn
              DataBinding.FieldName = 'BRANDNAME'
              Options.Editing = False
              Width = 55
              Position.BandIndex = 4
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxAlloctionDatalistYEARSNAME: TcxGridDBBandedColumn
              DataBinding.FieldName = 'YEARSNAME'
              Options.Editing = False
              Width = 57
              Position.BandIndex = 4
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxAlloctionDatalistATTBNAME: TcxGridDBBandedColumn
              DataBinding.FieldName = 'ATTBNAME'
              Options.Editing = False
              Width = 40
              Position.BandIndex = 4
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
          end
          object cxGridLevel3: TcxGridLevel
            GridView = cxAlloctionDatalist
          end
        end
        object Panel15: TPanel
          Left = 0
          Top = 451
          Width = 943
          Height = 41
          Align = alBottom
          BevelOuter = bvNone
          Color = 16511980
          TabOrder = 2
          object cxGroupBox1: TcxGroupBox
            Left = 0
            Top = 0
            Align = alClient
            Caption = #29983#25104#37197#36135#21333#20449#24687
            TabOrder = 0
            DesignSize = (
              943
              41)
            Height = 41
            Width = 943
            object Label5: TLabel
              Left = 13
              Top = 19
              Width = 58
              Height = 12
              AutoSize = False
              Caption = #35746#21333#31867#22411
            end
            object Label6: TLabel
              Left = 197
              Top = 20
              Width = 58
              Height = 12
              AutoSize = False
              Caption = #21457#36135#31867#22411
            end
            object Label8: TLabel
              Left = 379
              Top = 20
              Width = 53
              Height = 12
              AutoSize = False
              Caption = #20215#26684#31867#22411
            end
            object Label7: TLabel
              Left = 581
              Top = 20
              Width = 65
              Height = 12
              AutoSize = False
              Caption = #37197#36135#21333#22791#27880
            end
            object txt_Des: TcxTextEdit
              Left = 648
              Top = 16
              Anchors = [akLeft, akTop, akRight]
              Style.Color = clWhite
              TabOrder = 0
              Width = 289
            end
            object lcb_OrderType: TcxLookupComboBox
              Tag = 100
              Left = 64
              Top = 16
              Properties.DropDownListStyle = lsFixedList
              Properties.KeyFieldNames = 'FID'
              Properties.ListColumns = <
                item
                  FieldName = 'FName_L2'
                end>
              Properties.ListOptions.ShowHeader = False
              Properties.ListSource = dsOrdertype
              TabOrder = 1
              Width = 129
            end
            object lcb_ShopType: TcxLookupComboBox
              Tag = 100
              Left = 248
              Top = 16
              Properties.DropDownListStyle = lsFixedList
              Properties.KeyFieldNames = 'FID'
              Properties.ListColumns = <
                item
                  FieldName = 'Fname_l2'
                end>
              Properties.ListOptions.ShowHeader = False
              Properties.ListSource = dsShipType
              TabOrder = 2
              Width = 129
            end
            object lcb_PriceType: TcxLookupComboBox
              Tag = 100
              Left = 432
              Top = 16
              Properties.DropDownListStyle = lsFixedList
              Properties.KeyFieldNames = 'FID'
              Properties.ListColumns = <
                item
                  FieldName = 'Fname_l2'
                end>
              Properties.ListOptions.ShowHeader = False
              Properties.ListSource = CliDM.dsPriceType
              TabOrder = 3
              Width = 129
            end
          end
        end
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 512
    Width = 945
    Height = 41
    Align = alBottom
    Color = 16511980
    TabOrder = 1
    DesignSize = (
      945
      41)
    object btUP: TcxButton
      Left = 646
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #19978#19968#27493'(&U)'
      TabOrder = 0
      OnClick = btUPClick
      LookAndFeel.Kind = lfOffice11
    end
    object btDown: TcxButton
      Left = 730
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #19979#19968#27493'(&D)'
      TabOrder = 1
      OnClick = btDownClick
      LookAndFeel.Kind = lfOffice11
    end
    object btn_CreateBill: TcxButton
      Left = 815
      Top = 7
      Width = 117
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #28155#21152#21040#35843#37197#28165#21333'(&C)'
      TabOrder = 2
      OnClick = btn_CreateBillClick
      LookAndFeel.Kind = lfOffice11
    end
  end
  object cdsCustomer: TClientDataSet
    Aggregates = <>
    Params = <>
    OnFilterRecord = cdsCustomerFilterRecord
    Left = 25
    Top = 380
    object cdsCustomerCustomerFID: TStringField
      FieldName = 'CustomerFID'
      Size = 80
    end
    object cdsCustomerCustomerNumber: TStringField
      DisplayLabel = #20179#24211'/'#24215#38138#32534#21495
      FieldName = 'CustomerNumber'
      Size = 80
    end
    object cdsCustomerCustomerName: TStringField
      DisplayLabel = #20179#24211'/'#24215#38138#21517#31216
      FieldName = 'CustomerName'
      Size = 80
    end
  end
  object dsCustomer: TDataSource
    DataSet = cdsCustomer
    Left = 89
    Top = 380
  end
  object cdsMaterial: TClientDataSet
    Aggregates = <>
    Params = <>
    OnFilterRecord = cdsMaterialFilterRecord
    Left = 185
    Top = 380
    object cdsMaterialMaterialFID: TStringField
      FieldName = 'MaterialFID'
      Size = 80
    end
    object cdsMaterialMaterialNumber: TStringField
      DisplayLabel = #29289#26009#32534#21495
      FieldName = 'MaterialNumber'
      Size = 80
    end
    object cdsMaterialMaterialName: TStringField
      DisplayLabel = #29289#26009#21517#31216
      FieldName = 'MaterialName'
      Size = 80
    end
  end
  object dsMaterial: TDataSource
    DataSet = cdsMaterial
    Left = 257
    Top = 396
  end
  object pm_material: TPopupMenu
    AutoHotkeys = maManual
    Left = 536
    Top = 296
    object seeMaterialinfo: TMenuItem
      Caption = #26597#30475#29289#26009#20449#24687
      ShortCut = 119
      OnClick = seeMaterialinfoClick
    end
  end
  object cdsAllocation: TClientDataSet
    Aggregates = <>
    Params = <>
    OnCalcFields = cdsAllocationCalcFields
    OnFilterRecord = cdsAllocationFilterRecord
    Left = 128
    Top = 258
    object cdsAllocationINWARHFID: TWideStringField
      FieldName = 'INWARHFID'
      Size = 44
    end
    object cdsAllocationINWARHNUMBER: TWideStringField
      DisplayLabel = #20179#24211#32534#21495
      FieldName = 'INWARHNUMBER'
      Size = 80
    end
    object cdsAllocationINWARHNAME: TWideStringField
      DisplayLabel = #20179#24211#21517#31216
      FieldName = 'INWARHNAME'
      Size = 510
    end
    object cdsAllocationMATERNUMBER: TWideStringField
      DisplayLabel = #29289#26009#32534#21495
      FieldName = 'MATERNUMBER'
      Size = 80
    end
    object cdsAllocationMATERNAME: TWideStringField
      DisplayLabel = #29289#26009#21517#31216
      FieldName = 'MATERNAME'
      Size = 510
    end
    object cdsAllocationCOLORNUMBER: TWideStringField
      DisplayLabel = #39068#33394#32534#21495
      FieldName = 'COLORNUMBER'
      Size = 80
    end
    object cdsAllocationCOLORNAME: TWideStringField
      DisplayLabel = #39068#33394#21517#31216
      FieldName = 'COLORNAME'
      Size = 510
    end
    object cdsAllocationCUPNAME: TWideStringField
      DisplayLabel = #20869#38271
      FieldName = 'CUPNAME'
      Size = 510
    end
    object cdsAllocationBRANDNAME: TWideStringField
      DisplayLabel = #21697#29260
      FieldName = 'BRANDNAME'
      Size = 510
    end
    object cdsAllocationYEARSNAME: TWideStringField
      DisplayLabel = #24180#20221
      FieldName = 'YEARSNAME'
      Size = 510
    end
    object cdsAllocationATTBNAME: TWideStringField
      DisplayLabel = #27874#27573
      FieldName = 'ATTBNAME'
      Size = 510
    end
    object cdsAllocationFMATERIALID: TWideStringField
      FieldName = 'FMATERIALID'
      Size = 44
    end
    object cdsAllocationCFCOLORID: TWideStringField
      FieldName = 'CFCOLORID'
      Size = 44
    end
    object cdsAllocationCFCUPID: TWideStringField
      FieldName = 'CFCUPID'
      Size = 44
    end
    object cdsAllocationCFDPPRICE: TFloatField
      DisplayLabel = #21514#29260#20215
      FieldName = 'CFDPPRICE'
    end
    object cdsAllocationFQty_1: TIntegerField
      Tag = 1
      FieldName = 'FQty_1'
    end
    object cdsAllocationFQty_2: TIntegerField
      Tag = 1
      FieldName = 'FQty_2'
    end
    object cdsAllocationFQty_3: TIntegerField
      Tag = 1
      FieldName = 'FQty_3'
    end
    object cdsAllocationFQty_4: TIntegerField
      Tag = 1
      FieldName = 'FQty_4'
    end
    object cdsAllocationFQty_5: TIntegerField
      Tag = 1
      FieldName = 'FQty_5'
    end
    object cdsAllocationFQty_6: TIntegerField
      Tag = 1
      FieldName = 'FQty_6'
    end
    object cdsAllocationFQty_7: TIntegerField
      Tag = 1
      FieldName = 'FQty_7'
    end
    object cdsAllocationFQty_8: TIntegerField
      Tag = 1
      FieldName = 'FQty_8'
    end
    object cdsAllocationFQty_9: TIntegerField
      Tag = 1
      FieldName = 'FQty_9'
    end
    object cdsAllocationFQty_10: TIntegerField
      Tag = 1
      FieldName = 'FQty_10'
    end
    object cdsAllocationFQty_11: TIntegerField
      Tag = 1
      FieldName = 'FQty_11'
    end
    object cdsAllocationFQty_12: TIntegerField
      Tag = 1
      FieldName = 'FQty_12'
    end
    object cdsAllocationFQty_13: TIntegerField
      Tag = 1
      FieldName = 'FQty_13'
    end
    object cdsAllocationFQty_14: TIntegerField
      Tag = 1
      FieldName = 'FQty_14'
    end
    object cdsAllocationFQty_15: TIntegerField
      Tag = 1
      FieldName = 'FQty_15'
    end
    object cdsAllocationFQty_16: TIntegerField
      Tag = 1
      FieldName = 'FQty_16'
    end
    object cdsAllocationFQty_17: TIntegerField
      Tag = 1
      FieldName = 'FQty_17'
    end
    object cdsAllocationFQty_18: TIntegerField
      Tag = 1
      FieldName = 'FQty_18'
    end
    object cdsAllocationFQty_19: TIntegerField
      Tag = 1
      FieldName = 'FQty_19'
    end
    object cdsAllocationFQty_20: TIntegerField
      Tag = 1
      FieldName = 'FQty_20'
    end
    object cdsAllocationFQty_21: TIntegerField
      Tag = 1
      FieldName = 'FQty_21'
    end
    object cdsAllocationFQty_22: TIntegerField
      Tag = 1
      FieldName = 'FQty_22'
    end
    object cdsAllocationFQty_23: TIntegerField
      Tag = 1
      FieldName = 'FQty_23'
    end
    object cdsAllocationFQty_24: TIntegerField
      Tag = 1
      FieldName = 'FQty_24'
    end
    object cdsAllocationFQty_25: TIntegerField
      Tag = 1
      FieldName = 'FQty_25'
    end
    object cdsAllocationFQty_26: TIntegerField
      Tag = 1
      FieldName = 'FQty_26'
    end
    object cdsAllocationFQty_27: TIntegerField
      Tag = 1
      FieldName = 'FQty_27'
    end
    object cdsAllocationFQty_28: TIntegerField
      Tag = 1
      FieldName = 'FQty_28'
    end
    object cdsAllocationFQty_29: TIntegerField
      Tag = 1
      FieldName = 'FQty_29'
    end
    object cdsAllocationFQty_30: TIntegerField
      Tag = 1
      FieldName = 'FQty_30'
    end
    object cdsAllocationFTotalQty: TIntegerField
      DisplayLabel = #24211#23384#21512#35745
      FieldKind = fkCalculated
      FieldName = 'FTotalQty'
      Calculated = True
    end
    object cdsAllocationFDpAmount: TFloatField
      DisplayLabel = #24211#23384#21514#29260#37329#39069
      FieldKind = fkCalculated
      FieldName = 'FDpAmount'
      Calculated = True
    end
    object cdsAllocationFNotQty_1: TIntegerField
      FieldName = 'FNotQty_1'
    end
    object cdsAllocationFNotQty_2: TIntegerField
      FieldName = 'FNotQty_2'
    end
    object cdsAllocationFNotQty_3: TIntegerField
      FieldName = 'FNotQty_3'
    end
    object cdsAllocationFNotQty_4: TIntegerField
      FieldName = 'FNotQty_4'
    end
    object cdsAllocationFNotQty_5: TIntegerField
      FieldName = 'FNotQty_5'
    end
    object cdsAllocationFNotQty_6: TIntegerField
      FieldName = 'FNotQty_6'
    end
    object cdsAllocationFNotQty_8: TIntegerField
      FieldName = 'FNotQty_7'
    end
    object cdsAllocationFNotQty_82: TIntegerField
      FieldName = 'FNotQty_8'
    end
    object cdsAllocationFNotQty_9: TIntegerField
      FieldName = 'FNotQty_9'
    end
    object cdsAllocationFNotQty_10: TIntegerField
      FieldName = 'FNotQty_10'
    end
    object cdsAllocationFNotQty_11: TIntegerField
      FieldName = 'FNotQty_11'
    end
    object cdsAllocationFNotQty_12: TIntegerField
      FieldName = 'FNotQty_12'
    end
    object cdsAllocationFNotQty_13: TIntegerField
      FieldName = 'FNotQty_13'
    end
    object cdsAllocationFNotQty_14: TIntegerField
      FieldName = 'FNotQty_14'
    end
    object cdsAllocationFNotQty_15: TIntegerField
      FieldName = 'FNotQty_15'
    end
    object cdsAllocationFNotQty_16: TIntegerField
      FieldName = 'FNotQty_16'
    end
    object cdsAllocationFNotQty_17: TIntegerField
      FieldName = 'FNotQty_17'
    end
    object cdsAllocationFNotQty_18: TIntegerField
      FieldName = 'FNotQty_18'
    end
    object cdsAllocationFNotQty_19: TIntegerField
      FieldName = 'FNotQty_19'
    end
    object cdsAllocationFNotQty_20: TIntegerField
      FieldName = 'FNotQty_20'
    end
    object cdsAllocationFNotQty_21: TIntegerField
      FieldName = 'FNotQty_21'
    end
    object cdsAllocationFNotQty_22: TIntegerField
      FieldName = 'FNotQty_22'
    end
    object cdsAllocationFNotQty_23: TIntegerField
      FieldName = 'FNotQty_23'
    end
    object cdsAllocationFNotQty_24: TIntegerField
      FieldName = 'FNotQty_24'
    end
    object cdsAllocationFNotQty_25: TIntegerField
      FieldName = 'FNotQty_25'
    end
    object cdsAllocationFNotQty_26: TIntegerField
      FieldName = 'FNotQty_26'
    end
    object cdsAllocationFNotQty_27: TIntegerField
      FieldName = 'FNotQty_27'
    end
    object cdsAllocationFNotQty_28: TIntegerField
      FieldName = 'FNotQty_28'
    end
    object cdsAllocationFNotQty_29: TIntegerField
      FieldName = 'FNotQty_29'
    end
    object cdsAllocationFNotQty_30: TIntegerField
      FieldName = 'FNotQty_30'
    end
    object cdsAllocationFNotTotalQty: TIntegerField
      DisplayLabel = #38144#21806#21512#35745
      FieldKind = fkCalculated
      FieldName = 'FNotTotalQty'
      Calculated = True
    end
    object cdsAllocationFDpNotAmount: TFloatField
      DisplayLabel = #38144#21806#21514#29260#37329#39069
      FieldKind = fkCalculated
      FieldName = 'FDpNotAmount'
      Calculated = True
    end
    object cdsAllocationcfsizegroupid: TStringField
      FieldName = 'cfsizegroupid'
      Size = 80
    end
    object cdsAllocationunitFID: TStringField
      FieldName = 'unitFID'
      Size = 80
    end
  end
  object dsAllocation: TDataSource
    DataSet = cdsAllocation
    Left = 208
    Top = 258
  end
  object cdsDownData: TClientDataSet
    Aggregates = <>
    Params = <>
    OnCalcFields = cdsDownDataCalcFields
    Left = 376
    Top = 394
    object WideStringField1: TWideStringField
      FieldName = 'INWARHFID'
      Size = 44
    end
    object WideStringField2: TWideStringField
      DisplayLabel = #20179#24211#32534#21495
      FieldName = 'INWARHNUMBER'
      Size = 80
    end
    object WideStringField3: TWideStringField
      DisplayLabel = #20179#24211#21517#31216
      FieldName = 'INWARHNAME'
      Size = 510
    end
    object WideStringField4: TWideStringField
      DisplayLabel = #29289#26009#32534#21495
      FieldName = 'MATERNUMBER'
      Size = 80
    end
    object WideStringField5: TWideStringField
      DisplayLabel = #29289#26009#21517#31216
      FieldName = 'MATERNAME'
      Size = 510
    end
    object WideStringField6: TWideStringField
      DisplayLabel = #39068#33394#32534#21495
      FieldName = 'COLORNUMBER'
      Size = 80
    end
    object WideStringField7: TWideStringField
      DisplayLabel = #39068#33394#21517#31216
      FieldName = 'COLORNAME'
      Size = 510
    end
    object WideStringField8: TWideStringField
      DisplayLabel = #20869#38271
      FieldName = 'CUPNAME'
      Size = 510
    end
    object WideStringField9: TWideStringField
      DisplayLabel = #21697#29260
      FieldName = 'BRANDNAME'
      Size = 510
    end
    object WideStringField10: TWideStringField
      DisplayLabel = #24180#20221
      FieldName = 'YEARSNAME'
      Size = 510
    end
    object WideStringField11: TWideStringField
      DisplayLabel = #27874#27573
      FieldName = 'ATTBNAME'
      Size = 510
    end
    object WideStringField12: TWideStringField
      FieldName = 'FMATERIALID'
      Size = 44
    end
    object WideStringField13: TWideStringField
      FieldName = 'CFCOLORID'
      Size = 44
    end
    object WideStringField14: TWideStringField
      FieldName = 'CFCUPID'
      Size = 44
    end
    object FloatField1: TFloatField
      DisplayLabel = #21514#29260#20215
      FieldName = 'CFDPPRICE'
    end
    object IntegerField1: TIntegerField
      Tag = 1
      FieldName = 'FQty_1'
    end
    object IntegerField2: TIntegerField
      Tag = 1
      FieldName = 'FQty_2'
    end
    object IntegerField3: TIntegerField
      Tag = 1
      FieldName = 'FQty_3'
    end
    object IntegerField4: TIntegerField
      Tag = 1
      FieldName = 'FQty_4'
    end
    object IntegerField5: TIntegerField
      Tag = 1
      FieldName = 'FQty_5'
    end
    object IntegerField6: TIntegerField
      Tag = 1
      FieldName = 'FQty_6'
    end
    object IntegerField7: TIntegerField
      Tag = 1
      FieldName = 'FQty_7'
    end
    object IntegerField8: TIntegerField
      Tag = 1
      FieldName = 'FQty_8'
    end
    object IntegerField9: TIntegerField
      Tag = 1
      FieldName = 'FQty_9'
    end
    object IntegerField10: TIntegerField
      Tag = 1
      FieldName = 'FQty_10'
    end
    object IntegerField11: TIntegerField
      Tag = 1
      FieldName = 'FQty_11'
    end
    object IntegerField12: TIntegerField
      Tag = 1
      FieldName = 'FQty_12'
    end
    object IntegerField13: TIntegerField
      Tag = 1
      FieldName = 'FQty_13'
    end
    object IntegerField14: TIntegerField
      Tag = 1
      FieldName = 'FQty_14'
    end
    object IntegerField15: TIntegerField
      Tag = 1
      FieldName = 'FQty_15'
    end
    object IntegerField16: TIntegerField
      Tag = 1
      FieldName = 'FQty_16'
    end
    object IntegerField17: TIntegerField
      Tag = 1
      FieldName = 'FQty_17'
    end
    object IntegerField18: TIntegerField
      Tag = 1
      FieldName = 'FQty_18'
    end
    object IntegerField19: TIntegerField
      Tag = 1
      FieldName = 'FQty_19'
    end
    object IntegerField20: TIntegerField
      Tag = 1
      FieldName = 'FQty_20'
    end
    object IntegerField21: TIntegerField
      Tag = 1
      FieldName = 'FQty_21'
    end
    object IntegerField22: TIntegerField
      Tag = 1
      FieldName = 'FQty_22'
    end
    object IntegerField23: TIntegerField
      Tag = 1
      FieldName = 'FQty_23'
    end
    object IntegerField24: TIntegerField
      Tag = 1
      FieldName = 'FQty_24'
    end
    object IntegerField25: TIntegerField
      Tag = 1
      FieldName = 'FQty_25'
    end
    object IntegerField26: TIntegerField
      Tag = 1
      FieldName = 'FQty_26'
    end
    object IntegerField27: TIntegerField
      Tag = 1
      FieldName = 'FQty_27'
    end
    object IntegerField28: TIntegerField
      Tag = 1
      FieldName = 'FQty_28'
    end
    object IntegerField29: TIntegerField
      Tag = 1
      FieldName = 'FQty_29'
    end
    object IntegerField30: TIntegerField
      Tag = 1
      FieldName = 'FQty_30'
    end
    object IntegerField31: TIntegerField
      DisplayLabel = #24211#23384#21512#35745
      FieldKind = fkCalculated
      FieldName = 'FTotalQty'
      Calculated = True
    end
    object FloatField2: TFloatField
      DisplayLabel = #24211#23384#21514#29260#37329#39069
      FieldKind = fkCalculated
      FieldName = 'FDpAmount'
      Calculated = True
    end
    object IntegerField32: TIntegerField
      FieldName = 'FNotQty_1'
    end
    object IntegerField33: TIntegerField
      FieldName = 'FNotQty_2'
    end
    object IntegerField34: TIntegerField
      FieldName = 'FNotQty_3'
    end
    object IntegerField35: TIntegerField
      FieldName = 'FNotQty_4'
    end
    object IntegerField36: TIntegerField
      FieldName = 'FNotQty_5'
    end
    object IntegerField37: TIntegerField
      FieldName = 'FNotQty_6'
    end
    object IntegerField38: TIntegerField
      FieldName = 'FNotQty_7'
    end
    object IntegerField39: TIntegerField
      FieldName = 'FNotQty_8'
    end
    object IntegerField40: TIntegerField
      FieldName = 'FNotQty_9'
    end
    object IntegerField41: TIntegerField
      FieldName = 'FNotQty_10'
    end
    object IntegerField42: TIntegerField
      FieldName = 'FNotQty_11'
    end
    object IntegerField43: TIntegerField
      FieldName = 'FNotQty_12'
    end
    object IntegerField44: TIntegerField
      FieldName = 'FNotQty_13'
    end
    object IntegerField45: TIntegerField
      FieldName = 'FNotQty_14'
    end
    object IntegerField46: TIntegerField
      FieldName = 'FNotQty_15'
    end
    object IntegerField47: TIntegerField
      FieldName = 'FNotQty_16'
    end
    object IntegerField48: TIntegerField
      FieldName = 'FNotQty_17'
    end
    object IntegerField49: TIntegerField
      FieldName = 'FNotQty_18'
    end
    object IntegerField50: TIntegerField
      FieldName = 'FNotQty_19'
    end
    object IntegerField51: TIntegerField
      FieldName = 'FNotQty_20'
    end
    object IntegerField52: TIntegerField
      FieldName = 'FNotQty_21'
    end
    object IntegerField53: TIntegerField
      FieldName = 'FNotQty_22'
    end
    object IntegerField54: TIntegerField
      FieldName = 'FNotQty_23'
    end
    object IntegerField55: TIntegerField
      FieldName = 'FNotQty_24'
    end
    object IntegerField56: TIntegerField
      FieldName = 'FNotQty_25'
    end
    object IntegerField57: TIntegerField
      FieldName = 'FNotQty_26'
    end
    object IntegerField58: TIntegerField
      FieldName = 'FNotQty_27'
    end
    object IntegerField59: TIntegerField
      FieldName = 'FNotQty_28'
    end
    object IntegerField60: TIntegerField
      FieldName = 'FNotQty_29'
    end
    object IntegerField61: TIntegerField
      FieldName = 'FNotQty_30'
    end
    object IntegerField62: TIntegerField
      DisplayLabel = #38144#21806#21512#35745
      FieldKind = fkCalculated
      FieldName = 'FNotTotalQty'
      Calculated = True
    end
    object FloatField3: TFloatField
      DisplayLabel = #38144#21806#21514#29260#37329#39069
      FieldKind = fkCalculated
      FieldName = 'FDpNotAmount'
      Calculated = True
    end
    object StringField1: TStringField
      FieldName = 'cfsizegroupid'
      Size = 80
    end
    object cdsDownDataFSaleQty_1: TIntegerField
      FieldName = 'FSaleQty_1'
    end
    object cdsDownDataFSaleQty_2: TIntegerField
      FieldName = 'FSaleQty_2'
    end
    object cdsDownDataFSaleQty_3: TIntegerField
      FieldName = 'FSaleQty_3'
    end
    object cdsDownDataFSaleQty_4: TIntegerField
      FieldName = 'FSaleQty_4'
    end
    object cdsDownDataFSaleQty_5: TIntegerField
      FieldName = 'FSaleQty_5'
    end
    object cdsDownDataFSaleQty_6: TIntegerField
      FieldName = 'FSaleQty_6'
    end
    object cdsDownDataFSaleQty_7: TIntegerField
      FieldName = 'FSaleQty_7'
    end
    object cdsDownDataFSaleQty_8: TIntegerField
      FieldName = 'FSaleQty_8'
    end
    object cdsDownDataFSaleQty_9: TIntegerField
      FieldName = 'FSaleQty_9'
    end
    object cdsDownDataFSaleQty_10: TIntegerField
      FieldName = 'FSaleQty_10'
    end
    object cdsDownDataFSaleQty_11: TIntegerField
      FieldName = 'FSaleQty_11'
    end
    object cdsDownDataFSaleQty_12: TIntegerField
      FieldName = 'FSaleQty_12'
    end
    object cdsDownDataFSaleQty_13: TIntegerField
      FieldName = 'FSaleQty_13'
    end
    object cdsDownDataFSaleQty_14: TIntegerField
      FieldName = 'FSaleQty_14'
    end
    object cdsDownDataFSaleQty_15: TIntegerField
      FieldName = 'FSaleQty_15'
    end
    object cdsDownDataFSaleQty_16: TIntegerField
      FieldName = 'FSaleQty_16'
    end
    object cdsDownDataFSaleQty_17: TIntegerField
      FieldName = 'FSaleQty_17'
    end
    object cdsDownDataFSaleQty_18: TIntegerField
      FieldName = 'FSaleQty_18'
    end
    object cdsDownDataFSaleQty_19: TIntegerField
      FieldName = 'FSaleQty_19'
    end
    object cdsDownDataFSaleQty_20: TIntegerField
      FieldName = 'FSaleQty_20'
    end
    object cdsDownDataFSaleQty_21: TIntegerField
      FieldName = 'FSaleQty_21'
    end
    object cdsDownDataFSaleQty_22: TIntegerField
      FieldName = 'FSaleQty_22'
    end
    object cdsDownDataFSaleQty_23: TIntegerField
      FieldName = 'FSaleQty_23'
    end
    object cdsDownDataFSaleQty_24: TIntegerField
      FieldName = 'FSaleQty_24'
    end
    object cdsDownDataFSaleQty_25: TIntegerField
      FieldName = 'FSaleQty_25'
    end
    object cdsDownDataFSaleQty_26: TIntegerField
      FieldName = 'FSaleQty_26'
    end
    object cdsDownDataFSaleQty_27: TIntegerField
      FieldName = 'FSaleQty_27'
    end
    object cdsDownDataFSaleQty_28: TIntegerField
      FieldName = 'FSaleQty_28'
    end
    object cdsDownDataFSaleQty_29: TIntegerField
      FieldName = 'FSaleQty_29'
    end
    object cdsDownDataFSaleQty_30: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'FSaleQty_30'
      Calculated = True
    end
    object cdsDownDataFSaleTotalQty: TIntegerField
      DisplayLabel = #35843#20837#21512#35745
      FieldKind = fkCalculated
      FieldName = 'FSaleTotalQty'
      Calculated = True
    end
    object cdsDownDataFSaleDpAmount: TFloatField
      DisplayLabel = #35843#20837#21514#29260#37329#39069
      FieldKind = fkCalculated
      FieldName = 'FSaleDpAmount'
      Calculated = True
    end
    object cdsDownDataunitFID: TStringField
      FieldName = 'unitFID'
      Size = 80
    end
  end
  object dsDownData: TDataSource
    DataSet = cdsDownData
    Left = 456
    Top = 394
  end
  object cdsQueryList: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 329
    Top = 323
  end
  object cdsImg: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 872
    Top = 122
  end
  object cdsAllocationBak: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 89
    Top = 203
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 16
    Top = 104
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor]
      Color = clHighlight
    end
  end
  object cdsAllDataList: TClientDataSet
    Aggregates = <>
    Params = <>
    OnCalcFields = cdsDownDataCalcFields
    OnFilterRecord = cdsAllDataListFilterRecord
    Left = 568
    Top = 402
    object cdsAllDataListoutWARHFID: TStringField
      FieldName = 'outWARHFID'
      Size = 80
    end
    object cdsAllDataListoutWARHNumber: TStringField
      DisplayLabel = #35843#20986#20179#24211#32534#21495
      FieldName = 'outWARHNumber'
      Size = 80
    end
    object cdsAllDataListOutWARHName: TStringField
      DisplayLabel = #35843#20986#20179#24211#21517#31216
      FieldName = 'OutWARHName'
      Size = 80
    end
    object cdsAllDataListunitFID: TStringField
      FieldName = 'unitFID'
      Size = 60
    end
    object WideStringField15: TWideStringField
      FieldName = 'INWARHFID'
      Size = 44
    end
    object WideStringField16: TWideStringField
      DisplayLabel = #35843#20837#20179#24211#32534#21495
      FieldName = 'INWARHNUMBER'
      Size = 80
    end
    object WideStringField17: TWideStringField
      DisplayLabel = #35843#20837#20179#24211#21517#31216
      FieldName = 'INWARHNAME'
      Size = 510
    end
    object WideStringField18: TWideStringField
      DisplayLabel = #29289#26009#32534#21495
      FieldName = 'MATERNUMBER'
      Size = 80
    end
    object WideStringField19: TWideStringField
      DisplayLabel = #29289#26009#21517#31216
      FieldName = 'MATERNAME'
      Size = 510
    end
    object WideStringField20: TWideStringField
      DisplayLabel = #39068#33394#32534#21495
      FieldName = 'COLORNUMBER'
      Size = 80
    end
    object WideStringField21: TWideStringField
      DisplayLabel = #39068#33394#21517#31216
      FieldName = 'COLORNAME'
      Size = 510
    end
    object WideStringField22: TWideStringField
      DisplayLabel = #20869#38271
      FieldName = 'CUPNAME'
      Size = 510
    end
    object WideStringField23: TWideStringField
      DisplayLabel = #21697#29260
      FieldName = 'BRANDNAME'
      Size = 510
    end
    object WideStringField24: TWideStringField
      DisplayLabel = #24180#20221
      FieldName = 'YEARSNAME'
      Size = 510
    end
    object WideStringField25: TWideStringField
      DisplayLabel = #27874#27573
      FieldName = 'ATTBNAME'
      Size = 510
    end
    object WideStringField26: TWideStringField
      FieldName = 'FMATERIALID'
      Size = 44
    end
    object WideStringField27: TWideStringField
      FieldName = 'CFCOLORID'
      Size = 44
    end
    object WideStringField28: TWideStringField
      FieldName = 'CFCUPID'
      Size = 44
    end
    object FloatField4: TFloatField
      DisplayLabel = #21514#29260#20215
      FieldName = 'CFDPPRICE'
    end
    object IntegerField63: TIntegerField
      Tag = 1
      FieldName = 'FQty_1'
    end
    object IntegerField64: TIntegerField
      Tag = 1
      FieldName = 'FQty_2'
    end
    object IntegerField65: TIntegerField
      Tag = 1
      FieldName = 'FQty_3'
    end
    object IntegerField66: TIntegerField
      Tag = 1
      FieldName = 'FQty_4'
    end
    object IntegerField67: TIntegerField
      Tag = 1
      FieldName = 'FQty_5'
    end
    object IntegerField68: TIntegerField
      Tag = 1
      FieldName = 'FQty_6'
    end
    object IntegerField69: TIntegerField
      Tag = 1
      FieldName = 'FQty_7'
    end
    object IntegerField70: TIntegerField
      Tag = 1
      FieldName = 'FQty_8'
    end
    object IntegerField71: TIntegerField
      Tag = 1
      FieldName = 'FQty_9'
    end
    object IntegerField72: TIntegerField
      Tag = 1
      FieldName = 'FQty_10'
    end
    object IntegerField73: TIntegerField
      Tag = 1
      FieldName = 'FQty_11'
    end
    object IntegerField74: TIntegerField
      Tag = 1
      FieldName = 'FQty_12'
    end
    object IntegerField75: TIntegerField
      Tag = 1
      FieldName = 'FQty_13'
    end
    object IntegerField76: TIntegerField
      Tag = 1
      FieldName = 'FQty_14'
    end
    object IntegerField77: TIntegerField
      Tag = 1
      FieldName = 'FQty_15'
    end
    object IntegerField78: TIntegerField
      Tag = 1
      FieldName = 'FQty_16'
    end
    object IntegerField79: TIntegerField
      Tag = 1
      FieldName = 'FQty_17'
    end
    object IntegerField80: TIntegerField
      Tag = 1
      FieldName = 'FQty_18'
    end
    object IntegerField81: TIntegerField
      Tag = 1
      FieldName = 'FQty_19'
    end
    object IntegerField82: TIntegerField
      Tag = 1
      FieldName = 'FQty_20'
    end
    object IntegerField83: TIntegerField
      Tag = 1
      FieldName = 'FQty_21'
    end
    object IntegerField84: TIntegerField
      Tag = 1
      FieldName = 'FQty_22'
    end
    object IntegerField85: TIntegerField
      Tag = 1
      FieldName = 'FQty_23'
    end
    object IntegerField86: TIntegerField
      Tag = 1
      FieldName = 'FQty_24'
    end
    object IntegerField87: TIntegerField
      Tag = 1
      FieldName = 'FQty_25'
    end
    object IntegerField88: TIntegerField
      Tag = 1
      FieldName = 'FQty_26'
    end
    object IntegerField89: TIntegerField
      Tag = 1
      FieldName = 'FQty_27'
    end
    object IntegerField90: TIntegerField
      Tag = 1
      FieldName = 'FQty_28'
    end
    object IntegerField91: TIntegerField
      Tag = 1
      FieldName = 'FQty_29'
    end
    object IntegerField92: TIntegerField
      Tag = 1
      FieldName = 'FQty_30'
    end
    object IntegerField93: TIntegerField
      DisplayLabel = #24211#23384#21512#35745
      FieldKind = fkCalculated
      FieldName = 'FTotalQty'
      Calculated = True
    end
    object FloatField5: TFloatField
      DisplayLabel = #24211#23384#21514#29260#37329#39069
      FieldKind = fkCalculated
      FieldName = 'FDpAmount'
      Calculated = True
    end
    object IntegerField94: TIntegerField
      FieldName = 'FNotQty_1'
    end
    object IntegerField95: TIntegerField
      FieldName = 'FNotQty_2'
    end
    object IntegerField96: TIntegerField
      FieldName = 'FNotQty_3'
    end
    object IntegerField97: TIntegerField
      FieldName = 'FNotQty_4'
    end
    object IntegerField98: TIntegerField
      FieldName = 'FNotQty_5'
    end
    object IntegerField99: TIntegerField
      FieldName = 'FNotQty_6'
    end
    object IntegerField100: TIntegerField
      FieldName = 'FNotQty_7'
    end
    object IntegerField101: TIntegerField
      FieldName = 'FNotQty_8'
    end
    object IntegerField102: TIntegerField
      FieldName = 'FNotQty_9'
    end
    object IntegerField103: TIntegerField
      FieldName = 'FNotQty_10'
    end
    object IntegerField104: TIntegerField
      FieldName = 'FNotQty_11'
    end
    object IntegerField105: TIntegerField
      FieldName = 'FNotQty_12'
    end
    object IntegerField106: TIntegerField
      FieldName = 'FNotQty_13'
    end
    object IntegerField107: TIntegerField
      FieldName = 'FNotQty_14'
    end
    object IntegerField108: TIntegerField
      FieldName = 'FNotQty_15'
    end
    object IntegerField109: TIntegerField
      FieldName = 'FNotQty_16'
    end
    object IntegerField110: TIntegerField
      FieldName = 'FNotQty_17'
    end
    object IntegerField111: TIntegerField
      FieldName = 'FNotQty_18'
    end
    object IntegerField112: TIntegerField
      FieldName = 'FNotQty_19'
    end
    object IntegerField113: TIntegerField
      FieldName = 'FNotQty_20'
    end
    object IntegerField114: TIntegerField
      FieldName = 'FNotQty_21'
    end
    object IntegerField115: TIntegerField
      FieldName = 'FNotQty_22'
    end
    object IntegerField116: TIntegerField
      FieldName = 'FNotQty_23'
    end
    object IntegerField117: TIntegerField
      FieldName = 'FNotQty_24'
    end
    object IntegerField118: TIntegerField
      FieldName = 'FNotQty_25'
    end
    object IntegerField119: TIntegerField
      FieldName = 'FNotQty_26'
    end
    object IntegerField120: TIntegerField
      FieldName = 'FNotQty_27'
    end
    object IntegerField121: TIntegerField
      FieldName = 'FNotQty_28'
    end
    object IntegerField122: TIntegerField
      FieldName = 'FNotQty_29'
    end
    object IntegerField123: TIntegerField
      FieldName = 'FNotQty_30'
    end
    object IntegerField124: TIntegerField
      DisplayLabel = #38144#21806#21512#35745
      FieldKind = fkCalculated
      FieldName = 'FNotTotalQty'
      Calculated = True
    end
    object FloatField6: TFloatField
      DisplayLabel = #38144#21806#21514#29260#37329#39069
      FieldKind = fkCalculated
      FieldName = 'FDpNotAmount'
      Calculated = True
    end
    object StringField2: TStringField
      FieldName = 'cfsizegroupid'
      Size = 80
    end
    object IntegerField125: TIntegerField
      FieldName = 'FSaleQty_1'
    end
    object IntegerField126: TIntegerField
      FieldName = 'FSaleQty_2'
    end
    object IntegerField127: TIntegerField
      FieldName = 'FSaleQty_3'
    end
    object IntegerField128: TIntegerField
      FieldName = 'FSaleQty_4'
    end
    object IntegerField129: TIntegerField
      FieldName = 'FSaleQty_5'
    end
    object IntegerField130: TIntegerField
      FieldName = 'FSaleQty_6'
    end
    object IntegerField131: TIntegerField
      FieldName = 'FSaleQty_7'
    end
    object IntegerField132: TIntegerField
      FieldName = 'FSaleQty_8'
    end
    object IntegerField133: TIntegerField
      FieldName = 'FSaleQty_9'
    end
    object IntegerField134: TIntegerField
      FieldName = 'FSaleQty_10'
    end
    object IntegerField135: TIntegerField
      FieldName = 'FSaleQty_11'
    end
    object IntegerField136: TIntegerField
      FieldName = 'FSaleQty_12'
    end
    object IntegerField137: TIntegerField
      FieldName = 'FSaleQty_13'
    end
    object IntegerField138: TIntegerField
      FieldName = 'FSaleQty_14'
    end
    object IntegerField139: TIntegerField
      FieldName = 'FSaleQty_15'
    end
    object IntegerField140: TIntegerField
      FieldName = 'FSaleQty_16'
    end
    object IntegerField141: TIntegerField
      FieldName = 'FSaleQty_17'
    end
    object IntegerField142: TIntegerField
      FieldName = 'FSaleQty_18'
    end
    object IntegerField143: TIntegerField
      FieldName = 'FSaleQty_19'
    end
    object IntegerField144: TIntegerField
      FieldName = 'FSaleQty_20'
    end
    object IntegerField145: TIntegerField
      FieldName = 'FSaleQty_21'
    end
    object IntegerField146: TIntegerField
      FieldName = 'FSaleQty_22'
    end
    object IntegerField147: TIntegerField
      FieldName = 'FSaleQty_23'
    end
    object IntegerField148: TIntegerField
      FieldName = 'FSaleQty_24'
    end
    object IntegerField149: TIntegerField
      FieldName = 'FSaleQty_25'
    end
    object IntegerField150: TIntegerField
      FieldName = 'FSaleQty_26'
    end
    object IntegerField151: TIntegerField
      FieldName = 'FSaleQty_27'
    end
    object IntegerField152: TIntegerField
      FieldName = 'FSaleQty_28'
    end
    object IntegerField153: TIntegerField
      FieldName = 'FSaleQty_29'
    end
    object IntegerField154: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'FSaleQty_30'
      Calculated = True
    end
    object IntegerField155: TIntegerField
      DisplayLabel = #35843#20837#21512#35745
      FieldKind = fkCalculated
      FieldName = 'FSaleTotalQty'
      Calculated = True
    end
    object FloatField7: TFloatField
      DisplayLabel = #35843#20837#21514#29260#37329#39069
      FieldKind = fkCalculated
      FieldName = 'FSaleDpAmount'
      Calculated = True
    end
  end
  object dsAllDataList: TDataSource
    DataSet = cdsAllDataList
    Left = 648
    Top = 402
  end
  object cdsBillWarehouse: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 769
    Top = 299
    object cdsBillWarehouseOutWarehouseFID: TStringField
      FieldName = 'OutWarehouseFID'
      Size = 80
    end
    object cdsBillWarehouseInWarehouseFID: TStringField
      FieldName = 'InWarehouseFID'
      Size = 80
    end
  end
  object QrySizeGroupEntry: TADOQuery
    Parameters = <>
    Left = 840
    Top = 211
  end
  object cdsDetailDataList: TClientDataSet
    Aggregates = <>
    Params = <>
    OnCalcFields = cdsDownDataCalcFields
    Left = 560
    Top = 138
    object StringField3: TStringField
      FieldName = 'outWARHFID'
      Size = 80
    end
    object StringField6: TStringField
      FieldName = 'unitFID'
      Size = 60
    end
    object WideStringField29: TWideStringField
      FieldName = 'INWARHFID'
      Size = 44
    end
    object WideStringField40: TWideStringField
      FieldName = 'FMATERIALID'
      Size = 44
    end
    object WideStringField41: TWideStringField
      FieldName = 'CFCOLORID'
      Size = 44
    end
    object WideStringField42: TWideStringField
      FieldName = 'CFCUPID'
      Size = 44
    end
    object FloatField8: TFloatField
      DisplayLabel = #21514#29260#20215
      FieldName = 'CFDPPRICE'
    end
    object StringField7: TStringField
      FieldName = 'cfsizegroupid'
      Size = 80
    end
    object cdsDetailDataListFQty: TFloatField
      FieldName = 'FQty'
    end
    object cdsDetailDataListcfSizesID: TStringField
      FieldName = 'cfSizesID'
      Size = 80
    end
  end
  object cdsMaster: TClientDataSet
    Tag = 1
    Active = True
    Aggregates = <>
    Params = <>
    OnNewRecord = cdsMasterNewRecord
    Left = 880
    Top = 314
    Data = {
      2C0500009619E0BD01000000180000002C0000000000030000002C0503464944
      01004A000000010005574944544802000200580007464E554D42455201004A00
      0000010005574944544802000200A0000A4643524541544F52494401004A0000
      0001000557494454480200020058000B4643524541544554494D450800080000
      00000011464C41535455504441544555534552494401004A0000000100055749
      4454480200020058000F464C41535455504441544554494D4508000800000000
      000E46434F4E54524F4C554E4954494401004A00000001000557494454480200
      02005800084642495A4441544508000800000000000A4648414E444C45524944
      01004A00000001000557494454480200020058000C464445534352495054494F
      4E02004A00000001000557494454480200020020030C46484153454646454354
      454408000400000000000A4641554449544F52494401004A0000000100055749
      4454480200020058000D46534F5552434542494C4C494402004A000000010005
      57494454480200020040010F46534F5552434546554E4354494F4E02004A0000
      0001000557494454480200020040010A46415544495454494D45080008000000
      00000B4642415345535441545553080004000000000008464341525249455202
      004A00000001000557494454480200020090010E4653414C454F5247554E4954
      494401004A0000000100055749445448020002005800114653544F524147454F
      5247554E4954494401004A00000001000557494454480200020058000A464249
      5A54595045494401004A00000001000557494454480200020058000B4642494C
      4C54595045494401004A00000001000557494454480200020058001146534F55
      52434542494C4C54595045494401004A00000001000557494454480200020058
      0005465945415208000400000000000746504552494F44080004000000000011
      464D4F44494649434154494F4E54494D4508000800000000000B464D4F444946
      494552494401004A00000001000557494454480200020058000B464355525245
      4E4359494401004A00000001000557494454480200020058001146434F4D5041
      4E594F5247554E4954494401004A00000001000557494454480200020058000A
      4649535245564552534508000400000000000D4645584348414E474552415445
      08000400000000000C46434F4E564552544D4F444508000400000000000D4346
      53554242494C4C5459504502004A00000001000557494454480200020090010D
      4346505249434554595045494401004A00000001000557494454480200020058
      000D43464F5244455254595045494401004A0000000100055749445448020002
      0058000943465350454349414C01004A00000001000557494454480200020058
      000A4346494E50555457415901004A0000000100055749445448020002005800
      0C4346535550504C494552494401004A00000001000557494454480200020058
      000C43465055524F52444552494401004A000000010005574944544802000200
      5800104346534F5552434553504C49544E554D02004A00000001000557494454
      4802000200FC030A434653414C455459504501004A0000000100055749445448
      0200020058000A4346534849505459504501004A000000010005574944544802
      00020058000C4657415245484F555345494401004A0000000100055749445448
      0200020058000E46494E57415245484F555345494401004A0000000100055749
      44544802000200580010464F52444552435553544F4D4552494401004A000000
      01000557494454480200020058000000}
    object cdsMasterFID: TWideStringField
      FieldName = 'FID'
      Size = 44
    end
    object cdsMasterCFCustName: TStringField
      FieldKind = fkCalculated
      FieldName = 'CFCustName'
      Size = 80
      Calculated = True
    end
    object cdsMasterWideStringField2: TWideStringField
      FieldName = 'FNUMBER'
      Size = 80
    end
    object cdsMasterWideStringField3: TWideStringField
      FieldName = 'FCREATORID'
      Size = 44
    end
    object cdsMasterDateTimeField: TDateTimeField
      FieldName = 'FCREATETIME'
    end
    object cdsMasterWideStringField4: TWideStringField
      FieldName = 'FLASTUPDATEUSERID'
      Size = 44
    end
    object cdsMasterDateTimeField2: TDateTimeField
      FieldName = 'FLASTUPDATETIME'
    end
    object cdsMasterWideStringField5: TWideStringField
      FieldName = 'FCONTROLUNITID'
      Size = 44
    end
    object cdsMasterDateTimeField3: TDateTimeField
      FieldName = 'FBIZDATE'
    end
    object cdsMasterWideStringField6: TWideStringField
      FieldName = 'FHANDLERID'
      Size = 44
    end
    object cdsMasterWideStringField7: TWideStringField
      FieldName = 'FDESCRIPTION'
      Size = 400
    end
    object cdsMasterFloatField: TFloatField
      FieldName = 'FHASEFFECTED'
    end
    object cdsMasterWideStringField8: TWideStringField
      FieldName = 'FAUDITORID'
      Size = 44
    end
    object cdsMasterWideStringField9: TWideStringField
      FieldName = 'FSOURCEBILLID'
      Size = 160
    end
    object cdsMasterWideStringField10: TWideStringField
      FieldName = 'FSOURCEFUNCTION'
      Size = 160
    end
    object cdsMasterDateTimeField4: TDateTimeField
      FieldName = 'FAUDITTIME'
    end
    object cdsMasterFloatField2: TFloatField
      FieldName = 'FBASESTATUS'
    end
    object cdsMasterWideStringField11: TWideStringField
      FieldName = 'FCARRIER'
      Size = 200
    end
    object cdsMasterWideStringField12: TWideStringField
      FieldName = 'FSALEORGUNITID'
      Size = 44
    end
    object cdsMasterWideStringField13: TWideStringField
      FieldName = 'FSTORAGEORGUNITID'
      Size = 44
    end
    object cdsMasterWideStringField14: TWideStringField
      FieldName = 'FBIZTYPEID'
      Size = 44
    end
    object cdsMasterWideStringField15: TWideStringField
      FieldName = 'FBILLTYPEID'
      Size = 44
    end
    object cdsMasterWideStringField16: TWideStringField
      FieldName = 'FSOURCEBILLTYPEID'
      Size = 44
    end
    object cdsMasterFloatField3: TFloatField
      FieldName = 'FYEAR'
    end
    object cdsMasterFloatField4: TFloatField
      FieldName = 'FPERIOD'
    end
    object cdsMasterDateTimeField5: TDateTimeField
      FieldName = 'FMODIFICATIONTIME'
    end
    object cdsMasterWideStringField17: TWideStringField
      FieldName = 'FMODIFIERID'
      Size = 44
    end
    object cdsMasterWideStringField18: TWideStringField
      FieldName = 'FCURRENCYID'
      Size = 44
    end
    object cdsMasterWideStringField19: TWideStringField
      FieldName = 'FCOMPANYORGUNITID'
      Size = 44
    end
    object cdsMasterFloatField5: TFloatField
      FieldName = 'FISREVERSE'
    end
    object cdsMasterFloatField6: TFloatField
      FieldName = 'FEXCHANGERATE'
    end
    object cdsMasterFloatField7: TFloatField
      FieldName = 'FCONVERTMODE'
    end
    object cdsMasterWideStringField20: TWideStringField
      FieldName = 'CFSUBBILLTYPE'
      Size = 200
    end
    object cdsMasterWideStringField21: TWideStringField
      FieldName = 'CFPRICETYPEID'
      Size = 44
    end
    object cdsMasterWideStringField22: TWideStringField
      FieldName = 'CFORDERTYPEID'
      Size = 44
    end
    object cdsMasterWideStringField23: TWideStringField
      FieldName = 'CFSPECIAL'
      Size = 44
    end
    object cdsMasterWideStringField24: TWideStringField
      FieldName = 'CFINPUTWAY'
      Size = 44
    end
    object cdsMasterWideStringField25: TWideStringField
      FieldName = 'CFSUPPLIERID'
      Size = 44
    end
    object cdsMasterWideStringField26: TWideStringField
      FieldName = 'CFPURORDERID'
      Size = 44
    end
    object cdsMasterWideStringField27: TWideStringField
      FieldName = 'CFSOURCESPLITNUM'
      Size = 510
    end
    object cdsMasterWideStringField28: TWideStringField
      FieldName = 'CFSALETYPE'
      Size = 44
    end
    object cdsMasterWideStringField29: TWideStringField
      FieldName = 'CFSHIPTYPE'
      Size = 44
    end
    object cdsMasterWideStringField30: TWideStringField
      FieldName = 'FWAREHOUSEID'
      Size = 44
    end
    object cdsMasterWideStringField31: TWideStringField
      FieldName = 'FINWAREHOUSEID'
      Size = 44
    end
    object cdsMasterWideStringField32: TWideStringField
      FieldName = 'FORDERCUSTOMERID'
      Size = 44
    end
    object cdsMasterFCreatorName: TStringField
      FieldKind = fkCalculated
      FieldName = 'FCreatorName'
      Size = 50
      Calculated = True
    end
    object cdsMasterCFModifierName: TStringField
      FieldKind = fkCalculated
      FieldName = 'CFModifierName'
      Size = 0
      Calculated = True
    end
    object cdsMasterFAuditorName: TStringField
      FieldKind = fkCalculated
      FieldName = 'FAuditorName'
      Size = 50
      Calculated = True
    end
    object cdsMasterCFReceivWareName: TStringField
      FieldKind = fkCalculated
      FieldName = 'CFReceivWareName'
      Size = 80
      Calculated = True
    end
    object cdsMasterCFSendWareName: TStringField
      FieldKind = fkCalculated
      FieldName = 'CFSendWareName'
      Size = 60
      Calculated = True
    end
  end
  object cdsDetail: TClientDataSet
    Tag = 1
    Aggregates = <>
    Params = <>
    OnNewRecord = cdsDetailNewRecord
    Left = 880
    Top = 367
    object cdsDetailFID: TWideStringField
      FieldName = 'FID'
      Size = 44
    end
    object cdsDetailFSEQ: TFloatField
      FieldName = 'FSEQ'
    end
    object cdsDetailFMATERIALID: TWideStringField
      FieldName = 'FMATERIALID'
      Size = 44
    end
    object cdsDetailFASSISTPROPERTYID: TWideStringField
      FieldName = 'FASSISTPROPERTYID'
      Size = 44
    end
    object cdsDetailFUNITID: TWideStringField
      FieldName = 'FUNITID'
      Size = 44
    end
    object cdsDetailFSOURCEBILLNUMBER: TWideStringField
      FieldName = 'FSOURCEBILLNUMBER'
      Size = 160
    end
    object cdsDetailFSOURCEBILLENTRYSEQ: TFloatField
      FieldName = 'FSOURCEBILLENTRYSEQ'
    end
    object cdsDetailFASSCOEFFICIENT: TFloatField
      FieldName = 'FASSCOEFFICIENT'
    end
    object cdsDetailFBASESTATUS: TFloatField
      FieldName = 'FBASESTATUS'
    end
    object cdsDetailFASSOCIATEQTY: TFloatField
      FieldName = 'FASSOCIATEQTY'
    end
    object cdsDetailFSOURCEBILLTYPEID: TWideStringField
      FieldName = 'FSOURCEBILLTYPEID'
      Size = 44
    end
    object cdsDetailFBASEUNITID: TWideStringField
      FieldName = 'FBASEUNITID'
      Size = 44
    end
    object cdsDetailFASSISTUNITID: TWideStringField
      FieldName = 'FASSISTUNITID'
      Size = 44
    end
    object cdsDetailFREMARK: TWideStringField
      FieldName = 'FREMARK'
      Size = 400
    end
    object cdsDetailFREASONCODEID: TWideStringField
      FieldName = 'FREASONCODEID'
      Size = 44
    end
    object cdsDetailFPARENTID: TWideStringField
      FieldName = 'FPARENTID'
      Size = 44
    end
    object cdsDetailFDELIVERYDATE: TDateTimeField
      FieldName = 'FDELIVERYDATE'
    end
    object cdsDetailFDELIVERYADDRESS: TWideStringField
      FieldName = 'FDELIVERYADDRESS'
      Size = 510
    end
    object cdsDetailFTRANSLEADTIME: TFloatField
      FieldName = 'FTRANSLEADTIME'
    end
    object cdsDetailFISPRESENT: TFloatField
      FieldName = 'FISPRESENT'
    end
    object cdsDetailFCUSTPURNUMBER: TWideStringField
      FieldName = 'FCUSTPURNUMBER'
      Size = 200
    end
    object cdsDetailFQTY: TFloatField
      FieldName = 'FQTY'
    end
    object cdsDetailFASSISTQTY: TFloatField
      FieldName = 'FASSISTQTY'
    end
    object cdsDetailFSHIPPEDQTY: TFloatField
      FieldName = 'FSHIPPEDQTY'
    end
    object cdsDetailFUNSHIPPEDQTY: TFloatField
      FieldName = 'FUNSHIPPEDQTY'
    end
    object cdsDetailFPRICE: TFloatField
      FieldName = 'FPRICE'
    end
    object cdsDetailFORDERCUSTOMERID: TWideStringField
      FieldName = 'FORDERCUSTOMERID'
      Size = 44
    end
    object cdsDetailFSALEPERSONID: TWideStringField
      FieldName = 'FSALEPERSONID'
      Size = 44
    end
    object cdsDetailFAMOUNT: TFloatField
      FieldName = 'FAMOUNT'
    end
    object cdsDetailFDELIVERYTYPEID: TWideStringField
      FieldName = 'FDELIVERYTYPEID'
      Size = 44
    end
    object cdsDetailFSALEGROUPID: TWideStringField
      FieldName = 'FSALEGROUPID'
      Size = 44
    end
    object cdsDetailFADMINORGUNITID: TWideStringField
      FieldName = 'FADMINORGUNITID'
      Size = 44
    end
    object cdsDetailFSENDDATE: TDateTimeField
      FieldName = 'FSENDDATE'
    end
    object cdsDetailFWAREHOUSEID: TWideStringField
      FieldName = 'FWAREHOUSEID'
      Size = 44
    end
    object cdsDetailFSALEORDERID: TWideStringField
      FieldName = 'FSALEORDERID'
      Size = 44
    end
    object cdsDetailFSALEORDERENTRYID: TWideStringField
      FieldName = 'FSALEORDERENTRYID'
      Size = 44
    end
    object cdsDetailFSALEORDERNUMBER: TWideStringField
      FieldName = 'FSALEORDERNUMBER'
      Size = 200
    end
    object cdsDetailFSALEORDERENTRYSEQ: TFloatField
      FieldName = 'FSALEORDERENTRYSEQ'
    end
    object cdsDetailFBASEQTY: TFloatField
      FieldName = 'FBASEQTY'
    end
    object cdsDetailFSHIPPEDBASEQTY: TFloatField
      FieldName = 'FSHIPPEDBASEQTY'
    end
    object cdsDetailFLOCALAMOUNT: TFloatField
      FieldName = 'FLOCALAMOUNT'
    end
    object cdsDetailFREASON: TWideStringField
      FieldName = 'FREASON'
      Size = 160
    end
    object cdsDetailFTOTALREVERSEDQTY: TFloatField
      FieldName = 'FTOTALREVERSEDQTY'
    end
    object cdsDetailFTOTALREVERSEDBASEQTY: TFloatField
      FieldName = 'FTOTALREVERSEDBASEQTY'
    end
    object cdsDetailFSTOCKTRANSFERBILLID: TWideStringField
      FieldName = 'FSTOCKTRANSFERBILLID'
      Size = 44
    end
    object cdsDetailFSTOCKTRANSFERBILLENTRYID: TWideStringField
      FieldName = 'FSTOCKTRANSFERBILLENTRYID'
      Size = 44
    end
    object cdsDetailFSTOCKTRANSFERBILLNUMBER: TWideStringField
      FieldName = 'FSTOCKTRANSFERBILLNUMBER'
      Size = 160
    end
    object cdsDetailFSTOCKTRANSFERBILLENTRYSEQ: TFloatField
      FieldName = 'FSTOCKTRANSFERBILLENTRYSEQ'
    end
    object cdsDetailFLOCATIONID: TWideStringField
      FieldName = 'FLOCATIONID'
      Size = 44
    end
    object cdsDetailFLOT: TWideStringField
      FieldName = 'FLOT'
      Size = 160
    end
    object cdsDetailFPLANDELIVERYQTY: TFloatField
      FieldName = 'FPLANDELIVERYQTY'
    end
    object cdsDetailFDELIVERYCUSTOMERID: TWideStringField
      FieldName = 'FDELIVERYCUSTOMERID'
      Size = 44
    end
    object cdsDetailFRECEIVECUSTOMERID: TWideStringField
      FieldName = 'FRECEIVECUSTOMERID'
      Size = 44
    end
    object cdsDetailFPAYMENTCUSTOMERID: TWideStringField
      FieldName = 'FPAYMENTCUSTOMERID'
      Size = 44
    end
    object cdsDetailFSOURCEBILLID: TWideStringField
      FieldName = 'FSOURCEBILLID'
      Size = 160
    end
    object cdsDetailFSOURCEBILLENTRYID: TWideStringField
      FieldName = 'FSOURCEBILLENTRYID'
      Size = 160
    end
    object cdsDetailFNETORDERBILLNUMBER: TWideStringField
      FieldName = 'FNETORDERBILLNUMBER'
      Size = 160
    end
    object cdsDetailFNETORDERBILLID: TWideStringField
      FieldName = 'FNETORDERBILLID'
      Size = 88
    end
    object cdsDetailFNETORDERBILLENTRYID: TWideStringField
      FieldName = 'FNETORDERBILLENTRYID'
      Size = 88
    end
    object cdsDetailFPROJECTID: TWideStringField
      FieldName = 'FPROJECTID'
      Size = 44
    end
    object cdsDetailFTRACKNUMBERID: TWideStringField
      FieldName = 'FTRACKNUMBERID'
      Size = 44
    end
    object cdsDetailCFCUPID: TWideStringField
      FieldName = 'CFCUPID'
      Size = 44
    end
    object cdsDetailCFMUTILSOURCEBILL: TWideStringField
      FieldName = 'CFMUTILSOURCEBILL'
      Size = 400
    end
    object cdsDetailCFPACKID: TWideStringField
      FieldName = 'CFPACKID'
      Size = 44
    end
    object cdsDetailCFSIZESID: TWideStringField
      FieldName = 'CFSIZESID'
      Size = 44
    end
    object cdsDetailCFCOLORID: TWideStringField
      FieldName = 'CFCOLORID'
      Size = 44
    end
    object cdsDetailCFPACKNUM: TFloatField
      FieldName = 'CFPACKNUM'
    end
    object cdsDetailCFSIZEGROUPID: TWideStringField
      FieldName = 'CFSIZEGROUPID'
      Size = 44
    end
    object cdsDetailCFUNITPRICE: TFloatField
      FieldName = 'CFUNITPRICE'
    end
    object cdsDetailCFDISCOUNT: TFloatField
      FieldName = 'CFDISCOUNT'
    end
    object cdsDetailCFCANCELQTY: TFloatField
      FieldName = 'CFCANCELQTY'
    end
    object cdsDetailCFSTOPNUM: TFloatField
      FieldName = 'CFSTOPNUM'
    end
    object cdsDetailCFISPURIN: TFloatField
      FieldName = 'CFISPURIN'
    end
    object cdsDetailCFPURINQTY: TFloatField
      FieldName = 'CFPURINQTY'
    end
    object cdsDetailFACTUALPRICE: TFloatField
      FieldName = 'FACTUALPRICE'
    end
    object cdsDetailCFDPPRICE: TFloatField
      FieldName = 'CFDPPRICE'
    end
  end
  object dsOrdertype: TDataSource
    DataSet = CliDM.cdsOrderType
    Left = 41
    Top = 313
  end
  object dsShipType: TDataSource
    DataSet = CliDM.cdsShipType
    Left = 305
    Top = 481
  end
end
