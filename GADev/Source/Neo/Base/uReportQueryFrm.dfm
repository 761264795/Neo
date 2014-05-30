inherited ReportQueryFrm: TReportQueryFrm
  Caption = #25253#34920#26597#35810#37197#32622
  PixelsPerInch = 96
  TextHeight = 12
  inherited left_p: TPanel
    inherited cxGrid2: TcxGrid
      Visible = False
      inherited cxBillType: TcxGridDBTableView
        DataController.DataSource = nil
      end
    end
    object cxGrid5: TcxGrid
      Left = 1
      Top = 1
      Width = 183
      Height = 576
      Align = alClient
      TabOrder = 1
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.SkinName = 'Office2007Green'
      object cxGridDBTableView1: TcxGridDBTableView
        PopupMenu = PopupMenu1
        NavigatorButtons.ConfirmDelete = False
        OnFocusedRecordChanged = cxBillTypeFocusedRecordChanged
        DataController.DataSource = dsBillType
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.DataRowHeight = 22
        OptionsView.GroupByBox = False
        OptionsView.HeaderHeight = 22
        OptionsView.Indicator = True
        Styles.Inactive = cxStyle1
        object cxGridDBColumn1: TcxGridDBColumn
          DataBinding.FieldName = 'FID'
          Visible = False
        end
        object cxGridDBColumn2: TcxGridDBColumn
          Caption = #25253#34920#32534#21495
          DataBinding.FieldName = 'FReportNumber'
          Width = 61
        end
        object cxGridDBColumn3: TcxGridDBColumn
          Caption = #25253#34920#21517#31216
          DataBinding.FieldName = 'FReportName'
          Width = 95
        end
      end
      object cxGridLevel4: TcxGridLevel
        GridView = cxGridDBTableView1
      end
    end
  end
  inherited right_P: TPanel
    inherited Panel1: TPanel
      inherited Panel3: TPanel
        inherited Label2: TLabel
          Left = 206
        end
        object Label6: TLabel [6]
          Left = 0
          Top = 28
          Width = 58
          Height = 17
          AutoSize = False
          Caption = #23384#20648#36807#31243
        end
        inherited txt_FDES: TcxDBTextEdit
          Left = 263
          Width = 582
        end
        object Proc_Name: TcxDBComboBox
          Left = 60
          Top = 25
          DataBinding.DataField = 'FProcName'
          Properties.OnInitPopup = Proc_NamePropertiesInitPopup
          Style.BorderStyle = ebsOffice11
          Style.LookAndFeel.Kind = lfUltraFlat
          Style.LookAndFeel.SkinName = ''
          StyleDisabled.LookAndFeel.Kind = lfUltraFlat
          StyleDisabled.LookAndFeel.SkinName = ''
          StyleFocused.LookAndFeel.Kind = lfUltraFlat
          StyleFocused.LookAndFeel.SkinName = ''
          StyleHot.LookAndFeel.Kind = lfUltraFlat
          StyleHot.LookAndFeel.SkinName = ''
          TabOrder = 9
          Width = 140
        end
      end
    end
  end
  inherited cdsMater: TClientDataSet
    object cdsMaterFProcName: TStringField
      FieldName = 'FProcName'
      Size = 80
    end
    object cdsMaterFIsReport: TBooleanField
      FieldName = 'FIsReport'
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 64
    Top = 217
    object mnuSearch: TMenuItem
      Caption = #23450#20301
      ShortCut = 16456
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object mnuAddNewRpt: TMenuItem
      Caption = #26032#22686#25253#34920
      ShortCut = 16462
      OnClick = mnuAddNewRptClick
    end
    object mnuDelRpt: TMenuItem
      Caption = #21024#38500#25253#34920
      ShortCut = 16452
      OnClick = mnuDelRptClick
    end
  end
end
