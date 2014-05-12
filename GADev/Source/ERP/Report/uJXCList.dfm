inherited JXCListFrm: TJXCListFrm
  Left = 216
  Top = 205
  Align = alNone
  BorderStyle = bsSizeable
  Caption = #36827#38144#23384#26126#32454#25968#25454
  WindowState = wsNormal
  PixelsPerInch = 96
  TextHeight = 12
  inherited cxGrid1: TcxGrid
    Top = 121
    Height = 464
    Hint = 'F10'#25110#21452#20987#21487#20197#25171#24320#28304#21333#25454'...'
    inherited dbgList: TcxGridDBTableView
      OnCellDblClick = dbgListCellDblClick
    end
  end
  inherited Panel1: TPanel
    Height = 121
    inherited Image1: TImage
      Height = 121
    end
    inherited Image2: TImage
      Left = 879
      Top = 94
    end
    inherited Label1: TLabel
      Left = 864
      Top = 96
    end
    object lbl1: TLabel [3]
      Left = 392
      Top = 98
      Width = 72
      Height = 12
      Caption = #19994#21153#26085#26399#20174#65306
      Transparent = True
    end
    object lbl2: TLabel [4]
      Left = 571
      Top = 97
      Width = 24
      Height = 12
      Caption = #21040#65306
      Transparent = True
    end
    object lbl3: TLabel [5]
      Left = 427
      Top = 16
      Width = 36
      Height = 12
      Alignment = taRightJustify
      Caption = #29289#26009#65306
      Transparent = True
    end
    object Label2: TLabel [6]
      Left = 427
      Top = 36
      Width = 36
      Height = 12
      Alignment = taRightJustify
      Caption = #39068#33394#65306
      Transparent = True
    end
    object lbl4: TLabel [7]
      Left = 427
      Top = 56
      Width = 36
      Height = 12
      Alignment = taRightJustify
      Caption = #23610#30721#65306
      Transparent = True
    end
    object lbl5: TLabel [8]
      Left = 427
      Top = 75
      Width = 36
      Height = 12
      Alignment = taRightJustify
      Caption = #20869#38271#65306
      Transparent = True
    end
    object lbl_mat: TLabel [9]
      Left = 464
      Top = 15
      Width = 36
      Height = 12
      Caption = #29289#26009#65306
      Transparent = True
    end
    object lbl_color: TLabel [10]
      Left = 464
      Top = 35
      Width = 36
      Height = 12
      Caption = #39068#33394#65306
      Transparent = True
    end
    object lbl_size: TLabel [11]
      Left = 464
      Top = 55
      Width = 36
      Height = 12
      Caption = #23610#30721#65306
      Transparent = True
    end
    object lbl_cup: TLabel [12]
      Left = 464
      Top = 74
      Width = 6
      Height = 12
      Transparent = True
    end
    object lbl6: TLabel [13]
      Left = 795
      Top = 16
      Width = 144
      Height = 12
      Anchors = [akTop, akRight]
      Caption = #25552#31034#65306#21452#20987#21487#26597#30475#21333#25454#20449#24687
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    inherited btOK: TcxButton
      Left = 778
      Top = 86
      Height = 27
    end
    object cxGroupBox1: TcxGroupBox
      Left = 8
      Top = 8
      Caption = #20837#24211#31867
      TabOrder = 1
      Transparent = True
      Height = 105
      Width = 185
      object chk_in_tp: TcxCheckBox
        Left = 8
        Top = 16
        Caption = #35843#25320#20837#24211
        State = cbsChecked
        TabOrder = 0
        Transparent = True
        Width = 121
      end
      object chk_in_pur: TcxCheckBox
        Left = 8
        Top = 32
        Caption = #37319#36141#20837#24211
        State = cbsChecked
        TabOrder = 1
        Transparent = True
        Width = 121
      end
      object chk_in_outer: TcxCheckBox
        Left = 8
        Top = 48
        Caption = #20854#23427#20837#24211'\'#30424#30408#20837#24211
        State = cbsChecked
        TabOrder = 2
        Transparent = True
        Width = 161
      end
      object chk_in_xt: TcxCheckBox
        Left = 8
        Top = 64
        Caption = 'POS'#38646#21806#36864#36135
        State = cbsChecked
        TabOrder = 3
        Transparent = True
        Width = 121
      end
      object chk_in_start: TcxCheckBox
        Left = 8
        Top = 80
        Caption = #24211#23384#21021#22987#21270#21333
        State = cbsChecked
        TabOrder = 4
        Transparent = True
        Width = 121
      end
    end
    object cxGroupBox2: TcxGroupBox
      Left = 200
      Top = 8
      Caption = #20986#24211#31867
      TabOrder = 2
      Transparent = True
      Height = 105
      Width = 185
      object chk_out_tp: TcxCheckBox
        Left = 8
        Top = 16
        Caption = #35843#25320#20986#24211
        State = cbsChecked
        TabOrder = 0
        Transparent = True
        Width = 121
      end
      object chk_out_pur: TcxCheckBox
        Left = 8
        Top = 32
        Caption = #37319#36141#36864#36135
        State = cbsChecked
        TabOrder = 1
        Transparent = True
        Width = 121
      end
      object chk_out_outer: TcxCheckBox
        Left = 8
        Top = 48
        Caption = #20854#23427#20986#24211'\'#30424#30408#20986#24211
        State = cbsChecked
        TabOrder = 2
        Transparent = True
        Width = 169
      end
      object chk_out_sale: TcxCheckBox
        Left = 8
        Top = 64
        Caption = 'POS'#38646#21806#20986#24211
        State = cbsChecked
        TabOrder = 3
        Transparent = True
        Width = 121
      end
    end
    object begindate: TcxDateEdit
      Left = 465
      Top = 93
      Properties.ShowTime = False
      TabOrder = 3
      Width = 103
    end
    object endDate: TcxDateEdit
      Left = 597
      Top = 93
      Properties.ShowTime = False
      TabOrder = 4
      Width = 104
    end
  end
  inherited PopupMenu1: TPopupMenu
    object N_openBill: TMenuItem [0]
      Caption = #25171#24320#21333#25454'...'
      ShortCut = 121
      OnClick = N_openBillClick
    end
  end
  inherited cdsList: TADODataSet
    Left = 712
    Top = 16
  end
  inherited cdsListReport: TClientDataSet
    Left = 648
    Top = 8
  end
end
