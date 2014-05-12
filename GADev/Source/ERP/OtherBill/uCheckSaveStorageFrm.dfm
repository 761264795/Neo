inherited Frm_CheckSaveStorage: TFrm_CheckSaveStorage
  Left = 384
  Top = 229
  Width = 642
  Height = 167
  BorderIcons = [biSystemMenu]
  Caption = #20445#23384#30424#28857#24403#22825#24211#23384
  OldCreateOrder = True
  OnCanResize = FormCanResize
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel [0]
    Left = 0
    Top = 0
    Width = 626
    Height = 74
    Align = alTop
    Anchors = [akLeft, akTop, akRight, akBottom]
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      626
      74)
    object Image1: TImage
      Left = 0
      Top = 0
      Width = 626
      Height = 74
      Align = alClient
      Stretch = True
    end
    object Label1: TLabel
      Left = 7
      Top = 8
      Width = 447
      Height = 52
      AutoSize = False
      Caption = 
        #35828#26126#65306#13#10'        '#35831#23457#26680#30424#28857#26085#26399#21069#30340#35843#25320#20986#24211#21333#12289#35843#25320#20837#24211#21333#13#10'        '#22914#26524#35843#25320#20837#24211#21333#23646#20110#22312#36884#26410#25910#36135#65292#35831#23558#19994#21153#26085#26399 +
        #20462#25913#20026#22823#20110#30424#28857#26085#26399#13#10'        '#22914#26524#26377#26410#23457#26680#30340#30424#30408#21333#12289#30424#20111#21333#65292#35831#21450#26102#32852#31995#19978#32423#23457#26680
      Transparent = True
    end
    object cxButton1: TcxButton
      Left = 494
      Top = 8
      Width = 115
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #37325#26032#35745#31639#24211#23384
      TabOrder = 0
      Visible = False
      OnClick = cxButton1Click
      LookAndFeel.Kind = lfOffice11
    end
  end
  object Panel2: TPanel [1]
    Left = 0
    Top = 74
    Width = 626
    Height = 55
    Align = alClient
    Anchors = [akLeft, akRight, akBottom]
    BevelOuter = bvNone
    TabOrder = 1
    DesignSize = (
      626
      55)
    object Image2: TImage
      Left = 0
      Top = 0
      Width = 626
      Height = 55
      Align = alClient
      Stretch = True
    end
    object lbCheckDate: TLabel
      Left = 15
      Top = 27
      Width = 66
      Height = 13
      Anchors = [akLeft, akBottom]
      AutoSize = False
      Caption = #30424#28857#26085#26399
      Transparent = True
    end
    object btOk: TcxButton
      Left = 338
      Top = 20
      Width = 78
      Height = 25
      Anchors = [akLeft, akBottom]
      Caption = #20445#23384#24211#23384
      TabOrder = 0
      OnClick = btOkClick
      LookAndFeel.Kind = lfOffice11
    end
    object btCancel: TcxButton
      Left = 541
      Top = 20
      Width = 71
      Height = 25
      Anchors = [akLeft, akBottom]
      Caption = #36864#20986
      TabOrder = 1
      OnClick = btCancelClick
      LookAndFeel.Kind = lfOffice11
    end
    object cxSaveDate: TcxDateEdit
      Left = 87
      Top = 23
      Anchors = [akLeft, akBottom]
      Properties.SaveTime = False
      Properties.ShowTime = False
      TabOrder = 2
      Width = 121
    end
    object cxButton2: TcxButton
      Left = 216
      Top = 20
      Width = 110
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #26816#26597#26410#22788#29702#21333#25454
      TabOrder = 3
      OnClick = cxButton2Click
      LookAndFeel.Kind = lfOffice11
    end
    object btDelSto: TcxButton
      Left = 424
      Top = 20
      Width = 110
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #21024#38500#20445#23384#24211#23384
      TabOrder = 4
      OnClick = btDelStoClick
      LookAndFeel.Kind = lfOffice11
    end
  end
  object cdsCheckBill: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 465
    Top = 6
  end
end
