unit uBillEditSaleOrder;

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
  TFM_BillEditSaleOrder = class(TFM_BillEditBase)
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxcmbOrderType: TcxDBLookupComboBox;
    cxcmbpriceType: TcxDBLookupComboBox;
    cxLabel4: TcxLabel;
    Label7: TLabel;
    cxLabel5: TcxLabel;
    cxbtnSendWareNum: TcxButtonEdit;
    cxbtnSendWareName: TcxDBTextEdit;
    cxLabel6: TcxLabel;
    cxbtnReceivOrgNum: TcxButtonEdit;
    CFReceivOrgName: TcxDBTextEdit;
    cxLabel7: TcxLabel;
    cxbtnReceivWareNum: TcxButtonEdit;
    cxbtnReceivWareName: TcxDBTextEdit;
    cxDelivery: TcxDBDateEdit;
    cdsMasterCFCustName: TStringField;
    cdsMasterCFSendWareName: TStringField;
    cdsMasterCFReceivOrgName: TStringField;
    cdsMasterCFReceivWareName: TStringField;
    cdsMasterCFSalorName: TStringField;
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
    cdsDetailAmountfremark: TWideStringField;
    cdsMasterFID: TWideStringField;
    cdsMasterFCREATORID: TWideStringField;
    cdsMasterFCREATETIME: TDateTimeField;
    cdsMasterFMODIFIERID: TWideStringField;
    cdsMasterFMODIFICATIONTIME: TDateTimeField;
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
    cdsMasterFISINNERSALE: TFloatField;
    cdsMasterFCUSTOMERORDERNUMBER: TWideStringField;
    cdsMasterFORDERCUSTOMERID: TWideStringField;
    cdsMasterFDIRECTSUPPLIERID: TWideStringField;
    cdsMasterFPURCHASEORGUNITID: TWideStringField;
    cdsMasterFDELIVERYTYPEID: TWideStringField;
    cdsMasterFTRANSLEADTIME: TFloatField;
    cdsMasterFCURRENCYID: TWideStringField;
    cdsMasterFEXCHANGERATE: TFloatField;
    cdsMasterFPAYMENTTYPEID: TWideStringField;
    cdsMasterFCASHDISCOUNTID: TWideStringField;
    cdsMasterFSETTLEMENTTYPEID: TWideStringField;
    cdsMasterFPREPAYMENT: TFloatField;
    cdsMasterFPREPAYMENTRATE: TFloatField;
    cdsMasterFSALEORGUNITID: TWideStringField;
    cdsMasterFSALEGROUPID: TWideStringField;
    cdsMasterFSALEPERSONID: TWideStringField;
    cdsMasterFADMINORGUNITID: TWideStringField;
    cdsMasterFTOTALAMOUNT: TFloatField;
    cdsMasterFTOTALTAX: TFloatField;
    cdsMasterFTOTALTAXAMOUNT: TFloatField;
    cdsMasterFPRERECEIVED: TFloatField;
    cdsMasterFUNPRERECEIVEDAMOUNT: TFloatField;
    cdsMasterFSENDADDRESS: TWideStringField;
    cdsMasterFISSYSBILL: TFloatField;
    cdsMasterFCONVERTMODE: TFloatField;
    cdsMasterFLOCALTOTALAMOUNT: TFloatField;
    cdsMasterFLOCALTOTALTAXAMOUNT: TFloatField;
    cdsMasterFCOMPANYORGUNITID: TWideStringField;
    cdsMasterFISINTAX: TFloatField;
    cdsMasterFCUSTOMERPHONE: TWideStringField;
    cdsMasterFLINKMAN: TWideStringField;
    cdsMasterFALTERDATE: TDateTimeField;
    cdsMasterFVERSION: TFloatField;
    cdsMasterFOLDSTATUS: TFloatField;
    cdsMasterFOLDID: TWideStringField;
    cdsMasterFALTERPERSON: TWideStringField;
    cdsMasterFISCENTRALBALANCE: TFloatField;
    cdsMasterFSTORAGEORGUNITID: TWideStringField;
    cdsMasterFISREVERSE: TFloatField;
    cdsMasterFBEENPAIDPREPAYMENT: TFloatField;
    cdsMasterFRECEIVECONDITIONID: TWideStringField;
    cdsMasterFWAREHOUSEID: TWideStringField;
    cdsMasterFISMATCHED: TFloatField;
    cdsMasterFISSQUAREBALANCE: TFloatField;
    cdsMasterFBALANCECOMPANYORGUNITID: TWideStringField;
    cdsMasterFBALANCESALEORGUNITID: TWideStringField;
    cdsMasterFBALANCESTORAGEORGUNITID: TWideStringField;
    cdsMasterFBALANCEWAREHOUSEID: TWideStringField;
    cdsMasterCFTYPINFORMATION: TWideStringField;
    cdsMasterCFPRICETYPEID: TWideStringField;
    cdsMasterCFSUBBILLTYPE: TWideStringField;
    cdsMasterCFORDERTYPEID: TWideStringField;
    cdsMasterCFRECEIVESTOREUNIT: TWideStringField;
    cdsMasterCFORDERINGDEFID: TWideStringField;
    cdsMasterCFINWAREHOUSEID: TWideStringField;
    cdsMasterCFINPUTWAY: TWideStringField;
    cdsMasterCFSALETYPE: TWideStringField;
    cdsMasterCFDELIVERYDATE: TDateTimeField;
    cdsDetailFID: TWideStringField;
    cdsDetailFSEQ: TFloatField;
    cdsDetailFMATERIALID: TWideStringField;
    cdsDetailFASSISTPROPERTYID: TWideStringField;
    cdsDetailFUNITID: TWideStringField;
    cdsDetailFSOURCEBILLNUMBER: TWideStringField;
    cdsDetailFSOURCEBILLENTRYSEQ: TFloatField;
    cdsDetailFASSCOEFFICIENT: TFloatField;
    cdsDetailFBASESTATUS: TFloatField;
    cdsDetailFASSOCIATEQTY: TFloatField;
    cdsDetailFSOURCEBILLTYPEID: TWideStringField;
    cdsDetailFBASEUNITID: TWideStringField;
    cdsDetailFASSISTUNITID: TWideStringField;
    cdsDetailFREMARK: TWideStringField;
    cdsDetailFREASONCODEID: TWideStringField;
    cdsDetailFISPRESENT: TFloatField;
    cdsDetailFBASEQTY: TFloatField;
    cdsDetailFQTY: TFloatField;
    cdsDetailFASSISTQTY: TFloatField;
    cdsDetailFPRICE: TFloatField;
    cdsDetailFTAXPRICE: TFloatField;
    cdsDetailFDISCOUNTCONDITION: TFloatField;
    cdsDetailFDISCOUNTTYPE: TFloatField;
    cdsDetailFDISCOUNT: TFloatField;
    cdsDetailFDISCOUNTAMOUNT: TFloatField;
    cdsDetailFAMOUNT: TFloatField;
    cdsDetailFLOCALAMOUNT: TFloatField;
    cdsDetailFACTUALPRICE: TFloatField;
    cdsDetailFACTUALTAXPRICE: TFloatField;
    cdsDetailFTAXRATE: TFloatField;
    cdsDetailFTAX: TFloatField;
    cdsDetailFTAXAMOUNT: TFloatField;
    cdsDetailFSENDDATE: TDateTimeField;
    cdsDetailFDELIVERYDATE: TDateTimeField;
    cdsDetailFSTORAGEORGUNITID: TWideStringField;
    cdsDetailFCOMPANYORGUNITID: TWideStringField;
    cdsDetailFWAREHOUSEID: TWideStringField;
    cdsDetailFSENDOVERRATE: TFloatField;
    cdsDetailFSENDOWINGRATE: TFloatField;
    cdsDetailFSENDADVANCEDAY: TFloatField;
    cdsDetailFSENDDEFERRALDAY: TFloatField;
    cdsDetailFTOTALISSUEQTY: TFloatField;
    cdsDetailFTOTALRETURNEDQTY: TFloatField;
    cdsDetailFTOTALINVOICEDQTY: TFloatField;
    cdsDetailFTOTALSHIPPINGQTY: TFloatField;
    cdsDetailFTOTALRECEIVEDAMOUNT: TFloatField;
    cdsDetailFPARENTID: TWideStringField;
    cdsDetailFTOTALISSUEBASEQTY: TFloatField;
    cdsDetailFTOTALSHIPBASEQTY: TFloatField;
    cdsDetailFTOTALUNISSUEBASEQTY: TFloatField;
    cdsDetailFTOTALUNSHIPBASEQTY: TFloatField;
    cdsDetailFTOTALUNISSUEQTY: TFloatField;
    cdsDetailFISLOCKED: TFloatField;
    cdsDetailFLOCKQTY: TFloatField;
    cdsDetailFLOCKBASEQTY: TFloatField;
    cdsDetailFLOCALTAX: TFloatField;
    cdsDetailFLOCALTAXAMOUNT: TFloatField;
    cdsDetailFISBYSALEORDER: TFloatField;
    cdsDetailFORDEREDQTY: TFloatField;
    cdsDetailFUNORDEREDQTY: TFloatField;
    cdsDetailFPREPAYMENTRATE: TFloatField;
    cdsDetailFPREPAYMENT: TFloatField;
    cdsDetailFPRERECEIVED: TFloatField;
    cdsDetailFUNPRERECEIVEDAMOUNT: TFloatField;
    cdsDetailFQUANTITYUNCTRL: TFloatField;
    cdsDetailFTIMEUNCTRL: TFloatField;
    cdsDetailFDELIVERYDATEQTY: TFloatField;
    cdsDetailFREASON: TWideStringField;
    cdsDetailFTOTALINVOICEDAMT: TFloatField;
    cdsDetailFTOTALARAMOUNT: TFloatField;
    cdsDetailFVERSION: TFloatField;
    cdsDetailFOLDSTATUS: TFloatField;
    cdsDetailFOLDID: TWideStringField;
    cdsDetailFISBETWEENCOMPANYSEND: TFloatField;
    cdsDetailFTOTALREVERSEDQTY: TFloatField;
    cdsDetailFTOTALREVERSEDBASEQTY: TFloatField;
    cdsDetailFPLANDELIVERYQTY: TFloatField;
    cdsDetailFTOTALCANCELLINGSTOCKQTY: TFloatField;
    cdsDetailFTOTALSUPPLYSTOCKQTY: TFloatField;
    cdsDetailFDELIVERYCUSTOMERID: TWideStringField;
    cdsDetailFPAYMENTCUSTOMERID: TWideStringField;
    cdsDetailFRECEIVECUSTOMERID: TWideStringField;
    cdsDetailFSENDADDRESS: TWideStringField;
    cdsDetailFARCLOSEDSTATUS: TFloatField;
    cdsDetailFSOURCEBILLID: TWideStringField;
    cdsDetailFSOURCEBILLENTRYID: TWideStringField;
    cdsDetailFNETORDERBILLNUMBER: TWideStringField;
    cdsDetailFNETORDERBILLID: TWideStringField;
    cdsDetailFNETORDERBILLENTRYID: TWideStringField;
    cdsDetailFTOTALPRODUCTQTY: TFloatField;
    cdsDetailFTOTALBASEPRODUCTQTY: TFloatField;
    cdsDetailFTOTALUNPRODUCTQTY: TFloatField;
    cdsDetailFTOTALBASEUNPRODUCTQTY: TFloatField;
    cdsDetailFMATCHEDAMOUNT: TFloatField;
    cdsDetailFLOCKASSISTQTY: TFloatField;
    cdsDetailFCHEAPRATE: TFloatField;
    cdsDetailFPROJECTID: TWideStringField;
    cdsDetailFTRACKNUMBERID: TWideStringField;
    cdsDetailCFTOTALSALEOUTQTY: TFloatField;
    cdsDetailCFPRUORDERNUM: TFloatField;
    cdsDetailCFISPURORDER: TFloatField;
    cdsDetailCFTOTALSALEPOSTQTY: TFloatField;
    cdsDetailCFSRCPURORDERID: TWideStringField;
    cdsDetailCFSRCPURORDERENTRYID: TWideStringField;
    cdsDetailCFPACKID: TWideStringField;
    cdsDetailCFCOLORID: TWideStringField;
    cdsDetailCFMUTILSOURCEBILL: TWideStringField;
    cdsDetailCFSUPPLIERID: TWideStringField;
    cdsDetailCFPACKNUM: TFloatField;
    cdsDetailCFSIZESID: TWideStringField;
    cdsDetailCFCUPID: TWideStringField;
    cdsDetailCFSIZEGROUPID: TWideStringField;
    cdsDetailCFDPPRICE: TFloatField;
    cdsDetailCFASSISTNUM: TWideStringField;
    cdsDetailCFINITQTY: TFloatField;
    cdsDetailCFINITPACKNUM: TFloatField;
    cdsDetailCFADJUSTQTY: TFloatField;
    cdsDetailCFADJUSTPACKNUM: TFloatField;
    cdsCustomer: TClientDataSet;
    cdswarehouse: TClientDataSet;
    dspriceType: TDataSource;
    dsorderType: TDataSource;
    cdsDetailAmountFISPRESENT: TFloatField;
    dbgList2FISPRESENT: TcxGridDBColumn;
    cdsPerSon: TClientDataSet;
    cdsInWarehouse: TClientDataSet;
    cdsDetailTracyFID: TWideStringField;
    cdsDetailTracyFSEQ: TFloatField;
    cdsDetailTracyFMATERIALID: TWideStringField;
    cdsDetailTracyFBASESTATUS: TFloatField;
    cdsDetailTracyFBASEUNITID: TWideStringField;
    cdsDetailTracyFREMARK: TWideStringField;
    cdsDetailTracyFISPRESENT: TFloatField;
    cdsDetailTracyFQTY: TFloatField;
    cdsDetailTracyFPRICE: TFloatField;
    cdsDetailTracyFTAXPRICE: TFloatField;
    cdsDetailTracyFDISCOUNT: TFloatField;
    cdsDetailTracyFAMOUNT: TFloatField;
    cdsDetailTracyFACTUALPRICE: TFloatField;
    cdsDetailTracyFACTUALTAXPRICE: TFloatField;
    cdsDetailTracyFTOTALISSUEQTY: TFloatField;
    cdsDetailTracyFTOTALSHIPPINGQTY: TFloatField;
    cdsDetailTracyFPARENTID: TWideStringField;
    cdsDetailTracyFTOTALISSUEBASEQTY: TFloatField;
    cdsDetailTracyFTOTALUNSHIPBASEQTY: TFloatField;
    cdsDetailTracyFTOTALUNISSUEQTY: TFloatField;
    cdsDetailTracyCFPACKID: TWideStringField;
    cdsDetailTracyCFCOLORID: TWideStringField;
    cdsDetailTracyCFPACKNUM: TFloatField;
    cdsDetailTracyCFSIZESID: TWideStringField;
    cdsDetailTracyCFCUPID: TWideStringField;
    cdsDetailTracyCFSIZEGROUPID: TWideStringField;
    cdsDetailTracyCFDPPRICE: TFloatField;
    cdsDetailTracyCFINITQTY: TFloatField;
    cdsDetailTracyCFINITPACKNUM: TFloatField;
    cdsDetailTracyCFADJUSTQTY: TFloatField;
    cdsDetailTracyCFADJUSTPACKNUM: TFloatField;
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
    cdsDetailTracyCFNUitName: TWideStringField;
    cxgridDetialFSEQ: TcxGridDBColumn;
    cxgridDetialFREMARK: TcxGridDBColumn;
    cxgridDetialFQTY: TcxGridDBColumn;
    cxgridDetialFPRICE: TcxGridDBColumn;
    cxgridDetialFDISCOUNT: TcxGridDBColumn;
    cxgridDetialFAMOUNT: TcxGridDBColumn;
    cxgridDetialFACTUALPRICE: TcxGridDBColumn;
    cxgridDetialFACTUALTAXPRICE: TcxGridDBColumn;
    cxgridDetialFTAXRATE: TcxGridDBColumn;
    cxgridDetialFTOTALSHIPPINGQTY: TcxGridDBColumn;
    cxgridDetialFTOTALISSUEBASEQTY: TcxGridDBColumn;
    cxgridDetialFTOTALUNSHIPBASEQTY: TcxGridDBColumn;
    cxgridDetialFTOTALUNISSUEQTY: TcxGridDBColumn;
    cxgridDetialCFPACKNUM: TcxGridDBColumn;
    cxgridDetialCFDPPRICE: TcxGridDBColumn;
    cxgridDetialCFINITQTY: TcxGridDBColumn;
    cxgridDetialCFINITPACKNUM: TcxGridDBColumn;
    cxgridDetialcfMaterialNumber: TcxGridDBColumn;
    cxgridDetialcfMaterialName: TcxGridDBColumn;
    cxgridDetialCFColorCode: TcxGridDBColumn;
    cxgridDetialCFColorName: TcxGridDBColumn;
    cxgridDetialCFCupName: TcxGridDBColumn;
    cxgridDetialCFPackName: TcxGridDBColumn;
    cxgridDetialCFBrandName: TcxGridDBColumn;
    cxgridDetialcfattributeName: TcxGridDBColumn;
    cxgridDetialCFNUitName: TcxGridDBColumn;
    cxgridDetialFBASESTATUS: TcxGridDBColumn;
    cdsMasterFCreatorName: TStringField;
    cdsMasterFAuditorName: TStringField;
    cdsMasterCFModifierName: TStringField;
    cdsDetailTracyCFSizeName: TWideStringField;
    cdsDetailTracyCFSizeCode: TWideStringField;
    cxgridDetialCFSizeCode: TcxGridDBColumn;
    cxgridDetialCFSizeName: TcxGridDBColumn;
    cdsMasterCFRANGEID: TWideStringField;
    dsRange: TDataSource;
    cdsFindwarehouse: TClientDataSet;
    cdsDetailcfMaterialNumber: TWideStringField;
    cdstracyFID: TWideStringField;
    cdstracyFSEQ: TFloatField;
    cdstracyFMATERIALID: TWideStringField;
    cdstracyFBASESTATUS: TFloatField;
    cdstracyFBASEUNITID: TWideStringField;
    cdstracyFREMARK: TWideStringField;
    cdstracyFISPRESENT: TFloatField;
    cdstracyFQTY: TFloatField;
    cdstracyFPRICE: TFloatField;
    cdstracyFTAXPRICE: TFloatField;
    cdstracyFDISCOUNT: TFloatField;
    cdstracyFAMOUNT: TFloatField;
    cdstracyFACTUALPRICE: TFloatField;
    cdstracyFACTUALTAXPRICE: TFloatField;
    cdstracyFTOTALISSUEQTY: TFloatField;
    cdstracyFTOTALSHIPPINGQTY: TFloatField;
    cdstracyFTOTALISSUEBASEQTY: TFloatField;
    cdstracyFTOTALUNSHIPBASEQTY: TFloatField;
    cdstracyFTOTALUNISSUEQTY: TFloatField;
    cdstracyCFPACKID: TWideStringField;
    cdstracyCFCOLORID: TWideStringField;
    cdstracyCFPACKNUM: TFloatField;
    cdstracyCFSIZESID: TWideStringField;
    cdstracyCFCUPID: TWideStringField;
    cdstracyCFSIZEGROUPID: TWideStringField;
    cdstracyCFDPPRICE: TFloatField;
    cdstracyCFINITQTY: TFloatField;
    cdstracyCFINITPACKNUM: TFloatField;
    cdstracyCFADJUSTQTY: TFloatField;
    cdstracyCFADJUSTPACKNUM: TFloatField;
    cdsDetailFTotalUnReturnBaseQty: TFloatField;
    cxbtnOrderingDef: TcxButtonEdit;
    txtOrderingDef: TcxDBTextEdit;
    cxTabOtherInfo: TcxTabSheet;
    cxLabel9: TcxLabel;
    cxbtnSalorNum: TcxButtonEdit;
    cxbtnSalorName: TcxDBTextEdit;
    cxLabel8: TcxLabel;
    cxedtSC: TcxDBTextEdit;
    cxLabel12: TcxLabel;
    cxbtnedtScopetype: TcxDBLookupComboBox;
    cxLabel13: TcxLabel;
    txtSaleOrg: TcxDBTextEdit;
    cxLabel14: TcxLabel;
    btnPurOrg: TcxButtonEdit;
    txtPurOrg: TcxDBTextEdit;
    cdsMasterCFOrderingDefName: TStringField;
    cdsMasterCFSaleOrgName: TStringField;
    cdsMasterCFPurOrgName: TStringField;
    cdsSaleOrg: TClientDataSet;
    cdsPurOrg: TClientDataSet;
    cxLabel15: TcxLabel;
    cxbtnStorageOrg: TcxButtonEdit;
    txtStorageOrg: TcxDBTextEdit;
    cdsStorageOrg: TClientDataSet;
    cdsMasterCFStorageOrgName: TStringField;
    btnSaleOrg: TcxButtonEdit;
    cdsDetailAmountCFMUTILSOURCEBILL: TWideStringField;
    dbgList2CFMUTILSOURCEBILL: TcxGridDBColumn;
    procedure cxbtnNUmberKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxbtnSendWareNumKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxbtnSalorNumKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxbtnReceivOrgNumKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxbtnReceivWareNumKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnEnter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure cxbtnNUmberPropertiesChange(Sender: TObject);
    procedure cdsCustomerFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure cxbtnSendWareNumPropertiesChange(Sender: TObject);
    procedure cdswarehouseFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure cxbtnSendWareNumEnter(Sender: TObject);
    procedure cdsDetailNewRecord(DataSet: TDataSet);
    procedure cdsDetailBeforePost(DataSet: TDataSet);
    procedure cxbtnReceivOrgNumPropertiesChange(Sender: TObject);
    procedure btnKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxbtnReceivWareNumPropertiesChange(Sender: TObject);
    procedure cdsMasterCalcFields(DataSet: TDataSet);
    procedure cxbtnSalorNumPropertiesChange(Sender: TObject);
    procedure cxdblookupInputwayPropertiesCloseUp(Sender: TObject);
    procedure cxcmbSaleTypePropertiesCloseUp(Sender: TObject);
    procedure cxcmbpriceTypePropertiesCloseUp(Sender: TObject);
    procedure cxbtnNUmberPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cdsMasterCFRECEIVESTOREUNITChange(Sender: TField);
    procedure cdsInWarehouseFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure cdsMasterBeforePost(DataSet: TDataSet);
    procedure cxbtnSendWareNumPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxbtnReceivWareNumPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxbtnSalorNumPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure dbgList2CFColorCodePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure dbgList2CFCupNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure dbgList2CFPackNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cdsDetailFQTYChange(Sender: TField);
    procedure FormShow(Sender: TObject);
    procedure cdsDetailAmountFDISCOUNTRATEChange(Sender: TField);
    procedure cdsDetailAmountFACTUALPRICEChange(Sender: TField);
    procedure dbgList2cfMaterialNumberPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure cxedtStylePropertiesChange(Sender: TObject);
    procedure cxedtStyle_DetailPropertiesChange(Sender: TObject);
    procedure cxPageDetailChange(Sender: TObject);
    procedure cxbtnReceivOrgNumPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cdsDetailAmountFMATERIALIDChange(Sender: TField);
    procedure actPushExecute(Sender: TObject);
    procedure cxcmbSaleTypePropertiesEditValueChanged(Sender: TObject);
    procedure cdsDetailAmountCFPACKIDChange(Sender: TField);
    procedure cdsDetailAmountCFPACKNUMChange(Sender: TField);
    procedure cdsMasterCFINWAREHOUSEIDChange(Sender: TField);
    procedure cdsMasterFWAREHOUSEIDChange(Sender: TField);
    procedure cdsMasterFORDERCUSTOMERIDChange(Sender: TField);
    procedure cdsDetailAmountAfterInsert(DataSet: TDataSet);
    procedure cdsDetailAmountFPRICEChange(Sender: TField);
    procedure cxbtnNUmberKeyPress(Sender: TObject; var Key: Char);
    procedure cxbtnSendWareNumKeyPress(Sender: TObject; var Key: Char);
    procedure cxbtnReceivOrgNumKeyPress(Sender: TObject; var Key: Char);
    procedure cxbtnReceivWareNumKeyPress(Sender: TObject; var Key: Char);
    procedure cxbtnSalorNumKeyPress(Sender: TObject; var Key: Char);
    procedure ActImpFromTxtExecute(Sender: TObject);
    procedure cdsDetailAmountBeforeEdit(DataSet: TDataSet);
    procedure cdsDetailAmountAfterPost(DataSet: TDataSet);
    procedure cxbtnOrderingDefKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxbtnOrderingDefKeyPress(Sender: TObject; var Key: Char);
    procedure cxbtnOrderingDefPropertiesChange(Sender: TObject);
    procedure cxbtnOrderingDefPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cdsMasterFSALEORGUNITIDChange(Sender: TField);
    procedure btnSaleOrgPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btnPurOrgPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxbtnStorageOrgKeyPress(Sender: TObject; var Key: Char);
    procedure btnSaleOrgKeyPress(Sender: TObject; var Key: Char);
    procedure btnPurOrgKeyPress(Sender: TObject; var Key: Char);
    procedure cxbtnStorageOrgPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btnExit(Sender: TObject);
    procedure btnSaleOrgPropertiesChange(Sender: TObject);
    procedure btnPurOrgPropertiesChange(Sender: TObject);
    procedure cxbtnStorageOrgPropertiesChange(Sender: TObject);
    procedure btnSaleOrgKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnSaleOrgPropertiesEditValueChanged(Sender: TObject);
    procedure cdsMasterFSTORAGEORGUNITIDChange(Sender: TField);
    procedure actSetBillStatusExecute(Sender: TObject);
    procedure cdsMasterAfterInsert(DataSet: TDataSet);
    procedure barbtnNewClick(Sender: TObject);
    procedure actDetailDelExecute(Sender: TObject);
  private
    { Private declarations }
      sFinOrgID,sCustFinOrg : string;

  public
    { Public declarations }
    procedure Open_Bill(KeyFields: String; KeyValues: String); override;
        //保存单据
    function ST_Save : Boolean; override;
    procedure HeadGridKeyDown(key : word); override;
    procedure OpenTracyDetail(_sql : string;IsReturn :Boolean=False);override;
    procedure calAmt(DataSet: TDataSet);override;//计算金额
    procedure AddDetailRecord;override;
    procedure OPenFindWare(StorageOrgID : string);
    procedure OpenAssData();override;
    procedure DeleteDetailRecord(sfilter :  string) ;override;
  end;

