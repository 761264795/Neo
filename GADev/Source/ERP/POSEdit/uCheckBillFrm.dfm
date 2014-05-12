object frmCheckBill: TfrmCheckBill
  Left = 364
  Top = 189
  Width = 442
  Height = 127
  Caption = #36873#21333
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnClient: TPanel
    Left = 0
    Top = 0
    Width = 434
    Height = 93
    Align = alClient
    TabOrder = 0
    object clBill: TLabel
      Left = 19
      Top = 32
      Width = 54
      Height = 13
      AutoSize = False
      Caption = #25346#21333#21495':'
    end
    object Label2: TLabel
      Left = 24
      Top = 70
      Width = 249
      Height = 14
      Caption = #35831#36755#20837#25346#21333#26085#26399#21644#23567#31080#26368#21518#22235#20301
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = #23435#20307
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 19
      Top = 8
      Width = 57
      Height = 13
      AutoSize = False
      Caption = #25346#21333#26085#26399':'
    end
    object Label3: TLabel
      Left = 203
      Top = 32
      Width = 134
      Height = 13
      AutoSize = False
      Caption = '('#23567#31080#21333#25454#32534#21495#26368#21518'4'#20301')'
    end
    object cbHang: TcxTextEdit
      Left = 77
      Top = 28
      TabOrder = 0
      Text = 'cbHang'
      Width = 119
    end
    object btOK: TcxButton
      Left = 353
      Top = 26
      Width = 75
      Height = 25
      Caption = #30830#23450
      TabOrder = 1
      LookAndFeel.Kind = lfOffice11
    end
    object cxDBDateEdit1: TcxDBDateEdit
      Left = 76
      Top = 4
      TabOrder = 2
      Width = 121
    end
  end
end
