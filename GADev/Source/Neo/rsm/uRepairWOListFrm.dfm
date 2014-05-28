inherited RepairWOListFrm: TRepairWOListFrm
  Left = 165
  Top = 226
  Caption = #32500#20462#24037#21333
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 12
  inherited Panel1: TPanel
    inherited pl_right: TPanel
      inherited Panel5: TPanel
        inherited cxGrid2: TcxGrid
          inherited cxReport: TcxGridDBTableView
            inherited cxReportFReportName: TcxGridDBColumn
              Properties.Prefix = ''
            end
          end
        end
      end
    end
    inherited Panel3: TPanel
      inherited Splitter1: TSplitter
        Top = 105
      end
      inherited pnTop: TPanel
        Height = 105
        inherited lb_Report: TLabel
          Height = 103
        end
        inherited btnSearch: TcxButton
          Left = 776
          Top = 48
        end
        inherited recCount: TcxComboBox
          Left = 784
        end
        object cxLabel1: TcxLabel
          Left = 8
          Top = 9
          Caption = #32500#20462#24037#21333#21495
        end
        object cxLabel2: TcxLabel
          Left = 294
          Top = 9
          Caption = #36710#29260#21495
        end
        object cxLabel3: TcxLabel
          Left = 552
          Top = 9
          Caption = #24213#30424#21495
        end
        object cxLabel4: TcxLabel
          Left = 294
          Top = 29
          Caption = #33267
        end
        object cxLabel5: TcxLabel
          Left = 8
          Top = 29
          Caption = #36827#21378#26102#38388
        end
        object cxLabel6: TcxLabel
          Left = 552
          Top = 29
          Caption = #21333#25454#29366#24577
        end
        object cxLabel7: TcxLabel
          Left = 8
          Top = 49
          Caption = #21697#29260
        end
        object cxLabel8: TcxLabel
          Left = 294
          Top = 49
          Caption = #26381#21153#39038#38382
        end
        object cxLabel9: TcxLabel
          Left = 552
          Top = 49
          Caption = #32467#31639#25171#21360
        end
        object cxtxtNum: TcxTextEdit
          Left = 72
          Top = 9
          Style.Color = clWindow
          TabOrder = 11
          OnKeyPress = VehicleKeyPress
          Width = 145
        end
        object cxtxtPlateNum: TcxTextEdit
          Left = 352
          Top = 9
          Style.Color = clWindow
          TabOrder = 12
          OnKeyPress = VehicleKeyPress
          Width = 145
        end
        object cxtxtVin: TcxTextEdit
          Left = 616
          Top = 9
          Style.Color = clWindow
          TabOrder = 13
          OnKeyPress = VehicleKeyPress
          Width = 145
        end
        object cxdtCometimeFrom: TcxDateEdit
          Left = 72
          Top = 29
          TabOrder = 14
          Width = 145
        end
        object cxdtCometimeTo: TcxDateEdit
          Left = 352
          Top = 29
          TabOrder = 15
          Width = 145
        end
        object cbbStatus: TcxLookupComboBox
          Left = 616
          Top = 29
          Properties.KeyFieldNames = 'FNumber'
          Properties.ListColumns = <
            item
              FieldName = 'FName'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dsStatus
          TabOrder = 16
          Width = 145
        end
        object cbbIsPrinted: TcxLookupComboBox
          Left = 616
          Top = 49
          Properties.KeyFieldNames = 'FNumber'
          Properties.ListColumns = <
            item
              FieldName = 'FName'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dsIsSettlePrinted
          TabOrder = 17
          Width = 145
        end
        object cxEditSA: TcxButtonEdit
          Left = 352
          Top = 49
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = cxEditSAPropertiesButtonClick
          TabOrder = 18
          OnKeyPress = cxEditSAKeyPress
          Width = 145
        end
        object cxEditBrand: TcxButtonEdit
          Left = 72
          Top = 49
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = cxEditBrandPropertiesButtonClick
          TabOrder = 19
          OnKeyPress = cxEditBrandKeyPress
          Width = 145
        end
      end
      inherited cxPage: TcxPageControl
        Top = 111
        Height = 521
        ClientRectBottom = 503
        inherited tb_Grid: TcxTabSheet
          inherited cxGrid1: TcxGrid
            Height = 503
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
    Left = 841
    Top = 86
  end
  inherited cdsQueryCondition: TClientDataSet
    Left = 858
    Top = 48
  end
  object dsStatus: TDataSource
    DataSet = cdsStatus
    Left = 512
    Top = 32
  end
  object dsIsSettlePrinted: TDataSource
    DataSet = cdsIsSettlePrinted
    Left = 536
    Top = 96
  end
  object cdsStatus: TClientDataSet
    Aggregates = <>
    Params = <>
    OnFilterRecord = cdsListFilterRecord
    Left = 592
    Top = 32
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
    Left = 600
    Top = 96
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
