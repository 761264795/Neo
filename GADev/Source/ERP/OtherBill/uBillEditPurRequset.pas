unit uBillEditPurRequset;

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
  TFM_BillEditPurRequest = class(TFM_BillEditBase)
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
    cdsMasterFCOMPANYORGUNITID: TWideStringField;
    cdsMasterFTOTALAMOUNT: TFloatField;
    cdsMasterFLOCALTOTALAMOUNT: TFloatField;
    cdsMasterFBIZTYPEID: TWideStringField;
    cdsMasterFBILLTYPEID: TWideStringField;
    cdsMasterFYEAR: TFloatField;
    cdsMasterFPERIOD: TFloatField;
    cdsMasterFSOURCEBILLTYPEID: TWideStringField;
    cdsMasterFPERSONID: TWideStringField;
    cdsMasterFMODIFIERID: TWideStringField;
    cdsMasterFMODIFICATIONTIME: TDateTimeField;
    cdsMasterFISURGENT: TFloatField;
    cdsMasterFISMERGEBILL: TFloatField;
    cdsMasterFPURCHASETYPE: TFloatField;
    cdsMasterFISAPPROVEDSUPPLIER: TFloatField;
    cdsMasterFADMINORGUNITID: TWideStringField;
    cdsMasterCFSUBBILLTYPE: TWideStringField;
    cdsMasterFINVQTY: TFloatField;
    cdsMasterFENTRYHASATTACHMENT: TFloatField;
    cdsMasterCFINPUTWAY: TWideStringField;
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
    cdsDetailFPARENTID: TWideStringField;
    cdsDetailFSUPPLIERID: TWideStringField;
    cdsDetailFCURRENCYID: TWideStringField;
    cdsDetailFEXCHANGERATE: TFloatField;
    cdsDetailFPURCHASEORGUNITID: TWideStringField;
    cdsDetailFMATERIALBASECLASS: TWideStringField;
    cdsDetailFREQUIREMENTDATE: TDateTimeField;
    cdsDetailFPROPOSEDELIVERYDATE: TDateTimeField;
    cdsDetailFPROPOSEPURCHASEDATE: TDateTimeField;
    cdsDetailFPURPOSE: TWideStringField;
    cdsDetailFPRICE: TFloatField;
    cdsDetailFQTY: TFloatField;
    cdsDetailFASSISTQTY: TFloatField;
    cdsDetailFAMOUNT: TFloatField;
    cdsDetailFLOCALAMOUNT: TFloatField;
    cdsDetailFORDEREDQTY: TFloatField;
    cdsDetailFUNORDEREDQTY: TFloatField;
    cdsDetailFTRACKNUMBER: TWideStringField;
    cdsDetailFBASEQTY: TFloatField;
    cdsDetailFORDEREDBASEQTY: TFloatField;
    cdsDetailFUNORDEREDBASEQTY: TFloatField;
    cdsDetailFREASON: TWideStringField;
    cdsDetailFMERGEBILLNUMBER: TWideStringField;
    cdsDetailFUSEADMINORGUNITID: TWideStringField;
    cdsDetailFROWTYPEID: TWideStringField;
    cdsDetailFRECEIVEDORGUNITID: TWideStringField;
    cdsDetailFDESTINATIONTYPE: TWideStringField;
    cdsDetailFWAREHOSUEID: TWideStringField;
    cdsDetailFDELIVERYADDRESS: TWideStringField;
    cdsDetailFSTORAGEORGUNITID: TWideStringField;
    cdsDetailFADMINORGUNITID: TWideStringField;
    cdsDetailFSOURCETYPE: TWideStringField;
    cdsDetailFSOURCESTORAGEORGUNITID: TWideStringField;
    cdsDetailFSOURCEWAREHOUSEID: TWideStringField;
    cdsDetailFMATERIALNAME: TWideStringField;
    cdsDetailFMERGEBILLSEQ: TFloatField;
    cdsDetailFPURCHASEPERSONID: TWideStringField;
    cdsDetailFISQUANTITYUNCTRL: TFloatField;
    cdsDetailFPROCESSREQUIREMENT: TWideStringField;
    cdsDetailFOPERATIONNO: TWideStringField;
    cdsDetailFPLANORDERNUMBER: TWideStringField;
    cdsDetailFSALEORDERNUMBER: TWideStringField;
    cdsDetailFMATERIALGROUPID: TWideStringField;
    cdsDetailFDOSINGTYPE: TFloatField;
    cdsDetailFBOMID: TWideStringField;
    cdsDetailFQUOTATIONTIMES: TFloatField;
    cdsDetailFTOTALREQQTY: TFloatField;
    cdsDetailFTOTALREQUQTY: TFloatField;
    cdsDetailFUNTOTALREQQTY: TFloatField;
    cdsDetailFREQUESTQTY: TFloatField;
    cdsDetailFNONUMMATERIALMODEL: TWideStringField;
    cdsDetailFPURCHASEGROUPID: TWideStringField;
    cdsDetailFPROJECTID: TWideStringField;
    cdsDetailFTRACKNOID: TWideStringField;
    cdsDetailFPURCONTRACTID: TWideStringField;
    cdsDetailCFPACKID: TWideStringField;
    cdsDetailCFCOLORID: TWideStringField;
    cdsDetailCFPACKNUM: TFloatField;
    cdsDetailCFSIZESID: TWideStringField;
    cdsDetailCFCUPID: TWideStringField;
    cdsDetailCFSIZEGROUPID: TWideStringField;
    cdsDetailCFDIAOPRICE: TFloatField;
    cdsDetailCFDISCOUNT: TFloatField;
    cdsDetailAmountCFSIZEGROUPID: TWideStringField;
    cdsDetailAmountcfMaterialNumber: TStringField;
    cdsDetailAmountcfMaterialName: TStringField;
    cdsDetailAmountCFColorName: TStringField;
    cdsDetailAmountCFCupName: TStringField;
    cdsDetailAmountCFPackName2: TStringField;
    cdsDetailAmountCFPACKNUM2: TFloatField;
    cdsDetailAmountFMATERIALID2: TWideStringField;
    cdsDetailAmountCFCOLORID: TWideStringField;
    cdsDetailAmountCFCUPID: TWideStringField;
    cdsDetailAmountCFDPPRICE: TFloatField;
    cdsDetailAmountCFPACKID2: TStringField;
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
    cdsDetailAmountCFColorCode2: TStringField;
    cdsDetailAmountCFBrandName2: TWideStringField;
    cdsDetailAmountcfattributeName2: TWideStringField;
    cdsDetailAmountCfbrandid2: TWideStringField;
    cdsDetailAmountcfattributeid2: TWideStringField;
    cdsDetailAmountFTotalQty: TFloatField;
    cdsDetailAmountFAmount: TFloatField;
    cdsDetailCFDPPRICE: TFloatField;
    cdsDetailFACTUALPRICE: TFloatField;
    cdsMasterCFISPROCDUCT: TIntegerField;
    cdsDetailAmountCFSupplierName: TWideStringField;
    cdsDetailAmountFSUPPLIERID: TWideStringField;
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
    dbgList2FACTUALPRICE: TcxGridDBColumn;
    dbgList2CFSupplierName: TcxGridDBColumn;
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
    dbgList2CFBrandName: TcxGridDBColumn;
    dbgList2cfattributeName: TcxGridDBColumn;
    dbgList2FTotalQty: TcxGridDBColumn;
    dbgList2FAmount: TcxGridDBColumn;
    cdsMasterCFWAREHOUSEID: TWideStringField;
    cdsMasterCFWareName: TStringField;
    cxLabel7: TcxLabel;
    cxbtnReceivWareNum: TcxButtonEdit;
    cxbtnReceivWareName: TcxDBTextEdit;
    cdsMasterCFApplierName: TStringField;
    cdswarehouse: TClientDataSet;
    cdsMasterCFPURRECTYPEID: TWideStringField;
    cdsDetailAmountFBASEUNITID: TWideStringField;
    cdsDetailAmountCFNUitName: TWideStringField;
    cdsDetailAmountfremark: TWideStringField;
    dbgList2CFNUitName: TcxGridDBColumn;
    dbgList2fremark: TcxGridDBColumn;
    cdsPerSon: TClientDataSet;
    cdsMasterCFModifierName: TStringField;
    cdsMasterFCreatorName: TStringField;
    cdsMasterFAuditorName: TStringField;
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
    cdsDetailTracyFPARENTID: TWideStringField;
    cdsDetailTracyFSUPPLIERID: TWideStringField;
    cdsDetailTracyFCURRENCYID: TWideStringField;
    cdsDetailTracyFEXCHANGERATE: TFloatField;
    cdsDetailTracyFPURCHASEORGUNITID: TWideStringField;
    cdsDetailTracyFMATERIALBASECLASS: TWideStringField;
    cdsDetailTracyFREQUIREMENTDATE: TDateTimeField;
    cdsDetailTracyFPROPOSEDELIVERYDATE: TDateTimeField;
    cdsDetailTracyFPROPOSEPURCHASEDATE: TDateTimeField;
    cdsDetailTracyFPURPOSE: TWideStringField;
    cdsDetailTracyFPRICE: TFloatField;
    cdsDetailTracyFQTY: TFloatField;
    cdsDetailTracyFASSISTQTY: TFloatField;
    cdsDetailTracyFAMOUNT: TFloatField;
    cdsDetailTracyFLOCALAMOUNT: TFloatField;
    cdsDetailTracyFORDEREDQTY: TFloatField;
    cdsDetailTracyFUNORDEREDQTY: TFloatField;
    cdsDetailTracyFTRACKNUMBER: TWideStringField;
    cdsDetailTracyFBASEQTY: TFloatField;
    cdsDetailTracyFORDEREDBASEQTY: TFloatField;
    cdsDetailTracyFUNORDEREDBASEQTY: TFloatField;
    cdsDetailTracyFREASON: TWideStringField;
    cdsDetailTracyFMERGEBILLNUMBER: TWideStringField;
    cdsDetailTracyFUSEADMINORGUNITID: TWideStringField;
    cdsDetailTracyFROWTYPEID: TWideStringField;
    cdsDetailTracyFRECEIVEDORGUNITID: TWideStringField;
    cdsDetailTracyFDESTINATIONTYPE: TWideStringField;
    cdsDetailTracyFWAREHOSUEID: TWideStringField;
    cdsDetailTracyFDELIVERYADDRESS: TWideStringField;
    cdsDetailTracyFSTORAGEORGUNITID: TWideStringField;
    cdsDetailTracyFADMINORGUNITID: TWideStringField;
    cdsDetailTracyFSOURCETYPE: TWideStringField;
    cdsDetailTracyFSOURCESTORAGEORGUNITID: TWideStringField;
    cdsDetailTracyFSOURCEWAREHOUSEID: TWideStringField;
    cdsDetailTracyFMATERIALNAME: TWideStringField;
    cdsDetailTracyFMERGEBILLSEQ: TFloatField;
    cdsDetailTracyFPURCHASEPERSONID: TWideStringField;
    cdsDetailTracyFISQUANTITYUNCTRL: TFloatField;
    cdsDetailTracyFPROCESSREQUIREMENT: TWideStringField;
    cdsDetailTracyFOPERATIONNO: TWideStringField;
    cdsDetailTracyFPLANORDERNUMBER: TWideStringField;
    cdsDetailTracyFSALEORDERNUMBER: TWideStringField;
    cdsDetailTracyFMATERIALGROUPID: TWideStringField;
    cdsDetailTracyFDOSINGTYPE: TFloatField;
    cdsDetailTracyFBOMID: TWideStringField;
    cdsDetailTracyFQUOTATIONTIMES: TFloatField;
    cdsDetailTracyFTOTALREQQTY: TFloatField;
    cdsDetailTracyFTOTALREQUQTY: TFloatField;
    cdsDetailTracyFUNTOTALREQQTY: TFloatField;
    cdsDetailTracyFREQUESTQTY: TFloatField;
    cdsDetailTracyFNONUMMATERIALMODEL: TWideStringField;
    cdsDetailTracyFPURCHASEGROUPID: TWideStringField;
    cdsDetailTracyFPROJECTID: TWideStringField;
    cdsDetailTracyFTRACKNOID: TWideStringField;
    cdsDetailTracyFPURCONTRACTID: TWideStringField;
    cdsDetailTracyCFPACKID: TWideStringField;
    cdsDetailTracyCFCOLORID: TWideStringField;
    cdsDetailTracyCFPACKNUM: TFloatField;
    cdsDetailTracyCFSIZESID: TWideStringField;
    cdsDetailTracyCFCUPID: TWideStringField;
    cdsDetailTracyCFSIZEGROUPID: TWideStringField;
    cdsDetailTracyCFDIAOPRICE: TFloatField;
    cdsDetailTracyCFDISCOUNT: TFloatField;
    cdsDetailTracyCFDPPRICE: TFloatField;
    cdsDetailTracyFACTUALPRICE: TFloatField;
    cdsDetailTracycfMaterialNumber: TStringField;
    cdsDetailTracycfMaterialName: TStringField;
    cdsDetailTracyCFColorCode: TStringField;
    cdsDetailTracyCFColorName: TStringField;
    cdsDetailTracyCFCupName: TStringField;
    cdsDetailTracyCFPackName: TStringField;
    cdsDetailTracyCFSupplierName: TWideStringField;
    cdsDetailTracyCFBrandName: TWideStringField;
    cdsDetailTracycfattributeName: TWideStringField;
    cdsDetailTracyCfbrandid: TWideStringField;
    cdsDetailTracycfattributeid: TWideStringField;
    cdsDetailTracyCFNUitName: TWideStringField;
    cxgridDetialFSEQ: TcxGridDBColumn;
    cxgridDetialFREMARK: TcxGridDBColumn;
    cxgridDetialFPRICE: TcxGridDBColumn;
    cxgridDetialFQTY: TcxGridDBColumn;
    cxgridDetialFAMOUNT: TcxGridDBColumn;
    cxgridDetialCFPACKNUM: TcxGridDBColumn;
    cxgridDetialCFDISCOUNT: TcxGridDBColumn;
    cxgridDetialCFDPPRICE: TcxGridDBColumn;
    cxgridDetialFACTUALPRICE: TcxGridDBColumn;
    cxgridDetialcfMaterialNumber: TcxGridDBColumn;
    cxgridDetialcfMaterialName: TcxGridDBColumn;
    cxgridDetialCFColorCode: TcxGridDBColumn;
    cxgridDetialCFColorName: TcxGridDBColumn;
    cxgridDetialCFCupName: TcxGridDBColumn;
    cxgridDetialCFPackName: TcxGridDBColumn;
    cxgridDetialCFSupplierName: TcxGridDBColumn;
    cxgridDetialCFBrandName: TcxGridDBColumn;
    cxgridDetialcfattributeName: TcxGridDBColumn;
    cxgridDetialCFNUitName: TcxGridDBColumn;
    cxgridDetialCFSizeCode: TcxGridDBColumn;
    cxgridDetialCFSizeName: TcxGridDBColumn;
    cdsDetailTracyCFSizeCode: TWideStringField;
    cdsDetailTracyCFSizeName: TWideStringField;
    cdsDetailAmountCFDISCOUNT: TFloatField;
    cdstracyFID: TWideStringField;
    cdstracyFSEQ: TFloatField;
    cdstracyFMATERIALID: TWideStringField;
    cdstracyFBASEUNITID: TWideStringField;
    cdstracyFREMARK: TWideStringField;
    cdstracyFPARENTID: TWideStringField;
    cdstracyFSUPPLIERID: TWideStringField;
    cdstracyFPRICE: TFloatField;
    cdstracyFQTY: TFloatField;
    cdstracyFAMOUNT: TFloatField;
    cdstracyFWAREHOSUEID: TWideStringField;
    cdstracyCFPACKID: TWideStringField;
    cdstracyCFCOLORID: TWideStringField;
    cdstracyCFPACKNUM: TFloatField;
    cdstracyCFSIZESID: TWideStringField;
    cdstracyCFCUPID: TWideStringField;
    cdstracyCFSIZEGROUPID: TWideStringField;
    cdstracyCFDISCOUNT: TFloatField;
    cdstracyCFDPPRICE: TFloatField;
    cdstracyFACTUALPRICE: TFloatField;
    procedure cdsDetailNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure btnEnter(Sender: TObject);
    procedure btnExit(Sender: TObject);
    procedure btnKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxbtnNUmberPropertiesChange(Sender: TObject);
    procedure cxbtnReceivWareNumPropertiesChange(Sender: TObject);
    procedure cdsMasterCalcFields(DataSet: TDataSet);
    procedure cxbtnReceivWareNumPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormShow(Sender: TObject);
    procedure dbgList2cfMaterialNumberPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure dbgList2CFColorCodePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure dbgList2CFCupNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure dbgList2CFPackNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxbtnNUmberPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxdblookupInputwayPropertiesCloseUp(Sender: TObject);
    procedure cdsDetailAmountCFDISCOUNTChange(Sender: TField);
    procedure cdsDetailCFPACKIDChange(Sender: TField);
    procedure cdsDetailAmountCFPACKNUM2Change(Sender: TField);
    procedure dbgList2CFSupplierNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cdsDetailAmountFACTUALPRICE2Change(Sender: TField);
    procedure cxPageDetailChange(Sender: TObject);
    procedure cdsMasterCFWAREHOUSEIDChange(Sender: TField);
    procedure cdsDetailAmountAfterPost(DataSet: TDataSet);
    procedure cdsDetailAmountBeforeEdit(DataSet: TDataSet);
  private
    { Private declarations }
    strSupplierID : string;
    procedure calAmt(DataSet: TDataSet);override;//计算金额
  public
    { Public declarations }
    procedure Open_Bill(KeyFields: String; KeyValues: String); override;
        //保存单据
    function ST_Save : Boolean; override;
     procedure AddDetailRecord;override;
  end;

