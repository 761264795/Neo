object SelectMaterialInfoFrm: TSelectMaterialInfoFrm
  Left = 262
  Top = 285
  Width = 773
  Height = 484
  Caption = #29289#26009#36873#25321#26694
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #23435#20307
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnCreate = FormCreate
  OnKeyUp = FormKeyUp
  PixelsPerInch = 96
  TextHeight = 12
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 464
    Height = 446
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Panel1'
    TabOrder = 0
    object Panel3: TPanel
      Left = 0
      Top = 0
      Width = 464
      Height = 41
      Align = alTop
      BevelOuter = bvNone
      Color = clSkyBlue
      TabOrder = 0
      object lb_Item: TLabel
        Left = 7
        Top = 12
        Width = 39
        Height = 17
        AutoSize = False
        Caption = #27454#21495
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object txt_Info: TcxTextEdit
        Left = 51
        Top = 7
        ParentFont = False
        Properties.OnChange = txt_InfoPropertiesChange
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -19
        Style.Font.Name = #23435#20307
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 0
        Width = 401
      end
    end
    object Panel4: TPanel
      Left = 0
      Top = 41
      Width = 464
      Height = 380
      Align = alClient
      TabOrder = 1
      object DBGrid: TDBGrid
        Left = 1
        Top = 1
        Width = 462
        Height = 378
        Align = alClient
        Color = clGradientInactiveCaption
        Ctl3D = False
        DataSource = dsSelect
        FixedColor = clSkyBlue
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = #23435#20307
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -16
        TitleFont.Name = #23435#20307
        TitleFont.Style = []
        OnDrawColumnCell = DBGridDrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'FID'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'Fnumber'
            Width = 172
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FName'
            Width = 281
            Visible = True
          end>
      end
    end
    object Panel5: TPanel
      Left = 0
      Top = 421
      Width = 464
      Height = 25
      Align = alBottom
      BevelOuter = bvNone
      Color = clSkyBlue
      TabOrder = 2
      object Label7: TLabel
        Left = 6
        Top = 7
        Width = 435
        Height = 13
        AutoSize = False
        Caption = #25353#22238#36710#38190#30830#35748','#21024#38500#38190#28165#31354#36873#25321#65292'ESC'#38190#36864#20986'...'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
    end
  end
  object Panel2: TPanel
    Left = 464
    Top = 0
    Width = 293
    Height = 446
    Align = alRight
    BevelOuter = bvNone
    Color = clGradientInactiveCaption
    TabOrder = 1
    object Label1: TLabel
      Left = 11
      Top = 17
      Width = 41
      Height = 17
      AutoSize = False
      Caption = #27454#21495#65306
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #23435#20307
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 11
      Top = 59
      Width = 41
      Height = 17
      AutoSize = False
      Caption = #27454#21517#65306
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #23435#20307
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 11
      Top = 100
      Width = 41
      Height = 17
      AutoSize = False
      Caption = #33394#21495#65306
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #23435#20307
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 11
      Top = 140
      Width = 41
      Height = 17
      AutoSize = False
      Caption = #39068#33394#65306
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #23435#20307
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 11
      Top = 181
      Width = 41
      Height = 17
      AutoSize = False
      Caption = #23610#30721#65306
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #23435#20307
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 11
      Top = 221
      Width = 41
      Height = 17
      AutoSize = False
      Caption = #20869#38271#65306
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = #23435#20307
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lb_MaterNumber: TLabel
      Left = 57
      Top = 17
      Width = 223
      Height = 17
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object lb_MaterName: TLabel
      Left = 57
      Top = 59
      Width = 223
      Height = 17
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object lb_ColorNumber: TLabel
      Left = 57
      Top = 100
      Width = 223
      Height = 17
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object lb_ColorName: TLabel
      Left = 57
      Top = 140
      Width = 223
      Height = 17
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object lb_Size: TLabel
      Left = 57
      Top = 181
      Width = 223
      Height = 17
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object lb_Cup: TLabel
      Left = 57
      Top = 221
      Width = 223
      Height = 17
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
  end
  object dsSelect: TDataSource
    DataSet = QrySelect
    Left = 120
    Top = 153
  end
  object QrySelect: TADOQuery
    Connection = CliDM.conClient
    Parameters = <>
    Left = 208
    Top = 153
    object QrySelectFID: TStringField
      FieldName = 'FID'
      Size = 60
    end
    object QrySelectFnumber: TStringField
      DisplayLabel = #32534#21495
      FieldName = 'Fnumber'
      Size = 80
    end
    object QrySelectFName: TStringField
      DisplayLabel = #21517#31216
      FieldName = 'FName'
      Size = 100
    end
  end
end