var
  FM_BillEditSaleOrder: TFM_BillEditSaleOrder;

implementation
uses FrmCliDM,Pub_Fun,uMaterDataSelectHelper,uSaleOrderToPostReq,uDrpHelperClase;
{$R *.dfm}
procedure TFM_BillEditSaleOrder.Open_Bill(KeyFields: String; KeyValues: String);
var OpenTables: array[0..1] of string;
    _cds: array[0..1] of TClientDataSet;
    ErrMsg : string;
    strsql : string;
begin
  if Trim(KeyValues)='' then
    strsql := ' select * from t_Sd_Saleorder where 1<>1 '
  else
    strsql := ' select * from t_Sd_Saleorder where FID='+quotedstr(KeyValues);
  OpenTables[0] := strsql;
  if Trim(KeyValues)='' then
    strsql := ' select * from t_Sd_Saleorderentry where 1<>1 '
  else
    strsql := ' select * from t_Sd_Saleorderentry where FparentID='+quotedstr(KeyValues);
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
  OpenAssData();
  //新单初始化赋值
  if KeyValues='' then
  begin
    try
      with cdsMaster do
      begin
        Append;
        FieldByName('FID').AsString := CliDM.GetEASSID('C48A423A');
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
        FieldByName('FBIZTYPEID').AsString := '00000000-0000-0000-0000-000000000000CCE7AED4';   //业务类型：210 普通销售
        //FieldByName('FPURCHASEORGUNITID').AsString := UserInfo.Branch_ID;   //采购组织
        ///FieldByName('FSALEORGUNITID').AsString := UserInfo.Branch_ID;   //销售组织
       /// FieldByName('FSTORAGEORGUNITID').AsString := UserInfo.Branch_ID;   //采购组织
        ///FieldByName('FCOMPANYORGUNITID').AsString := UserInfo.Branch_ID; //
        FieldByName('FPaymentTypeID').AsString := BillConst.FPaymentType; //付款方式
        FieldByName('FCurrencyID').AsString := BillConst.FCurrency;   //币别
        FieldByName('FExchangeRate').AsFloat := 1;
        FieldByName('CFINPUTWAY').AsString :=  'NOTPACK';
        FieldByName('FISINTAX').AsFloat := 0;
        FieldByName('CFSALETYPE').AsString := 'QD';
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
    OPenFindWare(cdsMaster.fieldbyname('CFRECEIVESTOREUNIT').AsString);
  end;
  FInWarehouseFID := cdsMaster.fieldbyname('CFINWAREHOUSEID').AsString;
  FOutWarehouseFID := cdsMaster.fieldbyname('FWAREHOUSEID').AsString;
  inherited;
