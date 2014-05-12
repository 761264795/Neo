unit uBillEditPurReturns;

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
  cxGridDBTableView, cxGrid, cxPC, cxLookAndFeelPainters, cxGroupBox,
  cxRadioGroup, cxSpinEdit;

type
  TFM_BillEditPurRetuens = class(TFM_BillEditBase)
    RGReturnType: TcxRadioGroup;
    cxcmblookupType: TcxDBLookupComboBox;
    cxLabel3: TcxLabel;
    cxLabel2: TcxLabel;
    cxbtnedtPriceType: TcxDBLookupComboBox;
    cdsDetailFID: TWideStringField;
    cdsDetailFSEQ: TFloatField;
    cdsDetailFMATERIALID: TWideStringField;
    cdsDetailFASSISTPROPERTYID: TWideStringField;
    cdsDetailFUNITID: TWideStringField;
    cdsDetailFSOURCEBILLID: TWideStringField;
    cdsDetailFSOURCEBILLNUMBER: TWideStringField;
    cdsDetailFSOURCEBILLENTRYID: TWideStringField;
    cdsDetailFSOURCEBILLENTRYSEQ: TFloatField;
    cdsDetailFASSCOEFFICIENT: TFloatField;
    cdsDetailFBASESTATUS: TFloatField;
    cdsDetailFASSOCIATEQTY: TFloatField;
    cdsDetailFSOURCEBILLTYPEID: TWideStringField;
    cdsDetailFBASEUNITID: TWideStringField;
    cdsDetailFASSISTUNITID: TWideStringField;
    cdsDetailFREMARK: TWideStringField;
    cdsDetailFREASONCODEID: TWideStringField;
    cdsDetailFPURORDERNUMBER: TWideStringField;
    cdsDetailFPURORDERENTRYSEQ: TFloatField;
    cdsDetailFLOT: TWideStringField;
    cdsDetailFISPRESENT: TFloatField;
    cdsDetailFASSISTQTY: TFloatField;
    cdsDetailFPRICE: TFloatField;
    cdsDetailFTAXPRICE: TFloatField;
    cdsDetailFAMOUNT: TFloatField;
    cdsDetailFTAXRATE: TFloatField;
    cdsDetailFTAX: TFloatField;
    cdsDetailFTAXAMOUNT: TFloatField;
    cdsDetailFRETURNSDATE: TDateTimeField;
    cdsDetailFQTY: TFloatField;
    cdsDetailFUNRETURNEDQTY: TFloatField;
    cdsDetailFINVOICEDQTY: TFloatField;
    cdsDetailFUNINVOICEDQTY: TFloatField;
    cdsDetailFINVOICEDAMOUNT: TFloatField;
    cdsDetailFSTORAGEORGUNITID: TWideStringField;
    cdsDetailFWAREHOUSEID: TWideStringField;
    cdsDetailFLOCATIONID: TWideStringField;
    cdsDetailFPARENTID: TWideStringField;
    cdsDetailFCOMPANYORGUNITID: TWideStringField;
    cdsDetailFRETURNEDQTY: TFloatField;
    cdsDetailFRETURNSREASONID: TWideStringField;
    cdsDetailFBASEQTY: TFloatField;
    cdsDetailFINVOICEDBASEQTY: TFloatField;
    cdsDetailFUNINVOICEDBASEQTY: TFloatField;
    cdsDetailFUNRETURNEDBASEQTY: TFloatField;
    cdsDetailFRETURNEDBASEQTY: TFloatField;
    cdsDetailFPURORDERID: TWideStringField;
    cdsDetailFPURORDERENTRYID: TWideStringField;
    cdsDetailFCLOSEDDATE: TDateTimeField;
    cdsDetailFTOTALRETURNAMT: TFloatField;
    cdsDetailFLOCALAMOUNT: TFloatField;
    cdsDetailFLOCALTAX: TFloatField;
    cdsDetailFLOCALTAXAMOUNT: TFloatField;
    cdsDetailFREASON: TWideStringField;
    cdsDetailFNEWRETURNSREASON: TWideStringField;
    cdsDetailFTOTALINVOICEDAMT: TFloatField;
    cdsDetailFCOREBILLTYPEID: TWideStringField;
    cdsDetailFCOREBILLID: TWideStringField;
    cdsDetailFCOREBILLNUMBER: TWideStringField;
    cdsDetailFCOREBILLENTRYID: TWideStringField;
    cdsDetailFCOREBILLENTRYSEQ: TFloatField;
    cdsDetailFISBETWEENCOMPANYREC: TFloatField;
    cdsDetailFSUPPLIERLOTNO: TWideStringField;
    cdsDetailFPROJECTID: TWideStringField;
    cdsDetailFTRACKNUMBERID: TWideStringField;
    cdsDetailFPURCONTRACTID: TWideStringField;
    cdsDetailCFPACKID: TWideStringField;
    cdsDetailCFCOLORID: TWideStringField;
    cdsDetailCFMUTILSOURCEBILL: TWideStringField;
    cdsDetailCFPACKNUM: TFloatField;
    cdsDetailCFSIZESID: TWideStringField;
    cdsDetailCFCUPID: TWideStringField;
    cdsDetailCFSIZEGROUPID: TWideStringField;
    cdsDetailCFSALEPRICE: TFloatField;
    cdsDetailCFDISCOUNT: TFloatField;
    cdsDetailCFACTUALPRICE: TFloatField;
    cdsDetailCFDISCOUNTAMOUNT: TFloatField;
    cdsDetailCFACTUALTAXPRICE: TFloatField;
    cdsDetailCFASSISTNUM: TWideStringField;
    cdsReturnType: TClientDataSet;
    dsRetuenType: TDataSource;
    cdsMasterfCreatorName: TStringField;
    cdsMasterFAuditorName: TStringField;
    cdsMasterCFSupplierName: TStringField;
    dspriceType: TDataSource;
    cdsSupplier: TClientDataSet;
    cdsSupplierFID: TWideStringField;
    cdsSupplierfnumber: TWideStringField;
    cdsSupplierfname_l2: TWideStringField;
    cdsSupplierFinternalCompanyID: TWideStringField;
    cdsSupplierFtaxRate: TFloatField;
    cdsSupplierFHelpCode: TWideStringField;
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
    cdsDetailAmountfAmount: TFloatField;
    cdsDetailAmountFPRICE: TFloatField;
    cdsDetailAmountfTotaLQty: TIntegerField;
    cdsDetailAmountCFDISCOUNT: TFloatField;
    cdsDetailAmountCFACTUALPRICE: TFloatField;
    cdsDetailAmountFBASEUNITID: TWideStringField;
    cdsDetailAmountcfMaterialNumber: TStringField;
    cdsDetailAmountcfMaterialName: TStringField;
    cdsDetailAmountCFColorName: TStringField;
    cdsDetailAmountCFCupName: TStringField;
    cdsDetailAmountCFSIZEGROUPID: TWideStringField;
    cdsDetailAmountCFCOLORID: TWideStringField;
    cdsDetailAmountCFCUPID: TWideStringField;
    cdsDetailAmountCFColorCode: TStringField;
    cdsDetailAmountFMATERIALID: TWideStringField;
    cdsMasterCFWAREHOUSEID: TWideStringField;
    cdsMasterCFWAREName: TStringField;
    cdsDetailAmountCFDPPRICE: TFloatField;
    cdsDetailAmountCFPackName: TStringField;
    cdsDetailAmountCFPACKNUM: TFloatField;
    cdsDetailAmountCFPACKID: TStringField;
    cdsDetailAmountCFBrandName: TWideStringField;
    cdsDetailAmountcfattributeName: TWideStringField;
    cdsDetailAmountCfbrandid: TWideStringField;
    cdsDetailAmountcfattributeid: TWideStringField;
    cdsDetailAmountCFNUitName: TWideStringField;
    cdsDetailAmountfremark: TWideStringField;
    cdsDetailAmountFLOCATIONID: TWideStringField;
    dbgList2cfMaterialNumber: TcxGridDBColumn;
    dbgList2cfMaterialName: TcxGridDBColumn;
    dbgList2CFColorCode: TcxGridDBColumn;
    dbgList2CFColorName: TcxGridDBColumn;
    dbgList2CFCupName: TcxGridDBColumn;
    dbgList2CFPackName: TcxGridDBColumn;
    dbgList2CFPACKNUM: TcxGridDBColumn;
    dbgList2CFDPPRICE: TcxGridDBColumn;
    dbgList2FPRICE: TcxGridDBColumn;
    dbgList2CFDISCOUNT: TcxGridDBColumn;
    dbgList2CFACTUALPRICE: TcxGridDBColumn;
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
    dbgList2fAmount: TcxGridDBColumn;
    dbgList2fTotaLQty: TcxGridDBColumn;
    dbgList2CFBrandName: TcxGridDBColumn;
    dbgList2cfattributeName: TcxGridDBColumn;
    dbgList2CFNUitName: TcxGridDBColumn;
    dbgList2fremark: TcxGridDBColumn;
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
    cdsMasterFEXCHANGERATE: TFloatField;
    cdsMasterFTOTALAMOUNT: TFloatField;
    cdsMasterFTOTALTAX: TFloatField;
    cdsMasterFTOTALTAXAMOUNT: TFloatField;
    cdsMasterFPURCHASEORGUNITID: TWideStringField;
    cdsMasterFSUPPLIERID: TWideStringField;
    cdsMasterFPURCHASEGROUPID: TWideStringField;
    cdsMasterFPURCHASEPERSONID: TWideStringField;
    cdsMasterFCURRENCYID: TWideStringField;
    cdsMasterFMODIFIERID: TWideStringField;
    cdsMasterFMODIFICATIONTIME: TDateTimeField;
    cdsMasterFADMINORGUNITID: TWideStringField;
    cdsMasterFISSYSBILL: TFloatField;
    cdsMasterFCONVERTMODE: TFloatField;
    cdsMasterFLOCALTOTALAMOUNT: TFloatField;
    cdsMasterFLOCALTOTALTAX: TFloatField;
    cdsMasterFLOCALTOTALTAXAMOUNT: TFloatField;
    cdsMasterFISINTAX: TFloatField;
    cdsMasterFISCENTRALBALANCE: TFloatField;
    cdsMasterCFSUBBILLTYPE: TWideStringField;
    cdsMasterCFPRICETYPEID: TWideStringField;
    cdsMasterCFSUPPLIERSTORAGEID: TWideStringField;
    cdsMasterCFISTRANSFERORDER: TFloatField;
    cdsMasterCFISCOMPLEATED: TFloatField;
    cdsMasterCFORDERINGDEFID: TWideStringField;
    cdsMasterCFINPUTWAY: TWideStringField;
    cdsMasterCFSUPPLIERSALEORGID: TWideStringField;
    cdsMasterCFRANGEID: TWideStringField;
    cdsMasterCFINSEASONBOUNDS: TFloatField;
    cdsMasterCFINSEASONBOUND: TFloatField;
    cdsMasterCFRETURNTYPEID: TWideStringField;
    cdsMasterCFISPROCDUCT: TIntegerField;
    cdsMasterCFModifierName: TStringField;
    cxLabel5: TcxLabel;
    cxbtnSendWareNum: TcxButtonEdit;
    cxbtnSendWareName: TcxDBTextEdit;
    cdsDetailTracyFID: TWideStringField;
    cdsDetailTracyFSEQ: TFloatField;
    cdsDetailTracyFMATERIALID: TWideStringField;
    cdsDetailTracyFASSISTPROPERTYID: TWideStringField;
    cdsDetailTracyFUNITID: TWideStringField;
    cdsDetailTracyFSOURCEBILLID: TWideStringField;
    cdsDetailTracyFSOURCEBILLNUMBER: TWideStringField;
    cdsDetailTracyFSOURCEBILLENTRYID: TWideStringField;
    cdsDetailTracyFSOURCEBILLENTRYSEQ: TFloatField;
    cdsDetailTracyFASSCOEFFICIENT: TFloatField;
    cdsDetailTracyFBASESTATUS: TFloatField;
    cdsDetailTracyFASSOCIATEQTY: TFloatField;
    cdsDetailTracyFSOURCEBILLTYPEID: TWideStringField;
    cdsDetailTracyFBASEUNITID: TWideStringField;
    cdsDetailTracyFASSISTUNITID: TWideStringField;
    cdsDetailTracyFREMARK: TWideStringField;
    cdsDetailTracyFREASONCODEID: TWideStringField;
    cdsDetailTracyFPURORDERNUMBER: TWideStringField;
    cdsDetailTracyFPURORDERENTRYSEQ: TFloatField;
    cdsDetailTracyFLOT: TWideStringField;
    cdsDetailTracyFISPRESENT: TFloatField;
    cdsDetailTracyFASSISTQTY: TFloatField;
    cdsDetailTracyFPRICE: TFloatField;
    cdsDetailTracyFTAXPRICE: TFloatField;
    cdsDetailTracyFAMOUNT: TFloatField;
    cdsDetailTracyFTAXRATE: TFloatField;
    cdsDetailTracyFTAX: TFloatField;
    cdsDetailTracyFTAXAMOUNT: TFloatField;
    cdsDetailTracyFRETURNSDATE: TDateTimeField;
    cdsDetailTracyFQTY: TFloatField;
    cdsDetailTracyFUNRETURNEDQTY: TFloatField;
    cdsDetailTracyFINVOICEDQTY: TFloatField;
    cdsDetailTracyFUNINVOICEDQTY: TFloatField;
    cdsDetailTracyFINVOICEDAMOUNT: TFloatField;
    cdsDetailTracyFSTORAGEORGUNITID: TWideStringField;
    cdsDetailTracyFWAREHOUSEID: TWideStringField;
    cdsDetailTracyFLOCATIONID: TWideStringField;
    cdsDetailTracyFPARENTID: TWideStringField;
    cdsDetailTracyFCOMPANYORGUNITID: TWideStringField;
    cdsDetailTracyFRETURNEDQTY: TFloatField;
    cdsDetailTracyFRETURNSREASONID: TWideStringField;
    cdsDetailTracyFBASEQTY: TFloatField;
    cdsDetailTracyFINVOICEDBASEQTY: TFloatField;
    cdsDetailTracyFUNINVOICEDBASEQTY: TFloatField;
    cdsDetailTracyFUNRETURNEDBASEQTY: TFloatField;
    cdsDetailTracyFRETURNEDBASEQTY: TFloatField;
    cdsDetailTracyFPURORDERID: TWideStringField;
    cdsDetailTracyFPURORDERENTRYID: TWideStringField;
    cdsDetailTracyFCLOSEDDATE: TDateTimeField;
    cdsDetailTracyFTOTALRETURNAMT: TFloatField;
    cdsDetailTracyFLOCALAMOUNT: TFloatField;
    cdsDetailTracyFLOCALTAX: TFloatField;
    cdsDetailTracyFLOCALTAXAMOUNT: TFloatField;
    cdsDetailTracyFREASON: TWideStringField;
    cdsDetailTracyFNEWRETURNSREASON: TWideStringField;
    cdsDetailTracyFTOTALINVOICEDAMT: TFloatField;
    cdsDetailTracyFCOREBILLTYPEID: TWideStringField;
    cdsDetailTracyFCOREBILLID: TWideStringField;
    cdsDetailTracyFCOREBILLNUMBER: TWideStringField;
    cdsDetailTracyFCOREBILLENTRYID: TWideStringField;
    cdsDetailTracyFCOREBILLENTRYSEQ: TFloatField;
    cdsDetailTracyFISBETWEENCOMPANYREC: TFloatField;
    cdsDetailTracyFSUPPLIERLOTNO: TWideStringField;
    cdsDetailTracyFPROJECTID: TWideStringField;
    cdsDetailTracyFTRACKNUMBERID: TWideStringField;
    cdsDetailTracyFPURCONTRACTID: TWideStringField;
    cdsDetailTracyCFPACKID: TWideStringField;
    cdsDetailTracyCFCOLORID: TWideStringField;
    cdsDetailTracyCFMUTILSOURCEBILL: TWideStringField;
    cdsDetailTracyCFPACKNUM: TFloatField;
    cdsDetailTracyCFSIZESID: TWideStringField;
    cdsDetailTracyCFCUPID: TWideStringField;
    cdsDetailTracyCFSIZEGROUPID: TWideStringField;
    cdsDetailTracyCFSALEPRICE: TFloatField;
    cdsDetailTracyCFDISCOUNT: TFloatField;
    cdsDetailTracyCFACTUALPRICE: TFloatField;
    cdsDetailTracyCFDISCOUNTAMOUNT: TFloatField;
    cdsDetailTracyCFACTUALTAXPRICE: TFloatField;
    cdsDetailTracyCFASSISTNUM: TWideStringField;
    cdsDetailTracycfMaterialNumber: TStringField;
    cdsDetailTracycfMaterialName: TStringField;
    cdsDetailTracyCFColorCode: TStringField;
    cdsDetailTracyCFColorName: TStringField;
    cdsDetailTracyCFCupName: TStringField;
    cdsDetailTracyCFPackName: TStringField;
    cdsDetailTracyCFBrandName: TWideStringField;
    cdsDetailTracycfattributeName: TWideStringField;
    cdsDetailTracyCFNUitName: TWideStringField;
    cdsDetailTracyCfbrandid: TWideStringField;
    cdsDetailTracycfattributeid: TWideStringField;
    cxgridDetialFSEQ: TcxGridDBColumn;
    cxgridDetialFREMARK: TcxGridDBColumn;
    cxgridDetialFPRICE: TcxGridDBColumn;
    cxgridDetialFAMOUNT: TcxGridDBColumn;
    cxgridDetialFQTY: TcxGridDBColumn;
    cxgridDetialCFPACKNUM: TcxGridDBColumn;
    cxgridDetialCFDISCOUNT: TcxGridDBColumn;
    cxgridDetialCFACTUALPRICE: TcxGridDBColumn;
    cxgridDetialCFACTUALTAXPRICE: TcxGridDBColumn;
    cxgridDetialcfMaterialNumber: TcxGridDBColumn;
    cxgridDetialcfMaterialName: TcxGridDBColumn;
    cxgridDetialCFColorCode: TcxGridDBColumn;
    cxgridDetialCFColorName: TcxGridDBColumn;
    cxgridDetialCFCupName: TcxGridDBColumn;
    cxgridDetialCFPackName: TcxGridDBColumn;
    cxgridDetialCFBrandName: TcxGridDBColumn;
    cxgridDetialcfattributeName: TcxGridDBColumn;
    cxgridDetialCFNUitName: TcxGridDBColumn;
    cdsDetailTracyCFSizeCode: TWideStringField;
    cdsDetailTracyCFSizeName: TWideStringField;
    cxgridDetialCFSizeCode: TcxGridDBColumn;
    cxgridDetialCFSizeName: TcxGridDBColumn;
    cxgridDetialCFDPPRICE: TcxGridDBColumn;
    cdsDetailCFDPPRICE: TFloatField;
    cdsDetailTracyCFDPPRICE: TFloatField;
    cxDBCheckBox1: TcxDBCheckBox;
    cxgridDetialFTAXRATE: TcxGridDBColumn;
    cxgridDetialFTAX: TcxGridDBColumn;
    cxgridDetialFTAXAMOUNT: TcxGridDBColumn;
    dbgList2FTAXRATE: TcxGridDBColumn;
    dbgList2Ftax: TcxGridDBColumn;
    cdsDetailAmountFTAXRATE: TFloatField;
    cdsDetailAmountFTAX: TFloatField;
    cdsDetailAmountFTAXAMOUNT: TFloatField;
    dbgList2FTAXAMOUNT: TcxGridDBColumn;
    cdsDetailAmountCFACTUALTAXPRICE: TFloatField;
    dbgList2CFACTUALTAXPRICE: TcxGridDBColumn;
    cdstracyFID: TWideStringField;
    cdstracyFSEQ: TFloatField;
    cdstracyFMATERIALID: TWideStringField;
    cdstracyFBASEUNITID: TWideStringField;
    cdstracyFREMARK: TWideStringField;
    cdstracyFPRICE: TFloatField;
    cdstracyFAMOUNT: TFloatField;
    cdstracyFTAXRATE: TFloatField;
    cdstracyFTAX: TFloatField;
    cdstracyFTAXAMOUNT: TFloatField;
    cdstracyFQTY: TFloatField;
    cdstracyFPARENTID: TWideStringField;
    cdstracyCFPACKID: TWideStringField;
    cdstracyCFCOLORID: TWideStringField;
    cdstracyCFPACKNUM: TFloatField;
    cdstracyCFSIZESID: TWideStringField;
    cdstracyCFCUPID: TWideStringField;
    cdstracyCFSIZEGROUPID: TWideStringField;
    cdstracyCFDISCOUNT: TFloatField;
    cdstracyCFACTUALPRICE: TFloatField;
    cdstracyCFACTUALTAXPRICE: TFloatField;
    cdstracyCFDPPRICE: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure cdsDetailNewRecord(DataSet: TDataSet);
    procedure cxdblookupInputwayPropertiesCloseUp(Sender: TObject);
    procedure cdsMasterCalcFields(DataSet: TDataSet);
    procedure btnKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnEnter(Sender: TObject);
    procedure btnExit(Sender: TObject);
    procedure cxbtnNUmberPropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxbtnNUmberPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxbtnSendWareNumPropertiesChange(Sender: TObject);
    procedure cxbtnSendWareNumPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cdsDetailBeforePost(DataSet: TDataSet);
    procedure cdsDetailAmountCFPACKIDChange(Sender: TField);
    procedure cdsDetailAmountCFPACKNUMChange(Sender: TField);
    procedure cxPageDetailChange(Sender: TObject);
    procedure dbgList2cfMaterialNumberPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure dbgList2CFColorCodePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure dbgList2CFCupNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure dbgList2CFPackNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cdsDetailAmountCFDISCOUNTChange(Sender: TField);
    procedure cdsDetailAmountCFACTUALTAXPRICEChange(Sender: TField);
    procedure cdsDetailAmountCFACTUALPRICEChange(Sender: TField);
    procedure cdsDetailAmountFTAXRATEChange(Sender: TField);
    procedure dbgList2Editing(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure cdsMasterCFWAREHOUSEIDChange(Sender: TField);
    procedure cdsDetailAmountAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
    procedure calAmt(DataSet: TDataSet);override;//计算金额
  public
    { Public declarations }
    procedure Open_Bill(KeyFields: String; KeyValues: String); override;
    //保存单据
    function ST_Save : Boolean; override;
    procedure AddDetailRecord;override;
  end;

var
  FM_BillEditPurRetuens: TFM_BillEditPurRetuens;

implementation

uses FrmCliDM,Pub_Fun,uMaterDataSelectHelper;

{$R *.dfm}

procedure TFM_BillEditPurRetuens.FormCreate(Sender: TObject);
var
  strsql,strError : string  ;
begin
  sBillTypeID := BillConst.BILLTYPE_PR;  //单据类型FID
  inherited;
  strsql := 'select FID,fnumber,fname_l2 from t_Bd_Returntype';
  Clidm.Get_OpenSQL(cdsReturnType,strsql,strError);
  sKeyFields := 'FmaterialID;CFColorID;CFCupID;CFpackID';
  Self.Bill_Sign := 'T_SM_PurReturns';
  Self.BillEntryTable := 'T_SM_PurReturnsentry';

  cdsSupplier.Data := CliDM.cdsSupplier.Data;
  //不允许重复的主键
  setkeyFieldList('cfMaterialNumber;CFColorCode;CFPackName;CFCupName');
end;
procedure TFM_BillEditPurRetuens.Open_Bill(KeyFields, KeyValues: String);
var OpenTables: array[0..1] of string;
    _cds: array[0..1] of TClientDataSet;
    ErrMsg,FSupplierID,strsql : string;
begin
  OpenTables[0] := 'T_SM_PurReturns';
  OpenTables[1] := 'T_SM_PurReturnsentry';
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
      FieldByName('FID').AsString := CliDM.GetEASSID(UserInfo.T_SM_PurReturns);
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
      FieldByName('FPurchaseOrgUnitID').AsString := UserInfo.Branch_ID;  //采购组织
      FieldByName('FCurrencyID').AsString := BillConst.FCurrency;   //币别
      FieldByName('FBASESTATUS').AsInteger := 1;  //保存状态
      FieldByName('FBizTypeID').AsString := 'd8e80652-0107-1000-e000-04c5c0a812202407435C';   //单据类型：采购退货申请单
      FieldByName('FBillTypeID').AsString := sBillTypeID;
      FieldByName('CFSUPPLIERSALEORGID').AsString := UserInfo.Branch_ID;
      FieldByName('CFSUPPLIERSTORAGEID').AsString := UserInfo.Branch_ID;
      FieldByName('FExchangeRate').asinteger := 1;  //汇率
      ////FieldByName('FIsSysBill').asinteger := 0;  //系统单据
      FieldByName('CFINPUTWAY').AsString :=  'NOTPACK';
      FieldByName('FISINTAX').AsFloat := 0;
      FieldByName('cfinseasonbound').AsFloat := 0;
    end;
  end;
  inherited;
end;
procedure TFM_BillEditPurRetuens.cdsDetailNewRecord(DataSet: TDataSet);
begin
  inherited;
  with DataSet do
  begin
    DataSet.FieldByName('FID').AsString := CliDM.GetEASSID(UserInfo.T_SM_PurReturnsentry);
    DataSet.FieldByName('FParentID').AsString := BillIDValue;
    DataSet.FieldByName('FSTORAGEORGUNITID').AsString := UserInfo.Branch_ID; //库存组织
    DataSet.FieldByName('FRETURNSDATE').AsFloat := UserInfo.ServerTime; //退货日期
    DataSet.FieldByName('FWAREHOUSEID').AsString := cdsMaster.fieldbyname('CFWAREHOUSEID').AsString;
  end;
end;

procedure TFM_BillEditPurRetuens.cxdblookupInputwayPropertiesCloseUp(
  Sender: TObject);
begin
  inherited;
  //
end;
function TFM_BillEditPurRetuens.ST_Save : Boolean;
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
  end;   }

  if cdsMaster.State in db.dsEditModes then
     cdsMaster.Post;
  if cdsDetail.State in db.dsEditModes then
     cdsDetail.Post;

  //定义提交的数据集数据
  _cds[0] := cdsMaster;
  _cds[1] := cdsDetail;

  //提交数据
  try
    if CliDM.Apply_Delta_Ex(_cds,['T_SM_PurReturns','T_SM_PurReturnsentry'],ErrMsg) then
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
procedure TFM_BillEditPurRetuens.cdsMasterCalcFields(DataSet: TDataSet);
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
    if DataSet.FindField('CFWAREName')<> nil then
    begin
      if FindRecord1(CliDM.cdsWarehouse,'FID',DataSet.fieldbyname('CFWAREHOUSEID').AsString,1) then
      begin
        cxbtnSendWareNum.Text := CliDM.cdsWarehouse.fieldbyname('fnumber').AsString;
        DataSet.FindField('CFWAREName').AsString := CliDM.cdsWarehouse.fieldbyname('fname_l2').AsString;
      end;
    end;
  finally
    if tmpbtnEdit<> nil then
      tmpbtnEdit.Properties.OnChange := event;
  end;
