inherited FM_UpdatePOSBizDateForm: TFM_UpdatePOSBizDateForm
  Left = 209
  Top = 209
  Width = 764
  BorderIcons = []
  Caption = #26356#25913'POS'#19994#21153#26085#26399
  Font.Height = -12
  Font.Name = #23435#20307
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 12
  object Panel1: TPanel [0]
    Left = 0
    Top = 0
    Width = 748
    Height = 421
    Align = alClient
    TabOrder = 0
    object cxGrid1: TcxGrid
      Left = 1
      Top = 1
      Width = 746
      Height = 419
      Align = alClient
      TabOrder = 0
      object cxgridupdatebizdate: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = dsUpdateBizdate
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnFiltering = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        object cxgridupdatebizdateColumn1: TcxGridDBColumn
          Caption = #38646#21806#21333#21495
          DataBinding.FieldName = 'fnumber'
          Width = 153
        end
        object cxgridupdatebizdateColumn2: TcxGridDBColumn
          Caption = #21407#19994#21153#26085#26399
          DataBinding.FieldName = 'FBizdate'
          PropertiesClassName = 'TcxDateEditProperties'
          Options.Editing = False
          Options.Filtering = False
          Width = 117
        end
        object cxgridupdatebizdateColumn5: TcxGridDBColumn
          Caption = #19994#21153#26085#26399
          DataBinding.FieldName = 'NewBizdate'
          PropertiesClassName = 'TcxDateEditProperties'
          Width = 109
        end
        object cxgridupdatebizdateColumn3: TcxGridDBColumn
          Caption = #21046#21333#26085#26399
          DataBinding.FieldName = 'FcreateTIme'
          Width = 147
        end
        object cxgridupdatebizdateColumn4: TcxGridDBColumn
          Caption = #21046#21333#20154
          DataBinding.FieldName = 'Username'
          Width = 175
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxgridupdatebizdate
      end
    end
  end
  object Panel2: TPanel [1]
    Left = 0
    Top = 421
    Width = 748
    Height = 41
    Align = alBottom
    TabOrder = 1
    DesignSize = (
      748
      41)
    object cxbtnOK: TcxButton
      Left = 557
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #30830#23450
      TabOrder = 0
      OnClick = cxbtnOKClick
      LookAndFeel.Kind = lfOffice11
    end
    object cxbtnCancel: TcxButton
      Left = 653
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #21462#28040
      TabOrder = 1
      OnClick = cxbtnCancelClick
      LookAndFeel.Kind = lfOffice11
    end
    object cxLabel1: TcxLabel
      Left = 5
      Top = 5
      AutoSize = False
      Caption = #25552#31034#65306#20197#19978#19994#21153#21333#25454#30340#19994#21153#26085#26399#25152#22788#30340#20250#35745#26399#38388#24050#32463#20851#36134#25110#32467#36134','#31995#32479#24050#32463#20462#25913#20026#24403#21069#20250#35745#26399#38388#30340#26085#26399','#24744#20063#21487#20197#25163#21160#20462#25913#12290
      Properties.WordWrap = True
      Height = 33
      Width = 409
    end
  end
  object dsUpdateBizdate: TDataSource
    DataSet = CliDM.qryTemp
    Left = 216
    Top = 184
  end
end