var
  FM_BillEditPurRequest: TFM_BillEditPurRequest;

implementation

uses FrmCliDM,Pub_Fun,uMaterDataSelectHelper;

{$R *.dfm}
procedure TFM_BillEditPurRequest.Open_Bill(KeyFields: String; KeyValues: String);
var OpenTables: array[0..1] of string;
    _cds: array[0..1] of TClientDataSet;
    ErrMsg,FBIZTYPEID,strsql : string;
begin
  if Trim(KeyValues)='' then
    strsql := ' select * from t_Sm_Purrequest where 1<>1 '
  else
    strsql := ' select * from t_Sm_Purrequest where FID='+quotedstr(KeyValues);
  OpenTables[0] := strsql;
  if Trim(KeyValues)='' then
    strsql := ' select * from t_Sm_Purrequestentry where 1<>1 '
  else
    strsql := ' select * from t_Sm_Purrequestentry where FparentID='+quotedstr(KeyValues);
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
      FieldByName('FID').AsString := CliDM.GetEASSID('25428F2E');      //
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
      FieldByName('FCompanyOrgUnitID').AsString := UserInfo.Branch_ID;
      FieldByName('FBillTypeID').AsString := BillConst.BILLTYPE_PA;
      FieldByName('CFISPROCDUCT').AsFloat := 0;
      FieldByName('CFINPUTWAY').AsString :=  'NOTPACK';
      FieldByName('FPurchaseType').AsFloat := 0;
    end;
  end;
  inherited;

