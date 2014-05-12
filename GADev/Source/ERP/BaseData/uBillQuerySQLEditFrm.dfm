inherited BillQuerySQLEditFrm: TBillQuerySQLEditFrm
  Left = 367
  Top = 147
  Caption = #33258#23450#20041#24377#20986#26694'SQL'#32534#36753
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 12
  object Panel1: TPanel [0]
    Left = 0
    Top = 430
    Width = 784
    Height = 32
    Align = alBottom
    Color = 16511980
    TabOrder = 0
    DesignSize = (
      784
      32)
    object Label1: TLabel
      Left = 8
      Top = 9
      Width = 546
      Height = 12
      Caption = #33258#23450#20041#23545#35805#26694'SQL'#37324#21487#20197#20256#20837#21464#37327','#30331#24405#29992#25143'FID'#30340#21464#37327#20026'":User_ID",'#30331#24405#20998#25903#26426#26500'FID'#20026'":Branch_ID"'#12290
    end
    object btn_Save: TcxButton
      Left = 588
      Top = 3
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #20445#23384'(&S)'
      TabOrder = 0
      OnClick = btn_SaveClick
      LookAndFeel.Kind = lfOffice11
    end
    object tbn_Exit: TcxButton
      Left = 684
      Top = 3
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #21462#28040'(&C)'
      TabOrder = 1
      OnClick = tbn_ExitClick
      LookAndFeel.Kind = lfOffice11
    end
  end
  object m_SQL: TcxMemo [1]
    Left = 0
    Top = 0
    Align = alClient
    TabOrder = 1
    Height = 430
    Width = 784
  end
end
