object FM_BillSerch: TFM_BillSerch
  Left = 235
  Top = 176
  Width = 466
  Height = 178
  Caption = #21333#25454#26597#25214
  Color = 14804455
  Font.Charset = GB2312_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #23435#20307
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  DesignSize = (
    458
    151)
  PixelsPerInch = 96
  TextHeight = 13
  object lblDate: TLabel
    Left = 40
    Top = 27
    Width = 52
    Height = 13
    Caption = #21333#25454#26085#26399
    Transparent = True
  end
  object pnlDate: TPanel
    Left = 96
    Top = 19
    Width = 326
    Height = 25
    BevelInner = bvLowered
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 0
    object lbl_Date2: TLabel
      Left = 156
      Top = 6
      Width = 13
      Height = 13
      Caption = #33267
    end
    object cxBegDate: TcxDateEdit
      Left = 2
      Top = 2
      EditValue = 39448d
      Properties.ImmediatePost = True
      TabOrder = 0
      Width = 151
    end
    object cxEndDate: TcxDateEdit
      Left = 171
      Top = 2
      EditValue = 39448d
      Properties.ImmediatePost = True
      TabOrder = 1
      Width = 151
    end
  end
  object chkBillNo: TCheckBox
    Left = 20
    Top = 58
    Width = 72
    Height = 17
    Caption = #21333#25454#32534#21495
    Checked = True
    State = cbChecked
    TabOrder = 1
    OnClick = chkBillNoClick
  end
  object pnlBillNo: TPanel
    Left = 96
    Top = 53
    Width = 326
    Height = 25
    BevelInner = bvLowered
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 2
    object Label1: TLabel
      Left = 156
      Top = 6
      Width = 13
      Height = 13
      Caption = #33267
    end
    object edtBegBillNo: TcxTextEdit
      Left = 2
      Top = 2
      TabOrder = 0
      Width = 151
    end
    object cxEndBillNo: TcxTextEdit
      Left = 171
      Top = 2
      TabOrder = 1
      Width = 151
    end
  end
  object btnOk: TBitBtn
    Left = 272
    Top = 103
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = #30830#23450' &O'
    ModalResult = 1
    TabOrder = 3
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333330000333333333333333333333333F33333333333
      00003333344333333333333333388F3333333333000033334224333333333333
      338338F3333333330000333422224333333333333833338F3333333300003342
      222224333333333383333338F3333333000034222A22224333333338F338F333
      8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
      33333338F83338F338F33333000033A33333A222433333338333338F338F3333
      0000333333333A222433333333333338F338F33300003333333333A222433333
      333333338F338F33000033333333333A222433333333333338F338F300003333
      33333333A222433333333333338F338F00003333333333333A22433333333333
      3338F38F000033333333333333A223333333333333338F830000333333333333
      333A333333333333333338330000333333333333333333333333333333333333
      0000}
    NumGlyphs = 2
  end
  object btnCancel: TBitBtn
    Left = 352
    Top = 103
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = #21462#28040' &C'
    TabOrder = 4
    Kind = bkCancel
  end
end
