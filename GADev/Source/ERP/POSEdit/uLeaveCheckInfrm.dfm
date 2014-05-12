inherited frmLeaveCheckIn: TfrmLeaveCheckIn
  Width = 280
  Height = 175
  Caption = #19979#29677#30331#35760
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 272
    Height = 141
    Align = alClient
    TabOrder = 0
    object Bevel1: TBevel
      Left = 7
      Top = 100
      Width = 259
      Height = 2
    end
    object cxbtnOk: TcxButton
      Left = 83
      Top = 108
      Width = 54
      Height = 25
      Caption = #30830#23450'(&Y)'
      TabOrder = 0
      OnClick = cxbtnOkClick
      LookAndFeel.Kind = lfOffice11
    end
    object cxbtnreturn: TcxButton
      Left = 149
      Top = 108
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
    object cxLabel3: TcxLabel
      Left = 28
      Top = 65
      Caption = #24403#21069#26102#38388#65306
    end
    object cxedtCashier: TcxTextEdit
      Left = 96
      Top = 24
      Properties.ReadOnly = True
      TabOrder = 4
      Width = 149
    end
    object cxCurrTime: TcxTextEdit
      Left = 96
      Top = 64
      Properties.ReadOnly = True
      TabOrder = 5
      Width = 149
    end
  end
end
