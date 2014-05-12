inherited SaleListAyFrm: TSaleListAyFrm
  Left = 29
  Top = 77
  Caption = #38144#21806#26126#32454#25253#34920
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 12
  inherited cxGrid1: TcxGrid
    Top = 25
    Height = 560
    inherited dbgList: TcxGridDBTableView
      OnCellDblClick = dbgListCellDblClick
    end
  end
  inherited Panel1: TPanel
    Height = 25
    inherited Image1: TImage
      Height = 25
    end
    inherited Image2: TImage
      Left = 847
      Top = 4
    end
    inherited Label1: TLabel
      Left = 847
      Top = 7
      Width = 62
    end
    object Label2: TLabel [3]
      Left = 6
      Top = 6
      Width = 58
      Height = 12
      AutoSize = False
      Caption = #19994#21153#26085#26399#65306
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label3: TLabel [4]
      Left = 155
      Top = 6
      Width = 14
      Height = 12
      AutoSize = False
      Caption = #33267
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label4: TLabel [5]
      Left = 679
      Top = 31
      Width = 56
      Height = 12
      AutoSize = False
      Caption = #21333#25454#29366#24577#65306
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
      Visible = False
    end
    object Label5: TLabel [6]
      Left = 467
      Top = 8
      Width = 56
      Height = 12
      AutoSize = False
      Caption = #29289#26009#32534#21495#65306
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label6: TLabel [7]
      Left = 269
      Top = 7
      Width = 56
      Height = 12
      AutoSize = False
      Caption = #21333#25454#32534#21495#65306
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object lb_matinfo: TLabel [8]
      Left = 621
      Top = 7
      Width = 127
      Height = 12
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    inherited btOK: TcxButton
      Left = 764
      Top = 1
      Width = 74
      Height = 23
    end
    object tpBegin: TDateTimePicker
      Left = 66
      Top = 2
      Width = 87
      Height = 21
      Date = 40689.000000000000000000
      Time = 40689.000000000000000000
      ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
      TabOrder = 1
    end
    object tpEnd: TDateTimePicker
      Left = 169
      Top = 2
      Width = 87
      Height = 21
      Date = 40689.000000000000000000
      Time = 40689.000000000000000000
      ImeName = #20013#25991' - QQ'#25340#38899#36755#20837#27861
      TabOrder = 2
    end
    object cb_status: TComboBox
      Left = 738
      Top = 25
      Width = 75
      Height = 20
      Style = csDropDownList
      ItemHeight = 12
      TabOrder = 3
      Visible = False
      Items.Strings = (
        ''
        #23457#26680
        #25346#21333)
    end
    object bt_material: TcxButtonEdit
      Left = 528
      Top = 3
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ClickKey = 118
      Properties.OnButtonClick = bt_materialPropertiesButtonClick
      Properties.OnChange = bt_materialPropertiesChange
      TabOrder = 4
      Width = 87
    end
    object ed_billNO: TEdit
      Left = 330
      Top = 2
      Width = 128
      Height = 20
      TabOrder = 5
    end
  end
  inherited PopupMenu1: TPopupMenu
    object seeSrcBill: TMenuItem [2]
      Caption = #26597#30475#28304#21333'...'
      ShortCut = 121
      OnClick = seeSrcBillClick
    end
    object N1: TMenuItem [3]
      Caption = #26597#30475#32467#31639#20449#24687'...'
      OnClick = N1Click
    end
  end
end
