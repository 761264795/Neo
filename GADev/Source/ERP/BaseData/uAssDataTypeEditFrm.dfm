inherited AssDataTypeEditFrm: TAssDataTypeEditFrm
  Caption = #36741#21161#36164#26009#20998#31867#32500#25252
  PixelsPerInch = 96
  TextHeight = 12
  inherited Panel1: TPanel
    inherited GroupBox2: TGroupBox
      inherited Label3: TLabel
        Top = 138
      end
      object Label5: TLabel [3]
        Left = 15
        Top = 91
        Width = 57
        Height = 12
        AutoSize = False
        Caption = #34920#21517
      end
      object Label4: TLabel [4]
        Left = 15
        Top = 115
        Width = 57
        Height = 12
        AutoSize = False
        Caption = 'BosTypeID'
      end
      inherited spe_imgindex: TcxDBSpinEdit
        Top = 134
        TabOrder = 4
      end
      inherited chk_Sytem: TcxDBCheckBox
        Top = 166
        TabOrder = 5
        Width = 81
      end
      inherited btn_Config: TcxButton
        Left = 175
        Top = 206
        TabOrder = 6
      end
      inherited cb_imgindex: TdxImageComboBox
        Top = 132
        TabOrder = 3
        SaveStrings = ()
      end
      inherited cxDBCheckBox1: TcxDBCheckBox
        Top = 163
        TabOrder = 7
        Width = 75
      end
      object txt_TableName: TcxDBTextEdit
        Left = 97
        Top = 86
        DataBinding.DataField = 'FTableName'
        DataBinding.DataSource = dsMenu
        TabOrder = 2
        Width = 161
      end
      object txt_CFBOSTYPE: TcxDBTextEdit
        Left = 97
        Top = 110
        DataBinding.DataField = 'CFBOSTYPE'
        DataBinding.DataSource = dsMenu
        TabOrder = 8
        Width = 161
      end
    end
  end
  inherited cdsMenu: TClientDataSet
    object cdsMenuFTableName: TWideStringField
      DisplayWidth = 80
      FieldName = 'FTableName'
      Size = 100
    end
    object cdsMenuCFBOSTYPE: TWideStringField
      FieldName = 'CFBOSTYPE'
      Size = 40
    end
  end
end
