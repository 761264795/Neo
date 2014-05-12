inherited BranchEditFrm: TBranchEditFrm
  Caption = '组织单元'
  PixelsPerInch = 96
  TextHeight = 12
  inherited Panel1: TPanel
    inherited GroupBox1: TGroupBox
      Caption = '组织单元'
      inherited btn_New: TcxButton
        Enabled = False
      end
      inherited btn_newSubItem: TcxButton
        Enabled = False
      end
      inherited btn_del: TcxButton
        Enabled = False
      end
      inherited btn_move: TcxButton
        Enabled = False
      end
      inherited TreeList: TcxDBTreeList
        Top = 40
        Height = 467
      end
      object btn_Bear: TcxButton
        Left = 348
        Top = 248
        Width = 97
        Height = 25
        Anchors = [akTop, akRight]
        Caption = '禁用'
        TabOrder = 8
        OnClick = btn_BearClick
        LookAndFeel.Kind = lfOffice11
      end
      object btn_uBear: TcxButton
        Left = 348
        Top = 216
        Width = 97
        Height = 25
        Anchors = [akTop, akRight]
        Caption = '启用'
        TabOrder = 7
        OnClick = btn_uBearClick
        LookAndFeel.Kind = lfOffice11
      end
      object cb_OrgType: TcxComboBox
        Left = 68
        Top = 15
        Properties.DropDownListStyle = lsFixedList
        Properties.Items.Strings = (
          '行政组织'
          '财务组织'
          '销售组织'
          '库存组织'
          '采购组织'
          '成本中心'
          'HR组织'
          '利润中心'
          '全部显示')
        Properties.OnCloseUp = cb_OrgTypePropertiesCloseUp
        Style.LookAndFeel.Kind = lfOffice11
        StyleDisabled.LookAndFeel.Kind = lfOffice11
        StyleFocused.LookAndFeel.Kind = lfOffice11
        StyleHot.LookAndFeel.Kind = lfOffice11
        TabOrder = 9
        Text = '全部显示'
        Width = 270
      end
      object cxLabel1: TcxLabel
        Left = 10
        Top = 16
        Caption = '组织类型'
      end
    end
    inherited GroupBox2: TGroupBox
      inherited Label3: TLabel
        Top = 117
      end
      object Bevel1: TBevel [3]
        Left = 16
        Top = 169
        Width = 249
        Height = 2
      end
      object Label5: TLabel [4]
        Left = 15
        Top = 363
        Width = 250
        Height = 126
        AutoSize = False
        Caption = 
          '名词解释：'#13#10'分支机构：分支机构为公司销售渠道内存在买卖关系的机构,如:公司总部,A加盟商,B加盟商,分公司(存在买卖关系)。'#13 +
          #10'虚体机构：虚体机构的节点，不能做业务单据，只做数据汇总查询作用。'#13#10#13#10'分支机构设置要求：'#13#10'1、本系统只能有一个分支机构具有' +
          '总部属性。'#13#10
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = '宋体'
        Font.Style = []
        ParentFont = False
        Visible = False
        WordWrap = True
      end
      object Label4: TLabel [5]
        Left = 15
        Top = 89
        Width = 57
        Height = 12
        AutoSize = False
        Caption = '组织标识'
      end
      object Label6: TLabel [6]
        Left = 15
        Top = 181
        Width = 57
        Height = 12
        AutoSize = False
        Caption = '组织类型'
      end
      inherited spe_imgindex: TcxDBSpinEdit
        Top = 113
        TabOrder = 4
      end
      inherited chk_Sytem: TcxDBCheckBox
        Left = 94
        Top = 140
        TabOrder = 5
        Visible = False
        Width = 81
      end
      inherited btn_Config: TcxButton
        Left = 143
        Top = 241
        TabOrder = 9
      end
      inherited cb_imgindex: TdxImageComboBox
        Top = 112
        TabOrder = 3
        SaveStrings = ()
      end
      inherited cxDBCheckBox1: TcxDBCheckBox
        Top = 140
        Visible = False
        Width = 75
      end
      object cxDBCheckBox5: TcxDBCheckBox
        Left = 96
        Top = 199
        Caption = '启用'
        DataBinding.DataField = 'fisfreeze'
        DataBinding.DataSource = dsMenu
        Enabled = False
        Properties.NullStyle = nssUnchecked
        Properties.ValueChecked = 1
        Properties.ValueUnchecked = 0
        TabOrder = 8
        Width = 165
      end
      object txt_CFBRanchFlag: TcxDBTextEdit
        Left = 97
        Top = 86
        DataBinding.DataField = 'CFBRanchFlag'
        DataBinding.DataSource = dsMenu
        TabOrder = 2
        Width = 161
      end
      object txt_orgtype: TcxDBLookupComboBox
        Left = 97
        Top = 176
        DataBinding.DataField = 'FOrgType'
        DataBinding.DataSource = dsMenu
        Properties.DropDownListStyle = lsFixedList
        Properties.KeyFieldNames = 'FID'
        Properties.ListColumns = <
          item
            FieldName = 'FName'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dsOrgType
        TabOrder = 7
        Width = 161
      end
      object cxLabel2: TcxLabel
        Left = 15
        Top = 304
        AutoSize = False
        Caption = '提示：请到金蝶EAS里维护组织单元相关信息！'
        Height = 16
        Width = 252
      end
    end
  end
  inherited cdsMenu: TClientDataSet
    Left = 48
    Top = 424
    object cdsMenuFISCU: TIntegerField
      FieldName = 'FISCU'
    end
    object cdsMenuFISSALEORGUNIT: TIntegerField
      FieldName = 'FISSALEORGUNIT'
    end
    object cdsMenufisadminorgunit: TIntegerField
      FieldName = 'fisadminorgunit'
    end
    object cdsMenufisfreeze: TIntegerField
      FieldName = 'fisfreeze'
    end
    object cdsMenuCFBRanchFlag: TStringField
      FieldName = 'CFBRanchFlag'
    end
    object cdsMenuFOrgType: TIntegerField
      FieldName = 'FOrgType'
    end
    object cdsMenuFdisplayname_L2: TWideStringField
      FieldName = 'Fdisplayname_L2'
      Size = 100
    end
  end
  inherited dsMenu: TDataSource
    Left = 97
    Top = 425
  end
  object cdsOrgType: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 250
    Top = 377
    object cdsOrgTypeFID: TIntegerField
      FieldName = 'FID'
    end
    object cdsOrgTypeFName: TStringField
      FieldName = 'FName'
      Size = 80
    end
  end
  object dsOrgType: TDataSource
    DataSet = cdsOrgType
    Left = 250
    Top = 433
  end
  object cdsTest: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 385
    Top = 433
  end
end
