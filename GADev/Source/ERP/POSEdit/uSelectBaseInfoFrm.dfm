inherited Frm_SelectBaseInfo: TFrm_SelectBaseInfo
  Left = 506
  Top = 176
  Width = 398
  Height = 228
  Caption = #36873#25321#21830#21697#39068#33394#23610#30721#24555#25463#31383#21475
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object pnTop: TPanel
    Left = 0
    Top = 0
    Width = 390
    Height = 33
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object lbl_Code: TLabel
      Left = 24
      Top = 10
      Width = 48
      Height = 13
      Caption = #21830#21697#32534#30721
      FocusControl = edt_Code
      Transparent = True
    end
    object edt_Code: TcxTextEdit
      Left = 83
      Top = 6
      TabOrder = 0
      Width = 273
    end
  end
  object plClient: TPanel
    Left = 0
    Top = 33
    Width = 390
    Height = 161
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object cxGD: TcxGrid
      Left = 0
      Top = 0
      Width = 390
      Height = 161
      Align = alClient
      TabOrder = 0
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.SkinName = 'Office2007Black'
      object cxDetail: TcxGridDBTableView
        OnDblClick = cxDetailDblClick
        OnKeyDown = cxDetailKeyDown
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsBase
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skSum
            FieldName = 'CFAMOUNT'
          end
          item
            Kind = skSum
            FieldName = 'CFAGIO_SUM_PRICE'
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsSelection.MultiSelect = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.DataRowHeight = 22
        OptionsView.GroupByBox = False
        OptionsView.HeaderHeight = 22
      end
      object cxlev: TcxGridLevel
        GridView = cxDetail
      end
    end
  end
  object qryBase: TADOQuery
    Connection = CliDM.conClient
    CursorType = ctStatic
    Parameters = <>
    Left = 144
    Top = 88
  end
  object dsBase: TDataSource
    DataSet = qryBase
    Left = 144
    Top = 136
  end
end
