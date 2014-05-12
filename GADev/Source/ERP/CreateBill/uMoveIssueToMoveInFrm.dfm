inherited MoveIssueToMoveInFrm: TMoveIssueToMoveInFrm
  Caption = #35843#25320#20986#24211#21333'>'#35843#25320#20837#24211#21333
  PixelsPerInch = 96
  TextHeight = 12
  inherited top_pal: TPanel
    inherited btn_Ref: TcxButton
      Left = 757
    end
    inherited txt_BillNumber: TcxButtonEdit
      Properties.OnButtonClick = txt_BillNumberPropertiesButtonClick
    end
    inherited txt_SrcDes: TcxTextEdit
      Width = 622
    end
    object cxLabel1: TcxLabel
      Left = 210
      Top = 8
      AutoSize = False
      Caption = #35843#20986#20179#24211
      Height = 16
      Width = 54
    end
    object txt_OutStock: TcxButtonEdit
      Left = 266
      Top = 5
      Enabled = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ReadOnly = True
      TabOrder = 4
      Width = 160
    end
    object cxLabel2: TcxLabel
      Left = 429
      Top = 8
      AutoSize = False
      Caption = #35843#20837#20179#24211
      Height = 16
      Width = 54
    end
    object txt_InStock: TcxButtonEdit
      Left = 483
      Top = 5
      Enabled = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ReadOnly = True
      TabOrder = 6
      Width = 195
    end
  end
  object cdsSrcMater: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 328
    Top = 113
  end
  object cdsSrcEntry: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 328
    Top = 169
  end
  object cdsMaster: TClientDataSet
    Tag = 1
    Aggregates = <>
    Params = <>
    OnNewRecord = cdsMasterNewRecord
    Left = 712
    Top = 338
    object cdsMasterFCreatorName: TStringField
      DisplayLabel = #24320#21333#20154
      FieldKind = fkCalculated
      FieldName = 'FCreatorName'
      Size = 200
      Calculated = True
    end
    object cdsMasterFAuditorName: TStringField
      DisplayLabel = #23457#26680#20154
      FieldKind = fkCalculated
      FieldName = 'FAuditorName'
      Size = 200
      Calculated = True
    end
    object cdsMasterFID: TWideStringField
      FieldName = 'FID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 44
    end
    object cdsMasterFCREATORID: TWideStringField
      FieldName = 'FCREATORID'
      Size = 44
    end
    object cdsMasterFCREATETIME: TDateTimeField
      FieldName = 'FCREATETIME'
    end
    object cdsMasterFLASTUPDATEUSERID: TWideStringField
      FieldName = 'FLASTUPDATEUSERID'
      Size = 44
    end
    object cdsMasterFLASTUPDATETIME: TDateTimeField
      FieldName = 'FLASTUPDATETIME'
    end
    object cdsMasterFCONTROLUNITID: TWideStringField
      FieldName = 'FCONTROLUNITID'
      Size = 44
    end
    object cdsMasterFNUMBER: TWideStringField
      FieldName = 'FNUMBER'
      Size = 80
    end
    object cdsMasterFBIZDATE: TDateTimeField
      FieldName = 'FBIZDATE'
    end
    object cdsMasterFHANDLERID: TWideStringField
      FieldName = 'FHANDLERID'
      Size = 44
    end
    object cdsMasterFDESCRIPTION: TWideStringField
      FieldName = 'FDESCRIPTION'
      Size = 300
    end
    object cdsMasterFHASEFFECTED: TFloatField
      FieldName = 'FHASEFFECTED'
    end
    object cdsMasterFAUDITORID: TWideStringField
      FieldName = 'FAUDITORID'
      Size = 44
    end
    object cdsMasterFSOURCEBILLID: TWideStringField
      FieldName = 'FSOURCEBILLID'
      Size = 80
    end
    object cdsMasterFSOURCEFUNCTION: TWideStringField
      FieldName = 'FSOURCEFUNCTION'
      Size = 80
    end
    object cdsMasterFAUDITTIME: TDateTimeField
      FieldName = 'FAUDITTIME'
    end
    object cdsMasterFBASESTATUS: TFloatField
      FieldName = 'FBASESTATUS'
    end
    object cdsMasterFBIZTYPEID: TWideStringField
      FieldName = 'FBIZTYPEID'
      Size = 44
    end
    object cdsMasterFSOURCEBILLTYPEID: TWideStringField
      FieldName = 'FSOURCEBILLTYPEID'
      Size = 44
    end
    object cdsMasterFBILLTYPEID: TWideStringField
      FieldName = 'FBILLTYPEID'
      Size = 44
    end
    object cdsMasterFYEAR: TFloatField
      FieldName = 'FYEAR'
    end
    object cdsMasterFPERIOD: TFloatField
      FieldName = 'FPERIOD'
    end
    object cdsMasterFSTORAGEORGUNITID: TWideStringField
      FieldName = 'FSTORAGEORGUNITID'
      Size = 44
    end
    object cdsMasterFADMINORGUNITID: TWideStringField
      FieldName = 'FADMINORGUNITID'
      Size = 44
    end
    object cdsMasterFSTOCKERID: TWideStringField
      FieldName = 'FSTOCKERID'
      Size = 44
    end
    object cdsMasterFVOUCHERID: TWideStringField
      FieldName = 'FVOUCHERID'
      Size = 44
    end
    object cdsMasterFTOTALQTY: TFloatField
      FieldName = 'FTOTALQTY'
    end
    object cdsMasterFTOTALAMOUNT: TFloatField
      FieldName = 'FTOTALAMOUNT'
    end
    object cdsMasterFFIVOUCHERED: TFloatField
      FieldName = 'FFIVOUCHERED'
    end
    object cdsMasterFTOTALSTANDARDCOST: TFloatField
      FieldName = 'FTOTALSTANDARDCOST'
    end
    object cdsMasterFTOTALACTUALCOST: TFloatField
      FieldName = 'FTOTALACTUALCOST'
    end
    object cdsMasterFISREVERSED: TFloatField
      FieldName = 'FISREVERSED'
    end
    object cdsMasterFTRANSACTIONTYPEID: TWideStringField
      FieldName = 'FTRANSACTIONTYPEID'
      Size = 44
    end
    object cdsMasterFISINITBILL: TFloatField
      FieldName = 'FISINITBILL'
    end
    object cdsMasterFRECEIPTSTORAGEORGUNITID: TWideStringField
      FieldName = 'FRECEIPTSTORAGEORGUNITID'
      Size = 44
    end
    object cdsMasterFISSUECOMPANYORGUNITID: TWideStringField
      FieldName = 'FISSUECOMPANYORGUNITID'
      Size = 44
    end
    object cdsMasterFRECEIPTCOMPANYORGUNITID: TWideStringField
      FieldName = 'FRECEIPTCOMPANYORGUNITID'
      Size = 44
    end
    object cdsMasterFMODIFICATIONTIME: TDateTimeField
      FieldName = 'FMODIFICATIONTIME'
    end
    object cdsMasterFMODIFIERID: TWideStringField
      FieldName = 'FMODIFIERID'
      Size = 44
    end
    object cdsMasterFMONTH: TFloatField
      FieldName = 'FMONTH'
    end
    object cdsMasterFDAY: TFloatField
      FieldName = 'FDAY'
    end
    object cdsMasterCFISBADSHOE: TFloatField
      FieldName = 'CFISBADSHOE'
    end
    object cdsMasterCFSUBBILLTYPE: TWideStringField
      FieldName = 'CFSUBBILLTYPE'
      Size = 100
    end
    object cdsMasterCFINWAREHOUSEID: TWideStringField
      DisplayWidth = 44
      FieldName = 'CFINWAREHOUSEID'
      Size = 44
    end
    object cdsMasterCFOutWAREHOUSEID: TWideStringField
      FieldName = 'CFOutWAREHOUSEID'
      Size = 44
    end
    object cdsMasterCFORDERTYPEID: TWideStringField
      FieldName = 'CFORDERTYPEID'
      Size = 44
    end
    object cdsMasterCFINPUTWAY: TWideStringField
      FieldName = 'CFINPUTWAY'
      Size = 10
    end
    object cdsMasterCFSendWareName: TStringField
      FieldKind = fkCalculated
      FieldName = 'CFSendWareName'
      Size = 60
      Calculated = True
    end
    object cdsMasterCFReceivWareName: TStringField
      FieldKind = fkCalculated
      FieldName = 'CFReceivWareName'
      Size = 60
      Calculated = True
    end
    object cdsMasterCFISPROCDUCT: TIntegerField
      FieldName = 'CFISPROCDUCT'
    end
    object cdsMasterCFISPACKING: TFloatField
      FieldName = 'CFISPACKING'
    end
    object cdsMasterCFModifierName: TStringField
      FieldKind = fkCalculated
      FieldName = 'CFModifierName'
      Size = 80
      Calculated = True
    end
  end
  object cdsDetail: TClientDataSet
    Tag = 1
    Aggregates = <>
    IndexFieldNames = 'FID'
    MasterFields = 'FID'
    Params = <>
    OnNewRecord = cdsDetailNewRecord
    Left = 792
    Top = 335
    object cdsDetailFID: TWideStringField
      FieldName = 'FID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 44
    end
    object cdsDetailFMATERIALID: TWideStringField
      FieldName = 'FMATERIALID'
      Size = 44
    end
    object cdsDetailFWAREHOUSEID: TWideStringField
      DisplayLabel = #20986#24211#20179#24211'ID'
      FieldName = 'FWAREHOUSEID'
      Size = 44
    end
    object cdsDetailFSEQ: TFloatField
      DisplayLabel = #34892#21495
      FieldName = 'FSEQ'
    end
    object cdsDetailFSOURCEBILLID: TWideStringField
      FieldName = 'FSOURCEBILLID'
      Size = 80
    end
    object cdsDetailFSOURCEBILLNUMBER: TWideStringField
      FieldName = 'FSOURCEBILLNUMBER'
      Size = 80
    end
    object cdsDetailFSOURCEBILLENTRYID: TWideStringField
      FieldName = 'FSOURCEBILLENTRYID'
      Size = 80
    end
    object cdsDetailFSOURCEBILLENTRYSEQ: TFloatField
      FieldName = 'FSOURCEBILLENTRYSEQ'
    end
    object cdsDetailFASSCOEFFICIENT: TFloatField
      FieldName = 'FASSCOEFFICIENT'
    end
    object cdsDetailFBASESTATUS: TFloatField
      FieldName = 'FBASESTATUS'
    end
    object cdsDetailFASSOCIATEQTY: TFloatField
      FieldName = 'FASSOCIATEQTY'
    end
    object cdsDetailFSOURCEBILLTYPEID: TWideStringField
      FieldName = 'FSOURCEBILLTYPEID'
      Size = 44
    end
    object cdsDetailFASSISTPROPERTYID: TWideStringField
      FieldName = 'FASSISTPROPERTYID'
      Size = 44
    end
    object cdsDetailFUNITID: TWideStringField
      FieldName = 'FUNITID'
      Size = 44
    end
    object cdsDetailFBASEUNITID: TWideStringField
      FieldName = 'FBASEUNITID'
      Size = 44
    end
    object cdsDetailFASSISTUNITID: TWideStringField
      FieldName = 'FASSISTUNITID'
      Size = 44
    end
    object cdsDetailFREASONCODEID: TWideStringField
      FieldName = 'FREASONCODEID'
      Size = 44
    end
    object cdsDetailFSTORAGEORGUNITID: TWideStringField
      FieldName = 'FSTORAGEORGUNITID'
      Size = 44
    end
    object cdsDetailFCOMPANYORGUNITID: TWideStringField
      FieldName = 'FCOMPANYORGUNITID'
      Size = 44
    end
    object cdsDetailFLOCATIONID: TWideStringField
      FieldName = 'FLOCATIONID'
      Size = 44
    end
    object cdsDetailFSTOCKERID: TWideStringField
      FieldName = 'FSTOCKERID'
      Size = 44
    end
    object cdsDetailFLOT: TWideStringField
      FieldName = 'FLOT'
      Size = 80
    end
    object cdsDetailFQTY: TFloatField
      Tag = 1
      DisplayLabel = #25968#37327
      FieldName = 'FQTY'
    end
    object cdsDetailFASSISTQTY: TFloatField
      FieldName = 'FASSISTQTY'
    end
    object cdsDetailFBASEQTY: TFloatField
      FieldName = 'FBASEQTY'
    end
    object cdsDetailFREVERSEQTY: TFloatField
      FieldName = 'FREVERSEQTY'
    end
    object cdsDetailFRETURNSQTY: TFloatField
      FieldName = 'FRETURNSQTY'
    end
    object cdsDetailFPRICE: TFloatField
      DisplayLabel = #21514#29260#20215
      FieldName = 'FPRICE'
    end
    object cdsDetailFAMOUNT: TFloatField
      FieldName = 'FAMOUNT'
    end
    object cdsDetailFUNITSTANDARDCOST: TFloatField
      FieldName = 'FUNITSTANDARDCOST'
    end
    object cdsDetailFSTANDARDCOST: TFloatField
      FieldName = 'FSTANDARDCOST'
    end
    object cdsDetailFUNITACTUALCOST: TFloatField
      FieldName = 'FUNITACTUALCOST'
    end
    object cdsDetailFACTUALCOST: TFloatField
      FieldName = 'FACTUALCOST'
    end
    object cdsDetailFISPRESENT: TFloatField
      FieldName = 'FISPRESENT'
    end
    object cdsDetailFPARENTID: TWideStringField
      FieldName = 'FPARENTID'
      Size = 44
    end
    object cdsDetailFSTOCKTRANSFERBILLID: TWideStringField
      FieldName = 'FSTOCKTRANSFERBILLID'
      Size = 44
    end
    object cdsDetailFSTOCKTRANSBILLENTRYID: TWideStringField
      FieldName = 'FSTOCKTRANSBILLENTRYID'
      Size = 44
    end
    object cdsDetailFSTOCKTRANSFERBILLNUM: TWideStringField
      FieldName = 'FSTOCKTRANSFERBILLNUM'
      Size = 80
    end
    object cdsDetailFSTOCKTRANSFERBILLENTRYSEQ: TFloatField
      FieldName = 'FSTOCKTRANSFERBILLENTRYSEQ'
    end
    object cdsDetailFEXP: TDateTimeField
      FieldName = 'FEXP'
    end
    object cdsDetailFMFG: TDateTimeField
      FieldName = 'FMFG'
    end
    object cdsDetailFREMARK: TWideStringField
      FieldName = 'FREMARK'
      Size = 200
    end
    object cdsDetailFREVERSEBASEQTY: TFloatField
      FieldName = 'FREVERSEBASEQTY'
    end
    object cdsDetailFRETURNBASEQTY: TFloatField
      FieldName = 'FRETURNBASEQTY'
    end
    object cdsDetailFBASEUNITACTUALCOST: TFloatField
      FieldName = 'FBASEUNITACTUALCOST'
    end
    object cdsDetailFTOTALINWAREHSQTY: TFloatField
      FieldName = 'FTOTALINWAREHSQTY'
    end
    object cdsDetailFCANINWAREHSBASEQTY: TFloatField
      FieldName = 'FCANINWAREHSBASEQTY'
    end
    object cdsDetailFPROJECTID: TWideStringField
      FieldName = 'FPROJECTID'
      Size = 44
    end
    object cdsDetailFTRACKNUMBERID: TWideStringField
      FieldName = 'FTRACKNUMBERID'
      Size = 44
    end
    object cdsDetailFCUSTOMERID: TWideStringField
      FieldName = 'FCUSTOMERID'
      Size = 44
    end
    object cdsDetailFSUPPLIERID: TWideStringField
      FieldName = 'FSUPPLIERID'
      Size = 44
    end
    object cdsDetailFSTORETYPEID: TWideStringField
      FieldName = 'FSTORETYPEID'
      Size = 44
    end
    object cdsDetailCFCHECKINPUTQTY: TFloatField
      Tag = 1
      FieldName = 'CFCHECKINPUTQTY'
    end
    object cdsDetailCFCHECKDIFFQTY: TFloatField
      Tag = 1
      FieldName = 'CFCHECKDIFFQTY'
    end
    object cdsDetailCFINLOCATIONID: TWideStringField
      FieldName = 'CFINLOCATIONID'
      Size = 44
    end
    object cdsDetailCFCUPID: TWideStringField
      FieldName = 'CFCUPID'
      Size = 44
    end
    object cdsDetailCFPACKID: TWideStringField
      FieldName = 'CFPACKID'
      Size = 44
    end
    object cdsDetailCFSIZESID: TWideStringField
      FieldName = 'CFSIZESID'
      Size = 44
    end
    object cdsDetailCFCOLORID: TWideStringField
      FieldName = 'CFCOLORID'
      Size = 44
    end
    object cdsDetailCFPACKNUM: TFloatField
      FieldName = 'CFPACKNUM'
    end
    object cdsDetailCFSIZEGROUPID: TWideStringField
      FieldName = 'CFSIZEGROUPID'
      Size = 44
    end
    object cdsDetailCFINWAREHOUSEID: TWideStringField
      DisplayLabel = #20837#24211#20179#24211'ID'
      FieldName = 'CFINWAREHOUSEID'
      Size = 44
    end
    object cdsDetailCFAssistNum: TWideStringField
      DisplayLabel = #36741#21161#23646#24615#32534#21495
      FieldName = 'CFAssistNum'
    end
    object cdsDetailcfdpprice: TFloatField
      DisplayLabel = #21514#29260#20215
      FieldName = 'cfdpprice'
    end
    object cdsDetailcfdpamount: TFloatField
      DisplayLabel = #21514#29260#37329#39069
      FieldName = 'cfdpamount'
    end
    object cdsDetailCFOldPackID: TWideStringField
      FieldName = 'CFOldPackID'
    end
  end
  object cdsBOTP: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 792
    Top = 177
  end
end
