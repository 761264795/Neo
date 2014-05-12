inherited FrmImportXlSCheck: TFrmImportXlSCheck
  Left = 243
  Top = 126
  Width = 959
  Height = 551
  Caption = #30424#28857#21333'EXCEL'#23548#20837
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 12
  object Panel2: TPanel [0]
    Left = 0
    Top = 0
    Width = 951
    Height = 67
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      951
      67)
    object Image2: TImage
      Left = 0
      Top = 0
      Width = 951
      Height = 67
      Align = alClient
      Anchors = []
      Stretch = True
    end
    object Label1: TLabel
      Left = 8
      Top = 44
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
    object Label3: TLabel
      Left = 6
      Top = 4
      Width = 219
      Height = 12
      AutoSize = False
      Caption = #35831#36873#25321#24182#25171#24320#38656#35201#23548#20837#30340'Excel'#25991#20214
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Label4: TLabel
      Left = 96
      Top = 44
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
    object Label6: TLabel
      Left = 193
      Top = 44
      Width = 91
      Height = 12
      Caption = #23610#30721#24320#22987#20301#32622#20026
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label7: TLabel
      Left = 355
      Top = 44
      Width = 91
      Height = 12
      Caption = #23610#30721#32467#26463#20301#32622#20026
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
      Top = 41
      TabOrder = 0
      Width = 45
    end
    object EdFileName: TcxTextEdit
      Left = 5
      Top = 19
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
      Width = 773
    end
    object Btbrowse: TcxButton
      Left = 778
      Top = 18
      Width = 71
      Height = 23
      Anchors = [akTop, akRight]
      Caption = #36873#25321'&Excel'
      TabOrder = 2
      OnClick = BtbrowseClick
      LookAndFeel.Kind = lfOffice11
    end
    object edColBegin: TcxTextEdit
      Left = 285
      Top = 41
      TabOrder = 3
      Width = 55
    end
    object edColEnd: TcxTextEdit
      Left = 448
      Top = 41
      TabOrder = 4
      Width = 54
    end
  end
  object Panel3: TPanel [1]
    Left = 0
    Top = 67
    Width = 951
    Height = 412
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object PageControl1: TPageControl
      Left = 0
      Top = 0
      Width = 951
      Height = 392
      ActivePage = TabSheet1
      Align = alClient
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = #23548#20837#26085#24535
        object MMLog: TMemo
          Left = 0
          Top = 0
          Width = 943
          Height = 365
          Align = alClient
          Ctl3D = False
          ParentCtl3D = False
          ScrollBars = ssBoth
          TabOrder = 0
        end
      end
      object TabSheet2: TTabSheet
        Caption = #20986#38169#20449#24687
        ImageIndex = 1
        object mmErrorLog: TMemo
          Left = 0
          Top = 0
          Width = 870
          Height = 341
          Align = alClient
          Ctl3D = False
          ParentCtl3D = False
          ScrollBars = ssBoth
          TabOrder = 0
        end
      end
    end
    object PB: TcxProgressBar
      Left = 0
      Top = 392
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
      Width = 951
    end
  end
  object Panel4: TPanel [2]
    Left = 0
    Top = 479
    Width = 951
    Height = 38
    Align = alBottom
    TabOrder = 2
    DesignSize = (
      951
      38)
    object Image3: TImage
      Left = 1
      Top = 1
      Width = 949
      Height = 36
      Align = alClient
      Stretch = True
    end
    object btOK: TcxButton
      Left = 690
      Top = 7
      Width = 84
      Height = 23
      Action = actXLSImport
      Anchors = [akTop, akRight]
      Caption = #24320#22987#23548#20837'(Y)'
      TabOrder = 0
      LookAndFeel.Kind = lfOffice11
    end
    object btCancel: TcxButton
      Left = 778
      Top = 7
      Width = 85
      Height = 23
      Anchors = [akTop, akRight]
      Caption = #36864#20986'(ESC)'
      ModalResult = 3
      TabOrder = 1
      LookAndFeel.Kind = lfOffice11
    end
  end
  inherited STBaseEditDataSet: TClientDataSet
    Left = 104
    Top = 472
  end
  object OpenDg: TOpenDialog
    Filter = 
      'Microsoft Excel'#25991#20214'(*.XLS)|*.xls|Microsoft Excel2007'#25991#20214'(*.XLSX)|*.x' +
      'lsx'
    Left = 442
    Top = 40
  end
  object actList: TActionList
    Left = 488
    Top = 168
    object actXLSImport: TAction
      Caption = #24320#22987#23548#20837
      OnExecute = actXLSImportExecute
    end
  end
end
