object RegisterFrm: TRegisterFrm
  Left = 425
  Top = 254
  Width = 396
  Height = 227
  BorderIcons = [biSystemMenu]
  Caption = #36719#20214#27880#20876
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCanResize = FormCanResize
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 6
    Top = 5
    Width = 375
    Height = 124
    TabOrder = 0
    object Label2: TLabel
      Left = 32
      Top = 28
      Width = 73
      Height = 13
      AutoSize = False
      Caption = #24207#21015#21495'             '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsUnderline]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 32
      Top = 69
      Width = 73
      Height = 13
      AutoSize = False
      Caption = #27880#20876#30721'             '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsUnderline]
      ParentFont = False
    end
    object ed_mac: TDBEdit
      Left = 104
      Top = 22
      Width = 241
      Height = 19
      Ctl3D = False
      DataField = 'MACADDRESS'
      DataSource = dsReg
      ParentCtl3D = False
      TabOrder = 0
      OnKeyPress = ed_macKeyPress
    end
    object ed_code: TDBEdit
      Left = 104
      Top = 63
      Width = 241
      Height = 19
      Ctl3D = False
      DataField = 'REGCODE'
      DataSource = dsReg
      ParentCtl3D = False
      TabOrder = 1
    end
  end
  object BitBtn1: TBitBtn
    Left = 208
    Top = 152
    Width = 75
    Height = 25
    Caption = #27880#20876
    Default = True
    TabOrder = 1
    OnClick = BitBtn1Click
    NumGlyphs = 2
  end
  object BitBtn2: TBitBtn
    Left = 296
    Top = 152
    Width = 75
    Height = 25
    Caption = #21462#28040
    TabOrder = 2
    OnClick = BitBtn2Click
  end
  object QryReg: TADOQuery
    Connection = MainFrm.ado_reg
    Parameters = <>
    SQL.Strings = (
      'select macAddress,regcode from registerinfo')
    Left = 16
    Top = 136
    object QryRegMACADDRESS: TStringField
      FieldName = 'MACADDRESS'
      Size = 100
    end
    object QryRegREGCODE: TStringField
      FieldName = 'REGCODE'
      Size = 100
    end
  end
  object dsReg: TDataSource
    DataSet = QryReg
    Left = 64
    Top = 136
  end
end
