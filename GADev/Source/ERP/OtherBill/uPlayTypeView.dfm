object playTypeViewFrm: TplayTypeViewFrm
  Left = 409
  Top = 322
  Width = 557
  Height = 377
  Caption = #25910#38134#26041#24335#26597#30475
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #23435#20307
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 12
  object cxgrd1: TcxGrid
    Left = 0
    Top = 29
    Width = 541
    Height = 269
    Align = alClient
    TabOrder = 0
    LookAndFeel.Kind = lfOffice11
    object cxgrdbtblvwcxgrd1v: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsQuery
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.GroupByBox = False
      object cxgrdbtblvwcxgrd1vPlayTypeName: TcxGridDBColumn
        DataBinding.FieldName = 'PlayTypeName'
        Width = 221
      end
      object cxgrdbtblvwcxgrd1vPlayAmount: TcxGridDBColumn
        DataBinding.FieldName = 'PlayAmount'
        Width = 177
      end
    end
    object cxgrdlvl1: TcxGridLevel
      GridView = cxgrdbtblvwcxgrd1v
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 298
    Width = 541
    Height = 41
    Align = alBottom
    TabOrder = 1
    DesignSize = (
      541
      41)
    object Label1: TLabel
      Left = 8
      Top = 16
      Width = 97
      Height = 13
      AutoSize = False
      Caption = #25972#21333#23454#25910#37329#39069#65306
    end
    object lbi_sumAmount: TLabel
      Left = 94
      Top = 12
      Width = 193
      Height = 21
      AutoSize = False
      Caption = '0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btCancel: TcxButton
      Left = 454
      Top = 10
      Width = 66
      Height = 23
      Anchors = [akTop, akRight]
      Caption = #21462#28040'(&C)'
      Default = True
      TabOrder = 0
      OnClick = btCancelClick
      LookAndFeel.Kind = lfOffice11
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 541
    Height = 29
    Align = alTop
    TabOrder = 2
    object lbi_title: TLabel
      Left = 8
      Top = 7
      Width = 529
      Height = 20
      AutoSize = False
      Caption = #21333#21495#20449#24687
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = #23435#20307
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object cdsQuery: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 176
    Top = 72
    object cdsQueryPlayTypeName: TStringField
      DisplayLabel = #25910#38134#26041#24335
      FieldName = 'PlayTypeName'
      Size = 100
    end
    object cdsQueryPlayAmount: TFloatField
      DisplayLabel = #37329#39069
      FieldName = 'PlayAmount'
    end
  end
  object dsQuery: TDataSource
    DataSet = cdsQuery
    Left = 288
    Top = 96
  end
end
