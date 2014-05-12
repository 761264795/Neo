object Setform: TSetform
  Left = 209
  Top = 166
  BorderStyle = bsDialog
  Caption = #21442#25968#35774#32622
  ClientHeight = 336
  ClientWidth = 504
  Color = clBtnFace
  Font.Charset = GB2312_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 504
    Height = 295
    ActivePage = TabSheet1
    Align = alClient
    Style = tsFlatButtons
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #38065#31665#35774#32622
      object Label1: TLabel
        Left = 295
        Top = 32
        Width = 91
        Height = 13
        Caption = #38065#31665#25191#34892#29366#24577#65306
      end
      object Label2: TLabel
        Left = 307
        Top = 56
        Width = 78
        Height = 13
        Caption = #25191#34892#36820#22238#20540#65306
      end
      object Label3: TLabel
        Left = 383
        Top = 32
        Width = 7
        Height = 13
        Color = clBlue
        ParentColor = False
      end
      object Label4: TLabel
        Left = 383
        Top = 56
        Width = 7
        Height = 13
        Color = clBlue
        ParentColor = False
      end
      object RadioGroup1: TRadioGroup
        Left = 16
        Top = 16
        Width = 249
        Height = 81
        Caption = #38065#31665#25511#21046
        ItemIndex = 0
        Items.Strings = (
          #37319#29992#39038#23458#26174#31034#23631
          #37319#29992#25171#21360#26426
          #37319#29992#38065#31665#25511#21046#21345)
        TabOrder = 0
        OnClick = RadioGroup1Click
      end
      object RadioGroup3: TRadioGroup
        Left = 16
        Top = 112
        Width = 249
        Height = 81
        Caption = #26174#31034#23631#31471#21475
        Columns = 3
        ItemIndex = 0
        Items.Strings = (
          'COM1'
          'COM2'
          'COM3'
          'COM4'
          'LPT1'
          'LPT2')
        TabOrder = 1
      end
      object inibutton: TButton
        Left = 222
        Top = 223
        Width = 85
        Height = 25
        Caption = #21021#22987#21270#38065#31665
        TabOrder = 2
        OnClick = inibuttonClick
      end
      object OpenButton: TButton
        Left = 309
        Top = 223
        Width = 85
        Height = 25
        Caption = #25171#24320#38065#31665
        TabOrder = 3
        OnClick = OpenButtonClick
      end
      object StateButton: TButton
        Left = 396
        Top = 223
        Width = 85
        Height = 25
        Caption = #26816#27979#24320#20851#29366#24577
        TabOrder = 4
        OnClick = StateButtonClick
      end
    end
    object TabSheet2: TTabSheet
      Caption = #25171#21360#26426#35774#32622
      ImageIndex = 1
      object Label5: TLabel
        Left = 11
        Top = 21
        Width = 78
        Height = 13
        Caption = #25171#21360#26426#22411#21495#65306
      end
      object Label6: TLabel
        Left = 288
        Top = 20
        Width = 78
        Height = 13
        Caption = #25171#21360#26426#31471#21475#65306
      end
      object Label7: TLabel
        Left = 26
        Top = 59
        Width = 65
        Height = 13
        Caption = #25171#21360#39068#33394#65306
      end
      object Label8: TLabel
        Left = 259
        Top = 59
        Width = 111
        Height = 13
        Caption = #36827#32440'/'#24494#36827#32440#34892#25968#65306
      end
      object Label9: TLabel
        Left = 25
        Top = 96
        Width = 65
        Height = 13
        Caption = #25171#21360#20869#23481#65306
      end
      object Label10: TLabel
        Left = 24
        Top = 178
        Width = 65
        Height = 13
        Caption = #20999#32440#26041#24335#65306
      end
      object CobType: TComboBox
        Left = 88
        Top = 17
        Width = 97
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 0
        OnChange = CobTypeChange
        Items.Strings = (
          'TM300K'
          'TM210D'
          'HK110D'
          'HKP600T'
          'ADP300'
          'HK588TP'
          'TM210P')
      end
      object CobPort: TComboBox
        Left = 368
        Top = 16
        Width = 97
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 1
        OnChange = CobPortChange
        Items.Strings = (
          'LPT1'
          'LPT2')
      end
      object CobColor: TComboBox
        Left = 88
        Top = 55
        Width = 97
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 2
        Items.Strings = (
          #40657
          #32418)
      end
      object EdPage: TEdit
        Left = 368
        Top = 53
        Width = 97
        Height = 21
        TabOrder = 3
        Text = '1'
        OnExit = EdPageExit
        OnKeyPress = EdPageKeyPress
      end
      object RedText: TRichEdit
        Left = 88
        Top = 94
        Width = 377
        Height = 65
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Lines.Strings = (
          'Test Printer '#27979#35797#25171#21360#26426)
        ParentFont = False
        TabOrder = 4
      end
      object Cobcut: TComboBox
        Left = 88
        Top = 174
        Width = 100
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 5
        Items.Strings = (
          #37096#20998#20999#32440
          #20840#37096#20999#32440)
      end
      object Ini: TButton
        Left = 107
        Top = 220
        Width = 75
        Height = 25
        Caption = #21021#22987#21270
        TabOrder = 6
        OnClick = IniClick
      end
      object InPaper: TButton
        Left = 181
        Top = 220
        Width = 75
        Height = 25
        Caption = #36827#32440
        TabOrder = 7
        OnClick = InPaperClick
      end
      object MicroFeed: TButton
        Left = 255
        Top = 220
        Width = 75
        Height = 25
        Caption = #24494#36827#32440
        TabOrder = 8
        OnClick = MicroFeedClick
      end
      object Print: TButton
        Left = 329
        Top = 220
        Width = 75
        Height = 25
        Caption = #25171#21360
        TabOrder = 9
        OnClick = PrintClick
      end
      object Cut: TButton
        Left = 403
        Top = 220
        Width = 75
        Height = 25
        Caption = #20999#32440
        TabOrder = 10
        OnClick = CutClick
      end
    end
    object TabSheet3: TTabSheet
      Caption = #26174#31034#23631#35774#32622
      ImageIndex = 2
      object Label11: TLabel
        Left = 18
        Top = 23
        Width = 65
        Height = 13
        Caption = #26174#31034#31471#21475#65306
      end
      object Label12: TLabel
        Left = 18
        Top = 60
        Width = 65
        Height = 13
        Caption = #26174#31034#31867#22411#65306
      end
      object Label13: TLabel
        Left = 16
        Top = 168
        Width = 65
        Height = 13
        Caption = #27979#35797#25968#25454#65306
      end
      object ComboBox1: TComboBox
        Left = 80
        Top = 19
        Width = 97
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 0
        Items.Strings = (
          'COM1'
          'COM2'
          'COM3'
          'COM4')
      end
      object ComboBox2: TComboBox
        Left = 80
        Top = 55
        Width = 97
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 1
        Items.Strings = (
          'LED8'
          'IC851A')
      end
      object RadioGroup4: TRadioGroup
        Left = 16
        Top = 96
        Width = 433
        Height = 49
        Caption = #27979#35797
        Columns = 4
        ItemIndex = 0
        Items.Strings = (
          #21333#20215
          #24635#20215
          #25910#27454
          #25214#38646)
        TabOrder = 2
        OnClick = RadioGroup4Click
      end
      object Edit1: TEdit
        Left = 80
        Top = 164
        Width = 105
        Height = 21
        TabOrder = 3
        Text = '0.00'
        OnExit = Edit1Exit
        OnKeyPress = Edit1KeyPress
      end
      object Button1: TButton
        Left = 254
        Top = 216
        Width = 75
        Height = 25
        Caption = #21021#22987#21270
        TabOrder = 4
        OnClick = Button1Click
      end
      object Button2: TButton
        Left = 328
        Top = 216
        Width = 75
        Height = 25
        Caption = #27979#35797
        TabOrder = 5
        OnClick = Button2Click
      end
      object Button3: TButton
        Left = 402
        Top = 216
        Width = 75
        Height = 25
        Caption = #28165#23631
        TabOrder = 6
        OnClick = Button3Click
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 295
    Width = 504
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 320
      Top = 8
      Width = 75
      Height = 25
      Caption = #20445#23384
      TabOrder = 0
      OnClick = BitBtn1Click
      Kind = bkOK
    end
    object BitBtn2: TBitBtn
      Left = 408
      Top = 8
      Width = 75
      Height = 25
      Cancel = True
      Caption = #36864#20986
      TabOrder = 1
      OnClick = BitBtn2Click
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00388888888877
        F7F787F8888888888333333F00004444400888FFF444448888888888F333FF8F
        000033334D5007FFF4333388888888883338888F0000333345D50FFFF4333333
        338F888F3338F33F000033334D5D0FFFF43333333388788F3338F33F00003333
        45D50FEFE4333333338F878F3338F33F000033334D5D0FFFF43333333388788F
        3338F33F0000333345D50FEFE4333333338F878F3338F33F000033334D5D0FFF
        F43333333388788F3338F33F0000333345D50FEFE4333333338F878F3338F33F
        000033334D5D0EFEF43333333388788F3338F33F0000333345D50FEFE4333333
        338F878F3338F33F000033334D5D0EFEF43333333388788F3338F33F00003333
        4444444444333333338F8F8FFFF8F33F00003333333333333333333333888888
        8888333F00003333330000003333333333333FFFFFF3333F00003333330AAAA0
        333333333333888888F3333F00003333330000003333333333338FFFF8F3333F
        0000}
      NumGlyphs = 2
    end
  end
end
