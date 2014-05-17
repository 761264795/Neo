inherited SelectWarehouseFrm: TSelectWarehouseFrm
  Caption = 'SelectWarehouseFrm'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Pl: TPanel
    inherited Panel1: TPanel
      inherited Splitter2: TSplitter
        Left = 413
      end
      inherited cxGrid1: TcxGrid
        Width = 413
      end
      inherited Panel2: TPanel
        Left = 416
        Width = 291
        inherited cxGrid3: TcxGrid
          Width = 259
        end
      end
      inherited Panel3: TPanel
        object CheckBox1: TCheckBox
          Left = 621
          Top = 5
          Width = 82
          Height = 17
          Anchors = [akTop, akRight]
          Caption = #21253#25324#24215#38138
          TabOrder = 3
          OnClick = CheckBox1Click
        end
      end
    end
  end
end
