object PicViewfrm: TPicViewfrm
  Left = 382
  Top = 206
  Width = 604
  Height = 419
  BorderIcons = [biSystemMenu]
  Caption = #26597#30475#22270#29255
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pg: TPageControl
    Left = 0
    Top = 0
    Width = 512
    Height = 381
    ActivePage = tabReport
    Align = alClient
    TabOrder = 0
    object tabImg: TTabSheet
      Caption = 'tabImg'
      object img: TcxImage
        Left = 0
        Top = 0
        TabOrder = 0
        Height = 205
        Width = 224
      end
    end
    object tabReport: TTabSheet
      Caption = 'tabReport'
      ImageIndex = 1
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 504
        Height = 300
        Align = alClient
        BevelInner = bvSpace
        BevelOuter = bvLowered
        TabOrder = 0
        object FieldGrid: TcxGrid
          Left = 2
          Top = 2
          Width = 500
          Height = 296
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 0
          LookAndFeel.Kind = lfOffice11
          LookAndFeel.SkinName = 'Office2007Black'
          object FieldGridTV: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            NavigatorButtons.Filter.Enabled = False
            NavigatorButtons.Filter.Visible = False
            DataController.DataSource = dsAccess
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = #35760#24405#25968#65306
                Kind = skCount
                FieldName = 'iState'
              end
              item
                Kind = skCount
                FieldName = 'MatType'
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.AlwaysShowEditor = True
            OptionsBehavior.FocusCellOnTab = True
            OptionsBehavior.FocusFirstCellOnNewRecord = True
            OptionsBehavior.GoToNextCellOnEnter = True
            OptionsBehavior.FocusCellOnCycle = True
            OptionsCustomize.ColumnMoving = False
            OptionsCustomize.ColumnSorting = False
            OptionsCustomize.DataRowSizing = True
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsSelection.HideSelection = True
            OptionsView.GroupByBox = False
            Styles.Background = DMPub.cxStyle2
            Styles.Content = DMPub.cxStyle2
            object FieldGridTVSelectFd: TcxGridDBColumn
              DataBinding.FieldName = 'SelectFd'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = 1
              Properties.ValueUnchecked = 0
              Options.Filtering = False
              Width = 77
            end
            object FieldGridTVTreeid: TcxGridDBColumn
              DataBinding.FieldName = 'Treeid'
              Options.Editing = False
              Options.Filtering = False
              Width = 131
            end
            object FieldGridTVReportTypeName: TcxGridDBColumn
              DataBinding.FieldName = 'ReportTypeName'
              Options.Filtering = False
              Width = 160
            end
          end
          object FieldGridLevel: TcxGridLevel
            GridView = FieldGridTV
          end
        end
        object panMsg: TPanel
          Left = 76
          Top = 104
          Width = 325
          Height = 73
          TabOrder = 1
          Visible = False
          object Label1: TLabel
            Left = 31
            Top = 24
            Width = 258
            Height = 25
            Caption = #25253#34920#25968#25454#27491#22312#23548#20837#65292#35831#31245#20505'......'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -19
            Font.Name = #24494#36719#38597#40657
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 300
        Width = 504
        Height = 53
        Align = alBottom
        BevelInner = bvSpace
        BevelOuter = bvLowered
        Color = 16511980
        TabOrder = 1
        object SpeedButton1: TSpeedButton
          Left = 457
          Top = 27
          Width = 44
          Height = 22
          Caption = #27983#35272'...'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          OnClick = SpeedButton1Click
        end
        object RadioButton1: TRadioButton
          Left = 8
          Top = 8
          Width = 137
          Height = 17
          Caption = #30452#25509#25191#34892#36807#31243#33050#26412
          Checked = True
          TabOrder = 0
          TabStop = True
          OnClick = RadioButton1Click
        end
        object output_scritp: TRadioButton
          Left = 8
          Top = 32
          Width = 147
          Height = 17
          Caption = #36807#31243#33050#26412#36755#20986#21040#25991#20214
          TabOrder = 1
        end
        object ed_path: TEdit
          Left = 154
          Top = 28
          Width = 304
          Height = 21
          TabOrder = 2
        end
      end
    end
    object tabView: TTabSheet
      Caption = 'tabView'
      ImageIndex = 2
      object Panel3: TPanel
        Left = 0
        Top = 320
        Width = 504
        Height = 33
        Align = alBottom
        BevelInner = bvSpace
        BevelOuter = bvLowered
        TabOrder = 0
        object SpeedButton2: TSpeedButton
          Left = 408
          Top = 5
          Width = 70
          Height = 22
          Caption = #20851#38381'(&C)'
          Flat = True
          Glyph.Data = {
            DE010000424DDE01000000000000760000002800000024000000120000000100
            0400000000006801000000000000000000001000000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            333333333333333333333333000033338833333333333333333F333333333333
            0000333911833333983333333388F333333F3333000033391118333911833333
            38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
            911118111118333338F3338F833338F3000033333911111111833333338F3338
            3333F8330000333333911111183333333338F333333F83330000333333311111
            8333333333338F3333383333000033333339111183333333333338F333833333
            00003333339111118333333333333833338F3333000033333911181118333333
            33338333338F333300003333911183911183333333383338F338F33300003333
            9118333911183333338F33838F338F33000033333913333391113333338FF833
            38F338F300003333333333333919333333388333338FFF830000333333333333
            3333333333333333333888330000333333333333333333333333333333333333
            0000}
          NumGlyphs = 2
          OnClick = SpeedButton2Click
        end
      end
      object cxDBMemo1: TcxDBMemo
        Left = 0
        Top = 0
        Align = alClient
        DataBinding.DataField = 'reportinfo'
        DataBinding.DataSource = dsReport
        TabOrder = 1
        Height = 320
        Width = 504
      end
    end
    object tabMsg: TTabSheet
      Caption = 'tabMsg'
      ImageIndex = 3
      object pan: TPanel
        Left = 0
        Top = 0
        Width = 331
        Height = 123
        BevelOuter = bvNone
        TabOrder = 0
        object lbMsg: TLabel
          Left = 25
          Top = 18
          Width = 57
          Height = 25
          Caption = 'lbMsg'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = #24494#36719#38597#40657
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
      end
    end
  end
  object Panel4: TPanel
    Left = 512
    Top = 0
    Width = 76
    Height = 381
    Align = alRight
    Color = 16511980
    TabOrder = 1
    object SpeedButton4: TSpeedButton
      Left = 3
      Top = 4
      Width = 72
      Height = 25
      Caption = #30830#23450'(&O)'
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
      OnClick = SpeedButton4Click
    end
    object SpeedButton5: TSpeedButton
      Left = 3
      Top = 30
      Width = 72
      Height = 25
      Caption = #20851#38381'(&C)'
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033338833333333333333333F333333333333
        0000333911833333983333333388F333333F3333000033391118333911833333
        38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003333
        9118333911183333338F33838F338F33000033333913333391113333338FF833
        38F338F300003333333333333919333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
      OnClick = SpeedButton2Click
    end
  end
  object ADOC: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=C:\Do' +
      'cuments and Settings\yaohong_zhou\'#26700#38754'\ReportFile2010-04-21.mdb;Mo' +
      'de=Share Deny None;Extended Properties="";Persist Security Info=' +
      'False;Jet OLEDB:System database="";Jet OLEDB:Registry Path="";Je' +
      't OLEDB:Database Password="";Jet OLEDB:Engine Type=4;Jet OLEDB:D' +
      'atabase Locking Mode=0;Jet OLEDB:Global Partial Bulk Ops=2;Jet O' +
      'LEDB:Global Bulk Transactions=1;Jet OLEDB:New Database Password=' +
      '"";Jet OLEDB:Create System Database=False;Jet OLEDB:Encrypt Data' +
      'base=False;Jet OLEDB:Don'#39't Copy Locale on Compact=False;Jet OLED' +
      'B:Compact Without Replica Repair=False;Jet OLEDB:SFP=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 241
    Top = 63
  end
  object ADOQ: TADOQuery
    Connection = ADOC
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    Parameters = <>
    SQL.Strings = (
      'select   *   from   reporttype')
    Left = 180
    Top = 67
    object ADOQTreeid: TWideStringField
      DisplayLabel = #25253#34920#32534#21495
      FieldName = 'Treeid'
      Size = 255
    end
    object ADOQReportTypeName: TWideStringField
      DisplayLabel = #25253#34920#21517#31216
      FieldName = 'ReportTypeName'
      Size = 255
    end
    object ADOQSelectFd: TIntegerField
      DisplayLabel = #36873#25321
      FieldName = 'SelectFd'
    end
  end
  object dsAccess: TDataSource
    DataSet = ADOQ
    Left = 452
    Top = 43
  end
  object ADOSrc: TADOQuery
    Connection = ADOC
    Parameters = <>
    Left = 398
    Top = 46
  end
  object qryAim: TADOQuery
    LockType = ltBatchOptimistic
    Parameters = <>
    Left = 334
    Top = 118
  end
  object ADOProc: TADOQuery
    Connection = ADOC
    Parameters = <>
    Left = 337
    Top = 47
  end
  object ADOcmd: TADOCommand
    Parameters = <>
    Left = 438
    Top = 141
  end
  object qryRight: TADOQuery
    Parameters = <
      item
        Name = '@Report_id'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 120
        Value = ''
      end
      item
        Name = '@Report_Name'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 120
        Value = ''
      end>
    SQL.Strings = (
      'exec  CreateReportCopyright :@Report_id,:@Report_Name')
    Left = 503
    Top = 131
  end
  object qryProc: TADOQuery
    LockType = ltBatchOptimistic
    Parameters = <>
    Left = 390
    Top = 148
  end
  object dsReport: TDataSource
    AutoEdit = False
    DataSet = qryReport
    Left = 396
    Top = 253
  end
  object qryReport: TADOQuery
    Parameters = <>
    Left = 342
    Top = 249
  end
  object SaveDg: TSaveDialog
    DefaultExt = '.txt'
    Filter = #25991#26412#25991#20214'(*.txt)|*.txt'
    Left = 36
    Top = 264
  end
end
