inherited Frm_SCMCheckSaveStorage: TFrm_SCMCheckSaveStorage
  Left = 384
  Top = 229
  Width = 676
  Height = 249
  BorderIcons = [biSystemMenu]
  Caption = #20445#23384#30424#28857#24403#22825#24211#23384
  OldCreateOrder = True
  OnCanResize = FormCanResize
  PixelsPerInch = 96
  TextHeight = 12
  object Panel1: TPanel [0]
    Left = 0
    Top = 0
    Width = 660
    Height = 103
    Align = alTop
    Anchors = [akLeft, akTop, akRight, akBottom]
    Color = 16053228
    TabOrder = 0
    DesignSize = (
      660
      103)
    object Label1: TLabel
      Left = 6
      Top = 7
      Width = 413
      Height = 48
      AutoSize = False
      Caption = 
        #35828#26126#65306#13#10'        '#35831#23457#26680#30424#28857#26085#26399#21069#30340#35843#25320#20986#24211#21333#12289#35843#25320#20837#24211#21333#13#10'        '#22914#26524#35843#25320#20837#24211#21333#23646#20110#22312#36884#26410#25910#36135#65292#35831#23558#19994#21153#26085#26399 +
        #20462#25913#20026#22823#20110#30424#28857#26085#26399#13#10'        '#22914#26524#26377#26410#23457#26680#30340#30424#30408#21333#12289#30424#20111#21333#65292#35831#21450#26102#32852#31995#19978#32423#23457#26680
      Transparent = True
    end
    object cxButton1: TcxButton
      Left = 490
      Top = 7
      Width = 106
      Height = 23
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
    Top = 103
    Width = 660
    Height = 108
    Align = alClient
    Anchors = [akLeft, akRight, akBottom]
    Color = 16053228
    TabOrder = 1
    DesignSize = (
      660
      108)
    object lbCheckDate: TLabel
      Left = 319
      Top = 14
      Width = 61
      Height = 12
      Anchors = [akLeft, akBottom]
      AutoSize = False
      Caption = #30424#28857#26085#26399
      Transparent = True
    end
    object btOk: TcxButton
      Left = 384
      Top = 66
      Width = 72
      Height = 24
      Anchors = [akLeft, akBottom]
      Caption = #20445#23384#24211#23384
      TabOrder = 0
      OnClick = btOkClick
      LookAndFeel.Kind = lfOffice11
    end
    object btCancel: TcxButton
      Left = 595
      Top = 66
      Width = 66
      Height = 24
      Anchors = [akLeft, akBottom]
      Caption = #36864#20986
      TabOrder = 1
      OnClick = btCancelClick
      LookAndFeel.Kind = lfOffice11
    end
    object cxSaveDate: TcxDateEdit
      Left = 374
      Top = 10
      Anchors = [akLeft, akBottom]
      Properties.SaveTime = False
      Properties.ShowTime = False
      TabOrder = 2
      Width = 161
    end
    object cxButton2: TcxButton
      Left = 265
      Top = 66
      Width = 102
      Height = 24
      Anchors = [akTop, akRight]
      Caption = #26816#26597#26410#22788#29702#21333#25454
      TabOrder = 3
      OnClick = cxButton2Click
      LookAndFeel.Kind = lfOffice11
    end
    object btDelSto: TcxButton
      Left = 473
      Top = 66
      Width = 102
      Height = 24
      Anchors = [akTop, akRight]
      Caption = #21024#38500#20445#23384#24211#23384
      TabOrder = 4
      OnClick = btDelStoClick
      LookAndFeel.Kind = lfOffice11
    end
    object cxLabel1: TcxLabel
      Left = 3
      Top = 14
      Caption = #30424#28857#20179#24211
    end
    object cxbtnWarehouse: TcxButtonEdit
      Left = 58
      Top = 10
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ReadOnly = True
      Properties.OnButtonClick = cxbtnWarehousePropertiesButtonClick
      TabOrder = 6
      Width = 231
    end
  end
  object cdsCheckBill: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 465
    Top = 6
  end
end
