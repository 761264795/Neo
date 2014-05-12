inherited ReportFrm_MasterList: TReportFrm_MasterList
  Left = 29
  Top = 71
  Caption = #24215#38138#27969#27700#25253#34920
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    object Label2: TLabel [3]
      Left = 6
      Top = 10
      Width = 84
      Height = 13
      AutoSize = False
      Caption = #19994#21153#26085#26399#33539#22260#65306
      Transparent = True
    end
    object Label3: TLabel [4]
      Left = 189
      Top = 12
      Width = 14
      Height = 13
      AutoSize = False
      Caption = #33267
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label5: TLabel [5]
      Left = 493
      Top = 12
      Width = 60
      Height = 13
      AutoSize = False
      Caption = #29289#26009#32534#21495#65306
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label4: TLabel [6]
      Left = 300
      Top = 10
      Width = 60
      Height = 13
      AutoSize = False
      Caption = #21333#25454#31867#22411#65306
      Transparent = True
    end
    object lbMaterialName: TLabel [7]
      Left = 694
      Top = 12
      Width = 107
      Height = 13
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    inherited btOK: TcxButton
      TabOrder = 4
    end
    object tpBegin: TDateTimePicker
      Left = 94
      Top = 7
      Width = 93
      Height = 21
      Date = 40689.000000000000000000
      Time = 40689.000000000000000000
      ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
      TabOrder = 0
    end
    object tpEnd: TDateTimePicker
      Left = 204
      Top = 7
      Width = 91
      Height = 21
      Date = 40689.000000000000000000
      Time = 40689.000000000000000000
      ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
      TabOrder = 1
    end
    object bt_material: TcxButtonEdit
      Left = 552
      Top = 6
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ClickKey = 118
      Properties.OnButtonClick = bt_materialPropertiesButtonClick
      TabOrder = 3
      OnExit = bt_materialExit
      OnKeyDown = bt_materialKeyDown
      Width = 102
    end
    object cbBillType: TcxComboBox
      Left = 366
      Top = 7
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        ''
        #38646#21806#21333
        #35843#25320#20986#24211#21333
        #35843#25320#20837#24211#21333
        #30424#28857#21333
        #24211#23384#26399#21021#21333
        #37319#36141#20837#24211#21333
        #37319#36141#36864#36135#21333)
      TabOrder = 2
      Width = 118
    end
  end
end
