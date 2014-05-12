inherited SmsSystemSetFrm: TSmsSystemSetFrm
  Caption = #30701#20449#24179#21488#35774#32622
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 12
  object p_top: TPanel
    Left = 0
    Top = 0
    Width = 912
    Height = 25
    Align = alTop
    TabOrder = 0
    object Image1: TImage
      Left = 1
      Top = 1
      Width = 910
      Height = 23
      Align = alClient
      Stretch = True
    end
    object btn_Save: TSpeedButton
      Left = 0
      Top = 0
      Width = 73
      Height = 25
      Caption = #20445#23384'(&S)'
      Flat = True
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
        FF00AD5A5A00AD525200A54A4A00AD949400C6CEC600CECECE00CECECE00CECE
        C600C6CECE00B59C9C009C4242009C424200A5525200FFFFFF00FFFFFF00BD7B
        7300CE636300D66B6B00BD5A5A009C848400BDA5A500E7D6CE00FFFFF700FFFF
        FF00F7F7F700D6B5B500942929009C313100C65A5A00B55A5A00FFFFFF00BD7B
        7300CE636300CE636300BD5A5A009C7B7B009C424200B5737300E7DEDE00FFFF
        FF00FFFFFF00DEBDBD00942929009C313100C65A5A00AD5A5A00FFFFFF00BD7B
        7300CE636300CE636300BD5A5A00AD8484009C3939009C313100CEBDBD00F7F7
        EF00FFFFFF00E7C6C600942929009C313100C65A5A00AD5A5A00FFFFFF00BD7B
        7300CE636300CE636300B55A5A00B58C8C009C4A4A0094313100A59C9C00D6DE
        DE00FFFFFF00E7CECE009429290094313100BD5A5A00AD5A5A00FFFFFF00BD7B
        7300CE636300CE636300BD5A5A00C6948C00C6949400B5848400AD8C8C00BDA5
        A500E7CECE00DEADAD00A5393900A5393900C65A5A00AD525A00FFFFFF00BD7B
        7300CE636300CE636300CE636300CE636300CE636300CE636300CE636300CE5A
        5A00CE5A5A00CE636300CE636300CE636300CE6B6B00AD525200FFFFFF00BD7B
        7300B5525200B55A5200C6848400D6A5A500D6ADAD00D6ADAD00D6ADAD00D6A5
        A500D6ADA500D6ADAD00D6ADAD00D69C9C00CE636300AD525200FFFFFF00BD7B
        7300B54A4A00E7CECE00FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7
        F700FFF7F700FFF7F700FFFFFF00DEBDBD00C65A5A00AD525200FFFFFF00BD7B
        7300B5524A00EFD6D600FFFFFF00F7F7EF00F7F7F700F7F7F700F7F7F700F7F7
        F700F7F7F700F7F7F700FFFFFF00DEBDBD00C65A5A00AD525200FFFFFF00BD7B
        7300B5524A00EFD6D600F7EFEF00DED6D600DED6D600DED6D600DED6D600DED6
        D600DED6D600DED6D600EFEFEF00E7BDBD00C65A5A00AD525200FFFFFF00BD7B
        7300B5524A00EFD6D600F7F7F700DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
        DE00DEDEDE00DEDEDE00EFEFEF00E7BDBD00C65A5A00AD525200FFFFFF00BD7B
        7300B5524A00EFD6D600F7F7F700E7DEDE00E7E7E700E7E7E700E7E7E700E7E7
        E700E7E7E700E7DEDE00F7F7F700DEBDBD00C65A5A00AD525200FFFFFF00BD7B
        7300B5524A00EFD6D600F7F7EF00DED6D600DEDED600DEDED600DEDED600DEDE
        D600DEDED600DED6D600EFEFEF00E7BDBD00C65A5A00AD525200FFFFFF00BD7B
        7300B5524A00EFD6D600FFFFFF00FFF7F700FFF7F700FFF7F700FFF7F700FFF7
        F700FFF7F700FFF7F700FFFFFF00DEBDBD00C65A5A00AD525200FFFFFF00FFFF
        FF00AD524A00CEB5B500D6D6D600D6CECE00D6CECE00D6CECE00D6CECE00D6CE
        CE00D6CECE00D6CECE00D6D6D600CEADAD00A54A4A00FFFFFF00}
      OnClick = btn_SaveClick
    end
  end
  object cxLabel2: TcxLabel
    Left = 17
    Top = 54
    AutoSize = False
    Caption = #30701#20449'SP'#24080#21495
    Transparent = True
    Height = 16
    Width = 74
  end
  object cxLabel1: TcxLabel
    Left = 17
    Top = 86
    AutoSize = False
    Caption = #30701#20449'SP'#23494#30721
    Transparent = True
    Height = 16
    Width = 74
  end
  object cxLabel3: TcxLabel
    Left = 17
    Top = 118
    AutoSize = False
    Caption = #30701#20449#22320#22336
    Transparent = True
    Height = 16
    Width = 74
  end
  object cxLabel4: TcxLabel
    Left = 17
    Top = 150
    AutoSize = False
    Caption = #30701#20449#31471#21475
    Transparent = True
    Height = 16
    Width = 74
  end
  object cxLabel5: TcxLabel
    Left = 17
    Top = 182
    AutoSize = False
    Caption = #30701#20449#26381#21153#22120
    Transparent = True
    Height = 16
    Width = 74
  end
  object lb_Des: TcxLabel
    Left = 17
    Top = 216
    AutoSize = False
    Caption = #22791#27880
    Transparent = True
    Height = 16
    Width = 74
  end
  object txt_FSMSSPID: TcxDBTextEdit
    Left = 99
    Top = 53
    DataBinding.DataField = 'FSMSSPID'
    DataBinding.DataSource = dsSms
    TabOrder = 1
    Width = 300
  end
  object txt_FSMSSPPWD: TcxDBTextEdit
    Left = 99
    Top = 85
    DataBinding.DataField = 'FSMSSPPWD'
    DataBinding.DataSource = dsSms
    Properties.EchoMode = eemPassword
    Properties.PasswordChar = '*'
    TabOrder = 3
    Width = 300
  end
  object txt_FSMSLOCATION: TcxDBTextEdit
    Left = 99
    Top = 117
    DataBinding.DataField = 'FSMSLOCATION'
    DataBinding.DataSource = dsSms
    TabOrder = 5
    Width = 300
  end
  object txt_FSMSPORT: TcxDBTextEdit
    Left = 99
    Top = 149
    DataBinding.DataField = 'FSMSPORT'
    DataBinding.DataSource = dsSms
    TabOrder = 7
    Width = 300
  end
  object txt_FSMSSERVER: TcxDBTextEdit
    Left = 99
    Top = 181
    DataBinding.DataField = 'FSMSSERVER'
    DataBinding.DataSource = dsSms
    TabOrder = 9
    Width = 300
  end
  object txt_FDESCRIPTION: TcxDBTextEdit
    Left = 99
    Top = 213
    DataBinding.DataField = 'FDESCRIPTION'
    DataBinding.DataSource = dsSms
    TabOrder = 11
    Width = 300
  end
  object cdsSms: TClientDataSet
    Aggregates = <>
    Params = <>
    OnNewRecord = cdsSmsNewRecord
    Left = 184
    Top = 280
    object cdsSmsFID: TWideStringField
      FieldName = 'FID'
      Size = 44
    end
    object cdsSmsFSMSSPID: TWideStringField
      FieldName = 'FSMSSPID'
      Size = 44
    end
    object cdsSmsFSMSSPPWD: TWideStringField
      FieldName = 'FSMSSPPWD'
      Size = 44
    end
    object cdsSmsFSMSLOCATION: TWideStringField
      FieldName = 'FSMSLOCATION'
      Size = 200
    end
    object cdsSmsFSMSPORT: TWideStringField
      FieldName = 'FSMSPORT'
    end
    object cdsSmsFSMSSERVER: TWideStringField
      FieldName = 'FSMSSERVER'
      Size = 200
    end
    object cdsSmsFDESCRIPTION: TWideStringField
      FieldName = 'FDESCRIPTION'
      Size = 250
    end
  end
  object dsSms: TDataSource
    DataSet = cdsSms
    Left = 256
    Top = 288
  end
end
