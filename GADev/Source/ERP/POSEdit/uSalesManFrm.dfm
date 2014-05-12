object FrmSalesMan: TFrmSalesMan
  Left = 443
  Top = 220
  Width = 277
  Height = 352
  Caption = #33829#19994#21592
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 269
    Height = 241
    Align = alClient
    TabOrder = 0
    LookAndFeel.Kind = lfOffice11
    object cxGDSales: TcxGridDBTableView
      OnDblClick = cxGDSalesDblClick
      OnKeyDown = cxGDSalesKeyDown
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = DataSource1
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsView.GroupByBox = False
      object cxGDSalesFNUMBER: TcxGridDBColumn
        Caption = #32534#21495
        DataBinding.FieldName = 'FNUMBER'
        Options.Editing = False
        Width = 116
      end
      object cxGDSalesFNAME_L2: TcxGridDBColumn
        Caption = #21517#31216
        DataBinding.FieldName = 'FNAME_L2'
        Options.Editing = False
        Width = 169
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGDSales
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 241
    Width = 269
    Height = 77
    Align = alBottom
    BevelOuter = bvNone
    Color = clSkyBlue
    TabOrder = 1
    DesignSize = (
      269
      77)
    object Label1: TLabel
      Left = 8
      Top = 11
      Width = 100
      Height = 13
      Anchors = [akLeft, akRight]
      AutoSize = False
      Caption = #26597#25214#33829#19994#21592'(F5)'
    end
    object lbCaption: TLabel
      Left = 3
      Top = 62
      Width = 120
      Height = 13
      Caption = #25209#37327#26356#26032#21333#25454#20013#33829#19994#21592
    end
    object btCancel: TButton
      Left = 183
      Top = 37
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Cancel = True
      Caption = #21462#28040'(&C)'
      ModalResult = 2
      TabOrder = 2
    end
    object btOK: TButton
      Left = 105
      Top = 37
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = #30830#23450'(&Y)'
      Default = True
      ModalResult = 1
      TabOrder = 1
      OnClick = btOKClick
    end
    object edt_code: TcxTextEdit
      Left = 110
      Top = 6
      Anchors = [akLeft, akRight]
      Properties.OnChange = edt_codePropertiesChange
      TabOrder = 0
      OnKeyDown = edt_codeKeyDown
      Width = 145
    end
  end
  object DataSource1: TDataSource
    DataSet = CliDM.qrySalesMan
    Left = 136
    Top = 56
  end
end
