inherited QueryPosStockFrm: TQueryPosStockFrm
  Left = 125
  Top = 118
  Caption = #24211#23384#26597#35810
  ClientWidth = 968
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 12
  inherited cxGrid1: TcxGrid
    Top = 30
    Width = 968
    Height = 555
  end
  inherited Panel1: TPanel
    Width = 968
    Height = 30
    inherited Image1: TImage
      Width = 968
      Height = 30
    end
    inherited Image2: TImage
      Top = 9
    end
    inherited Label1: TLabel
      Left = 899
      Top = 13
      Width = 62
    end
    object Label5: TLabel [3]
      Left = 366
      Top = 10
      Width = 55
      Height = 12
      AutoSize = False
      Caption = #21830#21697#32534#21495#65306
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object lb_matinfo: TLabel [4]
      Left = 541
      Top = 9
      Width = 228
      Height = 14
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -9
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object lbOrg: TLabel [5]
      Left = 5
      Top = 10
      Width = 60
      Height = 13
      Caption = #24211#23384#32452#32455#65306
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clDefault
      Font.Height = -9
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label2: TLabel [6]
      Left = 188
      Top = 10
      Width = 34
      Height = 12
      AutoSize = False
      Caption = #24215#38138#65306
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    inherited btOK: TcxButton
      Left = 810
      Top = 3
    end
    object bt_material: TcxButtonEdit
      Left = 426
      Top = 6
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ClickKey = 118
      Properties.OnButtonClick = bt_materialPropertiesButtonClick
      Properties.OnChange = bt_materialPropertiesChange
      TabOrder = 1
      OnExit = bt_materialExit
      OnKeyDown = bt_materialKeyDown
      Width = 114
    end
    object maxVal: TcxCalcEdit
      Left = 699
      Top = 33
      EditValue = 0.000000000000000000
      Style.LookAndFeel.Kind = lfOffice11
      Style.LookAndFeel.SkinName = ''
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.SkinName = ''
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.SkinName = ''
      StyleHot.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.SkinName = ''
      TabOrder = 3
      Visible = False
      Width = 26
    end
    object cxCheckBox1: TcxCheckBox
      Left = 618
      Top = 33
      Caption = #24211#23384#22823#20110
      State = cbsChecked
      TabOrder = 2
      Transparent = True
      Visible = False
      Width = 62
    end
    object cbSupplyOrg: TcxLookupComboBox
      Left = 63
      Top = 6
      Properties.DropDownListStyle = lsFixedList
      Properties.KeyFieldNames = 'FID'
      Properties.ListColumns = <
        item
          Caption = #32452#32455#21517#31216
          FieldName = 'fName_l2'
        end>
      Properties.ListSource = dsSupplyOrg
      Properties.OnEditValueChanged = cbSupplyOrgPropertiesEditValueChanged
      TabOrder = 5
      Width = 118
    end
    object cbOtherStora: TcxCheckBox
      Left = 282
      Top = 39
      Caption = #26597#30475#20854#20182#24215#38138
      Properties.OnChange = cbOtherStoraPropertiesChange
      TabOrder = 4
      Transparent = True
      Width = 96
    end
    object bt_Warehouse: TcxButtonEdit
      Left = 223
      Top = 6
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ClearKey = 46
      Properties.ClickKey = 118
      Properties.ReadOnly = False
      Properties.OnButtonClick = bt_WarehousePropertiesButtonClick
      TabOrder = 6
      OnKeyPress = bt_WarehouseKeyPress
      Width = 128
    end
  end
  object dsSupplyOrg: TDataSource
    DataSet = cdsSupplyOrg
    Left = 496
    Top = 77
  end
  object cdsSupplyOrg: TClientDataSet
    Aggregates = <>
    FetchOnDemand = False
    Params = <>
    Left = 416
    Top = 77
  end
  object cdsList1: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 392
    Top = 128
  end
  object dsList1: TDataSource
    DataSet = cdsList1
    Left = 328
    Top = 192
  end
end
