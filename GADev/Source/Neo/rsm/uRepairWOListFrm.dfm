inherited RepairWOListFrm: TRepairWOListFrm
  Left = -8
  Top = -8
  Caption = #32500#20462#24037#21333
  ClientHeight = 705
  ClientWidth = 1366
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 12
  inherited Panel1: TPanel
    Width = 1366
    Height = 677
    inherited pl_right: TPanel
      Left = 1196
      Height = 677
      inherited Panel5: TPanel
        Height = 647
        inherited cxGrid2: TcxGrid
          Height = 645
          inherited cxReport: TcxGridDBTableView
            inherited cxReportFReportName: TcxGridDBColumn
              Properties.Prefix = ''
            end
          end
        end
      end
    end
    inherited Panel3: TPanel
      Width = 1196
      Height = 677
      inherited Splitter1: TSplitter
        Top = 81
        Width = 1196
      end
      inherited pnTop: TPanel
        Width = 1196
        Height = 81
        inherited lb_Report: TLabel
          Left = 1175
          Height = 79
        end
        inherited btnSearch: TcxButton
          Left = 1028
          Top = 48
        end
        inherited recCount: TcxComboBox
          Left = 1024
          Top = 0
          Width = 79
        end
        object cxLabel1: TcxLabel
          Left = 8
          Top = 9
          Caption = #32500#20462#24037#21333#21495
          ParentFont = False
          Style.Font.Charset = GB2312_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = #23435#20307
          Style.Font.Style = []
          Style.IsFontAssigned = True
        end
        object cxLabel2: TcxLabel
          Left = 366
          Top = 9
          Caption = #36710#29260#21495
        end
        object cxLabel3: TcxLabel
          Left = 696
          Top = 9
          Caption = #24213#30424#21495
        end
        object cxLabel4: TcxLabel
          Left = 366
          Top = 33
          Caption = #33267
        end
        object cxLabel5: TcxLabel
          Left = 8
          Top = 33
          Caption = #36827#21378#26102#38388
        end
        object cxLabel6: TcxLabel
          Left = 696
          Top = 33
          Caption = #21333#25454#29366#24577
        end
        object cxLabel7: TcxLabel
          Left = 8
          Top = 57
          Caption = #21697#29260
        end
        object cxLabel8: TcxLabel
          Left = 366
          Top = 57
          Caption = #26381#21153#39038#38382
        end
        object cxLabel9: TcxLabel
          Left = 696
          Top = 57
          Caption = #32467#31639#25171#21360
        end
        object cxtxtNum: TcxTextEdit
          Left = 72
          Top = 5
          ParentFont = False
          Style.Color = clWindow
          Style.Font.Charset = GB2312_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = #23435#20307
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 11
          OnKeyPress = VehicleKeyPress
          Width = 200
        end
        object cxtxtPlateNum: TcxTextEdit
          Left = 424
          Top = 5
          Style.Color = clWindow
          TabOrder = 12
          OnKeyPress = VehicleKeyPress
          Width = 200
        end
        object cxtxtVin: TcxTextEdit
          Left = 760
          Top = 5
          Style.Color = clWindow
          TabOrder = 13
          OnKeyPress = VehicleKeyPress
          Width = 200
        end
        object cxdtCometimeFrom: TcxDateEdit
          Left = 72
          Top = 29
          TabOrder = 14
          Width = 200
        end
        object cxdtCometimeTo: TcxDateEdit
          Left = 424
          Top = 29
          TabOrder = 15
          Width = 200
        end
        object cbbStatus: TcxLookupComboBox
          Left = 760
          Top = 29
          Properties.KeyFieldNames = 'FNumber'
          Properties.ListColumns = <
            item
              FieldName = 'FName'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dsStatus
          TabOrder = 16
          Width = 200
        end
        object cbbIsPrinted: TcxLookupComboBox
          Left = 760
          Top = 53
          Properties.KeyFieldNames = 'FNumber'
          Properties.ListColumns = <
            item
              FieldName = 'FName'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dsIsSettlePrinted
          TabOrder = 17
          Width = 200
        end
        object cxEditSA: TcxButtonEdit
          Left = 424
          Top = 53
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = cxEditSAPropertiesButtonClick
          TabOrder = 18
          OnKeyPress = cxEditSAKeyPress
          Width = 200
        end
        object cxEditBrand: TcxButtonEdit
          Left = 72
          Top = 53
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = cxEditBrandPropertiesButtonClick
          TabOrder = 19
          OnKeyPress = cxEditBrandKeyPress
          Width = 200
        end
      end
      inherited cxPage: TcxPageControl
        Top = 87
        Width = 1196
        Height = 590
        ClientRectBottom = 572
        ClientRectRight = 1196
        inherited tb_Grid: TcxTabSheet
          inherited cxGrid1: TcxGrid
            Width = 1196
            Height = 572
          end
        end
        inherited tb_chart: TcxTabSheet
          inherited Panel2: TPanel
            inherited cxComBox_X: TcxComboBox
              Style.IsFontAssigned = True
            end
            inherited cxComBox_Y: TcxComboBox
              Style.IsFontAssigned = True
            end
            inherited cxComBox_Y2: TcxComboBox
              Style.IsFontAssigned = True
            end
            inherited cxComBox_Y3: TcxComboBox
              Style.IsFontAssigned = True
            end
            inherited v_item: TcxComboBox
              Style.IsFontAssigned = True
            end
          end
        end
      end
    end
  end
  inherited p_top: TPanel
    Width = 1366
    inherited Image2: TImage
      Width = 1364
    end
    inherited btn_NewBill: TSpeedButton
      OnClick = btn_NewBillClick
    end
    inherited spt_Audit: TSpeedButton
      Left = 850
      Visible = False
    end
    inherited spt_uAudit: TSpeedButton
      Left = 917
      Visible = False
    end
    inherited spt_Print: TSpeedButton
      Left = 274
    end
    inherited spt_upQuery: TSpeedButton
      Left = 344
    end
    inherited spt_DownQuery: TSpeedButton
      Left = 400
    end
    inherited spt_ZBFX: TSpeedButton
      Left = 617
    end
    inherited SpeedButton6: TSpeedButton
      Left = 457
    end
    inherited SpeedButton7: TSpeedButton
      Left = 536
    end
  end
  inherited SaveDg: TSaveDialog
    Left = 731
    Top = 250
  end
  inherited cxStyleRepository1: TcxStyleRepository
    Left = 664
    Top = 176
  end
  inherited cxStyleRepository2: TcxStyleRepository
    Left = 816
    Top = 160
  end
  inherited cxStyleRepository3: TcxStyleRepository
    Left = 736
    Top = 160
  end
  inherited cdsBillFindList: TClientDataSet
    Left = 1033
    Top = 110
  end
  inherited cdsQueryCondition: TClientDataSet
    Left = 970
    Top = 88
  end
  object dsStatus: TDataSource
    DataSet = cdsStatus
    Left = 688
  end
  object dsIsSettlePrinted: TDataSource
    DataSet = cdsIsSettlePrinted
    Left = 544
    Top = 80
  end
  object cdsStatus: TClientDataSet
    Aggregates = <>
    Params = <>
    OnFilterRecord = cdsListFilterRecord
    Left = 744
    Top = 65528
    object cdsStatusFNumber: TWideStringField
      FieldName = 'FNumber'
      Size = 100
    end
    object cdsStatusFName: TWideStringField
      FieldName = 'FName'
      Size = 100
    end
  end
  object cdsIsSettlePrinted: TClientDataSet
    Aggregates = <>
    Params = <>
    OnFilterRecord = cdsListFilterRecord
    Left = 640
    Top = 72
    object cdsIsSettlePrintedFNumber: TWideStringField
      FieldName = 'FNumber'
      Size = 100
    end
    object cdsIsSettlePrintedFName: TWideStringField
      FieldName = 'FName'
      Size = 100
    end
  end
end
