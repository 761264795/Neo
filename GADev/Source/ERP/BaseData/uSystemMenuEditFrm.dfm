inherited SystemMenuEditFrm: TSystemMenuEditFrm
  Left = 419
  Top = 114
  Caption = #31995#32479#30446#24405#32500#25252
  PixelsPerInch = 96
  TextHeight = 12
  inherited Panel1: TPanel
    inherited GroupBox2: TGroupBox
      inherited Label3: TLabel
        Top = 120
      end
      object Label4: TLabel [3]
        Left = 15
        Top = 93
        Width = 57
        Height = 12
        AutoSize = False
        Caption = #21161#35760#30721
      end
      inherited spe_imgindex: TcxDBSpinEdit
        Top = 116
      end
      inherited chk_Sytem: TcxDBCheckBox
        Top = 148
      end
      inherited btn_Config: TcxButton
        Top = 192
        TabOrder = 7
      end
      inherited cb_imgindex: TdxImageComboBox
        Top = 115
        SaveStrings = ()
      end
      inherited cxDBCheckBox1: TcxDBCheckBox
        Top = 148
      end
      object txt_fhelpCode: TcxDBTextEdit
        Left = 97
        Top = 88
        DataBinding.DataField = 'fhelpcode'
        DataBinding.DataSource = dsMenu
        TabOrder = 4
        Width = 161
      end
    end
  end
  inherited cdsMenu: TClientDataSet
    inherited cdsMenuFNAME_L2: TWideStringField
      OnChange = cdsMenuFNAME_L2Change
    end
    object cdsMenufhelpcode: TWideStringField
      FieldName = 'fhelpcode'
      Size = 200
    end
  end
end
