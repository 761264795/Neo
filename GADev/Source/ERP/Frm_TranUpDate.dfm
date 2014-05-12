object FM_TranUpDate: TFM_TranUpDate
  Left = 359
  Top = 197
  BorderStyle = bsNone
  Caption = #25968#25454#19978#20256
  ClientHeight = 106
  ClientWidth = 464
  Color = 14804455
  Font.Charset = GB2312_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 464
    Height = 106
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 0
    object Image2: TImage
      Left = 1
      Top = 1
      Width = 462
      Height = 104
      Align = alClient
      Stretch = True
    end
    object lbl1: TLabel
      Left = 31
      Top = 44
      Width = 390
      Height = 27
      AutoSize = False
      Caption = #31995#32479#21457#29616#26377#31163#32447#25968#25454#38656#35201#19978#20256#65292#35831#31245#20505'...'
      Font.Charset = GB2312_CHARSET
      Font.Color = clGreen
      Font.Height = -19
      Font.Name = #23435#20307
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
  end
  object cdsM: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 224
    Top = 24
  end
  object cdsD1: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 264
    Top = 24
  end
  object cdsD2: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 304
    Top = 24
  end
  object qryTemp: TADOQuery
    Connection = CliDM.conClient
    CommandTimeout = 0
    Parameters = <>
    Left = 192
    Top = 80
  end
  object tmr1: TTimer
    Enabled = False
    Interval = 500
    OnTimer = tmr1Timer
    Left = 312
    Top = 80
  end
  object qrySerch: TADOQuery
    CacheSize = 1000
    Connection = CliDM.conClient
    LockType = ltBatchOptimistic
    CommandTimeout = 0
    Parameters = <>
    Prepared = True
    Left = 256
    Top = 80
  end
  object cdsD3: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 360
    Top = 24
  end
end