end;
function TFM_BillEditPurRequest.ST_Save : Boolean;
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
    if CliDM.Apply_Delta_Ex(_cds,['t_Sm_Purrequest','t_Sm_Purrequestentry'],ErrMsg) then
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
procedure TFM_BillEditPurRequest.cdsDetailNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FID').AsString := CliDM.GetEASSID('2B7DD5E4');
  DataSet.FieldByName('FStorageOrgUnitID').AsString := UserInfo.Branch_ID;
  DataSet.FieldByName('FReceivedOrgUnitID').AsString := UserInfo.Branch_ID;
  DataSet.FieldByName('FPurchaseOrgUnitID').AsString := UserInfo.Branch_ID;
  DataSet.FieldByName('FWAREHOSUEID').AsString := cdsMaster.fieldbyname('CFWAREHOUSEID').AsString;
  DataSet.FieldByName('FCurrencyID').AsString := BillConst.FCurrency;
  DataSet.FieldByName('FExchangeRate').AsInteger := 1;
  DataSet.FieldByName('Fbasestatus').AsInteger :=1;
  DataSet.FieldByName('FparentID').AsString := cdsMaster.fieldbyname('FID').AsString;
  
end;

procedure TFM_BillEditPurRequest.FormCreate(Sender: TObject);
begin
  sBillTypeID := BillConst.BILLTYPE_PA;  //单据类型FID
  inherited;
  sKeyFields := 'FmaterialID;CFColorID;CFCupID;CFpackID;FSUPPLIERID';
  Self.Bill_Sign := 't_Sm_Purrequest';
  Self.BillEntryTable := 't_Sm_Purrequestentry';
  //sBillTypeID := BillConst.BILLTYPE_PI;  //单据类型FID
  cdswarehouse.Data := CliDM.cdsWarehouse.Data;//仓库
  cdsPerSon.Data := CliDM.cdsPerson.Data;
