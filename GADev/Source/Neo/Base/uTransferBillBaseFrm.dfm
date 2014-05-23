object TransferBillBaseFrm: TTransferBillBaseFrm
  Left = 406
  Top = 300
  Width = 573
  Height = 290
  Caption = #36716#21333#22522#31867
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object dsDestMaster: TDataSource
    DataSet = cdsDestMaster
    Left = 288
    Top = 40
  end
  object dsDestDetail: TDataSource
    DataSet = cdsDestDetail
    Left = 304
    Top = 128
  end
  object cdsDestDetail: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 408
    Top = 120
  end
  object cdsDestMaster: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 440
    Top = 32
  end
end
