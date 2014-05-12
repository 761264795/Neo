inherited frmDutyCheckIn: TfrmDutyCheckIn
  Left = 489
  Top = 237
  Width = 310
  Height = 249
  BorderIcons = [biSystemMenu]
  Caption = #19978#29677#30331#35760
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 302
    Height = 215
    Align = alClient
    TabOrder = 0
    object Bevel1: TBevel
      Left = 7
      Top = 173
      Width = 289
      Height = 2
    end
    object cxLabel1: TcxLabel
      Left = 28
      Top = 32
      Caption = #25910#38134#21592#65306
    end
    object cxLabel2: TcxLabel
      Left = 18
      Top = 64
      Caption = 'POS'#26426#21495#65306
    end
    object cxLabel3: TcxLabel
      Left = 40
      Top = 91
      Caption = #29677#27425#65306
    end
    object cxLabel4: TcxLabel
      Left = 28
      Top = 120
      Caption = #22791#29992#37329#65306
    end
    object cxbtnOK: TcxButton
      Left = 98
      Top = 181
      Width = 54
      Height = 25
      Caption = #30830#23450'(&Y)'
      TabOrder = 4
      OnClick = cxbtnOKClick
      LookAndFeel.Kind = lfOffice11
    end
    object cxbtnReturn: TcxButton
      Left = 172
      Top = 181
      Width = 54
      Height = 25
      Caption = #36820#22238'(&E)'
      TabOrder = 5
      OnClick = cxbtnReturnClick
      LookAndFeel.Kind = lfOffice11
    end
    object cxLabel5: TcxLabel
      Left = 113
      Top = 8
      AutoSize = False
      Caption = #19978#29677#30331#35760
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = #23435#20307
      Style.Font.Style = []
      Style.LookAndFeel.Kind = lfUltraFlat
      Style.LookAndFeel.NativeStyle = True
      Style.LookAndFeel.SkinName = ''
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.Kind = lfUltraFlat
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.SkinName = ''
      StyleFocused.LookAndFeel.Kind = lfUltraFlat
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.SkinName = ''
      StyleHot.LookAndFeel.Kind = lfUltraFlat
      StyleHot.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.SkinName = ''
      Height = 25
      Width = 89
    end
    object cxLabel6: TcxLabel
      Left = 16
      Top = 152
      Caption = #24403#21069#26102#38388#65306
    end
    object cxedtCashier: TcxTextEdit
      Left = 80
      Top = 32
      Properties.ReadOnly = True
      TabOrder = 8
      Width = 177
    end
    object cxbtnPoSNum: TcxButtonEdit
      Left = 80
      Top = 62
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      TabOrder = 9
      Width = 177
    end
    object cxbtnClass: TcxButtonEdit
      Left = 80
      Top = 88
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      TabOrder = 10
      Width = 177
    end
    object cxCurFee: TcxCurrencyEdit
      Left = 80
      Top = 118
      TabOrder = 11
      Width = 177
    end
    object cxedtCurTime: TcxTextEdit
      Left = 80
      Top = 149
      Properties.ReadOnly = True
      TabOrder = 12
      Width = 177
    end
  end
end
