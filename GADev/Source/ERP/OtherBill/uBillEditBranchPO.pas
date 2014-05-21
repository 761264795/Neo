unit uBillEditBranchPO;

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
  cxGridDBTableView, cxGrid, cxPC,Math, cxSpinEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, dxSkinscxPCPainter,
  dxSkinsdxBarPainter;

type
  TFM_BillEditBranchPO = class(TFM_BillEditBase)
    Label7: TLabel;
    cxDeliveryData: TcxDBDateEdit;
    cxLabel3: TcxLabel;
    cxcmbpriceType: TcxDBLookupComboBox;
    cxLabel2: TcxLabel;
    cxcmbOrderType: TcxDBLookupComboBox;
    dsOrderType: TDataSource;
    dsPriceType: TDataSource;
    cdsSupplier: TClientDataSet;
    cdsSupplierFID: TWideStringField;
    cdsSupplierfnumber: TWideStringField;
    cdsSupplierfname_l2: TWideStringField;
    cdsSupplierFinternalCompanyID: TWideStringField;
    cdsSupplierFtaxRate: TFloatField;
    cdsSupplierFHelpCode: TWideStringField;
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
    cdsMasterFPURCHASEORGUNITID: TWideStringField;
    cdsMasterFPURCHASEGROUPID: TWideStringField;
    cdsMasterFPURCHASEPERSONID: TWideStringField;
    cdsMasterFSUPPLIERID: TWideStringField;
    cdsMasterFSUPPLIERADDRESS: TWideStringField;
    cdsMasterFSUPPLIERORDERNUMBER: TWideStringField;
    cdsMasterFSALEORGUNITID: TWideStringField;
    cdsMasterFSALEORDERID: TWideStringField;
    cdsMasterFISDIRECTSEND: TFloatField;
    cdsMasterFPAYMENTTYPEID: TWideStringField;
    cdsMasterFSETTLEMENTTYPEID: TWideStringField;
    cdsMasterFCASHDISCOUNTID: TWideStringField;
    cdsMasterFCURRENCYID: TWideStringField;
    cdsMasterFEXCHANGERATE: TFloatField;
    cdsMasterFPREPAYMENTRATE: TFloatField;
    cdsMasterFPREPAYMENT: TFloatField;
    cdsMasterFPREPAID: TFloatField;
    cdsMasterFPREPAYMENTDATE: TDateTimeField;
    cdsMasterFSUPPLIERCONFIRM: TFloatField;
    cdsMasterFINVOICEDAMOUNT: TFloatField;
    cdsMasterFPAIDAMOUNT: TFloatField;
    cdsMasterFISINNERSALE: TFloatField;
    cdsMasterFADMINORGUNITID: TWideStringField;
    cdsMasterFTOTALAMOUNT: TFloatField;
    cdsMasterFTOTALTAX: TFloatField;
    cdsMasterFTOTALTAXAMOUNT: TFloatField;
    cdsMasterFUNPREPAIDAMOUNT: TFloatField;
    cdsMasterFISSYSBILL: TFloatField;
    cdsMasterFCONVERTMODE: TFloatField;
    cdsMasterFLOCALTOTALAMOUNT: TFloatField;
    cdsMasterFLOCALTOTALTAXAMOUNT: TFloatField;
    cdsMasterFSTORAGEORGUNITID: TWideStringField;
    cdsMasterFISCENTRALBALANCE: TFloatField;
    cdsMasterFCOMPANYORGUNITID: TWideStringField;
    cdsMasterFISINTAX: TFloatField;
    cdsMasterFISQUICKEN: TFloatField;
    cdsMasterFALTERDATE: TDateTimeField;
    cdsMasterFVERSION: TFloatField;
    cdsMasterFOLDSTATUS: TFloatField;
    cdsMasterFOLDID: TWideStringField;
    cdsMasterFALTERPERSON: TWideStringField;
    cdsMasterFISPRICEINTAX: TFloatField;
    cdsMasterFPAYMENTCONDITIONID: TWideStringField;
    cdsMasterFWAREHOUSEID: TWideStringField;
    cdsMasterFISMATCHED: TFloatField;
    cdsMasterFISAPPROVEDMATERIAL: TFloatField;
    cdsMasterCFISCOOPERATION: TFloatField;
    cdsMasterCFRECEIVEDATE: TDateTimeField;
    cdsMasterCFTYPEINFORMATION: TWideStringField;
    cdsMasterCFHASPURPRICE: TFloatField;
    cdsMasterCFPRICETYPEID: TWideStringField;
    cdsMasterCFSUBBILLTYPE: TWideStringField;
    cdsMasterCFORDERTYPEID: TWideStringField;
    cdsMasterCFISCRATESALEORDER: TFloatField;
    cdsMasterCFORDERINGDEFID: TWideStringField;
    cdsMasterCFINPUTWAY: TWideStringField;
    cdsMasterCFBARGAINCONTENT: TWideStringField;
    cdsMasterCFCONTRACTID: TWideStringField;
    cdsMasterCFCONTRATID: TWideStringField;
    cdsMasterCFCONTRACECONTENT: TWideStringField;
    cdsMasterCFRANGEID: TWideStringField;
    cdsMasterCFISPROCDUCT: TIntegerField;
    cdsMasterCFPURTYPEID: TWideStringField;
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
    cdsDetailFISPRESENT: TFloatField;
    cdsDetailFSUPPLIERMATERIALNUMBER: TWideStringField;
    cdsDetailFSUPPLIERMATERIALNAME: TWideStringField;
    cdsDetailFSUPPLIERMATERIALMODEL: TWideStringField;
    cdsDetailFASSETNUMBER: TWideStringField;
    cdsDetailFDEMANDQTY: TFloatField;
    cdsDetailFQTY: TFloatField;
    cdsDetailFSTORAGEORGUNITID: TWideStringField;
    cdsDetailFADMINORGUNITID: TWideStringField;
    cdsDetailFCOMPANYORGUNITID: TWideStringField;
    cdsDetailFASSISTQTY: TFloatField;
    cdsDetailFPRICE: TFloatField;
    cdsDetailFDISCOUNTRATE: TFloatField;
    cdsDetailFACTUALPRICE: TFloatField;
    cdsDetailFTAXRATE: TFloatField;
    cdsDetailFTAXPRICE: TFloatField;
    cdsDetailFACTUALTAXPRICE: TFloatField;
    cdsDetailFAMOUNT: TFloatField;
    cdsDetailFLOCALAMOUNT: TFloatField;
    cdsDetailFTAX: TFloatField;
    cdsDetailFTAXAMOUNT: TFloatField;
    cdsDetailFDISCOUNTAMOUNT: TFloatField;
    cdsDetailFDELIVERYDATE: TDateTimeField;
    cdsDetailFRECEIVEOVERRATE: TFloatField;
    cdsDetailFRECEIVEOWINGRATE: TFloatField;
    cdsDetailFDELIVERADVANCEDAY: TFloatField;
    cdsDetailFDELIVERDEFERRALDAY: TFloatField;
    cdsDetailFTRACKNUMBER: TWideStringField;
    cdsDetailFBASEQTY: TFloatField;
    cdsDetailFTOTALRECEIVEQTY: TFloatField;
    cdsDetailFTOTALRECEIPTQTY: TFloatField;
    cdsDetailFTOTALRETURNEDQTY: TFloatField;
    cdsDetailFTOTALINVOICEDQTY: TFloatField;
    cdsDetailFTOTALINVOICEDAMOUNT: TFloatField;
    cdsDetailFTOTALPAIDAMOUNT: TFloatField;
    cdsDetailFTOTALEXPENSE: TFloatField;
    cdsDetailFPARENTID: TWideStringField;
    cdsDetailFISQUANTITYUNCTRL: TFloatField;
    cdsDetailFISTIMEUNCTRL: TFloatField;
    cdsDetailFTOTALRECEIVEBASEQTY: TFloatField;
    cdsDetailFTOTALRECEIPTBASEQTY: TFloatField;
    cdsDetailFTOTALRETURNEDBASEQTY: TFloatField;
    cdsDetailFTOTALINVOICEDBASEQTY: TFloatField;
    cdsDetailFTOTALUNRETURNBASEQTY: TFloatField;
    cdsDetailFTOTALUNRECEIVEBASEQTY: TFloatField;
    cdsDetailFTOTALUNRECEIVEQTY: TFloatField;
    cdsDetailFDELIVERYADDRESS: TWideStringField;
    cdsDetailFCLOSEDATE: TDateTimeField;
    cdsDetailFISSUPINFO: TFloatField;
    cdsDetailFCURSEORDERQTY: TFloatField;
    cdsDetailFLOCALTAX: TFloatField;
    cdsDetailFLOCALTAXAMOUNT: TFloatField;
    cdsDetailFSALEORDERNUMBER: TWideStringField;
    cdsDetailFPREPAIDAMOUNT: TFloatField;
    cdsDetailFREQUESTORGUNITID: TWideStringField;
    cdsDetailFREQUESTCOMPANYORGUNITID: TWideStringField;
    cdsDetailFREASON: TWideStringField;
    cdsDetailFISREQUESTTORECEIVED: TFloatField;
    cdsDetailFTOTALMOVEQTY: TFloatField;
    cdsDetailFTOTALINVOICEDAMT: TFloatField;
    cdsDetailFPREPAYMENT: TFloatField;
    cdsDetailFPRERECEIVED: TFloatField;
    cdsDetailFUNPRERECEIVEDAM: TFloatField;
    cdsDetailFVERSION: TFloatField;
    cdsDetailFOLDSTATUS: TFloatField;
    cdsDetailFOLDID: TWideStringField;
    cdsDetailFCANINVMOVEQTY: TFloatField;
    cdsDetailFUNORDEREDQTY: TFloatField;
    cdsDetailFISBETWEENCOMPANYREC: TFloatField;
    cdsDetailFROWTYPEID: TWideStringField;
    cdsDetailFWAREHOUSEID: TWideStringField;
    cdsDetailFDESTINATIONTYPE: TWideStringField;
    cdsDetailFMATERIALNAME: TWideStringField;
    cdsDetailFISREQCOMEQLRECCOM: TFloatField;
    cdsDetailFPLANRECEIVEQTY: TFloatField;
    cdsDetailFTOTALSUPPLYSTOCKQTY: TFloatField;
    cdsDetailFTOTALCANCELLEDSTOCKQTY: TFloatField;
    cdsDetailFTOTALSUPPLYSTOCKBASEQTY: TFloatField;
    cdsDetailFTOTALPREPAYAMT: TFloatField;
    cdsDetailFTOTALREQPAYAMT: TFloatField;
    cdsDetailFISREQPREPAYGTPREPAY: TFloatField;
    cdsDetailFNONUMMATERIALMODEL: TWideStringField;
    cdsDetailFQCSTANDARDID: TWideStringField;
    cdsDetailFPROJECTID: TWideStringField;
    cdsDetailFTRACKNOID: TWideStringField;
    cdsDetailFCONTRACTNUMBER: TWideStringField;
    cdsDetailFPURCONTRACTID: TWideStringField;
    cdsDetailFMATCHEDAMOUNT: TFloatField;
    cdsDetailFPURREQUESTID: TWideStringField;
    cdsDetailFPURREQUESTENTRYID: TWideStringField;
    cdsDetailCFCUSTOMERORDERID: TWideStringField;
    cdsDetailCFPACKID: TWideStringField;
    cdsDetailCFCOLORID: TWideStringField;
    cdsDetailCFMUTILSOURCEBILL: TWideStringField;
    cdsDetailCFPACKNUM: TFloatField;
    cdsDetailCFSIZESID: TWideStringField;
    cdsDetailCFCUSTOMERDISID: TWideStringField;
    cdsDetailCFRECEIVESTOREUNIT: TWideStringField;
    cdsDetailCFCUPID: TWideStringField;
    cdsDetailCFSIZEGROUPID: TWideStringField;
    cdsDetailCFSOASSOCIATEQTY: TFloatField;
    cdsDetailCFLOCATION: TWideStringField;
    cdsDetailCFDPPRICE: TFloatField;
    cdsDetailCFASSISTNUM: TWideStringField;
    cdsDetailCFBOXQTY: TFloatField;
    cdsMasterCFSupplierName: TStringField;
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
    cdsDetailAmountFPRICE: TFloatField;
    cdsDetailAmountFACTUALPRICE: TFloatField;
    cdsDetailAmountFDISCOUNTRATE: TFloatField;
    cdsDetailAmountfTotaLQty: TIntegerField;
    cdsDetailAmountCFBrandName: TWideStringField;
    cdsDetailAmountcfattributeName: TWideStringField;
    cdsDetailAmountCfbrandid: TWideStringField;
    cdsDetailAmountcfattributeid: TWideStringField;
    cdsDetailAmountCFUnitName: TWideStringField;
    dbgList2cfMaterialNumber: TcxGridDBColumn;
    dbgList2cfMaterialName: TcxGridDBColumn;
    dbgList2CFColorCode: TcxGridDBColumn;
    dbgList2CFColorName: TcxGridDBColumn;
    dbgList2CFCupName: TcxGridDBColumn;
    dbgList2CFPackName: TcxGridDBColumn;
    dbgList2CFPACKNUM: TcxGridDBColumn;
    dbgList2CFDPPRICE: TcxGridDBColumn;
    dbgList2FPRICE: TcxGridDBColumn;
    dbgList2FACTUALPRICE: TcxGridDBColumn;
    dbgList2FDISCOUNTRATE: TcxGridDBColumn;
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
    dbgList2CFUnitName: TcxGridDBColumn;
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
    cdsDetailTracyFISPRESENT: TFloatField;
    cdsDetailTracyFSUPPLIERMATERIALNUMBER: TWideStringField;
    cdsDetailTracyFSUPPLIERMATERIALNAME: TWideStringField;
    cdsDetailTracyFSUPPLIERMATERIALMODEL: TWideStringField;
    cdsDetailTracyFASSETNUMBER: TWideStringField;
    cdsDetailTracyFDEMANDQTY: TFloatField;
    cdsDetailTracyFQTY: TFloatField;
    cdsDetailTracyFSTORAGEORGUNITID: TWideStringField;
    cdsDetailTracyFADMINORGUNITID: TWideStringField;
    cdsDetailTracyFCOMPANYORGUNITID: TWideStringField;
    cdsDetailTracyFASSISTQTY: TFloatField;
    cdsDetailTracyFPRICE: TFloatField;
    cdsDetailTracyFDISCOUNTRATE: TFloatField;
    cdsDetailTracyFACTUALPRICE: TFloatField;
    cdsDetailTracyFTAXRATE: TFloatField;
    cdsDetailTracyFTAXPRICE: TFloatField;
    cdsDetailTracyFACTUALTAXPRICE: TFloatField;
    cdsDetailTracyFAMOUNT: TFloatField;
    cdsDetailTracyFLOCALAMOUNT: TFloatField;
    cdsDetailTracyFTAX: TFloatField;
    cdsDetailTracyFTAXAMOUNT: TFloatField;
    cdsDetailTracyFDISCOUNTAMOUNT: TFloatField;
    cdsDetailTracyFDELIVERYDATE: TDateTimeField;
    cdsDetailTracyFRECEIVEOVERRATE: TFloatField;
    cdsDetailTracyFRECEIVEOWINGRATE: TFloatField;
    cdsDetailTracyFDELIVERADVANCEDAY: TFloatField;
    cdsDetailTracyFDELIVERDEFERRALDAY: TFloatField;
    cdsDetailTracyFTRACKNUMBER: TWideStringField;
    cdsDetailTracyFBASEQTY: TFloatField;
    cdsDetailTracyFTOTALRECEIVEQTY: TFloatField;
    cdsDetailTracyFTOTALRECEIPTQTY: TFloatField;
    cdsDetailTracyFTOTALRETURNEDQTY: TFloatField;
    cdsDetailTracyFTOTALINVOICEDQTY: TFloatField;
    cdsDetailTracyFTOTALINVOICEDAMOUNT: TFloatField;
    cdsDetailTracyFTOTALPAIDAMOUNT: TFloatField;
    cdsDetailTracyFTOTALEXPENSE: TFloatField;
    cdsDetailTracyFPARENTID: TWideStringField;
    cdsDetailTracyFISQUANTITYUNCTRL: TFloatField;
    cdsDetailTracyFISTIMEUNCTRL: TFloatField;
    cdsDetailTracyFTOTALRECEIVEBASEQTY: TFloatField;
    cdsDetailTracyFTOTALRECEIPTBASEQTY: TFloatField;
    cdsDetailTracyFTOTALRETURNEDBASEQTY: TFloatField;
    cdsDetailTracyFTOTALINVOICEDBASEQTY: TFloatField;
    cdsDetailTracyFTOTALUNRETURNBASEQTY: TFloatField;
    cdsDetailTracyFTOTALUNRECEIVEBASEQTY: TFloatField;
    cdsDetailTracyFTOTALUNRECEIVEQTY: TFloatField;
    cdsDetailTracyFDELIVERYADDRESS: TWideStringField;
    cdsDetailTracyFCLOSEDATE: TDateTimeField;
    cdsDetailTracyFISSUPINFO: TFloatField;
    cdsDetailTracyFCURSEORDERQTY: TFloatField;
    cdsDetailTracyFLOCALTAX: TFloatField;
    cdsDetailTracyFLOCALTAXAMOUNT: TFloatField;
    cdsDetailTracyFSALEORDERNUMBER: TWideStringField;
    cdsDetailTracyFPREPAIDAMOUNT: TFloatField;
    cdsDetailTracyFREQUESTORGUNITID: TWideStringField;
    cdsDetailTracyFREQUESTCOMPANYORGUNITID: TWideStringField;
    cdsDetailTracyFREASON: TWideStringField;
    cdsDetailTracyFISREQUESTTORECEIVED: TFloatField;
    cdsDetailTracyFTOTALMOVEQTY: TFloatField;
    cdsDetailTracyFTOTALINVOICEDAMT: TFloatField;
    cdsDetailTracyFPREPAYMENT: TFloatField;
    cdsDetailTracyFPRERECEIVED: TFloatField;
    cdsDetailTracyFUNPRERECEIVEDAM: TFloatField;
    cdsDetailTracyFVERSION: TFloatField;
    cdsDetailTracyFOLDSTATUS: TFloatField;
    cdsDetailTracyFOLDID: TWideStringField;
    cdsDetailTracyFCANINVMOVEQTY: TFloatField;
    cdsDetailTracyFUNORDEREDQTY: TFloatField;
    cdsDetailTracyFISBETWEENCOMPANYREC: TFloatField;
    cdsDetailTracyFROWTYPEID: TWideStringField;
    cdsDetailTracyFWAREHOUSEID: TWideStringField;
    cdsDetailTracyFDESTINATIONTYPE: TWideStringField;
    cdsDetailTracyFMATERIALNAME: TWideStringField;
    cdsDetailTracyFISREQCOMEQLRECCOM: TFloatField;
    cdsDetailTracyFPLANRECEIVEQTY: TFloatField;
    cdsDetailTracyFTOTALSUPPLYSTOCKQTY: TFloatField;
    cdsDetailTracyFTOTALCANCELLEDSTOCKQTY: TFloatField;
    cdsDetailTracyFTOTALSUPPLYSTOCKBASEQTY: TFloatField;
    cdsDetailTracyFTOTALPREPAYAMT: TFloatField;
    cdsDetailTracyFTOTALREQPAYAMT: TFloatField;
    cdsDetailTracyFISREQPREPAYGTPREPAY: TFloatField;
    cdsDetailTracyFNONUMMATERIALMODEL: TWideStringField;
    cdsDetailTracyFQCSTANDARDID: TWideStringField;
    cdsDetailTracyFPROJECTID: TWideStringField;
    cdsDetailTracyFTRACKNOID: TWideStringField;
    cdsDetailTracyFCONTRACTNUMBER: TWideStringField;
    cdsDetailTracyFPURCONTRACTID: TWideStringField;
    cdsDetailTracyFMATCHEDAMOUNT: TFloatField;
    cdsDetailTracyFPURREQUESTID: TWideStringField;
    cdsDetailTracyFPURREQUESTENTRYID: TWideStringField;
    cdsDetailTracyCFCUSTOMERORDERID: TWideStringField;
    cdsDetailTracyCFPACKID: TWideStringField;
    cdsDetailTracyCFCOLORID: TWideStringField;
    cdsDetailTracyCFMUTILSOURCEBILL: TWideStringField;
    cdsDetailTracyCFPACKNUM: TFloatField;
    cdsDetailTracyCFSIZESID: TWideStringField;
    cdsDetailTracyCFCUSTOMERDISID: TWideStringField;
    cdsDetailTracyCFRECEIVESTOREUNIT: TWideStringField;
    cdsDetailTracyCFCUPID: TWideStringField;
    cdsDetailTracyCFSIZEGROUPID: TWideStringField;
    cdsDetailTracyCFSOASSOCIATEQTY: TFloatField;
    cdsDetailTracyCFLOCATION: TWideStringField;
    cdsDetailTracyCFDPPRICE: TFloatField;
    cdsDetailTracyCFASSISTNUM: TWideStringField;
    cdsDetailTracyCFBOXQTY: TFloatField;
    cdsDetailTracycfMaterialNumber: TStringField;
    cdsDetailTracycfMaterialName: TStringField;
    cdsDetailTracyCFColorName: TStringField;
    cdsDetailTracyCFCupName: TStringField;
    cdsDetailTracyCFPackName: TStringField;
    cdsDetailTracyCFColorCode: TStringField;
    cdsDetailTracyCFSizeCode: TWideStringField;
    cdsDetailTracyCFSizeName: TWideStringField;
    cdsDetailTracyCFBrandName: TWideStringField;
    cdsDetailTracycfattributeName: TWideStringField;
    cdsDetailTracyCfbrandid: TWideStringField;
    cdsDetailTracycfattributeid: TWideStringField;
    cdsDetailTracyCFNUitName: TWideStringField;
    cdsDetailAmountFREMARK: TWideStringField;
    cdsDetailAmountFsourcebillnumber: TWideStringField;
    dbgList2FREMARK: TcxGridDBColumn;
    cxgridDetialFSEQ: TcxGridDBColumn;
    cxgridDetialFBASESTATUS: TcxGridDBColumn;
    cxgridDetialFREMARK: TcxGridDBColumn;
    cxgridDetialFQTY: TcxGridDBColumn;
    cxgridDetialFPRICE: TcxGridDBColumn;
    cxgridDetialFDISCOUNTRATE: TcxGridDBColumn;
    cxgridDetialFACTUALPRICE: TcxGridDBColumn;
    cxgridDetialFAMOUNT: TcxGridDBColumn;
    cxgridDetialFTOTALRECEIVEQTY: TcxGridDBColumn;
    cxgridDetialFTOTALRECEIPTQTY: TcxGridDBColumn;
    cxgridDetialCFPACKNUM: TcxGridDBColumn;
    cxgridDetialCFDPPRICE: TcxGridDBColumn;
    cxgridDetialcfMaterialNumber: TcxGridDBColumn;
    cxgridDetialcfMaterialName: TcxGridDBColumn;
    cxgridDetialCFColorName: TcxGridDBColumn;
    cxgridDetialCFCupName: TcxGridDBColumn;
    cxgridDetialCFPackName: TcxGridDBColumn;
    cxgridDetialCFColorCode: TcxGridDBColumn;
    cxgridDetialCFSizeCode: TcxGridDBColumn;
    cxgridDetialCFSizeName: TcxGridDBColumn;
    cxgridDetialCFBrandName: TcxGridDBColumn;
    cxgridDetialcfattributeName: TcxGridDBColumn;
    cxgridDetialCFNUitName: TcxGridDBColumn;
    cdsMasterFCreatorName: TStringField;
    cdsMasterFAuditorName: TStringField;
    cdsMasterCFModifierName: TStringField;
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
    procedure cxbtnNUmberPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cdsMasterAfterInsert(DataSet: TDataSet);
    procedure cdsDetailNewRecord(DataSet: TDataSet);
    procedure cxbtnNUmberPropertiesChange(Sender: TObject);
    procedure cxdblookupInputwayPropertiesCloseUp(Sender: TObject);
    procedure cdsMasterCalcFields(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure cdsSupplierFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure cxPageDetailChange(Sender: TObject);
    procedure dbgList2cfMaterialNumberPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure dbgList2CFColorCodePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure dbgList2CFCupNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure dbgList2CFPackNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btnEnter(Sender: TObject);
    procedure cdsDetailFQTYChange(Sender: TField);
    procedure cdsDetailFBASEUNITIDChange(Sender: TField);
    procedure cdsMasterBeforePost(DataSet: TDataSet);
    procedure cdsMasterFSUPPLIERIDChange(Sender: TField);
    procedure cdsDetailAmountFMATERIALIDChange(Sender: TField);
    procedure cdsDetailAmountFACTUALPRICEChange(Sender: TField);
    procedure cdsDetailAmountFDISCOUNTRATEChange(Sender: TField);
    procedure cdsDetailAmountAfterPost(DataSet: TDataSet);
    procedure cdsDetailAmountBeforeEdit(DataSet: TDataSet);
    procedure cdsDetailAmountAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
    sInnerCustID : string;
    procedure calAmt(DataSet: TDataSet);override;//计算金额
    procedure GetInnerSupplier;
  public
    { Public declarations }
    procedure Open_Bill(KeyFields: String; KeyValues: String); override;
    //保存单据
    function ST_Save : Boolean; override;
    procedure AddDetailRecord;override;
  end;

var
  FM_BillEditBranchPO: TFM_BillEditBranchPO;

implementation
uses FrmCliDM,Pub_Fun,uDrpHelperClase,uMaterDataSelectHelper;
{$R *.dfm}

procedure TFM_BillEditBranchPO.Open_Bill(KeyFields, KeyValues: String);
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
        FieldByName('FWAREHOUSEID').AsString := UserInfo.Warehouse_FID;       //仓库，用于生成销售订单表头仓库，配货时生成含入库店铺的调拨订单
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
        FieldByName('Cfsubbilltype').AsString := 'BP'; //经销商采购
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

function TFM_BillEditBranchPO.ST_Save: Boolean;
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
  end;}

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
procedure TFM_BillEditBranchPO.FormCreate(Sender: TObject);
begin
  inherited;
  sKeyFields := 'FmaterialID;CFColorID;CFCupID;CFpackID;Fsourcebillnumber';
  Self.ReportDir:='采购订单';
  Self.Bill_Sign := 'T_SM_PurOrder';
  Self.BillEntryTable := 'T_SM_PurOrderEntry';
  sBillTypeID := BillConst.BILLTYPE_PO;  //单据类型FID
  //cdsSupplier.Data := CliDM.cdsSupplier.Data;
  GetInnerSupplier;//获取内部供应商
  //不允许重复的主键
  setkeyFieldList('cfMaterialNumber;CFColorCode;CFPackName;CFCupName');
