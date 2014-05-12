inherited FM_BillListSaleIssue: TFM_BillListSaleIssue
  Caption = #38144#21806#20986#24211#21333#26597#35810
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
      inherited cxPage: TcxPageControl
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
    inherited SpeedButton6: TSpeedButton
      OnClick = SpeedButton6Click
    end
  end
end
