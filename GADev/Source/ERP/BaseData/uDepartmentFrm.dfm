inherited DepartmentFrm: TDepartmentFrm
  Caption = #37096#38376
  PixelsPerInch = 96
  TextHeight = 12
  inherited Panel1: TPanel
    inherited GroupBox1: TGroupBox
      Caption = #37096#38376#32467#26500
      inherited btn_New: TcxButton
        Top = 40
      end
      inherited btn_newSubItem: TcxButton
        Top = 72
      end
      inherited btn_del: TcxButton
        Top = 104
      end
      inherited btn_open: TcxButton
        Top = 136
        TabOrder = 5
      end
      inherited btn_ss: TcxButton
        Top = 168
        TabOrder = 6
      end
      inherited btn_move: TcxButton
        Top = 200
        TabOrder = 7
      end
      inherited TreeList: TcxDBTreeList
        Top = 40
        Height = 467
      end
      object txt_FBranchID: TcxButtonEdit
        Left = 72
        Top = 16
        Anchors = [akLeft, akTop, akRight]
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.ClickKey = 118
        Properties.ReadOnly = True
        Properties.OnButtonClick = txt_FBranchIDPropertiesButtonClick
        TabOrder = 4
        Width = 265
      end
      object cxLabel1: TcxLabel
        Left = 16
        Top = 17
        Caption = #20998#25903#26426#26500
      end
    end
    inherited GroupBox2: TGroupBox
      Caption = #37096#38376#23646#24615
      inherited cb_imgindex: TdxImageComboBox
        SaveStrings = ()
      end
      inherited cxDBCheckBox1: TcxDBCheckBox
        Visible = False
      end
    end
  end
  inherited cdsMenu: TClientDataSet
    object cdsMenuFControlUnitID: TStringField
      FieldName = 'FControlUnitID'
      Size = 60
    end
    object cdsMenuFBranchID: TStringField
      FieldName = 'FBranchID'
      Size = 60
    end
  end
end
