unit uBillEditPurInWarehsReturn;

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
  cxGridDBTableView, cxGrid, cxLabel, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxDBData, cxLookAndFeelPainters,
  cxButtonEdit, dxGDIPlusClasses, jpeg, Grids, DBGrids, cxPC, cxSpinEdit;

type
  TFM_BillEditPurInWarehsReturn = class(TFM_BillEditBase)
    wdstrngfldMasterFID: TWideStringField;
    wdstrngfldMasterFCREATORID: TWideStringField;
    cdsMasterFCREATETIME: TDateTimeField;
    wdstrngfldMasterFLASTUPDATEUSERID: TWideStringField;
    cdsMasterFLASTUPDATETIME: TDateTimeField;
    wdstrngfldMasterFCONTROLUNITID: TWideStringField;
    wdstrngfldMasterFNUMBER: TWideStringField;
    cdsMasterFBIZDATE: TDateTimeField;
    wdstrngfldMasterFHANDLERID: TWideStringField;
    wdstrngfldMasterFDESCRIPTION: TWideStringField;
    wdstrngfldMasterFAUDITORID: TWideStringField;
    wdstrngfldMasterFSOURCEBILLID: TWideStringField;
    wdstrngfldMasterFSOURCEFUNCTION: TWideStringField;
    cdsMasterFAUDITTIME: TDateTimeField;
    wdstrngfldMasterFBIZTYPEID: TWideStringField;
    wdstrngfldMasterFSOURCEBILLTYPEID: TWideStringField;
    wdstrngfldMasterFBILLTYPEID: TWideStringField;
    wdstrngfldMasterFSTORAGEORGUNITID: TWideStringField;
    wdstrngfldMasterFADMINORGUNITID: TWideStringField;
    wdstrngfldMasterFSTOCKERID: TWideStringField;
    wdstrngfldMasterFVOUCHERID: TWideStringField;
    wdstrngfldMasterFTRANSACTIONTYPEID: TWideStringField;
    wdstrngfldMasterFSUPPLIERID: TWideStringField;
    wdstrngfldMasterFCURRENCYID: TWideStringField;
    wdstrngfldMasterFMODIFIERID: TWideStringField;
    cdsMasterFMODIFICATIONTIME: TDateTimeField;
    wdstrngfldMasterFPAYMENTTYPEID: TWideStringField;
    wdstrngfldMasterCFSUBBILLTYPE: TWideStringField;
    wdstrngfldMasterCFPRICETYPEID: TWideStringField;
    wdstrngfldMasterCFSUPPLIERSTORAGEID: TWideStringField;
    wdstrngfldMasterCFORDERTYPEID: TWideStringField;
    cdsMasterFHASEFFECTED: TFloatField;
    cdsMasterFBASESTATUS: TFloatField;
    cdsMasterFYEAR: TFloatField;
    cdsMasterFPERIOD: TFloatField;
    cdsMasterFTOTALQTY: TFloatField;
    cdsMasterFTOTALAMOUNT: TFloatField;
    cdsMasterFFIVOUCHERED: TFloatField;
    cdsMasterFTOTALSTANDARDCOST: TFloatField;
    cdsMasterFTOTALACTUALCOST: TFloatField;
    cdsMasterFISREVERSED: TFloatField;
    cdsMasterFISINITBILL: TFloatField;
    cdsMasterFRECEIPTAMOUNT: TFloatField;
    cdsMasterFEXCHANGERATE: TFloatField;
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
    wdstrngfldDetailFID: TWideStringField;
    wdstrngfldDetailFSOURCEBILLID: TWideStringField;
    wdstrngfldDetailFSOURCEBILLNUMBER: TWideStringField;
    wdstrngfldDetailFSOURCEBILLTYPEID: TWideStringField;
    wdstrngfldDetailFSOURCEBILLENTRYID: TWideStringField;
    wdstrngfldDetailFMATERIALID: TWideStringField;
    wdstrngfldDetailFUNITID: TWideStringField;
    wdstrngfldDetailFBASEUNITID: TWideStringField;
    wdstrngfldDetailFASSISTUNITID: TWideStringField;
    wdstrngfldDetailFREASONCODEID: TWideStringField;
    wdstrngfldDetailFSTORAGEORGUNITID: TWideStringField;
    wdstrngfldDetailFCOMPANYORGUNITID: TWideStringField;
    wdstrngfldDetailFWAREHOUSEID: TWideStringField;
    wdstrngfldDetailFLOCATIONID: TWideStringField;
    wdstrngfldDetailFSTOCKERID: TWideStringField;
    wdstrngfldDetailFLOT: TWideStringField;
    wdstrngfldDetailFPARENTID: TWideStringField;
    wdstrngfldDetailFPURORDERID: TWideStringField;
    wdstrngfldDetailFPURORDERENTRYID: TWideStringField;
    wdstrngfldDetailFPURORDERNUMBER: TWideStringField;
    wdstrngfldDetailFASSISTPROPERTYID: TWideStringField;
    cdsDetailFMFG: TDateTimeField;
    cdsDetailFEXP: TDateTimeField;
    wdstrngfldDetailFREMARK: TWideStringField;
    wdstrngfldDetailFCOREBILLTYPEID: TWideStringField;
    wdstrngfldDetailFPURCHASEORGUNITID: TWideStringField;
    wdstrngfldDetailFPURCHASEPERSONID: TWideStringField;
    wdstrngfldDetailFPURCHASEGROUPID: TWideStringField;
    wdstrngfldDetailFBALANCESUPPLIERID: TWideStringField;
    wdstrngfldDetailFRECEIVESTORAGEORGUNITID: TWideStringField;
    wdstrngfldDetailFPRODUCTTASKNUMBER: TWideStringField;
    wdstrngfldDetailFSUPPLIERLOTNO: TWideStringField;
    wdstrngfldDetailFPROJECTID: TWideStringField;
    wdstrngfldDetailFTRACKNUMBERID: TWideStringField;
    wdstrngfldDetailFCONTRACTNUMBER: TWideStringField;
    wdstrngfldDetailFMOTHERENTRYID: TWideStringField;
    wdstrngfldDetailFCUSTOMERID: TWideStringField;
    wdstrngfldDetailFOUTLOCATIONID: TWideStringField;
    wdstrngfldDetailFOUTWAREHOUSEID: TWideStringField;
    wdstrngfldDetailREMARK: TWideStringField;
    wdstrngfldDetailCFMUTILSOURCEBILL: TWideStringField;
    wdstrngfldDetailCFPACKID: TWideStringField;
    wdstrngfldDetailCFCOLORID: TWideStringField;
    wdstrngfldDetailCFSIZESID: TWideStringField;
    wdstrngfldDetailCFCUPID: TWideStringField;
    wdstrngfldDetailCFSIZEGROUPID: TWideStringField;
    wdstrngfldDetailCFSRCSALESORDERID: TWideStringField;
    wdstrngfldDetailCFSRCSALESORDERENTRYID: TWideStringField;
    cdsDetailFSEQ: TFloatField;
    cdsDetailFSOURCEBILLENTRYSEQ: TFloatField;
    cdsDetailFASSCOEFFICIENT: TFloatField;
    cdsDetailFBASESTATUS: TFloatField;
    cdsDetailFASSOCIATEQTY: TFloatField;
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
    cdsDetailFWRITTENOFFQTY: TFloatField;
    cdsDetailFWRITTENOFFAMOUNT: TFloatField;
    cdsDetailFACTUALCOST: TFloatField;
    cdsDetailFUNWRITEOFFQTY: TFloatField;
    cdsDetailFUNWRITEOFFAMOUNT: TFloatField;
    cdsDetailFRETURNBASEQTY: TFloatField;
    cdsDetailFPURORDERENTRYSEQ: TFloatField;
    cdsDetailFREVERSEBASEQTY: TFloatField;
    cdsDetailCFNOTICAMOUNT: TFloatField;
    cdsDetailCFCHECKINPUTQTY: TFloatField;
    cdsDetailCFCHECKDIFFQTY: TFloatField;
    cdsDetailCFDPPRICE: TFloatField;
    cdsDetailCFPACKNUM: TFloatField;
    cdsDetailFDISCOUNTAMOUNT: TFloatField;
    cdsDetailFACTUALTAXPRICE: TFloatField;
    cdsDetailFDISCOUNTRATE: TFloatField;
    cdsDetailFLOCALTAXAMOUNT: TFloatField;
    cdsDetailFTAXAMOUNT: TFloatField;
    cdsDetailFDOSINGTYPE: TFloatField;
    cdsDetailFSCUNWRITTENOFFBASEQTY: TFloatField;
    cdsDetailFSCUNWRITTENOFFQTY: TFloatField;
    cdsDetailFUNWRITEOFFBASEQTY: TFloatField;
    cdsDetailFWRITTENOFFBASEQTY: TFloatField;
    cdsDetailFUNRETURNEDBASEQTY: TFloatField;
    cdsDetailFORDERPRICE: TFloatField;
    cdsDetailFISBETWEENCOMPANYSEND: TFloatField;
    cdsDetailFISCENTERBALANCE: TFloatField;
    cdsDetailFDREWBASEQTY: TFloatField;
    cdsDetailFTAXRATE: TFloatField;
    cdsDetailFTAX: TFloatField;
    cdsDetailFLOCALTAX: TFloatField;
    cdsDetailFISREQUESTTORECEIVED: TFloatField;
    cdsDetailFLOCALPRICE: TFloatField;
    cdsDetailFLOCALAMOUNT: TFloatField;
    cdsDetailFTAXPRICE: TFloatField;
    cdsDetailFPURCHASECOST: TFloatField;
    cdsDetailFPURCHASEFEE: TFloatField;
    cdsDetailFTOTALMOVEQTY: TFloatField;
    cdsDetailFISFULLWRITEOFF: TFloatField;
    cdsDetailFUNITPURCHASECOST: TFloatField;
    cdsDetailFDREWQTY: TFloatField;
    cdsDetailFCANDIRECTREQQTY: TFloatField;
    cdsDetailFCANDIRECTREQBASEQTY: TFloatField;
    cdsDetailFMATERIALCOST: TFloatField;
    cdsDetailFIMPUTEDCOST: TFloatField;
    cdsDetailFUNITMATERIALCOST: TFloatField;
    cdsDetailFISPRESENT: TFloatField;
    cdsDetailFHASSAMECOU: TFloatField;
    cdsDetailFACTUALPRICE: TFloatField;
    cdsDetailFSCWRITTENOFFQTY: TFloatField;
    cdsDetailFSCWRITTENOFFBASEQTY: TFloatField;
    cdsDetailFRECEIVEAMOUNT: TFloatField;
    cdsDetailAmountcfMaterialNumber: TStringField;
    cdsDetailAmountcfMaterialName: TStringField;
    cdsDetailAmountCFColorName: TStringField;
    cdsDetailAmountCFCupName: TStringField;
    wdstrngfldDetailAmountFMATERIALID: TWideStringField;
    wdstrngfldDetailAmountCFCOLORID: TWideStringField;
    wdstrngfldDetailAmountCFCUPID: TWideStringField;
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
    dbgList2cfMaterialNumber: TcxGridDBColumn;
    dbgList2cfMaterialName: TcxGridDBColumn;
    dbgList2CFColorName: TcxGridDBColumn;
    dbgList2CFCupName: TcxGridDBColumn;
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
    wdstrngfldDetailCFAssistNum: TWideStringField;
    wdstrngfldDetailAmountCFSIZEGROUPID: TWideStringField;
    wdstrngfldDetailAmountFBASEUNITID: TWideStringField;
    cdsDetailAmountCFDPPRICE: TFloatField;
    dbgList2CFDPPRICE: TcxGridDBColumn;
    cdsMasterCFInWAREHOUSEID: TWideStringField;
    cdsSupplier: TClientDataSet;
    cdsWareHouse: TClientDataSet;
    cdsDetailAmountfTotaLQty: TIntegerField;
    lbCaption: TLabel;
    cdsMasterCFINPUTWAY: TWideStringField;
    bt_CtrlQ: TdxBarButton;
    bt_BarCode: TdxBarButton;
    bt_JS: TdxBarButton;
    updateQty: TMenuItem;
    cdsDetailcfMaterialNumber: TStringField;
    cdsDetailcfMaterialName: TStringField;
    cdsDetailcfColorCode: TStringField;
    cdsDetailcfColorName: TStringField;
    cdsDetailcfSIZECode: TStringField;
    cdsDetailcfSIZEName: TStringField;
    cdsDetailcfCupName: TStringField;
    cdsDetailAmountCFColorCode: TStringField;
    dbgList2CFColorCode: TcxGridDBColumn;
    cxLabel2: TcxLabel;
    cxbtnedtRecType: TcxDBLookupComboBox;
    cxLabel3: TcxLabel;
    cxbtnedtScopetype: TcxDBLookupComboBox;
    cxLabel7: TcxLabel;
    cxbtnReceivWareNum: TcxButtonEdit;
    cxbtnReceivWareName: TcxDBTextEdit;
    cxDBCheckBox1: TcxDBCheckBox;
    cxDBCheckBox2: TcxDBCheckBox;
    cxDBCheckBox3: TcxDBCheckBox;
    cxLabel4: TcxLabel;
    cxbtnPO: TcxButtonEdit;
    cxLabel5: TcxLabel;
    cxbtnRecNO: TcxButtonEdit;
    dsPurRecType: TDataSource;
    dsRange: TDataSource;
    cdsDetailAmountFPRICE: TFloatField;
    cdsDetailAmountFACTUALPRICE: TFloatField;
    cdsDetailAmountFDISCOUNTRATE: TFloatField;
    cdsDetailAmountCFBrandName: TWideStringField;
    cdsDetailAmountcfattributeName: TWideStringField;
    cdsDetailAmountCfbrandid: TWideStringField;
    cdsDetailAmountcfattributeid: TWideStringField;
    cdsDetailAmountFPURORDERNUMBER: TWideStringField;
    cdsDetailAmountFSOURCEBILLNUMBER: TWideStringField;
    cdsDetailAmountFLOCATIONID: TWideStringField;
    cdsDetailAmountCFLocName: TStringField;
    cdsDetailAmountCFUnitName: TStringField;
    cdsDetailAmountFRemark: TWideStringField;
    dbgList2FPRICE: TcxGridDBColumn;
    dbgList2FACTUALPRICE: TcxGridDBColumn;
    dbgList2FDISCOUNTRATE: TcxGridDBColumn;
    dbgList2CFBrandName: TcxGridDBColumn;
    dbgList2cfattributeName: TcxGridDBColumn;
    dbgList2CFLocName: TcxGridDBColumn;
    dbgList2CFUnitName: TcxGridDBColumn;
    dbgList2FRemark: TcxGridDBColumn;
    cdsDetailAmountFAmount: TFloatField;
    dbgList2fTotaLQty: TcxGridDBColumn;
    cdsDetailAmountCFPackName: TStringField;
    cdsDetailAmountCFPACKNUM: TFloatField;
    dbgList2CFPackName: TcxGridDBColumn;
    dbgList2CFPACKNUM: TcxGridDBColumn;
    cdsDetailAmountFACTUALTAXPRICE: TFloatField;
    dbgList2FACTUALTAXPRICE: TcxGridDBColumn;
    cdsMasterCFRANGEID: TWideStringField;
    cdsMasterCFMATERIALTYPE: TWideStringField;
    cdsMasterCFORDERDEFID: TWideStringField;
    cdsMasterCFCOPE: TFloatField;
    cdsMasterCFISPROCDUCT: TIntegerField;
    cdsMasterCFPURRECTYPEID: TWideStringField;
    cdsMasterCFSupplierName: TStringField;
    cdsMasterCFReceivWareName: TStringField;
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
    cdsDetailTracyCFOTHERBILLREC: TFloatField;
    cxgridDetialFSEQ: TcxGridDBColumn;
    cxgridDetialFBASESTATUS: TcxGridDBColumn;
    cxgridDetialFQTY: TcxGridDBColumn;
    cxgridDetialFPRICE: TcxGridDBColumn;
    cxgridDetialFAMOUNT: TcxGridDBColumn;
    cxgridDetialFISPRESENT: TcxGridDBColumn;
    cxgridDetialFTAXRATE: TcxGridDBColumn;
    cxgridDetialFTAX: TcxGridDBColumn;
    cxgridDetialFREMARK: TcxGridDBColumn;
    cxgridDetialFACTUALPRICE: TcxGridDBColumn;
    cxgridDetialFTAXAMOUNT: TcxGridDBColumn;
    cxgridDetialFACTUALTAXPRICE: TcxGridDBColumn;
    cxgridDetialFDISCOUNTRATE: TcxGridDBColumn;
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
    cxgridDetialCFNUitName: TcxGridDBColumn;
    cxgridDetialCFSizeCode: TcxGridDBColumn;
    cxgridDetialCFSizeName: TcxGridDBColumn;
    cxgridDetialCFPACKNUM: TcxGridDBColumn;
    cdsDetailAmountFtaxrate: TFloatField;
    cdsDetailAmountFtaxAmount: TFloatField;
    cdsDetailAmountFtax: TFloatField;
    dbgList2Ftaxrate: TcxGridDBColumn;
    dbgList2Ftax: TcxGridDBColumn;
    dbgList2FtaxAmount: TcxGridDBColumn;
    cdsMasterCFModifierName: TStringField;
    cdsMasterFCreatorName: TStringField;
    cdsMasterFAuditorName: TStringField;
    cdsDetailAmountCFPackID: TWideStringField;
    btn_PackingList: TdxBarButton;


    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cdsDetailNewRecord(DataSet: TDataSet);
    procedure cdsDetailFQTYChange(Sender: TField);
    procedure wdstrngfldDetailFBASEUNITIDChange(Sender: TField);
    procedure actSetBillStatusExecute(Sender: TObject);
    procedure actNewBillExecute(Sender: TObject);
    procedure actSaveBillExecute(Sender: TObject);
    procedure actDeleteExecute(Sender: TObject);
    procedure actAuditExecute(Sender: TObject);
    procedure actUnAuditExecute(Sender: TObject);
    procedure actReportDesignExecute(Sender: TObject);
    procedure actReportViewExecute(Sender: TObject);
    procedure pmDetailPopup(Sender: TObject);
    procedure bbtCheckClick(Sender: TObject);
    procedure bt_CtrlQClick(Sender: TObject);
    procedure dxBarCodeSMClick(Sender: TObject);
    procedure bt_BarCodeClick(Sender: TObject);
    procedure bt_JSClick(Sender: TObject);
    procedure updateQtyClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cdsDetailAmountCalcFields(DataSet: TDataSet);
    procedure cdsMasterCalcFields(DataSet: TDataSet);
    procedure cxbtnNUmberPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxbtnReceivWareNumPropertiesChange(Sender: TObject);
    procedure cxbtnReceivWareNumPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure wdstrngfldMasterFSUPPLIERIDChange(Sender: TField);
    procedure cdsDetailAmountAfterInsert(DataSet: TDataSet);
    procedure dbgList2Editing(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure girdListDblClick(Sender: TObject);
    procedure girdListKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxPageDetailChange(Sender: TObject);
    procedure cdsDetailAmountFACTUALTAXPRICEChange(Sender: TField);
    procedure cdsDetailAmountFACTUALPRICEChange(Sender: TField);
    procedure cdsDetailBeforePost(DataSet: TDataSet);
    procedure cdsSupplierFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure cdsWareHouseFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure cdsDetailAmountFDISCOUNTRATEChange(Sender: TField);
    procedure dbgList2CFLocNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure dbgList2cfMaterialNumberPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure dbgList2CFColorCodePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure dbgList2CFCupNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure dbgList2CFPackNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cdsDetailAmountBeforePost(DataSet: TDataSet);
    procedure cxbtnNUmberPropertiesChange(Sender: TObject);
    procedure cdsDetailAmountFtaxrateChange(Sender: TField);
    procedure btn_PackingListClick(Sender: TObject);
    procedure cdsMasterCFInWAREHOUSEIDChange(Sender: TField);
    procedure cdsDetailAmountAfterPost(DataSet: TDataSet);
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
  FM_BillEditPurInWarehsReturn: TFM_BillEditPurInWarehsReturn;
  function EditFillPurInWarehsReturn_Frm(KeyValues : string):Boolean;

implementation
uses FrmCliDM,Pub_Fun,uMaterDataSelectHelper,uPackingListFrm;
{$R *.dfm}

{ TFM_BillEditPurInWarehsReturn }
function EditFillPurInWarehsReturn_Frm(KeyValues : string):Boolean;
begin
  Result := True;
  if FM_BillEditPurInWarehsReturn <> nil then
  begin
    if FM_BillEditPurInWarehsReturn.Showing then
    else FM_BillEditPurInWarehsReturn.Show;
    FM_BillEditPurInWarehsReturn.SetFocus;
    Exit;
  end
  else
  begin
    try
      Application.CreateForm(TFM_BillEditPurInWarehsReturn, FM_BillEditPurInWarehsReturn);
      FM_BillEditPurInWarehsReturn.Open_Bill('FID',KeyValues);
      FM_BillEditPurInWarehsReturn.Show;
      if (FM_BillEditPurInWarehsReturn <> nil) and (FM_BillEditPurInWarehsReturn.Visible) then
         FM_BillEditPurInWarehsReturn.SetFocus;
    except
      FM_BillEditPurInWarehsReturn := nil;
      FM_BillEditPurInWarehsReturn.Free;
    end;
  end;
end;

procedure TFM_BillEditPurInWarehsReturn.Open_Bill(KeyFields,
  KeyValues: String);
var OpenTables: array[0..1] of string;
    _cds: array[0..1] of TClientDataSet;
    ErrMsg,FBIZTYPEID,FSupplierID : string;
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
      FieldByName('FNUMBER').AsString :=CliDM.GetSCMBillNum(sBillTypeID,UserInfo.Branch_Flag,sBillFlag,true,ErrMsg);
      FieldByName('FBIZDATE').AsDateTime := CliDM.Get_ServerTime;
      FieldByName('FCREATORID').AsString := UserInfo.LoginUser_FID;
      FieldByName('FBASESTATUS').AsInteger := 1;  //保存状态
      FieldByName('FLASTUPDATEUSERID').AsString := UserInfo.LoginUser_FID;
      FieldByName('FLASTUPDATETIME').AsDateTime := CliDM.Get_ServerTime;
      FieldByName('FMODIFIERID').AsString := UserInfo.LoginUser_FID;
      FieldByName('FMODIFICATIONTIME').AsDateTime := CliDM.Get_ServerTime;
      FieldByName('FCONTROLUNITID').AsString := UserInfo.FCONTROLUNITID;    //控制单元，从服务器获取
      //FieldByName('FSupplierID').AsString := '';   //供应商
      FieldByName('FCurrencyID').AsString := BillConst.FCurrency;   //币别
      FieldByName('FIsInTax').AsInteger := 0;      //是否含税
      FieldByName('FIsPriceInTax').AsInteger := 0; //是否价外税
      FieldByName('FStorageOrgUnitID').AsString := UserInfo.Branch_ID; //库存组织
       
      FieldByName('FAdminOrgUnitID').AsString := '';  //部门
     // FieldByName('FTransactionTypeID').AsString := '55e45bf7-0105-1000-e000-0109c0a812fdB008DCA7';  //事务类型:302 普通采购退货
      FieldByName('FIsInitBill').AsInteger := 0;  //是否是初始化单
      FieldByName('FIsReversed').AsInteger := 0;  //是否冲销
      FieldByName('FBizTypeID').AsString := 'd8e80652-0107-1000-e000-04c5c0a812202407435C';   //业务类型： 111普通采购退货
      FieldByName('FBillTypeID').AsString := BillConst.BILLTYPE_PI;  //单据类型： 采购入库单
      FieldByName('CFISBADSHOE').AsInteger := 0;
      FieldByName('CFISPROCDUCT').AsFloat :=0;
      FieldByName('Cfmaterialtype').AsString := 'PR'; ///采购退货
    end;
  end;
  is_ReturnBill := True;
  inherited;
end;

function TFM_BillEditPurInWarehsReturn.ST_Save: Boolean;
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
  end;  }
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
end;

