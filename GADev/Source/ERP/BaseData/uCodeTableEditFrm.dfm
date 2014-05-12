inherited CodeTableEditFrm: TCodeTableEditFrm
  Caption = #26465#30721#23545#29031#32534#36753
  PixelsPerInch = 96
  TextHeight = 12
  inherited TopPl: TPanel
    inherited txt_lableFind: TcxTextEdit
      Style.IsFontAssigned = True
    end
  end
  inherited Panel1: TPanel
    object Label3: TLabel
      Left = 8
      Top = 27
      Width = 29
      Height = 12
      AutoSize = False
      Caption = #29289#26009
    end
    object Label4: TLabel
      Left = 8
      Top = 59
      Width = 29
      Height = 12
      AutoSize = False
      Caption = #39068#33394
    end
    object Label5: TLabel
      Left = 8
      Top = 91
      Width = 29
      Height = 12
      AutoSize = False
      Caption = #23610#30721
    end
    object Label6: TLabel
      Left = 8
      Top = 123
      Width = 29
      Height = 12
      AutoSize = False
      Caption = #20869#38271
    end
    object Label7: TLabel
      Left = 8
      Top = 155
      Width = 53
      Height = 12
      AutoSize = False
      Caption = #26465#24418#30721
    end
    object Label8: TLabel
      Left = 8
      Top = 187
      Width = 53
      Height = 12
      AutoSize = False
      Caption = #22269#38469#30721
    end
    object txt_mFnumber: TcxDBButtonEdit
      Left = 69
      Top = 24
      DataBinding.DataField = 'mFnumber'
      DataBinding.DataSource = dsMater
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ClearKey = 46
      Properties.ClickKey = 118
      Properties.ReadOnly = False
      Properties.OnButtonClick = txt_mFnumberPropertiesButtonClick
      TabOrder = 0
      OnKeyPress = txt_mFnumberKeyPress
      Width = 140
    end
    object txt_MNAME: TcxDBTextEdit
      Left = 208
      Top = 25
      DataBinding.DataField = 'MNAME'
      DataBinding.DataSource = dsMater
      Enabled = False
      TabOrder = 1
      Width = 281
    end
    object txt_COLORNUMBER: TcxDBButtonEdit
      Left = 69
      Top = 56
      DataBinding.DataField = 'COLORNUMBER'
      DataBinding.DataSource = dsMater
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ClearKey = 46
      Properties.ClickKey = 118
      Properties.ReadOnly = False
      Properties.OnButtonClick = txt_COLORNUMBERPropertiesButtonClick
      TabOrder = 2
      OnKeyPress = txt_COLORNUMBERKeyPress
      Width = 140
    end
    object txt_COLORNAME: TcxDBTextEdit
      Left = 207
      Top = 56
      DataBinding.DataField = 'COLORNAME'
      DataBinding.DataSource = dsMater
      Enabled = False
      TabOrder = 3
      Width = 281
    end
    object txt_SIZENUMBER: TcxDBButtonEdit
      Left = 69
      Top = 88
      DataBinding.DataField = 'SIZENUMBER'
      DataBinding.DataSource = dsMater
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ClearKey = 46
      Properties.ClickKey = 118
      Properties.ReadOnly = False
      Properties.OnButtonClick = txt_SIZENUMBERPropertiesButtonClick
      TabOrder = 4
      OnKeyPress = txt_SIZENUMBERKeyPress
      Width = 140
    end
    object txt_SIZENAME: TcxDBTextEdit
      Left = 208
      Top = 88
      DataBinding.DataField = 'SIZENAME'
      DataBinding.DataSource = dsMater
      Enabled = False
      TabOrder = 5
      Width = 281
    end
    object txt_CUPNUMBER: TcxDBButtonEdit
      Left = 69
      Top = 120
      DataBinding.DataField = 'CUPNUMBER'
      DataBinding.DataSource = dsMater
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ClearKey = 46
      Properties.ClickKey = 118
      Properties.ReadOnly = False
      Properties.OnButtonClick = txt_CUPNUMBERPropertiesButtonClick
      TabOrder = 6
      OnKeyPress = txt_CUPNUMBERKeyPress
      Width = 140
    end
    object txt_CUPNAME: TcxDBTextEdit
      Left = 208
      Top = 120
      DataBinding.DataField = 'CUPNAME'
      DataBinding.DataSource = dsMater
      Enabled = False
      TabOrder = 7
      Width = 281
    end
    object txt_CFBARCODE: TcxDBTextEdit
      Left = 69
      Top = 152
      DataBinding.DataField = 'CFBARCODE'
      DataBinding.DataSource = dsMater
      TabOrder = 8
      Width = 140
    end
    object txt_CFINTERNATIONALCODE: TcxDBTextEdit
      Left = 69
      Top = 184
      DataBinding.DataField = 'CFINTERNATIONALCODE'
      DataBinding.DataSource = dsMater
      TabOrder = 9
      Width = 140
    end
  end
  inherited cdsMater: TClientDataSet
    Top = 368
    object cdsMaterFNUMBER: TWideStringField
      FieldName = 'FNUMBER'
      Size = 160
    end
    object cdsMaterFSIMPLENAME: TWideStringField
      FieldName = 'FSIMPLENAME'
      Size = 160
    end
    object cdsMaterFID: TWideStringField
      FieldName = 'FID'
      Size = 44
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
    object cdsMaterFCONTROLUNITID: TWideStringField
      FieldName = 'FCONTROLUNITID'
      Size = 44
    end
    object cdsMaterCFCOLORID: TWideStringField
      FieldName = 'CFCOLORID'
      Size = 44
    end
    object cdsMaterCFSIZEID: TWideStringField
      FieldName = 'CFSIZEID'
      Size = 44
    end
    object cdsMaterCFCUPID: TWideStringField
      FieldName = 'CFCUPID'
      Size = 44
    end
    object cdsMaterCFBARCODE: TWideStringField
      FieldName = 'CFBARCODE'
      Size = 200
    end
    object cdsMaterCFINTERNATIONALCODE: TWideStringField
      FieldName = 'CFINTERNATIONALCODE'
      Size = 200
    end
    object cdsMaterCFMATERIALID: TWideStringField
      FieldName = 'CFMATERIALID'
      Size = 44
    end
    object cdsMaterFNAME_L1: TWideStringField
      FieldName = 'FNAME_L1'
      Size = 510
    end
    object cdsMaterFNAME_L2: TWideStringField
      FieldName = 'FNAME_L2'
      Size = 510
    end
    object cdsMaterFNAME_L3: TWideStringField
      FieldName = 'FNAME_L3'
      Size = 510
    end
    object cdsMaterFDESCRIPTION_L1: TWideStringField
      FieldName = 'FDESCRIPTION_L1'
      Size = 510
    end
    object cdsMaterFDESCRIPTION_L2: TWideStringField
      FieldName = 'FDESCRIPTION_L2'
      Size = 510
    end
    object cdsMaterFDESCRIPTION_L3: TWideStringField
      FieldName = 'FDESCRIPTION_L3'
      Size = 510
    end
    object cdsMaterMNAME: TWideStringField
      FieldName = 'MNAME'
      Size = 510
    end
    object cdsMaterCOLORNUMBER: TWideStringField
      FieldName = 'COLORNUMBER'
      Size = 160
    end
    object cdsMaterCOLORNAME: TWideStringField
      FieldName = 'COLORNAME'
      Size = 510
    end
    object cdsMaterSIZENUMBER: TWideStringField
      FieldName = 'SIZENUMBER'
      Size = 160
    end
    object cdsMaterSIZENAME: TWideStringField
      FieldName = 'SIZENAME'
      Size = 510
    end
    object cdsMaterCUPNUMBER: TWideStringField
      FieldName = 'CUPNUMBER'
      Size = 160
    end
    object cdsMaterCUPNAME: TWideStringField
      FieldName = 'CUPNAME'
      Size = 510
    end
    object cdsMaterCTNAME: TWideStringField
      FieldName = 'CTNAME'
      Size = 160
    end
    object cdsMaterALNAME: TWideStringField
      FieldName = 'ALNAME'
      Size = 160
    end
    object cdsMaterBASEUNITNAME: TWideStringField
      FieldName = 'BASEUNITNAME'
      Size = 510
    end
    object cdsMaterFstate: TIntegerField
      FieldName = 'Fstate'
      OnGetText = cdsMaterFstateGetText
    end
    object cdsMatermFnumber: TWideStringField
      FieldName = 'mFnumber'
      Size = 80
    end
  end
  inherited cdsSave: TClientDataSet
    object cdsSaveFNUMBER: TWideStringField
      FieldName = 'FNUMBER'
      Size = 160
    end
    object cdsSaveFSIMPLENAME: TWideStringField
      FieldName = 'FSIMPLENAME'
      Size = 160
    end
    object cdsSaveFID: TWideStringField
      FieldName = 'FID'
      Size = 44
    end
    object cdsSaveFCREATORID: TWideStringField
      FieldName = 'FCREATORID'
      Size = 44
    end
    object cdsSaveFCREATETIME: TDateTimeField
      FieldName = 'FCREATETIME'
    end
    object cdsSaveFLASTUPDATEUSERID: TWideStringField
      FieldName = 'FLASTUPDATEUSERID'
      Size = 44
    end
    object cdsSaveFLASTUPDATETIME: TDateTimeField
      FieldName = 'FLASTUPDATETIME'
    end
    object cdsSaveFCONTROLUNITID: TWideStringField
      FieldName = 'FCONTROLUNITID'
      Size = 44
    end
    object cdsSaveCFCOLORID: TWideStringField
      FieldName = 'CFCOLORID'
      Size = 44
    end
    object cdsSaveCFSIZEID: TWideStringField
      FieldName = 'CFSIZEID'
      Size = 44
    end
    object cdsSaveCFCUPID: TWideStringField
      FieldName = 'CFCUPID'
      Size = 44
    end
    object cdsSaveCFBARCODE: TWideStringField
      FieldName = 'CFBARCODE'
      Size = 200
    end
    object cdsSaveCFINTERNATIONALCODE: TWideStringField
      FieldName = 'CFINTERNATIONALCODE'
      Size = 200
    end
    object cdsSaveCFMATERIALID: TWideStringField
      FieldName = 'CFMATERIALID'
      Size = 44
    end
    object cdsSaveFNAME_L1: TWideStringField
      FieldName = 'FNAME_L1'
      Size = 510
    end
    object cdsSaveFNAME_L2: TWideStringField
      FieldName = 'FNAME_L2'
      Size = 510
    end
    object cdsSaveFNAME_L3: TWideStringField
      FieldName = 'FNAME_L3'
      Size = 510
    end
    object cdsSaveFDESCRIPTION_L1: TWideStringField
      FieldName = 'FDESCRIPTION_L1'
      Size = 510
    end
    object cdsSaveFDESCRIPTION_L2: TWideStringField
      FieldName = 'FDESCRIPTION_L2'
      Size = 510
    end
    object cdsSaveFDESCRIPTION_L3: TWideStringField
      FieldName = 'FDESCRIPTION_L3'
      Size = 510
    end
    object cdsSaveFstate: TIntegerField
      FieldName = 'Fstate'
    end
  end
end
