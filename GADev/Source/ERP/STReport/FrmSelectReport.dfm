object FMSelectReport: TFMSelectReport
  Left = 293
  Top = 178
  BorderStyle = bsDialog
  Caption = #36873#25321#25253#34920
  ClientHeight = 349
  ClientWidth = 495
  Color = 15791348
  Font.Charset = GB2312_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object pnlWork: TPanel
    Left = 0
    Top = 0
    Width = 495
    Height = 297
    Align = alClient
    BevelInner = bvLowered
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 0
    object lvFileList: TListView
      Left = 1
      Top = 24
      Width = 493
      Height = 272
      Align = alClient
      BevelInner = bvNone
      BevelOuter = bvNone
      Color = 16511980
      Columns = <
        item
          Caption = #24207#21495
          Width = 42
        end
        item
          AutoSize = True
          Caption = #25253#34920#27169#29256
        end>
      Ctl3D = False
      FlatScrollBars = True
      GridLines = True
      ReadOnly = True
      RowSelect = True
      TabOrder = 0
      ViewStyle = vsReport
      OnDblClick = lvFileListDblClick
    end
    object p_path: TPanel
      Left = 1
      Top = 1
      Width = 493
      Height = 23
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Color = 16511980
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
  end
  object pnlButton: TPanel
    Left = 0
    Top = 297
    Width = 495
    Height = 52
    Align = alBottom
    Color = 16511980
    TabOrder = 1
    DesignSize = (
      495
      52)
    object btnOk: TBitBtn
      Left = 329
      Top = 16
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = #30830#23450'&O'
      ModalResult = 1
      TabOrder = 0
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
      Left = 412
      Top = 16
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = #21462#28040'&Q'
      TabOrder = 1
      Kind = bkCancel
    end
  end
end
