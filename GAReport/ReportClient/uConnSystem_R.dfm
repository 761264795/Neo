object ConnSystem: TConnSystem
  Left = 449
  Top = 301
  BorderStyle = bsDialog
  Caption = #36830#25509#35774#32622
  ClientHeight = 165
  ClientWidth = 343
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 12
  object Label1: TLabel
    Left = 16
    Top = 40
    Width = 81
    Height = 12
    AutoSize = False
    Caption = #26381#21153#22120#22320#22336#65306
  end
  object Label2: TLabel
    Left = 16
    Top = 73
    Width = 81
    Height = 12
    AutoSize = False
    Caption = #31471#21475#65306
  end
  object Bevel1: TBevel
    Left = 16
    Top = 104
    Width = 313
    Height = 2
  end
  object ed_IP: TEdit
    Left = 86
    Top = 37
    Width = 225
    Height = 20
    TabOrder = 0
  end
  object ed_port: TEdit
    Left = 86
    Top = 66
    Width = 225
    Height = 20
    TabOrder = 1
    Text = '211'
  end
  object Button1: TButton
    Left = 240
    Top = 120
    Width = 75
    Height = 25
    Caption = #20445#23384'(&S)'
    TabOrder = 2
    OnClick = Button1Click
  end
end