end;
procedure TFM_BillEditSaleOrder.OpenAssData();
var
  ErrMsg,strsql : string;
begin
  inherited;
  sFinOrgID :=cdsMaster.fieldbyname('FCOMPANYORGUNITID').AsString;
  //sCustFinOrg :=  FOpenPar.ListDataset.fieldbyname('finternalcompanyid').AsString;
 { if FOpenPar=nil then Exit;
  if FOpenPar.ListDataset=nil then Exit;
  try
    if FOpenPar.ListDataset.FindField('FSALEORGUNITID')= nil then Exit;
    if Trim(FOpenPar.ListDataset.fieldbyname('FSALEORGUNITID').AsString)<>'' then
    begin
      Get_BizFindFinOrg(ORGTYP.iSaleOrg,FOpenPar.ListDataset.fieldbyname('FSALEORGUNITID').AsString,'t_Org_Sale',ErrMsg,CliDM.cdsTemp);   ///销售组织获取财务组织
      sFinOrgID := CliDM.cdsTemp.fieldbyname('FID').AsString;
    end;
  except
    on E: Exception do
    begin
      ShowMsg(Handle, '按销售组织查找财务组织出错:'+E.Message+' '+ErrMsg ,[]);
      Abort;
    end;
  end;
  try
    if not  cdsStorageOrg.Active then
    if trim(FOpenPar.ListDataset.fieldbyname('FSALEORGUNITID').AsString)<>'' then
      Get_FromSaleToStorage(FOpenPar.ListDataset.fieldbyname('FSALEORGUNITID').AsString,ErrMsg,cdsStorageOrg);   ///销售组织获取财务组织

  except
    on E: Exception do
    begin
      ShowMsg(Handle, '按销售组织查找库存组织出错:'+E.Message+' '+ErrMsg ,[]);
      Abort;
    end;
  end;
  try

    Get_UserWareByStorageOrg(FOpenPar.ListDataset.fieldbyname('FSTORAGEORGUNITID').AsString,cdswarehouse,ErrMsg);
    Get_UserWareByStorageOrg(FOpenPar.ListDataset.fieldbyname('CFRECEIVESTOREUNIT').AsString,cdsInWarehouse,ErrMsg);

  except
    on E:Exception do
    begin
      ShowError(Handle, '查询发货仓库出错!'+ErrMsg ,[]);
      Abort;
    end;
  end;   }
  //sCustFinOrg :=  FOpenPar.ListDataset.fieldbyname('finternalcompanyid').AsString;
  {if not cdsPurOrg.Active then
  if Trim(sFinOrgID)<>'' then
    GET_FromBizToFin(sFinOrgID,'t_Org_Purchase',ErrMsg,cdsPurOrg) ; }
