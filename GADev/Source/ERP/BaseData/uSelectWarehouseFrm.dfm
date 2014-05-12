inherited SelectWarehouseFrm: TSelectWarehouseFrm
  Caption = 'SelectWarehouseFrm'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 12
  inherited Pl: TPanel
    inherited Panel1: TPanel
      inherited Splitter2: TSplitter
        Left = 522
      end
      inherited cxGrid1: TcxGrid
        Width = 522
      end
      inherited Panel2: TPanel
        Left = 525
        Width = 269
        inherited cxGrid3: TcxGrid
          Width = 237
        end
      end
      inherited Panel3: TPanel
        inherited chkTop100: TcxCheckBox
          Width = 125
        end
        object CheckBox1: TcxCheckBox
          Left = 552
          Top = 2
          Caption = #21253#25324#24215#38138
          TabOrder = 2
          OnClick = CheckBox1Click
          Width = 121
        end
      end
    end
  end
  inherited p_top: TPanel
    Caption = ''
    inherited SpeedButton2: TSpeedButton
      Caption = #20998#25903#26426#26500
    end
    inherited bt_Group: TSpeedButton
      Enabled = False
    end
  end
end
