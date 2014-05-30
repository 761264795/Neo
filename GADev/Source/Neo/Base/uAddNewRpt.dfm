object frmAddNewRpt: TfrmAddNewRpt
  Left = 461
  Top = 242
  Width = 248
  Height = 140
  Caption = #26032#22686#25253#34920
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object cxLabel1: TcxLabel
    Left = 10
    Top = 10
    Caption = #25253#34920#32534#21495
  end
  object txtRptNumber: TcxTextEdit
    Left = 64
    Top = 8
    TabOrder = 1
    Width = 161
  end
  object cxLabel2: TcxLabel
    Left = 10
    Top = 37
    Caption = #25253#34920#21517#31216
  end
  object txtRptName: TcxTextEdit
    Left = 64
    Top = 35
    TabOrder = 3
    Width = 161
  end
  object cxButton1: TcxButton
    Left = 32
    Top = 72
    Width = 75
    Height = 25
    Caption = #30830#23450
    ModalResult = 1
    TabOrder = 4
    OnClick = cxButton1Click
  end
  object cxButton2: TcxButton
    Left = 136
    Top = 72
    Width = 75
    Height = 25
    Caption = #21462#28040
    ModalResult = 2
    TabOrder = 5
  end
end
