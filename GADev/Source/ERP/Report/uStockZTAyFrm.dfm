inherited StockZTAyFrm: TStockZTAyFrm
  Left = 207
  Top = 150
  Caption = #22312#36884#24211#23384#26597#35810
  ClientHeight = 692
  ClientWidth = 1042
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 12
  inherited cxGrid1: TcxGrid
    Top = 75
    Width = 1042
    Height = 617
  end
  inherited Panel1: TPanel
    Width = 1042
    Height = 75
    inherited Image1: TImage
      Width = 1042
      Height = 75
    end
    inherited Image2: TImage
      Left = 958
      Top = 49
    end
    inherited Label1: TLabel
      Left = 951
      Top = 52
      Width = 73
    end
    object lblOrg: TLabel [3]
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
    object lbl1: TLabel [4]
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
    object lbl2: TLabel [5]
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
    object lbl_matinfo: TLabel [6]
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
    object Label2: TLabel [7]
      Left = 61
      Top = 34
      Width = 772
      Height = 40
      AutoSize = False
      Caption = 
        #20837#24211#22312#36884' = '#35843#25320#20837#24211'('#26410#23457#26680')+'#37319#36141#20837#24211'('#26410#23457#26680') '#12290'           '#20986#24211#22312#36884' = '#35843#25320#20986#24211#23545#26041#26410#31614#25910#25968#25454'+'#37319#36141#36864#36135#30003#35831 +
        #23545#26041#26410#21521#31614#25910#25968#25454#12290#13#10#21363#26102#24211#23384' = '#24211#23384#24403#21069#24211#23384'-('#25346#21333'+'#26410#29983#25104#38144#21806#20986#24211#30340#38646#21806#21333')'#12290'   '#38144#21806#25968#37327' = POS'#38646#21806#25968#25454'('#21253#25324#25346#21333 +
        ')'#12290' '#13#10#23384#38144#27604'%  = '#21363#26102#24211#23384'/'#38144#21806#25968#37327'*100'#12290'                        '#39044#35745#24211#23384' = '#21363#26102#24211#23384'+'#20837 +
        #24211#22312#36884#12290
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
    end
    inherited btOK: TcxButton
      Left = 854
      Top = 39
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
      TabOrder = 1
      Width = 118
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
      TabOrder = 2
      OnKeyPress = bt_WarehouseKeyPress
      Width = 128
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
      TabOrder = 3
      OnExit = bt_materialExit
      OnKeyDown = bt_materialKeyDown
      Width = 114
    end
  end
  inherited cdsListReport: TClientDataSet
    Left = 328
    Top = 64
  end
  object dsSupplyOrg: TDataSource
    DataSet = cdsSupplyOrg
    Left = 584
    Top = 77
  end
  object cdsSupplyOrg: TClientDataSet
    Aggregates = <>
    FetchOnDemand = False
    Params = <>
    Left = 480
    Top = 85
  end
end
