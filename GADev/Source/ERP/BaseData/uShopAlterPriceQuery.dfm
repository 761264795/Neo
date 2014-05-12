inherited ShopAlterPriceQuery: TShopAlterPriceQuery
  Left = 527
  Top = 224
  Width = 354
  Height = 306
  Caption = #38646#21806#20215#26684#35843#25972#26597#25214
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 12
  object Panel1: TPanel [0]
    Left = 0
    Top = 0
    Width = 338
    Height = 237
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
    object cxLabel3: TcxLabel
      Left = 33
      Top = 75
      Caption = #35843#20215#26426#26500
      Transparent = True
    end
    object txt_FBranchName: TcxButtonEdit
      Left = 98
      Top = 74
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ClickKey = 118
      Properties.ReadOnly = True
      Properties.OnButtonClick = txt_FBranchNamePropertiesButtonClick
      TabOrder = 8
      OnKeyPress = txt_FBranchNameKeyPress
      Width = 190
    end
    object chk_Create: TcxCheckBox
      Left = 16
      Top = 24
      Caption = #21046#21333#26085#26399
      State = cbsChecked
      TabOrder = 0
      Width = 83
    end
    object chk_Audit: TcxCheckBox
      Left = 16
      Top = 48
      Caption = #23457#26680#26085#26399
      State = cbsChecked
      TabOrder = 4
      Width = 83
    end
    object aBegin: TcxDateEdit
      Left = 98
      Top = 50
      EditValue = 40452d
      TabOrder = 5
      Width = 86
    end
    object cxLabel2: TcxLabel
      Left = 187
      Top = 51
      AutoSize = False
      Caption = #33267
      Transparent = True
      Height = 16
      Width = 17
    end
    object aEnd: TcxDateEdit
      Left = 204
      Top = 50
      EditValue = 42278d
      TabOrder = 6
      Width = 84
    end
    object cxLabel4: TcxLabel
      Left = 35
      Top = 150
      Caption = #35843#25972#21333#21495
      Transparent = True
    end
    object txt_Fnumber: TcxTextEdit
      Left = 98
      Top = 148
      TabOrder = 14
      Width = 190
    end
    object lb_ctName: TcxLabel
      Left = 33
      Top = 99
      Caption = #21046#21333#20154
      Transparent = True
    end
    object txt_ctName: TcxButtonEdit
      Left = 98
      Top = 98
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ClickKey = 118
      Properties.ReadOnly = True
      Properties.OnButtonClick = txt_ctNamePropertiesButtonClick
      TabOrder = 10
      OnKeyPress = txt_ctNameKeyPress
      Width = 190
    end
    object cxLabel6: TcxLabel
      Left = 34
      Top = 124
      Caption = #23457#26680#20154
      Transparent = True
    end
    object txt_auName: TcxButtonEdit
      Left = 98
      Top = 123
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ClickKey = 118
      Properties.ReadOnly = True
      Properties.OnButtonClick = txt_auNamePropertiesButtonClick
      TabOrder = 12
      OnKeyPress = txt_auNameKeyPress
      Width = 190
    end
    object cxLabel5: TcxLabel
      Left = 36
      Top = 180
      Caption = #21333#25454#29366#24577
      Transparent = True
    end
    object cb_State: TcxComboBox
      Left = 98
      Top = 176
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        #26032#21333
        #23457#26680
        #31105#29992
        #20840#37096)
      TabOrder = 16
      Text = #20840#37096
      Width = 191
    end
  end
  object Panel2: TPanel [1]
    Left = 0
    Top = 237
    Width = 338
    Height = 31
    Align = alBottom
    Color = 16511980
    TabOrder = 1
    object btn1: TcxButton
      Left = 206
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
      Left = 270
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
  inherited STBaseEditDataSet: TClientDataSet
    Left = 432
    Top = 16
  end
end
