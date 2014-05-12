unit uBillEditSaleIssue;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Frm_BillEditBase, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, ADODB, Menus, DBClient,
  ActnList, dxBar, cxClasses, ImgList, ExtCtrls, cxButtonEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxLabel, cxCalendar, cxDBEdit, cxTextEdit, cxCheckBox, dxGDIPlusClasses,
  cxContainer, cxMaskEdit, StdCtrls, Grids, DBGrids, cxGridLevel,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxPC, cxSpinEdit;

type
  TFM_BillEditSaleIssue = class(TFM_BillEditBase)
    cxLabel2: TcxLabel;
    cxcmbOrderType: TcxDBLookupComboBox;
    cxLabel3: TcxLabel;
    cxcmbpriceType: TcxDBLookupComboBox;
    cxLabel7: TcxLabel;
    cxbtnReceivWareNum: TcxButtonEdit;
    cxLabel5: TcxLabel;
    cxbtnSendWareNum: TcxButtonEdit;
    cxbtnSendWareName: TcxDBTextEdit;
    cxbtnReceivWareName: TcxDBTextEdit;
    CFReceivOrgName: TcxDBTextEdit;
    cxbtnReceivOrgNum: TcxButtonEdit;
    cxLabel6: TcxLabel;
    cxDBCheckBox1: TcxDBCheckBox;
    cxDBCheckBox2: TcxDBCheckBox;
    cxDBCheckBox3: TcxDBCheckBox;
    cxDBCheckBox4: TcxDBCheckBox;
    cxDBCheckBox5: TcxDBCheckBox;
    cdsMasterFID: TWideStringField;
    cdsMasterFCREATORID: TWideStringField;
    cdsMasterFCREATETIME: TDateTimeField;
    cdsMasterFLASTUPDATEUSERID: TWideStringField;
    cdsMasterFLASTUPDATETIME: TDateTimeField;
    cdsMasterFCONTROLUNITID: TWideStringField;
    cdsMasterFNUMBER: TWideStringField;
    cdsMasterFBIZDATE: TDateTimeField;
    cdsMasterFHANDLERID: TWideStringField;
    cdsMasterFDESCRIPTION: TWideStringField;
    cdsMasterFHASEFFECTED: TFloatField;
    cdsMasterFAUDITORID: TWideStringField;
    cdsMasterFSOURCEBILLID: TWideStringField;
    cdsMasterFSOURCEFUNCTION: TWideStringField;
    cdsMasterFAUDITTIME: TDateTimeField;
    cdsMasterFBASESTATUS: TFloatField;
    cdsMasterFBIZTYPEID: TWideStringField;
    cdsMasterFSOURCEBILLTYPEID: TWideStringField;
    cdsMasterFBILLTYPEID: TWideStringField;
    cdsMasterFYEAR: TFloatField;
    cdsMasterFPERIOD: TFloatField;
    cdsMasterFSTORAGEORGUNITID: TWideStringField;
    cdsMasterFADMINORGUNITID: TWideStringField;
    cdsMasterFSTOCKERID: TWideStringField;
    cdsMasterFVOUCHERID: TWideStringField;
    cdsMasterFTOTALQTY: TFloatField;
    cdsMasterFTOTALAMOUNT: TFloatField;
    cdsMasterFFIVOUCHERED: TFloatField;
    cdsMasterFTOTALSTANDARDCOST: TFloatField;
    cdsMasterFTOTALACTUALCOST: TFloatField;
    cdsMasterFISREVERSED: TFloatField;
    cdsMasterFTRANSACTIONTYPEID: TWideStringField;
    cdsMasterFISINITBILL: TFloatField;
    cdsMasterFCUSTOMERID: TWideStringField;
    cdsMasterFCURRENCYID: TWideStringField;
    cdsMasterFEXCHANGERATE: TFloatField;
    cdsMasterFMODIFIERID: TWideStringField;
    cdsMasterFMODIFICATIONTIME: TDateTimeField;
    cdsMasterFPAYMENTTYPEID: TWideStringField;
    cdsMasterFCONVERTMODE: TFloatField;
    cdsMasterFISSYSBILL: TFloatField;
    cdsMasterFTOTALLOCALAMOUNT: TFloatField;
    cdsMasterFACTBIZDATE: TDateTimeField;
    cdsMasterFISGENBIZAR: TFloatField;
    cdsMasterFISINTAX: TFloatField;
    cdsMasterFMONTH: TFloatField;
    cdsMasterFDAY: TFloatField;
    cdsMasterCFISPOS: TFloatField;
    cdsMasterCFPRICETYPEID: TWideStringField;
    cdsMasterCFPOSDATE: TDateTimeField;
    cdsMasterCFTRANSORGUNITID: TWideStringField;
    cdsMasterCFTRANSNUMBER: TWideStringField;
    cdsMasterCFISBADSHOE: TFloatField;
    cdsMasterCFSUBBILLTYPE: TWideStringField;
    cdsMasterCFSTOREID: TWideStringField;
    cdsMasterCFORDERTYPEID: TWideStringField;
    cdsMasterCFSPECIAL: TWideStringField;
    cdsMasterCFISOTHER: TFloatField;
    cdsMasterCFINWAREHOUSEID: TWideStringField;
    cdsMasterCFLOGISTICSSTATUS: TFloatField;
    cdsMasterCFISPACKING: TFloatField;
    cdsMasterCFISPICK: TFloatField;
    cdsMasterCFINPUTWAY: TWideStringField;
    cdsMasterCFRECEIVESTOREUNIT: TWideStringField;
    cdsMasterCFPICKMANID: TWideStringField;
    cdsMasterCFSCANMANID: TWideStringField;
    cdsMasterCFPACKMANID: TWideStringField;
    cdsMasterCFRETURNTYPEID: TWideStringField;
    cdsMasterCFSHIPTYPE: TWideStringField;
    cdsDetailFID: TWideStringField;
    cdsDetailFSEQ: TFloatField;
    cdsDetailFSOURCEBILLID: TWideStringField;
    cdsDetailFSOURCEBILLNUMBER: TWideStringField;
    cdsDetailFSOURCEBILLTYPEID: TWideStringField;
    cdsDetailFSOURCEBILLENTRYID: TWideStringField;
    cdsDetailFSOURCEBILLENTRYSEQ: TFloatField;
    cdsDetailFASSCOEFFICIENT: TFloatField;
    cdsDetailFBASESTATUS: TFloatField;
    cdsDetailFMATERIALID: TWideStringField;
    cdsDetailFUNITID: TWideStringField;
    cdsDetailFBASEUNITID: TWideStringField;
    cdsDetailFASSISTUNITID: TWideStringField;
    cdsDetailFREASONCODEID: TWideStringField;
    cdsDetailFASSOCIATEQTY: TFloatField;
    cdsDetailFSTORAGEORGUNITID: TWideStringField;
    cdsDetailFCOMPANYORGUNITID: TWideStringField;
    cdsDetailFWAREHOUSEID: TWideStringField;
    cdsDetailFLOCATIONID: TWideStringField;
    cdsDetailFSTOCKERID: TWideStringField;
    cdsDetailFLOT: TWideStringField;
    cdsDetailFQTY: TFloatField;
    cdsDetailFASSISTQTY: TFloatField;
    cdsDetailFBASEQTY: TFloatField;
    cdsDetailFREVERSEQTY: TFloatField;
    cdsDetailFRETURNSQTY: TFloatField;
    cdsDetailFPRICE: TFloatField;
    cdsDetailFAMOUNT: TFloatField;
    cdsDetailFUNITSTANDARDCOST: TFloatField;
    cdsDetailFSTANDARDCOST: TFloatField;
    cdsDetailFUNITACTUALCOST: TFloatField;
    cdsDetailFACTUALCOST: TFloatField;
    cdsDetailFISPRESENT: TFloatField;
    cdsDetailFPARENTID: TWideStringField;
    cdsDetailFSALEORDERID: TWideStringField;
    cdsDetailFSALEORDERENTRYID: TWideStringField;
    cdsDetailFWRITTENOFFQTY: TFloatField;
    cdsDetailFWRITTENOFFAMOUNT: TFloatField;
    cdsDetailFUNWRITEOFFQTY: TFloatField;
    cdsDetailFUNWRITEOFFAMOUNT: TFloatField;
    cdsDetailFORDERNUMBER: TWideStringField;
    cdsDetailFSALEORDERNUMBER: TWideStringField;
    cdsDetailFSALEORDERENTRYSEQ: TFloatField;
    cdsDetailFTAXRATE: TFloatField;
    cdsDetailFTAX: TFloatField;
    cdsDetailFLOCALTAX: TFloatField;
    cdsDetailFLOCALPRICE: TFloatField;
    cdsDetailFLOCALAMOUNT: TFloatField;
    cdsDetailFNONTAXAMOUNT: TFloatField;
    cdsDetailFLOCALNONTAXAMOUNT: TFloatField;
    cdsDetailFDREWQTY: TFloatField;
    cdsDetailFASSISTPROPERTYID: TWideStringField;
    cdsDetailFMFG: TDateTimeField;
    cdsDetailFEXP: TDateTimeField;
    cdsDetailFREMARK: TWideStringField;
    cdsDetailFREVERSEBASEQTY: TFloatField;
    cdsDetailFRETURNBASEQTY: TFloatField;
    cdsDetailFWRITTENOFFBASEQTY: TFloatField;
    cdsDetailFUNWRITEOFFBASEQTY: TFloatField;
    cdsDetailFDREWBASEQTY: TFloatField;
    cdsDetailFCOREBILLTYPEID: TWideStringField;
    cdsDetailFUNRETURNEDBASEQTY: TFloatField;
    cdsDetailFISLOCKED: TFloatField;
    cdsDetailFINVENTORYID: TWideStringField;
    cdsDetailFORDERPRICE: TFloatField;
    cdsDetailFTAXPRICE: TFloatField;
    cdsDetailFACTUALPRICE: TFloatField;
    cdsDetailFSALEORGUNITID: TWideStringField;
    cdsDetailFSALEGROUPID: TWideStringField;
    cdsDetailFSALEPERSONID: TWideStringField;
    cdsDetailFBASEUNITACTUALCOST: TFloatField;
    cdsDetailFUNDELIVERQTY: TFloatField;
    cdsDetailFUNDELIVERBASEQTY: TFloatField;
    cdsDetailFUNINQTY: TFloatField;
    cdsDetailFUNINBASEQTY: TFloatField;
    cdsDetailFBALANCECUSTOMERID: TWideStringField;
    cdsDetailFISCENTERBALANCE: TFloatField;
    cdsDetailFISBETWEENCOMPANYSEND: TFloatField;
    cdsDetailFTOTALINWAREHSQTY: TFloatField;
    cdsDetailFPAYMENTCUSTOMERID: TWideStringField;
    cdsDetailFORDERCUSTOMERID: TWideStringField;
    cdsDetailFCONFIRMQTY: TFloatField;
    cdsDetailFCONFIRMBASEQTY: TFloatField;
    cdsDetailFASSOCIATEBASEQTY: TFloatField;
    cdsDetailFCONFIRMDATE: TDateTimeField;
    cdsDetailFSENDADDRESS: TWideStringField;
    cdsDetailFNETORDERBILLNUMBER: TWideStringField;
    cdsDetailFNETORDERBILLID: TWideStringField;
    cdsDetailFNETORDERBILLENTRYID: TWideStringField;
    cdsDetailFISSQUAREBALANCE: TFloatField;
    cdsDetailFPROJECTID: TWideStringField;
    cdsDetailFTRACKNUMBERID: TWideStringField;
    cdsDetailFCONTRACTNUMBER: TWideStringField;
    cdsDetailFSUPPLIERID: TWideStringField;
    cdsDetailFSALEPRICE: TFloatField;
    cdsDetailFDISCOUNTTYPE: TFloatField;
    cdsDetailFDISCOUNTAMOUNT: TFloatField;
    cdsDetailFDISCOUNT: TFloatField;
    cdsDetailFISFULLWRITEOFF: TFloatField;
    cdsDetailCFSETTLEBACKTYPEID: TWideStringField;
    cdsDetailCFSETTLEDATE: TDateTimeField;
    cdsDetailCFMUTILSOURCEBILL: TWideStringField;
    cdsDetailCFPACKID: TWideStringField;
    cdsDetailCFCOLORID: TWideStringField;
    cdsDetailCFPACKNUM: TFloatField;
    cdsDetailCFSIZESID: TWideStringField;
    cdsDetailCFCUPID: TWideStringField;
    cdsDetailCFSIZEGROUPID: TWideStringField;
    cdsDetailCFPOSDATE: TDateTimeField;
    cdsDetailCFCHECKINPUTQTY: TFloatField;
    cdsDetailCFCHECKDIFFQTY: TFloatField;
    cdsDetailFACTUALTAXPRICE: TFloatField;
    cdsDetailCFISOTHERREC: TFloatField;
    cdsMasterCFSendWareName: TStringField;
    cdsMasterCFReceivWareName: TStringField;
    cdsMasterCFReceivOrgName: TStringField;
    cdsMasterCFCustName: TStringField;
    cdsDetailAmountCFSIZEGROUPID: TWideStringField;
    cdsDetailAmountFBASEUNITID: TWideStringField;
    cdsDetailAmountcfMaterialNumber: TStringField;
    cdsDetailAmountcfMaterialName: TStringField;
    cdsDetailAmountCFColorCode: TStringField;
    cdsDetailAmountCFColorName: TStringField;
    cdsDetailAmountCFCupName: TStringField;
    cdsDetailAmountCFPackName: TStringField;
    cdsDetailAmountCFPACKNUM: TFloatField;
    cdsDetailAmountFMATERIALID: TWideStringField;
    cdsDetailAmountCFCOLORID: TWideStringField;
    cdsDetailAmountCFCUPID: TWideStringField;
    cdsDetailAmountCFDPPRICE: TFloatField;
    cdsDetailAmountCFPACKID: TStringField;
    cdsDetailAmountfAmount_1: TFloatField;
    cdsDetailAmountfAmount_2: TFloatField;
    cdsDetailAmountfAmount_3: TFloatField;
    cdsDetailAmountfAmount_4: TFloatField;
    cdsDetailAmountfAmount_5: TFloatField;
    cdsDetailAmountfAmount_6: TFloatField;
    cdsDetailAmountfAmount_7: TFloatField;
    cdsDetailAmountfAmount_8: TFloatField;
    cdsDetailAmountfAmount_9: TFloatField;
    cdsDetailAmountfAmount_10: TFloatField;
    cdsDetailAmountfAmount_11: TFloatField;
    cdsDetailAmountfAmount_12: TFloatField;
    cdsDetailAmountfAmount_13: TFloatField;
    cdsDetailAmountfAmount_14: TFloatField;
    cdsDetailAmountfAmount_15: TFloatField;
    cdsDetailAmountfAmount_16: TFloatField;
    cdsDetailAmountfAmount_17: TFloatField;
    cdsDetailAmountfAmount_18: TFloatField;
    cdsDetailAmountfAmount_19: TFloatField;
    cdsDetailAmountfAmount_20: TFloatField;
    cdsDetailAmountfAmount_21: TFloatField;
    cdsDetailAmountfAmount_22: TFloatField;
    cdsDetailAmountfAmount_23: TFloatField;
    cdsDetailAmountfAmount_24: TFloatField;
    cdsDetailAmountfAmount_25: TFloatField;
    cdsDetailAmountfAmount_26: TFloatField;
    cdsDetailAmountfAmount_27: TFloatField;
    cdsDetailAmountfAmount_28: TFloatField;
    cdsDetailAmountfAmount_29: TFloatField;
    cdsDetailAmountfAmount_30: TFloatField;
    cdsDetailAmountFPRICE: TFloatField;
    cdsDetailAmountFACTUALPRICE: TFloatField;
    cdsDetailAmountFDISCOUNTRATE: TFloatField;
    cdsDetailAmountCFBrandName: TWideStringField;
    cdsDetailAmountcfattributeName: TWideStringField;
    cdsDetailAmountCfbrandid: TWideStringField;
    cdsDetailAmountcfattributeid: TWideStringField;
    cdsDetailAmountFPURORDERNUMBER: TWideStringField;
    cdsDetailAmountFSOURCEBILLNUMBER: TWideStringField;
    cdsDetailAmountCFNUitName: TWideStringField;
    cdsDetailAmountFTotalQty: TFloatField;
    cdsDetailAmountFAmount: TFloatField;
    cdsDetailAmountfremark: TWideStringField;
    cdsDetailAmountFISPRESENT: TFloatField;
    cdsDetailAmountFActualTaxPrice: TFloatField;
    cdsDetailCFDPPRICE: TFloatField;
    cdsDetailAmountFTax: TFloatField;
    dbgList2cfMaterialNumber: TcxGridDBColumn;
    dbgList2cfMaterialName: TcxGridDBColumn;
    dbgList2CFColorCode: TcxGridDBColumn;
    dbgList2CFColorName: TcxGridDBColumn;
    dbgList2CFCupName: TcxGridDBColumn;
    dbgList2CFPackName: TcxGridDBColumn;
    dbgList2CFPACKNUM: TcxGridDBColumn;
    dbgList2CFDPPRICE: TcxGridDBColumn;
    dbgList2fAmount_1: TcxGridDBColumn;
    dbgList2fAmount_2: TcxGridDBColumn;
    dbgList2fAmount_3: TcxGridDBColumn;
    dbgList2fAmount_4: TcxGridDBColumn;
    dbgList2fAmount_5: TcxGridDBColumn;
    dbgList2fAmount_6: TcxGridDBColumn;
    dbgList2fAmount_7: TcxGridDBColumn;
    dbgList2fAmount_8: TcxGridDBColumn;
    dbgList2fAmount_9: TcxGridDBColumn;
    dbgList2fAmount_10: TcxGridDBColumn;
    dbgList2fAmount_11: TcxGridDBColumn;
    dbgList2fAmount_12: TcxGridDBColumn;
    dbgList2fAmount_13: TcxGridDBColumn;
    dbgList2fAmount_14: TcxGridDBColumn;
    dbgList2fAmount_15: TcxGridDBColumn;
    dbgList2fAmount_16: TcxGridDBColumn;
    dbgList2fAmount_17: TcxGridDBColumn;
    dbgList2fAmount_18: TcxGridDBColumn;
    dbgList2fAmount_19: TcxGridDBColumn;
    dbgList2fAmount_20: TcxGridDBColumn;
    dbgList2fAmount_21: TcxGridDBColumn;
    dbgList2fAmount_22: TcxGridDBColumn;
    dbgList2fAmount_23: TcxGridDBColumn;
    dbgList2fAmount_24: TcxGridDBColumn;
    dbgList2fAmount_25: TcxGridDBColumn;
    dbgList2fAmount_26: TcxGridDBColumn;
    dbgList2fAmount_27: TcxGridDBColumn;
    dbgList2fAmount_28: TcxGridDBColumn;
    dbgList2fAmount_29: TcxGridDBColumn;
    dbgList2fAmount_30: TcxGridDBColumn;
    dbgList2FPRICE: TcxGridDBColumn;
    dbgList2FACTUALPRICE: TcxGridDBColumn;
    dbgList2FDISCOUNTRATE: TcxGridDBColumn;
    dbgList2CFBrandName: TcxGridDBColumn;
    dbgList2cfattributeName: TcxGridDBColumn;
    dbgList2CFNUitName: TcxGridDBColumn;
    dbgList2FTotalQty: TcxGridDBColumn;
    dbgList2FAmount: TcxGridDBColumn;
    dbgList2fremark: TcxGridDBColumn;
    dbgList2FISPRESENT: TcxGridDBColumn;
    dbgList2FActualTaxPrice: TcxGridDBColumn;
    dbgList2FTax: TcxGridDBColumn;
    cdsDetailAmountFTaxRate: TFloatField;
    dbgList2FTaxRate: TcxGridDBColumn;
    cdsDetailAmountFLOCATIONID: TWideStringField;
    cdsDetailAmountCFLocationName: TWideStringField;
    dbgList2CFLocationName: TcxGridDBColumn;
    cdsCustomer: TClientDataSet;
    cdswarehouse: TClientDataSet;
    cxLabel4: TcxLabel;
    cxbtnSO: TcxButtonEdit;
    cxcmbSendType: TcxDBLookupComboBox;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    cxbtnAM: TcxButtonEdit;
    cdsBranch: TClientDataSet;
    dsPriceType: TDataSource;
    dsOrderType: TDataSource;
    dsShipType: TDataSource;
    cdsMasterCFWAREHOUSEID: TWideStringField;
    cdsMasterCFModifierName: TStringField;
    cdsMasterFCreatorName: TStringField;
    cdsMasterFAuditorName: TStringField;
    cdsDetailTracyFID: TWideStringField;
    cdsDetailTracyFSEQ: TFloatField;
    cdsDetailTracyFSOURCEBILLID: TWideStringField;
    cdsDetailTracyFSOURCEBILLNUMBER: TWideStringField;
    cdsDetailTracyFSOURCEBILLTYPEID: TWideStringField;
    cdsDetailTracyFSOURCEBILLENTRYID: TWideStringField;
    cdsDetailTracyFSOURCEBILLENTRYSEQ: TFloatField;
    cdsDetailTracyFASSCOEFFICIENT: TFloatField;
    cdsDetailTracyFBASESTATUS: TFloatField;
    cdsDetailTracyFMATERIALID: TWideStringField;
    cdsDetailTracyFUNITID: TWideStringField;
    cdsDetailTracyFBASEUNITID: TWideStringField;
    cdsDetailTracyFASSISTUNITID: TWideStringField;
    cdsDetailTracyFREASONCODEID: TWideStringField;
    cdsDetailTracyFASSOCIATEQTY: TFloatField;
    cdsDetailTracyFSTORAGEORGUNITID: TWideStringField;
    cdsDetailTracyFCOMPANYORGUNITID: TWideStringField;
    cdsDetailTracyFWAREHOUSEID: TWideStringField;
    cdsDetailTracyFLOCATIONID: TWideStringField;
    cdsDetailTracyFSTOCKERID: TWideStringField;
    cdsDetailTracyFLOT: TWideStringField;
    cdsDetailTracyFQTY: TFloatField;
    cdsDetailTracyFASSISTQTY: TFloatField;
    cdsDetailTracyFBASEQTY: TFloatField;
    cdsDetailTracyFREVERSEQTY: TFloatField;
    cdsDetailTracyFRETURNSQTY: TFloatField;
    cdsDetailTracyFPRICE: TFloatField;
    cdsDetailTracyFAMOUNT: TFloatField;
    cdsDetailTracyFUNITSTANDARDCOST: TFloatField;
    cdsDetailTracyFSTANDARDCOST: TFloatField;
    cdsDetailTracyFUNITACTUALCOST: TFloatField;
    cdsDetailTracyFACTUALCOST: TFloatField;
    cdsDetailTracyFISPRESENT: TFloatField;
    cdsDetailTracyFPARENTID: TWideStringField;
    cdsDetailTracyFSALEORDERID: TWideStringField;
    cdsDetailTracyFSALEORDERENTRYID: TWideStringField;
    cdsDetailTracyFWRITTENOFFQTY: TFloatField;
    cdsDetailTracyFWRITTENOFFAMOUNT: TFloatField;
    cdsDetailTracyFUNWRITEOFFQTY: TFloatField;
    cdsDetailTracyFUNWRITEOFFAMOUNT: TFloatField;
    cdsDetailTracyFORDERNUMBER: TWideStringField;
    cdsDetailTracyFSALEORDERNUMBER: TWideStringField;
    cdsDetailTracyFSALEORDERENTRYSEQ: TFloatField;
    cdsDetailTracyFTAXRATE: TFloatField;
    cdsDetailTracyFTAX: TFloatField;
    cdsDetailTracyFLOCALTAX: TFloatField;
    cdsDetailTracyFLOCALPRICE: TFloatField;
    cdsDetailTracyFLOCALAMOUNT: TFloatField;
    cdsDetailTracyFNONTAXAMOUNT: TFloatField;
    cdsDetailTracyFLOCALNONTAXAMOUNT: TFloatField;
    cdsDetailTracyFDREWQTY: TFloatField;
    cdsDetailTracyFASSISTPROPERTYID: TWideStringField;
    cdsDetailTracyFMFG: TDateTimeField;
    cdsDetailTracyFEXP: TDateTimeField;
    cdsDetailTracyFREMARK: TWideStringField;
    cdsDetailTracyFREVERSEBASEQTY: TFloatField;
    cdsDetailTracyFRETURNBASEQTY: TFloatField;
    cdsDetailTracyFWRITTENOFFBASEQTY: TFloatField;
    cdsDetailTracyFUNWRITEOFFBASEQTY: TFloatField;
    cdsDetailTracyFDREWBASEQTY: TFloatField;
    cdsDetailTracyFCOREBILLTYPEID: TWideStringField;
    cdsDetailTracyFUNRETURNEDBASEQTY: TFloatField;
    cdsDetailTracyFISLOCKED: TFloatField;
    cdsDetailTracyFINVENTORYID: TWideStringField;
    cdsDetailTracyFORDERPRICE: TFloatField;
    cdsDetailTracyFTAXPRICE: TFloatField;
    cdsDetailTracyFACTUALPRICE: TFloatField;
    cdsDetailTracyFSALEORGUNITID: TWideStringField;
    cdsDetailTracyFSALEGROUPID: TWideStringField;
    cdsDetailTracyFSALEPERSONID: TWideStringField;
    cdsDetailTracyFBASEUNITACTUALCOST: TFloatField;
    cdsDetailTracyFUNDELIVERQTY: TFloatField;
    cdsDetailTracyFUNDELIVERBASEQTY: TFloatField;
    cdsDetailTracyFUNINQTY: TFloatField;
    cdsDetailTracyFUNINBASEQTY: TFloatField;
    cdsDetailTracyFBALANCECUSTOMERID: TWideStringField;
    cdsDetailTracyFISCENTERBALANCE: TFloatField;
    cdsDetailTracyFISBETWEENCOMPANYSEND: TFloatField;
    cdsDetailTracyFTOTALINWAREHSQTY: TFloatField;
    cdsDetailTracyFPAYMENTCUSTOMERID: TWideStringField;
    cdsDetailTracyFORDERCUSTOMERID: TWideStringField;
    cdsDetailTracyFCONFIRMQTY: TFloatField;
    cdsDetailTracyFCONFIRMBASEQTY: TFloatField;
    cdsDetailTracyFASSOCIATEBASEQTY: TFloatField;
    cdsDetailTracyFCONFIRMDATE: TDateTimeField;
    cdsDetailTracyFSENDADDRESS: TWideStringField;
    cdsDetailTracyFNETORDERBILLNUMBER: TWideStringField;
    cdsDetailTracyFNETORDERBILLID: TWideStringField;
    cdsDetailTracyFNETORDERBILLENTRYID: TWideStringField;
    cdsDetailTracyFISSQUAREBALANCE: TFloatField;
    cdsDetailTracyFPROJECTID: TWideStringField;
    cdsDetailTracyFTRACKNUMBERID: TWideStringField;
    cdsDetailTracyFCONTRACTNUMBER: TWideStringField;
    cdsDetailTracyFSUPPLIERID: TWideStringField;
    cdsDetailTracyFSALEPRICE: TFloatField;
    cdsDetailTracyFDISCOUNTTYPE: TFloatField;
    cdsDetailTracyFDISCOUNTAMOUNT: TFloatField;
    cdsDetailTracyFDISCOUNT: TFloatField;
    cdsDetailTracyFISFULLWRITEOFF: TFloatField;
    cdsDetailTracyCFSETTLEBACKTYPEID: TWideStringField;
    cdsDetailTracyCFSETTLEDATE: TDateTimeField;
    cdsDetailTracyCFMUTILSOURCEBILL: TWideStringField;
    cdsDetailTracyCFPACKID: TWideStringField;
    cdsDetailTracyCFCOLORID: TWideStringField;
    cdsDetailTracyCFPACKNUM: TFloatField;
    cdsDetailTracyCFSIZESID: TWideStringField;
    cdsDetailTracyCFCUPID: TWideStringField;
    cdsDetailTracyCFSIZEGROUPID: TWideStringField;
    cdsDetailTracyCFPOSDATE: TDateTimeField;
    cdsDetailTracyCFCHECKINPUTQTY: TFloatField;
    cdsDetailTracyCFCHECKDIFFQTY: TFloatField;
    cdsDetailTracyFACTUALTAXPRICE: TFloatField;
    cdsDetailTracyCFISOTHERREC: TFloatField;
    cdsDetailTracyCFDPPRICE: TFloatField;
    cdsDetailTracycfMaterialNumber: TStringField;
    cdsDetailTracycfMaterialName: TStringField;
    cdsDetailTracyCFColorCode: TStringField;
    cdsDetailTracyCFColorName: TStringField;
    cdsDetailTracyCFSizeCode: TWideStringField;
    cdsDetailTracyCFSizeName: TWideStringField;
    cdsDetailTracyCFCupName: TStringField;
    cdsDetailTracyCFPackName: TStringField;
    cdsDetailTracyCFBrandName: TWideStringField;
    cdsDetailTracycfattributeName: TWideStringField;
    cdsDetailTracyCfbrandid: TWideStringField;
    cdsDetailTracycfattributeid: TWideStringField;
    cdsDetailTracyCFNUitName: TWideStringField;
    cxgridDetialFSEQ: TcxGridDBColumn;
    cxgridDetialFQTY: TcxGridDBColumn;
    cxgridDetialFPRICE: TcxGridDBColumn;
    cxgridDetialFISPRESENT: TcxGridDBColumn;
    cxgridDetialFNONTAXAMOUNT: TcxGridDBColumn;
    cxgridDetialFREMARK: TcxGridDBColumn;
    cxgridDetialFACTUALPRICE: TcxGridDBColumn;
    cxgridDetialFDISCOUNT: TcxGridDBColumn;
    cxgridDetialCFPACKNUM: TcxGridDBColumn;
    cxgridDetialCFCHECKINPUTQTY: TcxGridDBColumn;
    cxgridDetialCFCHECKDIFFQTY: TcxGridDBColumn;
    cxgridDetialFACTUALTAXPRICE: TcxGridDBColumn;
    cxgridDetialCFDPPRICE: TcxGridDBColumn;
    cxgridDetialcfMaterialNumber: TcxGridDBColumn;
    cxgridDetialcfMaterialName: TcxGridDBColumn;
    cxgridDetialCFColorCode: TcxGridDBColumn;
    cxgridDetialCFColorName: TcxGridDBColumn;
    cxgridDetialCFSizeCode: TcxGridDBColumn;
    cxgridDetialCFSizeName: TcxGridDBColumn;
    cxgridDetialCFCupName: TcxGridDBColumn;
    cxgridDetialCFPackName: TcxGridDBColumn;
    cxgridDetialCFBrandName: TcxGridDBColumn;
    cxgridDetialcfattributeName: TcxGridDBColumn;
    cxgridDetialCFNUitName: TcxGridDBColumn;
    cxgridDetialFBASESTATUS: TcxGridDBColumn;
    cdsMasterFBalanceCustomerID: TWideStringField;
    cdsMasterFOrderCustomerID: TWideStringField;
    cdsMasterFPaymentCustomerID: TWideStringField;
    cdsMasterCFBalanceCustName: TStringField;
    cdsMasterCFOrderCustName: TStringField;
    cdsMasterCFPayCustName: TStringField;
    cxTabOther: TcxTabSheet;
    Panel5: TPanel;
    cxLabel12: TcxLabel;
    cxbtnBalanceCust: TcxButtonEdit;
    cxedtBalanceCust: TcxDBTextEdit;
    cxLabel13: TcxLabel;
    cxbtnPayCust: TcxButtonEdit;
    cxedtPayCust: TcxDBTextEdit;
    cxLabel14: TcxLabel;
    cxbtnOrderCust: TcxButtonEdit;
    cxedtOrderCust: TcxDBTextEdit;
    cdsInWarehouse: TClientDataSet;
    cdsDetailCfassistnum: TWideStringField;
    cxgridDetialFTaxRate: TcxGridDBColumn;
    cdsDetailAmountFtaxAmount: TFloatField;
    dbgList2FtaxAmount: TcxGridDBColumn;
    dxBarEncasement: TdxBarButton;
    dxBarDeleteEncasement: TdxBarButton;
    cdsDetailAmountFSaleOrderNumber: TWideStringField;
    cdstracyFID: TWideStringField;
    cdstracyFSEQ: TFloatField;
    cdstracyFBASESTATUS: TFloatField;
    cdstracyFMATERIALID: TWideStringField;
    cdstracyFBASEUNITID: TWideStringField;
    cdstracyFQTY: TFloatField;
    cdstracyFPRICE: TFloatField;
    cdstracyFAMOUNT: TFloatField;
    cdstracyFISPRESENT: TFloatField;
    cdstracyFPARENTID: TWideStringField;
    cdstracyFTAXRATE: TFloatField;
    cdstracyFTAX: TFloatField;
    cdstracyFNONTAXAMOUNT: TFloatField;
    cdstracyFREMARK: TWideStringField;
    cdstracyFTAXPRICE: TFloatField;
    cdstracyFACTUALPRICE: TFloatField;
    cdstracyFDISCOUNT: TFloatField;
    cdstracyCFPACKID: TWideStringField;
    cdstracyCFCOLORID: TWideStringField;
    cdstracyCFPACKNUM: TFloatField;
    cdstracyCFSIZESID: TWideStringField;
    cdstracyCFCUPID: TWideStringField;
    cdstracyCFSIZEGROUPID: TWideStringField;
    cdstracyCFCHECKINPUTQTY: TFloatField;
    cdstracyCFCHECKDIFFQTY: TFloatField;
    cdstracyFACTUALTAXPRICE: TFloatField;
    cdstracyCFDPPRICE: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure cxbtnNUmberPropertiesChange(Sender: TObject);
    procedure btnEnter(Sender: TObject);
    procedure btnExit(Sender: TObject);
    procedure btnKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxbtnSendWareNumPropertiesChange(Sender: TObject);
    procedure cxbtnReceivWareNumPropertiesChange(Sender: TObject);
    procedure cxbtnReceivOrgNumPropertiesChange(Sender: TObject);
    procedure cdsDetailNewRecord(DataSet: TDataSet);
    procedure cxdblookupInputwayPropertiesCloseUp(Sender: TObject);
    procedure cdsMasterCalcFields(DataSet: TDataSet);
    procedure dbgList2Editing(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure cdsDetailAmountFTaxRateChange(Sender: TField);
    procedure FormShow(Sender: TObject);
    procedure dbgList2CFLocationNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cdsDetailAmountBeforePost(DataSet: TDataSet);
    procedure dbgList2FISPRESENTPropertiesChange(Sender: TObject);
    procedure girdListKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure girdListDblClick(Sender: TObject);
    procedure cxPageDetailChange(Sender: TObject);
    procedure cdsDetailAmountFActualTaxPriceChange(Sender: TField);
    procedure cdsDetailAmountFACTUALPRICEChange(Sender: TField);
    procedure cxbtnNUmberPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxbtnSendWareNumPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxbtnReceivWareNumPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxbtnReceivOrgNumPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cdsDetailFQTYChange(Sender: TField);
    procedure cdsDetailBeforePost(DataSet: TDataSet);
    procedure cxbtnBalanceCustPropertiesChange(Sender: TObject);
    procedure cxbtnOrderCustPropertiesChange(Sender: TObject);
    procedure cxbtnPayCustPropertiesChange(Sender: TObject);
    procedure cdsMasterFCUSTOMERIDChange(Sender: TField);
    procedure cxbtnBalanceCustPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxbtnOrderCustPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxbtnPayCustPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cdsCustomerFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure cdsMasterCFRECEIVESTOREUNITChange(Sender: TField);
    procedure cdsInWarehouseFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure dbgList2cfMaterialNumberPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure dbgList2CFColorCodePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure dbgList2CFCupNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure dbgList2CFPackNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cdsDetailAmountFMATERIALIDChange(Sender: TField);
    procedure cdsDetailAmountFDISCOUNTRATEChange(Sender: TField);
    procedure cdsDetailAmountCalcFields(DataSet: TDataSet);
    procedure cdsDetailAmountCFPACKIDChange(Sender: TField);
    procedure cdsDetailAmountCFPACKNUMChange(Sender: TField);
    procedure dxBarEncasementClick(Sender: TObject);
    procedure dxBarDeleteEncasementClick(Sender: TObject);
    procedure cdsMasterCFINWAREHOUSEIDChange(Sender: TField);
    procedure cdsMasterCFWAREHOUSEIDChange(Sender: TField);
    procedure cxbtnNUmberKeyPress(Sender: TObject; var Key: Char);
    procedure cxbtnSendWareNumKeyPress(Sender: TObject; var Key: Char);
    procedure cxbtnReceivWareNumKeyPress(Sender: TObject; var Key: Char);
    procedure cxbtnReceivOrgNumKeyPress(Sender: TObject; var Key: Char);
    procedure cxbtnBalanceCustKeyPress(Sender: TObject; var Key: Char);
    procedure cxbtnOrderCustKeyPress(Sender: TObject; var Key: Char);
    procedure cxbtnPayCustKeyPress(Sender: TObject; var Key: Char);
    procedure actPullExecute(Sender: TObject);
    procedure cdsDetailAmountAfterScroll(DataSet: TDataSet);
    procedure cdsDetailAmountAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
    procedure calAmt(DataSet: TDataSet);override;//计算金额
  public
    { Public declarations }
    procedure Open_Bill(KeyFields: String; KeyValues: String); override;
        //保存单据
    function ST_Save : Boolean; override;
    procedure OPenFindWare(StorageOrgID : string);
    procedure AddDetailRecord;override;
  end;

var
  FM_BillEditSaleIssue: TFM_BillEditSaleIssue;

implementation
 uses FrmCliDM,Pub_Fun,uDrpHelperClase,uMaterDataSelectHelper,uPackingListFrm,
  uPostReqToIsSueFrm;
{$R *.dfm}
procedure TFM_BillEditSaleIssue.Open_Bill(KeyFields: String; KeyValues: String);
var OpenTables: array[0..1] of string;
    _cds: array[0..1] of TClientDataSet;
    ErrMsg : string;
    strsql : string;
begin
  if Trim(KeyValues)='' then
    strsql := ' select * from t_Im_Saleissuebill where 1<>1 '
  else
    strsql := ' select * from t_Im_Saleissuebill where FID='+quotedstr(KeyValues);
  OpenTables[0] := strsql;
  if Trim(KeyValues)='' then
    strsql := ' select * from t_Im_Saleissueentry where 1<>1 '
  else
    strsql := ' select * from t_Im_Saleissueentry where FparentID='+quotedstr(KeyValues);
  OpenTables[1] := strsql;
  _cds[0] := cdsMaster;
  _cds[1] := cdsDetail;
  try
    if not CliDM.Get_OpenClients_E(KeyValues,_cds,OpenTables,ErrMsg) then
    begin
      ShowError(Handle, ErrMsg,[]);
      Abort;
    end;
  except
    on E : Exception do
    begin
       ShowError(Handle, Self.Bill_Sign+'打开编辑数据报错：'+E.Message,[]);
       Abort;
    end;
  end;
  //新单初始化赋值
  if KeyValues='' then
  begin
    try
      with cdsMaster do
      begin
        Append;
        FieldByName('FID').AsString := CliDM.GetEASSID('BBC07FBE');
        FieldByName('FCREATETIME').AsDateTime := CliDM.Get_ServerTime;
        FieldByName('FNUMBER').AsString := CliDM.GetSCMBillNum(sBillTypeID,UserInfo.Branch_Flag,sBillFlag,true,ErrMsg);
        FieldByName('FBIZDATE').AsDateTime := CliDM.Get_ServerTime;
        FieldByName('FCREATORID').AsString := UserInfo.LoginUser_FID;
        FieldByName('FBASESTATUS').AsInteger := 1;  //保存状态
        FieldByName('FLASTUPDATEUSERID').AsString := UserInfo.LoginUser_FID;
        FieldByName('FLASTUPDATETIME').AsDateTime := CliDM.Get_ServerTime;
        FieldByName('FMODIFIERID').AsString := UserInfo.LoginUser_FID;
        FieldByName('FMODIFICATIONTIME').AsDateTime := CliDM.Get_ServerTime;
        FieldByName('FCONTROLUNITID').AsString := UserInfo.FCONTROLUNITID;    //控制单元，从服务器获取
        FieldByName('FBILLTYPEID').AsString := sBillTypeID; ///单据类型
        FieldByName('FBIZTYPEID').AsString := '00000000-0000-0000-0000-00000000000013B7DE7F';   //业务类型：210 普通销售
        FieldByName('FStorageOrgUnitID').AsString := UserInfo.Branch_ID;   //库存组织
        FieldByName('FPaymentTypeID').AsString := BillConst.FPaymentType; //付款方式
        FieldByName('FCurrencyID').AsString := BillConst.FCurrency;   //币别
        if ParamInfo.DRP001='T' then
          FieldByName('FTRANSACTIONTYPEID').AsString := 'DawAAAAPoAywCNyn' ;  //普通销售出库
        if ParamInfo.DRP002='T' then
          FieldByName('FTRANSACTIONTYPEID').AsString := '39065dfb-4e15-4d7a-8a0c-b042e4f1eb3fB008DCA7' ;  //普通销售发货到出库
        FieldByName('FExchangeRate').AsFloat := 1;
        FieldByName('CFINPUTWAY').AsString :=  'NOTPACK';
        FieldByName('FISINTAX').AsFloat := 0;
        FieldByName('FIsInitBill').AsFloat := 0;
        FieldByName('CFIsOther').AsFloat :=0;
        FieldByName('CFIsPacking').AsFloat := 0;
        FieldByName('CFIsPos').AsFloat := 0;
        FieldByName('FIsSysBill').AsFloat :=0;
        FieldByName('FIsReversed').AsFloat := 0;
        FieldByName('CFSubBillType').AsString := 'CS';     //销售出库
      end;
    except
      on E : Exception do
      begin
        ShowError(Handle,ErrMsg+E.Message,[]);
      end;
    end;
  end
  else
  begin
   // OPenFindWare(cdsMaster.fieldbyname('CFRECEIVESTOREUNIT').AsString);
  end;

  FInWarehouseFID := cdsMaster.fieldbyname('CFINWAREHOUSEID').AsString;
  FOutWarehouseFID := cdsMaster.fieldbyname('CFWAREHOUSEID').AsString;
  inherited;
end;
function TFM_BillEditSaleIssue.ST_Save : Boolean;
var ErrMsg : string;
   _cds: array[0..1] of TClientDataSet;
   AmountSum : Integer;
begin
  Result := True;
  if cdsDetailAmount.State in DB.dsEditModes then
   cdsDetailAmount.Post;
  AmountSum := 0;  
  try
    cdsDetailAmount.DisableControls;
    cdsDetailAmount.First;
    while not cdsDetailAmount.Eof do
    begin
      AmountSum := AmountSum + cdsDetailAmount.fieldByName('fTotaLQty').AsInteger;
      cdsDetailAmount.Next();
    end;
    if AmountSum =0 then
    begin
      ShowError(Handle, '单据分录数量为0,不允许保存!',[]);
      abort;
    end;
  finally
    cdsDetailAmount.EnableControls;
  end;
    //横排转竖排
 { try
   AmountToDetail_DataSet(CliDM.conClient,cdsDetailAmount,cdsDetail);
  except
    on e : Exception do
    begin
      ShowError(Handle, '【'+BillNumber+'】保存时横排转竖排出错：'+e.Message,[]);
      Result := False;
      abort;
    end;
  end;  }

  if cdsMaster.State in db.dsEditModes then
     cdsMaster.Post;
  if cdsDetail.State in db.dsEditModes then
     cdsDetail.Post;

  //定义提交的数据集数据
  _cds[0] := cdsMaster;
  _cds[1] := cdsDetail;

  //提交数据
  try
    if CliDM.Apply_Delta_Ex(_cds,['t_Im_Saleissuebill','t_Im_Saleissueentry'],ErrMsg) then
    begin
      Gio.AddShow(Self.Caption+'【'+BillNumber+'】提交成功！');
    end
    else
    begin
      ShowMsg(Handle, Self.Caption+'提交失败'+ErrMsg,[]);
      Gio.AddShow(ErrMsg);
      Result := False;
    end;
  except
    on E: Exception do
    begin
      ShowMsg(Handle, Self.Caption+'提交失败：'+e.Message,[]);
      Result := False;
      Abort;
    end;
  end;

end;
procedure TFM_BillEditSaleIssue.FormCreate(Sender: TObject);
begin
  sBillTypeID := BillConst.BILLTYPE_CS;  //单据类型FID
  inherited;
  sKeyFields := 'FmaterialID;CFColorID;CFCupID;CFpackID;Fsourcebillnumber;FLOCATIONID';
  Self.Bill_Sign := 't_Im_Saleissuebill';
  Self.BillEntryTable := 't_Im_Saleissueentry';

  cdsCustomer.Data := CliDM.cdsCust.Data; //客户
  cdswarehouse.Data := CliDM.cdsWarehouse.Data;//仓库
  cdsBranch.Data := CliDM.cdsUserBranch.Data;
    //不允许重复的主键
  setkeyFieldList('cfMaterialNumber;CFColorCode;CFPackName;CFCupName;CFLocationName');
end;

procedure TFM_BillEditSaleIssue.cxbtnNUmberPropertiesChange(
  Sender: TObject);
begin
  inherited;
  girdList.hint :='FCUSTOMERID';
  HeadAutoSelIDchange(cdsCustomer,'');
end;

procedure TFM_BillEditSaleIssue.btnEnter(Sender: TObject);
begin
  inherited;
   ////
end;

procedure TFM_BillEditSaleIssue.btnExit(Sender: TObject);
begin
  inherited;
   ///
end;

procedure TFM_BillEditSaleIssue.btnKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;

  ///
end;

procedure TFM_BillEditSaleIssue.cxbtnSendWareNumPropertiesChange(
  Sender: TObject);
begin
  inherited;
  girdList.hint :='CFWAREHOUSEID';
  HeadAutoSelIDchange(cdswarehouse,'');
end;

procedure TFM_BillEditSaleIssue.cxbtnReceivWareNumPropertiesChange(
  Sender: TObject);
begin
  inherited;
  girdList.hint :='CFINWAREHOUSEID';
  HeadAutoSelIDchange(cdsInWarehouse,'');
end;

procedure TFM_BillEditSaleIssue.cxbtnReceivOrgNumPropertiesChange(
  Sender: TObject);
begin
  inherited;
  girdList.hint :='CFRECEIVESTOREUNIT';
  HeadAutoSelIDchange(cdsBranch,'');
end;

procedure TFM_BillEditSaleIssue.cdsDetailNewRecord(DataSet: TDataSet);
begin
  inherited;
  with DataSet do
  begin
    DataSet.FieldByName('FID').AsString := CliDM.GetEASSID('CC3E933B');
    DataSet.FieldByName('FParentID').AsString := BillIDValue;
    DataSet.FieldByName('FWAREHOUSEID').AsString := cdsMaster.fieldbyname('CFWAREHOUSEID').AsString; //发货仓库
    DataSet.FieldByName('FBaseStatus').AsInteger := 1;
    DataSet.FieldByName('FStorageOrgUnitID').AsString := UserInfo.Branch_ID;
    DataSet.FieldByName('FCompanyOrgUnitID').AsString := UserInfo.Branch_ID;
  end;
end;

procedure TFM_BillEditSaleIssue.cxdblookupInputwayPropertiesCloseUp(
  Sender: TObject);
begin
  inherited;
  //
end;

procedure TFM_BillEditSaleIssue.cdsMasterCalcFields(DataSet: TDataSet);
var
  event : TNotifyEvent;
begin
  try
    if tmpbtnEdit <> nil then
    begin
      event := tmpbtnEdit.Properties.OnChange ;
      tmpbtnEdit.Properties.OnChange := nil  ;
    end;
    if DataSet.FindField('CFCustName')<> nil then
    begin
      if FindRecord1(CliDM.cdsCust,'FID',DataSet.fieldbyname('FCUSTOMERID').AsString,1) then
      begin
        cxbtnNUmber.Text := CliDM.cdsCust.fieldbyname('fnumber').AsString;
        DataSet.FindField('CFCustName').AsString := CliDM.cdsCust.fieldbyname('fname_l2').AsString;
      end;
    end;
    if DataSet.FindField('CFBalanceCustName')<> nil then
    begin
      if FindRecord1(CliDM.cdsCust,'FID',DataSet.fieldbyname('FBalanceCustomerID').AsString,1) then
      begin
        cxbtnBalanceCust.Text := CliDM.cdsCust.fieldbyname('fnumber').AsString;
        DataSet.FindField('CFBalanceCustName').AsString := CliDM.cdsCust.fieldbyname('fname_l2').AsString;
      end;
    end;
    if DataSet.FindField('CFOrderCustName')<> nil then
    begin
      if FindRecord1(CliDM.cdsCust,'FID',DataSet.fieldbyname('FOrderCustomerID').AsString,1) then
      begin
        cxbtnOrderCust.Text := CliDM.cdsCust.fieldbyname('fnumber').AsString;
        DataSet.FindField('CFOrderCustName').AsString := CliDM.cdsCust.fieldbyname('fname_l2').AsString;
      end;
    end;
    if DataSet.FindField('CFPayCustName')<> nil then
    begin
      if FindRecord1(CliDM.cdsCust,'FID',DataSet.fieldbyname('FPaymentCustomerID').AsString,1) then
      begin
        cxbtnPayCust.Text := CliDM.cdsCust.fieldbyname('fnumber').AsString;
        DataSet.FindField('CFPayCustName').AsString := CliDM.cdsCust.fieldbyname('fname_l2').AsString;
      end;
    end;

    if DataSet.FindField('CFSendWareName')<> nil then
    begin
      if FindRecord1(CliDM.cdsWarehouse,'FID',DataSet.fieldbyname('CFWAREHOUSEID').AsString,1) then
      begin
        cxbtnSendWareNum.Text := CliDM.cdsWarehouse.fieldbyname('fnumber').AsString;
        DataSet.FindField('CFSendWareName').AsString := CliDM.cdsWarehouse.fieldbyname('fname_l2').AsString;
      end;
    end;
    if DataSet.FindField('CFReceivWareName')<> nil then
    begin

      if FindRecord1(CliDM.cdsAllWarehouse,'FID',DataSet.fieldbyname('CFINWAREHOUSEID').AsString,1) then
      begin
        cxbtnReceivWareNum.Text := CliDM.cdsAllWarehouse.fieldbyname('fnumber').AsString;
        DataSet.FindField('CFReceivWareName').AsString := CliDM.cdsAllWarehouse.fieldbyname('fname_l2').AsString;
      end
      else
      begin
        cxbtnReceivWareNum.Text :='';
        DataSet.FindField('CFReceivWareName').AsString := '';
      end;
    end;
    if DataSet.FindField('CFReceivOrgName')<> nil then
    begin
      if FindRecord1(CliDM.cdsUserBranch,'FID',DataSet.fieldbyname('CFRECEIVESTOREUNIT').AsString,1) then
      begin
        cxbtnReceivOrgNum.Text := CliDM.cdsUserBranch.fieldbyname('fnumber').AsString;
        DataSet.FindField('CFReceivOrgName').AsString := CliDM.cdsUserBranch.fieldbyname('fname_l2').AsString;
      end;
    end;
  finally
    if tmpbtnEdit<>nil then
      tmpbtnEdit.Properties.OnChange := event;
  end;
end;

procedure TFM_BillEditSaleIssue.dbgList2Editing(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  var AAllow: Boolean);
begin
  inherited;
  if cdsMaster.FieldByName('FISINTAX').AsInteger=1 then
  begin
    if (FocuField='FActualTaxPrice') or (FocuField='FTaxRate') then
      AAllow :=True ;
    if FocuField='FACTUALPRICE' then
      AAllow := False;
  end
  else
  begin
    if (FocuField='FActualTaxPrice') or (FocuField='FTaxRate') then
      AAllow :=False;
    if FocuField='FACTUALPRICE' then
      AAllow := True;
  end;
  if fHasLocation=0 then
  begin
    if FocuField='CFLocationName' then
      AAllow :=False;
  end;
end;

procedure TFM_BillEditSaleIssue.cdsDetailAmountFTaxRateChange(
  Sender: TField);
  var
    Event,EventRate : TFieldNotifyEvent;
begin
  inherited;
  try
    Event := sender.DataSet.FieldByName('FACTUALPRICE').OnChange;
    sender.DataSet.FieldByName('FACTUALPRICE').OnChange := nil;
    EventRate :=Sender.DataSet.FieldByName('FDISCOUNTRATE').OnChange;
    Sender.DataSet.FieldByName('FDISCOUNTRATE').OnChange := nil;
    sender.DataSet.FieldByName('FACTUALPRICE').AsFloat := Sender.DataSet.Fieldbyname('FActualTaxPrice').AsFloat/(1+Sender.AsFloat/100);
    if sender.DataSet.fieldbyname('FPRICE').AsFloat<>0 then
      Sender.DataSet.FieldByName('FDISCOUNTRATE').AsFloat := sender.DataSet.FieldByName('FACTUALPRICE').AsFloat/sender.DataSet.fieldbyname('FPRICE').AsFloat;
  finally
    sender.DataSet.FieldByName('FACTUALPRICE').OnChange := Event;
    Sender.DataSet.FieldByName('FDISCOUNTRATE').OnChange := EventRate;
  end;
end;
procedure TFM_BillEditSaleIssue.calAmt(DataSet: TDataSet);
begin
  DataSet.FieldByName('FNonTaxAmount').AsFloat := CliDM.SimpleRoundTo(DataSet.fieldbyname('fqty').AsFloat*DataSet.FieldByName('FACTUALPRICE').AsFloat); //金额
  DataSet.FieldByName('FAmount').AsFloat := CliDM.SimpleRoundTo(DataSet.fieldbyname('fqty').AsFloat*DataSet.FieldByName('FACTUALTAXPRICE').AsFloat); //价税合计
  DataSet.FieldByName('FTax').AsFloat := CliDM.SimpleRoundTo(DataSet.fieldbyname('fqty').AsFloat*(DataSet.FieldByName('FACTUALTAXPRICE').AsFloat-DataSet.FieldByName('FACTUALPRICE').AsFloat)); //税额
  DataSet.FieldByName('FLocalNonTaxAmount').AsFloat := DataSet.FieldByName('FNonTaxAmount').AsFloat;
  DataSet.FieldByName('FLocalTax').AsFloat := DataSet.FieldByName('FTax').AsFloat;
  DataSet.FieldByName('FLocalAmount').AsFloat := DataSet.FieldByName('FAmount').AsFloat;
end;
procedure TFM_BillEditSaleIssue.FormShow(Sender: TObject);
begin
  inherited;
  sIniBillFlag :='CS';
  sSPPack := 'SALE';
end;

procedure TFM_BillEditSaleIssue.dbgList2CFLocationNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  FindLocation(cdsMaster.fieldbyname('CFWAREHOUSEID').AsString,'FLOCATIONID','CFLocationName');
end;

procedure TFM_BillEditSaleIssue.cdsDetailAmountBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  if fHasLocation=1 then
  begin
    if trim(DataSet.FieldByName('FLOCATIONID').AsString)='' then
    begin
      ShowError(Handle, '库位不能为空值!',[]);
      Abort;
    end;
  end;
end;

procedure TFM_BillEditSaleIssue.dbgList2FISPRESENTPropertiesChange(
  Sender: TObject);
begin
  inherited;
  if cdsDetailAmount.FieldByName('FISPRESENT').AsInteger =1 then
  begin
    if not (cdsDetailAmount.State in db.dsEditModes) then
      cdsDetailAmount.Edit;
    cdsDetailAmount.FieldByName('FACTUALPRICE').AsFloat := 0;
    cdsDetailAmount.FieldByName('FDISCOUNTRATE').AsFloat := 0;
    cdsDetailAmount.FieldByName('FActualTaxPrice').AsFloat := 0;
    cdsDetailAmount.FieldByName('FTaxRate').AsFloat :=0;
    cdsDetailAmount.FieldByName('FTax').AsFloat := 0;
  end;
end;

procedure TFM_BillEditSaleIssue.girdListKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  //if tmpbtnEdit.Name
  if tmpbtnEdit <> nil then
  if tmpbtnEdit.Name='cxbtnSendWareNum' then
    fHasLocation := dsHeadSel.DataSet.FieldByName('fhaslocation').AsInteger;
end;

procedure TFM_BillEditSaleIssue.girdListDblClick(Sender: TObject);
begin
  inherited;
  if tmpbtnEdit <> nil then
  if tmpbtnEdit.Name='cxbtnSendWareNum' then
    fHasLocation := dsHeadSel.DataSet.FieldByName('fhaslocation').AsInteger;
end;

procedure TFM_BillEditSaleIssue.cxPageDetailChange(Sender: TObject);
begin
  inherited;
  if cxPageDetail.ActivePage=cxTabTractDetail  then
  begin
    cdstracy.Data :=  cdsDetail.Data;
    OpenTracyDetail('');
  end;
end;

procedure TFM_BillEditSaleIssue.cdsDetailAmountFActualTaxPriceChange(
  Sender: TField);
begin
  inherited;
  sender.DataSet.FieldByName('FACTUALPRICE').AsFloat :=CliDM.SimpleRoundTo( Sender.AsFloat/(1+ Sender.DataSet.Fieldbyname('FTaxRate').AsFloat/100));
  if sender.DataSet.fieldbyname('FPRICE').AsFloat<>0 then
    Sender.DataSet.FieldByName('FDISCOUNTRATE').AsFloat :=CliDM.SimpleRoundTo( sender.DataSet.FieldByName('FACTUALPRICE').AsFloat/sender.DataSet.fieldbyname('FPRICE').AsFloat*100);
end;

procedure TFM_BillEditSaleIssue.cdsDetailAmountFACTUALPRICEChange(
  Sender: TField);
  var
    Event,EventRate : TFieldNotifyEvent;
begin
  inherited;
  try
    Event := Sender.DataSet.FieldByName('FActualTaxPrice').OnChange ;
    EventRate := Sender.DataSet.FieldByName('FDISCOUNTRATE').OnChange ;
    Sender.DataSet.FieldByName('FActualTaxPrice').OnChange := nil;
    Sender.DataSet.FieldByName('FDISCOUNTRATE').OnChange  := nil;
    if sender.DataSet.fieldbyname('FPRICE').AsFloat<>0 then
      Sender.DataSet.FieldByName('FDISCOUNTRATE').AsFloat := CliDM.SimpleRoundTo(sender.DataSet.FieldByName('FACTUALPRICE').AsFloat/sender.DataSet.fieldbyname('FPRICE').AsFloat*100);
    Sender.DataSet.FieldByName('FActualTaxPrice').AsFloat := Sender.AsFloat ;
  finally
    Sender.DataSet.FieldByName('FActualTaxPrice').OnChange := Event;
    Sender.DataSet.FieldByName('FDISCOUNTRATE').OnChange  := nil;
  end;
end;

procedure TFM_BillEditSaleIssue.cxbtnNUmberPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
  var
    ChangEvent : TNotifyEvent;
begin
  inherited;
  if not  cdsMaster.Active then Exit;
  try
    ChangEvent := cxbtnNUmber.Properties.OnChange;
    cxbtnNUmber.Properties.OnChange := nil;
    with Select_Customer('','','',1) do
    begin
      if not IsEmpty then
      begin
        if not (cdsMaster.State in DB.dsEditModes) then cdsMaster.Edit;
          cdsMaster.FieldByName('FCUSTOMERID').AsString := fieldbyname('fid').AsString;
      end;
    end;
  finally
    cxbtnNUmber.Properties.OnChange := ChangEvent;
  end;
end;

procedure TFM_BillEditSaleIssue.cxbtnSendWareNumPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
  var
    ChangEvent : TNotifyEvent;
begin
  inherited;
  if not  cdsMaster.Active then Exit;
  try
    ChangEvent := cxbtnSendWareNum.Properties.OnChange;
    cxbtnSendWareNum.Properties.OnChange := nil;
    with Select_Warehouse('','',1) do
    begin
      if not IsEmpty then
      begin
        if not (cdsMaster.State in DB.dsEditModes) then cdsMaster.Edit;
          cdsMaster.FieldByName('CFWAREHOUSEID').AsString := fieldbyname('fid').AsString;
      end;
    end;
  finally
    cxbtnSendWareNum.Properties.OnChange := ChangEvent;
  end;
end;

procedure TFM_BillEditSaleIssue.cxbtnReceivWareNumPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
  var
    ChangEvent : TNotifyEvent;
begin
  inherited;
  if not  cdsMaster.Active then Exit;
  try
    ChangEvent := cxbtnReceivWareNum.Properties.OnChange;
    cxbtnReceivWareNum.Properties.OnChange := nil;
    with Select_Warehouse('','',1) do
    begin
      if not IsEmpty then
      begin
        if not (cdsMaster.State in DB.dsEditModes) then cdsMaster.Edit;
          cdsMaster.FieldByName('CFINWAREHOUSEID').AsString := fieldbyname('fid').AsString;
      end;
    end;
  finally
    cxbtnReceivWareNum.Properties.OnChange := ChangEvent;
  end;
end;

procedure TFM_BillEditSaleIssue.cxbtnReceivOrgNumPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
  var
    ChangEvent : TNotifyEvent;
begin
  inherited;
  if not  cdsMaster.Active then Exit;
  try
    ChangEvent := cxbtnReceivOrgNum.Properties.OnChange;
    cxbtnReceivOrgNum.Properties.OnChange := nil;
    with Select_Branch('','',1) do
    begin
      if not IsEmpty then
      begin
        if not (cdsMaster.State in DB.dsEditModes) then cdsMaster.Edit;
          cdsMaster.FieldByName('CFRECEIVESTOREUNIT').AsString := fieldbyname('fid').AsString;
      end;
    end;
  finally
    cxbtnReceivOrgNum.Properties.OnChange := ChangEvent;
  end;
end;

procedure TFM_BillEditSaleIssue.cdsDetailFQTYChange(Sender: TField);
begin
  inherited;
  Sender.DataSet.FieldByName('FBASEQTY').AsFloat := Sender.DataSet.fieldbyname('Fqty').AsFloat;
  Sender.DataSet.FieldByName('FReturnsQty').AsFloat := 0;
  Sender.DataSet.FieldByName('FUnInQty').AsFloat := Sender.DataSet.fieldbyname('Fqty').AsFloat;
  Sender.DataSet.FieldByName('FUnInBaseQty').AsFloat :=  Sender.DataSet.fieldbyname('Fqty').AsFloat;
  Sender.DataSet.FieldByName('FASSOCIATEQTY').AsFloat := Sender.DataSet.fieldbyname('Fqty').AsFloat;
  Sender.DataSet.FieldByName('FUnWriteOffQty').AsFloat := Sender.DataSet.fieldbyname('Fqty').AsFloat;
  Sender.DataSet.FieldByName('FUnWriteOffBaseQty').AsFloat :=  Sender.DataSet.fieldbyname('Fqty').AsFloat;
end;

procedure TFM_BillEditSaleIssue.cdsDetailBeforePost(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FOrderCustomerID').AsString := cdsMaster.fieldbyname('FOrderCustomerID').AsString;  //送货客户
  DataSet.FieldByName('FBalanceCustomerID').AsString := cdsMaster.fieldbyname('FBalanceCustomerID').AsString;  //应收客户
  DataSet.FieldByName('FPaymentCustomerID').AsString := cdsMaster.fieldbyname('FPaymentCustomerID').AsString;  //收款客户
  DataSet.FieldByName('FWAREHOUSEID').AsString := cdsMaster.fieldbyname('CFWAREHOUSEID').AsString; //发货仓库
  DataSet.FieldByName('FUnWriteOffAmount').AsFloat := DataSet.fieldbyname('fAmount').AsFloat
  
end;

procedure TFM_BillEditSaleIssue.cxbtnBalanceCustPropertiesChange(
  Sender: TObject);
begin
  inherited;
  girdList.hint :='FBalanceCustomerID';
  HeadAutoSelIDchange(cdsCustomer,'');
end;

procedure TFM_BillEditSaleIssue.cxbtnOrderCustPropertiesChange(
  Sender: TObject);
begin
  inherited;
  girdList.hint :='FOrderCustomerID';
  HeadAutoSelIDchange(cdsCustomer,'');
end;

procedure TFM_BillEditSaleIssue.cxbtnPayCustPropertiesChange(
  Sender: TObject);
begin
  inherited;
  girdList.hint :='FPaymentCustomerID';
  HeadAutoSelIDchange(cdsCustomer,'');
end;

procedure TFM_BillEditSaleIssue.cdsMasterFCUSTOMERIDChange(Sender: TField);
begin
  inherited;
  if Trim(cdsMaster.FieldByName('FOrderCustomerID').AsString ) ='' then
    cdsMaster.FieldByName('FOrderCustomerID').AsString := Sender.AsString;  //送货客户
  if Trim(cdsMaster.FieldByName('FBalanceCustomerID').AsString)='' then
    cdsMaster.FieldByName('FBalanceCustomerID').AsString := Sender.AsString;  //应收客户
  if Trim(cdsMaster.FieldByName('FPaymentCustomerID').AsString)='' then
    cdsMaster.FieldByName('FPaymentCustomerID').AsString := Sender.AsString;  //收款客户
end;

procedure TFM_BillEditSaleIssue.cxbtnBalanceCustPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  if not  cdsMaster.Active then Exit;
  with Select_Customer('','','',1) do
  begin
    if not IsEmpty then
    begin
      if not (cdsMaster.State in DB.dsEditModes) then cdsMaster.Edit;
        cdsMaster.FieldByName('FBalanceCustomerID').AsString := fieldbyname('fid').AsString;
    end;
  end;
end;

procedure TFM_BillEditSaleIssue.cxbtnOrderCustPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  if not  cdsMaster.Active then Exit;
  with Select_Customer('','','',1) do
  begin
    if not IsEmpty then
    begin
      if not (cdsMaster.State in DB.dsEditModes) then cdsMaster.Edit;
        cdsMaster.FieldByName('FOrderCustomerID').AsString := fieldbyname('fid').AsString;
    end;
  end;
end;

procedure TFM_BillEditSaleIssue.cxbtnPayCustPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  if not  cdsMaster.Active then Exit;
  with Select_Customer('','','',1) do
  begin
    if not IsEmpty then
    begin
      if not (cdsMaster.State in DB.dsEditModes) then cdsMaster.Edit;
        cdsMaster.FieldByName('FPaymentCustomerID').AsString := fieldbyname('fid').AsString;
    end;
  end;
end;

procedure TFM_BillEditSaleIssue.cdsCustomerFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  inherited;
  if tmpbtnEdit<> nil then
  Accept:=((Pos(Trim(UpperCase(tmpbtnEdit.Text)),UpperCase(DataSet.fieldbyname('fnumber').AsString))>0) or
          (Pos(Trim(UpperCase(tmpbtnEdit.Text)),UpperCase(DataSet.fieldbyname('fname_l2').AsString))>0) or
          (Pos(Trim(UpperCase(tmpbtnEdit.Text)),UpperCase(DataSet.fieldbyname('FhelpCode').AsString))>0)) ;
end;

procedure TFM_BillEditSaleIssue.cdsMasterCFRECEIVESTOREUNITChange(
  Sender: TField);
begin
  OPenFindWare(Sender.AsString);
end;

procedure TFM_BillEditSaleIssue.cdsInWarehouseFilterRecord(
  DataSet: TDataSet; var Accept: Boolean);
begin
  inherited;
  if tmpbtnEdit<> nil then
  begin
    if tmpbtnEdit.Name='cxbtnReceivWareNum' then
      Accept:=((Pos(Trim(UpperCase(tmpbtnEdit.Text)),UpperCase(DataSet.fieldbyname('fnumber').AsString))>0) or
          (Pos(Trim(UpperCase(tmpbtnEdit.Text)),UpperCase(DataSet.fieldbyname('fname_l2').AsString))>0) or
          (Pos(Trim(UpperCase(tmpbtnEdit.Text)),UpperCase(DataSet.fieldbyname('FhelpCode').AsString))>0));
  end;
end;

procedure TFM_BillEditSaleIssue.dbgList2cfMaterialNumberPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  FindMaterial;
end;

procedure TFM_BillEditSaleIssue.dbgList2CFColorCodePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  FindColor;
end;

procedure TFM_BillEditSaleIssue.dbgList2CFCupNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  FindCup;
end;

procedure TFM_BillEditSaleIssue.dbgList2CFPackNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  FindPack;
end;

procedure TFM_BillEditSaleIssue.cdsDetailAmountFMATERIALIDChange(
  Sender: TField);
begin
  inherited;
  Get_PolicyPrice('FDISCOUNTRATE','FACTUALPRICE',cdsMaster.fieldbyname('FSTORAGEORGUNITID').AsString
  ,cdsMaster.fieldbyname('CFPRICETYPEID').AsString,cdsMaster.fieldbyname('FOrderCustomerID').AsString,cdsDetailAmount.fieldbyname('FMATERIALID').AsString,
  cdsMaster.fieldbyname('FBIZDATE').AsDateTime);
end;

procedure TFM_BillEditSaleIssue.cdsDetailAmountFDISCOUNTRATEChange(
  Sender: TField);
  var
    Event : TFieldNotifyEvent;
begin
  inherited;
  try
    Event := Sender.DataSet.fieldbyname('FACTUALPRICE').OnChange;
    Sender.DataSet.fieldbyname('FACTUALPRICE').OnChange:= nil;
    Sender.DataSet.FieldByName('FACTUALPRICE').AsFloat := CliDM.SimpleRoundTo(Sender.AsFloat/100*Sender.DataSet.FieldByName('FPRICE').AsFloat);
  finally
    Sender.DataSet.fieldbyname('FACTUALPRICE').OnChange := Event;
  end;

end;

procedure TFM_BillEditSaleIssue.cdsDetailAmountCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FtaxAmount').AsFloat := DataSet.fieldbyname('fTotaLQty').AsFloat*DataSet.fieldbyname('FACTUALTAXPRICE').AsFloat;
  DataSet.FieldByName('Ftax').AsFloat := DataSet.FieldByName('FtaxAmount').AsFloat-dataset.fieldbyname('FAmount').AsFloat;
end;

procedure TFM_BillEditSaleIssue.cdsDetailAmountCFPACKIDChange(
  Sender: TField);
begin
  inherited;
  if cdsDetailAmount.FieldByName('CFPackNum').AsInteger>0 then
    PackNumChang(cdsDetailAmount,cdsDetailAmount.FieldByName('CFSIZEGROUPID').AsString,cdsDetailAmount.fieldbyname('CFPackID').AsString);

end;

procedure TFM_BillEditSaleIssue.cdsDetailAmountCFPACKNUMChange(
  Sender: TField);
begin
  inherited;
  if cdsDetailAmount.FieldByName('CFPackNum').AsInteger>0 then
    PackNumChang(cdsDetailAmount,cdsDetailAmount.FieldByName('CFSIZEGROUPID').AsString,cdsDetailAmount.fieldbyname('CFPackID').AsString);

end;

procedure TFM_BillEditSaleIssue.dxBarEncasementClick(Sender: TObject);
var PKContext : TPackingContext ;
begin
  inherited;
  if cdsMaster.FieldByName('CFINPUTWAY').AsString <> 'NOTPACK' then
  begin
    ShowMsg(self.Handle,'只有散码才可以使用装箱功能! ',[]);
    Abort;
  end;
  if cdsMaster.FieldByName('CFINPUTWAY').AsString <> 'NOTPACK' then
  begin
    ShowMsg(self.Handle,'只有散码才可以使用装箱功能! ',[]);
    Abort;
  end;
  if cdsMaster.FieldByName('CFISPACKING').AsInteger <> 1 then
  begin
    ShowMsg(self.Handle,'请勾选需装箱...    ',[]);
    Abort;
  end;
  PKContext.IsBillOpen := True;
  PKContext.FBilltypeID:= Self.sBillTypeID;
  PKContext.CFSOURCENUMBER := cdsMaster.FieldByName('fnumber').AsString;
  PKContext.FSOURCEBILLID  := cdsMaster.FieldByName('FID').AsString;
  PKContext.SrcBillIsAudit := BillInfo.IsAduit;
  PKContext.CFCUSTOMERID   := cdsMaster.FieldByName('FCUSTOMERID').AsString;
  PKContext.CustName       := cdsMaster.FieldByName('CFCustName').AsString;
  PKContext.CFWAREHOUSEID  := cdsMaster.FieldByName('CFWAREHOUSEID').AsString;
  PKContext.FWAREHOUSEName := cdsMaster.FieldByName('CFSendWareName').AsString;
  CallPackingList(PKContext);
end;

procedure TFM_BillEditSaleIssue.dxBarDeleteEncasementClick(
  Sender: TObject);
begin
  inherited;
  if BillInfo.IsAduit then
  begin
    ShowMsg(self.Handle,'单据审核,不能删除装箱单!    ',[]);
    Abort;
  end;
end;

procedure TFM_BillEditSaleIssue.cdsMasterCFINWAREHOUSEIDChange(
  Sender: TField);
begin
  inherited;
  FInWarehouseFID := Sender.AsString;
end;

procedure TFM_BillEditSaleIssue.cdsMasterCFWAREHOUSEIDChange(
  Sender: TField);
begin
  inherited;
  FOutWarehouseFID := Sender.AsString;
end;

procedure TFM_BillEditSaleIssue.cxbtnNUmberKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  DelBtnEditValue(Key,'FCUSTOMERID');
end;

procedure TFM_BillEditSaleIssue.cxbtnSendWareNumKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  DelBtnEditValue(Key,'CFWAREHOUSEID');
end;

procedure TFM_BillEditSaleIssue.cxbtnReceivWareNumKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  DelBtnEditValue(Key,'CFINWAREHOUSEID');
end;

procedure TFM_BillEditSaleIssue.cxbtnReceivOrgNumKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  DelBtnEditValue(Key,'CFRECEIVESTOREUNIT');
end;

procedure TFM_BillEditSaleIssue.cxbtnBalanceCustKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  DelBtnEditValue(Key,'FBalanceCustomerID');
end;

procedure TFM_BillEditSaleIssue.cxbtnOrderCustKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  DelBtnEditValue(Key,'FOrderCustomerID');
end;

procedure TFM_BillEditSaleIssue.cxbtnPayCustKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  DelBtnEditValue(Key,'FPaymentCustomerID');
end;
procedure TFM_BillEditSaleIssue.OPenFindWare(StorageOrgID : string);
var
  strSql,ErrMsg : string;
begin
  inherited;
  try
    strSql :=' select FID,Fnumber,Fname_l2,FhelpCode,fhaslocation,CFCustomerID,fstorageorgid from t_Db_Warehouse where FWhState=1 and fstorageorgid='+quotedstr(StorageOrgID);
     Clidm.Get_OpenSQL(CliDM.cdstemp,strsql,ErrMsg);
     cdsInWarehouse.Data := CliDM.cdstemp.Data;
    // cdsFindwarehouse.Data := CliDM.cdstemp.Data;
     CliDM.cdstemp.Close;
  except
    on E : Exception do
    begin
      ShowMsg(Handle, '查询仓库数据出错:'+E.Message+' '+ErrMsg ,[]);
      Abort;
    end;
  end;

end;
procedure TFM_BillEditSaleIssue.actPullExecute(Sender: TObject);
begin
  inherited;
  self.Close;
  Application.CreateForm(TPostReqToIsSueFrm,PostReqToIsSueFrm);
  PostReqToIsSueFrm.OpenType := 2;
  PostReqToIsSueFrm.ShowModal;
  PostReqToIsSueFrm.Free;
end;

procedure TFM_BillEditSaleIssue.cdsDetailAmountAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
   cxbtnSO.Text := DataSet.fieldbyname('FSaleOrderNumber').AsString;
   cxbtnAM.Text := DataSet.fieldbyname('FSOURCEBILLNUMBER').AsString;
end;

procedure TFM_BillEditSaleIssue.cdsDetailAmountAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  ///
end;
procedure TFM_BillEditSaleIssue.AddDetailRecord;
var
  strSql,ErrMsg,sSizeCode,sCupCode,sColorCoede,spackCode,sAsstCode : string ;
begin
  strSql :=  'select a.FID as Cfsizegroupid, b.fseq,b.Cfsizeid from CT_BAS_SIZEGROUP a   left join CT_BAS_SIZEGROUPEntry b on a.FID=b.fparentid where a.FID='+quotedstr(cdsDetailAmount.fieldbyname('CFSIZEGroupID').AsString);
  Clidm.Get_OpenSQL(CliDM.cdsTmp,strSql,ErrMsg) ;
  CliDM.cdsTmp.First;
  while not CliDM.cdsTmp.Eof do
  begin

    if cdsDetailAmount.fieldbyname('fAmount_'+inttostr(CliDM.cdsTmp.fieldbyname('fseq').AsInteger)).AsInteger= 0 then
    begin
      if cdsDetail.Locate('CFColorID;CFCUPID;CFPackID;CFSizesID;CFSIZEGroupID;FMaterialID;fParentID',VarArrayOf([
        cdsDetailAmount.fieldbyname('CFColorID').AsString,cdsDetailAmount.fieldbyname('CFCUPID').AsString,cdsDetailAmount.fieldbyname('CFPackID').AsString,
        CliDM.cdsTmp.fieldbyname('Cfsizeid').AsString,cdsDetailAmount.fieldbyname('CFSIZEGroupID').AsString,cdsDetailAmount.fieldbyname('FMaterialID').AsString,BillIDValue]), []) then  //数量为空删除
      cdsDetail.Delete;
      CliDM.cdsTmp.Next;
      Continue;
    end;
    with cdsDetail do
    begin
      if (cdsDetail.Locate('CFColorID;CFCUPID;CFPackID;CFSizesID;CFSIZEGroupID;FMaterialID;fParentID',VarArrayOf([
      cdsDetailAmount.fieldbyname('CFColorID').AsString,cdsDetailAmount.fieldbyname('CFCUPID').AsString,cdsDetailAmount.fieldbyname('CFPackID').AsString,
      CliDM.cdsTmp.fieldbyname('Cfsizeid').AsString,cdsDetailAmount.fieldbyname('CFSIZEGroupID').AsString,cdsDetailAmount.fieldbyname('FMaterialID').AsString,BillIDValue]), []))
      or (cdsDetail.Locate('CFColorID;CFCUPID;CFPackID;CFSizesID;CFSIZEGroupID;FMaterialID;fParentID',VarArrayOf([
      strColorID,StrCupID,StrpackID,
      CliDM.cdsTmp.fieldbyname('Cfsizeid').AsString,cdsDetailAmount.fieldbyname('CFSIZEGroupID').AsString,strMatID,BillIDValue]), [])) then
      begin
        cdsDetail.Edit;
      end
      else
      begin
        if cdsDetailAmount.fieldbyname('fAmount_'+inttostr(CliDM.cdsTmp.fieldbyname('fseq').AsInteger)).AsInteger=0 then
        begin
          CliDM.cdsTmp.Next;
          Continue;
        end;
        cdsDetail.Append;
      end;
      fieldbyname('CFColorID').AsString := cdsDetailAmount.fieldbyname('CFColorID').AsString;
      fieldbyname('CFCUPID').AsString := cdsDetailAmount.fieldbyname('CFCUPID').AsString;
      fieldbyname('CFPackID').AsString := cdsDetailAmount.fieldbyname('CFPackID').AsString;
      fieldbyname('CFSizesID').AsString := CliDM.cdsTmp.fieldbyname('Cfsizeid').AsString;
      fieldbyname('FQTY').AsInteger := cdsDetailAmount.fieldbyname('fAmount_'+inttostr(CliDM.cdsTmp.fieldbyname('fseq').AsInteger)).AsInteger;
      fieldbyname('CFSIZEGroupID').AsString := cdsDetailAmount.fieldbyname('CFSIZEGroupID').AsString;
      fieldbyname('FMaterialID').AsString := cdsDetailAmount.fieldbyname('FMaterialID').AsString;
      fieldbyname('CFPackNum').AsInteger := cdsDetailAmount.fieldbyname('CFPackNum').AsInteger;
      fieldbyname('CFDPPRICE').asFloat := cdsDetailAmount.fieldbyname('CFDPPRICE').AsInteger;
      fieldbyname('FPRICE').asFloat := cdsDetailAmount.fieldbyname('FPRICE').asfloat;
      fieldbyname('FACTUALPRICE').asFloat := cdsDetailAmount.fieldbyname('FACTUALPRICE').asfloat;
      FieldByName('FACTUALTAXPRICE').AsFloat := cdsDetailAmount.fieldbyname('FActualTaxPrice').asfloat;
      FieldByName('FTAXRATE').AsFloat := cdsDetailAmount.fieldbyname('FTAXRATE').asfloat;
      fieldbyname('FDISCOUNT').asFloat := cdsDetailAmount.fieldbyname('FDISCOUNTRATE').asfloat;
      fieldbyname('fremark').asstring := cdsDetailAmount.fieldbyname('fremark').AsString;
      fieldbyname('FISPRESENT').asinteger := cdsDetailAmount.fieldbyname('FISPRESENT').asinteger;
      fieldbyname('FBASEUNITID').AsString := cdsDetailAmount.FieldByName('FBASEUNITID').AsString ;
      FieldByName('FWAREHOUSEID').AsString := cdsMaster.fieldbyname('CFWAREHOUSEID').AsString;
      FieldByName('FLOCATIONID').AsString := cdsDetailAmount.fieldbyname('FLOCATIONID').AsString;

      if (ParamInfo.DRP001='true') or (ParamInfo.DRP002='true') then
      begin
        sColorCoede := cdsDetailAmount.fieldbyname('CFColorCode').AsString;
        if FindRecord1(CliDM.cdsAssValue,'FID',CliDM.cdsTmp.fieldbyname('Cfsizeid').AsString,1) then
          sSizeCode := CliDM.cdsAssValue.fieldbyname('fnumber').AsString;
        if trim(cdsDetailAmount.fieldbyname('CFCUPID').AsString)<>'' then
        if FindRecord1(CliDM.cdsAssValue,'FID',cdsDetailAmount.fieldbyname('CFCUPID').AsString,1) then
          sCupCode := CliDM.cdsAssValue.fieldbyname('fnumber').AsString;
        if Trim(cdsDetailAmount.fieldbyname('CFPackID').AsString)<>'' then
        if FindRecord1(CliDM.cdsAssValue,'FID',cdsDetailAmount.fieldbyname('CFPackID').AsString,1) then
         spackCode := CliDM.cdsAssValue.fieldbyname('fnumber').AsString;
        if Trim(sColorCoede)<>'' then
          sAsstCode :=Trim(sColorCoede)+'/';
        if Trim(sSizeCode)<>'' then
          sAsstCode := sAsstCode+ Trim(sSizeCode)+'/';
        if Trim(sCupCode)<>'' then
          sAsstCode := sAsstCode+ Trim(sCupCode)+'/' ;
        if Trim(spackCode)<>'' then
          sAsstCode := sAsstCode+ Trim(spackCode)+'/';
        FieldByName('CFASSISTNUM').AsString := sAsstCode;
      end;
      calAmt(cdsDetail);
      post;
    end;
    CliDM.cdsTmp.Next;
  end;
  CliDM.cdsTmp.Close;

end;
end.
