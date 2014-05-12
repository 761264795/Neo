inherited frmCacthCash: TfrmCacthCash
  Left = 238
  Top = 184
  Width = 303
  Height = 197
  Caption = #21462#20986#29616#37329
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel [0]
    Left = 0
    Top = 0
    Width = 295
    Height = 163
    Align = alClient
    TabOrder = 0
    object Bevel1: TBevel
      Left = 7
      Top = 123
      Width = 277
      Height = 2
    end
    object cxbtnOk: TcxButton
      Left = 86
      Top = 135
      Width = 54
      Height = 25
      Caption = #30830#23450'(&Y)'
      TabOrder = 0
      OnClick = cxbtnOkClick
      LookAndFeel.Kind = lfOffice11
    end
    object cxbtnreturn: TcxButton
      Left = 160
      Top = 135
      Width = 54
      Height = 25
      Caption = #36820#22238'(&E)'
      TabOrder = 1
      OnClick = cxbtnreturnClick
      LookAndFeel.Kind = lfOffice11
    end
    object cxLabel1: TcxLabel
      Left = 40
      Top = 24
      Caption = #25910#38134#21592#65306
    end
    object cxLabel2: TcxLabel
      Left = 28
      Top = 61
      Caption = #21462#20986#29616#37329#65306
    end
    object cxLabel3: TcxLabel
      Left = 52
      Top = 96
      Caption = #22791#27880#65306
    end
    object cxedtCashier: TcxTextEdit
      Left = 96
      Top = 24
      Properties.ReadOnly = True
      TabOrder = 5
      Width = 149
    end
    object cxMemo: TcxTextEdit
      Left = 96
      Top = 95
      TabOrder = 6
      Width = 149
    end
    object cxCurAmt: TcxCurrencyEdit
      Left = 96
      Top = 60
      TabOrder = 7
      Width = 149
    end
  end
end