end;

procedure TFM_BillEditPurRequest.btnEnter(Sender: TObject);
begin
  inherited;
//
end;

procedure TFM_BillEditPurRequest.btnExit(Sender: TObject);
begin
  inherited;
  //
end;

procedure TFM_BillEditPurRequest.btnKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  //
end;

procedure TFM_BillEditPurRequest.cxbtnNUmberPropertiesChange(
  Sender: TObject);
begin
  inherited;
  girdList.hint :='FPERSONID';
  HeadAutoSelIDchange(cdsPerSon,'');
end;

procedure TFM_BillEditPurRequest.cxbtnReceivWareNumPropertiesChange(
  Sender: TObject);
begin
  inherited;
  girdList.hint :='CFWAREHOUSEID';
  HeadAutoSelIDchange(cdswarehouse,'');
end;

procedure TFM_BillEditPurRequest.cdsMasterCalcFields(DataSet: TDataSet);
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
    if DataSet.FindField('CFApplierName')<> nil then
    begin
      if FindRecord1(CliDM.cdsPerSon,'FID',DataSet.fieldbyname('FPERSONID').AsString,1) then
      begin
        DataSet.FieldByName('CFApplierName').AsString := CliDM.cdsPerSon.fieldbyname('Fname_l2').AsString;
        cxbtnNUmber.Text := CliDM.cdsPerSon.fieldbyname('Fnumber').AsString;
      end;
    end;
    if DataSet.FindField('CFWareName')<> nil then
    begin
      if FindRecord1(CliDM.cdswarehouse,'FID',DataSet.fieldbyname('CFWAREHOUSEID').AsString,1) then
      begin
        DataSet.FieldByName('CFWareName').AsString := CliDM.cdswarehouse.fieldbyname('Fname_l2').AsString;
        cxbtnReceivWareNum.Text := CliDM.cdswarehouse.fieldbyname('Fnumber').AsString;
      end;
    end;
  finally
    if tmpbtnEdit <> nil then
      tmpbtnEdit.Properties.OnChange := event;
  end;
