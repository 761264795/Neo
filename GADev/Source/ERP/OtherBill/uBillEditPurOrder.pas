unit uBillEditPurOrder;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Frm_BillEditBase, 
  cxEdit, DB, Menus,
  ADODB, DBClient, ActnList, dxBar, cxClasses,
  ImgList, cxCheckBox, StdCtrls, cxButtons, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit, cxCalendar, cxDBEdit,
  cxContainer, cxMaskEdit, ExtCtrls, cxGridLevel,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxLabel,StrUtils, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxDBData,
  cxLookAndFeelPainters, cxButtonEdit, dxGDIPlusClasses, jpeg, Grids,
  DBGrids, dxSkinsCore,
  dxSkinscxPCPainter, dxSkinsdxBarPainter,  cxPC, cxSpinEdit;

type
  TFM_BillEditPurOrder = class(TFM_BillEditBase)
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
    cdsMasterFAUDITORID: TWideStringField;
    cdsMasterFSOURCEBILLID: TWideStringField;
    cdsMasterFSOURCEFUNCTION: TWideStringField;
    cdsMasterFAUDITTIME: TDateTimeField;
    cdsMasterFBIZTYPEID: TWideStringField;
    cdsMasterFSOURCEBILLTYPEID: TWideStringField;
    cdsMasterFBILLTYPEID: TWideStringField;
    cdsMasterFPURCHASEORGUNITID: TWideStringField;
    cdsMasterFPURCHASEGROUPID: TWideStringField;
    cdsMasterFPURCHASEPERSONID: TWideStringField;
    cdsMasterFSUPPLIERID: TWideStringField;
    cdsMasterFSUPPLIERADDRESS: TWideStringField;
    cdsMasterFSUPPLIERORDERNUMBER: TWideStringField;
    cdsMasterFSALEORGUNITID: TWideStringField;
    cdsMasterFSALEORDERID: TWideStringField;
    cdsMasterFPAYMENTTYPEID: TWideStringField;
    cdsMasterFSETTLEMENTTYPEID: TWideStringField;
    cdsMasterFCASHDISCOUNTID: TWideStringField;
    cdsMasterFCURRENCYID: TWideStringField;
    cdsMasterFPREPAYMENTDATE: TDateTimeField;
    cdsMasterFADMINORGUNITID: TWideStringField;
    cdsMasterFSTORAGEORGUNITID: TWideStringField;
    cdsMasterFCOMPANYORGUNITID: TWideStringField;
    cdsMasterFALTERDATE: TDateTimeField;
    cdsMasterFALTERPERSON: TWideStringField;
    cdsMasterFPAYMENTCONDITIONID: TWideStringField;
    cdsMasterFWAREHOUSEID: TWideStringField;
    cdsMasterCFRECEIVEDATE: TDateTimeField;
    cdsMasterCFTYPEINFORMATION: TWideStringField;
    cdsMasterCFPRICETYPEID: TWideStringField;
    cdsMasterCFSUBBILLTYPE: TWideStringField;
    cdsMasterCFORDERTYPEID: TWideStringField;
    cdsDetailFID: TWideStringField;
    cdsDetailFMATERIALID: TWideStringField;
    cdsDetailFASSISTPROPERTYID: TWideStringField;
    cdsDetailFUNITID: TWideStringField;
    cdsDetailFSOURCEBILLID: TWideStringField;
    cdsDetailFSOURCEBILLNUMBER: TWideStringField;
    cdsDetailFSOURCEBILLENTRYID: TWideStringField;
    cdsDetailFSOURCEBILLTYPEID: TWideStringField;
    cdsDetailFBASEUNITID: TWideStringField;
    cdsDetailFASSISTUNITID: TWideStringField;
    cdsDetailFREMARK: TWideStringField;
    cdsDetailFREASONCODEID: TWideStringField;
    cdsDetailFSUPPLIERMATERIALNUMBER: TWideStringField;
    cdsDetailFSUPPLIERMATERIALNAME: TWideStringField;
    cdsDetailFSUPPLIERMATERIALMODEL: TWideStringField;
    cdsDetailFASSETNUMBER: TWideStringField;
    cdsDetailFSTORAGEORGUNITID: TWideStringField;
    cdsDetailFADMINORGUNITID: TWideStringField;
    cdsDetailFCOMPANYORGUNITID: TWideStringField;
    cdsDetailFDELIVERYDATE: TDateTimeField;
    cdsDetailFPARENTID: TWideStringField;
    cdsDetailFDELIVERYADDRESS: TWideStringField;
    cdsDetailFCLOSEDATE: TDateTimeField;
    cdsDetailFSALEORDERNUMBER: TWideStringField;
    cdsDetailFREQUESTORGUNITID: TWideStringField;
    cdsDetailFREQUESTCOMPANYORGUNITID: TWideStringField;
    cdsDetailFREASON: TWideStringField;
    cdsDetailFOLDID: TWideStringField;
    cdsDetailFROWTYPEID: TWideStringField;
    cdsDetailFWAREHOUSEID: TWideStringField;
    cdsDetailFDESTINATIONTYPE: TWideStringField;
    cdsDetailFMATERIALNAME: TWideStringField;
    cdsDetailFNONUMMATERIALMODEL: TWideStringField;
    cdsDetailFQCSTANDARDID: TWideStringField;
    cdsDetailFPROJECTID: TWideStringField;
    cdsDetailFTRACKNOID: TWideStringField;
    cdsDetailFPURCONTRACTID: TWideStringField;
    cdsDetailCFCUSTOMERORDERID: TWideStringField;
    cdsDetailCFPACKID: TWideStringField;
    cdsDetailCFCOLORID: TWideStringField;
    cdsDetailCFMUTILSOURCEBILL: TWideStringField;
    cdsDetailCFSIZESID: TWideStringField;
    cdsDetailCFCUSTOMERDISID: TWideStringField;
    cdsDetailCFRECEIVESTOREUNIT: TWideStringField;
    cdsDetailCFCUPID: TWideStringField;
    cdsDetailCFSIZEGROUPID: TWideStringField;
    cdsDetailCFLOCATION: TWideStringField;
    cdsDetailAmountFMATERIALID: TWideStringField;
    cdsDetailAmountCFCOLORID: TWideStringField;
    cdsDetailAmountCFCUPID: TWideStringField;
    cdsMasterFYEAR: TFloatField;
    cdsMasterFHASEFFECTED: TFloatField;
    cdsMasterFBASESTATUS: TFloatField;
    cdsMasterFISAPPROVEDMATERIAL: TFloatField;
    cdsMasterCFISCRATESALEORDER: TFloatField;
    cdsMasterCFHASPURPRICE: TFloatField;
    cdsMasterFISPRICEINTAX: TFloatField;
    cdsMasterFISQUICKEN: TFloatField;
    cdsMasterFISINTAX: TFloatField;
    cdsMasterFISCENTRALBALANCE: TFloatField;
    cdsMasterFLOCALTOTALTAXAMOUNT: TFloatField;
    cdsMasterFLOCALTOTALAMOUNT: TFloatField;
    cdsMasterFISSYSBILL: TFloatField;
    cdsMasterFUNPREPAIDAMOUNT: TFloatField;
    cdsMasterFTOTALTAXAMOUNT: TFloatField;
    cdsMasterFTOTALTAX: TFloatField;
    cdsMasterFTOTALAMOUNT: TFloatField;
    cdsMasterFISINNERSALE: TFloatField;
    cdsMasterFPAIDAMOUNT: TFloatField;
    cdsMasterFINVOICEDAMOUNT: TFloatField;
    cdsMasterFPREPAYMENT: TFloatField;
    cdsMasterFEXCHANGERATE: TFloatField;
    cdsMasterFPERIOD: TFloatField;
    cdsMasterFPREPAYMENTRATE: TFloatField;
    cdsMasterFPREPAID: TFloatField;
    cdsMasterFSUPPLIERCONFIRM: TFloatField;
    cdsDetailFSEQ: TFloatField;
    cdsDetailCFDPPRICE: TFloatField;
    cdsDetailCFSOASSOCIATEQTY: TFloatField;
    cdsDetailCFPACKNUM: TFloatField;
    cdsDetailFMATCHEDAMOUNT: TFloatField;
    cdsDetailFTOTALREQPAYAMT: TFloatField;
    cdsDetailFISREQPREPAYGTPREPAY: TFloatField;
    cdsDetailFSOURCEBILLENTRYSEQ: TFloatField;
    cdsDetailFCANINVMOVEQTY: TFloatField;
    cdsDetailFUNORDEREDQTY: TFloatField;
    cdsDetailFISBETWEENCOMPANYREC: TFloatField;
    cdsDetailFPLANRECEIVEQTY: TFloatField;
    cdsDetailFTOTALSUPPLYSTOCKQTY: TFloatField;
    cdsDetailFTOTALCANCELLEDSTOCKQTY: TFloatField;
    cdsDetailFTOTALSUPPLYSTOCKBASEQTY: TFloatField;
    cdsDetailFTOTALPREPAYAMT: TFloatField;
    cdsDetailFASSOCIATEQTY: TFloatField;
    cdsDetailFASSCOEFFICIENT: TFloatField;
    cdsDetailFBASESTATUS: TFloatField;
    cdsDetailFISPRESENT: TFloatField;
    cdsDetailFDEMANDQTY: TFloatField;
    cdsDetailFQTY: TFloatField;
    cdsDetailFASSISTQTY: TFloatField;
    cdsDetailFPRICE: TFloatField;
    cdsDetailFDISCOUNTRATE: TFloatField;
    cdsDetailFACTUALPRICE: TFloatField;
    cdsDetailFTAXRATE: TFloatField;
    cdsDetailFTAXPRICE: TFloatField;
    cdsDetailFAMOUNT: TFloatField;
    cdsDetailFBASEQTY: TFloatField;
    cdsDetailFLOCALAMOUNT: TFloatField;
    cdsDetailFTAX: TFloatField;
    cdsDetailFACTUALTAXPRICE: TFloatField;
    cdsDetailFISREQCOMEQLRECCOM: TFloatField;
    cdsDetailFDISCOUNTAMOUNT: TFloatField;
    cdsDetailFTOTALUNRECEIVEQTY: TFloatField;
    cdsDetailFCURSEORDERQTY: TFloatField;
    cdsDetailFTAXAMOUNT: TFloatField;
    cdsDetailFTOTALMOVEQTY: TFloatField;
    cdsDetailFTOTALRECEIVEQTY: TFloatField;
    cdsDetailFTOTALRECEIPTQTY: TFloatField;
    cdsDetailFRECEIVEOVERRATE: TFloatField;
    cdsDetailFLOCALTAXAMOUNT: TFloatField;
    cdsDetailFTOTALRETURNEDQTY: TFloatField;
    cdsDetailFTOTALRECEIVEBASEQTY: TFloatField;
    cdsDetailFTOTALINVOICEDQTY: TFloatField;
    cdsDetailFTOTALINVOICEDAMOUNT: TFloatField;
    cdsDetailFTOTALRECEIPTBASEQTY: TFloatField;
    cdsDetailFTOTALRETURNEDBASEQTY: TFloatField;
    cdsDetailFISTIMEUNCTRL: TFloatField;
    cdsDetailFTOTALINVOICEDBASEQTY: TFloatField;
    cdsDetailFTOTALUNRETURNBASEQTY: TFloatField;
    cdsDetailFTOTALUNRECEIVEBASEQTY: TFloatField;
    cdsDetailFRECEIVEOWINGRATE: TFloatField;
    cdsDetailFDELIVERADVANCEDAY: TFloatField;
    cdsDetailFTOTALPAIDAMOUNT: TFloatField;
    cdsDetailFDELIVERDEFERRALDAY: TFloatField;
    cdsDetailFISREQUESTTORECEIVED: TFloatField;
    cdsDetailFISQUANTITYUNCTRL: TFloatField;
    cdsDetailFTOTALEXPENSE: TFloatField;
    cdsDetailFISSUPINFO: TFloatField;
    cdsDetailFLOCALTAX: TFloatField;
    cdsDetailFTOTALINVOICEDAMT: TFloatField;
    cdsDetailFPREPAIDAMOUNT: TFloatField;
    cdsDetailFPREPAYMENT: TFloatField;
    cdsDetailFPRERECEIVED: TFloatField;
    cdsDetailFOLDSTATUS: TFloatField;
    cdsDetailFUNPRERECEIVEDAM: TFloatField;
    cdsDetailFVERSION: TFloatField;
    cdsDetailAmountcfMaterialNumber: TStringField;
    cdsDetailAmountcfMaterialName: TStringField;
    cdsDetailAmountCFColorName: TStringField;
    cdsDetailAmountCFCupName: TStringField;
    cdsDetailAmountfAmount: TFloatField;
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
    wdstrngfldDetailAmountCFSIZEGROUPID: TWideStringField;
    wdstrngfldDetailAmountFBASEUNITID: TWideStringField;
    cdsDetailAmountCFDPPRICE: TFloatField;
    wdstrngfldDetailCFAssistNum: TWideStringField;
    cdsDetailAmountFPRICE: TFloatField;
    cdsDetailAmountFACTUALPRICE: TFloatField;
    cdsDetailAmountFDISCOUNTRATE: TFloatField;
    cdsDetailAmountCFPACKNUM: TFloatField;
    cdsDetailAmountCFPACKID: TStringField;
    cdsDetailAmountFDELIVERYDATE: TDateTimeField;
    cdsDetailAmountCFPackName: TStringField;
    cdsSupplier: TClientDataSet;
    cdstemp: TClientDataSet;
    cdsDetailAmountfTotaLQty: TIntegerField;
    cdsDetailAmountCFCustomerOrderID: TStringField;
    cdsDetailAmountCFReceiveStoreUnit: TStringField;
    cdsMasterFCreatorName: TStringField;
    cdsMasterFAuditorName: TStringField;
    dxBarImportPOS: TdxBarButton;
    dxBarButton27: TdxBarButton;
    dxBarButton28: TdxBarButton;
    nCopy: TMenuItem;
    cdsMasterCFINPUTWAY: TWideStringField;
    bt_CtrlQ: TdxBarButton;
    dxBarButton32: TdxBarButton;
    bt_Ctrl_J: TdxBarButton;
    bt_Ctrl_B: TdxBarButton;
    cdsDetailAmountCFColorCode: TStringField;
    cdsSupplierFID: TWideStringField;
    cdsSupplierfnumber: TWideStringField;
    cdsSupplierfname_l2: TWideStringField;
    cdsSupplierFinternalCompanyID: TWideStringField;
    cdsSupplierFtaxRate: TFloatField;
    cdsSupplierFHelpCode: TWideStringField;
    cxbtnedtPurType: TcxDBLookupComboBox;
    cxbtnedtScopetype: TcxDBLookupComboBox;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    Label7: TLabel;
    cxDeliveryData: TcxDBDateEdit;
    cxLabel4: TcxLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxLabel5: TcxLabel;
    cxSalePerson: TcxDBButtonEdit;
    cdsMasterCFModifierName: TStringField;
    cdsMasterCFSalePerson: TStringField;
    cdsMasterCFPURTYPEID: TWideStringField;
    cdsMasterCFRageID: TWideStringField;
    cdsPurType: TClientDataSet;
    dsPurType: TDataSource;
    cdsMasterCFISProcduct: TIntegerField;
    cdsMasterCFSupplierName: TStringField;
    dbgList2cfMaterialNumber: TcxGridDBColumn;
    dbgList2cfMaterialName: TcxGridDBColumn;
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
    dbgList2fAmount: TcxGridDBColumn;
    dbgList2FPRICE: TcxGridDBColumn;
    dbgList2FACTUALPRICE: TcxGridDBColumn;
    dbgList2FDISCOUNTRATE: TcxGridDBColumn;
    dbgList2fTotaLQty: TcxGridDBColumn;
    dbgList2CFColorCode: TcxGridDBColumn;
    cdsDetailAmountCFBrandName: TWideStringField;
    cdsDetailAmountcfattributeName: TWideStringField;
    cdsDetailAmountCfbrandid: TWideStringField;
    cdsDetailAmountcfattributeid: TWideStringField;
    dbgList2CFBrandName: TcxGridDBColumn;
    dbgList2cfattributeName: TcxGridDBColumn;
    cxTabSourceBill: TcxTabSheet;
    cxGridSourceBill: TcxGridDBTableView;
    cxGrid3Level1: TcxGridLevel;
    cxGrid3: TcxGrid;
    cdsSourceBill: TClientDataSet;
    dsSourceBill: TDataSource;
    cxGridSourceBillColumn1: TcxGridDBColumn;
    cxGridSourceBillColumn2: TcxGridDBColumn;
    cxGridSourceBillColumn3: TcxGridDBColumn;
    cdsDetailTracyFID: TWideStringField;
    cdsDetailTracyFMATERIALID: TWideStringField;
    cdsDetailTracyFASSISTPROPERTYID: TWideStringField;
    cdsDetailTracyFUNITID: TWideStringField;
    cdsDetailTracyFSOURCEBILLID: TWideStringField;
    cdsDetailTracyFSOURCEBILLNUMBER: TWideStringField;
    cdsDetailTracyFSOURCEBILLENTRYID: TWideStringField;
    cdsDetailTracyFSOURCEBILLTYPEID: TWideStringField;
    cdsDetailTracyFBASEUNITID: TWideStringField;
    cdsDetailTracyFASSISTUNITID: TWideStringField;
    cdsDetailTracyFREMARK: TWideStringField;
    cdsDetailTracyFREASONCODEID: TWideStringField;
    cdsDetailTracyFSUPPLIERMATERIALNUMBER: TWideStringField;
    cdsDetailTracyFSUPPLIERMATERIALNAME: TWideStringField;
    cdsDetailTracyFSUPPLIERMATERIALMODEL: TWideStringField;
    cdsDetailTracyFASSETNUMBER: TWideStringField;
    cdsDetailTracyFSTORAGEORGUNITID: TWideStringField;
    cdsDetailTracyFADMINORGUNITID: TWideStringField;
    cdsDetailTracyFCOMPANYORGUNITID: TWideStringField;
    cdsDetailTracyFDELIVERYDATE: TDateTimeField;
    cdsDetailTracyFTRACKNUMBER: TWideStringField;
    cdsDetailTracyFPARENTID: TWideStringField;
    cdsDetailTracyFDELIVERYADDRESS: TWideStringField;
    cdsDetailTracyFCLOSEDATE: TDateTimeField;
    cdsDetailTracyFSALEORDERNUMBER: TWideStringField;
    cdsDetailTracyFREQUESTORGUNITID: TWideStringField;
    cdsDetailTracyFREQUESTCOMPANYORGUNITID: TWideStringField;
    cdsDetailTracyFREASON: TWideStringField;
    cdsDetailTracyFOLDID: TWideStringField;
    cdsDetailTracyFROWTYPEID: TWideStringField;
    cdsDetailTracyFWAREHOUSEID: TWideStringField;
    cdsDetailTracyFDESTINATIONTYPE: TWideStringField;
    cdsDetailTracyFMATERIALNAME: TWideStringField;
    cdsDetailTracyFNONUMMATERIALMODEL: TWideStringField;
    cdsDetailTracyFQCSTANDARDID: TWideStringField;
    cdsDetailTracyFPROJECTID: TWideStringField;
    cdsDetailTracyFTRACKNOID: TWideStringField;
    cdsDetailTracyFCONTRACTNUMBER: TWideStringField;
    cdsDetailTracyFPURCONTRACTID: TWideStringField;
    cdsDetailTracyCFCUSTOMERORDERID: TWideStringField;
    cdsDetailTracyCFPACKID: TWideStringField;
    cdsDetailTracyCFCOLORID: TWideStringField;
    cdsDetailTracyCFMUTILSOURCEBILL: TWideStringField;
    cdsDetailTracyCFSIZESID: TWideStringField;
    cdsDetailTracyCFCUSTOMERDISID: TWideStringField;
    cdsDetailTracyCFRECEIVESTOREUNIT: TWideStringField;
    cdsDetailTracyCFCUPID: TWideStringField;
    cdsDetailTracyCFSIZEGROUPID: TWideStringField;
    cdsDetailTracyCFLOCATION: TWideStringField;
    cdsDetailTracyFPURREQUESTID: TWideStringField;
    cdsDetailTracyFPURREQUESTENTRYID: TWideStringField;
    cdsDetailTracyFSEQ: TFloatField;
    cdsDetailTracyCFDPPRICE: TFloatField;
    cdsDetailTracyCFSOASSOCIATEQTY: TFloatField;
    cdsDetailTracyCFPACKNUM: TFloatField;
    cdsDetailTracyFMATCHEDAMOUNT: TFloatField;
    cdsDetailTracyFTOTALREQPAYAMT: TFloatField;
    cdsDetailTracyFISREQPREPAYGTPREPAY: TFloatField;
    cdsDetailTracyFSOURCEBILLENTRYSEQ: TFloatField;
    cdsDetailTracyFCANINVMOVEQTY: TFloatField;
    cdsDetailTracyFUNORDEREDQTY: TFloatField;
    cdsDetailTracyFISBETWEENCOMPANYREC: TFloatField;
    cdsDetailTracyFPLANRECEIVEQTY: TFloatField;
    cdsDetailTracyFTOTALSUPPLYSTOCKQTY: TFloatField;
    cdsDetailTracyFTOTALCANCELLEDSTOCKQTY: TFloatField;
    cdsDetailTracyFTOTALSUPPLYSTOCKBASEQTY: TFloatField;
    cdsDetailTracyFTOTALPREPAYAMT: TFloatField;
    cdsDetailTracyFASSOCIATEQTY: TFloatField;
    cdsDetailTracyFASSCOEFFICIENT: TFloatField;
    cdsDetailTracyFBASESTATUS: TFloatField;
    cdsDetailTracyFISPRESENT: TFloatField;
    cdsDetailTracyFDEMANDQTY: TFloatField;
    cdsDetailTracyFASSISTQTY: TFloatField;
    cdsDetailTracyFPRICE: TFloatField;
    cdsDetailTracyFDISCOUNTRATE: TFloatField;
    cdsDetailTracyFACTUALPRICE: TFloatField;
    cdsDetailTracyFTAXRATE: TFloatField;
    cdsDetailTracyFTAXPRICE: TFloatField;
    cdsDetailTracyFAMOUNT: TFloatField;
    cdsDetailTracyFBASEQTY: TFloatField;
    cdsDetailTracyFLOCALAMOUNT: TFloatField;
    cdsDetailTracyFTAX: TFloatField;
    cdsDetailTracyFACTUALTAXPRICE: TFloatField;
    cdsDetailTracyFISREQCOMEQLRECCOM: TFloatField;
    cdsDetailTracyFDISCOUNTAMOUNT: TFloatField;
    cdsDetailTracyFTOTALUNRECEIVEQTY: TFloatField;
    cdsDetailTracyFCURSEORDERQTY: TFloatField;
    cdsDetailTracyFTAXAMOUNT: TFloatField;
    cdsDetailTracyFTOTALMOVEQTY: TFloatField;
    cdsDetailTracyFTOTALRECEIVEQTY: TFloatField;
    cdsDetailTracyFTOTALRECEIPTQTY: TFloatField;
    cdsDetailTracyFRECEIVEOVERRATE: TFloatField;
    cdsDetailTracyFLOCALTAXAMOUNT: TFloatField;
    cdsDetailTracyFTOTALRETURNEDQTY: TFloatField;
    cdsDetailTracyFTOTALRECEIVEBASEQTY: TFloatField;
    cdsDetailTracyFTOTALINVOICEDQTY: TFloatField;
    cdsDetailTracyFTOTALINVOICEDAMOUNT: TFloatField;
    cdsDetailTracyFTOTALRECEIPTBASEQTY: TFloatField;
    cdsDetailTracyFTOTALRETURNEDBASEQTY: TFloatField;
    cdsDetailTracyFISTIMEUNCTRL: TFloatField;
    cdsDetailTracyFTOTALINVOICEDBASEQTY: TFloatField;
    cdsDetailTracyFTOTALUNRETURNBASEQTY: TFloatField;
    cdsDetailTracyFTOTALUNRECEIVEBASEQTY: TFloatField;
    cdsDetailTracyFRECEIVEOWINGRATE: TFloatField;
    cdsDetailTracyFDELIVERADVANCEDAY: TFloatField;
    cdsDetailTracyFTOTALPAIDAMOUNT: TFloatField;
    cdsDetailTracyFDELIVERDEFERRALDAY: TFloatField;
    cdsDetailTracyFISREQUESTTORECEIVED: TFloatField;
    cdsDetailTracyFISQUANTITYUNCTRL: TFloatField;
    cdsDetailTracyFTOTALEXPENSE: TFloatField;
    cdsDetailTracyFISSUPINFO: TFloatField;
    cdsDetailTracyFLOCALTAX: TFloatField;
    cdsDetailTracyFQTY: TFloatField;
    cdsDetailTracyFTOTALINVOICEDAMT: TFloatField;
    cdsDetailTracyFPREPAIDAMOUNT: TFloatField;
    cdsDetailTracyFPREPAYMENT: TFloatField;
    cdsDetailTracyFPRERECEIVED: TFloatField;
    cdsDetailTracyFOLDSTATUS: TFloatField;
    cdsDetailTracyFUNPRERECEIVEDAM: TFloatField;
    cdsDetailTracyFVERSION: TFloatField;
    cdsDetailTracyCFAssistNum: TWideStringField;
    cdsDetailTracycfMaterialNumber: TStringField;
    cdsDetailTracycfMaterialName: TStringField;
    cdsDetailTracyCFColorName: TStringField;
    cdsDetailTracyCFCupName: TStringField;
    cdsDetailTracyCFPackName: TStringField;
    cdsDetailTracyCFColorCode: TStringField;
    cdsDetailTracyCFBrandName: TWideStringField;
    cdsDetailTracycfattributeName: TWideStringField;
    cdsDetailTracyCfbrandid: TWideStringField;
    cdsDetailTracycfattributeid: TWideStringField;
    cdsDetailTracyCFNUitName: TWideStringField;
    cdsDetailAmountCFNUitName: TWideStringField;
    dbgList2CFNUitName: TcxGridDBColumn;
    cdsDetailAmountFREMARK: TWideStringField;
    dbgList2FREMARK: TcxGridDBColumn;
    cxgridDetialFREMARK: TcxGridDBColumn;
    cxgridDetialFSEQ: TcxGridDBColumn;
    cxgridDetialCFDPPRICE: TcxGridDBColumn;
    cxgridDetialCFPACKNUM: TcxGridDBColumn;
    cxgridDetialFBASESTATUS: TcxGridDBColumn;
    cxgridDetialFPRICE: TcxGridDBColumn;
    cxgridDetialFDISCOUNTRATE: TcxGridDBColumn;
    cxgridDetialFACTUALPRICE: TcxGridDBColumn;
    cxgridDetialFAMOUNT: TcxGridDBColumn;
    cxgridDetialFTOTALRECEIVEQTY: TcxGridDBColumn;
    cxgridDetialFTOTALRECEIPTQTY: TcxGridDBColumn;
    cxgridDetialFQTY: TcxGridDBColumn;
    cxgridDetialcfMaterialNumber: TcxGridDBColumn;
    cxgridDetialcfMaterialName: TcxGridDBColumn;
    cxgridDetialCFColorName: TcxGridDBColumn;
    cxgridDetialCFCupName: TcxGridDBColumn;
    cxgridDetialCFPackName: TcxGridDBColumn;
    cxgridDetialCFColorCode: TcxGridDBColumn;
    cxgridDetialCFBrandName: TcxGridDBColumn;
    cxgridDetialcfattributeName: TcxGridDBColumn;
    cxgridDetialCFNUitName: TcxGridDBColumn;
    dsRange: TDataSource;
    cdsDetailTracyCFSizeCode: TWideStringField;
    cdsDetailTracyCFSizeName: TWideStringField;
    cxgridDetialCFSizeCode: TcxGridDBColumn;
    cxgridDetialCFSizeName: TcxGridDBColumn;
    cdsDetailAmountFsourcebillnumber: TWideStringField;
    dxBarbtnSumImp: TdxBarButton;
    actSumImp: TAction;
    cdstracyFID: TWideStringField;
    cdstracyFMATERIALID: TWideStringField;
    cdstracyFBASEUNITID: TWideStringField;
    cdstracyFREMARK: TWideStringField;
    cdstracyFPARENTID: TWideStringField;
    cdstracyCFPACKID: TWideStringField;
    cdstracyCFCOLORID: TWideStringField;
    cdstracyCFSIZESID: TWideStringField;
    cdstracyCFCUPID: TWideStringField;
    cdstracyCFSIZEGROUPID: TWideStringField;
    cdstracyFSEQ: TFloatField;
    cdstracyCFDPPRICE: TFloatField;
    cdstracyCFPACKNUM: TFloatField;
    cdstracyFBASESTATUS: TFloatField;
    cdstracyFISPRESENT: TFloatField;
    cdstracyFPRICE: TFloatField;
    cdstracyFDISCOUNTRATE: TFloatField;
    cdstracyFACTUALPRICE: TFloatField;
    cdstracyFTAXPRICE: TFloatField;
    cdstracyFAMOUNT: TFloatField;
    cdstracyFACTUALTAXPRICE: TFloatField;
    cdstracyFTOTALRECEIVEQTY: TFloatField;
    cdstracyFTOTALRECEIPTQTY: TFloatField;
    cdstracyFQTY: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cdsDetailNewRecord(DataSet: TDataSet);
    procedure cdsDetailFQTYChange(Sender: TField);
    procedure cdsDetailAmountFMATERIALIDChange(Sender: TField);
    procedure cdsDetailFBASEUNITIDChange(Sender: TField);
    procedure cdsMasterBeforePost(DataSet: TDataSet);
    procedure cxbtnedtSupplierPropertiesCloseUp(Sender: TObject);
    procedure dbgList2cfMaterialNumberPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure cdsDetailAmountCalcFields(DataSet: TDataSet);
    procedure dbgList2Column1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cdsDetailAmountCFPACKNUMChange(Sender: TField);
    procedure dbgList2Editing(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure cdsDetailAmountBeforePost(DataSet: TDataSet);
    procedure cdsDetailAmountFDISCOUNTRATEChange(Sender: TField);
    procedure cdsDetailAmountBeforeInsert(DataSet: TDataSet);
    procedure cdsDetailAmountCFPACKIDChange(Sender: TField);
    procedure cdsDetailAmountAfterPost(DataSet: TDataSet);
    procedure cdsDetailAmountAfterInsert(DataSet: TDataSet);
    procedure actSetBillStatusExecute(Sender: TObject);
    procedure actNewBillExecute(Sender: TObject);
    procedure actSaveBillExecute(Sender: TObject);
    procedure actDeleteExecute(Sender: TObject);
    procedure actAuditExecute(Sender: TObject);
    procedure actUnAuditExecute(Sender: TObject);
    procedure actReportViewExecute(Sender: TObject);
    procedure actReportDesignExecute(Sender: TObject);
    procedure nCopyClick(Sender: TObject);
    procedure cxbtnedtSupplierPropertiesChange(Sender: TObject);
    procedure actCodeSM_F12Execute(Sender: TObject);
    procedure cxdblookupInputwayEditing(Sender: TObject;
      var CanEdit: Boolean);
    procedure pmDetailPopup(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bbtCheckClick(Sender: TObject);
    procedure cxcmblookupsaleorgPropertiesCloseUp(Sender: TObject);
    procedure cdsMasterAfterInsert(DataSet: TDataSet);
    procedure bt_CtrlQClick(Sender: TObject);
    procedure bt_Ctrl_BClick(Sender: TObject);
    procedure bt_Ctrl_JClick(Sender: TObject);
    procedure actF11Execute(Sender: TObject);
    procedure dxBarCodeSMClick(Sender: TObject);
    procedure actImportExcelExecute(Sender: TObject);
    procedure girdListKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cdsSupplierFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure cxbtnNUmberPropertiesChange(Sender: TObject);
    procedure cxbtnNUmberPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxSalePersonPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cdsMasterCalcFields(DataSet: TDataSet);
    procedure dbgList2CFColorCodePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure dbgList2CFCupNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure dbgList2CFPackNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxbtnNUmberEnter(Sender: TObject);
    procedure cxdblookupInputwayPropertiesCloseUp(Sender: TObject);
    procedure cxPageDetailChange(Sender: TObject);
    procedure cxbtnNUmberKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cdsDetailAmountFACTUALPRICEChange(Sender: TField);
    procedure cxbtnNUmberKeyPress(Sender: TObject; var Key: Char);
    procedure dxBarbtnSumImpClick(Sender: TObject);
    procedure dxBarbtnImpFromTxtClick(Sender: TObject);
    procedure cdsDetailAmountBeforeEdit(DataSet: TDataSet);

  private
    sSupplyFinID ,sSupplySaleOrgID,sCustID,sSupplyID,strOldSaleOrgID,strOldMatID : string;//供应商对应的财务组织和销售组织
    IsTax : Boolean;
    Ftaxrate,frate,fdpprice : Currency;
    dDeliverydate : TDateTime;
    procedure calAmt(DataSet: TDataSet);override;//计算金额
    procedure SupplierIDchange;
    procedure SaleOrgIDChange;
    { Private declarations }
  public
    { Public declarations }
    //打开单据编辑界面(主键字段, 字段值)
    
    procedure Open_Bill(KeyFields: String; KeyValues: String); override;
    //保存单据
    function ST_Save : Boolean; override;
     procedure AddDetailRecord;override;
  end;

var
  FM_BillEditPurOrder: TFM_BillEditPurOrder;
  function EditFillPurOrder_Frm(KeyValues : string):Boolean;

implementation
uses FrmCliDM,Pub_Fun,frmImpDataFromPos,uDrpHelperClase,uMaterDataSelectHelper,uPurOrderSumImpfrm,uFormTxtImport;

{$R *.dfm}
{ TFM_BillEditPurOrder }

function EditFillPurOrder_Frm(KeyValues : string):Boolean;
begin
  Result := True;
  if FM_BillEditPurOrder <> nil then
  begin
    if FM_BillEditPurOrder.Showing then
    else FM_BillEditPurOrder.Show;
    FM_BillEditPurOrder.SetFocus;
    Exit;
  end
  else
  begin
    try
      Application.CreateForm(TFM_BillEditPurOrder, FM_BillEditPurOrder);
      FM_BillEditPurOrder.Open_Bill('FID',KeyValues);
      FM_BillEditPurOrder.Show;
      if (FM_BillEditPurOrder <> nil) and (FM_BillEditPurOrder.Visible) then
         FM_BillEditPurOrder.SetFocus;
    except
      FM_BillEditPurOrder := nil;
      FM_BillEditPurOrder.Free;
    end;
  end;
end;

procedure TFM_BillEditPurOrder.Open_Bill(KeyFields, KeyValues: String);
var OpenTables: array[0..1] of string;
    _cds: array[0..1] of TClientDataSet;
    ErrMsg,FBIZTYPEID : string;
    strsql,sFinID : string;
begin
  OpenTables[0] := 'T_SM_PurOrder';
  OpenTables[1] := 'T_SM_PurOrderEntry';
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
    try
      with cdsMaster do
      begin
        Append;
        FieldByName('FID').AsString := CliDM.GetEASSID(UserInfo.T_SM_PurOrder);
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
       // FieldByName('FWAREHOUSEID').AsString := UserInfo.Warehouse_FID;       //仓库，用于生成销售订单表头仓库，配货时生成含入库店铺的调拨订单
        FieldByName('FBILLTYPEID').AsString := sBillTypeID;
        FieldByName('FBIZTYPEID').AsString := 'd8e80652-0106-1000-e000-04c5c0a812202407435C';   //业务类型：110 普通采购
        FieldByName('FPurchaseOrgUnitID').AsString := UserInfo.Branch_ID;   //采购组织
        FieldByName('FSALEORGUNITID').AsString := UserInfo.Branch_ID;   //销售组织
        FieldByName('FCOMPANYORGUNITID').AsString := UserInfo.Branch_ID; //
        FieldByName('FPaymentTypeID').AsString := BillConst.FPaymentType; //付款方式
        FieldByName('FCurrencyID').AsString := BillConst.FCurrency ;
        FieldByName('FExchangeRate').AsFloat := 1;
        FieldByName('CFINPUTWAY').AsString :=  'NOTPACK';
        FieldByName('FISINTAX').AsFloat := 0;
        FieldByName('Cfsubbilltype').AsString := 'PO'; //工厂采购
      end;
    except
      on E : Exception do
      begin
        ShowError(Handle,ErrMsg+E.Message,[]);
      end;
    end;
  end ;

  inherited;

end;

function TFM_BillEditPurOrder.ST_Save: Boolean;
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
  end;    }

  if cdsMaster.State in db.dsEditModes then
     cdsMaster.Post;
  if cdsDetail.State in db.dsEditModes then
     cdsDetail.Post;

  //定义提交的数据集数据
  _cds[0] := cdsMaster;
  _cds[1] := cdsDetail;

  //提交数据
  try
    if CliDM.Apply_Delta_Ex(_cds,['T_SM_PurOrder','T_SM_PurOrderEntry'],ErrMsg) then
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

procedure TFM_BillEditPurOrder.FormCreate(Sender: TObject);
var
  strError : string;
  strsql : string  ;
  orderTypesql : string;
  priceTypesql : string ;
  PurOrgsql,Errormsg : string;
begin
  sBillTypeID := BillConst.BILLTYPE_PO;  //单据类型FID
  inherited;
  sKeyFields := 'FmaterialID;CFColorID;CFCupID;CFpackID;Fsourcebillnumber';
  sSupplyID := '';
  Self.ReportDir:='采购订单';
  Self.Bill_Sign := 'T_SM_PurOrder';
  Self.BillEntryTable := 'T_SM_PurOrderEntry';

  cdsSupplier.Data := CliDM.cdsSupplier.Data;
  cdsPurType.Data := CliDM.cdsPURTYPE.Data;
  //不允许重复的主键
  setkeyFieldList('cfMaterialNumber;CFColorCode;CFPackName;CFCupName');

end;

procedure TFM_BillEditPurOrder.FormDestroy(Sender: TObject);
begin
  inherited;
  FM_BillEditPurOrder := nil;
end;

procedure TFM_BillEditPurOrder.cdsDetailNewRecord(DataSet: TDataSet);
begin
  inherited;
  with DataSet do
  begin
    DataSet.FieldByName('FID').AsString := CliDM.GetEASSID(UserInfo.T_SM_PurOrderEntry);
    DataSet.FieldByName('FParentID').AsString := BillIDValue;
    DataSet.FieldByName('FWAREHOUSEID').AsString := UserInfo.Warehouse_FID; //收货仓库
    DataSet.FieldByName('FRowTypeID').AsString := '00000000-0000-0000-0000-0000000000017C7DC4A3';  //行类型
    DataSet.FieldByName('FBaseStatus').AsInteger := 1;
    DataSet.FieldByName('FVersion').AsInteger := 0;

    DataSet.FieldByName('FRequestOrgUnitID').AsString := UserInfo.FStoreOrgUnit; //申请组织
    DataSet.FieldByName('FRequestCompanyOrgUnitID').AsString := UserInfo.sFinOrgID;  //申请财务组织
    DataSet.FieldByName('FStorageOrgUnitID').AsString := UserInfo.FStoreOrgUnit; //收货组织
    DataSet.FieldByName('FCompanyOrgUnitID').AsString := UserInfo.sFinOrgID; //收货财务组织
    DataSet.FieldByName('FIsQuantityUnCtrl').AsInteger := 0;       //不控制数量
    DataSet.FieldByName('FIsTimeUnCtrl').AsInteger := 0;      //不控制时间
  end;
end;

procedure TFM_BillEditPurOrder.cdsDetailFQTYChange(Sender: TField);
begin
  inherited;
  with Sender.DataSet do
  begin
    FieldByName('FDemandQty').Value := Sender.Value;
    FieldByName('FBaseQty').Value := Sender.Value;
    FieldByName('FAssistQty').Value := Sender.Value;
    FieldByName('FCanInvMoveQty').Value := Sender.Value;
    FieldByName('FUnOrderedQty').Value := Sender.Value;
    FieldByName('FAssociateQty').Value := Sender.Value;
    FieldByName('CFSOAssociateQty').Value := Sender.Value;   //20110706 未关联数量
  end;

end;

procedure TFM_BillEditPurOrder.cdsDetailAmountFMATERIALIDChange(Sender: TField);
var MATERIALID,FBASEUNIT : string;
factprice,fdiscount : double ;
begin
  inherited;

  strOldMatID := Sender.AsString;
end;

procedure TFM_BillEditPurOrder.cdsDetailFBASEUNITIDChange(Sender: TField);
begin
  inherited;
  Sender.DataSet.FieldByName('FUnitID').Value := Sender.Value;

end;

procedure TFM_BillEditPurOrder.calAmt(DataSet: TDataSet);
begin
  DataSet.FieldByName('factualtaxprice').AsFloat := DataSet.fieldbyname('FACTUALPRICE').AsFloat;
  DataSet.FieldByName('FAmount').AsFloat := CliDM.SimpleRoundTo(DataSet.fieldbyname('fqty').AsFloat*DataSet.FieldByName('FACTUALPRICE').AsFloat); //金额
  DataSet.FieldByName('FTaxAmount').AsFloat := CliDM.SimpleRoundTo(DataSet.fieldbyname('fqty').AsFloat*DataSet.FieldByName('FACTUALTAXPRICE').AsFloat); //价税合计
  DataSet.FieldByName('FTax').AsFloat := CliDM.SimpleRoundTo(DataSet.fieldbyname('fqty').AsFloat*(DataSet.FieldByName('FACTUALTAXPRICE').AsFloat-DataSet.FieldByName('FACTUALPRICE').AsFloat)); //税额
  DataSet.FieldByName('FLocalAmount').AsFloat := DataSet.FieldByName('FAmount').AsFloat;
  DataSet.FieldByName('FLocalTax').AsFloat := DataSet.FieldByName('FTax').AsFloat;
  DataSet.FieldByName('FLocalTaxAmount').AsFloat := DataSet.FieldByName('FTaxAmount').AsFloat;
  DataSet.FieldByName('FDiscountAmount').AsFloat := CliDM.SimpleRoundTo(DataSet.fieldbyname('fqty').AsFloat*(DataSet.FieldByName('FPRICE').AsFloat-DataSet.FieldByName('FACTUALPRICE').AsFloat));
end;
procedure TFM_BillEditPurOrder.cdsMasterBeforePost(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FYEAR').AsFloat := StrToFloat(FormatDateTime('yyyy',DataSet.fieldbyname('Fbizdate').AsDateTime));
  DataSet.FieldByName('Fperiod').AsFloat := StrToFloat( FormatDateTime('mm',DataSet.fieldbyname('Fbizdate').AsDateTime));
  if Trim(DataSet.FieldByName('FSupplierID').AsString)='' then
  begin
    ShowMsg(Handle,'供应商的值不能为空!',[]);
    Abort;
  end;
  if DataSet.FieldByName('CFReceiveDate').AsDateTime <10 then
  begin
    ShowMsg(Handle,'预计收货日期不能为空!',[]);
    Abort;
  end;

end;

procedure TFM_BillEditPurOrder.cxbtnedtSupplierPropertiesCloseUp(
  Sender: TObject);
begin
  SupplierIDchange;
end;

procedure TFM_BillEditPurOrder.dbgList2cfMaterialNumberPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  FindMaterial; //弹选商品
  SetdbgColumnCaption;
end;

procedure TFM_BillEditPurOrder.cdsDetailAmountCalcFields(
  DataSet: TDataSet);
begin
  inherited;
////
end;

procedure TFM_BillEditPurOrder.dbgList2Column1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  FindPack;
end;

procedure TFM_BillEditPurOrder.cdsDetailAmountCFPACKNUMChange(
  Sender: TField);
begin
  inherited;
  if cdsDetailAmount.FieldByName('CFPackNum').AsInteger>0 then
     PackNumChang(cdsDetailAmount,cdsDetailAmount.FieldByName('CFSIZEGROUPID').AsString,cdsDetailAmount.fieldbyname('CFPackID').AsString);
end;

procedure TFM_BillEditPurOrder.dbgList2Editing(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  var AAllow: Boolean);
  var
    Focused_Field : string;
begin
  inherited;
  Focused_Field := TcxGridDBTableView(Sender).Columns[AItem.Index].DataBinding.FieldName;
  if (uppercase(Focused_Field)='CFDPPRICE') or (uppercase(Focused_Field)='FPRICE') then
  begin
    AAllow := false;
  end;
  if trim(cdsMaster.FieldByName('CFINPUTWAY').AsString) ='NOTPACK' then
  begin
    if uppercase(Focused_Field)='CFPACKNUM' then
    begin
      AAllow := false;
    end;
    if uppercase(Focused_Field)='CFPACKNAME' then
    begin
      AAllow := false;
    end;
  end
  else
  begin
    if SameText(leftstr(Focused_Field,8), 'fAmount_') then
      AAllow := false;
  end;  
end;

procedure TFM_BillEditPurOrder.cdsDetailAmountBeforePost(
  DataSet: TDataSet);
begin
  inherited;

  DataSet.FieldByName('CFCustomerOrderID').AsString := sCustID;//订货客户
  DataSet.FieldByName('CFReceiveStoreUnit').AsString := UserInfo.FStoreOrgUnit;//收货单位
end;

procedure TFM_BillEditPurOrder.cdsDetailAmountFDISCOUNTRATEChange(
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

procedure TFM_BillEditPurOrder.cdsDetailAmountBeforeInsert(
  DataSet: TDataSet);
begin
  if Trim(cdsMaster.FieldByName('FSupplierID').AsString)='' then
  begin
    ShowMsg(Handle,'供应商的值不能为空!',[]);
    Abort;
  end;

  

  inherited;

end;
procedure TFM_BillEditPurOrder.SupplierIDchange;

begin
  inherited;
end;
procedure TFM_BillEditPurOrder.cdsDetailAmountCFPACKIDChange(
  Sender: TField);
begin
  inherited;
  if cdsDetailAmount.FieldByName('CFPackNum').AsInteger>0 then
    PackNumChang(cdsDetailAmount,cdsDetailAmount.FieldByName('CFSIZEGROUPID').AsString,cdsDetailAmount.fieldbyname('CFPackID').AsString);
end;

procedure TFM_BillEditPurOrder.cdsDetailAmountAfterPost(DataSet: TDataSet);
begin
  inherited;
  ////
end;
procedure TFM_BillEditPurOrder.AddDetailRecord;
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
      fieldbyname('FDISCOUNTRATE').asFloat := cdsDetailAmount.fieldbyname('FDISCOUNTRATE').asfloat;
      fieldbyname('fremark').asstring := cdsDetailAmount.fieldbyname('fremark').AsString;
    
      fieldbyname('FBASEUNITID').AsString := cdsDetailAmount.FieldByName('FBASEUNITID').AsString ;
      FieldByName('FDELIVERYDATE').AsDateTime := cdsMaster.fieldbyname('CFReceiveDate').AsDateTime;
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
procedure TFM_BillEditPurOrder.cdsDetailAmountAfterInsert(
  DataSet: TDataSet);
begin
  inherited;
  strMatID := '';
  strColorID :='';
  StrCupID := '';
  StrpackID := '';
  if DataSet.FieldByName('FDELIVERYDATE').AsDateTime > 10 then
  DataSet.fieldbyname('FDELIVERYDATE').AsDateTime := cdsMaster.fieldbyname('CFReceiveDate').AsDateTime;
end;

procedure TFM_BillEditPurOrder.actSetBillStatusExecute(Sender: TObject);
begin
  inherited;
  
  //DBCHKTAX.Enabled := not BillInfo.IsAduit;
end;

procedure TFM_BillEditPurOrder.actNewBillExecute(Sender: TObject);
begin
  CliDM.Chk_UserRight(UserInfo.T_SM_PurOrder,'purorder_addnew');
  inherited;

end;

procedure TFM_BillEditPurOrder.actSaveBillExecute(Sender: TObject);
begin
  CliDM.Chk_UserRight(UserInfo.T_SM_PurOrder,'purorder_update');
  inherited;

end;

procedure TFM_BillEditPurOrder.actDeleteExecute(Sender: TObject);
begin
  CliDM.Chk_UserRight(UserInfo.T_SM_PurOrder,'purorder_delete');
  inherited;

end;

procedure TFM_BillEditPurOrder.actAuditExecute(Sender: TObject);
begin
  CliDM.Chk_UserRight(UserInfo.T_SM_PurOrder,'purorder_audit');
  inherited;

end;

procedure TFM_BillEditPurOrder.actUnAuditExecute(Sender: TObject);
begin
  CliDM.Chk_UserRight(UserInfo.T_SM_PurOrder,'purorder_unAudit');
  inherited;

end;

procedure TFM_BillEditPurOrder.actReportViewExecute(Sender: TObject);
begin
  CliDM.Chk_UserRight(UserInfo.T_SM_PurOrder,'purorder_print');
  inherited;

end;

procedure TFM_BillEditPurOrder.actReportDesignExecute(Sender: TObject);
begin
  CliDM.Chk_UserRight(UserInfo.T_SM_PurOrder,'purorder_print');
  inherited;

end;

procedure TFM_BillEditPurOrder.nCopyClick(Sender: TObject);
var FieldName : string;
    BookMartTag : TBookmark;
    FDELIVERYDATE : TDatetime;
begin
  if BillInfo.IsNew then
  begin
     FieldName := 'FDELIVERYDATE';
     if FieldName='FDELIVERYDATE' then //交货日期
     begin
       if (cdsDetailAmount.State in db.dsEditModes) then cdsDetailAmount.Post;
       if cdsDetailAmount.FieldByName(FieldName).AsString = '' then Exit;

       FDELIVERYDATE := cdsDetailAmount.FieldByName(FieldName).AsDateTime;
       try
         BookMartTag := cdsDetailAmount.GetBookmark;
         cdsDetailAmount.DisableControls;
         while not cdsDetailAmount.Eof do
         begin
           if not (cdsDetailAmount.State in db.dsEditModes) then cdsDetailAmount.Edit;
           cdsDetailAmount.FieldByName(FieldName).AsDateTime := FDELIVERYDATE;
           cdsDetailAmount.Next;
         end;
         cdsDetailAmount.GotoBookmark(BookMartTag);
       finally
         cdsDetailAmount.EnableControls;
         cdsDetailAmount.FreeBookmark(BookMartTag);
       end;
     end;
  end;
end;


procedure TFM_BillEditPurOrder.cxbtnedtSupplierPropertiesChange(
  Sender: TObject);
var factprice,fdiscount : double;
   MaterialID,PriceTypeID,TestsSupplyFinID,TestsSupplySaleOrgID : string;
   CFDPPRICE : integer;
begin
  inherited;

end;

procedure TFM_BillEditPurOrder.actCodeSM_F12Execute(Sender: TObject);
begin
  inherited;
  actCodeSM_F12Execute(nil);
end;

procedure TFM_BillEditPurOrder.cxdblookupInputwayEditing(Sender: TObject;
  var CanEdit: Boolean);
begin
  inherited;
  if CanEdit then
  if cdsDetailAmount.FieldByName('FMATERIALID').AsString <>'' then
  begin
    ShowMsg(Handle, '已经有分录,不允许再修改录入方式!',[]);
    Abort;
  end;
end;

procedure TFM_BillEditPurOrder.pmDetailPopup(Sender: TObject);
begin
  inherited;
  if trim(cdsMaster.FieldByName('CFINPUTWAY').AsString) ='PACK' then

end;

procedure TFM_BillEditPurOrder.FormShow(Sender: TObject);
begin
  inherited;
  cxbtnNUmber.Properties.ReadOnly := False;
  actCodeSM_F12.Visible := True;
  dxBarCodeSM.Visible := ivAlways;
  if cxbtnNUmber.CanFocus then
    cxbtnNUmber.SetFocus;
  sIniBillFlag :='PO';
  sSPPack := 'SCM';
end;

procedure TFM_BillEditPurOrder.bbtCheckClick(Sender: TObject);
begin
  if trim(cdsMaster.FieldByName('CFINPUTWAY').AsString) ='PACK' then
  begin
    ShowMsg(Handle, '选择配码录入方式不允许进行扫描校验!',[]);
    abort;
  end;
  inherited;
   ///
end;
procedure TFM_BillEditPurOrder.SaleOrgIDChange;
  var
    strsql,sSupplyFinID : string;
    Errormsg : string;
    sFinID,MaterialID,PriceTypeID,SupplierID : string;
    CFDPPRICE : Integer;
    factprice,fdiscount : Double;
begin

end;
procedure TFM_BillEditPurOrder.cxcmblookupsaleorgPropertiesCloseUp(
  Sender: TObject);
begin
  inherited;
  SaleOrgIDChange;
end;

procedure TFM_BillEditPurOrder.cdsMasterAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FPurchaseOrgUnitID').AsString := UserInfo.Branch_ID;//对应EAS采购组织
  DataSet.FieldByName('FCompanyOrgUnitID').AsString := UserInfo.Branch_ID; // 对应EAS财务组织
  DataSet.FieldByName('FStorageOrgUnitID').AsString := UserInfo.Branch_ID; //对应EAS库存组织
  DataSet.FieldByName('FPurchaseOrgUnitID').AsString := UserInfo.Branch_ID;
  DataSet.FieldByName('CFISProcduct').AsFloat := 0;
end;

procedure TFM_BillEditPurOrder.bt_CtrlQClick(Sender: TObject);
var  fAmount:integer;
begin
  inherited;
  fAmount:=strtoint(cxBaseQty.Text);
  if fAmount<0 then
    cxBaseQty.Text:=inttostr(abs(fAmount))
  else
  cxBaseQty.Text:='-'+cxBaseQty.Text;
end;

procedure TFM_BillEditPurOrder.bt_Ctrl_BClick(Sender: TObject);
begin
  inherited;
  if pnlCodeSM.Visible then  cxCodeText.SetFocus;
end;

procedure TFM_BillEditPurOrder.bt_Ctrl_JClick(Sender: TObject);
begin
  inherited;
  if pnlCodeSM.Visible then  cxBaseQty.SetFocus;  
end;

procedure TFM_BillEditPurOrder.actF11Execute(Sender: TObject);
begin
//
  inherited;
end;

procedure TFM_BillEditPurOrder.dxBarCodeSMClick(Sender: TObject);
begin
//
  inherited;
end;

procedure TFM_BillEditPurOrder.actImportExcelExecute(Sender: TObject);
begin
//
  inherited;
end;

procedure TFM_BillEditPurOrder.girdListKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
//
end;

procedure TFM_BillEditPurOrder.cdsSupplierFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  inherited;
  Accept:=((Pos(Trim(UpperCase(cxbtnNUmber.Text)),UpperCase(DataSet.fieldbyname('fnumber').AsString))>0) or
          (Pos(Trim(UpperCase(cxbtnNUmber.Text)),UpperCase(DataSet.fieldbyname('fname_l2').AsString))>0) or
          (Pos(Trim(UpperCase(cxbtnNUmber.Text)),UpperCase(DataSet.fieldbyname('FhelpCode').AsString))>0)) ;
end;

procedure TFM_BillEditPurOrder.cxbtnNUmberPropertiesChange(
  Sender: TObject);
begin
  girdList.hint :='FSUPPLIERID';
  HeadAutoSelIDchange(cdsSupplier,'');
end;

procedure TFM_BillEditPurOrder.cxbtnNUmberPropertiesButtonClick(
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

procedure TFM_BillEditPurOrder.cxSalePersonPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  with Select_BaseData('T_BD_Person ','员工','','') do
  begin
    if not IsEmpty then
    begin
      if not (cdsMaster.State in db.dsEditModes ) then cdsMaster.Edit;
      cdsMaster.FieldByName('FPURCHASEPERSONID').AsString := fieldbyname('fid').AsString;
    end;
  end;
end;

procedure TFM_BillEditPurOrder.cdsMasterCalcFields(DataSet: TDataSet);
begin
  inherited;
  if DataSet.FindField('CFSupplierName')<> nil then
  begin
    if FindRecord1(cdsSupplier,'FID',DataSet.fieldbyname('FSUPPLIERID').AsString,1) then
    begin
      cxbtnNUmber.Text := cdsSupplier.fieldbyname('fnumber').AsString;
      DataSet.FindField('CFSupplierName').AsString := cdsSupplier.fieldbyname('fname_l2').AsString;
    end;
  end;
end;

procedure TFM_BillEditPurOrder.dbgList2CFColorCodePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  FindColor;  //弹选颜色
end;

procedure TFM_BillEditPurOrder.dbgList2CFCupNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  FindCup; //弹选内长
end;

procedure TFM_BillEditPurOrder.dbgList2CFPackNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  FindPack;
end;

procedure TFM_BillEditPurOrder.cxbtnNUmberEnter(Sender: TObject);
begin
  inherited;
  tmpbtnEdit := TcxButtonEdit(sender);
end;

procedure TFM_BillEditPurOrder.cxdblookupInputwayPropertiesCloseUp(
  Sender: TObject);
begin
  inherited;
  ////
end;

procedure TFM_BillEditPurOrder.cxPageDetailChange(Sender: TObject);
var
  strsql,ErrMsg : string;
begin
  inherited;
  if cxPageDetail.ActivePage = cxTabSourceBill then
  begin
    try
      if trim(cdsMaster.FieldByName('FSOURCEBILLTYPEID').AsString) ='510b6503-0105-1000-e000-0113c0a812fd463ED552' then   //销售订单
      begin
        strsql := ' select A.FID,S.Fnumber as SaleOrderNumber,cus.fname_l2 as CusName,M.Fname_L2 as BillTypeName from T_SM_PURORDERSOURCEBILL A  '+
                  ' left join  t_Sd_Saleorder S  on A.Fsourcebillid= S.fid '+
                  ' left join t_Bd_Customer cus on cus.fid=S.Fordercustomerid '+
                  ' left join t_Scm_Billtype M on M.fid=A.Fsourcebilltypeid '+
                  ' where A.fparentID='+cdsmaster.fieldbyname('FID').AsString;

         CliDM.Get_OpenSQL(cdsSourceBill,strsql,ErrMsg);
         cxGridSourceBill.ClearItems;
         cxGridSourceBill.DataController.CreateAllItems();
         cxGridSourceBill.GetColumnByFieldName('FID').Visible := False;
         cxGridSourceBill.GetColumnByFieldName('SaleOrderNumber').Width := 150;
         cxGridSourceBill.GetColumnByFieldName('SaleOrderNumber').Caption := '销售订单号';
         cxGridSourceBill.GetColumnByFieldName('CusName').Caption := '客户名称';
         cxGridSourceBill.GetColumnByFieldName('CusName').Width :=150;
         cxGridSourceBill.GetColumnByFieldName('BillTypeName').Caption := '来源单据类型';
         cxGridSourceBill.GetColumnByFieldName('BillTypeName').Width := 150;
      end
      else if trim(cdsMaster.FieldByName('FSOURCEBILLTYPEID').AsString)  ='510b6503-0105-1000-e000-0107c0a812fd463ED552' then //采购申请单
      begin

      end;
    except
      on E : Exception do
      begin
        ShowError(Handle, '打开'+cxTabTractDetail.Caption+'数据源出错:'+Errmsg+' '+E.Message,[]);
        Gio.AddShow('打开'+cxTabTractDetail.Caption+'数据源出错:'+Errmsg+' '+E.Message);
        Abort;
      end;
    end;
  end
  else if cxPageDetail.ActivePage=cxTabTractDetail  then
  begin
    cdstracy.Data := cdsDetail.Data;
    OpenTracyDetail('');
  end;
end;

procedure TFM_BillEditPurOrder.cxbtnNUmberKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  girdList.Hint := 'FSUPPLIERID';
  inherited;

end;

procedure TFM_BillEditPurOrder.cdsDetailAmountFACTUALPRICEChange(
  Sender: TField);
  var
    Event : TFieldNotifyEvent;
begin
  inherited;
  try
    Event := Sender.DataSet.fieldbyname('FDISCOUNTRATE').OnChange;
    Sender.DataSet.fieldbyname('FDISCOUNTRATE').OnChange := nil;
    if Sender.DataSet.FieldByName('FPRICE').AsFloat<>0 then
      Sender.DataSet.FieldByName('FDISCOUNTRATE').AsFloat :=CliDM.SimpleRoundTo( Sender.DataSet.FieldByName('FACTUALPRICE').AsFloat/Sender.DataSet.FieldByName('FPRICE').AsFloat*100);
  finally
    Sender.DataSet.fieldbyname('FDISCOUNTRATE').OnChange := Event;
  end;

end;


procedure TFM_BillEditPurOrder.cxbtnNUmberKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
   DelBtnEditValue(Key,'FSUPPLIERID');
end;

procedure TFM_BillEditPurOrder.dxBarbtnSumImpClick(Sender: TObject);
var
  I : Integer;
begin
  inherited;
  if Trim(cdsMaster.FieldByName('FSUPPLIERID').AsString)='' then
  begin
    ShowMsg(Handle, '请先选择供应商!',[]);
    abort;
  end;
  if cdsDetail.RecordCount >0 then
  begin
    ShowMsg(Handle, '已经明细记录，不允许再导入记录!',[]);
    abort;
  end;
  if cdsMaster.State in DB.dsEditModes then cdsMaster.Post;
  with TPurOrderSumImpForm.Create(self) do
  begin
    strSupplierID := cdsMaster.fieldbyname('FSUPPLIERID').AsString;
    StrSupplierName := cdsMaster.fieldbyname('CFSupplierName').AsString;
    strInputway := cdsMaster.fieldbyname('CFINPUTWAY').AsString;
    ShowModal;
    if  ModalResult=mrok then
    begin
      cdsImpList.First;
      while not  cdsImpList.Eof do
      begin
        cdsDetailAmount.Append;
        cdsDetailAmount.FieldByName('FmaterialID').AsString := cdsImpList.fieldbyname('FmaterialID').AsString;
        cdsDetailAmount.FieldByName('CFSIZEGROUPID').AsString := cdsImpList.fieldbyname('Cfsizegroupid').AsString;
        cdsDetailAmount.FieldByName('FBASEUNITID').AsString := cdsImpList.fieldbyname('Fbaseunit').AsString;
        cdsDetailAmount.FieldByName('cfMaterialNumber').AsString := cdsImpList.fieldbyname('materialCode').AsString;
        cdsDetailAmount.FieldByName('cfMaterialName').AsString := cdsImpList.fieldbyname('MaterialName').AsString;
        cdsDetailAmount.FieldByName('CFCOLORID').AsString := cdsImpList.fieldbyname('Cfcolorid').AsString;
        cdsDetailAmount.FieldByName('CFColorCode').AsString := cdsImpList.fieldbyname('ColorCode').AsString;
        cdsDetailAmount.FieldByName('CFColorName').AsString := cdsImpList.fieldbyname('ColorName').AsString;
        cdsDetailAmount.FieldByName('CFCupName').AsString := cdsImpList.fieldbyname('CupName').AsString;
        cdsDetailAmount.FieldByName('CFCUPID').AsString := cdsImpList.fieldbyname('CFCUPID').AsString;
        cdsDetailAmount.FieldByName('CFPACKID').AsString := cdsImpList.fieldbyname('CFPACKID').AsString;
        cdsDetailAmount.FieldByName('CFPACKName').AsString := cdsImpList.fieldbyname('CFPACKName').AsString;
        cdsDetailAmount.FieldByName('CFPACKNUM').AsFloat := cdsImpList.fieldbyname('CFPACKNUM').AsFloat ;
        cdsDetailAmount.FieldByName('cfattributeid').AsString := cdsImpList.fieldbyname('cfattributeid').AsString;
        cdsDetailAmount.FieldByName('Cfbrandid').AsString := cdsImpList.fieldbyname('Cfbrandid').AsString;
        cdsDetailAmount.FieldByName('Cfbrandid').AsString := cdsImpList.fieldbyname('Cfbrandid').AsString;
        cdsDetailAmount.FieldByName('CFDPPRICE').AsFloat := cdsImpList.fieldbyname('cfunityprice').AsFloat;
        cdsDetailAmount.FieldByName('FPRICE').AsFloat := cdsImpList.fieldbyname('cfdistributeprice').AsFloat;
        cdsDetailAmount.FieldByName('FACTUALPRICE').AsFloat := cdsImpList.fieldbyname('cfpurprice').AsFloat;
        cdsDetailAmount.FieldByName('FDISCOUNTRATE').AsFloat := 100;
        for I := 1 to 30 do
        begin
          if cdsImpList.fieldbyname('fAmount_'+inttostr(I)).AsFloat <>0 then
            cdsDetailAmount.FieldByName('fAmount_'+inttostr(I)).AsFloat := cdsImpList.fieldbyname('fAmount_'+inttostr(I)).AsFloat;
        end;
        cdsDetailAmount.Post;
        cdsImpList.next();
      end;
    end;
  end;
end;

procedure TFM_BillEditPurOrder.dxBarbtnImpFromTxtClick(Sender: TObject);
begin
  inherited;
////
end;

procedure TFM_BillEditPurOrder.cdsDetailAmountBeforeEdit(
  DataSet: TDataSet);
begin
  inherited;
  strMatID := DataSet.Fieldbyname('FMaterialID').AsString;
  strColorID := DataSet.Fieldbyname('CFColorID').AsString;
  StrCupID := DataSet.Fieldbyname('CFCupID').AsString;
  StrPackID := DataSet.Fieldbyname('CFPackID').AsString;

end;

end.
