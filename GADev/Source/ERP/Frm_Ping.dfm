object FM_Ping: TFM_Ping
  Left = 363
  Top = 179
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'ping'
  ClientHeight = 296
  ClientWidth = 632
  Color = clBtnFace
  Font.Charset = GB2312_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 12
  object lbl1: TLabel
    Left = 20
    Top = 18
    Width = 48
    Height = 12
    Caption = '&IP('#22495#21517')'
    FocusControl = edt_IPAddr
  end
  object lbl2: TLabel
    Left = 436
    Top = 18
    Width = 36
    Height = 12
    Caption = #25968#25454#21253
    FocusControl = edt_IPAddr
  end
  object edt_IPAddr: TEdit
    Left = 72
    Top = 14
    Width = 361
    Height = 20
    TabOrder = 0
  end
  object btnPing: TButton
    Left = 544
    Top = 11
    Width = 63
    Height = 25
    Caption = 'Ping'
    TabOrder = 1
    OnClick = btnPingClick
  end
  object ListBox1: TListBox
    Left = 4
    Top = 46
    Width = 625
    Height = 245
    ItemHeight = 12
    TabOrder = 2
  end
  object cxSpinEdit1: TcxSpinEdit
    Left = 476
    Top = 15
    Properties.MaxValue = 1000.000000000000000000
    Properties.MinValue = 1.000000000000000000
    TabOrder = 3
    Value = 4
    Width = 55
  end
  object ICMP: TIdIcmpClient
    OnReply = ICMPReply
    Left = 16
    Top = 56
  end
end
