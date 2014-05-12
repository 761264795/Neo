unit uBillEditPurReceive;

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
  TFM_BillEditPurReceive = class(TFM_BillEditBase)
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
    cdsMasterFMODIFICATIONTIME: TDateTimeField;
    cdsMasterFMODIFIERID: TWideStringField;
    cdsMasterFCONVERTMODE: TFloatField;
    cdsMasterFISCENTRALBALANCE: TFloatField;
    cdsMasterFPURCHASETYPE: TFloatField;
    cdsMasterFCUSTOMERID: TWideStringField;
    cdsMasterFMONTH: TFloatField;
    cdsMasterFDAY: TFloatField;
    cdsMasterCFSUBBILLTYPE: TWideStringField;
    cdsMasterCFPRICETYPEID: TWideStringField;
    cdsMasterCFORDERTYPEID: TWideStringField;
    cdsMasterCFISCOMPLETED: TFloatField;
    cdsMasterCFORDERINGDEFID: TWideStringField;
    cdsMasterCFINPUTWAY: TWideStringField;
    cdsMasterCFRANGEID: TWideStringField;
    cdsMasterCFISPROCDUCT: TIntegerField;
    cdsMasterCFPURRECTYPEID: TWideStringField;
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
    cdsDetailFASSISTPROPERTYID: TWideStringField;
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
    cdsDetailFRECEIPTQTY: TFloatField;
    cdsDetailFPURORDERNUM: TWideStringField;
    cdsDetailFPURORDERENTRYSEQ: TFloatField;
    cdsDetailFEXP: TDateTimeField;
    cdsDetailFMFG: TDateTimeField;
    cdsDetailFREMARK: TWideStringField;
    cdsDetailFREVERSEBASEQTY: TFloatField;
    cdsDetailFRECEIPTBASEQTY: TFloatField;
    cdsDetailFRETURNBASEQTY: TFloatField;
    cdsDetailFORDERPRICE: TFloatField;
    cdsDetailFTAXPRICE: TFloatField;
    cdsDetailFACTUALPRICE: TFloatField;
    cdsDetailFISREQUESTTORECEIVED: TFloatField;
    cdsDetailFQUALIFIEDQTY: TFloatField;
    cdsDetailFUNQUALIFIEDQTY: TFloatField;
    cdsDetailFCONCESSIVERECQTY: TFloatField;
    cdsDetailFQUALIFIEDBASEQTY: TFloatField;
    cdsDetailFUNQUALIFIEDBASEQTY: TFloatField;
    cdsDetailFCONCESSIVERECBASEQTY: TFloatField;
    cdsDetailFBILLROWTYPEID: TWideStringField;
    cdsDetailFNONUMMATERIALNAME: TWideStringField;
    cdsDetailFTOFIXASSETSQTY: TFloatField;
    cdsDetailFUNTOFIXASSETSQTY: TFloatField;
    cdsDetailFPRODUCTTASKNUMBER: TWideStringField;
    cdsDetailFCOREBILLID: TWideStringField;
    cdsDetailFCOREBILLENTRYID: TWideStringField;
    cdsDetailFSUPPLIERLOTNO: TWideStringField;
    cdsDetailFNONUMMATERIALMODEL: TWideStringField;
    cdsDetailFCHECKRETURNEDQTY: TFloatField;
    cdsDetailFCHECKRETURNEDBASEQTY: TFloatField;
    cdsDetailFPURCHASEORGUNITID: TWideStringField;
    cdsDetailFQUALITYORGUNITID: TWideStringField;
    cdsDetailFISCHECK: TFloatField;
    cdsDetailFISURGENTPASS: TFloatField;
    cdsDetailFCHECKQTY: TFloatField;
    cdsDetailFUNCHECKQTY: TFloatField;
    cdsDetailFCHECKBASEQTY: TFloatField;
    cdsDetailFUNCHECKBASEQTY: TFloatField;
    cdsDetailFPURCONTRACTNUMBER: TWideStringField;
    cdsDetailFPURCONTRACTSEQ: TFloatField;
    cdsDetailFQISTANDARDID: TWideStringField;
    cdsDetailFPROJECTID: TWideStringField;
    cdsDetailFTRACKNUMBERID: TWideStringField;
    cdsDetailFCONTRACTNUMBER: TWideStringField;
    cdsDetailCFPACKID: TWideStringField;
    cdsDetailCFCOLORID: TWideStringField;
    cdsDetailCFPACKNUM: TFloatField;
    cdsDetailCFSIZESID: TWideStringField;
    cdsDetailCFCUPID: TWideStringField;
    cdsDetailCFSIZEGROUPID: TWideStringField;
    cdsDetailCFDISCOUNT: TFloatField;
    cdsDetailCFSRCSALESORDERID: TWideStringField;
    cdsDetailCFSRCSALESORDERENTRYID: TWideStringField;
    cdsDetailCFMUTILSOURCEBILL: TWideStringField;
    cdsDetailCFCHECKINPUTQTY: TFloatField;
    cdsDetailCFCHECKDIFFQTY: TFloatField;
    cdsDetailCFSTOPNUM: TFloatField;
    cdsDetailCFBOXQTY: TFloatField;
    cdsDetailAmountCFSIZEGROUPID: TWideStringField;
    cdsDetailAmountFBASEUNITID: TWideStringField;
    cdsDetailAmountcfMaterialNumber2: TStringField;
    cdsDetailAmountcfMaterialName2: TStringField;
    cdsDetailAmountCFColorName2: TStringField;
    cdsDetailAmountCFCupName2: TStringField;
    cdsDetailAmountCFPackName2: TStringField;
    cdsDetailAmountCFPACKNUM2: TFloatField;
    cdsDetailAmountFMATERIALID2: TWideStringField;
    cdsDetailAmountCFCOLORID2: TWideStringField;
    cdsDetailAmountCFCUPID2: TWideStringField;
    cdsDetailAmountCFDPPRICE2: TFloatField;
    cdsDetailAmountCFPACKID2: TStringField;
    cdsDetailAmountFDELIVERYDATE2: TDateTimeField;
    cdsDetailAmountfAmount_110: TFloatField;
    cdsDetailAmountfAmount_210: TFloatField;
    cdsDetailAmountfAmount_32: TFloatField;
    cdsDetailAmountfAmount_42: TFloatField;
    cdsDetailAmountfAmount_52: TFloatField;
    cdsDetailAmountfAmount_62: TFloatField;
    cdsDetailAmountfAmount_72: TFloatField;
    cdsDetailAmountfAmount_82: TFloatField;
    cdsDetailAmountfAmount_92: TFloatField;
    cdsDetailAmountfAmount_102: TFloatField;
    cdsDetailAmountfAmount_112: TFloatField;
    cdsDetailAmountfAmount_122: TFloatField;
    cdsDetailAmountfAmount_132: TFloatField;
    cdsDetailAmountfAmount_142: TFloatField;
    cdsDetailAmountfAmount_152: TFloatField;
    cdsDetailAmountfAmount_162: TFloatField;
    cdsDetailAmountfAmount_172: TFloatField;
    cdsDetailAmountfAmount_182: TFloatField;
    cdsDetailAmountfAmount_192: TFloatField;
    cdsDetailAmountfAmount_202: TFloatField;
    cdsDetailAmountfAmount_212: TFloatField;
    cdsDetailAmountfAmount_222: TFloatField;
    cdsDetailAmountfAmount_232: TFloatField;
    cdsDetailAmountfAmount_242: TFloatField;
    cdsDetailAmountfAmount_252: TFloatField;
    cdsDetailAmountfAmount_262: TFloatField;
    cdsDetailAmountfAmount_272: TFloatField;
    cdsDetailAmountfAmount_282: TFloatField;
    cdsDetailAmountfAmount_292: TFloatField;
    cdsDetailAmountfAmount_302: TFloatField;
    cdsDetailAmountFPRICE2: TFloatField;
    cdsDetailAmountFACTUALPRICE2: TFloatField;
    cdsDetailAmountFDISCOUNTRATE2: TFloatField;
    cdsDetailAmountCFColorCode2: TStringField;
    cdsDetailAmountCFBrandName2: TWideStringField;
    cdsDetailAmountcfattributeName2: TWideStringField;
    cdsDetailAmountCfbrandid2: TWideStringField;
    cdsDetailAmountcfattributeid2: TWideStringField;
    cdsDetailAmountFAmount: TFloatField;
    cdsDetailAmountfTotalQty: TFloatField;
    cxLabel2: TcxLabel;
    cxbtnedtRecType: TcxDBLookupComboBox;
    cxLabel3: TcxLabel;
    cxbtnedtScopetype: TcxDBLookupComboBox;
    cdsMasterCFSupplierName: TStringField;
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
    dbgList2FAmount: TcxGridDBColumn;
    dbgList2fTotalQty: TcxGridDBColumn;
    cxLabel4: TcxLabel;
    cxbtnPO: TcxButtonEdit;
    cdsMasterCFINWAREHOUSEID: TWideStringField;
    cdsMasterCFInWareName: TStringField;
    cxLabel7: TcxLabel;
    cxbtnReceivWareNum: TcxButtonEdit;
    cxbtnReceivWareName: TcxDBTextEdit;
    dsPurRecType: TDataSource;
    dsRange: TDataSource;
    cdsDetailAmountFLOCATIONID: TWideStringField;
    cdsDetailAmountCFLocName: TStringField;
    cdsDetailAmountCFUnitName: TStringField;
    cdsDetailAmountFRemark: TWideStringField;
    dbgList2CFLocName: TcxGridDBColumn;
    dbgList2CFUnitName: TcxGridDBColumn;
    dbgList2FRemark: TcxGridDBColumn;
    cdsSupplier: TClientDataSet;
    cdsSupplierFID: TWideStringField;
    cdsSupplierfnumber: TWideStringField;
    cdsSupplierfname_l2: TWideStringField;
    cdsSupplierFinternalCompanyID: TWideStringField;
    cdsSupplierFtaxRate: TFloatField;
    cdsSupplierFHelpCode: TWideStringField;
    cdswarehouse: TClientDataSet;
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
    cdsDetailTracyFASSISTPROPERTYID: TWideStringField;
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
    cdsDetailTracyFRECEIPTQTY: TFloatField;
    cdsDetailTracyFPURORDERNUM: TWideStringField;
    cdsDetailTracyFPURORDERENTRYSEQ: TFloatField;
    cdsDetailTracyFEXP: TDateTimeField;
    cdsDetailTracyFMFG: TDateTimeField;
    cdsDetailTracyFREMARK: TWideStringField;
    cdsDetailTracyFREVERSEBASEQTY: TFloatField;
    cdsDetailTracyFRECEIPTBASEQTY: TFloatField;
    cdsDetailTracyFRETURNBASEQTY: TFloatField;
    cdsDetailTracyFORDERPRICE: TFloatField;
    cdsDetailTracyFTAXPRICE: TFloatField;
    cdsDetailTracyFACTUALPRICE: TFloatField;
    cdsDetailTracyFISREQUESTTORECEIVED: TFloatField;
    cdsDetailTracyFQUALIFIEDQTY: TFloatField;
    cdsDetailTracyFUNQUALIFIEDQTY: TFloatField;
    cdsDetailTracyFCONCESSIVERECQTY: TFloatField;
    cdsDetailTracyFQUALIFIEDBASEQTY: TFloatField;
    cdsDetailTracyFUNQUALIFIEDBASEQTY: TFloatField;
    cdsDetailTracyFCONCESSIVERECBASEQTY: TFloatField;
    cdsDetailTracyFBILLROWTYPEID: TWideStringField;
    cdsDetailTracyFNONUMMATERIALNAME: TWideStringField;
    cdsDetailTracyFTOFIXASSETSQTY: TFloatField;
    cdsDetailTracyFUNTOFIXASSETSQTY: TFloatField;
    cdsDetailTracyFPRODUCTTASKNUMBER: TWideStringField;
    cdsDetailTracyFCOREBILLID: TWideStringField;
    cdsDetailTracyFCOREBILLENTRYID: TWideStringField;
    cdsDetailTracyFSUPPLIERLOTNO: TWideStringField;
    cdsDetailTracyFNONUMMATERIALMODEL: TWideStringField;
    cdsDetailTracyFCHECKRETURNEDQTY: TFloatField;
    cdsDetailTracyFCHECKRETURNEDBASEQTY: TFloatField;
    cdsDetailTracyFPURCHASEORGUNITID: TWideStringField;
    cdsDetailTracyFQUALITYORGUNITID: TWideStringField;
    cdsDetailTracyFISCHECK: TFloatField;
    cdsDetailTracyFISURGENTPASS: TFloatField;
    cdsDetailTracyFCHECKQTY: TFloatField;
    cdsDetailTracyFUNCHECKQTY: TFloatField;
    cdsDetailTracyFCHECKBASEQTY: TFloatField;
    cdsDetailTracyFUNCHECKBASEQTY: TFloatField;
    cdsDetailTracyFPURCONTRACTNUMBER: TWideStringField;
    cdsDetailTracyFPURCONTRACTSEQ: TFloatField;
    cdsDetailTracyFQISTANDARDID: TWideStringField;
    cdsDetailTracyFPROJECTID: TWideStringField;
    cdsDetailTracyFTRACKNUMBERID: TWideStringField;
    cdsDetailTracyFCONTRACTNUMBER: TWideStringField;
    cdsDetailTracyCFPACKID: TWideStringField;
    cdsDetailTracyCFCOLORID: TWideStringField;
    cdsDetailTracyCFPACKNUM: TFloatField;
    cdsDetailTracyCFSIZESID: TWideStringField;
    cdsDetailTracyCFCUPID: TWideStringField;
    cdsDetailTracyCFSIZEGROUPID: TWideStringField;
    cdsDetailTracyCFDISCOUNT: TFloatField;
    cdsDetailTracyCFSRCSALESORDERID: TWideStringField;
    cdsDetailTracyCFSRCSALESORDERENTRYID: TWideStringField;
    cdsDetailTracyCFMUTILSOURCEBILL: TWideStringField;
    cdsDetailTracyCFCHECKINPUTQTY: TFloatField;
    cdsDetailTracyCFCHECKDIFFQTY: TFloatField;
    cdsDetailTracyCFSTOPNUM: TFloatField;
    cdsDetailTracyCFBOXQTY: TFloatField;
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
    cdsDetailTracyCFNUitName: TStringField;
    cdsDetailTracyCFSizeCode: TWideStringField;
    cdsDetailTracyCFSizeName: TWideStringField;
    cxgridDetialFSEQ: TcxGridDBColumn;
    cxgridDetialFQTY: TcxGridDBColumn;
    cxgridDetialFPRICE: TcxGridDBColumn;
    cxgridDetialFAMOUNT: TcxGridDBColumn;
    cxgridDetialFREMARK: TcxGridDBColumn;
    cxgridDetialFACTUALPRICE: TcxGridDBColumn;
    cxgridDetialCFPACKNUM: TcxGridDBColumn;
    cxgridDetialCFDISCOUNT: TcxGridDBColumn;
    cxgridDetialCFCHECKINPUTQTY: TcxGridDBColumn;
    cxgridDetialCFCHECKDIFFQTY: TcxGridDBColumn;
    cxgridDetialcfMaterialNumber: TcxGridDBColumn;
    cxgridDetialcfMaterialName: TcxGridDBColumn;
    cxgridDetialCFColorCode: TcxGridDBColumn;
    cxgridDetialCFColorName: TcxGridDBColumn;
    cxgridDetialCFCupName: TcxGridDBColumn;
    cxgridDetialCFPackName: TcxGridDBColumn;
    cxgridDetialCFBrandName: TcxGridDBColumn;
    cxgridDetialcfattributeName: TcxGridDBColumn;
    cxgridDetialCFLocName: TcxGridDBColumn;
    cxgridDetialCFNUitName: TcxGridDBColumn;
    cxgridDetialCFSizeCode: TcxGridDBColumn;
    cxgridDetialCFSizeName: TcxGridDBColumn;
    cxgridDetialFRECEIPTQTY: TcxGridDBColumn;
    cdsDetailCFDPPRICE: TFloatField;
    cdsDetailTracyCFDPPRICE: TFloatField;
    cxgridDetialCFDPPRICE: TcxGridDBColumn;
    cdsMasterCFModifierName: TStringField;
    cdsMasterFCreatorName: TStringField;
    cdsMasterFAuditorName: TStringField;
    cdstracyFID: TWideStringField;
    cdstracyFSEQ: TFloatField;
    cdstracyFBASESTATUS: TFloatField;
    cdstracyFMATERIALID: TWideStringField;
    cdstracyFBASEUNITID: TWideStringField;
    cdstracyFLOCATIONID: TWideStringField;
    cdstracyFQTY: TFloatField;
    cdstracyFPRICE: TFloatField;
    cdstracyFAMOUNT: TFloatField;
    cdstracyFPARENTID: TWideStringField;
    cdstracyFRECEIPTQTY: TFloatField;
    cdstracyFREMARK: TWideStringField;
    cdstracyFACTUALPRICE: TFloatField;
    cdstracyCFPACKID: TWideStringField;
    cdstracyCFCOLORID: TWideStringField;
    cdstracyCFPACKNUM: TFloatField;
    cdstracyCFSIZESID: TWideStringField;
    cdstracyCFCUPID: TWideStringField;
    cdstracyCFSIZEGROUPID: TWideStringField;
    cdstracyCFDISCOUNT: TFloatField;
    cdstracyCFCHECKINPUTQTY: TFloatField;
    cdstracyCFCHECKDIFFQTY: TFloatField;
    cdstracyCFSTOPNUM: TFloatField;
    cdstracyCFDPPRICE: TFloatField;
    procedure cdsDetailNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure btnKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnExit(Sender: TObject);
    procedure btnEnter(Sender: TObject);
    procedure cxbtnNUmberPropertiesChange(Sender: TObject);
    procedure cxbtnReceivWareNumPropertiesChange(Sender: TObject);
    procedure cdsMasterCalcFields(DataSet: TDataSet);
    procedure cxbtnNUmberPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxbtnReceivWareNumPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormShow(Sender: TObject);
    procedure cdsDetailBeforePost(DataSet: TDataSet);
    procedure cxPageDetailChange(Sender: TObject);
    procedure cdsDetailAmountCFPACKNUM2Change(Sender: TField);
    procedure cdsDetailAmountCFPACKID2Change(Sender: TField);
    procedure cdsDetailAmountFDISCOUNTRATE2Change(Sender: TField);
    procedure dbgList2CFLocNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cdsDetailAmountBeforePost(DataSet: TDataSet);
    procedure dbgList2Editing(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure girdListDblClick(Sender: TObject);
    procedure girdListKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cdsDetailAmountFACTUALPRICE2Change(Sender: TField);
    procedure cdsSupplierFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure cdswarehouseFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure cdsMasterCFINWAREHOUSEIDChange(Sender: TField);
    procedure cdsDetailAmountAfterPost(DataSet: TDataSet);
    procedure cdsDetailAmountAfterInsert(DataSet: TDataSet);
    procedure cdsDetailAmountBeforeEdit(DataSet: TDataSet);
  private
    { Private declarations }
    procedure calAmt(DataSet: TDataSet);override;
  public
    { Public declarations }
    procedure Open_Bill(KeyFields: String; KeyValues: String); override;
        //保存单据
    function ST_Save : Boolean; override;
    procedure AddDetailRecord;override;
  end;

var
  FM_BillEditPurReceive: TFM_BillEditPurReceive;

implementation
uses FrmCliDM,Pub_Fun,uMaterDataSelectHelper;
{$R *.dfm}
procedure TFM_BillEditPurReceive.Open_Bill(KeyFields, KeyValues: String);
var OpenTables: array[0..1] of string;
    _cds: array[0..1] of TClientDataSet;
    ErrMsg,FBIZTYPEID,strsql : string;
begin
  if Trim(KeyValues)='' then
    strsql := ' select * from t_Im_Purreceivalbill where 1<>1 '
  else
    strsql := ' select * from t_Im_Purreceivalbill where FID='+quotedstr(KeyValues);
  OpenTables[0] := strsql;
  if Trim(KeyValues)='' then
    strsql := ' select * from t_Im_Purreceivalentry where 1<>1 '
  else
    strsql := ' select * from t_Im_Purreceivalentry where FparentID='+quotedstr(KeyValues);
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
    with cdsMaster do
    begin
      Append;
      FieldByName('FID').AsString := CliDM.GetEASSID('15F2BD83');
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
      FieldByName('FbiztypeID').AsString := 'd8e80652-0106-1000-e000-04c5c0a812202407435C'; //业务类型
    //  FieldByName('FCurrencyID').AsString := BillConst.FCurrency;
    //  FieldByName('FPaymentTypeID').AsString := BillConst.FPaymentType;
      FieldByName('FBillTypeID').AsString := BillConst.BILLTYPE_PT;
      FieldByName('CFISPROCDUCT').AsFloat := 0;
      FieldByName('CFINPUTWAY').AsString :=  'NOTPACK';
    end;
  end;
  inherited;
end;
function TFM_BillEditPurReceive.ST_Save : Boolean;
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
    if CliDM.Apply_Delta_Ex(_cds,['t_Im_Purreceivalbill','t_Im_Purreceivalentry'],ErrMsg) then
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
procedure TFM_BillEditPurReceive.cdsDetailNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FID').AsString := CliDM.GetEASSID('A8919E76');
  DataSet.FieldByName('FPurchaseOrgUnitID').AsString := UserInfo.Branch_ID;
  DataSet.FieldByName('FStorageOrgUnitID').AsString := UserInfo.Branch_ID;
  DataSet.FieldByName('FCompanyOrgUnitID').AsString := UserInfo.Branch_ID;
  DataSet.FieldByName('FWAREHOUSEID').AsString := cdsMaster.fieldbyname('CFINWAREHOUSEID').AsString;
  DataSet.FieldByName('fparentID').AsString := cdsMaster.fieldbyname('FID').AsString;
end;

procedure TFM_BillEditPurReceive.FormCreate(Sender: TObject);
begin
  sBillTypeID := BillConst.BILLTYPE_PR;  //单据类型FID
  inherited;
  sKeyFields := 'FmaterialID;CFColorID;CFCupID;CFpackID;FLOCATIONID';
  Self.Bill_Sign := 'T_IM_PurReceivalBill';
  Self.BillEntryTable := 'T_IM_PurReceivalEntry';
  cdsSupplier.Data := CliDM.cdsSupplier.Data; //供应商
  cdswarehouse.Data := CliDM.cdsWarehouse.Data;//仓库
end;

procedure TFM_BillEditPurReceive.btnKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  //
end;

procedure TFM_BillEditPurReceive.btnExit(Sender: TObject);
begin
  inherited;
  //
end;

procedure TFM_BillEditPurReceive.btnEnter(Sender: TObject);
begin
  inherited;
  //
end;

procedure TFM_BillEditPurReceive.cxbtnNUmberPropertiesChange(
  Sender: TObject);
begin
  inherited;
  girdList.hint :='FSUPPLIERID';
  HeadAutoSelIDchange(cdsSupplier,'');
end;

procedure TFM_BillEditPurReceive.cxbtnReceivWareNumPropertiesChange(
  Sender: TObject);
begin
  inherited;
  girdList.hint :='CFINWAREHOUSEID';
  HeadAutoSelIDchange(cdswarehouse,'');
end;

procedure TFM_BillEditPurReceive.cdsMasterCalcFields(DataSet: TDataSet);
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
    if DataSet.FindField('CFInWareName')<> nil then
    begin
      if FindRecord1(CliDM.cdsWarehouse,'FID',DataSet.fieldbyname('CFINWAREHOUSEID').AsString,1) then
      begin
        DataSet.FieldByName('CFInWareName').AsString := CliDM.cdsWarehouse.fieldbyname('Fname_l2').AsString;
        cxbtnReceivWareNum.Text := CliDM.cdsWarehouse.fieldbyname('Fnumber').AsString;
      end;
    end;
  finally
    if tmpbtnEdit <> nil then
      tmpbtnEdit.Properties.OnChange :=event;
  end;
end;

procedure TFM_BillEditPurReceive.cxbtnNUmberPropertiesButtonClick(
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

procedure TFM_BillEditPurReceive.cxbtnReceivWareNumPropertiesButtonClick(
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

procedure TFM_BillEditPurReceive.FormShow(Sender: TObject);
begin
  inherited;
  sIniBillFlag := 'PT';
  sSPPack := 'SCM';
end;

procedure TFM_BillEditPurReceive.cdsDetailBeforePost(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FWAREHOUSEID').AsString := cdsMaster.fieldbyname('CFINWAREHOUSEID').AsString;
end;

procedure TFM_BillEditPurReceive.cxPageDetailChange(Sender: TObject);
begin
  inherited;
  if cxPageDetail.ActivePage=cxTabTractDetail  then
  begin
    cdstracy.Data := cdsDetail.Data;
    OpenTracyDetail('',False);
  end;
end;

procedure TFM_BillEditPurReceive.cdsDetailAmountCFPACKNUM2Change(
  Sender: TField);
begin
  inherited;
  if cdsDetailAmount.FieldByName('CFPackNum').AsInteger>0 then
     PackNumChang(cdsDetailAmount,cdsDetailAmount.FieldByName('CFSIZEGROUPID').AsString,cdsDetailAmount.fieldbyname('CFPackID').AsString);

end;

procedure TFM_BillEditPurReceive.cdsDetailAmountCFPACKID2Change(
  Sender: TField);
begin
  inherited;
  if cdsDetailAmount.FieldByName('CFPackNum').AsInteger>0 then
    PackNumChang(cdsDetailAmount,cdsDetailAmount.FieldByName('CFSIZEGROUPID').AsString,cdsDetailAmount.fieldbyname('CFPackID').AsString);

end;

procedure TFM_BillEditPurReceive.cdsDetailAmountFDISCOUNTRATE2Change(
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

procedure TFM_BillEditPurReceive.dbgList2CFLocNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  FindLocation(cdsMaster.fieldbyname('CFINWAREHOUSEID').AsString,'FLOCATIONID','CFLocName');
end;

procedure TFM_BillEditPurReceive.cdsDetailAmountBeforePost(
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

procedure TFM_BillEditPurReceive.dbgList2Editing(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  var AAllow: Boolean);
begin
  inherited;
  if fHasLocation=0 then
  begin
    if FocuField='CFLocName' then
      AAllow :=False;
  end;
end;

procedure TFM_BillEditPurReceive.girdListDblClick(Sender: TObject);
begin
  inherited;
  if tmpbtnEdit <> nil then
  if tmpbtnEdit.Name='cxbtnReceivWareNum' then
    fHasLocation := dsHeadSel.DataSet.FieldByName('fhaslocation').AsInteger;
end;

procedure TFM_BillEditPurReceive.girdListKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if tmpbtnEdit <> nil then
  if tmpbtnEdit.Name='cxbtnReceivWareNum' then
    fHasLocation := dsHeadSel.DataSet.FieldByName('fhaslocation').AsInteger;
end;

procedure TFM_BillEditPurReceive.cdsDetailAmountFACTUALPRICE2Change(
  Sender: TField);
var
    Event,EventRate : TFieldNotifyEvent;
begin
  inherited;
  try
    EventRate := Sender.DataSet.FieldByName('CFDISCOUNT').OnChange ;
    //Sender.DataSet.FieldByName('FActualTaxPrice').OnChange := nil;
    Sender.DataSet.FieldByName('CFDISCOUNT').OnChange := nil;
    if sender.DataSet.fieldbyname('FPRICE').AsFloat<>0 then
      Sender.DataSet.FieldByName('CFDISCOUNT').AsFloat := CliDM.SimpleRoundTo(sender.DataSet.FieldByName('FACTUALPRICE').AsFloat/sender.DataSet.fieldbyname('FPRICE').AsFloat*100);
  finally
    Sender.DataSet.FieldByName('CFDISCOUNT').OnChange := EventRate;
  end;

end;

procedure TFM_BillEditPurReceive.cdsSupplierFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  inherited;
  if tmpbtnEdit<> nil then
  Accept:=((Pos(Trim(UpperCase(tmpbtnEdit.Text)),UpperCase(DataSet.fieldbyname('fnumber').AsString))>0) or
          (Pos(Trim(UpperCase(tmpbtnEdit.Text)),UpperCase(DataSet.fieldbyname('fname_l2').AsString))>0) or
          (Pos(Trim(UpperCase(tmpbtnEdit.Text)),UpperCase(DataSet.fieldbyname('FhelpCode').AsString))>0)) ;
end;

procedure TFM_BillEditPurReceive.cdswarehouseFilterRecord(
  DataSet: TDataSet; var Accept: Boolean);
begin
  inherited;
  if tmpbtnEdit<> nil then
  Accept:=((Pos(Trim(UpperCase(tmpbtnEdit.Text)),UpperCase(DataSet.fieldbyname('fnumber').AsString))>0) or
          (Pos(Trim(UpperCase(tmpbtnEdit.Text)),UpperCase(DataSet.fieldbyname('fname_l2').AsString))>0) or
          (Pos(Trim(UpperCase(tmpbtnEdit.Text)),UpperCase(DataSet.fieldbyname('FhelpCode').AsString))>0)) ;
end;
procedure TFM_BillEditPurReceive.calAmt(DataSet: TDataSet);
begin
  DataSet.FieldByName('FAmount').AsFloat := CliDM.SimpleRoundTo(DataSet.fieldbyname('fqty').AsFloat*DataSet.FieldByName('FACTUALPRICE').AsFloat); //金额
  Dataset.FieldByName('FTaxprice').AsFloat := DataSet.FieldByName('FACTUALPRICE').AsFloat;
end;
procedure TFM_BillEditPurReceive.cdsMasterCFINWAREHOUSEIDChange(
  Sender: TField);
begin
  inherited;
  FOutWarehouseFID := Sender.AsString;
end;
procedure TFM_BillEditPurReceive.AddDetailRecord;
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

      fieldbyname('CFDISCOUNT').asFloat := cdsDetailAmount.fieldbyname('CFDISCOUNT').asfloat;
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
procedure TFM_BillEditPurReceive.cdsDetailAmountAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  ///
end;

procedure TFM_BillEditPurReceive.cdsDetailAmountAfterInsert(
  DataSet: TDataSet);
begin
  inherited;
  strMatID := '';
  strColorID :='';
  StrCupID := '';
  StrpackID := '';
end;

procedure TFM_BillEditPurReceive.cdsDetailAmountBeforeEdit(
  DataSet: TDataSet);
begin
  inherited;
  strMatID := DataSet.Fieldbyname('FMaterialID').AsString;
  strColorID := DataSet.Fieldbyname('CFColorID').AsString;
  StrCupID := DataSet.Fieldbyname('CFCupID').AsString;
  StrPackID := DataSet.Fieldbyname('CFPackID').AsString;
end;

end.
