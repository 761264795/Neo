inherited TransactionFrm: TTransactionFrm
  Left = 297
  Top = 138
  Caption = #20107#21153#23450#20041
  ClientHeight = 513
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 12
  object right_P: TPanel
    Left = 0
    Top = 0
    Width = 912
    Height = 513
    Align = alClient
    BevelOuter = bvNone
    Color = 16511980
    TabOrder = 0
    object Panel6: TPanel
      Left = 181
      Top = 25
      Width = 731
      Height = 488
      Align = alClient
      BevelOuter = bvNone
      Caption = 'Panel6'
      TabOrder = 2
      object Splitter2: TSplitter
        Left = 0
        Top = 258
        Width = 731
        Height = 2
        Cursor = crVSplit
        Align = alTop
      end
      object Panel2: TPanel
        Left = 0
        Top = 260
        Width = 731
        Height = 228
        Align = alClient
        Color = 16511980
        TabOrder = 1
        object cxPage: TcxPageControl
          Left = 1
          Top = 1
          Width = 729
          Height = 201
          ActivePage = tb_FieldList
          Align = alClient
          Style = 10
          TabOrder = 0
          ClientRectBottom = 201
          ClientRectRight = 729
          ClientRectTop = 18
          object tb_FieldList: TcxTabSheet
            Caption = #21442#25968#35774#32622
            ImageIndex = 0
            object cxGrid1: TcxGrid
              Left = 0
              Top = 0
              Width = 729
              Height = 183
              Align = alClient
              TabOrder = 0
              LookAndFeel.Kind = lfOffice11
              LookAndFeel.SkinName = 'Office2007Green'
              object cxFiledList: TcxGridDBTableView
                NavigatorButtons.ConfirmDelete = False
                DataController.DataSource = dsFieldList
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                OptionsCustomize.ColumnFiltering = False
                OptionsCustomize.ColumnGrouping = False
                OptionsCustomize.ColumnSorting = False
                OptionsData.CancelOnExit = False
                OptionsData.Deleting = False
                OptionsData.DeletingConfirmation = False
                OptionsData.Inserting = False
                OptionsView.DataRowHeight = 22
                OptionsView.GroupByBox = False
                OptionsView.HeaderHeight = 22
                OptionsView.Indicator = True
                object cxFiledListFID: TcxGridDBColumn
                  DataBinding.FieldName = 'FID'
                  Visible = False
                end
                object cxFiledListFSEQ: TcxGridDBColumn
                  DataBinding.FieldName = 'FSEQ'
                  Options.Editing = False
                  Width = 43
                end
                object cxFiledListFPARENTID: TcxGridDBColumn
                  DataBinding.FieldName = 'FPARENTID'
                  Visible = False
                end
                object cxFiledListFPARANAME: TcxGridDBColumn
                  DataBinding.FieldName = 'FPARANAME'
                  Options.Editing = False
                  Width = 95
                end
                object cxFiledListFPARACHNAME: TcxGridDBColumn
                  DataBinding.FieldName = 'FPARACHNAME'
                  Width = 120
                end
                object cxFiledListFPARATYPE: TcxGridDBColumn
                  DataBinding.FieldName = 'FPARATYPE'
                  PropertiesClassName = 'TcxComboBoxProperties'
                  Properties.DropDownListStyle = lsFixedList
                  Properties.Items.Strings = (
                    'IN'
                    'OUT')
                  Options.Editing = False
                  Width = 94
                end
                object cxFiledListFPARADATATYPE: TcxGridDBColumn
                  DataBinding.FieldName = 'FPARADATATYPE'
                  Options.Editing = False
                  Width = 123
                end
                object cxFiledListFPARAVALUE: TcxGridDBColumn
                  DataBinding.FieldName = 'FPARAVALUE'
                  Width = 98
                end
                object cxFiledListFDES: TcxGridDBColumn
                  DataBinding.FieldName = 'FDES'
                  Width = 160
                end
              end
              object cxGridLevel1: TcxGridLevel
                GridView = cxFiledList
              end
            end
          end
          object tb_Help: TcxTabSheet
            Caption = #37197#32622#24517#35835
            ImageIndex = 4
            object Label3: TLabel
              Left = 0
              Top = 0
              Width = 582
              Height = 156
              Align = alClient
              Caption = 
                #13#10'1'#12289#23384#20648#36807#31243#24517#39035#25552#20379#20004#20010#36755#20986#21442#25968' RerutnValue,ErrMsg'#12290#13#10'    '#20363':procedure sp_I3_Sh' +
                'op_Pub(UserID in varchar2,RerutnValue out integer,ErrMsg out nva' +
                'rchar2);'#13#10'2'#12289'RerutnValue '#21442#25968#29992#20110#26631#35782#36807#31243#25191#34892#25104#21151#25110#22833#36133',ErrMsg '#21442#25968#36820#22238#25191#34892#24773#20917#25991#23383#35828#26126#20449#24687#12290#13#10 +
                '3'#12289'RerutnValue '#21442#25968#36820#22238' 0 '#20026#25104#21151#65292'-1'#20026#22833#36133#12290#13#10'4'#12289#21442#25968#26242#21482#25903#25345'Integer,Number,Varchar2' +
                ' '#25968#25454#31867#22411#12290#13#10'5'#12289'Oracle'#24322#24120#22788#29702#24314#35758#65306#13#10'    EXCEPTION '#13#10'    WHEN OTHERS THEN'#13#10' ' +
                '   ErrMsg := '#39#25191#34892#22833#36133#65281#39'||sqlerrm||sqlcode;'#13#10'    SELECT -1 INTO Reru' +
                'tnValue FROM DUAL;'#13#10'    ROLLBACK;'#13#10'    COMMIT;'
            end
          end
        end
        object Panel10: TPanel
          Left = 1
          Top = 202
          Width = 729
          Height = 25
          Align = alBottom
          BevelOuter = bvNone
          Color = 16511980
          TabOrder = 1
          object sbLoadfield: TSpeedButton
            Left = 0
            Top = 0
            Width = 87
            Height = 26
            Caption = #21152#36733#21442#25968
            Flat = True
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B5848400B5848400B584
              8400B5848400B5848400B5848400B5848400B5848400B5848400FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B57B8400FFEFD600F7E7
              C600F7DEB500F7DEAD00F7D69C00F7D69C00FFDE9C00B5848400FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A5737300E7D6C600DECE
              BD00DECEAD00E7CEAD00EFD6AD00EFCE9C00F7D69C00B5848400FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008C736B00B5B5AD00B5AD
              9C00B5A59400CEBDA500E7CEAD00EFCEA500F7D69C00B5848400FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000073FF00735A5200848484000073
              FF008C847B00AD9C8C00CEBDA500E7CEAD00F7DEAD00B5848400BD848400BD84
              8400B5848400B5848400A5737300846363000073FF000073FF000073FF000073
              FF0073736B008C847B00B5AD9400DEC6AD00F7DEB500B5848400B5848400FFEF
              CE00F7DEBD00EFD6AD000073FF000073FF000073FF000073FF000073FF000073
              FF000073FF000073FF00B5AD9C00E7D6BD00EFE7C600B5848400BD848400FFF7
              DE00F7DEC600EFD6B500DEBD9C000073FF000073FF00735A4A00949494000073
              FF000073FF0084848400B5ADA500A5736B00B5847300B5848400BD8C8400FFFF
              EF00F7E7D600EFDEC600DEC6A5000073FF000073FF006B5A4A007B7B7B000073
              FF000073FF008C8C8C00B5B5B500A5736B00E7A55A00CE8C6300BD8C8400FFFF
              FF00FFEFDE00F7E7CE000073FF000073FF000073FF000073FF000073FF000073
              FF000073FF000073FF00CECECE00AD7B7300D69C7B00FFFFFF00CE9C8400FFFF
              FF00FFF7EF00FFEFDE00F7E7CE00E7D6BD000073FF000073FF000073FF000073
              FF00DEAD8400DEAD8400DEAD8400B5847300FFFFFF00FFFFFF00CE9C8400FFFF
              FF00FFFFFF00FFF7EF00FFEFDE00F7E7CE000073FF00DEC6AD00A57373000073
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEAD8400FFFF
              FF00FFFFFF00FFFFFF00FFF7EF00FFEFDE00B5847B00B5847300B57B7B00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7B58C00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00EFDEDE00BD847B00DE9C5A00C6846B00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFBD9400FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00EFDEE700BD847B00DEA57300FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFBD9400DEAD
              8400DEAD8400DEAD8400DEAD8400DEAD8400BD847B00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
            OnClick = sbLoadfieldClick
          end
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 731
        Height = 258
        Align = alTop
        BevelOuter = bvNone
        Color = 16511980
        TabOrder = 0
        object Panel3: TPanel
          Left = 0
          Top = 0
          Width = 731
          Height = 69
          Align = alTop
          Color = 16511980
          TabOrder = 0
          object Label21: TLabel
            Left = 251
            Top = 29
            Width = 53
            Height = 12
            AutoSize = False
            Caption = #21019#24314#20154
          end
          object Label32: TLabel
            Left = 251
            Top = 51
            Width = 65
            Height = 12
            AutoSize = False
            Caption = #26368#21518#20462#25913#20154
          end
          object Label33: TLabel
            Left = 487
            Top = 48
            Width = 81
            Height = 12
            AutoSize = False
            Caption = #26368#21518#20462#25913#26102#38388
          end
          object Label31: TLabel
            Left = 487
            Top = 27
            Width = 65
            Height = 12
            AutoSize = False
            Caption = #21019#24314#26102#38388
          end
          object Label2: TLabel
            Left = 251
            Top = 6
            Width = 33
            Height = 12
            AutoSize = False
            Caption = #22791#27880
          end
          object Label4: TLabel
            Left = 6
            Top = 6
            Width = 64
            Height = 12
            AutoSize = False
            Caption = #20107#21153#21517#31216
          end
          object Label1: TLabel
            Left = 6
            Top = 28
            Width = 65
            Height = 12
            AutoSize = False
            Caption = #29983#25928#26085#26399
          end
          object Label5: TLabel
            Left = 6
            Top = 51
            Width = 70
            Height = 12
            AutoSize = False
            Caption = #22833#25928#26085#26399
          end
          object Label10: TLabel
            Left = 487
            Top = 5
            Width = 53
            Height = 12
            AutoSize = False
            Caption = #29366#24577
          end
          object txt_ctName: TcxDBTextEdit
            Left = 322
            Top = 23
            DataBinding.DataField = 'CtName'
            DataBinding.DataSource = dsMater
            Enabled = False
            TabOrder = 4
            Width = 160
          end
          object txt_alName: TcxDBTextEdit
            Left = 322
            Top = 45
            DataBinding.DataField = 'AlName'
            DataBinding.DataSource = dsMater
            Enabled = False
            TabOrder = 7
            Width = 160
          end
          object txt_FLASTUPDATETIME: TcxDBDateEdit
            Left = 567
            Top = 45
            DataBinding.DataField = 'FLASTUPDATETIME'
            DataBinding.DataSource = dsMater
            Enabled = False
            TabOrder = 8
            Width = 160
          end
          object txt_FCREATETIME: TcxDBDateEdit
            Left = 567
            Top = 23
            DataBinding.DataField = 'FCREATETIME'
            DataBinding.DataSource = dsMater
            Enabled = False
            TabOrder = 5
            Width = 160
          end
          object txt_FDES: TcxDBTextEdit
            Left = 322
            Top = 2
            DataBinding.DataField = 'FDES'
            DataBinding.DataSource = dsMater
            TabOrder = 1
            Width = 159
          end
          object txt_FName: TcxDBTextEdit
            Tag = 100
            Left = 81
            Top = 2
            DataBinding.DataField = 'Fname_l2'
            DataBinding.DataSource = dsMater
            TabOrder = 0
            Width = 160
          end
          object txt_FENDDATE: TcxDBDateEdit
            Tag = 100
            Left = 81
            Top = 45
            DataBinding.DataField = 'FENDDATE'
            DataBinding.DataSource = dsMater
            Properties.SaveTime = False
            Properties.ShowTime = False
            TabOrder = 6
            Width = 160
          end
          object txt_FBEGINDATE: TcxDBDateEdit
            Tag = 100
            Left = 81
            Top = 23
            DataBinding.DataField = 'FBEGINDATE'
            DataBinding.DataSource = dsMater
            Properties.SaveTime = False
            Properties.ShowTime = False
            TabOrder = 3
            Width = 160
          end
          object txt_FSTATUS: TcxDBTextEdit
            Left = 567
            Top = 2
            DataBinding.DataField = 'FSTATUS'
            DataBinding.DataSource = dsMater
            Enabled = False
            TabOrder = 2
            Width = 160
          end
        end
        object Panel4: TPanel
          Left = 0
          Top = 69
          Width = 731
          Height = 189
          Align = alClient
          Color = 16511980
          TabOrder = 1
          object Label16: TLabel
            Left = 6
            Top = 8
            Width = 70
            Height = 17
            AutoSize = False
            Caption = 'Oracle'#21253#21517
          end
          object Label6: TLabel
            Left = 251
            Top = 8
            Width = 65
            Height = 17
            AutoSize = False
            Caption = #23384#20648#36807#31243#21517
          end
          object Label7: TLabel
            Left = 6
            Top = 32
            Width = 70
            Height = 17
            AutoSize = False
            Caption = #35843#24230#26041#24335
          end
          object Label8: TLabel
            Left = 251
            Top = 33
            Width = 70
            Height = 17
            AutoSize = False
            Caption = #25191#34892#26102#38388
          end
          object Label9: TLabel
            Left = 487
            Top = 32
            Width = 70
            Height = 17
            AutoSize = False
            Caption = #36131#20219#20154
          end
          object cbPackage_name: TcxDBComboBox
            Tag = 100
            Left = 81
            Top = 5
            DataBinding.DataField = 'FPACKAGENAME'
            DataBinding.DataSource = dsMater
            Properties.Items.Strings = (
              '')
            Style.BorderStyle = ebsOffice11
            TabOrder = 0
            Width = 160
          end
          object Proc_Name: TcxDBComboBox
            Tag = 100
            Left = 322
            Top = 5
            DataBinding.DataField = 'FPROCEDURENAME'
            DataBinding.DataSource = dsMater
            Properties.OnInitPopup = Proc_NamePropertiesInitPopup
            Style.BorderStyle = ebsOffice11
            TabOrder = 1
            Width = 405
          end
          object txt_DUTY_NAME: TcxDBButtonEdit
            Left = 567
            Top = 27
            DataBinding.DataField = 'DUTY_NAME'
            DataBinding.DataSource = dsMater
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = txt_DUTY_NAMEPropertiesButtonClick
            TabOrder = 3
            OnKeyPress = txt_DUTY_NAMEKeyPress
            Width = 160
          end
          object cxGroupBox1: TcxGroupBox
            Left = 80
            Top = 53
            Caption = #25191#34892#28857
            TabOrder = 5
            Visible = False
            Height = 84
            Width = 647
            object chk_1: TcxDBCheckBox
              Left = 16
              Top = 21
              Caption = #19968#26376
              DataBinding.DataField = 'FITEM1'
              DataBinding.DataSource = dsMater
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = 1
              Properties.ValueUnchecked = 0
              TabOrder = 0
              Width = 65
            end
            object chk_2: TcxDBCheckBox
              Left = 96
              Top = 21
              Caption = #20108#26376
              DataBinding.DataField = 'FITEM2'
              DataBinding.DataSource = dsMater
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = 1
              Properties.ValueUnchecked = 0
              TabOrder = 1
              Width = 65
            end
            object chk_3: TcxDBCheckBox
              Left = 176
              Top = 21
              Caption = #19977#26376
              DataBinding.DataField = 'FITEM3'
              DataBinding.DataSource = dsMater
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = 1
              Properties.ValueUnchecked = 0
              TabOrder = 2
              Width = 65
            end
            object chk_4: TcxDBCheckBox
              Left = 248
              Top = 21
              Caption = #22235#26376
              DataBinding.DataField = 'FITEM4'
              DataBinding.DataSource = dsMater
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = 1
              Properties.ValueUnchecked = 0
              TabOrder = 3
              Width = 65
            end
            object chk_5: TcxDBCheckBox
              Left = 328
              Top = 21
              Caption = #20116#26376
              DataBinding.DataField = 'FITEM5'
              DataBinding.DataSource = dsMater
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = 1
              Properties.ValueUnchecked = 0
              TabOrder = 4
              Width = 65
            end
            object chk_6: TcxDBCheckBox
              Left = 408
              Top = 21
              Caption = #20845#26376
              DataBinding.DataField = 'FITEM6'
              DataBinding.DataSource = dsMater
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = 1
              Properties.ValueUnchecked = 0
              TabOrder = 5
              Width = 65
            end
            object chk_7: TcxDBCheckBox
              Left = 488
              Top = 21
              Caption = #19971#26376
              DataBinding.DataField = 'FITEM7'
              DataBinding.DataSource = dsMater
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = 1
              Properties.ValueUnchecked = 0
              TabOrder = 6
              Width = 65
            end
            object chk_8: TcxDBCheckBox
              Left = 16
              Top = 53
              Caption = #20843#26376
              DataBinding.DataField = 'FITEM8'
              DataBinding.DataSource = dsMater
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = 1
              Properties.ValueUnchecked = 0
              TabOrder = 7
              Width = 65
            end
            object chk_9: TcxDBCheckBox
              Left = 96
              Top = 53
              Caption = #20061#26376
              DataBinding.DataField = 'FITEM9'
              DataBinding.DataSource = dsMater
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = 1
              Properties.ValueUnchecked = 0
              TabOrder = 8
              Width = 65
            end
            object chk_10: TcxDBCheckBox
              Left = 176
              Top = 53
              Caption = #21313#26376
              DataBinding.DataField = 'FITEM10'
              DataBinding.DataSource = dsMater
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = 1
              Properties.ValueUnchecked = 0
              TabOrder = 9
              Width = 65
            end
            object chk_11: TcxDBCheckBox
              Left = 248
              Top = 53
              Caption = #21313#19968#26376
              DataBinding.DataField = 'FITEM11'
              DataBinding.DataSource = dsMater
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = 1
              Properties.ValueUnchecked = 0
              TabOrder = 10
              Width = 65
            end
            object chk_12: TcxDBCheckBox
              Left = 328
              Top = 53
              Caption = #21313#20108#26376
              DataBinding.DataField = 'FITEM12'
              DataBinding.DataSource = dsMater
              Properties.AllowGrayed = True
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = 1
              Properties.ValueUnchecked = 0
              TabOrder = 11
              Width = 65
            end
          end
          object mk_FSTARTTIME: TcxDBMaskEdit
            Tag = 100
            Left = 322
            Top = 27
            DataBinding.DataField = 'FSTARTTIME'
            DataBinding.DataSource = dsMater
            Properties.EditMask = '!90:00;1;_'
            Properties.MaxLength = 0
            TabOrder = 2
            Width = 160
          end
          object cxGroupBox2: TcxGroupBox
            Left = 80
            Top = 138
            Caption = #25191#34892#26085#26399
            TabOrder = 6
            Visible = False
            Height = 41
            Width = 647
            object Label12: TLabel
              Left = 164
              Top = 20
              Width = 43
              Height = 12
              AutoSize = False
              Caption = #21495
            end
            object Label11: TLabel
              Left = 30
              Top = 19
              Width = 29
              Height = 12
              AutoSize = False
              Caption = #27599#26376
            end
            object se_FStartDate: TcxDBSpinEdit
              Left = 62
              Top = 15
              DataBinding.DataField = 'FStartDate'
              DataBinding.DataSource = dsMater
              Properties.MaxValue = 30.000000000000000000
              Properties.MinValue = 1.000000000000000000
              TabOrder = 0
              Width = 97
            end
          end
          object lk_FDISPATCHTYPE: TcxDBLookupComboBox
            Left = 81
            Top = 28
            DataBinding.DataField = 'FDISPATCHTYPE'
            DataBinding.DataSource = dsMater
            Properties.DropDownListStyle = lsFixedList
            Properties.KeyFieldNames = 'Ftype'
            Properties.ListColumns = <
              item
                FieldName = 'FtypeName'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = dsDispatchType
            Properties.OnChange = lk_FDISPATCHTYPEPropertiesChange
            TabOrder = 4
            Width = 160
          end
        end
      end
    end
    object Panel7: TPanel
      Left = 0
      Top = 25
      Width = 181
      Height = 488
      Align = alLeft
      Caption = 'Panel7'
      TabOrder = 1
      object cxGrid3: TcxGrid
        Left = 1
        Top = 1
        Width = 179
        Height = 486
        Align = alClient
        TabOrder = 0
        LookAndFeel.Kind = lfOffice11
        LookAndFeel.SkinName = 'Office2007Green'
        object cxgridMaterList: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          OnFocusedRecordChanged = cxgridMaterListFocusedRecordChanged
          DataController.DataSource = dsMaterList
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
          object cxgridMaterListFname_l2: TcxGridDBColumn
            DataBinding.FieldName = 'Fname_l2'
            Width = 163
          end
        end
        object cxGridLevel2: TcxGridLevel
          GridView = cxgridMaterList
        end
      end
    end
    object Panel8: TPanel
      Left = 0
      Top = 0
      Width = 912
      Height = 25
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object Image2: TImage
        Left = 0
        Top = 0
        Width = 912
        Height = 25
        Align = alClient
        Stretch = True
      end
      object btn_New: TSpeedButton
        Left = 0
        Top = 0
        Width = 73
        Height = 25
        Caption = #26032#22686'(&N)'
        Flat = True
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF0000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF000000000000000000000000000000000000000000000000000000
          000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        OnClick = btn_NewClick
      end
      object spt_Save: TSpeedButton
        Left = 73
        Top = 0
        Width = 73
        Height = 25
        Caption = #20445#23384'(&S)'
        Flat = True
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
          FF00AD5A5A00AD525200A54A4A00AD949400C6CEC600CECECE00CECECE00CECE
          C600C6CECE00B59C9C009C4242009C424200A5525200FFFFFF00FFFFFF00BD7B
          7300CE636300D66B6B00BD5A5A009C848400BDA5A500E7D6CE00FFFFF700FFFF
          FF00F7F7F700D6B5B500942929009C313100C65A5A00B55A5A00FFFFFF00BD7B
          7300CE636300CE636300BD5A5A009C7B7B009C424200B5737300E7DEDE00FFFF
          FF00FFFFFF00DEBDBD00942929009C313100C65A5A00AD5A5A00FFFFFF00BD7B
          7300CE636300CE636300BD5A5A00AD8484009C3939009C313100CEBDBD00F7F7
          EF00FFFFFF00E7C6C600942929009C313100C65A5A00AD5A5A00FFFFFF00BD7B
          7300CE636300CE636300B55A5A00B58C8C009C4A4A0094313100A59C9C00D6DE
          DE00FFFFFF00E7CECE009429290094313100BD5A5A00AD5A5A00FFFFFF00BD7B
          7300CE636300CE636300BD5A5A00C6948C00C6949400B5848400AD8C8C00BDA5
          A500E7CECE00DEADAD00A5393900A5393900C65A5A00AD525A00FFFFFF00BD7B
          7300CE636300CE636300CE636300CE636300CE636300CE636300CE636300CE5A
          5A00CE5A5A00CE636300CE636300CE636300CE6B6B00AD525200FFFFFF00BD7B
          7300B5525200B55A5200C6848400D6A5A500D6ADAD00D6ADAD00D6ADAD00D6A5
          A500D6ADA500D6ADAD00D6ADAD00D69C9C00CE636300AD525200FFFFFF00BD7B
          7300B54A4A00E7CECE00FFF7F700FFF7F700FFF7F700FFF7F700FFF7F700FFF7
          F700FFF7F700FFF7F700FFFFFF00DEBDBD00C65A5A00AD525200FFFFFF00BD7B
          7300B5524A00EFD6D600FFFFFF00F7F7EF00F7F7F700F7F7F700F7F7F700F7F7
          F700F7F7F700F7F7F700FFFFFF00DEBDBD00C65A5A00AD525200FFFFFF00BD7B
          7300B5524A00EFD6D600F7EFEF00DED6D600DED6D600DED6D600DED6D600DED6
          D600DED6D600DED6D600EFEFEF00E7BDBD00C65A5A00AD525200FFFFFF00BD7B
          7300B5524A00EFD6D600F7F7F700DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
          DE00DEDEDE00DEDEDE00EFEFEF00E7BDBD00C65A5A00AD525200FFFFFF00BD7B
          7300B5524A00EFD6D600F7F7F700E7DEDE00E7E7E700E7E7E700E7E7E700E7E7
          E700E7E7E700E7DEDE00F7F7F700DEBDBD00C65A5A00AD525200FFFFFF00BD7B
          7300B5524A00EFD6D600F7F7EF00DED6D600DEDED600DEDED600DEDED600DEDE
          D600DEDED600DED6D600EFEFEF00E7BDBD00C65A5A00AD525200FFFFFF00BD7B
          7300B5524A00EFD6D600FFFFFF00FFF7F700FFF7F700FFF7F700FFF7F700FFF7
          F700FFF7F700FFF7F700FFFFFF00DEBDBD00C65A5A00AD525200FFFFFF00FFFF
          FF00AD524A00CEB5B500D6D6D600D6CECE00D6CECE00D6CECE00D6CECE00D6CE
          CE00D6CECE00D6CECE00D6D6D600CEADAD00A54A4A00FFFFFF00}
        OnClick = spt_SaveClick
      end
      object spt_Del: TSpeedButton
        Left = 146
        Top = 0
        Width = 73
        Height = 25
        Caption = #21024#38500'(&D)'
        Flat = True
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
          FF00FFFFFF000000FF00000084000000840084848400FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF000000FF0084848400FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF000000FF0000008400000084000000840084848400FFFFFF00FFFF
          FF00FFFFFF000000FF00000084000000840084848400FFFFFF00FFFFFF00FFFF
          FF00FFFFFF000000FF000000840000008400000084000000840084848400FFFF
          FF000000FF000000840000008400000084000000840084848400FFFFFF00FFFF
          FF00FFFFFF00FFFFFF000000FF00000084000000840000008400000084008484
          8400000084000000840000008400000084000000840084848400FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF000000FF000000840000008400000084000000
          84000000840000008400000084000000840084848400FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000FF0000008400000084000000
          840000008400000084000000840084848400FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000008400000084000000
          8400000084000000840084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000FF00000084000000
          8400000084000000840084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000FF0000008400000084000000
          8400000084000000840084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF000000FF000000840000008400000084008484
          840000008400000084000000840084848400FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF000000FF0000008400000084000000840084848400FFFF
          FF000000FF0000008400000084000000840084848400FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF000000FF00000084000000840084848400FFFFFF00FFFF
          FF00FFFFFF000000FF0000008400000084000000840084848400FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF000000FF0000008400FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF000000FF00000084000000840000008400FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF000000FF00000084000000FF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        OnClick = spt_DelClick
      end
      object SpeedButton4: TSpeedButton
        Left = 219
        Top = 0
        Width = 73
        Height = 25
        Caption = #21551#29992'(&Q)'
        Flat = True
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00000073000000730000006B00000063000000
          630000006300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF000000B5000000B5000008AD003939B5005A5AB5005252AD002929
          940000006B0000006B0000006B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF000010CE000810C6006B73DE00CED6F700FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00C6C6DE005A5A9C0000006B0000007B00FFFFFF00FFFFFF00FFFFFF000018
          DE000818D600ADB5EF00FFFFFF00FFFFFF00BDBDEF008C8CD6008C8CD600CECE
          EF00FFFFFF00FFFFFF008C8CBD0000006B0000007300FFFFFF00FFFFFF000018
          DE00949CEF00FFFFFF00E7EFFF004A52CE000000AD0000009C00000094000000
          94005A5ABD00F7F7FF00FFFFFF006363A50000007300FFFFFF000018F7002142
          E700FFFFFF00F7FFFF00394ADE000000C6001018BD00B5B5E700A5A5E7000808
          A50000008C005252BD00FFFFFF00DEDEEF0008087B0000007B000018F7007384
          F700FFFFFF0094A5F7000008DE000008D6001018CE00F7F7FF00DEE7F7000008
          AD0000009C0000009400ADADDE00FFFFFF005252AD0000007B000021FF00ADBD
          FF00FFFFFF004263F7001031EF00A5ADF700BDBDF700FFFFFF00F7F7FF00B5BD
          EF00949CDE000808A5005A5ABD00FFFFFF008484D60000007B000839FF00C6CE
          FF00FFFFFF00315AFF00214AFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00EFEFFF001018B5004A4AC600FFFFFF009494DE000000A5003963FF00C6D6
          FF00FFFFFF005A7BFF000029FF00315AFF005A6BF700F7F7FF00E7E7FF004A5A
          DE003142D6000000B500737BD600FFFFFF007B7BD6000000AD001039FF00B5C6
          FF00FFFFFF00C6D6FF000029FF000021FF001039FF00F7F7FF00E7E7FF000018
          DE000000CE000818CE00DEDEF700FFFFFF003139CE000000AD00FFFFFF008CA5
          FF00FFFFFF00FFFFFF008CA5FF000021FF000029FF00426BFF004263FF000018
          EF000018DE00A5ADF700FFFFFF00B5BDEF000000BD00FFFFFF00FFFFFF00738C
          FF00DEE7FF00FFFFFF00FFFFFF00B5C6FF00395AFF001039FF001039FF004A63
          FF00C6CEFF00FFFFFF00EFEFFF003142D6000000BD00FFFFFF00FFFFFF00FFFF
          FF008CA5FF00E7EFFF00FFFFFF00FFFFFF00FFFFFF00E7EFFF00E7EFFF00FFFF
          FF00FFFFFF00DEE7FF003952E7000008CE00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF008CA5FF00BDC6FF00EFEFFF00FFFFFF00FFFFFF00FFFFFF00E7EF
          FF008C9CF7001039E7000008CE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF008CA5FF008CA5FF0094A5FF007B94FF004A6B
          FF001842EF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        OnClick = SpeedButton4Click
      end
      object spt_uBear: TSpeedButton
        Left = 292
        Top = 0
        Width = 73
        Height = 25
        Caption = #31105#29992'(&J)'
        Flat = True
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00000042000000420000003900000031000000
          310000003100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF0000009400000094000000840010188C0029298C00292984000808
          6300000042000000390000003900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF000000B5000000A5003942C600B5B5EF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00A5A5CE00292973000000390000004A00FFFFFF00FFFFFF00FFFFFF000000
          CE000000BD007B8CE700FFFFFF00FFFFFF009C9CDE005A5AB5005A5AB500ADAD
          DE00FFFFFF00FFFFFF005A5A9C000000390000004200FFFFFF00FFFFFF000000
          CE006373E700FFFFFF00D6DEF7002121B5000000840000009C0000008C000000
          6B0031319C00E7E7F700FFFFFF0031317B0000004200FFFFFF000000EF000818
          DE00FFFFFF00F7F7FF001021C60000009C0000009C0000008C00000073000000
          73000000630021219400FFFFFF00C6C6DE000000520000004A000000EF00425A
          F700FFFFFF006373EF000000C6000000B5000000AD0000008400000073000000
          7B0000006B00000063008484CE00FFFFFF0021218C0000004A000008F7007B94
          FF00FFFFFF001831F7000010E700F7F7FF00F7F7FF00F7F7FF00EFEFFF00EFEF
          FF00EFEFFF0000007B0029299C00FFFFFF00525ABD0000004A000018FF00A5B5
          FF00FFFFFF001029FF000821F700A5B5FF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00DEE7F70000008C002121A500FFFFFF006363C60000007B001031FF00A5B5
          FF00FFFFFF00294AFF000008FF000010FF000008DE000008D6000000C6000000
          B5000000940000009400424ABD00FFFFFF004A4ABD0000007B000018FF0094A5
          FF00FFFFFF00ADBDFF000008FF000008FF000008FF000010DE000000D6000000
          C6000000B5000000AD00C6C6EF00FFFFFF001010AD0000007B00FFFFFF005A7B
          FF00FFFFFF00FFFFFF005A73FF000008FF000008FF000008FF000018FF000000
          DE000000CE007384EF00FFFFFF008C94E70000009C00FFFFFF00FFFFFF00425A
          FF00C6CEFF00FFFFFF00FFFFFF008C9CFF001029FF000010FF000010FF002131
          F7009CADF700FFFFFF00E7E7FF001018BD0000009C00FFFFFF00FFFFFF00FFFF
          FF005A73FF00D6DEFF00FFFFFF00FFFFFF00FFFFFF00D6DEFF00D6DEFF00FFFF
          FF00FFFFFF00C6CEF7001821CE000000B500FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF005A73FF0094ADFF00DEE7FF00FFFFFF00FFFFFF00FFFFFF00D6DE
          FF005A6BF7000010D6000000B500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF005A73FF005A7BFF00637BFF004A63FF002139
          F7000018E700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        OnClick = spt_uBearClick
      end
      object spt_Exec: TSpeedButton
        Left = 365
        Top = 0
        Width = 124
        Height = 25
        Caption = #25163#21160#25191#34892#20107#21153'(&E)'
        Flat = True
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF001094100039AD3900FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000AD0000218C180039AD
          3900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00009C0000219C18001884
          180039AD3900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00009C0000088C00000884
          0000088C100039AD3900FFFFFF00FFFFFF00FFFFFF00FFFFFF0000AD00006BDE
          6B0052E7520042DE420018C6180000B5080000B50000088C0800008C00002194
          210063AD6300107B100039AD3900FFFFFF00FFFFFF00FFFFFF00009C080063E7
          630018D6180008C6000000BD000000B5000000A50000008C0000008C08000084
          0000218C180063AD6300187B180039AD3900FFFFFF00FFFFFF001094080063E7
          630000CE000000C6000000BD000000B5000000AD0000009C0000008C08000084
          0000007B0000187B210063AD6300187B180039AD3900FFFFFF0000A5000063E7
          6B0000CE000008C6000000BD000000B5000000AD000000940000008C08000084
          000000840000007B0000298C310063AD6300187B210039AD3900089C00006BE7
          6B0000CE000008C6000000BD000000B5000000AD000000940800008C08000084
          0000007B000000730000398C310063AD63001873290039AD3900009C000063E7
          630000CE000008C6000000BD000000B5000000A5000000940000009400000084
          0000087B08002984180063AD6300187B210039AD3900FFFFFF00009408006BEF
          630018D6180008C6000000BD000000B5000000AD080008940000008C00000084
          0000108C180063AD6300107B180039AD3900FFFFFF00FFFFFF0000AD00007BDE
          7B005AE75A0042DE420018C6180000B5080000AD000000940000009400001894
          210063AD6300107B100039AD3900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00009C0000008C00000884
          0000088C100039AD3900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF001094080018941800188C
          180039AD3900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00009C00001894180039AD
          3900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF002194210039AD3900FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00}
        OnClick = spt_ExecClick
      end
    end
  end
  object cdsMater: TClientDataSet
    Aggregates = <>
    Params = <>
    BeforeEdit = cdsMaterBeforeEdit
    BeforePost = cdsMaterBeforePost
    OnCalcFields = cdsMaterCalcFields
    OnNewRecord = cdsMaterNewRecord
    Left = 664
    Top = 196
    object cdsMaterFID: TWideStringField
      FieldName = 'FID'
      Size = 44
    end
    object cdsMaterFNAME_L2: TWideStringField
      FieldName = 'FNAME_L2'
      Size = 200
    end
    object cdsMaterFPACKAGENAME: TWideStringField
      FieldName = 'FPACKAGENAME'
      Size = 100
    end
    object cdsMaterFPROCEDURENAME: TWideStringField
      FieldName = 'FPROCEDURENAME'
      Size = 100
    end
    object cdsMaterFSTARTTIME: TWideStringField
      FieldName = 'FSTARTTIME'
      Size = 40
    end
    object cdsMaterFBEGINDATE: TDateTimeField
      FieldName = 'FBEGINDATE'
    end
    object cdsMaterFENDDATE: TDateTimeField
      FieldName = 'FENDDATE'
    end
    object cdsMaterFDISPATCHTYPE: TIntegerField
      FieldName = 'FDISPATCHTYPE'
    end
    object cdsMaterFITEM1: TIntegerField
      FieldName = 'FITEM1'
    end
    object cdsMaterFITEM2: TIntegerField
      FieldName = 'FITEM2'
    end
    object cdsMaterFITEM3: TIntegerField
      FieldName = 'FITEM3'
    end
    object cdsMaterFITEM4: TIntegerField
      FieldName = 'FITEM4'
    end
    object cdsMaterFITEM5: TIntegerField
      FieldName = 'FITEM5'
    end
    object cdsMaterFITEM6: TIntegerField
      FieldName = 'FITEM6'
    end
    object cdsMaterFITEM7: TIntegerField
      FieldName = 'FITEM7'
    end
    object cdsMaterFITEM8: TIntegerField
      FieldName = 'FITEM8'
    end
    object cdsMaterFITEM9: TIntegerField
      FieldName = 'FITEM9'
    end
    object cdsMaterFITEM10: TIntegerField
      FieldName = 'FITEM10'
    end
    object cdsMaterFITEM11: TIntegerField
      FieldName = 'FITEM11'
    end
    object cdsMaterFITEM12: TIntegerField
      FieldName = 'FITEM12'
    end
    object cdsMaterFDUTYUSERID: TWideStringField
      FieldName = 'FDUTYUSERID'
      Size = 44
    end
    object cdsMaterFDES: TWideStringField
      FieldName = 'FDES'
      Size = 500
    end
    object cdsMaterFCREATORID: TWideStringField
      FieldName = 'FCREATORID'
      Size = 44
    end
    object cdsMaterFCREATETIME: TDateTimeField
      FieldName = 'FCREATETIME'
    end
    object cdsMaterFLASTUPDATEUSERID: TWideStringField
      FieldName = 'FLASTUPDATEUSERID'
      Size = 44
    end
    object cdsMaterFLASTUPDATETIME: TDateTimeField
      FieldName = 'FLASTUPDATETIME'
    end
    object cdsMaterFSTATUS: TIntegerField
      FieldName = 'FSTATUS'
      OnGetText = cdsMaterFSTATUSGetText
    end
    object cdsMaterctName: TStringField
      FieldKind = fkCalculated
      FieldName = 'ctName'
      Size = 80
      Calculated = True
    end
    object cdsMateralName: TStringField
      FieldKind = fkCalculated
      FieldName = 'alName'
      Size = 80
      Calculated = True
    end
    object cdsMaterDUTY_NAME: TStringField
      FieldKind = fkCalculated
      FieldName = 'DUTY_NAME'
      Size = 80
      Calculated = True
    end
    object cdsMaterFStartDate: TIntegerField
      FieldName = 'FStartDate'
    end
  end
  object dsMater: TDataSource
    DataSet = cdsMater
    Left = 704
    Top = 196
  end
  object cdsFieldList: TClientDataSet
    Aggregates = <>
    Params = <>
    OnNewRecord = a
    Left = 464
    Top = 412
    object cdsFieldListFID: TWideStringField
      FieldName = 'FID'
      Size = 44
    end
    object cdsFieldListFPARENTID: TWideStringField
      FieldName = 'FPARENTID'
      Size = 44
    end
    object cdsFieldListFPARANAME: TWideStringField
      DisplayLabel = #21442#25968#21517#31216
      FieldName = 'FPARANAME'
      Size = 60
    end
    object cdsFieldListFPARACHNAME: TWideStringField
      DisplayLabel = #21442#25968#21035#21517
      FieldName = 'FPARACHNAME'
      Size = 80
    end
    object cdsFieldListFPARATYPE: TWideStringField
      DisplayLabel = #21442#25968#31867#22411
      FieldName = 'FPARATYPE'
      Size = 80
    end
    object cdsFieldListFPARADATATYPE: TWideStringField
      DisplayLabel = #21442#25968#25968#25454#31867#22411
      FieldName = 'FPARADATATYPE'
      Size = 80
    end
    object cdsFieldListFPARAVALUE: TWideStringField
      DisplayLabel = #21442#25968#20540
      FieldName = 'FPARAVALUE'
      Size = 80
    end
    object cdsFieldListFDES: TWideStringField
      DisplayLabel = #22791#27880
      FieldName = 'FDES'
      Size = 500
    end
    object cdsFieldListFSEQ: TIntegerField
      DisplayLabel = #39034#24207
      FieldName = 'FSEQ'
    end
  end
  object dsFieldList: TDataSource
    DataSet = cdsFieldList
    Left = 528
    Top = 412
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 32
    Top = 64
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor]
      Color = clHighlight
    end
  end
  object cdsMaterList: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 40
    Top = 308
    object cdsMaterListFID: TWideStringField
      FieldName = 'FID'
      Size = 44
    end
    object cdsMaterListFNAME_L2: TWideStringField
      DisplayLabel = #20107#21153#21517#31216
      FieldName = 'FNAME_L2'
      Size = 200
    end
    object cdsMaterListFSTATUS: TIntegerField
      FieldName = 'FSTATUS'
    end
  end
  object dsMaterList: TDataSource
    DataSet = cdsMaterList
    Left = 48
    Top = 372
  end
  object cdsDispatchType: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 72
    Top = 196
    object cdsDispatchTypeFtype: TIntegerField
      FieldName = 'Ftype'
    end
    object cdsDispatchTypeFtypeName: TStringField
      FieldName = 'FtypeName'
      Size = 80
    end
  end
  object dsDispatchType: TDataSource
    DataSet = cdsDispatchType
    Left = 160
    Top = 196
  end
end
