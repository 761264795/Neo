inherited Frm_BillListPOS: TFrm_BillListPOS
  Left = 126
  Top = 45
  Caption = 'POS'#21333#25454#21015#34920
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
        inherited tb_Grid: TcxTabSheet
          inherited cxGrid1: TcxGrid
            inherited dbgList: TcxGridDBTableView
              OptionsSelection.CellMultiSelect = True
            end
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
  inherited cdsList: TClientDataSet
    Left = 208
    Top = 192
  end
  inherited dsList: TDataSource
    Left = 208
    Top = 240
  end
  inherited actList: TActionList
    object actSetBalance: TAction
      Caption = #25209#37327#20462#25913#36820#28857#20449#24687
      OnExecute = actSetBalanceExecute
    end
  end
  inherited pmDetail: TPopupMenu
    OnPopup = pmDetailPopup
    object itme_PlayView: TMenuItem [1]
      Caption = #26597#30475#25910#38134#26126#32454'...'
      OnClick = itme_PlayViewClick
    end
    object UpFind: TMenuItem
      Caption = #19978#26597#26469#28304#21333'...'
      OnClick = UpFindClick
    end
    object DownFind: TMenuItem
      Caption = #19979#26597#36864#36135#21333'...'
      OnClick = DownFindClick
    end
  end
  object qryList: TADOQuery
    Connection = CliDM.conClient
    LockType = ltBatchOptimistic
    Parameters = <>
    Left = 440
    Top = 176
  end
end
