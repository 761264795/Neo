inherited CashDiscountRpt: TCashDiscountRpt
  Top = 36
  Caption = #20195#37329#21048#25269#25187#25253#34920
  ClientHeight = 655
  PixelsPerInch = 96
  TextHeight = 12
  inherited Panel1: TPanel
    Height = 627
    inherited pl_right: TPanel
      Height = 627
      inherited Panel5: TPanel
        Height = 597
        inherited cxGrid2: TcxGrid
          Height = 595
          inherited cxReport: TcxGridDBTableView
            inherited cxReportFReportName: TcxGridDBColumn
              Properties.Prefix = ''
            end
          end
        end
      end
    end
    inherited Panel3: TPanel
      Height = 627
      inherited cxPage: TcxPageControl
        Height = 532
        ClientRectBottom = 532
        inherited tb_Grid: TcxTabSheet
          inherited cxGrid1: TcxGrid
            Height = 532
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
end