end;

procedure TFM_BillEditPurRetuens.btnKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
//
end;

procedure TFM_BillEditPurRetuens.btnEnter(Sender: TObject);
begin
  inherited;
  //
end;

procedure TFM_BillEditPurRetuens.btnExit(Sender: TObject);
begin
  inherited;
  //
end;

procedure TFM_BillEditPurRetuens.cxbtnNUmberPropertiesChange(
  Sender: TObject);
begin
  inherited;
  girdList.hint :='FSUPPLIERID';
  HeadAutoSelIDchange(cdsSupplier,'');  
end;

procedure TFM_BillEditPurRetuens.FormShow(Sender: TObject);
begin
  inherited;
  sIniBillFlag :='PR';
  sSPPack := 'SCM';
end;

procedure TFM_BillEditPurRetuens.cxbtnNUmberPropertiesButtonClick(
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

procedure TFM_BillEditPurRetuens.cxbtnSendWareNumPropertiesChange(
  Sender: TObject);
begin
  inherited;
  girdList.hint :='CFWAREHOUSEID';
  HeadAutoSelIDchange(cdsSupplier,'');
end;

procedure TFM_BillEditPurRetuens.cxbtnSendWareNumPropertiesButtonClick(
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
          cdsMaster.FieldByName('CFWAREHOUSEID').AsString := fieldbyname('fid').AsString;
      end;
    end;
  finally
    TcxButtonEdit(Sender).Properties.OnChange := ChangEvent;
  end;
end;

procedure TFM_BillEditPurRetuens.cdsDetailBeforePost(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FWAREHOUSEID').AsString := cdsMaster.fieldbyname('CFWAREHOUSEID').AsString;
end;

procedure TFM_BillEditPurRetuens.cdsDetailAmountCFPACKIDChange(
  Sender: TField);
begin
  inherited;
  if cdsDetailAmount.FieldByName('CFPackNum').AsInteger>0 then
    PackNumChang(cdsDetailAmount,cdsDetailAmount.FieldByName('CFSIZEGROUPID').AsString,cdsDetailAmount.fieldbyname('CFPackID').AsString);

end;

procedure TFM_BillEditPurRetuens.cdsDetailAmountCFPACKNUMChange(
  Sender: TField);
begin
  inherited;
  if cdsDetailAmount.FieldByName('CFPackNum').AsInteger>0 then
    PackNumChang(cdsDetailAmount,cdsDetailAmount.FieldByName('CFSIZEGROUPID').AsString,cdsDetailAmount.fieldbyname('CFPackID').AsString);

end;

procedure TFM_BillEditPurRetuens.cxPageDetailChange(Sender: TObject);
begin
  inherited;
  if cxPageDetail.ActivePage=cxTabTractDetail  then
  begin
    cdstracy.Data := cdsDetail.Data;
    OpenTracyDetail('');
  end;
end;

procedure TFM_BillEditPurRetuens.dbgList2cfMaterialNumberPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  FindMaterial;
end;

procedure TFM_BillEditPurRetuens.dbgList2CFColorCodePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  FindColor;
end;

procedure TFM_BillEditPurRetuens.dbgList2CFCupNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  FindCup;
end;

procedure TFM_BillEditPurRetuens.dbgList2CFPackNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  FindPack;
end;
procedure TFM_BillEditPurRetuens.calAmt(DataSet: TDataSet);
begin
  DataSet.FieldByName('FAmount').AsFloat := CliDM.SimpleRoundTo(DataSet.fieldbyname('fqty').AsFloat*DataSet.FieldByName('CFACTUALPRICE').AsFloat); //金额
  DataSet.FieldByName('FTaxAmount').AsFloat := CliDM.SimpleRoundTo(DataSet.fieldbyname('fqty').AsFloat*DataSet.FieldByName('CFACTUALTAXPRICE').AsFloat); //价税合计
  DataSet.FieldByName('FTax').AsFloat := CliDM.SimpleRoundTo(DataSet.fieldbyname('fqty').AsFloat*(DataSet.FieldByName('CFACTUALTAXPRICE').AsFloat-DataSet.FieldByName('CFACTUALPRICE').AsFloat)); //税额
  DataSet.FieldByName('FLocalAmount').AsFloat := DataSet.FieldByName('FAmount').AsFloat;
  DataSet.FieldByName('FLocalTax').AsFloat := DataSet.FieldByName('FTax').AsFloat;
  DataSet.FieldByName('FLocalTaxAmount').AsFloat := DataSet.FieldByName('FTaxAmount').AsFloat;
  Dataset.FieldByName('FTaxprice').AsFloat := DataSet.FieldByName('CFACTUALTAXPRICE').AsFloat;
end;

procedure TFM_BillEditPurRetuens.cdsDetailAmountCFDISCOUNTChange(
  Sender: TField);
  var
    Event,EventRate : TFieldNotifyEvent;
begin
  inherited;
  try
    Event := Sender.DataSet.FieldByName('CFACTUALPRICE').OnChange ;
    EventRate := Sender.DataSet.FieldByName('CFActualTaxPrice').OnChange ;
    Sender.DataSet.FieldByName('CFACTUALPRICE').OnChange := nil;
    Sender.DataSet.FieldByName('CFActualTaxPrice').OnChange := nil;

    if sender.DataSet.fieldbyname('FPRICE').AsFloat<>0 then
      Sender.DataSet.FieldByName('CFACTUALPRICE').AsFloat := CliDM.SimpleRoundTo(sender.DataSet.FieldByName('CFDISCOUNT').AsFloat*sender.DataSet.fieldbyname('FPRICE').AsFloat/100);
    if cdsMaster.FieldByName('FISINTAX').AsInteger =0 then 
      Sender.DataSet.FieldByName('CFActualTaxPrice').AsFloat :=CliDM.SimpleRoundTo( Sender.DataSet.FieldByName('CFACTUALPRICE').AsFloat*(1+cdsDetailAmount.FieldByName('ftaxRate').AsFloat/100)) ;
  finally
    Sender.DataSet.FieldByName('CFACTUALPRICE').OnChange := Event;
    Sender.DataSet.FieldByName('CFActualTaxPrice').OnChange := EventRate;
  end;

end;

procedure TFM_BillEditPurRetuens.cdsDetailAmountCFACTUALTAXPRICEChange(
  Sender: TField);
  var
    Event,EventRate : TFieldNotifyEvent;
begin
  inherited;
  try
    Event := sender.DataSet.FieldByName('CFACTUALPRICE').OnChange;
    sender.DataSet.FieldByName('CFACTUALPRICE').OnChange := nil;
    EventRate := Sender.DataSet.FieldByName('CFDISCOUNT').OnChange ;
    Sender.DataSet.FieldByName('CFDISCOUNT').OnChange := nil;
    if Sender.DataSet.Fieldbyname('FTaxRate').AsFloat<>0 then
      sender.DataSet.FieldByName('CFACTUALPRICE').AsFloat :=CliDM.SimpleRoundTo( Sender.AsFloat/(1+ Sender.DataSet.Fieldbyname('FTaxRate').AsFloat/100))
    else
      sender.DataSet.FieldByName('CFACTUALPRICE').AsFloat := Sender.AsFloat;
    if sender.DataSet.fieldbyname('FPRICE').AsFloat<>0 then
      Sender.DataSet.FieldByName('CFDISCOUNT').AsFloat :=CliDM.SimpleRoundTo( sender.DataSet.FieldByName('CFACTUALPRICE').AsFloat/sender.DataSet.fieldbyname('FPRICE').AsFloat*100);
  finally
    sender.DataSet.FieldByName('CFACTUALPRICE').OnChange := Event;
    Sender.DataSet.FieldByName('CFDISCOUNT').OnChange := EventRate;
  end;

end;

procedure TFM_BillEditPurRetuens.cdsDetailAmountCFACTUALPRICEChange(
  Sender: TField);
  var
    Event : TFieldNotifyEvent;
begin
  inherited;
  try
    Event := Sender.DataSet.FieldByName('CFActualTaxPrice').OnChange ;
    Sender.DataSet.FieldByName('CFActualTaxPrice').OnChange := nil;
    if sender.DataSet.fieldbyname('FPRICE').AsFloat<>0 then
      Sender.DataSet.FieldByName('CFDISCOUNT').AsFloat := CliDM.SimpleRoundTo(sender.DataSet.FieldByName('CFACTUALPRICE').AsFloat/sender.DataSet.fieldbyname('FPRICE').AsFloat*100);
    if cdsMaster.FieldByName('FISINTAX').AsInteger =0 then 
      Sender.DataSet.FieldByName('CFActualTaxPrice').AsFloat := Sender.AsFloat ;
  finally
    Sender.DataSet.FieldByName('CFActualTaxPrice').OnChange := Event;
  end;

end;

procedure TFM_BillEditPurRetuens.cdsDetailAmountFTAXRATEChange(
  Sender: TField);
  var
    Event,EventRate : TFieldNotifyEvent;
begin
  inherited;
  try
    Event := sender.DataSet.FieldByName('CFACTUALPRICE').OnChange;
    sender.DataSet.FieldByName('CFACTUALPRICE').OnChange := nil;
    EventRate :=Sender.DataSet.FieldByName('CFDISCOUNT').OnChange;
    Sender.DataSet.FieldByName('CFDISCOUNT').OnChange := nil;
    sender.DataSet.FieldByName('CFACTUALPRICE').AsFloat := CliDM.SimpleRoundTo(Sender.DataSet.Fieldbyname('CFActualTaxPrice').AsFloat/(1+Sender.AsFloat/100));
    if sender.DataSet.fieldbyname('FPRICE').AsFloat<>0 then
      Sender.DataSet.FieldByName('CFDISCOUNT').AsFloat := CliDM.SimpleRoundTo(sender.DataSet.FieldByName('CFACTUALPRICE').AsFloat/sender.DataSet.fieldbyname('FPRICE').AsFloat*100);
  finally
    sender.DataSet.FieldByName('CFACTUALPRICE').OnChange := Event;
    Sender.DataSet.FieldByName('CFDISCOUNT').OnChange := EventRate;
  end;

end;

procedure TFM_BillEditPurRetuens.dbgList2Editing(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  var AAllow: Boolean);
begin
  inherited;
  if cdsMaster.FieldByName('FISINTAX').AsInteger=1 then
  begin
    if (UpperCase(FocuField)=UpperCase('CFActualTaxPrice')) or (UpperCase(FocuField)=UpperCase('FTaxRate')) then
      AAllow :=True ;
    if FocuField='CFACTUALPRICE' then
      AAllow := False;
  end
  else
  begin
    if (UpperCase(FocuField)=UpperCase('CFActualTaxPrice')) or (UpperCase(FocuField)=UpperCase('FTaxRate')) then
      AAllow :=False;
    if FocuField='CFACTUALPRICE' then
      AAllow := True;
  end;  
end;

procedure TFM_BillEditPurRetuens.cdsMasterCFWAREHOUSEIDChange(
  Sender: TField);
begin
  inherited;
  FOutWarehouseFID := Sender.AsString;
end;
procedure TFM_BillEditPurRetuens.AddDetailRecord;
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
      fieldbyname('CFACTUALPRICE').asFloat := cdsDetailAmount.fieldbyname('CFACTUALPRICE').asfloat;
      fieldbyname('FTAXRATE').asFloat := cdsDetailAmount.fieldbyname('FTAXRATE').asfloat;
      fieldbyname('CFACTUALTAXPRICE').asFloat := cdsDetailAmount.fieldbyname('CFACTUALTAXPRICE').asfloat;
      fieldbyname('CFDISCOUNT').asFloat := cdsDetailAmount.fieldbyname('CFDISCOUNT').asfloat;
      fieldbyname('fremark').asstring := cdsDetailAmount.fieldbyname('fremark').AsString;
      fieldbyname('FBASEUNITID').AsString := cdsDetailAmount.FieldByName('FBASEUNITID').AsString ;
      FieldByName('FWAREHOUSEID').AsString := cdsMaster.fieldbyname('CFWAREHOUSEID').AsString;
      //FieldByName('FLOCATIONID').AsString := cdsDetailAmount.fieldbyname('FLOCATIONID').AsString;
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
procedure TFM_BillEditPurRetuens.cdsDetailAmountAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  //
end;

end.
