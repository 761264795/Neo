object SysDataSelectFrm: TSysDataSelectFrm
  Left = 454
  Top = 187
  Width = 546
  Height = 439
  BorderIcons = [biSystemMenu]
  Caption = #25968#25454#36873#25321
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid
    Left = 0
    Top = 27
    Width = 538
    Height = 381
    Align = alClient
    TabOrder = 0
    LookAndFeel.Kind = lfOffice11
    object cxGrid1v: TcxGridDBTableView
      OnDblClick = cxGrid1vDblClick
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsGrid
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.GroupByBox = False
    end
    object cxGridLevel1: TcxGridLevel
      GridView = cxGrid1v
    end
  end
  object Panel6: TPanel
    Left = 0
    Top = 0
    Width = 538
    Height = 27
    Align = alTop
    Color = clGradientInactiveCaption
    ParentBackground = False
    TabOrder = 1
    object sbSearch: TSpeedButton
      Left = 270
      Top = 2
      Width = 64
      Height = 22
      Caption = #27169#31946#26597#25214
      Flat = True
      OnClick = sbSearchClick
    end
    object cmbCode: TcxComboBox
      Left = 4
      Top = 2
      TabOrder = 2
      Visible = False
      Width = 133
    end
    object edSearch: TEdit
      Left = 143
      Top = 2
      Width = 121
      Height = 21
      ImeName = #20013#25991' - QQ'#20116#31508#36755#20837#27861
      TabOrder = 0
      OnChange = edSearchChange
      OnKeyDown = edSearchKeyDown
    end
    object cmbName: TcxComboBox
      Left = 4
      Top = 2
      Properties.DropDownListStyle = lsFixedList
      Properties.OnChange = cmbNamePropertiesChange
      TabOrder = 1
      Width = 133
    end
  end
  object qryGrid1: TADOQuery
    Connection = CliDM.conClient
    Parameters = <>
    Left = 200
    Top = 240
  end
  object dsGrid: TDataSource
    DataSet = ClientDataSet1
    Left = 120
    Top = 288
  end
  object qryGrid: TADOQuery
    Connection = CliDM.conClient
    Parameters = <>
    Left = 312
    Top = 152
  end
  object cdsMaterial: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 264
    Top = 304
    object cdsMaterialFID: TWideStringField
      FieldName = 'FID'
      Size = 44
    end
    object cdsMaterialfnumber: TWideStringField
      FieldName = 'fnumber'
      Size = 50
    end
    object cdsMaterialfname_l2: TWideStringField
      FieldName = 'fname_l2'
      Size = 80
    end
    object cdsMaterialCfattributeid: TWideStringField
      FieldName = 'Cfattributeid'
      Size = 44
    end
    object cdsMaterialCfbrandid: TWideStringField
      FieldName = 'Cfbrandid'
      Size = 44
    end
    object cdsMaterialCFSizeGroupID: TWideStringField
      FieldName = 'CFSizeGroupID'
      Size = 44
    end
    object cdsMaterialFBASEUNIT: TWideStringField
      FieldName = 'FBASEUNIT'
      Size = 44
    end
    object cdsMaterialcfunityprice: TFloatField
      FieldName = 'cfunityprice'
    end
    object cdsMaterialcfdistributeprice: TFloatField
      FieldName = 'cfdistributeprice'
    end
    object cdsMaterialcfpurprice: TFloatField
      FieldName = 'cfpurprice'
    end
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 152
    Top = 184
  end
end
