object TransferBillSelFrm: TTransferBillSelFrm
  Left = 343
  Top = 265
  BorderStyle = bsDialog
  Caption = #21333#25454#36716#25442
  ClientHeight = 83
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object cxLabel1: TcxLabel
    Left = 40
    Top = 8
    Caption = #36716#25442#35268#21017
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'MS Sans Serif'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
  end
  object cxBtnOK: TcxButton
    Left = 192
    Top = 48
    Width = 75
    Height = 25
    Caption = #30830#23450
    TabOrder = 1
    OnClick = cxBtnOKClick
  end
  object cxBtnCancel: TcxButton
    Left = 288
    Top = 48
    Width = 75
    Height = 25
    Caption = #21462#28040
    TabOrder = 2
    OnClick = cxBtnCancelClick
  end
  object cxLookupComboBox1: TcxLookupComboBox
    Left = 104
    Top = 4
    Properties.DropDownListStyle = lsFixedList
    Properties.KeyFieldNames = 'FNumber'
    Properties.ListColumns = <
      item
        FieldName = 'FName'
      end>
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = dsRule
    TabOrder = 3
    Width = 249
  end
  object dsRule: TDataSource
    DataSet = cdsRule
    Left = 368
  end
  object cdsRule: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 408
    object cdsRuleFNumber: TWideStringField
      FieldName = 'FNumber'
      Size = 100
    end
    object cdsRuleFName: TWideStringField
      FieldName = 'FName'
      Size = 100
    end
  end
end
