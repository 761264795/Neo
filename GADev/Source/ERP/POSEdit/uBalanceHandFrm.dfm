inherited Frm_BalanceHand: TFrm_BalanceHand
  Left = 457
  Top = 213
  Width = 277
  Height = 188
  BorderIcons = [biSystemMenu]
  Caption = #20462#25913#21830#22330#32467#31639#20449#24687
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage [0]
    Left = 0
    Top = 0
    Width = 261
    Height = 150
    Align = alClient
    Stretch = True
  end
  object Label2: TLabel [1]
    Left = 12
    Top = 12
    Width = 94
    Height = 13
    AutoSize = False
    Caption = #32467#31639#24180#20221'                 '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsUnderline]
    ParentFont = False
    Transparent = True
  end
  object Label1: TLabel [2]
    Left = 11
    Top = 46
    Width = 156
    Height = 13
    AutoSize = False
    Caption = #32467#31639#26376#20221'                 '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsUnderline]
    ParentFont = False
    Transparent = True
  end
  object Label3: TLabel [3]
    Left = 11
    Top = 81
    Width = 131
    Height = 13
    AutoSize = False
    Caption = #21830#22330#36820#28857#31867#22411'          '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsUnderline]
    ParentFont = False
    Transparent = True
  end
  object Bevel1: TBevel [4]
    Left = 5
    Top = 104
    Width = 245
    Height = 2
  end
  object btOK: TcxButton [5]
    Left = 133
    Top = 115
    Width = 52
    Height = 25
    Caption = #30830#23450'(&Y)'
    Default = True
    ModalResult = 1
    TabOrder = 0
    OnClick = btOKClick
    LookAndFeel.Kind = lfOffice11
  end
  object cxButton1: TcxButton [6]
    Left = 197
    Top = 115
    Width = 52
    Height = 25
    Caption = #21462#28040'(&C)'
    ModalResult = 2
    TabOrder = 1
    LookAndFeel.Kind = lfOffice11
  end
  object cbCFBalanceYear: TcxComboBox [7]
    Left = 100
    Top = 5
    Properties.DropDownListStyle = lsFixedList
    Properties.Items.Strings = (
      '2010'
      '2011'
      '2012'
      '2013'
      '2014'
      '2015'
      '2016'
      '2017'
      '2018'
      '2019'
      '2020'
      '2021'
      '2022'
      '2023'
      '2024')
    Style.LookAndFeel.Kind = lfOffice11
    StyleDisabled.LookAndFeel.Kind = lfOffice11
    StyleFocused.LookAndFeel.Kind = lfOffice11
    StyleHot.LookAndFeel.Kind = lfOffice11
    TabOrder = 2
    Width = 146
  end
  object CbBalanceMonth: TcxComboBox [8]
    Left = 101
    Top = 39
    Properties.DropDownListStyle = lsFixedList
    Properties.Items.Strings = (
      '01'
      '02'
      '03'
      '04'
      '05'
      '06'
      '07'
      '08'
      '09'
      '10'
      '11'
      '12')
    Style.LookAndFeel.Kind = lfOffice11
    StyleDisabled.LookAndFeel.Kind = lfOffice11
    StyleFocused.LookAndFeel.Kind = lfOffice11
    StyleHot.LookAndFeel.Kind = lfOffice11
    TabOrder = 3
    Width = 144
  end
  object cbSETTLEBACKTYPEID: TcxLookupComboBox [9]
    Left = 101
    Top = 74
    Properties.DropDownListStyle = lsFixedList
    Properties.KeyFieldNames = 'FID'
    Properties.ListColumns = <
      item
        FieldName = 'FNAME_L2'
      end>
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = CliDM.dsPoint
    Style.LookAndFeel.Kind = lfOffice11
    StyleDisabled.LookAndFeel.Kind = lfOffice11
    StyleFocused.LookAndFeel.Kind = lfOffice11
    StyleHot.LookAndFeel.Kind = lfOffice11
    TabOrder = 4
    Width = 145
  end
end
