inherited FrmRelief: TFrmRelief
  Left = 442
  Top = 296
  Width = 396
  Height = 140
  BorderIcons = [biSystemMenu]
  Caption = #25442#29677
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object pnClient: TPanel
    Left = 0
    Top = 0
    Width = 388
    Height = 106
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 12
      Top = 34
      Width = 337
      Height = 13
      Caption = #25442#29677#35828#26126#65306' '#25442#29677#21518#26412#24215#38138#12289#24403#21069#29677#27425#12289#24403#21069#26085#26399#19981#33021#20877#24320'POS'#21333
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lbMession: TLabel
      Left = 12
      Top = 10
      Width = 174
      Height = 13
      Caption = #24403#21069#24215#38138'     '#24403#21069#26085#26399'     '#24403#21069#29677#27425
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object btOK: TcxButton
      Left = 88
      Top = 62
      Width = 81
      Height = 25
      Caption = #25442#29677
      TabOrder = 0
      OnClick = btOKClick
      LookAndFeel.Kind = lfOffice11
    end
    object cxButton1: TcxButton
      Left = 208
      Top = 62
      Width = 78
      Height = 25
      Caption = #21462#28040
      ModalResult = 2
      TabOrder = 1
      LookAndFeel.Kind = lfOffice11
    end
  end
end