procedure TFM_BillEditPurInWarehsReturn.FormCreate(Sender: TObject);
var  strsql,strError : string;
begin
  sBillTypeID := BillConst.BILLTYPE_PI;  //单据类型FID
  inherited;
  sKeyFields := 'FmaterialID;CFColorID;CFCupID;CFpackID;FLOCATIONID';
  Self.Bill_Sign := 'T_IM_PurInWarehsBill';
  Self.BillEntryTable := 'T_IM_PurInWarehsEntry';

  cdsSupplier.Data := CliDM.cdsSupplier.Data; //供应商
  cdswarehouse.Data := CliDM.cdsWarehouse.Data;//仓库
  

  setkeyFieldList('cfMaterialNumber;CFColorName;CFCupName;CFLocName');
end;

procedure TFM_BillEditPurInWarehsReturn.FormDestroy(Sender: TObject);
begin
  inherited;
  FM_BillEditPurInWarehsReturn := nil;
end;

procedure TFM_BillEditPurInWarehsReturn.cdsDetailNewRecord(
  DataSet: TDataSet);
begin
  inherited;

  DataSet.FieldByName('FID').AsString := CliDM.GetEASSID(UserInfo.T_IM_PurInWarehsEntry);
  DataSet.FieldByName('FParentID').AsString := BillIDValue;
  DataSet.FieldByName('FWAREHOUSEID').AsString := UserInfo.Warehouse_FID; //仓库
  DataSet.FieldByName('FPurchaseOrgUnitID').AsString := UserInfo.Branch_ID;
  DataSet.FieldByName('FReceiveStorageOrgUnitID').AsString := UserInfo.Branch_ID;
  DataSet.FieldByName('FStorageOrgUnitID').AsString := UserInfo.Branch_ID;
  DataSet.FieldByName('FCompanyOrgUnitID').AsString := UserInfo.Branch_ID;
