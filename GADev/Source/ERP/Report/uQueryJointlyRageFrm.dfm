inherited QueryJointlyRageFrm: TQueryJointlyRageFrm
  Left = 272
  Top = 82
  Caption = #36830#24102#29575#20998#26512#25253#34920
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxGrid1: TcxGrid
    Top = 68
    Height = 517
  end
  inherited Panel1: TPanel
    Height = 68
    inherited Image1: TImage
      Height = 68
    end
    object Label2: TLabel [3]
      Left = 17
      Top = 13
      Width = 55
      Height = 13
      AutoSize = False
      Caption = #24320#22987#26085#26399
      Transparent = True
    end
    object Label3: TLabel [4]
      Left = 171
      Top = 13
      Width = 57
      Height = 13
      AutoSize = False
      Caption = #32467#26463#26085#26399
      Transparent = True
    end
    object Label4: TLabel [5]
      Left = 376
      Top = 13
      Width = 41
      Height = 13
      AutoSize = False
      Caption = #36830#24102#25968
      Transparent = True
    end
    object Label5: TLabel [6]
      Left = 18
      Top = 36
      Width = 585
      Height = 29
      AutoSize = False
      Caption = 
        #36830#24102#65306' '#19968#24352#21333#25454#36229#36807'2'#20214#25110#32773'3'#20214#25968#37327#65292#21017#35270#20026#36830#24102#21333#65292#36890#36807#36830#24102#25968#35774#32622#13#10#36830#24102#29575#65306#36830#24102#21333#25968#37327'/'#24635#38144#21806#25968#37327'   '#36830#24102#29575#39640#20302#21487#20197#21453#24212#24215#38138 +
        #30340#38144#21806#27700#24179
      Transparent = True
    end
    object tpBegin: TcxDateEdit
      Left = 73
      Top = 8
      Properties.SaveTime = False
      Properties.ShowTime = False
      TabOrder = 1
      Width = 86
    end
    object tpEnd: TcxDateEdit
      Left = 229
      Top = 8
      Properties.SaveTime = False
      Properties.ShowTime = False
      TabOrder = 2
      Width = 86
    end
    object peJointly: TcxSpinEdit
      Left = 424
      Top = 8
      Properties.MinValue = 1.000000000000000000
      TabOrder = 3
      Value = 2
      Width = 81
    end
  end
end
