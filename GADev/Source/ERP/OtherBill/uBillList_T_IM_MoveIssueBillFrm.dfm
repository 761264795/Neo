inherited FM_BillListT_IM_MoveIssueBill: TFM_BillListT_IM_MoveIssueBill
  Left = 143
  Top = 32
  Caption = #35843#25320#20986#24211#21333#21015#34920
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 12
  inherited Panel1: TPanel
    inherited pl_right: TPanel
      inherited Panel5: TPanel
        inherited cxGrid2: TcxGrid
          inherited cxReport: TcxGridDBTableView
            inherited cxReportFReportName: TcxGridDBColumn
              Properties.StartKey = 16397
              Properties.Prefix = ''
            end
          end
        end
      end
    end
    inherited Panel3: TPanel
      inherited pnTop: TPanel
        inherited txt_Filter: TcxTextEdit
          Properties.OnChange = nil
        end
      end
      inherited cxPage: TcxPageControl
        inherited tb_chart: TcxTabSheet
          inherited Panel2: TPanel
            inherited SpeedButton1: TSpeedButton
              OnClick = nil
            end
            inherited SpeedButton2: TSpeedButton
              OnClick = nil
            end
            inherited SpeedButton3: TSpeedButton
              OnClick = nil
            end
            inherited SpeedButton4: TSpeedButton
              OnClick = nil
            end
            inherited SpeedButton5: TSpeedButton
              OnClick = nil
            end
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
            inherited CheckBox1: TCheckBox
              OnClick = nil
            end
            inherited v_item: TcxComboBox
              Properties.OnCloseUp = nil
              Style.IsFontAssigned = True
            end
            inherited BitBtn1: TcxButton
              Anchors = [akLeft, akTop, akRight]
              OnClick = nil
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
  inherited Pm_Chart: TPopupMenu
    inherited N2: TMenuItem
      OnClick = nil
    end
    inherited N4: TMenuItem
      OnClick = nil
    end
    inherited N3: TMenuItem
      OnClick = nil
    end
    inherited Bmp1: TMenuItem
      OnClick = nil
    end
    inherited MenuItem1: TMenuItem
      OnClick = nil
    end
    inherited N5: TMenuItem
      OnClick = nil
    end
    inherited N7: TMenuItem
      inherited N8: TMenuItem
        OnClick = nil
      end
      inherited N9: TMenuItem
        OnClick = nil
      end
    end
    inherited N10: TMenuItem
      OnClick = nil
    end
  end
end
