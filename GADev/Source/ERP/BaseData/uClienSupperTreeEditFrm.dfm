inherited ClienSupperTreeEditFrm: TClienSupperTreeEditFrm
  Top = 59
  Height = 603
  Caption = #23458#21830#20998#31867#32500#25252
  PixelsPerInch = 96
  TextHeight = 12
  inherited Panel1: TPanel
    Height = 528
    inherited GroupBox1: TGroupBox
      Height = 526
      Caption = #23458#21830#20998#31867
      inherited TreeList: TcxDBTreeList
        Height = 498
      end
    end
    inherited GroupBox2: TGroupBox
      Height = 526
      inherited cb_imgindex: TdxImageComboBox
        SaveStrings = ()
      end
    end
  end
  inherited Panel2: TPanel
    Top = 528
  end
  inherited cdsMenu: TClientDataSet
    object cdsMenufcsspgroupstandardid: TWideStringField
      FieldName = 'fcsspgroupstandardid'
      Size = 100
    end
    object cdsMenuFcontrolunitid: TWideStringField
      FieldName = 'Fcontrolunitid'
      Size = 44
    end
    object cdsMenuFdisplayname_L2: TWideStringField
      FieldName = 'Fdisplayname_L2'
      Size = 100
    end
  end
end
