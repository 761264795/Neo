inherited PackingQueryFrm: TPackingQueryFrm
  Left = 547
  Top = 262
  Width = 328
  Height = 220
  Caption = #35013#31665#21333#26597#35810
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 12
  object Panel1: TPanel [0]
    Left = 0
    Top = 0
    Width = 312
    Height = 151
    Align = alClient
    Color = 16511980
    TabOrder = 0
    object cBegin: TcxDateEdit
      Left = 98
      Top = 25
      EditValue = 40452d
      TabOrder = 1
      Width = 86
    end
    object cxLabel1: TcxLabel
      Left = 188
      Top = 26
      AutoSize = False
      Caption = #33267
      Transparent = True
      Height = 16
      Width = 17
    end
    object cEnd: TcxDateEdit
      Left = 204
      Top = 25
      EditValue = 42278d
      TabOrder = 2
      Width = 84
    end
    object chk_Create: TcxCheckBox
      Left = 16
      Top = 24
      Caption = #21046#21333#26085#26399
      State = cbsChecked
      TabOrder = 0
      Width = 83
    end
    object cxLabel4: TcxLabel
      Left = 35
      Top = 81
      Caption = #35013#31665#21333#21495
      Transparent = True
    end
    object txt_Fnumber: TcxTextEdit
      Left = 98
      Top = 79
      TabOrder = 7
      Width = 190
    end
    object lb_ctName: TcxLabel
      Left = 33
      Top = 52
      Caption = #35013#31665#20154
      Transparent = True
    end
    object txt_ctName: TcxButtonEdit
      Left = 98
      Top = 51
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ClickKey = 118
      Properties.ReadOnly = True
      Properties.OnButtonClick = txt_ctNamePropertiesButtonClick
      TabOrder = 4
      OnKeyPress = txt_ctNameKeyPress
      Width = 190
    end
    object cxLabel5: TcxLabel
      Left = 36
      Top = 110
      Caption = #21333#25454#29366#24577
      Transparent = True
    end
    object cb_State: TcxComboBox
      Left = 98
      Top = 106
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        #20840#37096
        #26032#21333
        #23457#26680)
      TabOrder = 8
      Text = #20840#37096
      Width = 191
    end
  end
  object Panel2: TPanel [1]
    Left = 0
    Top = 151
    Width = 312
    Height = 31
    Align = alBottom
    Color = 16511980
    TabOrder = 1
    object btn1: TcxButton
      Left = 166
      Top = 3
      Width = 55
      Height = 25
      Caption = #30830#23450'(&Y)'
      TabOrder = 0
      OnClick = btn1Click
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.SkinName = 'Office2007Black'
    end
    object cxButton1: TcxButton
      Left = 238
      Top = 3
      Width = 55
      Height = 25
      Caption = #21462#28040'(&C)'
      TabOrder = 1
      OnClick = cxButton1Click
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.SkinName = 'Office2007Black'
    end
  end
end
