inherited SelectClientFrm: TSelectClientFrm
  Caption = 'SelectClientFrm'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 12
  inherited Pl: TPanel
    inherited Panel1: TPanel
      inherited Panel3: TPanel
        inherited Edit1: TcxTextEdit
          Left = 151
          Top = 0
          ParentFont = False
          Style.Font.Height = -13
          Style.IsFontAssigned = True
          Width = 281
        end
        inherited chkTop100: TcxCheckBox
          Left = 438
          Top = 0
        end
      end
    end
  end
  inherited adsSelect: TADODataSet
    Left = 764
    Top = 263
  end
  inherited adsTree: TClientDataSet
    object adsTreeFdisplayname_L2: TWideStringField
      FieldName = 'Fdisplayname_L2'
      Size = 0
    end
  end
end