end;

procedure TFM_BillEditPurInWarehsReturn.cdsDetailFQTYChange(
  Sender: TField);
begin
  inherited;
  with Sender.DataSet do
  begin
    FieldByName('FAssistQty').Value := Sender.Value;
    FieldByName('FBaseQty').Value := Sender.Value;
    FieldByName('FAssistQty').Value := Sender.Value;
  end;
  Sender.DataSet.FieldByName('FReturnsQty').AsFloat := 0;
  Sender.DataSet.FieldByName('FUnWriteOffQty').AsFloat := Sender.DataSet.fieldbyname('Fqty').AsFloat;
  Sender.DataSet.FieldByName('FUnWriteOffBaseQty').AsFloat :=  Sender.DataSet.fieldbyname('Fqty').AsFloat;
  Sender.DataSet.FieldByName('FASSOCIATEQTY').AsFloat := Sender.DataSet.fieldbyname('Fqty').AsFloat;
end;

procedure TFM_BillEditPurInWarehsReturn.wdstrngfldDetailFBASEUNITIDChange(
  Sender: TField);
begin
  inherited;
  Sender.DataSet.FieldByName('FUNITID').AsString := Sender.AsString;
end;

procedure TFM_BillEditPurInWarehsReturn.actSetBillStatusExecute(
  Sender: TObject);