end;

procedure TFM_BillEditBranchPO.cxbtnNUmberPropertiesButtonClick(
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

procedure TFM_BillEditBranchPO.cdsMasterAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FPurchaseOrgUnitID').AsString := UserInfo.Branch_ID;//对应EAS采购组织
  DataSet.FieldByName('FCompanyOrgUnitID').AsString := UserInfo.Branch_ID; // 对应EAS财务组织
  DataSet.FieldByName('FStorageOrgUnitID').AsString := UserInfo.Branch_ID; //对应EAS库存组织
  DataSet.FieldByName('FPurchaseOrgUnitID').AsString := UserInfo.Branch_ID;
  DataSet.FieldByName('CFISProcduct').AsFloat := 0;
end;

procedure TFM_BillEditBranchPO.cdsDetailNewRecord(DataSet: TDataSet);
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

procedure TFM_BillEditBranchPO.cxbtnNUmberPropertiesChange(
  Sender: TObject);
begin
  inherited;
  girdList.hint :='FSUPPLIERID';
  HeadAutoSelIDchange(cdsSupplier,'');
end;

procedure TFM_BillEditBranchPO.cxdblookupInputwayPropertiesCloseUp(
  Sender: TObject);
begin
  inherited;
  //
end;

procedure TFM_BillEditBranchPO.cdsMasterCalcFields(DataSet: TDataSet);
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
  finally
    if tmpbtnEdit<> nil then
      tmpbtnEdit.Properties.OnChange := event;
  end
end;

procedure TFM_BillEditBranchPO.FormShow(Sender: TObject);
begin
  inherited;
  sIniBillFlag :='PO';
  sSPPack := 'SCM';
end;

procedure TFM_BillEditBranchPO.cdsSupplierFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  inherited;
  Accept:=((Pos(Trim(UpperCase(cxbtnNUmber.Text)),UpperCase(DataSet.fieldbyname('fnumber').AsString))>0) or
          (Pos(Trim(UpperCase(cxbtnNUmber.Text)),UpperCase(DataSet.fieldbyname('fname_l2').AsString))>0) or
          (Pos(Trim(UpperCase(cxbtnNUmber.Text)),UpperCase(DataSet.fieldbyname('FhelpCode').AsString))>0)) ;
end;

procedure TFM_BillEditBranchPO.cxPageDetailChange(Sender: TObject);
begin
  inherited;
  if cxPageDetail.ActivePage=cxTabTractDetail  then
  begin
    cdstracy.Data := cdsDetail.Data;
    OpenTracyDetail('');
  end;
end;

procedure TFM_BillEditBranchPO.dbgList2cfMaterialNumberPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  FindMaterial;
end;

procedure TFM_BillEditBranchPO.dbgList2CFColorCodePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  FindColor;
end;

procedure TFM_BillEditBranchPO.dbgList2CFCupNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  FindCup;
end;

procedure TFM_BillEditBranchPO.dbgList2CFPackNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  FindPack;
end;

procedure TFM_BillEditBranchPO.btnEnter(Sender: TObject);
begin
  inherited;
  ///
end;

procedure TFM_BillEditBranchPO.cdsDetailFQTYChange(Sender: TField);
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

procedure TFM_BillEditBranchPO.cdsDetailFBASEUNITIDChange(Sender: TField);
begin
  inherited;
  Sender.DataSet.FieldByName('FUnitID').Value := Sender.Value;
end;
procedure TFM_BillEditBranchPO.calAmt(DataSet: TDataSet);
begin
  DataSet.FieldByName('FAmount').AsFloat := CliDM.SimpleRoundTo(DataSet.fieldbyname('fqty').AsFloat*DataSet.FieldByName('FACTUALPRICE').AsFloat); //金额
  DataSet.FieldByName('FTaxAmount').AsFloat := CliDM.SimpleRoundTo(DataSet.fieldbyname('fqty').AsFloat*DataSet.FieldByName('FACTUALTAXPRICE').AsFloat); //价税合计
  DataSet.FieldByName('FTax').AsFloat := CliDM.SimpleRoundTo(DataSet.fieldbyname('fqty').AsFloat*(DataSet.FieldByName('FACTUALTAXPRICE').AsFloat-DataSet.FieldByName('FACTUALPRICE').AsFloat)); //税额
  DataSet.FieldByName('FLocalAmount').AsFloat := DataSet.FieldByName('FAmount').AsFloat;
  DataSet.FieldByName('FLocalTax').AsFloat := DataSet.FieldByName('FTax').AsFloat;
  DataSet.FieldByName('FLocalTaxAmount').AsFloat := DataSet.FieldByName('FTaxAmount').AsFloat;
  DataSet.FieldByName('FDiscountAmount').AsFloat := CliDM.SimpleRoundTo(DataSet.fieldbyname('fqty').AsFloat*(DataSet.FieldByName('FPRICE').AsFloat-DataSet.FieldByName('FACTUALPRICE').AsFloat));
end;
procedure TFM_BillEditBranchPO.cdsMasterBeforePost(DataSet: TDataSet);
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
procedure TFM_BillEditBranchPO.GetInnerSupplier;
var
 strsql,ErrMsg : string;
begin
  cdsSupplier.Close;
  cdsSupplier.CreateDataSet;
  strsql := 'Select A.FID,A.fnumber,A.fname_l2,A.FinternalCompanyID,A.FtaxRate,FhelpCode '
            +' From t_Bd_Supplier A left join Ct_Pm_Usersupplierentry S on A.FID=S.CFSID  '
            +' left join t_Pm_Userroleorg R on R.FROLEID=S.Fparentid '
            +' Where (S.Fparentid='''+userinfo.LoginUser_FID+''' or  R.Fuserid='''+userinfo.LoginUser_FID+''' ) and Fisinternalcompany=1 and A.FUsedStatus=1  ';
  Clidm.Get_OpenSQL(CliDM.cdstemp,strsql,ErrMsg);//获取供应商owen
  while not CliDM.cdstemp.Eof do
  begin
    if not  FindRecord1(cdsSupplier,'FID',CliDM.cdstemp.fieldbyname('FID').AsString,1) then
    begin
      cdsSupplier.Append;
      cdsSupplier.FieldByName('FID').AsString := CliDM.cdstemp.fieldbyname('FID').AsString;
      cdsSupplier.FieldByName('fnumber').AsString := CliDM.cdstemp.fieldbyname('fnumber').AsString;
      cdsSupplier.FieldByName('fname_l2').AsString := CliDM.cdstemp.fieldbyname('fname_l2').AsString;
      cdsSupplier.FieldByName('FinternalCompanyID').AsString := CliDM.cdstemp.fieldbyname('FinternalCompanyID').AsString;
      cdsSupplier.FieldByName('FtaxRate').AsFloat := CliDM.cdstemp.fieldbyname('FtaxRate').AsFloat;
      cdsSupplier.FieldByName('FHelpCode').AsString := CliDM.cdstemp.fieldbyname('FhelpCode').AsString;
      cdsSupplier.Post;
    end;
    CliDM.cdstemp.Next;
  end;
  CliDM.cdstemp.Close;

end;
procedure TFM_BillEditBranchPO.cdsMasterFSUPPLIERIDChange(Sender: TField);
var
  strSql,FInnerCompID,ErrMsg : string;
begin
  inherited;
  if FindRecord1(cdsSupplier,'FID',Sender.AsString,1 ) then
    FInnerCompID := cdsSupplier.fieldbyname('FinternalCompanyID').AsString;
  strSql := 'select FID from t_Bd_Customer B where B.Finternalcompanyid='+quotedstr(FInnerCompID);
  Clidm.Get_OpenSQL(CliDM.cdstemp,strsql,ErrMsg);
  sInnerCustID := CliDM.cdstemp.fieldbyname('FID').AsString;
end;

procedure TFM_BillEditBranchPO.cdsDetailAmountFMATERIALIDChange(
  Sender: TField);
begin
  inherited;
  Get_PolicyPrice('FDISCOUNTRATE','FACTUALPRICE',cdsMaster.fieldbyname('FSALEORGUNITID').AsString
  ,cdsMaster.fieldbyname('CFPRICETYPEID').AsString,sInnerCustID,cdsDetailAmount.fieldbyname('FMATERIALID').AsString,
  cdsMaster.fieldbyname('FBIZDATE').AsDateTime);
end;

procedure TFM_BillEditBranchPO.cdsDetailAmountFACTUALPRICEChange(
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

procedure TFM_BillEditBranchPO.cdsDetailAmountFDISCOUNTRATEChange(
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
procedure TFM_BillEditBranchPO.AddDetailRecord;
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
      FieldByName('FWAREHOUSEID').AsString := cdsMaster.fieldbyname('FWAREHOUSEID').AsString;
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
procedure TFM_BillEditBranchPO.cdsDetailAmountAfterPost(DataSet: TDataSet);
begin
  inherited;
  ///
end;

procedure TFM_BillEditBranchPO.cdsDetailAmountBeforeEdit(
  DataSet: TDataSet);
begin
  inherited;
  strMatID := DataSet.Fieldbyname('FMaterialID').AsString;
  strColorID := DataSet.Fieldbyname('CFColorID').AsString;
  StrCupID := DataSet.Fieldbyname('CFCupID').AsString;
  StrPackID := DataSet.Fieldbyname('CFPackID').AsString;
end;

procedure TFM_BillEditBranchPO.cdsDetailAmountAfterInsert(
  DataSet: TDataSet);
begin
  inherited;
  strMatID := '';
  strColorID :='';
  StrCupID := '';
  StrpackID := '';
end;

end.
