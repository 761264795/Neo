inherited PostReqToIsSueFrm: TPostReqToIsSueFrm
  Caption = #37197#36135#21333'>'#20986#24211#21333
  PixelsPerInch = 96
  TextHeight = 12
  inherited top_pal: TPanel
    inherited txt_BillNumber: TcxButtonEdit
      Properties.OnButtonClick = txt_BillNumberPropertiesButtonClick
    end
  end
  inherited dsSelect: TDataSource
    Left = 612
    Top = 255
  end
  inherited adsSelect: TClientDataSet
    Left = 554
    Top = 257
  end
  object cdsSrcMater: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 344
    Top = 105
  end
  object cdsBOTP: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 808
    Top = 169
  end
  object cdsDetail_sale: TClientDataSet
    Tag = 1
    Aggregates = <>
    Params = <>
    BeforePost = cdsDetail_saleBeforePost
    OnNewRecord = cdsDetail_saleNewRecord
    Left = 848
    Top = 111
    object cdsDetail_saleFID: TWideStringField
      FieldName = 'FID'
      Size = 44
    end
    object cdsDetail_saleFSEQ: TFloatField
      FieldName = 'FSEQ'
    end
    object cdsDetail_saleFSOURCEBILLID: TWideStringField
      FieldName = 'FSOURCEBILLID'
      Size = 44
    end
    object cdsDetail_saleFSOURCEBILLNUMBER: TWideStringField
      FieldName = 'FSOURCEBILLNUMBER'
      Size = 160
    end
    object cdsDetail_saleFSOURCEBILLTYPEID: TWideStringField
      FieldName = 'FSOURCEBILLTYPEID'
      Size = 44
    end
    object cdsDetail_saleFSOURCEBILLENTRYID: TWideStringField
      FieldName = 'FSOURCEBILLENTRYID'
      Size = 44
    end
    object cdsDetail_saleFSOURCEBILLENTRYSEQ: TFloatField
      FieldName = 'FSOURCEBILLENTRYSEQ'
    end
    object cdsDetail_saleFASSCOEFFICIENT: TFloatField
      FieldName = 'FASSCOEFFICIENT'
    end
    object cdsDetail_saleFBASESTATUS: TFloatField
      FieldName = 'FBASESTATUS'
    end
    object cdsDetail_saleFMATERIALID: TWideStringField
      FieldName = 'FMATERIALID'
      Size = 44
    end
    object cdsDetail_saleFUNITID: TWideStringField
      FieldName = 'FUNITID'
      Size = 44
    end
    object cdsDetail_saleFBASEUNITID: TWideStringField
      FieldName = 'FBASEUNITID'
      Size = 44
    end
    object cdsDetail_saleFASSISTUNITID: TWideStringField
      FieldName = 'FASSISTUNITID'
      Size = 44
    end
    object cdsDetail_saleFREASONCODEID: TWideStringField
      FieldName = 'FREASONCODEID'
      Size = 44
    end
    object cdsDetail_saleFASSOCIATEQTY: TFloatField
      FieldName = 'FASSOCIATEQTY'
    end
    object cdsDetail_saleFSTORAGEORGUNITID: TWideStringField
      FieldName = 'FSTORAGEORGUNITID'
      Size = 44
    end
    object cdsDetail_saleFCOMPANYORGUNITID: TWideStringField
      FieldName = 'FCOMPANYORGUNITID'
      Size = 44
    end
    object cdsDetail_saleFWAREHOUSEID: TWideStringField
      FieldName = 'FWAREHOUSEID'
      Size = 44
    end
    object cdsDetail_saleFLOCATIONID: TWideStringField
      FieldName = 'FLOCATIONID'
      Size = 44
    end
    object cdsDetail_saleFSTOCKERID: TWideStringField
      FieldName = 'FSTOCKERID'
      Size = 44
    end
    object cdsDetail_saleFLOT: TWideStringField
      FieldName = 'FLOT'
      Size = 160
    end
    object cdsDetail_saleFQTY: TFloatField
      FieldName = 'FQTY'
    end
    object cdsDetail_saleFASSISTQTY: TFloatField
      FieldName = 'FASSISTQTY'
    end
    object cdsDetail_saleFBASEQTY: TFloatField
      FieldName = 'FBASEQTY'
    end
    object cdsDetail_saleFREVERSEQTY: TFloatField
      FieldName = 'FREVERSEQTY'
    end
    object cdsDetail_saleFRETURNSQTY: TFloatField
      FieldName = 'FRETURNSQTY'
    end
    object cdsDetail_saleFPRICE: TFloatField
      FieldName = 'FPRICE'
    end
    object cdsDetail_saleFAMOUNT: TFloatField
      FieldName = 'FAMOUNT'
    end
    object cdsDetail_saleFUNITSTANDARDCOST: TFloatField
      FieldName = 'FUNITSTANDARDCOST'
    end
    object cdsDetail_saleFSTANDARDCOST: TFloatField
      FieldName = 'FSTANDARDCOST'
    end
    object cdsDetail_saleFUNITACTUALCOST: TFloatField
      FieldName = 'FUNITACTUALCOST'
    end
    object cdsDetail_saleFACTUALCOST: TFloatField
      FieldName = 'FACTUALCOST'
    end
    object cdsDetail_saleFISPRESENT: TFloatField
      FieldName = 'FISPRESENT'
    end
    object cdsDetail_saleFPARENTID: TWideStringField
      FieldName = 'FPARENTID'
      Size = 44
    end
    object cdsDetail_saleFSALEORDERID: TWideStringField
      FieldName = 'FSALEORDERID'
      Size = 44
    end
    object cdsDetail_saleFSALEORDERENTRYID: TWideStringField
      FieldName = 'FSALEORDERENTRYID'
      Size = 44
    end
    object cdsDetail_saleFWRITTENOFFQTY: TFloatField
      FieldName = 'FWRITTENOFFQTY'
    end
    object cdsDetail_saleFWRITTENOFFAMOUNT: TFloatField
      FieldName = 'FWRITTENOFFAMOUNT'
    end
    object cdsDetail_saleFUNWRITEOFFQTY: TFloatField
      FieldName = 'FUNWRITEOFFQTY'
    end
    object cdsDetail_saleFUNWRITEOFFAMOUNT: TFloatField
      FieldName = 'FUNWRITEOFFAMOUNT'
    end
    object cdsDetail_saleFORDERNUMBER: TWideStringField
      FieldName = 'FORDERNUMBER'
      Size = 160
    end
    object cdsDetail_saleFSALEORDERNUMBER: TWideStringField
      FieldName = 'FSALEORDERNUMBER'
      Size = 160
    end
    object cdsDetail_saleFSALEORDERENTRYSEQ: TFloatField
      FieldName = 'FSALEORDERENTRYSEQ'
    end
    object cdsDetail_saleFTAXRATE: TFloatField
      FieldName = 'FTAXRATE'
    end
    object cdsDetail_saleFTAX: TFloatField
      FieldName = 'FTAX'
    end
    object cdsDetail_saleFLOCALTAX: TFloatField
      FieldName = 'FLOCALTAX'
    end
    object cdsDetail_saleFLOCALPRICE: TFloatField
      FieldName = 'FLOCALPRICE'
    end
    object cdsDetail_saleFLOCALAMOUNT: TFloatField
      FieldName = 'FLOCALAMOUNT'
    end
    object cdsDetail_saleFNONTAXAMOUNT: TFloatField
      FieldName = 'FNONTAXAMOUNT'
    end
    object cdsDetail_saleFLOCALNONTAXAMOUNT: TFloatField
      FieldName = 'FLOCALNONTAXAMOUNT'
    end
    object cdsDetail_saleFDREWQTY: TFloatField
      FieldName = 'FDREWQTY'
    end
    object cdsDetail_saleFASSISTPROPERTYID: TWideStringField
      FieldName = 'FASSISTPROPERTYID'
      Size = 44
    end
    object cdsDetail_saleFMFG: TDateTimeField
      FieldName = 'FMFG'
    end
    object cdsDetail_saleFEXP: TDateTimeField
      FieldName = 'FEXP'
    end
    object cdsDetail_saleFREMARK: TWideStringField
      FieldName = 'FREMARK'
      Size = 400
    end
    object cdsDetail_saleFREVERSEBASEQTY: TFloatField
      FieldName = 'FREVERSEBASEQTY'
    end
    object cdsDetail_saleFRETURNBASEQTY: TFloatField
      FieldName = 'FRETURNBASEQTY'
    end
    object cdsDetail_saleFWRITTENOFFBASEQTY: TFloatField
      FieldName = 'FWRITTENOFFBASEQTY'
    end
    object cdsDetail_saleFUNWRITEOFFBASEQTY: TFloatField
      FieldName = 'FUNWRITEOFFBASEQTY'
    end
    object cdsDetail_saleFDREWBASEQTY: TFloatField
      FieldName = 'FDREWBASEQTY'
    end
    object cdsDetail_saleFCOREBILLTYPEID: TWideStringField
      FieldName = 'FCOREBILLTYPEID'
      Size = 44
    end
    object cdsDetail_saleFUNRETURNEDBASEQTY: TFloatField
      FieldName = 'FUNRETURNEDBASEQTY'
    end
    object cdsDetail_saleFISLOCKED: TFloatField
      FieldName = 'FISLOCKED'
    end
    object cdsDetail_saleFINVENTORYID: TWideStringField
      FieldName = 'FINVENTORYID'
      Size = 44
    end
    object cdsDetail_saleFORDERPRICE: TFloatField
      FieldName = 'FORDERPRICE'
    end
    object cdsDetail_saleFTAXPRICE: TFloatField
      FieldName = 'FTAXPRICE'
    end
    object cdsDetail_saleFACTUALPRICE: TFloatField
      FieldName = 'FACTUALPRICE'
    end
    object cdsDetail_saleFSALEORGUNITID: TWideStringField
      FieldName = 'FSALEORGUNITID'
      Size = 44
    end
    object cdsDetail_saleFSALEGROUPID: TWideStringField
      FieldName = 'FSALEGROUPID'
      Size = 44
    end
    object cdsDetail_saleFSALEPERSONID: TWideStringField
      FieldName = 'FSALEPERSONID'
      Size = 44
    end
    object cdsDetail_saleFBASEUNITACTUALCOST: TFloatField
      FieldName = 'FBASEUNITACTUALCOST'
    end
    object cdsDetail_saleFUNDELIVERQTY: TFloatField
      FieldName = 'FUNDELIVERQTY'
    end
    object cdsDetail_saleFUNDELIVERBASEQTY: TFloatField
      FieldName = 'FUNDELIVERBASEQTY'
    end
    object cdsDetail_saleFUNINQTY: TFloatField
      FieldName = 'FUNINQTY'
    end
    object cdsDetail_saleFUNINBASEQTY: TFloatField
      FieldName = 'FUNINBASEQTY'
    end
    object cdsDetail_saleFBALANCECUSTOMERID: TWideStringField
      FieldName = 'FBALANCECUSTOMERID'
      Size = 44
    end
    object cdsDetail_saleFISCENTERBALANCE: TFloatField
      FieldName = 'FISCENTERBALANCE'
    end
    object cdsDetail_saleFISBETWEENCOMPANYSEND: TFloatField
      FieldName = 'FISBETWEENCOMPANYSEND'
    end
    object cdsDetail_saleFTOTALINWAREHSQTY: TFloatField
      FieldName = 'FTOTALINWAREHSQTY'
    end
    object cdsDetail_saleFPAYMENTCUSTOMERID: TWideStringField
      FieldName = 'FPAYMENTCUSTOMERID'
      Size = 44
    end
    object cdsDetail_saleFORDERCUSTOMERID: TWideStringField
      FieldName = 'FORDERCUSTOMERID'
      Size = 44
    end
    object cdsDetail_saleFCONFIRMQTY: TFloatField
      FieldName = 'FCONFIRMQTY'
    end
    object cdsDetail_saleFCONFIRMBASEQTY: TFloatField
      FieldName = 'FCONFIRMBASEQTY'
    end
    object cdsDetail_saleFASSOCIATEBASEQTY: TFloatField
      FieldName = 'FASSOCIATEBASEQTY'
    end
    object cdsDetail_saleFCONFIRMDATE: TDateTimeField
      FieldName = 'FCONFIRMDATE'
    end
    object cdsDetail_saleFSENDADDRESS: TWideStringField
      FieldName = 'FSENDADDRESS'
      Size = 510
    end
    object cdsDetail_saleFNETORDERBILLNUMBER: TWideStringField
      FieldName = 'FNETORDERBILLNUMBER'
      Size = 160
    end
    object cdsDetail_saleFNETORDERBILLID: TWideStringField
      FieldName = 'FNETORDERBILLID'
      Size = 88
    end
    object cdsDetail_saleFNETORDERBILLENTRYID: TWideStringField
      FieldName = 'FNETORDERBILLENTRYID'
      Size = 88
    end
    object cdsDetail_saleFISSQUAREBALANCE: TFloatField
      FieldName = 'FISSQUAREBALANCE'
    end
    object cdsDetail_saleFPROJECTID: TWideStringField
      FieldName = 'FPROJECTID'
      Size = 44
    end
    object cdsDetail_saleFTRACKNUMBERID: TWideStringField
      FieldName = 'FTRACKNUMBERID'
      Size = 44
    end
    object cdsDetail_saleFCONTRACTNUMBER: TWideStringField
      FieldName = 'FCONTRACTNUMBER'
      Size = 255
    end
    object cdsDetail_saleFSUPPLIERID: TWideStringField
      FieldName = 'FSUPPLIERID'
      Size = 44
    end
    object cdsDetail_saleFSALEPRICE: TFloatField
      FieldName = 'FSALEPRICE'
    end
    object cdsDetail_saleFDISCOUNTTYPE: TFloatField
      FieldName = 'FDISCOUNTTYPE'
    end
    object cdsDetail_saleFDISCOUNTAMOUNT: TFloatField
      FieldName = 'FDISCOUNTAMOUNT'
    end
    object cdsDetail_saleFDISCOUNT: TFloatField
      FieldName = 'FDISCOUNT'
    end
    object cdsDetail_saleFISFULLWRITEOFF: TFloatField
      FieldName = 'FISFULLWRITEOFF'
    end
    object cdsDetail_saleCFSETTLEBACKTYPEID: TWideStringField
      FieldName = 'CFSETTLEBACKTYPEID'
      Size = 44
    end
    object cdsDetail_saleCFSETTLEDATE: TDateTimeField
      FieldName = 'CFSETTLEDATE'
    end
    object cdsDetail_saleCFMUTILSOURCEBILL: TWideStringField
      FieldName = 'CFMUTILSOURCEBILL'
      Size = 400
    end
    object cdsDetail_saleCFPACKID: TWideStringField
      FieldName = 'CFPACKID'
      Size = 44
    end
    object cdsDetail_saleCFCOLORID: TWideStringField
      FieldName = 'CFCOLORID'
      Size = 44
    end
    object cdsDetail_saleCFPACKNUM: TFloatField
      FieldName = 'CFPACKNUM'
    end
    object cdsDetail_saleCFSIZESID: TWideStringField
      FieldName = 'CFSIZESID'
      Size = 44
    end
    object cdsDetail_saleCFCUPID: TWideStringField
      FieldName = 'CFCUPID'
      Size = 44
    end
    object cdsDetail_saleCFSIZEGROUPID: TWideStringField
      FieldName = 'CFSIZEGROUPID'
      Size = 44
    end
    object cdsDetail_saleCFPOSDATE: TDateTimeField
      FieldName = 'CFPOSDATE'
    end
    object cdsDetail_saleCFCHECKINPUTQTY: TFloatField
      FieldName = 'CFCHECKINPUTQTY'
    end
    object cdsDetail_saleCFCHECKDIFFQTY: TFloatField
      FieldName = 'CFCHECKDIFFQTY'
    end
    object cdsDetail_saleFACTUALTAXPRICE: TFloatField
      FieldName = 'FACTUALTAXPRICE'
    end
    object cdsDetail_saleCFISOTHERREC: TFloatField
      FieldName = 'CFISOTHERREC'
    end
    object cdsDetail_saleCFDPPRICE: TFloatField
      FieldName = 'CFDPPRICE'
    end
    object cdsDetail_saleCfassistnum: TWideStringField
      FieldName = 'Cfassistnum'
      Size = 50
    end
  end
  object cdsMaster_sale: TClientDataSet
    Tag = 1
    Aggregates = <>
    Params = <>
    AfterInsert = cdsMaster_saleAfterInsert
    BeforePost = cdsMaster_saleBeforePost
    OnNewRecord = cdsMaster_saleNewRecord
    Left = 744
    Top = 106
    object cdsMaster_saleFID: TWideStringField
      FieldName = 'FID'
      Size = 44
    end
    object cdsMaster_saleFCREATORID: TWideStringField
      FieldName = 'FCREATORID'
      Size = 44
    end
    object cdsMaster_saleFCREATETIME: TDateTimeField
      FieldName = 'FCREATETIME'
    end
    object cdsMaster_saleFLASTUPDATEUSERID: TWideStringField
      FieldName = 'FLASTUPDATEUSERID'
      Size = 44
    end
    object cdsMaster_saleFLASTUPDATETIME: TDateTimeField
      FieldName = 'FLASTUPDATETIME'
    end
    object cdsMaster_saleFCONTROLUNITID: TWideStringField
      FieldName = 'FCONTROLUNITID'
      Size = 44
    end
    object cdsMaster_saleFNUMBER: TWideStringField
      FieldName = 'FNUMBER'
      Size = 80
    end
    object cdsMaster_saleFBIZDATE: TDateTimeField
      FieldName = 'FBIZDATE'
    end
    object cdsMaster_saleFHANDLERID: TWideStringField
      FieldName = 'FHANDLERID'
      Size = 44
    end
    object cdsMaster_saleFDESCRIPTION: TWideStringField
      FieldName = 'FDESCRIPTION'
      Size = 160
    end
    object cdsMaster_saleFHASEFFECTED: TFloatField
      FieldName = 'FHASEFFECTED'
    end
    object cdsMaster_saleFAUDITORID: TWideStringField
      FieldName = 'FAUDITORID'
      Size = 44
    end
    object cdsMaster_saleFSOURCEBILLID: TWideStringField
      FieldName = 'FSOURCEBILLID'
      Size = 44
    end
    object cdsMaster_saleFSOURCEFUNCTION: TWideStringField
      FieldName = 'FSOURCEFUNCTION'
      Size = 160
    end
    object cdsMaster_saleFAUDITTIME: TDateTimeField
      FieldName = 'FAUDITTIME'
    end
    object cdsMaster_saleFBASESTATUS: TFloatField
      FieldName = 'FBASESTATUS'
    end
    object cdsMaster_saleFBIZTYPEID: TWideStringField
      FieldName = 'FBIZTYPEID'
      Size = 44
    end
    object cdsMaster_saleFSOURCEBILLTYPEID: TWideStringField
      FieldName = 'FSOURCEBILLTYPEID'
      Size = 44
    end
    object cdsMaster_saleFBILLTYPEID: TWideStringField
      FieldName = 'FBILLTYPEID'
      Size = 44
    end
    object cdsMaster_saleFYEAR: TFloatField
      FieldName = 'FYEAR'
    end
    object cdsMaster_saleFPERIOD: TFloatField
      FieldName = 'FPERIOD'
    end
    object cdsMaster_saleFSTORAGEORGUNITID: TWideStringField
      FieldName = 'FSTORAGEORGUNITID'
      Size = 44
    end
    object cdsMaster_saleFADMINORGUNITID: TWideStringField
      FieldName = 'FADMINORGUNITID'
      Size = 44
    end
    object cdsMaster_saleFSTOCKERID: TWideStringField
      FieldName = 'FSTOCKERID'
      Size = 44
    end
    object cdsMaster_saleFVOUCHERID: TWideStringField
      FieldName = 'FVOUCHERID'
      Size = 44
    end
    object cdsMaster_saleFTOTALQTY: TFloatField
      FieldName = 'FTOTALQTY'
    end
    object cdsMaster_saleFTOTALAMOUNT: TFloatField
      FieldName = 'FTOTALAMOUNT'
    end
    object cdsMaster_saleFFIVOUCHERED: TFloatField
      FieldName = 'FFIVOUCHERED'
    end
    object cdsMaster_saleFTOTALSTANDARDCOST: TFloatField
      FieldName = 'FTOTALSTANDARDCOST'
    end
    object cdsMaster_saleFTOTALACTUALCOST: TFloatField
      FieldName = 'FTOTALACTUALCOST'
    end
    object cdsMaster_saleFISREVERSED: TFloatField
      FieldName = 'FISREVERSED'
    end
    object cdsMaster_saleFTRANSACTIONTYPEID: TWideStringField
      FieldName = 'FTRANSACTIONTYPEID'
      Size = 44
    end
    object cdsMaster_saleFISINITBILL: TFloatField
      FieldName = 'FISINITBILL'
    end
    object cdsMaster_saleFCUSTOMERID: TWideStringField
      FieldName = 'FCUSTOMERID'
      Size = 44
    end
    object cdsMaster_saleFCURRENCYID: TWideStringField
      FieldName = 'FCURRENCYID'
      Size = 44
    end
    object cdsMaster_saleFEXCHANGERATE: TFloatField
      FieldName = 'FEXCHANGERATE'
    end
    object cdsMaster_saleFMODIFIERID: TWideStringField
      FieldName = 'FMODIFIERID'
      Size = 44
    end
    object cdsMaster_saleFMODIFICATIONTIME: TDateTimeField
      FieldName = 'FMODIFICATIONTIME'
    end
    object cdsMaster_saleFPAYMENTTYPEID: TWideStringField
      FieldName = 'FPAYMENTTYPEID'
      Size = 44
    end
    object cdsMaster_saleFCONVERTMODE: TFloatField
      FieldName = 'FCONVERTMODE'
    end
    object cdsMaster_saleFISSYSBILL: TFloatField
      FieldName = 'FISSYSBILL'
    end
    object cdsMaster_saleFTOTALLOCALAMOUNT: TFloatField
      FieldName = 'FTOTALLOCALAMOUNT'
    end
    object cdsMaster_saleFACTBIZDATE: TDateTimeField
      FieldName = 'FACTBIZDATE'
    end
    object cdsMaster_saleFISGENBIZAR: TFloatField
      FieldName = 'FISGENBIZAR'
    end
    object cdsMaster_saleFISINTAX: TFloatField
      FieldName = 'FISINTAX'
    end
    object cdsMaster_saleFMONTH: TFloatField
      FieldName = 'FMONTH'
    end
    object cdsMaster_saleFDAY: TFloatField
      FieldName = 'FDAY'
    end
    object cdsMaster_saleCFISPOS: TFloatField
      FieldName = 'CFISPOS'
    end
    object cdsMaster_saleCFPRICETYPEID: TWideStringField
      FieldName = 'CFPRICETYPEID'
      Size = 44
    end
    object cdsMaster_saleCFPOSDATE: TDateTimeField
      FieldName = 'CFPOSDATE'
    end
    object cdsMaster_saleCFTRANSORGUNITID: TWideStringField
      FieldName = 'CFTRANSORGUNITID'
      Size = 44
    end
    object cdsMaster_saleCFTRANSNUMBER: TWideStringField
      FieldName = 'CFTRANSNUMBER'
      Size = 200
    end
    object cdsMaster_saleCFISBADSHOE: TFloatField
      FieldName = 'CFISBADSHOE'
    end
    object cdsMaster_saleCFSUBBILLTYPE: TWideStringField
      FieldName = 'CFSUBBILLTYPE'
      Size = 200
    end
    object cdsMaster_saleCFSTOREID: TWideStringField
      FieldName = 'CFSTOREID'
      Size = 44
    end
    object cdsMaster_saleCFORDERTYPEID: TWideStringField
      FieldName = 'CFORDERTYPEID'
      Size = 44
    end
    object cdsMaster_saleCFSPECIAL: TWideStringField
      FieldName = 'CFSPECIAL'
      Size = 44
    end
    object cdsMaster_saleCFISOTHER: TFloatField
      FieldName = 'CFISOTHER'
    end
    object cdsMaster_saleCFINWAREHOUSEID: TWideStringField
      FieldName = 'CFINWAREHOUSEID'
      Size = 88
    end
    object cdsMaster_saleCFLOGISTICSSTATUS: TFloatField
      FieldName = 'CFLOGISTICSSTATUS'
    end
    object cdsMaster_saleCFISPACKING: TFloatField
      FieldName = 'CFISPACKING'
    end
    object cdsMaster_saleCFISPICK: TFloatField
      FieldName = 'CFISPICK'
    end
    object cdsMaster_saleCFINPUTWAY: TWideStringField
      FieldName = 'CFINPUTWAY'
      Size = 100
    end
    object cdsMaster_saleCFRECEIVESTOREUNIT: TWideStringField
      FieldName = 'CFRECEIVESTOREUNIT'
      Size = 44
    end
    object cdsMaster_saleCFPICKMANID: TWideStringField
      FieldName = 'CFPICKMANID'
      Size = 44
    end
    object cdsMaster_saleCFSCANMANID: TWideStringField
      FieldName = 'CFSCANMANID'
      Size = 44
    end
    object cdsMaster_saleCFPACKMANID: TWideStringField
      FieldName = 'CFPACKMANID'
      Size = 44
    end
    object cdsMaster_saleCFRETURNTYPEID: TWideStringField
      FieldName = 'CFRETURNTYPEID'
      Size = 44
    end
    object cdsMaster_saleCFSHIPTYPE: TWideStringField
      FieldName = 'CFSHIPTYPE'
      Size = 44
    end
    object cdsMaster_saleCFSendWareName: TStringField
      FieldKind = fkCalculated
      FieldName = 'CFSendWareName'
      Size = 60
      Calculated = True
    end
    object cdsMaster_saleCFReceivWareName: TStringField
      FieldKind = fkCalculated
      FieldName = 'CFReceivWareName'
      Size = 60
      Calculated = True
    end
    object cdsMaster_saleCFReceivOrgName: TStringField
      FieldKind = fkCalculated
      FieldName = 'CFReceivOrgName'
      Size = 60
      Calculated = True
    end
    object cdsMaster_saleCFCustName: TStringField
      FieldKind = fkCalculated
      FieldName = 'CFCustName'
      Size = 80
      Calculated = True
    end
    object cdsMaster_saleCFWAREHOUSEID: TWideStringField
      FieldName = 'CFWAREHOUSEID'
      Size = 44
    end
    object cdsMaster_saleFCreatorName: TStringField
      FieldKind = fkCalculated
      FieldName = 'FCreatorName'
      Size = 50
      Calculated = True
    end
    object cdsMaster_saleFAuditorName: TStringField
      FieldKind = fkCalculated
      FieldName = 'FAuditorName'
      Size = 50
      Calculated = True
    end
    object cdsMaster_saleCFModifierName: TStringField
      FieldKind = fkCalculated
      FieldName = 'CFModifierName'
      Size = 80
      Calculated = True
    end
    object cdsMaster_saleFBalanceCustomerID: TWideStringField
      FieldName = 'FBalanceCustomerID'
      Size = 44
    end
    object cdsMaster_saleFOrderCustomerID: TWideStringField
      FieldName = 'FOrderCustomerID'
      Size = 44
    end
    object cdsMaster_saleFPaymentCustomerID: TWideStringField
      FieldName = 'FPaymentCustomerID'
      Size = 44
    end
    object cdsMaster_saleCFBalanceCustName: TStringField
      FieldKind = fkCalculated
      FieldName = 'CFBalanceCustName'
      Size = 60
      Calculated = True
    end
    object cdsMaster_saleCFOrderCustName: TStringField
      FieldKind = fkCalculated
      FieldName = 'CFOrderCustName'
      Size = 60
      Calculated = True
    end
    object cdsMaster_saleCFPayCustName: TStringField
      FieldKind = fkCalculated
      FieldName = 'CFPayCustName'
      Size = 60
      Calculated = True
    end
  end
  object cdsMaster: TClientDataSet
    Tag = 1
    Aggregates = <>
    Params = <>
    BeforePost = cdsMasterBeforePost
    OnNewRecord = cdsMasterNewRecord
    Left = 728
    Top = 330
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
    BeforePost = cdsDetailBeforePost
    OnNewRecord = cdsDetailNewRecord
    Left = 808
    Top = 327
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
  object cdsSrcEntry: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 344
    Top = 161
  end
end