end;
function TFM_BillEditSaleOrder.ST_Save : Boolean;
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
  if cdsMaster.State in db.dsEditModes then
     cdsMaster.Post;
  if cdsDetail.State in db.dsEditModes then
     cdsDetail.Post;

  //定义提交的数据集数据
  _cds[0] := cdsMaster;
  _cds[1] := cdsDetail;

  //提交数据
  try
    if CliDM.Apply_Delta_Ex(_cds,['t_Sd_Saleorder','t_Sd_Saleorderentry'],ErrMsg) then
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
procedure TFM_BillEditSaleOrder.cxbtnNUmberKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  girdList.Hint := 'FORDERCUSTOMERID';
  inherited;

end;

procedure TFM_BillEditSaleOrder.cxbtnSendWareNumKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  girdList.Hint := 'FWAREHOUSEID';
  inherited;
  HeadKetDown(cxbtnSendWareNum,key);
end;

procedure TFM_BillEditSaleOrder.cxbtnSalorNumKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  girdList.Hint := 'FSALEPERSONID';
  inherited;
  HeadKetDown(cxbtnSalorNum,key);
end;

procedure TFM_BillEditSaleOrder.cxbtnReceivOrgNumKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  girdList.Hint := 'CFRECEIVESTOREUNIT';
  inherited;
  HeadKetDown(cxbtnReceivOrgNum,key);
end;

procedure TFM_BillEditSaleOrder.cxbtnReceivWareNumKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  girdList.Hint := 'CFINWAREHOUSEID';
  inherited;
  HeadKetDown(cxbtnReceivWareNum,key);
end;

procedure TFM_BillEditSaleOrder.btnEnter(Sender: TObject);
begin

  inherited;
  tmpbtnEdit := TcxButtonEdit(sender);

end;

procedure TFM_BillEditSaleOrder.FormCreate(Sender: TObject);
var ErrMsg : string;
begin
  sBillTypeID := BillConst.BILLTYPE_SO;  //单据类型FID
  inherited;
  sKeyFields := 'FmaterialID;CFColorID;CFCupID;CFpackID;CFMUTILSOURCEBILL';
  Self.Bill_Sign := 't_Sd_Saleorder';
  Self.BillEntryTable := 't_Sd_Saleorderentry';

  cdsCustomer.Data := CliDM.cdsCust.Data; //客户
  cdswarehouse.Data := CliDM.cdsWarehouse.Data;//仓库
  cdsFindwarehouse.Data := CliDM.cdsWarehouse.Data;//仓库
  cdsPerSon.Data := CliDM.cdsPerson.Data;
  try
    //Get_OrderingDef(ErrMsg,cdsOrderingDef);
    Get_UserBizOrg('t_Org_Sale',ErrMsg,cdsSaleOrg);
    
  except
    on E: Exception do
    begin
      ShowMsg(Handle, Self.Caption+'提交失败'+ErrMsg+' '+E.Message,[]);
      Gio.AddShow(ErrMsg);
    end;
  end;
  Self.WindowState := wsMaximized;
end;

procedure TFM_BillEditSaleOrder.FormActivate(Sender: TObject);
begin
  inherited;
  if cxbtnNUmber.CanFocus then
    cxbtnNUmber.SetFocus;
end;

procedure TFM_BillEditSaleOrder.cxbtnNUmberPropertiesChange(
  Sender: TObject);
begin
  inherited;
  if tmpbtnEdit = nil then Exit;

  girdList.hint :='FORDERCUSTOMERID';
  HeadAutoSelIDchange(cdsCustomer,'');
end;

procedure TFM_BillEditSaleOrder.cdsCustomerFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  inherited;
  if tmpbtnEdit<> nil then
  Accept:=((Pos(Trim(UpperCase(tmpbtnEdit.Text)),UpperCase(DataSet.fieldbyname('fnumber').AsString))>0) or
          (Pos(Trim(UpperCase(tmpbtnEdit.Text)),UpperCase(DataSet.fieldbyname('fname_l2').AsString))>0) or
          (Pos(Trim(UpperCase(tmpbtnEdit.Text)),UpperCase(DataSet.fieldbyname('FhelpCode').AsString))>0)) ;
end;

procedure TFM_BillEditSaleOrder.cxbtnSendWareNumPropertiesChange(
  Sender: TObject);
begin
  inherited;
  if tmpbtnEdit = nil then Exit;
  girdList.hint :='FWAREHOUSEID';
  HeadAutoSelIDchange(cdswarehouse,'');
end;

procedure TFM_BillEditSaleOrder.cdswarehouseFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  inherited;
  if tmpbtnEdit<> nil then
  begin
    if tmpbtnEdit.Name='cxbtnSendWareNum' then
      Accept:=((Pos(Trim(UpperCase(tmpbtnEdit.Text)),UpperCase(DataSet.fieldbyname('fnumber').AsString))>0) or
          (Pos(Trim(UpperCase(tmpbtnEdit.Text)),UpperCase(DataSet.fieldbyname('fname_l2').AsString))>0) or
          (Pos(Trim(UpperCase(tmpbtnEdit.Text)),UpperCase(DataSet.fieldbyname('FhelpCode').AsString))>0));
  end;
end;

procedure TFM_BillEditSaleOrder.cxbtnSendWareNumEnter(Sender: TObject);
begin

  inherited;
  tmpbtnEdit := TcxButtonEdit(sender);
end;

procedure TFM_BillEditSaleOrder.cdsDetailNewRecord(DataSet: TDataSet);
begin
  inherited;
  with DataSet do
  begin
    DataSet.FieldByName('FID').AsString := CliDM.GetEASSID('88882A58');
    DataSet.FieldByName('FParentID').AsString := BillIDValue;
    DataSet.FieldByName('FBaseStatus').AsInteger := 1;
    DataSet.FieldByName('FVersion').AsInteger := 0;
    DataSet.FieldByName('FSTORAGEORGUNITID').AsString := cdsMaster.fieldbyname('FSTORAGEORGUNITID').AsString; //申请组织
    DataSet.FieldByName('FCOMPANYORGUNITID').AsString := cdsMaster.fieldbyname('FCOMPANYORGUNITID').AsString;  //申请财务组织
    DataSet.FieldByName('FWAREHOUSEID').AsString := cdsMaster.fieldbyname('FWAREHOUSEID').AsString;
    DataSet.FieldByName('FQUANTITYUNCTRL').AsInteger := 0;       //不控制数量
    DataSet.FieldByName('FTIMEUNCTRL').AsInteger := 0;      //不控制时间
    DataSet.FieldByName('FISPRESENT').AsInteger := 0;
  end;
end;

