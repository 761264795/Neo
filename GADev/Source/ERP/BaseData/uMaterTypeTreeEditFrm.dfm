inherited MaterTypeTreeEditFrm: TMaterTypeTreeEditFrm
  Caption = #29289#26009#20998#31867#32500#25252
  PixelsPerInch = 96
  TextHeight = 12
  inherited Panel1: TPanel
    inherited GroupBox1: TGroupBox
      Caption = #29289#26009#20998#31867
    end
    inherited GroupBox2: TGroupBox
      inherited chk_Sytem: TcxDBCheckBox
        Width = 78
      end
      inherited cb_imgindex: TdxImageComboBox
        SaveStrings = ()
      end
      inherited cxDBCheckBox1: TcxDBCheckBox
        Left = 185
      end
    end
  end
  inherited cdsMenu: TClientDataSet
    object cdsMenuFgroupstandard: TWideStringField
      FieldName = 'Fgroupstandard'
      Size = 100
    end
    object cdsMenufcontrolunitid: TWideStringField
      FieldName = 'fcontrolunitid'
      Size = 44
    end
    object cdsMenuFdisplayname_L2: TWideStringField
      FieldName = 'Fdisplayname_L2'
      Size = 100
    end
  end
end