end;

procedure TFM_BillEditPurRequest.cxbtnReceivWareNumPropertiesButtonClick(
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
          cdsMaster.FieldByName('CFWAREHOUSEID').AsString := fieldbyname('fid').AsString;
      end;
    end;
  finally
    cxbtnReceivWareNum.Properties.OnChange := ChangEvent;
  end;
end;

procedure TFM_BillEditPurRequest.FormShow(Sender: TObject);
begin
  inherited;
  sIniBillFlag := 'PA';
  sSPPack := 'SCM';
end;

procedure TFM_BillEditPurRequest.dbgList2cfMaterialNumberPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  FindMaterial;
end;

procedure TFM_BillEditPurRequest.dbgList2CFColorCodePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  FindColor;
end;

procedure TFM_BillEditPurRequest.dbgList2CFCupNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  FindCup;
end;

procedure TFM_BillEditPurRequest.dbgList2CFPackNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  FindPack;
end;

procedure TFM_BillEditPurRequest.cxbtnNUmberPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
  var
    ChangEvent : TNotifyEvent;
begin
  inherited;
  if not  cdsMaster.Active then Exit;
  try
    ChangEvent := cxbtnNUmber.Properties.OnChange;
    cxbtnNUmber.Properties.OnChange := nil;
    with Select_BaseData('t_Bd_Person','人员','','') do
    begin
      if not IsEmpty then
      begin
        if not (cdsMaster.State in DB.dsEditModes) then cdsMaster.Edit;
          cdsMaster.FieldByName('FPERSONID').AsString := fieldbyname('fid').AsString;
      end;
    end;
  finally
    cxbtnNUmber.Properties.OnChange :=  ChangEvent;
  end;

end;

procedure TFM_BillEditPurRequest.cxdblookupInputwayPropertiesCloseUp(
  Sender: TObject);
begin
  inherited;
  ///

end;

procedure TFM_BillEditPurRequest.cdsDetailAmountCFDISCOUNTChange(
  Sender: TField);
var
    Event : TFieldNotifyEvent;
begin
  inherited;
  try
    Event := Sender.OnChange;
    Sender.OnChange := nil;
    Sender.DataSet.FieldByName('FACTUALPRICE').AsFloat :=CliDM.SimpleRoundTo( Sender.AsFloat/100*Sender.DataSet.FieldByName('FPRICE').AsFloat);
  finally
    Sender.OnChange := Event;
  end;
end;

procedure TFM_BillEditPurRequest.cdsDetailCFPACKIDChange(Sender: TField);
begin
  inherited;
  if cdsDetailAmount.FieldByName('CFPackNum').AsInteger>0 then
    PackNumChang(cdsDetailAmount,cdsDetailAmount.FieldByName('CFSIZEGROUPID').AsString,cdsDetailAmount.fieldbyname('CFPackID').AsString);

end;

procedure TFM_BillEditPurRequest.cdsDetailAmountCFPACKNUM2Change(
  Sender: TField);
begin
  inherited;
  if cdsDetailAmount.FieldByName('CFPackNum').AsInteger>0 then
    PackNumChang(cdsDetailAmount,cdsDetailAmount.FieldByName('CFSIZEGROUPID').AsString,cdsDetailAmount.fieldbyname('CFPackID').AsString);

end;

procedure TFM_BillEditPurRequest.dbgList2CFSupplierNamePropertiesButtonClick(
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
        if not (cdsDetailAmount.State in db.dsEditModes ) then cdsDetailAmount.Edit;
        cdsDetailAmount.FieldByName('FSUPPLIERID').AsString := fieldbyname('fid').AsString;
        cdsDetailAmount.FieldByName('CFSupplierName').AsString := fieldbyname('Fname_l2').AsString;
      end;
    end;
  finally
    TcxButtonEdit(Sender).Properties.OnChange := ChangEvent;
  end;
  
end;

procedure TFM_BillEditPurRequest.cdsDetailAmountFACTUALPRICE2Change(
  Sender: TField);
  var
    Event : TFieldNotifyEvent;
begin
  inherited;
  try
    Event := Sender.DataSet.fieldbyname('CFDISCOUNT').OnChange;
    Sender.DataSet.fieldbyname('CFDISCOUNT').OnChange := nil;
    if Sender.DataSet.FieldByName('FPRICE').AsFloat<>0 then
      Sender.DataSet.FieldByName('CFDISCOUNT').AsFloat :=CliDM.SimpleRoundTo(Sender.DataSet.FieldByName('FACTUALPRICE').AsFloat/Sender.DataSet.FieldByName('FPRICE').AsFloat*100);
  finally
    Sender.DataSet.fieldbyname('CFDISCOUNT').OnChange:= Event;
  end;

end;

procedure TFM_BillEditPurRequest.cxPageDetailChange(Sender: TObject);
begin
  inherited;
  if cxPageDetail.ActivePage=cxTabTractDetail  then
  begin
    cdstracy.Data := cdsDetail.Data;
    OpenTracyDetail('');
  end;
end;
procedure TFM_BillEditPurRequest.calAmt(DataSet: TDataSet);//计算金额
begin
  DataSet.FieldByName('FAMOUNT').AsFloat := CliDM.SimpleRoundTo(DataSet.fieldbyname('Fqty').AsFloat*DataSet.fieldbyname('FACTUALPRICE').AsFloat ) ;
  DataSet.FieldByName('FLOCALAMOUNT').AsFloat := CliDM.SimpleRoundTo(DataSet.fieldbyname('Fqty').AsFloat*DataSet.fieldbyname('FACTUALPRICE').AsFloat ) ;
end;
procedure TFM_BillEditPurRequest.cdsMasterCFWAREHOUSEIDChange(
  Sender: TField);
begin
  inherited;
  FOutWarehouseFID := Sender.AsString;
end;
procedure TFM_BillEditPurRequest.AddDetailRecord;
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
      if (cdsDetail.Locate('CFColorID;CFCUPID;CFPackID;CFSizesID;CFSIZEGroupID;FMaterialID;FSUPPLIERID;fParentID',VarArrayOf([
      cdsDetailAmount.fieldbyname('CFColorID').AsString,cdsDetailAmount.fieldbyname('CFCUPID').AsString,cdsDetailAmount.fieldbyname('CFPackID').AsString,
      CliDM.cdsTmp.fieldbyname('Cfsizeid').AsString,cdsDetailAmount.fieldbyname('CFSIZEGroupID').AsString,cdsDetailAmount.fieldbyname('FMaterialID').AsString,cdsDetailAmount.fieldbyname('FSUPPLIERID').AsString,BillIDValue]), []))
      or (cdsDetail.Locate('CFColorID;CFCUPID;CFPackID;CFSizesID;CFSIZEGroupID;FMaterialID;FSUPPLIERID;fParentID',VarArrayOf([
      strColorID,StrCupID,StrpackID,
      CliDM.cdsTmp.fieldbyname('Cfsizeid').AsString,cdsDetailAmount.fieldbyname('CFSIZEGroupID').AsString,strMatID,strSupplierID,BillIDValue]), [])) then
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
      fieldbyname('FSUPPLIERID').AsString := cdsDetailAmount.FieldByName('FSUPPLIERID').AsString ;

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
procedure TFM_BillEditPurRequest.cdsDetailAmountAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  ///
end;

procedure TFM_BillEditPurRequest.cdsDetailAmountBeforeEdit(
  DataSet: TDataSet);
begin
  inherited;
  strSupplierID := DataSet.Fieldbyname('FSUPPLIERID').AsString;
  strMatID := DataSet.Fieldbyname('FMaterialID').AsString;
  strColorID := DataSet.Fieldbyname('CFColorID').AsString;
  StrCupID := DataSet.Fieldbyname('CFCupID').AsString;
  StrPackID := DataSet.Fieldbyname('CFPackID').AsString;
end;

end.