procedure TFM_BillEditSaleOrder.cdsDetailBeforePost(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('CFINITQTY').AsFloat := DataSet.fieldbyname('Fqty').AsFloat;
  DataSet.FieldByName('CFINITPACKNUM').AsFloat := DataSet.fieldbyname('CFPACKNUM').AsFloat;
  DataSet.FieldByName('FWAREHOUSEID').AsString := cdsMaster.fieldbyname('FWAREHOUSEID').AsString;
end;

procedure TFM_BillEditSaleOrder.cxbtnReceivOrgNumPropertiesChange(
  Sender: TObject);
  var
   strsql : string;
begin
  {inherited;
  if tmpbtnEdit = nil then Exit;
  girdList.hint :='CFRECEIVESTOREUNIT';
  HeadAutoSelIDchange(CliDM.cdsUserBranch,'');}


end;

procedure TFM_BillEditSaleOrder.btnKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  //inherited;
  //
end;

procedure TFM_BillEditSaleOrder.cxbtnReceivWareNumPropertiesChange(
  Sender: TObject);
begin
  inherited;
  if tmpbtnEdit = nil then Exit;
  girdList.hint :='CFINWAREHOUSEID';
  HeadAutoSelIDchange(cdsInWarehouse,'');
end;

procedure TFM_BillEditSaleOrder.cdsMasterCalcFields(DataSet: TDataSet);
var
  event : TNotifyEvent;
  sqlstr,ErrMsg : string;
begin
  inherited;

  try
    if tmpbtnEdit <> nil then
    begin
     event := tmpbtnEdit.Properties.OnChange ;
     tmpbtnEdit.Properties.OnChange := nil  ;
    end;
    if trim(DataSet.fieldbyName('FORDERCUSTOMERID').AsString)<>'' then
    if DataSet.FindField('CFCustName') <> nil then
    begin

      sqlstr := 'select fnumber,FName_L2,finternalcompanyid from T_BD_CUSTOMER where FID collate Chinese_PRC_CS_AS_WS ='+QuotedStr(DataSet.fieldbyName('FORDERCUSTOMERID').AsString);
      CliDM.qryTemp.Close;
      CliDM.qryTemp.SQL.Clear;
      CliDM.qryTemp.SQL.Add(sqlstr);
      CliDM.qryTemp.Open;
      DataSet.FieldByName('CFCustName').AsString := CliDM.qryTemp.FieldByName('FName_L2').AsString;
      cxbtnNUmber.Text := CliDM.qryTemp.fieldbyname('fnumber').AsString;
      sCustFinOrg := CliDM.qryTemp.fieldbyname('finternalcompanyid').AsString;
    end;
    if Trim(DataSet.fieldbyName('FWAREHOUSEID').AsString)<> '' then
    if DataSet.FindField('CFSendWareName') <> nil then
    begin

      sqlstr := 'select fnumber,FName_L2 from t_Db_Warehouse where FID collate Chinese_PRC_CS_AS_WS ='+QuotedStr(DataSet.fieldbyName('FWAREHOUSEID').AsString);
      CliDM.qryTemp.Close;
      CliDM.qryTemp.SQL.Clear;
      CliDM.qryTemp.SQL.Add(sqlstr);
      CliDM.qryTemp.Open;
      DataSet.FieldByName('CFSendWareName').AsString := CliDM.qryTemp.FieldByName('FName_L2').AsString;
      cxbtnSendWareNum.Text := CliDM.qryTemp.fieldbyname('fnumber').AsString;
    end;
    if Trim(DataSet.fieldbyName('CFINWAREHOUSEID').AsString)<> '' then
    if DataSet.FindField('CFReceivWareName') <> nil then
    begin

      sqlstr := 'select fnumber,FName_L2 from t_Db_Warehouse where FID collate Chinese_PRC_CS_AS_WS ='+QuotedStr(DataSet.fieldbyName('CFINWAREHOUSEID').AsString);
      CliDM.qryTemp.Close;
      CliDM.qryTemp.SQL.Clear;
      CliDM.qryTemp.SQL.Add(sqlstr);
      CliDM.qryTemp.Open;
      DataSet.FieldByName('CFReceivWareName').AsString := CliDM.qryTemp.FieldByName('FName_L2').AsString;
      cxbtnReceivWareNum.Text := CliDM.qryTemp.fieldbyname('fnumber').AsString;
    end;

    if DataSet.FindField('CFReceivOrgName')<> nil then
    if trim(DataSet.fieldbyname('CFRECEIVESTOREUNIT').AsString)<>'' then
    begin
      sqlstr := ' select fnumber,fname_l2 from t_Org_Storage where FID='+QuotedStr(DataSet.fieldbyname('CFRECEIVESTOREUNIT').AsString);
      CliDM.Get_OpenSQL(clidm.cdstemp,sqlstr,ErrMsg,False) ;
      cxbtnReceivOrgNum.Text := clidm.cdstemp.fieldbyname('fnumber').AsString;
      DataSet.FindField('CFReceivOrgName').AsString := CliDM.cdstemp.fieldbyname('fname_l2').AsString;
    end;
    if Trim(DataSet.fieldbyName('FSALEPERSONID').AsString)<> '' then
    if DataSet.FindField('CFSalorName')<> nil then
    begin
      sqlstr := ' select fnumber,fname_l2 from t_Bd_Person where FID='+QuotedStr(DataSet.fieldbyname('FSALEPERSONID').AsString);
      CliDM.Get_OpenSQL(clidm.cdstemp,sqlstr,ErrMsg,False) ;
      cxbtnSalorNum.Text := CliDM.cdstemp.fieldbyname('fnumber').AsString;
      DataSet.FindField('CFSalorName').AsString := CliDM.cdstemp.fieldbyname('fname_l2').AsString;
    end;
    if Trim(DataSet.fieldbyName('FSTORAGEORGUNITID').AsString)<> '' then
    if DataSet.FindField('CFStorageOrgName')<> nil then
    begin
      sqlstr := ' select fnumber,fname_l2 from t_Org_Storage where FID='+QuotedStr(DataSet.fieldbyname('FSTORAGEORGUNITID').AsString);
      CliDM.Get_OpenSQL(clidm.cdstemp,sqlstr,ErrMsg,False) ;
      cxbtnStorageOrg.Text := clidm.cdstemp.fieldbyname('fnumber').AsString;
      DataSet.FindField('CFStorageOrgName').AsString := clidm.cdstemp.fieldbyname('fname_l2').AsString;
    end;
    if Trim(DataSet.fieldbyName('FPURCHASEORGUNITID').AsString)<> '' then
    if DataSet.FindField('CFPurOrgName')<> nil then
    begin
      sqlstr := ' select fnumber,fname_l2 from t_Org_Purchase where FID='+QuotedStr(DataSet.fieldbyname('FPURCHASEORGUNITID').AsString);
      CliDM.Get_OpenSQL(clidm.cdstemp,sqlstr,ErrMsg,False) ;
      btnPurOrg.Text := clidm.cdstemp.fieldbyname('fnumber').AsString;
      DataSet.FindField('CFPurOrgName').AsString := clidm.cdstemp.fieldbyname('fname_l2').AsString;
    end;
    if Trim(DataSet.fieldbyName('FSALEORGUNITID').AsString)<> '' then
    if DataSet.FindField('CFSaleOrgName')<> nil then
    begin
      sqlstr := ' select fnumber,fname_l2 from t_Org_Sale where FID='+QuotedStr(DataSet.fieldbyname('FSALEORGUNITID').AsString);
      CliDM.Get_OpenSQL(clidm.cdstemp,sqlstr,ErrMsg,False) ;

      btnSaleOrg.Text := clidm.cdstemp.fieldbyname('fnumber').AsString;
      DataSet.FindField('CFSaleOrgName').AsString := clidm.cdstemp.fieldbyname('fname_l2').AsString;

    end;
    if Trim(DataSet.fieldbyName('CFORDERINGDEFID').AsString)<> '' then
    if DataSet.FindField('CFOrderingDefName')<> nil then
    begin
      sqlstr := ' select fnumber,fname_l2 from Ct_Ord_Orderdef where FID='+QuotedStr(DataSet.fieldbyname('CFORDERINGDEFID').AsString);
      CliDM.Get_OpenSQL(clidm.cdstemp,sqlstr,ErrMsg,True) ;
      cxbtnOrderingDef.Text := clidm.cdstemp.fieldbyname('fnumber').AsString;
      DataSet.FindField('CFOrderingDefName').AsString := clidm.cdstemp.fieldbyname('fname_l2').AsString;
    end;
  finally
    if tmpbtnEdit <> nil then
      tmpbtnEdit.Properties.OnChange := event ;
  end;
end;

procedure TFM_BillEditSaleOrder.cxbtnSalorNumPropertiesChange(
  Sender: TObject);
begin
  inherited;
  girdList.hint :='FSALEPERSONID';
  HeadAutoSelIDchange(cdsPerSon,'');
end;

procedure TFM_BillEditSaleOrder.cxdblookupInputwayPropertiesCloseUp(
  Sender: TObject);
begin
  inherited;
  //
end;

procedure TFM_BillEditSaleOrder.cxcmbSaleTypePropertiesCloseUp(
  Sender: TObject);
begin
  inherited;
  if cdsDetailAmount.FindField('FmaterialID')<> nil then
  begin
    if trim(cdsDetailAmount.FieldByName('FmaterialID').AsString )<> '' then
    begin
      ShowMsg(Handle, '单据已经有明细数据,不允许修改销售类型!',[]);
      Abort;
    end;
  end
  else if cdsDetailAmount.FindField('CFmaterialID')<> nil then
  begin
    if trim(cdsDetailAmount.FieldByName('CFmaterialID').AsString )<> '' then
    begin
      ShowMsg(Handle, '单据已经有明细数据,不允许修改销售类型!',[]);
      Abort;
    end;
  end;
end;

procedure TFM_BillEditSaleOrder.cxcmbpriceTypePropertiesCloseUp(
  Sender: TObject);
begin
  inherited;
  if cdsDetailAmount.FindField('FmaterialID')<> nil then
  begin
    if trim(cdsDetailAmount.FieldByName('FmaterialID').AsString )<> '' then
    begin
      ShowMsg(Handle, '单据已经有明细数据,不允许修改价格类型!',[]);
      Abort;
    end;
  end
  else if cdsDetailAmount.FindField('CFmaterialID')<> nil then
  begin
    if trim(cdsDetailAmount.FieldByName('CFmaterialID').AsString )<> '' then
    begin
      ShowMsg(Handle, '单据已经有明细数据,不允许修改价格类型!',[]);
      Abort;
    end;
  end;
end;
procedure TFM_BillEditSaleOrder.HeadGridKeyDown(key : word);
begin
  inherited;

end;
procedure TFM_BillEditSaleOrder.cxbtnNUmberPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
  var
    ChangEvent : TNotifyEvent;
begin
  inherited;
  if not  cdsMaster.Active then Exit;
  try
    ChangEvent := cxbtnNUmber.Properties.OnChange;
    cxbtnNUmber.Properties.OnChange := nil;
    //with Select_Customer('','',1) do
    with Get_UserCustBySaleOrg_Show(cdsMaster.fieldbyname('FSALEORGUNITID').AsString,'选择客户','',1) do
    begin
      if not IsEmpty then
      begin
        if not (cdsMaster.State in DB.dsEditModes) then cdsMaster.Edit;
          cdsMaster.FieldByName('FORDERCUSTOMERID').AsString := fieldbyname('fid').AsString;
      end;
    end;
  finally
    cxbtnNUmber.Properties.OnChange := ChangEvent;
  end;
end;

procedure TFM_BillEditSaleOrder.cdsMasterCFRECEIVESTOREUNITChange(
  Sender: TField);
begin
  OPenFindWare(Sender.AsString);
end;

procedure TFM_BillEditSaleOrder.cdsInWarehouseFilterRecord(
  DataSet: TDataSet; var Accept: Boolean);
begin
  inherited;
  if tmpbtnEdit<> nil then
  begin
    if tmpbtnEdit.Name='cxbtnReceivWareNum' then
      Accept:=((Pos(Trim(UpperCase(tmpbtnEdit.Text)),UpperCase(DataSet.fieldbyname('fnumber').AsString))>0) or
          (Pos(Trim(UpperCase(tmpbtnEdit.Text)),UpperCase(DataSet.fieldbyname('fname_l2').AsString))>0) or
          (Pos(Trim(UpperCase(tmpbtnEdit.Text)),UpperCase(DataSet.fieldbyname('FhelpCode').AsString))>0)
          or (Pos(Trim(UpperCase(cdsMaster.fieldbyname('CFRECEIVESTOREUNIT').AsString)),UpperCase(DataSet.fieldbyname('fstorageorgid').AsString))>0) );
  end;
end;

procedure TFM_BillEditSaleOrder.cdsMasterBeforePost(DataSet: TDataSet);
begin
  DataSet.FieldByName('FCOMPANYORGUNITID').AsString := sFinOrgID;

  if trim(cdsMaster.FieldByName('CFSALETYPE').AsString) ='ZY' then
  begin
    if trim(cdsMaster.FieldByName('CFRECEIVESTOREUNIT').AsString)='' then
    begin
      ShowError(Handle, '自营类型的订单收货机构不能为空!' ,[]);
      Abort;
    end;
    if trim(cdsMaster.FieldByName('CFINWAREHOUSEID').AsString)='' then
    begin
      ShowError(Handle, '自营类型的订单收货仓库不能为空!' ,[]);
      Abort;
    end;
  end;
  if Trim(DataSet.fieldbyname('FSALEORGUNITID').AsString)='' then
  begin
    ShowError(Handle, '销售组织不能为空!' ,[]);
    Abort;
  end;
  if Trim(DataSet.fieldbyname('FSTORAGEORGUNITID').AsString)='' then
  begin
    ShowError(Handle, '发货组织不能为空!' ,[]);
    Abort;
  end;
  if Trim(DataSet.fieldbyname('FPURCHASEORGUNITID').AsString)='' then
  begin
    ShowError(Handle, '采购组织不能为空!' ,[]);
    Abort;
  end;
  inherited;

end;

procedure TFM_BillEditSaleOrder.cxbtnSendWareNumPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
  var
    ChangEvent : TNotifyEvent;
begin
  inherited;
  if not  cdsMaster.Active then Exit;
  try
    ChangEvent := cxbtnSendWareNum.Properties.OnChange;
    cxbtnSendWareNum.Properties.OnChange := nil;
    with Get_UserWareByStorageOrg_Show(cdsMaster.FieldByName('FSTORAGEORGUNITID').AsString,'选择仓库','',1) do
    begin
      if not IsEmpty then
      begin
        if not (cdsMaster.State in DB.dsEditModes) then cdsMaster.Edit;
          cdsMaster.FieldByName('FWAREHOUSEID').AsString := fieldbyname('fid').AsString;
      end;
    end;
  finally
    cxbtnSendWareNum.Properties.OnChange := ChangEvent;
  end;
end;

procedure TFM_BillEditSaleOrder.cxbtnReceivWareNumPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
  var
    ChangEvent : TNotifyEvent;
begin
  inherited;
  if not  cdsMaster.Active then Exit;
  try
    ChangEvent := cxbtnReceivWareNum.Properties.OnChange;
    cxbtnReceivWareNum.Properties.OnChange := nil;
    with Get_UserWareByStorageOrg_Show(cdsMaster.FieldByName('CFRECEIVESTOREUNIT').AsString,'选择仓库','',1) do
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

procedure TFM_BillEditSaleOrder.cxbtnSalorNumPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
  var
    ChangEvent : TNotifyEvent;
begin
  inherited;
  if not  cdsMaster.Active then Exit;
  try
    ChangEvent := cxbtnSalorNum.Properties.OnChange;
    cxbtnSalorNum.Properties.OnChange := nil;
    with Select_BaseData('t_Bd_Person','人员','','') do
    begin
      if not IsEmpty then
      begin
        if not (cdsMaster.State in DB.dsEditModes) then cdsMaster.Edit;
          cdsMaster.FieldByName('FSALEPERSONID').AsString := fieldbyname('fid').AsString;
      end;
    end;
  finally
    cxbtnSalorNum.Properties.OnChange :=  ChangEvent;
  end;
end;

procedure TFM_BillEditSaleOrder.dbgList2CFColorCodePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  FindColor;
end;

procedure TFM_BillEditSaleOrder.dbgList2CFCupNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  FindCup;
end;

procedure TFM_BillEditSaleOrder.dbgList2CFPackNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  FindPack;
end;

procedure TFM_BillEditSaleOrder.cdsDetailFQTYChange(Sender: TField);
begin
  inherited;
  with Sender.DataSet do
  begin
    FieldByName('FTotalUnReturnBaseQty').Value := Sender.Value;
    FieldByName('FTotalUnIssueQty').Value := Sender.Value;
    FieldByName('FBaseQty').Value := Sender.Value;
    FieldByName('FAssistQty').Value := Sender.Value;
    FieldByName('FTotalUnIssueBaseQty').Value := Sender.Value;
    FieldByName('FTotalUnShipBaseQty').Value := Sender.Value;
    FieldByName('FAssociateQty').Value := Sender.Value;
    FieldByName('FUnOrderedQty').Value := Sender.Value;   //20110706 未关联数量
    FieldByName('FDeliveryCustomerID').AsString := cdsMaster.fieldbyname('FORDERCUSTOMERID').AsString;
    FieldByName('FPaymentCustomerID').AsString := cdsMaster.fieldbyname('FORDERCUSTOMERID').AsString;
    FieldByName('FReceiveCustomerID').AsString := cdsMaster.fieldbyname('FORDERCUSTOMERID').AsString;
    FieldByName('CFInitQty').AsFloat := Sender.AsFloat;
    FieldByName('CFInitPackNUM').AsFloat := Sender.DataSet.fieldbyname('Cfpacknum').AsFloat;
    FieldByName('Ftotalshippingqty').AsFloat :=0;
    FieldByName('Ftotalissuebaseqty').AsFloat := 0;
    FieldByName('Ftotalissueqty').AsFloat := 0;
  end;
end;

procedure TFM_BillEditSaleOrder.FormShow(Sender: TObject);
begin
  inherited;
  sIniBillFlag :='SO';
  sSPPack := 'SALE';

end;

procedure TFM_BillEditSaleOrder.cdsDetailAmountFDISCOUNTRATEChange(
  Sender: TField);
  var
    Event : TFieldNotifyEvent;
begin
  inherited;
  try
    Event := Sender.DataSet.fieldbyname('FACTUALPRICE').OnChange;
    Sender.DataSet.fieldbyname('FACTUALPRICE').OnChange := nil;
    Sender.DataSet.FieldByName('FACTUALPRICE').AsFloat :=CliDM.SimpleRoundTo( Sender.AsFloat/100*Sender.DataSet.FieldByName('FPRICE').AsFloat);
  finally
    Sender.DataSet.fieldbyname('FACTUALPRICE').OnChange := Event;
  end;
end;

procedure TFM_BillEditSaleOrder.cdsDetailAmountFACTUALPRICEChange(
  Sender: TField);
  var
    Event : TFieldNotifyEvent;
begin
  inherited;
  try
    Event := Sender.DataSet.fieldbyname('FDISCOUNTRATE').OnChange;
    Sender.DataSet.fieldbyname('FDISCOUNTRATE').OnChange := nil;
    if Sender.DataSet.FieldByName('FPRICE').AsFloat<>0 then
      Sender.DataSet.FieldByName('FDISCOUNTRATE').AsFloat :=CliDM.SimpleRoundTo(Sender.DataSet.FieldByName('FACTUALPRICE').AsFloat/Sender.DataSet.FieldByName('FPRICE').AsFloat*100);
  finally
    Sender.DataSet.fieldbyname('FDISCOUNTRATE').OnChange:= Event;
  end;
end;

procedure TFM_BillEditSaleOrder.dbgList2cfMaterialNumberPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  FindMaterial;

end;

procedure TFM_BillEditSaleOrder.cxedtStylePropertiesChange(
  Sender: TObject);
begin
  inherited;
  //
end;

procedure TFM_BillEditSaleOrder.cxedtStyle_DetailPropertiesChange(
  Sender: TObject);
begin
  inherited;
  //
end;
procedure TFM_BillEditSaleOrder.OpenTracyDetail(_sql : string;IsReturn :Boolean=False);
begin

  inherited;

end;
procedure TFM_BillEditSaleOrder.cxPageDetailChange(Sender: TObject);
begin
  inherited;
  if cxPageDetail.ActivePage=cxTabTractDetail  then
  begin
    cdstracy.Data := cdsDetail.Data ;
    OpenTracyDetail('');
  end;
end;

procedure TFM_BillEditSaleOrder.cxbtnReceivOrgNumPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
  var
    ChangEvent : TNotifyEvent;
begin
  inherited;
  if Trim(sCustFinOrg)='' then Exit;
  if not  cdsMaster.Active then Exit;
  try
    ChangEvent := cxbtnReceivOrgNum.Properties.OnChange;
    cxbtnReceivOrgNum.Properties.OnChange := nil;
    with GET_FromBizToFin_Show(sCustFinOrg,'t_Org_Storage','库存组织','',1) do
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

procedure TFM_BillEditSaleOrder.cdsDetailAmountFMATERIALIDChange(
  Sender: TField);
begin
  inherited;
  if (BillInfo.IsNew or BillInfo.IsEdit ) then
  begin
    CliDM.GetStylePrice_OnLine(Sender.AsString,cdsMaster.fieldbyname('FSALEORGUNITID').AsString,CliDM.cdsTemp);
    cdsDetailAmount.FieldByName('CFDPPRICE').AsFloat := CliDM.cdsTemp.fieldbyname('Fprice').AsFloat;
    cdsDetailAmount.FieldByName('FPRICE').AsFloat := CliDM.cdsTemp.fieldbyname('CFDistributeprice').AsFloat;
    Get_PolicyPrice('FDISCOUNTRATE','FACTUALPRICE',cdsMaster.fieldbyname('FSALEORGUNITID').AsString
    ,cdsMaster.fieldbyname('CFPRICETYPEID').AsString,cdsMaster.fieldbyname('FORDERCUSTOMERID').AsString,cdsDetailAmount.fieldbyname('FMATERIALID').AsString,
    cdsMaster.fieldbyname('FBIZDATE').AsDateTime);
  end;
end;

procedure TFM_BillEditSaleOrder.actPushExecute(Sender: TObject);
begin
  inherited;
  if not BillInfo.IsAduit then
  begin
    ShowMsg(Handle, '当前单据未审核！',[]);
    Abort;
  end;
  Application.CreateForm(TSaleOrderToPostReqFrm,SaleOrderToPostReqFrm);
  SaleOrderToPostReqFrm.OpenType := 1;
  SaleOrderToPostReqFrm.txt_BillNumber.Text := cdsMaster.fieldbyname('Fnumber').AsString;
  SaleOrderToPostReqFrm.FsrcBillFID := cdsMaster.fieldbyname('FID').AsString;
  SaleOrderToPostReqFrm.txt_WarehouseNumber.Text := cxbtnSendWareNum.Text;
  SaleOrderToPostReqFrm.txt_WarehouseName.Text := cxbtnSendWareName.Text;
  SaleOrderToPostReqFrm.txt_SrcDes.Text := txDescription.Text;
  SaleOrderToPostReqFrm.WarehouseFID :=  cdsMaster.fieldbyname('CFINWAREHOUSEID').AsString;
  SaleOrderToPostReqFrm.ShowModal;
  SaleOrderToPostReqFrm.Free;
end;

procedure TFM_BillEditSaleOrder.cxcmbSaleTypePropertiesEditValueChanged(
  Sender: TObject);
  var
    strSql,ErrMsg : string;
begin
  inherited;
  if trim(cdsMaster.FieldByName('CFSALETYPE').AsString) ='ZY' then
  begin
    strSql := ' select FID,fnumber from t_Bd_Customer  where Fisinternalcompany=1 and Finternalcompanyid='+quotedstr(UserInfo.Branch_ID);
    Clidm.Get_OpenSQL(CliDM.cdstemp,strsql,ErrMsg);
    if not CliDM.cdstemp.IsEmpty then
    begin
      cdsMaster.Edit;
      cdsMaster.FieldByName('FORDERCUSTOMERID').AsString := CliDM.cdstemp.fieldbyname('FID').AsString;
    end;
    cxbtnNUmber.Enabled := False;
  end
  else
    cxbtnNUmber.Enabled :=True;

end;

procedure TFM_BillEditSaleOrder.cdsDetailAmountCFPACKIDChange(
  Sender: TField);
begin
  inherited;
  if cdsDetailAmount.FieldByName('CFPackNum').AsInteger>0 then
    PackNumChang(cdsDetailAmount,cdsDetailAmount.FieldByName('CFSIZEGROUPID').AsString,cdsDetailAmount.fieldbyname('CFPackID').AsString);

end;

procedure TFM_BillEditSaleOrder.cdsDetailAmountCFPACKNUMChange(
  Sender: TField);
begin
  inherited;
  if cdsDetailAmount.FieldByName('CFPackNum').AsInteger>0 then
    PackNumChang(cdsDetailAmount,cdsDetailAmount.FieldByName('CFSIZEGROUPID').AsString,cdsDetailAmount.fieldbyname('CFPackID').AsString);

end;

procedure TFM_BillEditSaleOrder.cdsMasterCFINWAREHOUSEIDChange(
  Sender: TField);
begin
  inherited;
  FInWarehouseFID := Sender.AsString;
end;

procedure TFM_BillEditSaleOrder.cdsMasterFWAREHOUSEIDChange(
  Sender: TField);
begin
  inherited;
  FOutWarehouseFID := Sender.AsString;
end;
procedure TFM_BillEditSaleOrder.calAmt(DataSet: TDataSet);
begin
  DataSet.FieldByName('FACTUALTAXPRICE').AsFloat := DataSet.fieldbyname('FACTUALPRICE').AsFloat ;
  DataSet.FieldByName('FAmount').AsFloat := CliDM.SimpleRoundTo(DataSet.fieldbyname('fqty').AsFloat*DataSet.FieldByName('FACTUALPRICE').AsFloat); //金额
  DataSet.FieldByName('FTaxAmount').AsFloat := CliDM.SimpleRoundTo(DataSet.fieldbyname('fqty').AsFloat*DataSet.FieldByName('FACTUALTAXPRICE').AsFloat); //价税合计
  DataSet.FieldByName('FTax').AsFloat := CliDM.SimpleRoundTo(DataSet.fieldbyname('fqty').AsFloat*(DataSet.FieldByName('FACTUALTAXPRICE').AsFloat-DataSet.FieldByName('FACTUALPRICE').AsFloat)); //税额
  DataSet.FieldByName('FLocalAmount').AsFloat := DataSet.FieldByName('FAmount').AsFloat;
  DataSet.FieldByName('FLocalTax').AsFloat := DataSet.FieldByName('FTax').AsFloat;
  DataSet.FieldByName('FLocalTaxAmount').AsFloat := DataSet.FieldByName('FTaxAmount').AsFloat;
  DataSet.FieldByName('FDiscountAmount').AsFloat := CliDM.SimpleRoundTo(DataSet.fieldbyname('fqty').AsFloat*(DataSet.FieldByName('FPRICE').AsFloat-DataSet.FieldByName('FACTUALPRICE').AsFloat));

end;
procedure TFM_BillEditSaleOrder.cdsMasterFORDERCUSTOMERIDChange(
  Sender: TField);
  var
    strSql,ErrMsg : string;
begin
  inherited;
  cdsMaster.FieldByName('CFRECEIVESTOREUNIT').AsString := '';
  strSql := ' select Finternalcompanyid from t_Bd_Customer  where Fisinternalcompany=1 and FID='+quotedstr(Sender.AsString);
  Clidm.Get_OpenSQL(CliDM.cdstemp,strsql,ErrMsg);
  if not CliDM.cdstemp.IsEmpty then
  begin
    sCustFinOrg := CliDM.cdstemp.fieldbyname('Finternalcompanyid').AsString;
  end;
  if Trim(CliDM.cdstemp.fieldbyname('Finternalcompanyid').AsString)=sFinOrgID then
    cdsMaster.FieldByName('CFSALETYPE').AsString := 'ZY'     //直营单据,一般用于备货及直营单店订货
  else
  if   Trim(CliDM.cdstemp.fieldbyname('Finternalcompanyid').AsString) <> '' then
    cdsMaster.FieldByName('CFSALETYPE').AsString := 'NB'     //内部客户单据
  else
  if   Trim(CliDM.cdstemp.fieldbyname('Finternalcompanyid').AsString)  = '' then
  cdsMaster.FieldByName('CFSALETYPE').AsString   := 'QD';    //外部客户单据
end;

procedure TFM_BillEditSaleOrder.cdsDetailAmountAfterInsert(
  DataSet: TDataSet);
begin
  inherited;
  strMatID := '';
  strColorID :='';
  StrCupID := '';
  StrpackID := '';
  DataSet.FieldByName('FISPRESENT').AsInteger := 0;
end;

procedure TFM_BillEditSaleOrder.cdsDetailAmountFPRICEChange(
  Sender: TField);
var
  Event : TFieldNotifyEvent;
begin
  inherited;
  try
    Event := Sender.DataSet.fieldbyname('FACTUALPRICE').OnChange;
    Sender.DataSet.fieldbyname('FACTUALPRICE').OnChange := nil;
    Sender.DataSet.FieldByName('FACTUALPRICE').AsFloat :=CliDM.SimpleRoundTo( Sender.AsFloat*Sender.DataSet.FieldByName('FDISCOUNTRATE').AsFloat/100);
  finally
    Sender.DataSet.fieldbyname('FACTUALPRICE').OnChange := Event;
  end;
end;

procedure TFM_BillEditSaleOrder.cxbtnNUmberKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  DelBtnEditValue(Key,'FORDERCUSTOMERID');
end;

procedure TFM_BillEditSaleOrder.cxbtnSendWareNumKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  DelBtnEditValue(Key,'FWAREHOUSEID');
end;

procedure TFM_BillEditSaleOrder.cxbtnReceivOrgNumKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  DelBtnEditValue(Key,'CFRECEIVESTOREUNIT');
end;

procedure TFM_BillEditSaleOrder.cxbtnReceivWareNumKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  DelBtnEditValue(Key,'CFINWAREHOUSEID');
end;

procedure TFM_BillEditSaleOrder.cxbtnSalorNumKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  DelBtnEditValue(Key,'FSALEPERSONID');
end;

procedure TFM_BillEditSaleOrder.ActImpFromTxtExecute(Sender: TObject);
begin
  inherited;
  //
end;
procedure TFM_BillEditSaleOrder.AddDetailRecord;
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
      if cdsDetail.Locate('CFColorID;CFCUPID;CFPackID;CFSizesID;CFMUTILSOURCEBILL;FMaterialID;fParentID',VarArrayOf([
        cdsDetailAmount.fieldbyname('CFColorID').AsString,cdsDetailAmount.fieldbyname('CFCUPID').AsString,cdsDetailAmount.fieldbyname('CFPackID').AsString,
        CliDM.cdsTmp.fieldbyname('Cfsizeid').AsString,cdsDetailAmount.fieldbyname('CFMUTILSOURCEBILL').AsString,cdsDetailAmount.fieldbyname('FMaterialID').AsString,BillIDValue]), []) then  //数量为空删除
      cdsDetail.Delete;
      CliDM.cdsTmp.Next;
      Continue;
    end;
    with cdsDetail do
    begin
      if (cdsDetail.Locate('CFColorID;CFCUPID;CFPackID;CFSizesID;CFMUTILSOURCEBILL;FMaterialID;fParentID',VarArrayOf([
      cdsDetailAmount.fieldbyname('CFColorID').AsString,cdsDetailAmount.fieldbyname('CFCUPID').AsString,cdsDetailAmount.fieldbyname('CFPackID').AsString,
      CliDM.cdsTmp.fieldbyname('Cfsizeid').AsString,cdsDetailAmount.fieldbyname('CFMUTILSOURCEBILL').AsString,cdsDetailAmount.fieldbyname('FMaterialID').AsString,BillIDValue]), []))
      or (cdsDetail.Locate('CFColorID;CFCUPID;CFPackID;CFSizesID;CFMUTILSOURCEBILL;FMaterialID;fParentID',VarArrayOf([
      strColorID,StrCupID,StrpackID,
      CliDM.cdsTmp.fieldbyname('Cfsizeid').AsString,cdsDetailAmount.fieldbyname('CFMUTILSOURCEBILL').AsString,strMatID,BillIDValue]), [])) then
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
      fieldbyname('FDISCOUNT').asFloat := cdsDetailAmount.fieldbyname('FDISCOUNTRATE').asfloat;
      fieldbyname('fremark').asstring := cdsDetailAmount.fieldbyname('fremark').AsString;
      fieldbyname('FISPRESENT').asinteger := cdsDetailAmount.fieldbyname('FISPRESENT').asinteger;
      fieldbyname('FBASEUNITID').AsString := cdsDetailAmount.FieldByName('FBASEUNITID').AsString ;
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
procedure TFM_BillEditSaleOrder.cdsDetailAmountBeforeEdit(
  DataSet: TDataSet);
begin
  inherited;
  strMatID := DataSet.Fieldbyname('FMaterialID').AsString;
  strColorID := DataSet.Fieldbyname('CFColorID').AsString;
  StrCupID := DataSet.Fieldbyname('CFCupID').AsString;
  StrPackID := DataSet.Fieldbyname('CFPackID').AsString;
end;

procedure TFM_BillEditSaleOrder.cdsDetailAmountAfterPost(
  DataSet: TDataSet);
begin
  inherited;
 // AddDetailRecord;
end;
procedure TFM_BillEditSaleOrder.OPenFindWare(StorageOrgID : string);
var
  strSql,ErrMsg : string;
begin
  inherited;
  try
    strSql :=' select FID,Fnumber,Fname_l2,FhelpCode,fhaslocation,CFCustomerID,fstorageorgid from t_Db_Warehouse where FWhState=1 and fstorageorgid='+quotedstr(StorageOrgID);
     Clidm.Get_OpenSQL(CliDM.cdstemp,strsql,ErrMsg);
     cdsInWarehouse.Data := CliDM.cdstemp.Data;
     CliDM.cdstemp.Close;
  except
    on E : Exception do
    begin
      ShowMsg(Handle, '查询仓库数据出错:'+E.Message+' '+ErrMsg ,[]);
      Abort;
    end;
  end;

end;
procedure TFM_BillEditSaleOrder.cxbtnOrderingDefKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  ///
end;

procedure TFM_BillEditSaleOrder.cxbtnOrderingDefKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  DelBtnEditValue(Key,'CFORDERINGDEFID');
end;

procedure TFM_BillEditSaleOrder.cxbtnOrderingDefPropertiesChange(
  Sender: TObject);
begin
 // inherited;
  ///girdList.hint :='CFORDERINGDEFID';
 // HeadAutoSelIDchange(cdsOrderingDef,'');
end;

procedure TFM_BillEditSaleOrder.cxbtnOrderingDefPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
  var
    ChangEvent : TNotifyEvent;
begin
  inherited;
  if not  cdsMaster.Active then Exit;
  try
    ChangEvent := cxbtnOrderingDef.Properties.OnChange;
    cxbtnOrderingDef.Properties.OnChange := nil;
    with Select_BaseDataEx('','',' select FID,Fnumber,Fname_L2,Fsimplename from Ct_Ord_Orderdef ',1) do
    begin
      if not IsEmpty then
      begin
        if not (cdsMaster.State in DB.dsEditModes) then cdsMaster.Edit;
          cdsMaster.FieldByName('CFORDERINGDEFID').AsString := fieldbyname('fid').AsString;
      end;
    end;
  finally
    cxbtnOrderingDef.Properties.OnChange := ChangEvent;
  end;
end;

procedure TFM_BillEditSaleOrder.cdsMasterFSALEORGUNITIDChange(
  Sender: TField);
  var
    ErrMsg : string;
begin
  inherited;
  try
    Get_BizFindFinOrg(2,Sender.AsString,'t_Org_Sale',ErrMsg,CliDM.cdsTemp);   ///销售组织获取财务组织
    if CliDM.cdsTemp.Active then
     sFinOrgID := CliDM.cdsTemp.fieldbyname('FID').AsString;
  except
    on E: Exception do
    begin
      ShowMsg(Handle, '按销售组织查找财务组织出错:'+E.Message+' '+ErrMsg ,[]);
      Abort;
    end;
  end;
  try
    Get_FromSaleToStorage(Sender.AsString,ErrMsg,CliDM.cdsTemp);   ///销售组织获取库存组织
    cdsStorageOrg.Data := CliDM.cdsTemp.Data;
    CliDM.cdsTemp.Close;
  except
    on E: Exception do
    begin
      ShowMsg(Handle, '按销售组织查找库存组织出错:'+E.Message+' '+ErrMsg ,[]);
      Abort;
    end;
  end;
  if Trim(sFinOrgID)<>'' then
  begin
    GET_FromBizToFin(sFinOrgID,'t_Org_Purchase',ErrMsg,cdsPurOrg) ;
    ///Fisdefault
    if cdsPurOrg.Locate('FID',Sender.AsString,[]) then
    else if  cdsPurOrg.Locate('Fisdefault',1,[])  then
    else cdsPurOrg.first;
    cdsMaster.FieldByName('FPURCHASEORGUNITID').AsString := cdsPurOrg.fieldbyname('FID').AsString;
    if cdsStorageOrg.Locate('FID',Sender.AsString,[]) then
    else if
      cdsStorageOrg.Locate('Fisdefault',1,[]) then
    else  cdsStorageOrg.First;
    cdsMaster.FieldByName('FSTORAGEORGUNITID').AsString :=cdsStorageOrg.fieldbyname('FID').AsString;
  end
  else
  begin
    cdsMaster.FieldByName('FPURCHASEORGUNITID').AsString :='';
    cdsMaster.FieldByName('FSTORAGEORGUNITID').AsString :='';
  end;
  cdsMaster.FieldByName('FORDERCUSTOMERID').AsString := '';

end;

procedure TFM_BillEditSaleOrder.btnSaleOrgPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
  var
    ChangEvent : TNotifyEvent;
    strSql,ErrMsg : string;
begin
  inherited;
  if not  cdsMaster.Active then Exit;
  if trim(cdsDetailAmount.FieldByName('FMATERIALID').AsString) <>'' then
  begin
    ShowMsg(Handle, '已经有明细记录，不允许修改销售组织!' ,[]);
    Abort;
  end;
  try
    ChangEvent := btnSaleOrg.Properties.OnChange;
    btnSaleOrg.Properties.OnChange := nil;
    with Get_BIZSALEORG_Show('销售组织','',1) do
    begin
      if not IsEmpty then
      begin
        if not (cdsMaster.State in DB.dsEditModes) then cdsMaster.Edit;
          cdsMaster.FieldByName('FSALEORGUNITID').AsString := fieldbyname('fid').AsString;
      end;
    end;
  finally
    btnSaleOrg.Properties.OnChange := ChangEvent;
  end;
  Get_UserCustBySaleOrg(cdsMaster.FieldByName('FSALEORGUNITID').AsString,cdsCustomer,ErrMsg);
end;

procedure TFM_BillEditSaleOrder.btnPurOrgPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
  var
    ChangEvent : TNotifyEvent;
    strSql : string;
begin
  inherited;
  if Trim(cdsMaster.fieldbyname('FSALEORGUNITID').AsString)='' then
  begin
    ShowError(Handle, '销售组织不能为空!' ,[]);
    Abort;
  end;
  if not  cdsMaster.Active then Exit;
  if trim(cdsDetailAmount.FieldByName('FMATERIALID').AsString) <>'' then
  begin
    ShowMsg(Handle, '已经有明细记录，不允许修改采购组织!' ,[]);
    Abort;
  end;
  try
    ChangEvent := btnPurOrg.Properties.OnChange;
    btnPurOrg.Properties.OnChange := nil;
    with GET_FromBizToFin_Show(sFinOrgID,'t_Org_Purchase','采购组织','',1) do
    begin
      if not IsEmpty then
      begin
        if not (cdsMaster.State in DB.dsEditModes) then cdsMaster.Edit;
          cdsMaster.FieldByName('FPURCHASEORGUNITID').AsString := fieldbyname('fid').AsString;
      end;
    end;
  finally
    btnPurOrg.Properties.OnChange := ChangEvent;
  end;
end;

procedure TFM_BillEditSaleOrder.cxbtnStorageOrgKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  DelBtnEditValue(Key,'FSTORAGEORGUNITID');
end;

procedure TFM_BillEditSaleOrder.btnSaleOrgKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  DelBtnEditValue(Key,'FSALEORGUNITID');
end;

procedure TFM_BillEditSaleOrder.btnPurOrgKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  DelBtnEditValue(Key,'FPURCHASEORGUNITID');
end;

procedure TFM_BillEditSaleOrder.cxbtnStorageOrgPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
  var
    ChangEvent : TNotifyEvent;
    strSql : string;
begin
  inherited;
  if Trim(cdsMaster.fieldbyname('FSALEORGUNITID').AsString)='' then
  begin
    ShowError(Handle, '销售组织不能为空!' ,[]);
    Abort;
  end;
  if not  cdsMaster.Active then Exit;
  if trim(cdsDetailAmount.FieldByName('FMATERIALID').AsString) <>'' then
  begin
    ShowMsg(Handle, '已经有明细记录，不允许修改发货组织!' ,[]);
    Abort;
  end;
  try
    ChangEvent := cxbtnStorageOrg.Properties.OnChange;
    cxbtnStorageOrg.Properties.OnChange := nil;
    with Get_FromSaleToStorage_show(cdsMaster.fieldbyname('FSALEORGUNITID').AsString,'库存组织','',1) do
    begin
      if not IsEmpty then
      begin
        if not (cdsMaster.State in DB.dsEditModes) then cdsMaster.Edit;
          cdsMaster.FieldByName('FSTORAGEORGUNITID').AsString := fieldbyname('fid').AsString;
        cxbtnStorageOrg.Text := fieldbyname('fnumber').AsString;
      end;
    end;
  finally
    cxbtnStorageOrg.Properties.OnChange := ChangEvent;
  end;

end;

procedure TFM_BillEditSaleOrder.btnExit(Sender: TObject);
begin
  inherited;
  ///
end;

procedure TFM_BillEditSaleOrder.btnSaleOrgPropertiesChange(
  Sender: TObject);
begin
  //inherited;
end;

procedure TFM_BillEditSaleOrder.btnPurOrgPropertiesChange(Sender: TObject);
begin
  ///inherited;

end;

procedure TFM_BillEditSaleOrder.cxbtnStorageOrgPropertiesChange(
  Sender: TObject);
begin
  //inherited;

end;

procedure TFM_BillEditSaleOrder.btnSaleOrgKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  ///inherited;
 //
end;

procedure TFM_BillEditSaleOrder.btnSaleOrgPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
////
end;

procedure TFM_BillEditSaleOrder.cdsMasterFSTORAGEORGUNITIDChange(
  Sender: TField);
  var
    ErrMsg : string;
begin
  inherited;
  try
   if  Trim(Sender.AsString) <>'' then
    Get_UserWareByStorageOrg(Sender.AsString,cdswarehouse,ErrMsg);
  except
    on E:Exception do
    begin
      ShowError(Handle, '查询发货仓库出错!'+ErrMsg ,[]);
      Abort;
    end;
  end;
end;

procedure TFM_BillEditSaleOrder.actSetBillStatusExecute(Sender: TObject);
begin
  inherited;
  ///
  cxbtnOrderingDef.Properties.ReadOnly := True;
  btnSaleOrg.Properties.ReadOnly := True;
  btnPurOrg.Properties.ReadOnly := True;
  cxbtnStorageOrg.Properties.ReadOnly := True;
  cxbtnReceivOrgNum.Properties.ReadOnly := True;
  
end;

procedure TFM_BillEditSaleOrder.cdsMasterAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if cdsSaleOrg.Active then 
   cdsMaster.FieldByName('FSALEORGUNITID').AsString := cdsSaleOrg.fieldbyname('FID').AsString;
end;

procedure TFM_BillEditSaleOrder.barbtnNewClick(Sender: TObject);
begin
  cdsCustomer.Close;
  cdsInWarehouse.Close;
  cdswarehouse.Close;
  
  inherited;

end;
procedure TFM_BillEditSaleOrder.DeleteDetailRecord(sfilter : string) ;
begin
  inherited;

end;
procedure TFM_BillEditSaleOrder.actDetailDelExecute(Sender: TObject);
var
  sfilter : string;
begin
  inherited;

  sfilter := format('fParentID=''%s'' and FMATERIALID=''%s'' and CFCOLORID=''%s'' and CFCUPID=''%s'' and CFPACKID=''%s'' and CFMUTILSOURCEBILL=''%s'' '
    ,[BillIDValue,cdsDetailAmount.fieldbyname('FMATERIALID').AsString,cdsDetailAmount.fieldbyname('CFColorID').AsString,cdsDetailAmount.fieldbyname('CFCUPID').AsString,cdsDetailAmount.fieldbyname('CFPackID').AsString,cdsDetailAmount.fieldbyname('CFMUTILSOURCEBILL').AsString]);
  DeleteDetailRecord(sfilter);
end;

end.