begin
  inherited;
  cxBIZDATE.Enabled := False;

  txDescription.Enabled := False;
end;

procedure TFM_BillEditPurInWarehsReturn.actNewBillExecute(Sender: TObject);
begin

  CliDM.Chk_UserRight(UserInfo.T_IM_PurInWarehsBill,'purinwarehs_new');
  inherited;

end;

procedure TFM_BillEditPurInWarehsReturn.actSaveBillExecute(
  Sender: TObject);
begin
  CliDM.Chk_UserRight(UserInfo.T_IM_PurInWarehsBill,'puinwarehs_update');
  inherited;

end;

procedure TFM_BillEditPurInWarehsReturn.actDeleteExecute(Sender: TObject);
begin
  CliDM.Chk_UserRight(UserInfo.T_IM_PurInWarehsBill,'purinwarehs_del');
  inherited;

end;

procedure TFM_BillEditPurInWarehsReturn.actAuditExecute(Sender: TObject);
begin
  CliDM.Chk_UserRight(UserInfo.T_IM_PurInWarehsBill,'purinwarehs_audit');
  if cdsMaster.IsEmpty then Exit;
  if CliDM.CHKPeriodClose(cdsMaster.FieldByName('fbizdate').AsString )then
  begin
    ShowMsg(Handle, '业务日期【'+cdsMaster.FieldByName('fbizdate').AsString+'】所在的会计期间已经关账,请修改业务日期',[]);
    Abort;
  end;
  inherited;

