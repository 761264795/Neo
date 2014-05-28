inherited DMoveIssueListFrm: TDMoveIssueListFrm
  Left = 191
  Top = 30
  Caption = #31934#21697#35843#25320#20986#24211#26597#35810
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
      Left = 768
    end
    inherited btn_DelBill: TSpeedButton
      Left = 841
    end
    inherited spt_Audit: TSpeedButton
      Left = 914
    end
    inherited spt_uAudit: TSpeedButton
      Left = 981
    end
    inherited spt_Print: TSpeedButton
      Left = 242
    end
    inherited spt_upQuery: TSpeedButton
      Left = 128
    end
    inherited spt_DownQuery: TSpeedButton
      Left = 184
    end
    inherited spt_ZBFX: TSpeedButton
      Left = 313
    end
  end
end
