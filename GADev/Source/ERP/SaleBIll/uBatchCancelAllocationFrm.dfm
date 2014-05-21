inherited BatchCancelAllocationFrm: TBatchCancelAllocationFrm
  Left = 433
  Top = 247
  Width = 461
  Height = 284
  Caption = #25209#37327#21462#28040#37197#36135
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 12
  object Panel1: TPanel [0]
    Left = 0
    Top = 0
    Width = 453
    Height = 202
    Align = alClient
    Color = 16511980
    TabOrder = 0
    object cxLabel5: TcxLabel
      Left = 18
      Top = 56
      AutoSize = False
      Caption = #19994#21153#26085#26399
      Height = 16
      Width = 54
    end
    object BeginDate: TcxDateEdit
      Tag = 100
      Left = 79
      Top = 53
      Properties.SaveTime = False
      Properties.ShowTime = False
      TabOrder = 2
      Width = 140
    end
    object cxLabel6: TcxLabel
      Left = 239
      Top = 54
      AutoSize = False
      Caption = #33267
      Height = 16
      Width = 17
    end
    object EndDate: TcxDateEdit
      Tag = 100
      Left = 278
      Top = 53
      Properties.SaveTime = False
      Properties.ShowTime = False
      TabOrder = 3
      Width = 140
    end
    object cxLabel1: TcxLabel
      Left = 18
      Top = 88
      AutoSize = False
      Caption = #29289#26009
      Height = 16
      Width = 54
    end
    object txt_MaterialNumber: TcxButtonEdit
      Tag = 100
      Left = 79
      Top = 85
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ClickKey = 118
      Properties.ReadOnly = True
      Properties.OnButtonClick = txt_MaterialNumberPropertiesButtonClick
      TabOrder = 7
      OnKeyPress = txt_MaterialNumberKeyPress
      Width = 140
    end
    object cxLabel2: TcxLabel
      Left = 18
      Top = 120
      AutoSize = False
      Caption = #39068#33394
      Height = 16
      Width = 54
    end
    object cxLabel3: TcxLabel
      Left = 18
      Top = 24
      AutoSize = False
      Caption = #24405#20837#26041#24335
      Height = 16
      Width = 54
    end
    object txt_ColorNumber: TcxButtonEdit
      Left = 79
      Top = 117
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ClickKey = 118
      Properties.ReadOnly = True
      Properties.OnButtonClick = txt_ColorNumberPropertiesButtonClick
      TabOrder = 10
      OnKeyPress = txt_ColorNumberKeyPress
      Width = 140
    end
    object cxComboBox1: TcxComboBox
      Tag = 100
      Left = 79
      Top = 21
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        #25955#30721
        #37197#30721)
      Properties.OnCloseUp = cxComboBox1PropertiesCloseUp
      TabOrder = 0
      Text = #25955#30721
      Width = 140
    end
    object cxLabel4: TcxLabel
      Left = 18
      Top = 150
      AutoSize = False
      Caption = #23610#30721
      Height = 16
      Width = 54
    end
    object cxLabel7: TcxLabel
      Left = 234
      Top = 149
      AutoSize = False
      Caption = #20869#38271
      Height = 16
      Width = 54
    end
    object txt_SizeOrPack: TcxButtonEdit
      Left = 79
      Top = 148
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ClickKey = 118
      Properties.ReadOnly = True
      Properties.OnButtonClick = txt_SizeOrPackPropertiesButtonClick
      TabOrder = 12
      OnKeyPress = txt_SizeOrPackKeyPress
      Width = 140
    end
    object txt_Cup: TcxButtonEdit
      Left = 278
      Top = 148
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ClickKey = 118
      Properties.ReadOnly = True
      Properties.OnButtonClick = txt_CupPropertiesButtonClick
      TabOrder = 13
      OnKeyPress = txt_CupKeyPress
      Width = 140
    end
    object txt_MaterialName: TcxTextEdit
      Left = 216
      Top = 84
      Properties.ReadOnly = True
      Style.Color = clMenuBar
      TabOrder = 6
      Width = 202
    end
    object txt_ColorName: TcxTextEdit
      Left = 216
      Top = 116
      Properties.ReadOnly = True
      Style.Color = clMenuBar
      TabOrder = 9
      Width = 202
    end
  end
  object Panel2: TPanel [1]
    Left = 0
    Top = 202
    Width = 453
    Height = 51
    Align = alBottom
    Color = 16511980
    TabOrder = 1
    DesignSize = (
      453
      51)
    object btn_Alter: TcxButton
      Left = 255
      Top = 15
      Width = 90
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #24320#22987#21024#38500'(&D)'
      TabOrder = 0
      OnClick = btn_AlterClick
      LookAndFeel.Kind = lfOffice11
    end
    object btn_Exit: TcxButton
      Left = 358
      Top = 15
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #36864#20986'(&E)'
      TabOrder = 1
      OnClick = btn_ExitClick
      LookAndFeel.Kind = lfOffice11
    end
    object cxLabel8: TcxLabel
      Left = 18
      Top = 19
      AutoSize = False
      Caption = #25552#31034#65306#21024#38500#23558#26080#27861#24674#22797#65292#35831#35880#24910#25805#20316#65281
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clRed
      Style.Font.Height = -12
      Style.Font.Name = #23435#20307
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Height = 16
      Width = 223
    end
  end
  inherited STBaseEditDataSet: TClientDataSet
    Left = 24
    Top = 248
  end
end
