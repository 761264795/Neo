inherited BranchEditFrm: TBranchEditFrm
  Caption = '��֯��Ԫ'
  PixelsPerInch = 96
  TextHeight = 12
  inherited Panel1: TPanel
    inherited GroupBox1: TGroupBox
      Caption = '��֯��Ԫ'
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
        Caption = '����'
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
        Caption = '����'
        TabOrder = 7
        OnClick = btn_uBearClick
        LookAndFeel.Kind = lfOffice11
      end
      object cb_OrgType: TcxComboBox
        Left = 68
        Top = 15
        Properties.DropDownListStyle = lsFixedList
        Properties.Items.Strings = (
          '������֯'
          '������֯'
          '������֯'
          '�����֯'
          '�ɹ���֯'
          '�ɱ�����'
          'HR��֯'
          '��������'
          'ȫ����ʾ')
        Properties.OnCloseUp = cb_OrgTypePropertiesCloseUp
        Style.LookAndFeel.Kind = lfOffice11
        StyleDisabled.LookAndFeel.Kind = lfOffice11
        StyleFocused.LookAndFeel.Kind = lfOffice11
        StyleHot.LookAndFeel.Kind = lfOffice11
        TabOrder = 9
        Text = 'ȫ����ʾ'
        Width = 270
      end
      object cxLabel1: TcxLabel
        Left = 10
        Top = 16
        Caption = '��֯����'
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
          '���ʽ��ͣ�'#13#10'��֧��������֧����Ϊ��˾���������ڴ���������ϵ�Ļ���,��:��˾�ܲ�,A������,B������,�ֹ�˾(����������ϵ)��'#13 +
          #10'�����������������Ľڵ㣬������ҵ�񵥾ݣ�ֻ�����ݻ��ܲ�ѯ���á�'#13#10#13#10'��֧��������Ҫ��'#13#10'1����ϵͳֻ����һ����֧��������' +
          '�ܲ����ԡ�'#13#10
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = '����'
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
        Caption = '��֯��ʶ'
      end
      object Label6: TLabel [6]
        Left = 15
        Top = 181
        Width = 57
        Height = 12
        AutoSize = False
        Caption = '��֯����'
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
        Caption = '����'
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
        Caption = '��ʾ���뵽���EAS��ά����֯��Ԫ�����Ϣ��'
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
