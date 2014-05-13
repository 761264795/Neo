object frmInitConfig: TfrmInitConfig
  Left = 472
  Top = 260
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = #36830#25509#35774#32622
  ClientHeight = 150
  ClientWidth = 279
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 279
    Height = 150
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 75
      Height = 15
      Caption = #26381#21153#22120#22320#22336
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 16
      Top = 72
      Width = 60
      Height = 15
      Caption = #36890#35759#31471#21475
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object edt_TranServer: TEdit
      Left = 98
      Top = 19
      Width = 162
      Height = 23
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ImeName = #20013#25991' - QQ'#20116#31508#36755#20837#27861
      ParentFont = False
      TabOrder = 0
    end
    object edt_Port: TEdit
      Left = 98
      Top = 64
      Width = 162
      Height = 23
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = []
      ImeName = #20013#25991' - QQ'#20116#31508#36755#20837#27861
      ParentFont = False
      TabOrder = 1
    end
    object Button1: TButton
      Left = 185
      Top = 112
      Width = 75
      Height = 25
      Caption = #20445#23384
      TabOrder = 2
      OnClick = Button1Click
    end
  end
end