end;

procedure TFM_BillEditPurInWarehsReturn.actUnAuditExecute(Sender: TObject);
begin
  CliDM.Chk_UserRight(UserInfo.T_IM_PurInWarehsBill,'purinwarehs_unAudit');
  inherited;

end;

procedure TFM_BillEditPurInWarehsReturn.actReportDesignExecute(
  Sender: TObject);
begin
  CliDM.Chk_UserRight(UserInfo.T_IM_PurInWarehsBill,'purinwarehs_print');
  inherited;

end;

procedure TFM_BillEditPurInWarehsReturn.actReportViewExecute(
  Sender: TObject);
begin
  CliDM.Chk_UserRight(UserInfo.T_IM_PurInWarehsBill,'purinwarehs_print');
  inherited;

end;

procedure TFM_BillEditPurInWarehsReturn.pmDetailPopup(Sender: TObject);
begin
  inherited;
  if trim(cdsMaster.FieldByName('CFINPUTWAY').AsString) ='PACK' then
  begin

    updateQty.Enabled := False;
  end;
  if (cdsMaster.FieldByName('FBASESTATUS').AsFloat =4) or (cdsMaster.FieldByName('FBASESTATUS').AsFloat =7)   then
    updateQty.Enabled := False;
end;

procedure TFM_BillEditPurInWarehsReturn.bbtCheckClick(Sender: TObject);
begin
  if trim(cdsMaster.FieldByName('CFINPUTWAY').AsString) ='PACK' then
  begin
    ShowMsg(Handle, '选择配码录入方式不允许进行扫描校验!',[]);
    abort;
  end;
  inherited;
  ///
