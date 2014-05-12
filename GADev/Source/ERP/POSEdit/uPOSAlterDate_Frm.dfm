object FrmPOSAlterDate: TFrmPOSAlterDate
  Left = 343
  Top = 247
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = #20462#25913#19994#21153#26085#26399
  ClientHeight = 105
  ClientWidth = 419
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  DesignSize = (
    419
    105)
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 0
    Top = 0
    Width = 419
    Height = 105
    Align = alClient
    Stretch = True
  end
  object Label3: TLabel
    Left = 24
    Top = 24
    Width = 48
    Height = 13
    Caption = #19994#21153#26085#26399
    Transparent = True
  end
  object Label4: TLabel
    Left = 248
    Top = 24
    Width = 24
    Height = 13
    Caption = #26102#38388
    Transparent = True
  end
  object Bevel1: TBevel
    Left = 16
    Top = 56
    Width = 393
    Height = 2
  end
  object Label1: TLabel
    Left = 24
    Top = 80
    Width = 169
    Height = 13
    AutoSize = False
    Caption = 'ESC'#38190#36864#20986'...'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object btOK: TcxButton
    Left = 343
    Top = 71
    Width = 52
    Height = 25
    Anchors = [akTop, akRight]
    Caption = #30830#23450'(&Y)'
    Default = True
    TabOrder = 2
    OnClick = btOKClick
    LookAndFeel.Kind = lfOffice11
  end
  object cxDate: TcxDateEdit
    Left = 79
    Top = 19
    Properties.SaveTime = False
    Properties.ShowTime = False
    TabOrder = 0
    Width = 121
  end
  object cxTime: TcxTimeEdit
    Left = 280
    Top = 20
    EditValue = 0.000000000000000000
    TabOrder = 1
    Width = 121
  end
end
