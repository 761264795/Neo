inherited FrmHang: TFrmHang
  Left = 422
  Top = 232
  Width = 432
  Height = 146
  BorderIcons = [biSystemMenu]
  Caption = #36873#21333
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 12
  object pnClient: TPanel [0]
    Left = 0
    Top = 0
    Width = 424
    Height = 119
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object Image1: TImage
      Left = 0
      Top = 0
      Width = 424
      Height = 119
      Align = alClient
      Stretch = True
    end
    object clBill: TLabel
      Left = 202
      Top = 9
      Width = 50
      Height = 12
      AutoSize = False
      Caption = #25346#21333#21495':'
      Transparent = True
    end
    object Label1: TLabel
      Left = 18
      Top = 9
      Width = 52
      Height = 12
      AutoSize = False
      Caption = #25346#21333#26085#26399':'
      Transparent = True
    end
    object Label2: TLabel
      Left = 20
      Top = 36
      Width = 344
      Height = 13
      Caption = #25552#31034':'#35831#36755#20837#25346#21333#26085#26399#21644#25346#21333#21495#65288#25110#23567#31080#32534#21495#26368#21518#22235#20301#65289
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label3: TLabel
      Left = 187
      Top = 30
      Width = 124
      Height = 12
      AutoSize = False
      Caption = '('#23567#31080#21333#25454#32534#21495#26368#21518'4'#20301')'
      Transparent = True
      Visible = False
    end
    object Bevel1: TBevel
      Left = 8
      Top = 59
      Width = 368
      Height = 2
    end
    object Label4: TLabel
      Left = 15
      Top = 77
      Width = 156
      Height = 12
      AutoSize = False
      Caption = 'ESC'#38190#36864#20986'...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object cbHang: TcxTextEdit
      Left = 244
      Top = 6
      TabOrder = 0
      OnKeyDown = cbHangKeyDown
      Width = 127
    end
    object btOK: TcxButton
      Left = 300
      Top = 68
      Width = 69
      Height = 23
      Caption = #30830#23450'(&Y)'
      Default = True
      TabOrder = 1
      OnClick = btOKClick
      LookAndFeel.Kind = lfOffice11
    end
    object cxDate: TcxDateEdit
      Left = 71
      Top = 6
      Properties.SaveTime = False
      Properties.ShowTime = False
      TabOrder = 2
      OnKeyDown = cxDateKeyDown
      Width = 112
    end
  end
  object csMaster: TClientDataSet
    Aggregates = <>
    Params = <>
    RemoteServer = CliDM.SckCon
    Left = 88
    Top = 1
  end
  object csDetail: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 152
    Top = 1
  end
  object csRetailPRPRE: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 216
    Top = 1
  end
  object QryMater: TADOQuery
    Connection = CliDM.conClient
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      'select * from CT_BIL_RETAILPOS(nolock)')
    Left = 104
    Top = 48
  end
  object QryDetail: TADOQuery
    Connection = CliDM.conClient
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      'select * from CT_BIL_RETAILPOSENTRY(nolock)')
    Left = 168
    Top = 48
  end
  object qryPrepre: TADOQuery
    Connection = CliDM.conClient
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      'select * from CT_BIL_RETAILPRPRE(nolock)')
    Left = 240
    Top = 48
  end
  object dsMaster: TDataSource
    DataSet = csMaster
    Left = 224
    Top = 25
  end
  object dsDetail: TDataSource
    DataSet = csDetail
    Left = 289
    Top = 1
  end
  object dsRetailPRPRE: TDataSource
    DataSet = csRetailPRPRE
    Left = 360
    Top = 9
  end
end