end;

procedure TFM_BillEditPurInWarehsReturn.bt_CtrlQClick(Sender: TObject);
var  fAmount:integer;
begin
  inherited;
  fAmount:=strtoint(cxBaseQty.Text);
  if fAmount<0 then
    cxBaseQty.Text:=inttostr(abs(fAmount))
  else
  cxBaseQty.Text:='-'+cxBaseQty.Text;
end;

procedure TFM_BillEditPurInWarehsReturn.dxBarCodeSMClick(Sender: TObject);
begin
  if cxdblookupInputway.EditValue='PACK' then
  begin
    ShowMsg(Handle, '对不起!此功能只支持散码输入方式!',[]);
    abort;
  end;
  inherited;

end;

procedure TFM_BillEditPurInWarehsReturn.bt_BarCodeClick(Sender: TObject);
begin
  inherited;
  if pnlCodeSM.Visible then  cxCodeText.SetFocus;
end;

procedure TFM_BillEditPurInWarehsReturn.bt_JSClick(Sender: TObject);
begin
  inherited;
  if pnlCodeSM.Visible then  cxBaseQty.SetFocus; 
end;

procedure TFM_BillEditPurInWarehsReturn.updateQtyClick(Sender: TObject);
begin
  inherited;
  if cdsDetail.IsEmpty then Exit;
  if ShowYesNo(Handle, '确定要用扫描校验数更新数量吗?如果更新没有扫描数的记录将会被删除。',[]) = idYes then
  begin
    cdsDetail.First;
    while not cdsDetail.Eof do
    begin
      if cdsDetail.fieldbyname('CFCHECKINPUTQTY').AsFloat<>0 then
      begin
        cdsDetail.Edit;
        cdsDetail.FieldByName('Fqty').AsFloat := cdsDetail.fieldbyname('CFCHECKINPUTQTY').AsFloat*(-1);
        cdsDetail.FieldByName('Fbaseqty').AsFloat := cdsDetail.fieldbyname('CFCHECKINPUTQTY').AsFloat*(-1);
        cdsDetail.FieldByName('fAmount').AsFloat := (-1)*cdsDetail.FieldByName('Fqty').AsFloat*cdsDetail.FieldByName('FACTUALTAXPRICE').AsFloat;
        cdsDetail.FieldByName('FTAXAMOUNT').AsFloat := (-1)*cdsDetail.FieldByName('Fqty').AsFloat*cdsDetail.FieldByName('FTAXPRICE').AsFloat;
        cdsDetail.FieldByName('FTAX').AsFloat := cdsDetail.FieldByName('FTAXAMOUNT').AsFloat-cdsDetail.FieldByName('fAmount').AsFloat;
        cdsDetail.FieldByName('CFCHECKDIFFQTY').Clear;
      end
      else
      begin
        cdsDetail.Edit;
        cdsDetail.FieldByName('Fqty').AsFloat := 0;
        cdsDetail.FieldByName('Fbaseqty').AsFloat := 0;
        cdsDetail.FieldByName('fAmount').AsFloat := 0;
        cdsDetail.FieldByName('FTAXAMOUNT').AsFloat := 0;
        cdsDetail.FieldByName('FTAX').AsFloat := 0;
      end;
      cdsDetail.Post;
      cdsDetail.Next;
    end;
  end;
  OpenDetailAmount(Self.Bill_Sign,BillIDValue);  //打开横排明细
