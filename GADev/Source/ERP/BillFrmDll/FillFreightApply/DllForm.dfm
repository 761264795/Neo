object frmDll: TfrmDll
  Left = 238
  Top = 173
  Width = 800
  Height = 600
  Caption = 'Dll'#20013#23450#20041#30340#31383#20307
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 792
    Height = 167
    Align = alTop
    BevelOuter = bvLowered
    Color = 16053228
    Font.Charset = GB2312_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = #23435#20307
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    DesignSize = (
      792
      167)
    object lb_Bill_Title: TLabel
      Left = 264
      Top = 13
      Width = 202
      Height = 20
      Alignment = taCenter
      Anchors = [akLeft, akTop, akRight]
      AutoSize = False
      Caption = #35843#25320#21333
      Font.Charset = GB2312_CHARSET
      Font.Color = 12216389
      Font.Height = -20
      Font.Name = #23435#20307
      Font.Style = [fsBold]
      ParentFont = False
    end
    object im_Status: TImage
      Left = 562
      Top = 6
      Width = 88
      Height = 42
      Anchors = [akLeft, akTop, akRight]
      Center = True
      Transparent = True
      Visible = False
    end
    object pnl_Audio1: TImage
      Left = 475
      Top = 6
      Width = 88
      Height = 42
      Anchors = [akLeft, akTop, akRight]
      Center = True
      Visible = False
    end
    object pnl_Audio3: TImage
      Left = 649
      Top = 6
      Width = 88
      Height = 42
      Anchors = [akLeft, akTop, akRight]
      Center = True
      Visible = False
    end
    object Panel5: TPanel
      Left = 603
      Top = 56
      Width = 129
      Height = 35
      Anchors = [akTop, akRight]
      BevelOuter = bvNone
      Color = 12216389
      TabOrder = 0
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 129
        Height = 16
        Align = alTop
        BevelOuter = bvNone
        Caption = #21333#25454#32534#21495
        Color = 12216389
        Font.Charset = GB2312_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
  end
  object pnlDetail: TPanel
    Left = 0
    Top = 167
    Width = 792
    Height = 399
    Align = alClient
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 0
      Top = 0
      Width = 792
      Height = 399
      Align = alClient
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
    end
  end
end
