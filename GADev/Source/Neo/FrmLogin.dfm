object FMLotin: TFMLotin
  Left = 329
  Top = 197
  AutoSize = True
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #35831#36755#20837#30331#24405#20449#24687'...'
  ClientHeight = 394
  ClientWidth = 630
  Color = 14804455
  Font.Charset = GB2312_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #23435#20307
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object imgLogin: TImage
    Left = 0
    Top = 0
    Width = 630
    Height = 394
    AutoSize = True
  end
  object lblUserID: TLabel
    Left = 295
    Top = 161
    Width = 40
    Height = 19
    AutoSize = False
    Caption = #29992#25143'      '
    FocusControl = edtUserID
    Font.Charset = GB2312_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = #24494#36719#38597#40657
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object lblPassword: TLabel
    Left = 295
    Top = 191
    Width = 40
    Height = 19
    AutoSize = False
    Caption = #23494#30721'     '
    FocusControl = edtUserPwd
    Font.Charset = GB2312_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = #24494#36719#38597#40657
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object imgCancel1: TImage
    Left = 433
    Top = 240
    Width = 81
    Height = 23
    Visible = False
  end
  object imgCancel2: TImage
    Left = 433
    Top = 239
    Width = 81
    Height = 24
  end
  object imgOk1: TImage
    Left = 334
    Top = 241
    Width = 81
    Height = 22
    Visible = False
  end
  object imgOk2: TImage
    Left = 334
    Top = 240
    Width = 80
    Height = 24
  end
  object lblOK: TLabel
    Left = 335
    Top = 242
    Width = 81
    Height = 22
    Cursor = crHandPoint
    AutoSize = False
    Transparent = True
    OnClick = lblOKClick
    OnMouseEnter = lblOKMouseEnter
    OnMouseLeave = lblOKMouseLeave
  end
  object lblCancel: TLabel
    Left = 433
    Top = 240
    Width = 78
    Height = 22
    Cursor = crHandPoint
    AutoSize = False
    Transparent = True
    OnClick = lblCancelClick
    OnMouseEnter = lblCancelMouseEnter
    OnMouseLeave = lblCancelMouseLeave
  end
  object lbl1: TLabel
    Left = 319
    Top = 290
    Width = 199
    Height = 16
    AutoSize = False
    Caption = #30331#24405#20449#24687
    Font.Charset = GB2312_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = #24494#36719#38597#40657
    Font.Style = []
    ParentFont = False
    Transparent = True
    Visible = False
  end
  object edtUserID: TEdit
    Left = 331
    Top = 162
    Width = 184
    Height = 19
    Ctl3D = False
    ImeName = #20013#25991' - QQ'#20116#31508#36755#20837#27861
    MaxLength = 50
    ParentCtl3D = False
    TabOrder = 0
    Text = 'zzy'
    OnKeyDown = edtUserIDKeyDown
  end
  object edtUserPwd: TEdit
    Left = 331
    Top = 192
    Width = 184
    Height = 19
    Ctl3D = False
    ImeName = #20013#25991' - QQ'#20116#31508#36755#20837#27861
    MaxLength = 50
    ParentCtl3D = False
    PasswordChar = '*'
    TabOrder = 1
    OnKeyDown = edtUserPwdKeyDown
  end
  object actList: TActionList
    Left = 96
    Top = 128
    object actPassExit: TAction
      Caption = #40736#26631#31163#24320#21152#36733#24215#38138#21644#29677#27425
    end
  end
  object cdsServerInfo: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 88
    Top = 184
    object cdsServerInfoTypeID: TStringField
      FieldName = 'TypeID'
      Size = 200
    end
    object cdsServerInfoTypeName: TStringField
      FieldName = 'TypeName'
      Size = 200
    end
  end
  object cdsOrgList: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 496
    Top = 72
    object cdsOrgListFID: TStringField
      FieldName = 'FID'
      Size = 100
    end
    object cdsOrgListFnumber: TStringField
      FieldName = 'Fnumber'
      Size = 100
    end
    object cdsOrgListFname_l2: TStringField
      FieldName = 'Fname_l2'
      Size = 100
    end
  end
  object dsOrgList: TDataSource
    DataSet = cdsOrgList
    Left = 584
    Top = 72
  end
end
