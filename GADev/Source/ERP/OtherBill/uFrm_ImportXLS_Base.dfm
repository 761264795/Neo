inherited FrmImportXlSBase: TFrmImportXlSBase
  Left = 245
  Top = 210
  Width = 818
  Height = 476
  Caption = 'EXCEL'#23548#20837
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 12
  object Panel2: TPanel [0]
    Left = 0
    Top = 0
    Width = 810
    Height = 63
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      810
      63)
    object Image2: TImage
      Left = 0
      Top = 0
      Width = 810
      Height = 63
      Align = alClient
      Stretch = True
    end
    object Label3: TLabel
      Left = 6
      Top = 3
      Width = 704
      Height = 12
      AutoSize = False
      Caption = #35831#36873#25321#24182#25171#24320#38656#35201#23548#20837#30340'Excel'#25991#20214','#23548#20837#26684#24335#19982#23548#20986'EXCEL'#26684#24335#19968#26679#65292#35831#21442#32771#23548#20986'EXCEL'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label1: TLabel
      Left = 8
      Top = 43
      Width = 26
      Height = 12
      Caption = #20174#31532
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label4: TLabel
      Left = 96
      Top = 43
      Width = 65
      Height = 12
      Caption = #34892#24320#22987#23548#20837
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object cxedtNo: TcxSpinEdit
      Left = 38
      Top = 40
      TabOrder = 0
      Width = 45
    end
    object EdFileName: TcxTextEdit
      Left = 5
      Top = 18
      Anchors = [akLeft, akTop, akRight]
      ParentFont = False
      Properties.ReadOnly = True
      Style.Color = clWhite
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlack
      Style.Font.Height = -9
      Style.Font.Name = 'MS Sans Serif'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 1
      Width = 646
    end
    object Btbrowse: TcxButton
      Left = 653
      Top = 16
      Width = 77
      Height = 23
      Anchors = [akTop, akRight]
      Caption = #36873#25321'&Excel'
      TabOrder = 2
      OnClick = BtbrowseClick
      LookAndFeel.Kind = lfOffice11
    end
  end
  object Panel1: TPanel [1]
    Left = 0
    Top = 409
    Width = 810
    Height = 33
    Align = alBottom
    TabOrder = 1
    object Image1: TImage
      Left = 1
      Top = 1
      Width = 808
      Height = 31
      Align = alClient
      Stretch = True
    end
    object btCancel: TcxButton
      Left = 653
      Top = 6
      Width = 78
      Height = 23
      Caption = #36864#20986'(&C)'
      ModalResult = 3
      TabOrder = 0
      LookAndFeel.Kind = lfOffice11
    end
    object btOK: TcxButton
      Left = 569
      Top = 6
      Width = 78
      Height = 23
      Action = actXLSImport
      Caption = #24320#22987#23548#20837'(&Y)'
      TabOrder = 1
      LookAndFeel.Kind = lfOffice11
    end
  end
  object Panel3: TPanel [2]
    Left = 0
    Top = 63
    Width = 810
    Height = 346
    Align = alClient
    Caption = 'Panel3'
    TabOrder = 2
    object MMLog: TMemo
      Left = 1
      Top = 1
      Width = 808
      Height = 324
      Align = alClient
      Ctl3D = False
      ParentCtl3D = False
      ScrollBars = ssBoth
      TabOrder = 0
    end
    object PB: TcxProgressBar
      Left = 1
      Top = 325
      Align = alBottom
      Properties.PeakValue = 10.000000000000000000
      Style.LookAndFeel.Kind = lfOffice11
      Style.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 1
      Width = 808
    end
  end
  object OpenDg: TOpenDialog
    Filter = 'Microsoft Excel'#25991#20214'(*.XLS)|*.xls;*.xlsx'
    Left = 458
    Top = 72
  end
  object actList: TActionList
    Left = 504
    Top = 72
    object actXLSImport: TAction
      Caption = #24320#22987#23548#20837
      OnExecute = actXLSImportExecute
    end
  end
end
