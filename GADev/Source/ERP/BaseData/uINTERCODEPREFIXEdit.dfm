inherited INTERCODEPREFIXEditFrm: TINTERCODEPREFIXEditFrm
  Width = 916
  Caption = #22269#26631#30721#21069#32512#32534#36753
  PixelsPerInch = 96
  TextHeight = 12
  inherited p_top: TPanel
    Width = 900
    inherited Image1: TImage
      Width = 898
    end
  end
  inherited cxGroupBox4: TcxGroupBox
    Width = 900
    inherited txt_FState: TcxDBTextEdit
      DataBinding.DataField = 'FSTATUS'
    end
  end
  inherited TopPl: TPanel
    Width = 900
    inherited Label1: TLabel
      Caption = #21069#32512
    end
    inherited txt_lableFind: TcxTextEdit
      Style.IsFontAssigned = True
    end
  end
  inherited Panel1: TPanel
    Width = 900
    object Label6: TLabel
      Left = 10
      Top = 21
      Width = 58
      Height = 12
      AutoSize = False
      Caption = #21697#29260
    end
    object Label24: TLabel
      Left = 229
      Top = 20
      Width = 85
      Height = 12
      AutoSize = False
      Caption = #21069#32512#38271#24230
      Transparent = True
    end
    object Label26: TLabel
      Left = 228
      Top = 50
      Width = 85
      Height = 12
      AutoSize = False
      Caption = #22269#26631#30721#24635#38271#24230
      Transparent = True
    end
    object Label3: TLabel
      Left = 8
      Top = 50
      Width = 63
      Height = 12
      AutoSize = False
      Caption = #36215#22987#21495
      Transparent = True
    end
    object Label4: TLabel
      Left = 229
      Top = 79
      Width = 85
      Height = 12
      AutoSize = False
      Caption = #24050#27969#27700#21495
      Transparent = True
    end
    object txt_brandName: TcxDBButtonEdit
      Left = 77
      Top = 17
      DataBinding.DataField = 'brandName'
      DataBinding.DataSource = dsMater
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ClickKey = 118
      Properties.ReadOnly = False
      Properties.OnButtonClick = txt_brandNamePropertiesButtonClick
      TabOrder = 1
      OnKeyPress = txt_brandNameKeyPress
      Width = 140
    end
    object txt_FNUMBERLENGTH: TcxDBCalcEdit
      Left = 312
      Top = 15
      DataBinding.DataField = 'FNUMBERLENGTH'
      DataBinding.DataSource = dsMater
      Enabled = False
      TabOrder = 0
      Width = 140
    end
    object txt_FSUMLENGTH: TcxDBCalcEdit
      Left = 312
      Top = 45
      DataBinding.DataField = 'FSUMLENGTH'
      DataBinding.DataSource = dsMater
      TabOrder = 3
      Width = 140
    end
    object txt_FSTARTNUMBER: TcxDBCalcEdit
      Left = 77
      Top = 45
      DataBinding.DataField = 'FSTARTNUMBER'
      DataBinding.DataSource = dsMater
      TabOrder = 2
      Width = 140
    end
    object txt_FMaxNumber: TcxDBCalcEdit
      Left = 312
      Top = 74
      DataBinding.DataField = 'FMaxNumber'
      DataBinding.DataSource = dsMater
      Enabled = False
      TabOrder = 4
      Width = 140
    end
  end
  inherited cdsMater: TClientDataSet
    object cdsMaterFID: TWideStringField
      FieldName = 'FID'
      Size = 44
    end
    object cdsMaterFBRANDID: TWideStringField
      FieldName = 'FBRANDID'
      Size = 44
    end
    object cdsMaterFNUMBERLENGTH: TFloatField
      FieldName = 'FNUMBERLENGTH'
    end
    object cdsMaterFSTARTNUMBER: TWideStringField
      FieldName = 'FSTARTNUMBER'
      Size = 40
    end
    object cdsMaterFSUMLENGTH: TFloatField
      FieldName = 'FSUMLENGTH'
    end
    object cdsMaterFSTATUS: TIntegerField
      FieldName = 'FSTATUS'
      OnGetText = cdsMaterFSTATUSGetText
    end
    object cdsMaterFAUDITDATE: TDateTimeField
      FieldName = 'FAUDITDATE'
    end
    object cdsMaterFAUDITERID: TWideStringField
      FieldName = 'FAUDITERID'
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
    object cdsMaterFNUMBER: TWideStringField
      FieldName = 'FNUMBER'
      Size = 160
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
    object cdsMaterFSIMPLENAME: TWideStringField
      FieldName = 'FSIMPLENAME'
      Size = 160
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
    object cdsMaterctName: TWideStringField
      FieldName = 'ctName'
      Size = 80
    end
    object cdsMateralName: TWideStringField
      FieldName = 'alName'
      Size = 80
    end
    object cdsMaterbaseunitName: TWideStringField
      FieldName = 'baseunitName'
      Size = 80
    end
    object cdsMaterbrandName: TWideStringField
      FieldName = 'brandName'
      Size = 80
    end
    object cdsMaterFMaxNumber: TFloatField
      FieldName = 'FMaxNumber'
    end
  end
  inherited cdsSave: TClientDataSet
    object cdsSaveFID: TWideStringField
      FieldName = 'FID'
      Size = 44
    end
    object cdsSaveFBRANDID: TWideStringField
      FieldName = 'FBRANDID'
      Size = 44
    end
    object cdsSaveFNUMBERLENGTH: TFloatField
      FieldName = 'FNUMBERLENGTH'
    end
    object cdsSaveFSTARTNUMBER: TWideStringField
      FieldName = 'FSTARTNUMBER'
      Size = 40
    end
    object cdsSaveFSUMLENGTH: TFloatField
      FieldName = 'FSUMLENGTH'
    end
    object cdsSaveFSTATUS: TIntegerField
      FieldName = 'FSTATUS'
    end
    object cdsSaveFAUDITDATE: TDateTimeField
      FieldName = 'FAUDITDATE'
    end
    object cdsSaveFAUDITERID: TWideStringField
      FieldName = 'FAUDITERID'
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
    object cdsSaveFNUMBER: TWideStringField
      FieldName = 'FNUMBER'
      Size = 160
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
    object cdsSaveFSIMPLENAME: TWideStringField
      FieldName = 'FSIMPLENAME'
      Size = 160
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
    object cdsSaveFMaxNumber: TFloatField
      FieldName = 'FMaxNumber'
    end
  end
end