end;

procedure TFM_BillEditPurInWarehsReturn.FormShow(Sender: TObject);
begin
  inherited;
  bbtCheck.Enabled := True;
  sIniBillFlag :='PI';
  sSPPack := 'SCM';
end;

procedure TFM_BillEditPurInWarehsReturn.cdsDetailAmountCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  with DataSet do
  begin
    FieldByName('FtaxAmount').AsFloat :=
    FieldByName('fTotalQty').AsFloat*FieldByName('FACTUALTAXPRICE').AsFloat;
    FieldByName('Ftax').AsFloat :=  FieldByName('FtaxAmount').AsFloat-fieldbyname('Famount').AsFloat;
  end;
end;

procedure TFM_BillEditPurInWarehsReturn.cdsMasterCalcFields(
  DataSet: TDataSet);
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

procedure TFM_BillEditPurInWarehsReturn.cxbtnNUmberPropertiesButtonClick(
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

procedure TFM_BillEditPurInWarehsReturn.cxbtnReceivWareNumPropertiesChange(
  Sender: TObject);
begin
  inherited;
  girdList.hint :='CFINWAREHOUSEID';
  HeadAutoSelIDchange(cdswarehouse,'');
end;

procedure TFM_BillEditPurInWarehsReturn.cxbtnReceivWareNumPropertiesButtonClick(
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
procedure TFM_BillEditPurInWarehsReturn.calAmt(DataSet: TDataSet);
begin
  DataSet.FieldByName('FAmount').AsFloat := CliDM.SimpleRoundTo(DataSet.fieldbyname('fqty').AsFloat*DataSet.FieldByName('FACTUALPRICE').AsFloat); //金额
  DataSet.FieldByName('FTaxAmount').AsFloat := CliDM.SimpleRoundTo(DataSet.fieldbyname('fqty').AsFloat*DataSet.FieldByName('FACTUALTAXPRICE').AsFloat); //价税合计
  DataSet.FieldByName('FTax').AsFloat := CliDM.SimpleRoundTo(DataSet.fieldbyname('fqty').AsFloat*(DataSet.FieldByName('FACTUALTAXPRICE').AsFloat-DataSet.FieldByName('FACTUALPRICE').AsFloat)); //税额
  DataSet.FieldByName('FLocalAmount').AsFloat := DataSet.FieldByName('FAmount').AsFloat;
  DataSet.FieldByName('FLocalTax').AsFloat := DataSet.FieldByName('FTax').AsFloat;
  DataSet.FieldByName('FLocalTaxAmount').AsFloat := DataSet.FieldByName('FTaxAmount').AsFloat;
end;
procedure TFM_BillEditPurInWarehsReturn.wdstrngfldMasterFSUPPLIERIDChange(
  Sender: TField);
begin
  inherited;
  if FindRecord1(cdsSupplier,'FID',Sender.AsString,1) then
   fSupTaxRate := cdsSupplier.fieldbyname('fTaxRate').AsFloat;
end;

procedure TFM_BillEditPurInWarehsReturn.cdsDetailAmountAfterInsert(
  DataSet: TDataSet);
begin
  inherited;
  if cdsMaster.FieldByName('FISINTAX').AsInteger =1 then
    DataSet.FieldByName('FTAXRATE').AsFloat := fSupTaxRate;
end;

procedure TFM_BillEditPurInWarehsReturn.dbgList2Editing(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  var AAllow: Boolean);
begin
  inherited;
  if cdsMaster.FieldByName('FISINTAX').AsInteger=1 then
  begin
    if (UpperCase(FocuField)=UpperCase('FActualTaxPrice')) or (UpperCase(FocuField)=UpperCase('FTaxRate')) then
      AAllow :=True ;
    if FocuField='FACTUALPRICE' then
      AAllow := False;
  end
  else
  begin
    if (UpperCase(FocuField)=UpperCase('FActualTaxPrice')) or (UpperCase(FocuField)=UpperCase('FTaxRate')) then
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

procedure TFM_BillEditPurInWarehsReturn.girdListDblClick(Sender: TObject);
begin
  inherited;
  if tmpbtnEdit <> nil then
  if tmpbtnEdit.Name='cxbtnReceivWareNum' then
    fHasLocation := dsHeadSel.DataSet.FieldByName('fhaslocation').AsInteger;
end;

procedure TFM_BillEditPurInWarehsReturn.girdListKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if tmpbtnEdit <> nil then
  if tmpbtnEdit.Name='cxbtnReceivWareNum' then
    fHasLocation := dsHeadSel.DataSet.FieldByName('fhaslocation').AsInteger;
end;

procedure TFM_BillEditPurInWarehsReturn.cxPageDetailChange(
  Sender: TObject);
begin
  inherited;
  if cxPageDetail.ActivePage=cxTabTractDetail  then
  begin
    cdstracy.Data := cdsDetail.Data;
    OpenTracyDetail('',True);
  end;
end;

procedure TFM_BillEditPurInWarehsReturn.cdsDetailAmountFACTUALTAXPRICEChange(
  Sender: TField);
    var
    Event,EventRate : TFieldNotifyEvent;
begin
  inherited;
  try
    Event := sender.DataSet.FieldByName('FACTUALPRICE').OnChange;
    sender.DataSet.FieldByName('FACTUALPRICE').OnChange := nil;
    EventRate := Sender.DataSet.FieldByName('FDISCOUNTRATE').OnChange;
    Sender.DataSet.FieldByName('FDISCOUNTRATE').OnChange := nil;
    sender.DataSet.FieldByName('FACTUALPRICE').AsFloat :=CliDM.SimpleRoundTo( Sender.AsFloat/(1+ Sender.DataSet.Fieldbyname('FTaxRate').AsFloat/100));
    if sender.DataSet.fieldbyname('FPRICE').AsFloat<>0 then
      Sender.DataSet.FieldByName('FDISCOUNTRATE').AsFloat :=CliDM.SimpleRoundTo( sender.DataSet.FieldByName('FACTUALPRICE').AsFloat/sender.DataSet.fieldbyname('FPRICE').AsFloat*100);
  finally
    Sender.DataSet.FieldByName('FDISCOUNTRATE').OnChange := EventRate;
    sender.DataSet.FieldByName('FACTUALPRICE').OnChange := Event;
  end;
end;

procedure TFM_BillEditPurInWarehsReturn.cdsDetailAmountFACTUALPRICEChange(
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
    Sender.DataSet.FieldByName('FDISCOUNTRATE').OnChange := EventRate;
  end;

end;

procedure TFM_BillEditPurInWarehsReturn.cdsDetailBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FUnWriteOffAmount').AsFloat := DataSet.fieldbyname('fAmount').AsFloat;
  DataSet.FieldByName('FWAREHOUSEID').AsString := cdsMaster.fieldbyname('CFINWAREHOUSEID').AsString;
end;

procedure TFM_BillEditPurInWarehsReturn.cdsSupplierFilterRecord(
  DataSet: TDataSet; var Accept: Boolean);
begin
  inherited;
  if tmpbtnEdit<> nil then
  Accept:=((Pos(Trim(UpperCase(tmpbtnEdit.Text)),UpperCase(DataSet.fieldbyname('fnumber').AsString))>0) or
          (Pos(Trim(UpperCase(tmpbtnEdit.Text)),UpperCase(DataSet.fieldbyname('fname_l2').AsString))>0) or
          (Pos(Trim(UpperCase(tmpbtnEdit.Text)),UpperCase(DataSet.fieldbyname('FhelpCode').AsString))>0)) ;
end;

procedure TFM_BillEditPurInWarehsReturn.cdsWareHouseFilterRecord(
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

procedure TFM_BillEditPurInWarehsReturn.cdsDetailAmountFDISCOUNTRATEChange(
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

procedure TFM_BillEditPurInWarehsReturn.dbgList2CFLocNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  FindLocation(cdsMaster.fieldbyname('CFINWAREHOUSEID').AsString,'FLOCATIONID','CFLocName');
end;

procedure TFM_BillEditPurInWarehsReturn.dbgList2cfMaterialNumberPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  FindMaterial;
end;

procedure TFM_BillEditPurInWarehsReturn.dbgList2CFColorCodePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  FindColor;
end;

procedure TFM_BillEditPurInWarehsReturn.dbgList2CFCupNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  FindCup;
end;

procedure TFM_BillEditPurInWarehsReturn.dbgList2CFPackNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  FindPack;
end;

procedure TFM_BillEditPurInWarehsReturn.cdsDetailAmountBeforePost(
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

procedure TFM_BillEditPurInWarehsReturn.cxbtnNUmberPropertiesChange(
  Sender: TObject);
begin
  inherited;
  girdList.hint :='FSUPPLIERID';
  HeadAutoSelIDchange(cdsSupplier,'');
end;

procedure TFM_BillEditPurInWarehsReturn.cdsDetailAmountFtaxrateChange(
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

procedure TFM_BillEditPurInWarehsReturn.btn_PackingListClick(
  Sender: TObject);
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

procedure TFM_BillEditPurInWarehsReturn.cdsMasterCFInWAREHOUSEIDChange(
  Sender: TField);
begin
  inherited;
  FOutWarehouseFID := Sender.AsString;
end;

procedure TFM_BillEditPurInWarehsReturn.cdsDetailAmountAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  ///
end;
procedure TFM_BillEditPurInWarehsReturn.AddDetailRecord;
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
      fieldbyname('FQTY').AsInteger := -1*cdsDetailAmount.fieldbyname('fAmount_'+inttostr(CliDM.cdsTmp.fieldbyname('fseq').AsInteger)).AsInteger;
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
end.
