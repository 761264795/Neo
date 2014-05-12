inherited frmCashStorage: TfrmCashStorage
  Left = 467
  Top = 206
  Width = 300
  Height = 200
  BorderIcons = [biSystemMenu]
  Caption = #23384#20837#29616#37329
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 292
    Height = 166
    Align = alClient
    TabOrder = 0
    object Bevel1: TBevel
      Left = 7
      Top = 123
      Width = 277
      Height = 2
    end
    object cxbtnOk: TcxButton
      Left = 97
      Top = 135
      Width = 54
      Height = 25
      Caption = #30830#23450'(&Y)'
      TabOrder = 0
      OnClick = cxbtnOkClick
      LookAndFeel.Kind = lfOffice11
    end
    object cxbtnReturn: TcxButton
      Left = 171
      Top = 135
      Width = 54
      Height = 25
      Caption = #36820#22238'(&E)'
      TabOrder = 1
      OnClick = cxbtnReturnClick
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
      Caption = #23384#20837#29616#37329#65306
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
