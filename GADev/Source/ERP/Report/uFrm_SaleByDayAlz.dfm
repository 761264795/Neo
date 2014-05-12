inherited FormSaleByDayAlz: TFormSaleByDayAlz
  Left = 202
  Top = 157
  Caption = #38646#21806#26085#22343#20998#26512
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 12
  inherited cxGrid1: TcxGrid
    Top = 83
    Height = 502
  end
  inherited Panel1: TPanel
    Height = 83
    inherited Image1: TImage
      Height = 83
    end
    object Label4: TLabel [3]
      Left = 162
      Top = 12
      Width = 51
      Height = 12
      AutoSize = False
      Caption = #21830#21697#32534#21495
      Transparent = True
    end
    object lb_matinfo: TLabel [4]
      Left = 333
      Top = 12
      Width = 80
      Height = 12
      AutoSize = False
      Caption = #21830#21697#21517#31216
      Transparent = True
    end
    object Label3: TLabel [5]
      Left = 7
      Top = 12
      Width = 52
      Height = 12
      AutoSize = False
      Caption = #25130#27490#26085#26399
      Transparent = True
    end
    object Label2: TLabel [6]
      Left = 61
      Top = 32
      Width = 724
      Height = 50
      AutoSize = False
      Caption = 
        #20837#24211#25968#37327'   = '#23567#20110#31561#20110#25130#27490#26085#26399#30340#35843#25320#20837#24211'+'#37319#36141#20837#24211'+'#20854#20182#20837#24211#12290' '#38646#21806#25968#37327' = '#23567#20110#31561#20110#25130#27490#26085#26399#30340'POS'#38144#21806'('#21253#25324#25346#21333')'#13#10#38750 +
        #38646#21806#20986#24211' = '#23567#20110#31561#20110#25130#27490#26085#26399#30340#35843#25320#20986#24211'+'#20854#20182#20986#24211'+'#37319#36141#36864#36135#12290' '#24211#23384#25968#37327' = '#20837#24211#25968#37327'-'#38750#38646#21806#20986#24211' -'#38646#21806#25968#37327#12290'        ' +
        '        '#13#10#26085#22343#25968'     = POS'#38646#21806#25968#37327'/'#19978#24066#22825#25968'('#25130#27490#26085#26399'-'#26368#26089#20837#24211#26085#26399')'#12290'  '#21608#36716#29575'%  = '#24211#23384#25968#37327'/'#38646#21806#25968 +
        #37327'*100'#12290' '#13#10#38144#21806#29575'%    = '#38646#21806#25968#37327'/('#20837#24211#25968'-'#38750#38646#21806#20986#24211')*100'#12290#13#10#13#10
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
    end
    object txMaterial: TcxButtonEdit
      Left = 214
      Top = 7
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ClickKey = 118
      Properties.OnButtonClick = txMaterialPropertiesButtonClick
      Properties.OnChange = txMaterialPropertiesChange
      TabOrder = 1
      OnExit = txMaterialExit
      Width = 112
    end
    object tpEnd: TcxDateEdit
      Left = 60
      Top = 7
      Properties.SaveTime = False
      Properties.ShowTime = False
      TabOrder = 2
      Width = 97
    end
  end
end
