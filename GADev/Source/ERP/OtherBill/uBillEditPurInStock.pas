unit uBillEditPurInStock;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Frm_BillEditBase, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, ADODB, Menus, DBClient,
  ActnList, dxBar, cxClasses, ImgList, cxButtonEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxLabel, cxCalendar,
  cxDBEdit, cxTextEdit, cxCheckBox, dxGDIPlusClasses, ExtCtrls,
  cxContainer, cxMaskEdit, StdCtrls, Grids, DBGrids, cxGridLevel,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxPC, cxSpinEdit;

type
  TFM_BillEditPurInStock = class(TFM_BillEditBase)
    cxLabel2: TcxLabel;
    cxbtnedtRecType: TcxDBLookupComboBox;
    cxLabel3: TcxLabel;
    cxbtnedtScopetype: TcxDBLookupComboBox;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxbtnRecNO: TcxButtonEdit;
    cxbtnPO: TcxButtonEdit;
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
    cdsMasterFSUPPLIERID: TWideStringField;
    cdsMasterFCURRENCYID: TWideStringField;
    cdsMasterFRECEIPTAMOUNT: TFloatField;
    cdsMasterFEXCHANGERATE: TFloatField;
    cdsMasterFMODIFIERID: TWideStringField;
    cdsMasterFMODIFICATIONTIME: TDateTimeField;
    cdsMasterFPAYMENTTYPEID: TWideStringField;
    cdsMasterFCONVERTMODE: TFloatField;
    cdsMasterFISSYSBILL: TFloatField;
    cdsMasterFISCENTRALBALANCE: TFloatField;
    cdsMasterFTOTALLOCALAMOUNT: TFloatField;
    cdsMasterFPURCHASETYPE: TFloatField;
    cdsMasterFISINTAX: TFloatField;
    cdsMasterFISPRICEINTAX: TFloatField;
    cdsMasterFDISCHARGETYPE: TFloatField;
    cdsMasterFISGENBIZAP: TFloatField;
    cdsMasterFSPLITNUMCOUNT: TFloatField;
    cdsMasterFMONTH: TFloatField;
    cdsMasterFDAY: TFloatField;
    cdsMasterCFISBADSHOE: TFloatField;
    cdsMasterCFSUBBILLTYPE: TWideStringField;
    cdsMasterCFPRICETYPEID: TWideStringField;
    cdsMasterCFSUPPLIERSTORAGEID: TWideStringField;
    cdsMasterCFORDERTYPEID: TWideStringField;
    cdsMasterCFINWAREHOUSEID: TWideStringField;
    cdsMasterCFINPUTWAY: TWideStringField;
    cdsMasterCFRANGEID: TWideStringField;
    cdsMasterCFMATERIALTYPE: TWideStringField;
    cdsMasterCFORDERDEFID: TWideStringField;
    cdsMasterCFCOPE: TFloatField;
    cdsMasterCFISPROCDUCT: TIntegerField;
    cdsMasterCFPURRECTYPEID: TWideStringField;
    cdsMasterCFSupplierName: TStringField;
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
    cdsDetailFPURORDERID: TWideStringField;
    cdsDetailFPURORDERENTRYID: TWideStringField;
    cdsDetailFWRITTENOFFQTY: TFloatField;
    cdsDetailFWRITTENOFFAMOUNT: TFloatField;
    cdsDetailFUNWRITEOFFQTY: TFloatField;
    cdsDetailFUNWRITEOFFAMOUNT: TFloatField;
    cdsDetailFRECEIVEAMOUNT: TFloatField;
    cdsDetailFPURORDERNUMBER: TWideStringField;
    cdsDetailFPURORDERENTRYSEQ: TFloatField;
    cdsDetailFTAXRATE: TFloatField;
    cdsDetailFTAX: TFloatField;
    cdsDetailFLOCALTAX: TFloatField;
    cdsDetailFLOCALPRICE: TFloatField;
    cdsDetailFLOCALAMOUNT: TFloatField;
    cdsDetailFDREWQTY: TFloatField;
    cdsDetailFIMPUTEDCOST: TFloatField;
    cdsDetailFASSISTPROPERTYID: TWideStringField;
    cdsDetailFMFG: TDateTimeField;
    cdsDetailFEXP: TDateTimeField;
    cdsDetailFREMARK: TWideStringField;
    cdsDetailFRETURNBASEQTY: TFloatField;
    cdsDetailFREVERSEBASEQTY: TFloatField;
    cdsDetailFWRITTENOFFBASEQTY: TFloatField;
    cdsDetailFUNWRITEOFFBASEQTY: TFloatField;
    cdsDetailFCOREBILLTYPEID: TWideStringField;
    cdsDetailFUNRETURNEDBASEQTY: TFloatField;
    cdsDetailFORDERPRICE: TFloatField;
    cdsDetailFTAXPRICE: TFloatField;
    cdsDetailFACTUALPRICE: TFloatField;
    cdsDetailFPURCHASEORGUNITID: TWideStringField;
    cdsDetailFPURCHASEPERSONID: TWideStringField;
    cdsDetailFPURCHASEGROUPID: TWideStringField;
    cdsDetailFDREWBASEQTY: TFloatField;
    cdsDetailFTOTALMOVEQTY: TFloatField;
    cdsDetailFISREQUESTTORECEIVED: TFloatField;
    cdsDetailFISFULLWRITEOFF: TFloatField;
    cdsDetailFCANDIRECTREQQTY: TFloatField;
    cdsDetailFCANDIRECTREQBASEQTY: TFloatField;
    cdsDetailFBALANCESUPPLIERID: TWideStringField;
    cdsDetailFISCENTERBALANCE: TFloatField;
    cdsDetailFISBETWEENCOMPANYSEND: TFloatField;
    cdsDetailFHASSAMECOU: TFloatField;
    cdsDetailFRECEIVESTORAGEORGUNITID: TWideStringField;
    cdsDetailFPURCHASECOST: TFloatField;
    cdsDetailFPURCHASEFEE: TFloatField;
    cdsDetailFUNITPURCHASECOST: TFloatField;
    cdsDetailFMATERIALCOST: TFloatField;
    cdsDetailFUNITMATERIALCOST: TFloatField;
    cdsDetailFSCWRITTENOFFQTY: TFloatField;
    cdsDetailFSCWRITTENOFFBASEQTY: TFloatField;
    cdsDetailFSCUNWRITTENOFFQTY: TFloatField;
    cdsDetailFSCUNWRITTENOFFBASEQTY: TFloatField;
    cdsDetailFDOSINGTYPE: TFloatField;
    cdsDetailFPRODUCTTASKNUMBER: TWideStringField;
    cdsDetailFSUPPLIERLOTNO: TWideStringField;
    cdsDetailFTAXAMOUNT: TFloatField;
    cdsDetailFLOCALTAXAMOUNT: TFloatField;
    cdsDetailFACTUALTAXPRICE: TFloatField;
    cdsDetailFDISCOUNTRATE: TFloatField;
    cdsDetailFDISCOUNTAMOUNT: TFloatField;
    cdsDetailFPROJECTID: TWideStringField;
    cdsDetailFTRACKNUMBERID: TWideStringField;
    cdsDetailFCONTRACTNUMBER: TWideStringField;
    cdsDetailFMOTHERENTRYID: TWideStringField;
    cdsDetailFCUSTOMERID: TWideStringField;
    cdsDetailFOUTLOCATIONID: TWideStringField;
    cdsDetailFOUTWAREHOUSEID: TWideStringField;
    cdsDetailREMARK: TWideStringField;
    cdsDetailCFNOTICAMOUNT: TFloatField;
    cdsDetailCFMUTILSOURCEBILL: TWideStringField;
    cdsDetailCFPACKID: TWideStringField;
    cdsDetailCFCOLORID: TWideStringField;
    cdsDetailCFPACKNUM: TFloatField;
    cdsDetailCFSIZESID: TWideStringField;
    cdsDetailCFCUPID: TWideStringField;
    cdsDetailCFSIZEGROUPID: TWideStringField;
    cdsDetailCFCHECKINPUTQTY: TFloatField;
    cdsDetailCFCHECKDIFFQTY: TFloatField;
    cdsDetailCFSRCSALESORDERID: TWideStringField;
    cdsDetailCFSRCSALESORDERENTRYID: TWideStringField;
    cdsDetailCFDPPRICE: TFloatField;
    cdsDetailCFASSISTNUM: TWideStringField;
    cdsDetailALLOTNUM: TFloatField;
    cdsDetailCFBOXQTY: TFloatField;
    cdsDetailCFSTYLEID: TWideStringField;
    cdsDetailCFOTHERBILLNUMBER: TWideStringField;
    cdsDetailCFOTHERBILLREC: TFloatField;
    cdsDetailAmountCFSIZEGROUPID2: TWideStringField;
    cdsDetailAmountFBASEUNITID2: TWideStringField;
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
    cxDBCheckBox1: TcxDBCheckBox;
    cxDBCheckBox2: TcxDBCheckBox;
    cxDBCheckBox3: TcxDBCheckBox;
    cxLabel7: TcxLabel;
    cxbtnReceivWareNum: TcxButtonEdit;
    cxbtnReceivWareName: TcxDBTextEdit;
    cdsMasterCFReceivWareName: TStringField;
    cdsDetailAmountFLOCATIONID: TWideStringField;
    cdsDetailAmountCFLocName: TStringField;
    dbgList2CFLocName: TcxGridDBColumn;
    cdsDetailAmountCFUnitName: TStringField;
    dbgList2CFUnitName: TcxGridDBColumn;
    cdsDetailAmountFRemark: TWideStringField;
    dbgList2FRemark: TcxGridDBColumn;
    cdsSupplier: TClientDataSet;
    cdsSupplierFID: TWideStringField;
    cdsSupplierfnumber: TWideStringField;
    cdsSupplierfname_l2: TWideStringField;
    cdsSupplierFinternalCompanyID: TWideStringField;
    cdsSupplierFtaxRate: TFloatField;
    cdsSupplierFHelpCode: TWideStringField;
    cdswarehouse: TClientDataSet;
    dsPurRecType: TDataSource;
    dsRange: TDataSource;
    cdsDetailAmountFACTUALTAXPRICE: TFloatField;
    dbgList2FACTUALTAXPRICE: TcxGridDBColumn;
    cdsDetailAmountfAmount: TFloatField;
    cdsDetailAmountfTotaLQty: TIntegerField;
    dbgList2fAmount: TcxGridDBColumn;
    dbgList2fTotaLQty: TcxGridDBColumn;
    dbgList2FTAXRATE: TcxGridDBColumn;
    cdsMasterCFModifierName: TStringField;
    cdsMasterFCreatorName: TStringField;
    cdsMasterFAuditorName: TStringField;
    cdsDetailAmountFtaxrate: TFloatField;
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
    cdsDetailTracyFPURORDERID: TWideStringField;
    cdsDetailTracyFPURORDERENTRYID: TWideStringField;
    cdsDetailTracyFWRITTENOFFQTY: TFloatField;
    cdsDetailTracyFWRITTENOFFAMOUNT: TFloatField;
    cdsDetailTracyFUNWRITEOFFQTY: TFloatField;
    cdsDetailTracyFUNWRITEOFFAMOUNT: TFloatField;
    cdsDetailTracyFRECEIVEAMOUNT: TFloatField;
    cdsDetailTracyFPURORDERNUMBER: TWideStringField;
    cdsDetailTracyFPURORDERENTRYSEQ: TFloatField;
    cdsDetailTracyFTAXRATE: TFloatField;
    cdsDetailTracyFTAX: TFloatField;
    cdsDetailTracyFLOCALTAX: TFloatField;
    cdsDetailTracyFLOCALPRICE: TFloatField;
    cdsDetailTracyFLOCALAMOUNT: TFloatField;
    cdsDetailTracyFDREWQTY: TFloatField;
    cdsDetailTracyFIMPUTEDCOST: TFloatField;
    cdsDetailTracyFASSISTPROPERTYID: TWideStringField;
    cdsDetailTracyFMFG: TDateTimeField;
    cdsDetailTracyFEXP: TDateTimeField;
    cdsDetailTracyFREMARK: TWideStringField;
    cdsDetailTracyFRETURNBASEQTY: TFloatField;
    cdsDetailTracyFREVERSEBASEQTY: TFloatField;
    cdsDetailTracyFWRITTENOFFBASEQTY: TFloatField;
    cdsDetailTracyFUNWRITEOFFBASEQTY: TFloatField;
    cdsDetailTracyFCOREBILLTYPEID: TWideStringField;
    cdsDetailTracyFUNRETURNEDBASEQTY: TFloatField;
    cdsDetailTracyFORDERPRICE: TFloatField;
    cdsDetailTracyFTAXPRICE: TFloatField;
    cdsDetailTracyFACTUALPRICE: TFloatField;
    cdsDetailTracyFPURCHASEORGUNITID: TWideStringField;
    cdsDetailTracyFPURCHASEPERSONID: TWideStringField;
    cdsDetailTracyFPURCHASEGROUPID: TWideStringField;
    cdsDetailTracyFDREWBASEQTY: TFloatField;
    cdsDetailTracyFTOTALMOVEQTY: TFloatField;
    cdsDetailTracyFISREQUESTTORECEIVED: TFloatField;
    cdsDetailTracyFISFULLWRITEOFF: TFloatField;
    cdsDetailTracyFCANDIRECTREQQTY: TFloatField;
    cdsDetailTracyFCANDIRECTREQBASEQTY: TFloatField;
    cdsDetailTracyFBALANCESUPPLIERID: TWideStringField;
    cdsDetailTracyFISCENTERBALANCE: TFloatField;
    cdsDetailTracyFISBETWEENCOMPANYSEND: TFloatField;
    cdsDetailTracyFHASSAMECOU: TFloatField;
    cdsDetailTracyFRECEIVESTORAGEORGUNITID: TWideStringField;
    cdsDetailTracyFPURCHASECOST: TFloatField;
    cdsDetailTracyFPURCHASEFEE: TFloatField;
    cdsDetailTracyFUNITPURCHASECOST: TFloatField;
    cdsDetailTracyFMATERIALCOST: TFloatField;
    cdsDetailTracyFUNITMATERIALCOST: TFloatField;
    cdsDetailTracyFSCWRITTENOFFQTY: TFloatField;
    cdsDetailTracyFSCWRITTENOFFBASEQTY: TFloatField;
    cdsDetailTracyFSCUNWRITTENOFFQTY: TFloatField;
    cdsDetailTracyFSCUNWRITTENOFFBASEQTY: TFloatField;
    cdsDetailTracyFDOSINGTYPE: TFloatField;
    cdsDetailTracyFPRODUCTTASKNUMBER: TWideStringField;
    cdsDetailTracyFSUPPLIERLOTNO: TWideStringField;
    cdsDetailTracyFTAXAMOUNT: TFloatField;
    cdsDetailTracyFLOCALTAXAMOUNT: TFloatField;
    cdsDetailTracyFACTUALTAXPRICE: TFloatField;
    cdsDetailTracyFDISCOUNTRATE: TFloatField;
    cdsDetailTracyFDISCOUNTAMOUNT: TFloatField;
    cdsDetailTracyFPROJECTID: TWideStringField;
    cdsDetailTracyFTRACKNUMBERID: TWideStringField;
    cdsDetailTracyFCONTRACTNUMBER: TWideStringField;
    cdsDetailTracyFMOTHERENTRYID: TWideStringField;
    cdsDetailTracyFCUSTOMERID: TWideStringField;
    cdsDetailTracyFOUTLOCATIONID: TWideStringField;
    cdsDetailTracyFOUTWAREHOUSEID: TWideStringField;
    cdsDetailTracyREMARK: TWideStringField;
    cdsDetailTracyCFNOTICAMOUNT: TFloatField;
    cdsDetailTracyCFMUTILSOURCEBILL: TWideStringField;
    cdsDetailTracyCFPACKID: TWideStringField;
    cdsDetailTracyCFCOLORID: TWideStringField;
    cdsDetailTracyCFPACKNUM: TFloatField;
    cdsDetailTracyCFSIZESID: TWideStringField;
    cdsDetailTracyCFCUPID: TWideStringField;
    cdsDetailTracyCFSIZEGROUPID: TWideStringField;
    cdsDetailTracyCFCHECKINPUTQTY: TFloatField;
    cdsDetailTracyCFCHECKDIFFQTY: TFloatField;
    cdsDetailTracyCFSRCSALESORDERID: TWideStringField;
    cdsDetailTracyCFSRCSALESORDERENTRYID: TWideStringField;
    cdsDetailTracyCFDPPRICE: TFloatField;
    cdsDetailTracyCFASSISTNUM: TWideStringField;
    cdsDetailTracyALLOTNUM: TFloatField;
    cdsDetailTracyCFBOXQTY: TFloatField;
    cdsDetailTracyCFSTYLEID: TWideStringField;
    cdsDetailTracyCFOTHERBILLNUMBER: TWideStringField;
    cdsDetailTracyCFOTHERBILLREC: TFloatField;
    cdsDetailTracycfMaterialNumber: TStringField;
    cdsDetailTracycfMaterialName: TStringField;
    cdsDetailTracyCFColorCode: TStringField;
    cdsDetailTracyCFColorName: TStringField;
    cdsDetailTracyCFCupName: TStringField;
    cdsDetailTracyCFPackName: TStringField;
    cdsDetailTracyCFBrandName: TWideStringField;
    cdsDetailTracycfattributeName: TWideStringField;
    cdsDetailTracyCfbrandid: TWideStringField;
    cdsDetailTracycfattributeid: TWideStringField;
    cdsDetailTracyCFLocName: TStringField;
    cdsDetailTracyCFUnitName: TStringField;
    cxgridDetialFBASESTATUS: TcxGridDBColumn;
    cxgridDetialFQTY: TcxGridDBColumn;
    cxgridDetialFPRICE: TcxGridDBColumn;
    cxgridDetialFAMOUNT: TcxGridDBColumn;
    cxgridDetialFISPRESENT: TcxGridDBColumn;
    cxgridDetialFTAXRATE: TcxGridDBColumn;
    cxgridDetialFACTUALPRICE: TcxGridDBColumn;
    cxgridDetialFACTUALTAXPRICE: TcxGridDBColumn;
    cxgridDetialFDISCOUNTRATE: TcxGridDBColumn;
    cxgridDetialREMARK: TcxGridDBColumn;
    cxgridDetialCFPACKNUM: TcxGridDBColumn;
    cxgridDetialCFCHECKINPUTQTY: TcxGridDBColumn;
    cxgridDetialCFCHECKDIFFQTY: TcxGridDBColumn;
    cxgridDetialCFDPPRICE: TcxGridDBColumn;
    cxgridDetialcfMaterialNumber: TcxGridDBColumn;
    cxgridDetialcfMaterialName: TcxGridDBColumn;
    cxgridDetialCFColorCode: TcxGridDBColumn;
    cxgridDetialCFColorName: TcxGridDBColumn;
    cxgridDetialCFCupName: TcxGridDBColumn;
    cxgridDetialCFPackName: TcxGridDBColumn;
    cxgridDetialCFBrandName: TcxGridDBColumn;
    cxgridDetialcfattributeName: TcxGridDBColumn;
    cxgridDetialCFLocName: TcxGridDBColumn;
    cxgridDetialCFUnitName: TcxGridDBColumn;
    cxgridDetialFSEQ: TcxGridDBColumn;
    dbgList2FtaxAmount: TcxGridDBColumn;
    cdsDetailAmountFtaxAmount: TFloatField;
    cdsDetailAmountFtax: TFloatField;
    dbgList2Ftax: TcxGridDBColumn;
    cdsDetailTracyCFSizeCode: TWideStringField;
    cdsDetailTracyCFSizeName: TWideStringField;
    cxgridDetialCFSizeCode: TcxGridDBColumn;
    cxgridDetialCFSizeName: TcxGridDBColumn;
    cxgridDetialFTAXAMOUNT: TcxGridDBColumn;
    btn_PackingList: TdxBarButton;
    cdstracyFID: TWideStringField;
    cdstracyFMATERIALID: TWideStringField;
    cdstracyFBASEUNITID: TWideStringField;
    cdstracyFLOCATIONID: TWideStringField;
    cdstracyFPARENTID: TWideStringField;
    cdstracyFREMARK: TWideStringField;
    cdstracyCFPACKID: TWideStringField;
    cdstracyCFCOLORID: TWideStringField;
    cdstracyCFSIZESID: TWideStringField;
    cdstracyCFCUPID: TWideStringField;
    cdstracyCFSIZEGROUPID: TWideStringField;
    cdstracyFSEQ: TFloatField;
    cdstracyFBASESTATUS: TFloatField;
    cdstracyFQTY: TFloatField;
    cdstracyFPRICE: TFloatField;
    cdstracyFAMOUNT: TFloatField;
    cdstracyCFCHECKINPUTQTY: TFloatField;
    cdstracyCFCHECKDIFFQTY: TFloatField;
    cdstracyCFDPPRICE: TFloatField;
    cdstracyCFPACKNUM: TFloatField;
    cdstracyFACTUALTAXPRICE: TFloatField;
    cdstracyFDISCOUNTRATE: TFloatField;
    cdstracyFTAXAMOUNT: TFloatField;
    cdstracyFTAXRATE: TFloatField;
    cdstracyFTAX: TFloatField;
    cdstracyFACTUALPRICE: TFloatField;
    procedure btnKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cdsDetailNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure cxbtnNUmberPropertiesChange(Sender: TObject);
    procedure cxbtnReceivWareNumPropertiesChange(Sender: TObject);
    procedure btnEnter(Sender: TObject);
    procedure btnExit(Sender: TObject);
    procedure cdsMasterCalcFields(DataSet: TDataSet);
    procedure cxbtnNUmberPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxbtnReceivWareNumPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormShow(Sender: TObject);
    procedure cdsMasterFSUPPLIERIDChange(Sender: TField);
    procedure cdsDetailAmountAfterInsert(DataSet: TDataSet);
    procedure dbgList2Editing(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure girdListKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure girdListDblClick(Sender: TObject);
    procedure cxPageDetailChange(Sender: TObject);
    procedure cdsDetailAmountFACTUALTAXPRICEChange(Sender: TField);
    procedure cdsDetailAmountFACTUALPRICEChange(Sender: TField);
    procedure cdsDetailFQTYChange(Sender: TField);
    procedure cdsDetailBeforePost(DataSet: TDataSet);
    procedure cdsSupplierFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure cdswarehouseFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure cdsDetailAmountFDISCOUNTRATEChange(Sender: TField);
    procedure dbgList2cfMaterialNumberPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure dbgList2CFColorCodePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure dbgList2CFCupNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure dbgList2CFPackNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure dbgList2CFLocNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cdsDetailAmountBeforePost(DataSet: TDataSet);
    procedure cdsDetailAmountCalcFields(DataSet: TDataSet);
    procedure cdsDetailAmountCFPACKIDChange(Sender: TField);
    procedure cdsDetailAmountCFPACKNUMChange(Sender: TField);
    procedure cdsDetailAmountFtaxrateChange(Sender: TField);
    procedure btn_PackingListClick(Sender: TObject);
    procedure cdsMasterCFINWAREHOUSEIDChange(Sender: TField);
    procedure cxbtnNUmberKeyPress(Sender: TObject; var Key: Char);
    procedure cdsDetailAmountAfterPost(DataSet: TDataSet);
    procedure cdsDetailAmountBeforeEdit(DataSet: TDataSet);
  private
    { Private declarations }
    fSupTaxRate : Currency;
    procedure calAmt(DataSet: TDataSet);override;
  public
    { Public declarations }
        //打开单据编辑界面(主键字段, 字段值)
    procedure Open_Bill(KeyFields: String; KeyValues: String); override;
        //保存单据
    function ST_Save : Boolean; override;
     procedure AddDetailRecord;override;
  end;

var
  FM_BillEditPurInStock: TFM_BillEditPurInStock;

implementation

uses FrmCliDM,Pub_Fun,uMaterDataSelectHelper,uPackingListFrm;

{$R *.dfm}
procedure TFM_BillEditPurInStock.Open_Bill(KeyFields, KeyValues: String);
var OpenTables: array[0..1] of string;
    _cds: array[0..1] of TClientDataSet;
    ErrMsg,FBIZTYPEID : string;
begin
  OpenTables[0] := 'T_IM_PurInWarehsBill';
  OpenTables[1] := 'T_IM_PurInWarehsEntry';
  _cds[0] := cdsMaster;
  _cds[1] := cdsDetail;
  try
    if not CliDM.Get_OpenClients(KeyValues,_cds,OpenTables,ErrMsg) then
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
    with cdsMaster do
    begin
      Append;
      FieldByName('FID').AsString := CliDM.GetEASSID(UserInfo.T_IM_PurInWarehsBill);
      FieldByName('FCREATETIME').AsDateTime := CliDM.Get_ServerTime;
      FieldByName('FNUMBER').AsString :=  CliDM.GetSCMBillNum(sBillTypeID,UserInfo.Branch_Flag,sBillFlag,true,ErrMsg);
      FieldByName('FBIZDATE').AsDateTime := CliDM.Get_ServerTime;
      FieldByName('FCREATORID').AsString := UserInfo.LoginUser_FID;
      FieldByName('FBASESTATUS').AsInteger := 1;  //保存状态
      FieldByName('FLASTUPDATEUSERID').AsString := UserInfo.LoginUser_FID;
      FieldByName('FLASTUPDATETIME').AsDateTime := CliDM.Get_ServerTime;
      FieldByName('FMODIFIERID').AsString := UserInfo.LoginUser_FID;
      FieldByName('FMODIFICATIONTIME').AsDateTime := CliDM.Get_ServerTime;
      FieldByName('FCONTROLUNITID').AsString := UserInfo.FCONTROLUNITID;    //控制单元，从服务器获取
      FieldByName('FStorageOrgUnitID').AsString := UserInfo.Branch_ID;
      FieldByName('FCURRENCYID').AsString := BillConst.FCurrency;
      FieldByName('FPaymentTypeID').AsString := BillConst.FPaymentType;
      FieldByName('FIsSysBill').AsFloat := 0;
      FieldByName('FPurchaseType').AsFloat :=0;
      FieldByName('FIsInTax').AsFloat := 0;
      FieldByName('FBillTypeID').AsString := BillConst.BILLTYPE_PI;
      FieldByName('CFISPROCDUCT').AsFloat := 0;
      FieldByName('CFINPUTWAY').AsString :=  'NOTPACK';
      FieldByName('Cfmaterialtype').AsString := 'PI'; ///采购入库
      FieldByName('FIsPriceInTax').AsInteger := 0;
      FieldByName('FBIZTypeID').AsString := 'd8e80652-0106-1000-e000-04c5c0a812202407435C';
      FieldByName('FTRANSACTIONTYPEID').AsString := 'DawAAAAPoACwCNyn'; 
    end;
  end;
  inherited;
end;
function TFM_BillEditPurInStock.ST_Save : Boolean;
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
  {try
   AmountToDetail_DataSet(CliDM.conClient,cdsDetailAmount,cdsDetail);
  except
    on e : Exception do
    begin
      ShowError(Handle, '【'+BillNumber+'】保存时横排转竖排出错：'+e.Message,[]);
      Result := False;
      abort;
    end;
  end; }
  //采购入库单只允许审核，不允许修改
  if cdsMaster.State in db.dsEditModes then
     cdsMaster.Post;
  if cdsDetail.State in db.dsEditModes then
     cdsDetail.Post;

  //定义提交的数据集数据
  _cds[0] := cdsMaster;
  _cds[1] := cdsDetail;
  //提交数据
  try
    if CliDM.Apply_Delta_Ex(_cds,['T_IM_PurInWarehsBill','T_IM_PurInWarehsEntry'],ErrMsg) then
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
 // inherited;
end;
procedure TFM_BillEditPurInStock.btnKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  ///
end;

procedure TFM_BillEditPurInStock.cdsDetailNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FID').AsString := CliDM.GetEASSID(UserInfo.T_IM_PurInWarehsEntry);
  DataSet.FieldByName('FPurchaseOrgUnitID').AsString := UserInfo.Branch_ID;
  DataSet.FieldByName('FReceiveStorageOrgUnitID').AsString := UserInfo.Branch_ID;
  DataSet.FieldByName('FStorageOrgUnitID').AsString := UserInfo.Branch_ID;
  DataSet.FieldByName('FCompanyOrgUnitID').AsString := UserInfo.Branch_ID;
  DataSet.FieldByName('FWAREHOUSEID').AsString := cdsMaster.fieldbyname('CFINWAREHOUSEID').AsString;
  DataSet.FieldByName('fparentID').AsString := cdsMaster.fieldbyname('FID').AsString;
end;

procedure TFM_BillEditPurInStock.FormCreate(Sender: TObject);
begin
   sBillTypeID := BillConst.BILLTYPE_PI;  //单据类型FID
  inherited;
  sKeyFields := 'FmaterialID;CFColorID;CFCupID;CFpackID;FLOCATIONID';
  Self.Bill_Sign := 'T_IM_PurInWarehsBill';
  Self.BillEntryTable := 'T_IM_PurInWarehsEntry';

  cdsSupplier.Data := CliDM.cdsSupplier.Data; //供应商
  cdswarehouse.Data := CliDM.cdsWarehouse.Data;//仓库
      //不允许重复的主键
  setkeyFieldList('cfMaterialNumber;CFColorCode;CFPackName;CFCupName;CFLocName');
end;

procedure TFM_BillEditPurInStock.cxbtnNUmberPropertiesChange(
  Sender: TObject);
begin
  inherited;
  girdList.hint :='FSUPPLIERID';
  HeadAutoSelIDchange(cdsSupplier,'');
end;

procedure TFM_BillEditPurInStock.cxbtnReceivWareNumPropertiesChange(
  Sender: TObject);
begin
  inherited;
  girdList.hint :='CFINWAREHOUSEID';
  HeadAutoSelIDchange(cdswarehouse,'');
end;

procedure TFM_BillEditPurInStock.btnEnter(Sender: TObject);
begin
  inherited;
  //
end;

procedure TFM_BillEditPurInStock.btnExit(Sender: TObject);
begin
  inherited;
  //
end;

procedure TFM_BillEditPurInStock.cdsMasterCalcFields(DataSet: TDataSet);
var
  event : TNotifyEvent;
begin
  inherited;
  try
    if tmpbtnEdit <> nil then
    begin
     event := tmpbtnEdit.Properties.OnChange ;
     tmpbtnEdit.Properties.OnChange := nil  ;
    end;
    if DataSet.FindField('CFSupplierName')<> nil then
    begin
      if FindRecord1(CliDM.cdsSupplier,'FID',DataSet.fieldbyname('FSUPPLIERID').AsString,1) then
      begin
        DataSet.FieldByName('CFSupplierName').AsString := CliDM.cdsSupplier.fieldbyname('Fname_l2').AsString;
        cxbtnNUmber.Text := CliDM.cdsSupplier.fieldbyname('Fnumber').AsString;
      end;
    end;
    if DataSet.FindField('CFReceivWareName')<> nil then
    begin
      if FindRecord1(CliDM.cdsWarehouse,'FID',DataSet.fieldbyname('CFINWAREHOUSEID').AsString,1) then
      begin
        DataSet.FieldByName('CFReceivWareName').AsString := CliDM.cdsWarehouse.fieldbyname('Fname_l2').AsString;
        cxbtnReceivWareNum.Text := CliDM.cdsWarehouse.fieldbyname('Fnumber').AsString;
      end;
    end;

  finally
    if tmpbtnEdit <> nil then
      tmpbtnEdit.Properties.OnChange := event;
  end;
end;

procedure TFM_BillEditPurInStock.cxbtnNUmberPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
  var
    ChangEvent : TNotifyEvent;
begin
  inherited;
  if not  cdsMaster.Active then Exit;
  try
    ChangEvent := TcxButtonEdit(Sender).Properties.OnChange;
    TcxButtonEdit(Sender).Properties.OnChange := nil;
    with Select_Suppliers('','','',1) do
    begin
      if not IsEmpty then
      begin
        if not (cdsMaster.State in db.dsEditModes ) then cdsMaster.Edit;
        cdsMaster.FieldByName('FSUPPLIERID').AsString := fieldbyname('fid').AsString;
      end;
    end;
  finally
    TcxButtonEdit(Sender).Properties.OnChange := ChangEvent;
  end;
end;

procedure TFM_BillEditPurInStock.cxbtnReceivWareNumPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
  var
    ChangEvent : TNotifyEvent;
begin
  inherited;
  if not  cdsMaster.Active then Exit;
  try
    ChangEvent := TcxButtonEdit(Sender).Properties.OnChange;
    TcxButtonEdit(Sender).Properties.OnChange := nil;
    with Select_Warehouse('','',1) do
    begin
      if not IsEmpty then
      begin
        if not (cdsMaster.State in DB.dsEditModes) then cdsMaster.Edit;
          cdsMaster.FieldByName('CFINWAREHOUSEID').AsString := fieldbyname('fid').AsString;
      end;
    end;
  finally
    TcxButtonEdit(Sender).Properties.OnChange := ChangEvent;
  end;
end;

procedure TFM_BillEditPurInStock.FormShow(Sender: TObject);
begin
  inherited;
  sIniBillFlag :='PI';
  sSPPack := 'SCM';
end;

procedure TFM_BillEditPurInStock.cdsMasterFSUPPLIERIDChange(
  Sender: TField);

begin
  inherited;
  if FindRecord1(cdsSupplier,'FID',Sender.AsString,1) then
   fSupTaxRate := cdsSupplier.fieldbyname('fTaxRate').AsFloat;
end;

procedure TFM_BillEditPurInStock.cdsDetailAmountAfterInsert(
  DataSet: TDataSet);
begin
  inherited;
  strMatID := '';
  strColorID :='';
  StrCupID := '';
  StrpackID := '';
  if cdsMaster.FieldByName('FISINTAX').AsInteger =1 then
    DataSet.FieldByName('FTAXRATE').AsFloat := fSupTaxRate;
end;

procedure TFM_BillEditPurInStock.dbgList2Editing(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  var AAllow: Boolean);
begin
  inherited;
  if cdsMaster.FieldByName('FISINTAX').AsInteger=1 then
  begin
    if (FocuField='FACTUALTAXPRICE') or (uppercase(FocuField)=uppercase('Ftaxrate')) then
      AAllow :=True ;
    if FocuField='FACTUALPRICE' then
      AAllow := False;
  end
  else
  begin
    if (FocuField='FACTUALTAXPRICE') or (uppercase(FocuField)=uppercase('Ftaxrate')) then
      AAllow :=False;
    if FocuField='FACTUALPRICE' then
      AAllow := True;
  end;
  if fHasLocation=0 then
  begin
    if FocuField='CFLocName' then
      AAllow :=False;
  end;
end;

procedure TFM_BillEditPurInStock.girdListKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if tmpbtnEdit <> nil then
  if tmpbtnEdit.Name='cxbtnReceivWareNum' then
    fHasLocation := dsHeadSel.DataSet.FieldByName('fhaslocation').AsInteger;
end;

procedure TFM_BillEditPurInStock.girdListDblClick(Sender: TObject);
begin
  inherited;
  if tmpbtnEdit <> nil then
  if tmpbtnEdit.Name='cxbtnReceivWareNum' then
    fHasLocation := dsHeadSel.DataSet.FieldByName('fhaslocation').AsInteger;
end;

procedure TFM_BillEditPurInStock.cxPageDetailChange(Sender: TObject);
begin
  inherited;
  if cxPageDetail.ActivePage=cxTabTractDetail  then
  begin
    cdstracy.Data := cdsDetail.Data;
    OpenTracyDetail('');
  end;
end;

procedure TFM_BillEditPurInStock.cdsDetailAmountFACTUALTAXPRICEChange(
  Sender: TField);
  var
  Event,EventRate : TFieldNotifyEvent;
begin
  inherited;
  try
    Event := sender.DataSet.FieldByName('FACTUALPRICE').Onchange;
    EventRate := sender.DataSet.FieldByName('FDISCOUNTRATE').Onchange;
    sender.DataSet.FieldByName('FACTUALPRICE').Onchange := nil;
    sender.DataSet.FieldByName('FDISCOUNTRATE').Onchange := nil;
    sender.DataSet.FieldByName('FACTUALPRICE').AsFloat :=CliDM.SimpleRoundTo( Sender.AsFloat/(1+ Sender.DataSet.Fieldbyname('FTaxRate').AsFloat/100));
    if sender.DataSet.fieldbyname('FPRICE').AsFloat<>0 then
      Sender.DataSet.FieldByName('FDISCOUNTRATE').AsFloat :=CliDM.SimpleRoundTo( sender.DataSet.FieldByName('FACTUALPRICE').AsFloat/sender.DataSet.fieldbyname('FPRICE').AsFloat*100);
  finally
    sender.DataSet.FieldByName('FACTUALPRICE').Onchange := Event;
    sender.DataSet.FieldByName('FDISCOUNTRATE').Onchange := EventRate;
  end;
end;

procedure TFM_BillEditPurInStock.cdsDetailAmountFACTUALPRICEChange(
  Sender: TField);
  var
    Event,EventRate : TFieldNotifyEvent;
begin
  inherited;
  try
    Event := Sender.DataSet.FieldByName('FActualTaxPrice').OnChange ;
    EventRate := Sender.DataSet.FieldByName('FDISCOUNTRATE').OnChange ;
    Sender.DataSet.FieldByName('FActualTaxPrice').OnChange := nil;
    Sender.DataSet.FieldByName('FDISCOUNTRATE').OnChange := nil;
    if sender.DataSet.fieldbyname('FPRICE').AsFloat<>0 then
      Sender.DataSet.FieldByName('FDISCOUNTRATE').AsFloat := CliDM.SimpleRoundTo(sender.DataSet.FieldByName('FACTUALPRICE').AsFloat/sender.DataSet.fieldbyname('FPRICE').AsFloat*100);
    if cdsDetailAmount.FieldByName('ftaxRate').AsFloat =0 then
      Sender.DataSet.FieldByName('FActualTaxPrice').AsFloat := Sender.AsFloat ;
  finally
    Sender.DataSet.FieldByName('FActualTaxPrice').OnChange := Event;
    Sender.DataSet.FieldByName('FDISCOUNTRATE').OnChange := eventrate;
  end;
end;

procedure TFM_BillEditPurInStock.cdsDetailFQTYChange(Sender: TField);
begin
  inherited;
  Sender.DataSet.FieldByName('FBASEQTY').AsFloat := Sender.DataSet.fieldbyname('Fqty').AsFloat;
  Sender.DataSet.FieldByName('FReturnsQty').AsFloat := 0;
  Sender.DataSet.FieldByName('FUnWriteOffQty').AsFloat := Sender.DataSet.fieldbyname('Fqty').AsFloat;
  Sender.DataSet.FieldByName('FUnWriteOffBaseQty').AsFloat :=  Sender.DataSet.fieldbyname('Fqty').AsFloat;
  Sender.DataSet.FieldByName('FASSOCIATEQTY').AsFloat := Sender.DataSet.fieldbyname('Fqty').AsFloat;
end;

procedure TFM_BillEditPurInStock.cdsDetailBeforePost(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FUnWriteOffAmount').AsFloat := DataSet.fieldbyname('fAmount').AsFloat;
  DataSet.FieldByName('FWAREHOUSEID').AsString := cdsMaster.fieldbyname('CFINWAREHOUSEID').AsString;
end;

procedure TFM_BillEditPurInStock.cdsSupplierFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  inherited;
  if tmpbtnEdit<> nil then
  Accept:=((Pos(Trim(UpperCase(tmpbtnEdit.Text)),UpperCase(DataSet.fieldbyname('fnumber').AsString))>0) or
          (Pos(Trim(UpperCase(tmpbtnEdit.Text)),UpperCase(DataSet.fieldbyname('fname_l2').AsString))>0) or
          (Pos(Trim(UpperCase(tmpbtnEdit.Text)),UpperCase(DataSet.fieldbyname('FhelpCode').AsString))>0)) ;
end;

procedure TFM_BillEditPurInStock.cdswarehouseFilterRecord(
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

procedure TFM_BillEditPurInStock.cdsDetailAmountFDISCOUNTRATEChange(
  Sender: TField);
 var
    Event : TFieldNotifyEvent;
begin
  inherited;
  try
    Event := Sender.DataSet.fieldbyname('FACTUALPRICE').OnChange;
    Sender.DataSet.fieldbyname('FACTUALPRICE').OnChange := nil;
    Sender.DataSet.FieldByName('FACTUALPRICE').AsFloat := CliDM.SimpleRoundTo(Sender.AsFloat/100*Sender.DataSet.FieldByName('FPRICE').AsFloat);
  finally
    Sender.DataSet.fieldbyname('FACTUALPRICE').OnChange := Event;
  end;
end;

procedure TFM_BillEditPurInStock.dbgList2cfMaterialNumberPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  FindMaterial;
end;

procedure TFM_BillEditPurInStock.dbgList2CFColorCodePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  FindColor;
end;

procedure TFM_BillEditPurInStock.dbgList2CFCupNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  FindCup;
end;

procedure TFM_BillEditPurInStock.dbgList2CFPackNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  FindPack;
end;

procedure TFM_BillEditPurInStock.dbgList2CFLocNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  FindLocation(cdsMaster.fieldbyname('CFINWAREHOUSEID').AsString,'FLOCATIONID','CFLocName');
end;

procedure TFM_BillEditPurInStock.cdsDetailAmountBeforePost(
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
procedure TFM_BillEditPurInStock.calAmt(DataSet: TDataSet);
begin
  DataSet.FieldByName('FAmount').AsFloat := CliDM.SimpleRoundTo(DataSet.fieldbyname('fqty').AsFloat*DataSet.FieldByName('FACTUALPRICE').AsFloat); //金额
  DataSet.FieldByName('FTaxAmount').AsFloat := CliDM.SimpleRoundTo(DataSet.fieldbyname('fqty').AsFloat*DataSet.FieldByName('FACTUALTAXPRICE').AsFloat); //价税合计
  DataSet.FieldByName('FTax').AsFloat := CliDM.SimpleRoundTo(DataSet.fieldbyname('fqty').AsFloat*(DataSet.FieldByName('FACTUALTAXPRICE').AsFloat-DataSet.FieldByName('FACTUALPRICE').AsFloat)); //税额
  DataSet.FieldByName('FLocalAmount').AsFloat := DataSet.FieldByName('FAmount').AsFloat;
  DataSet.FieldByName('FLocalTax').AsFloat := DataSet.FieldByName('FTax').AsFloat;
  DataSet.FieldByName('FLocalTaxAmount').AsFloat := DataSet.FieldByName('FTaxAmount').AsFloat;
  Dataset.FieldByName('FTaxprice').AsFloat := DataSet.FieldByName('FACTUALTAXPRICE').AsFloat;
end;
procedure TFM_BillEditPurInStock.cdsDetailAmountCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FtaxAmount').AsFloat := DataSet.fieldbyname('fTotaLQty').AsFloat*DataSet.fieldbyname('FACTUALTAXPRICE').AsFloat;
  DataSet.FieldByName('Ftax').AsFloat := DataSet.FieldByName('FtaxAmount').AsFloat-dataset.fieldbyname('FAmount').AsFloat;
end;

procedure TFM_BillEditPurInStock.cdsDetailAmountCFPACKIDChange(
  Sender: TField);
begin
  inherited;
  if cdsDetailAmount.FieldByName('CFPackNum').AsInteger>0 then
    PackNumChang(cdsDetailAmount,cdsDetailAmount.FieldByName('CFSIZEGROUPID').AsString,cdsDetailAmount.fieldbyname('CFPackID').AsString);

end;

procedure TFM_BillEditPurInStock.cdsDetailAmountCFPACKNUMChange(
  Sender: TField);
begin
  inherited;
  if cdsDetailAmount.FieldByName('CFPackNum').AsInteger>0 then
    PackNumChang(cdsDetailAmount,cdsDetailAmount.FieldByName('CFSIZEGROUPID').AsString,cdsDetailAmount.fieldbyname('CFPackID').AsString);

end;

procedure TFM_BillEditPurInStock.cdsDetailAmountFtaxrateChange(
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

procedure TFM_BillEditPurInStock.btn_PackingListClick(Sender: TObject);
var PKContext : TPackingContext ;
begin
  inherited;
  if cdsMaster.FieldByName('CFINPUTWAY').AsString <> 'NOTPACK' then
  begin
    ShowMsg(self.Handle,'只有散码才可以使用装箱功能! ',[]);
    Abort;
  end;
  PKContext.IsBillOpen := True;
  PKContext.FBilltypeID:= Self.sBillTypeID;
  PKContext.CFSOURCENUMBER := cdsMaster.FieldByName('fnumber').AsString;
  PKContext.FSOURCEBILLID  := cdsMaster.FieldByName('FID').AsString;
  PKContext.SrcBillIsAudit := BillInfo.IsAduit;
  PKContext.CFWAREHOUSEID  := cdsMaster.FieldByName('CFINWAREHOUSEID').AsString;
  PKContext.FWAREHOUSEName := cdsMaster.FieldByName('CFReceivWareName').AsString;
  PKContext.CFSUPPLIERID  := cdsMaster.FieldByName('FSUPPLIERID').AsString;
  PKContext.SUPPLIERNAME := cdsMaster.FieldByName('CFSupplierName').AsString;
  CallPackingList(PKContext);
end;

procedure TFM_BillEditPurInStock.cdsMasterCFINWAREHOUSEIDChange(
  Sender: TField);
begin
  inherited;
  FOutWarehouseFID := Sender.AsString;
end;

procedure TFM_BillEditPurInStock.cxbtnNUmberKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  DelBtnEditValue(Key,'FSUPPLIERID');
end;

procedure TFM_BillEditPurInStock.cdsDetailAmountAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  //
end;
procedure TFM_BillEditPurInStock.AddDetailRecord;
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
        iMaxSeq := iMaxSeq+1;
        FieldByName('Fseq').AsInteger := iMaxSeq;
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
      fieldbyname('FTAXRATE').asFloat := cdsDetailAmount.fieldbyname('FTAXRATE').asfloat;
      fieldbyname('FACTUALTAXPRICE').asFloat := cdsDetailAmount.fieldbyname('FACTUALTAXPRICE').asfloat;
      fieldbyname('FDISCOUNTRATE').asFloat := cdsDetailAmount.fieldbyname('FDISCOUNTRATE').asfloat;
      fieldbyname('fremark').asstring := cdsDetailAmount.fieldbyname('fremark').AsString;

      fieldbyname('FBASEUNITID').AsString := cdsDetailAmount.FieldByName('FBASEUNITID').AsString ;
      //FieldByName('FDELIVERYDATE').AsDateTime := cdsMaster.fieldbyname('CFReceiveDate').AsDateTime;
      FieldByName('FWAREHOUSEID').AsString := cdsMaster.fieldbyname('CFINWAREHOUSEID').AsString;
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
procedure TFM_BillEditPurInStock.cdsDetailAmountBeforeEdit(
  DataSet: TDataSet);
begin
  inherited;
  strMatID := DataSet.Fieldbyname('FMaterialID').AsString;
  strColorID := DataSet.Fieldbyname('CFColorID').AsString;
  StrCupID := DataSet.Fieldbyname('CFCupID').AsString;
  StrPackID := DataSet.Fieldbyname('CFPackID').AsString;
end;

end.
