inherited CodeTableFrm: TCodeTableFrm
  Left = 237
  Top = 182
  Caption = #26465#30721#23545#29031#34920
  PixelsPerInch = 96
  TextHeight = 12
  inherited p_top: TPanel
    inherited btn_NewRow: TSpeedButton
      OnClick = btn_NewRowClick
    end
    inherited spt_Edit: TSpeedButton
      OnClick = spt_EditClick
    end
  end
  inherited Panel2: TPanel
    inherited Panel3: TPanel
      inherited cxGrid2: TcxGrid
        inherited cxDetail: TcxGridDBTableView
          OnCellDblClick = cxDetailCellDblClick
        end
      end
      inherited Panel5: TPanel
        inherited Edit1: TcxTextEdit
          Style.IsFontAssigned = True
        end
      end
    end
  end
end
