unit uBillEditPostReq;

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
  TFM_BillEditPostReq = class(TFM_BillEditBase)
    cxLabel4: TcxLabel;
    cxcmbSaleType: TcxDBLookupComboBox;
    cxLabel2: TcxLabel;
    cxcmbOrderType: TcxDBLookupComboBox;
    cxLabel3: TcxLabel;
    cxcmbpriceType: TcxDBLookupComboBox;
    cxLabel5: TcxLabel;
    cxbtnSO: TcxButtonEdit;
    cxLabel6: TcxLabel;
    cxcmbSendType: TcxDBLookupComboBox;
    dsSaleType: TDataSource;
    cxLabel7: TcxLabel;
    cxbtnSendWareNum: TcxButtonEdit;
    cxbtnSendWareName: TcxDBTextEdit;
    cxLabel8: TcxLabel;
    cxbtnReceivWareNum: TcxButtonEdit;
    cxbtnReceivWareName: TcxDBTextEdit;
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
    dsOrdertype: TDataSource;
    dsPriceType: TDataSource;
    dsShipType: TDataSource;
    cdsMasterCFCustName: TStringField;
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
    cdsDetailFPARENTID: TWideStringField;
    cdsDetailFDELIVERYDATE: TDateTimeField;
    cdsDetailFDELIVERYADDRESS: TWideStringField;
    cdsDetailFTRANSLEADTIME: TFloatField;
    cdsDetailFISPRESENT: TFloatField;
    cdsDetailFCUSTPURNUMBER: TWideStringField;
    cdsDetailFQTY: TFloatField;
    cdsDetailFASSISTQTY: TFloatField;
    cdsDetailFSHIPPEDQTY: TFloatField;
    cdsDetailFUNSHIPPEDQTY: TFloatField;
    cdsDetailFPRICE: TFloatField;
    cdsDetailFORDERCUSTOMERID: TWideStringField;
    cdsDetailFSALEPERSONID: TWideStringField;
    cdsDetailFAMOUNT: TFloatField;
    cdsDetailFDELIVERYTYPEID: TWideStringField;
    cdsDetailFSALEGROUPID: TWideStringField;
    cdsDetailFADMINORGUNITID: TWideStringField;
    cdsDetailFSENDDATE: TDateTimeField;
    cdsDetailFWAREHOUSEID: TWideStringField;
    cdsDetailFSALEORDERID: TWideStringField;
    cdsDetailFSALEORDERENTRYID: TWideStringField;
    cdsDetailFSALEORDERNUMBER: TWideStringField;
    cdsDetailFSALEORDERENTRYSEQ: TFloatField;
    cdsDetailFBASEQTY: TFloatField;
    cdsDetailFSHIPPEDBASEQTY: TFloatField;
    cdsDetailFLOCALAMOUNT: TFloatField;
    cdsDetailFREASON: TWideStringField;
    cdsDetailFTOTALREVERSEDQTY: TFloatField;
    cdsDetailFTOTALREVERSEDBASEQTY: TFloatField;
    cdsDetailFSTOCKTRANSFERBILLID: TWideStringField;
    cdsDetailFSTOCKTRANSFERBILLENTRYID: TWideStringField;
    cdsDetailFSTOCKTRANSFERBILLNUMBER: TWideStringField;
    cdsDetailFSTOCKTRANSFERBILLENTRYSEQ: TFloatField;
    cdsDetailFLOCATIONID: TWideStringField;
    cdsDetailFLOT: TWideStringField;
    cdsDetailFPLANDELIVERYQTY: TFloatField;
    cdsDetailFDELIVERYCUSTOMERID: TWideStringField;
    cdsDetailFRECEIVECUSTOMERID: TWideStringField;
    cdsDetailFPAYMENTCUSTOMERID: TWideStringField;
    cdsDetailFSOURCEBILLID: TWideStringField;
    cdsDetailFSOURCEBILLENTRYID: TWideStringField;
    cdsDetailFNETORDERBILLNUMBER: TWideStringField;
    cdsDetailFNETORDERBILLID: TWideStringField;
    cdsDetailFNETORDERBILLENTRYID: TWideStringField;
    cdsDetailFPROJECTID: TWideStringField;
    cdsDetailFTRACKNUMBERID: TWideStringField;
    cdsDetailCFCUPID: TWideStringField;
    cdsDetailCFMUTILSOURCEBILL: TWideStringField;
    cdsDetailCFPACKID: TWideStringField;
    cdsDetailCFSIZESID: TWideStringField;
    cdsDetailCFCOLORID: TWideStringField;
    cdsDetailCFPACKNUM: TFloatField;
    cdsDetailCFSIZEGROUPID: TWideStringField;
    cdsDetailCFUNITPRICE: TFloatField;
    cdsDetailCFDISCOUNT: TFloatField;
    cdsDetailCFCANCELQTY: TFloatField;
    cdsDetailCFSTOPNUM: TFloatField;
    cdsDetailCFISPURIN: TFloatField;
    cdsDetailCFPURINQTY: TFloatField;
    cdsDetailFACTUALPRICE: TFloatField;
    cdsDetailCFDPPRICE: TFloatField;
    cdsMasterFID: TWideStringField;
    cdsMasterWideStringField2: TWideStringField;
    cdsMasterWideStringField3: TWideStringField;
    cdsMasterDateTimeField: TDateTimeField;
    cdsMasterWideStringField4: TWideStringField;
    cdsMasterDateTimeField2: TDateTimeField;
    cdsMasterWideStringField5: TWideStringField;
    cdsMasterDateTimeField3: TDateTimeField;
    cdsMasterWideStringField6: TWideStringField;
    cdsMasterWideStringField7: TWideStringField;
    cdsMasterFloatField: TFloatField;
    cdsMasterWideStringField8: TWideStringField;
    cdsMasterWideStringField9: TWideStringField;
    cdsMasterWideStringField10: TWideStringField;
    cdsMasterDateTimeField4: TDateTimeField;
    cdsMasterFloatField2: TFloatField;
    cdsMasterWideStringField11: TWideStringField;
    cdsMasterWideStringField12: TWideStringField;
    cdsMasterWideStringField13: TWideStringField;
    cdsMasterWideStringField14: TWideStringField;
    cdsMasterWideStringField15: TWideStringField;
    cdsMasterWideStringField16: TWideStringField;
    cdsMasterFloatField3: TFloatField;
    cdsMasterFloatField4: TFloatField;
    cdsMasterDateTimeField5: TDateTimeField;
    cdsMasterWideStringField17: TWideStringField;
    cdsMasterWideStringField18: TWideStringField;
    cdsMasterWideStringField19: TWideStringField;
    cdsMasterFloatField5: TFloatField;
    cdsMasterFloatField6: TFloatField;
    cdsMasterFloatField7: TFloatField;
    cdsMasterWideStringField20: TWideStringField;
    cdsMasterWideStringField21: TWideStringField;
    cdsMasterWideStringField22: TWideStringField;
    cdsMasterWideStringField23: TWideStringField;
    cdsMasterWideStringField24: TWideStringField;
    cdsMasterWideStringField25: TWideStringField;
    cdsMasterWideStringField26: TWideStringField;
    cdsMasterWideStringField27: TWideStringField;
    cdsMasterWideStringField28: TWideStringField;
    cdsMasterWideStringField29: TWideStringField;
    cdsMasterWideStringField30: TWideStringField;
    cdsMasterWideStringField31: TWideStringField;
    cdsMasterWideStringField32: TWideStringField;
    cdsMasterCFReceivWareName: TStringField;
    cdsMasterCFSendWareName: TStringField;
    cdsDetailAmountFLOCATIONID: TWideStringField;
    cdsDetailAmountCFLocName: TWideStringField;
    dbgList2CFLocName: TcxGridDBColumn;
    cdsCustomer: TClientDataSet;
    cdswarehouse: TClientDataSet;
    cdsDetailAmountFISPRESENT: TFloatField;
    dbgList2FISPRESENT: TcxGridDBColumn;
    cdsMasterFCreatorName: TStringField;
    cdsMasterCFModifierName: TStringField;
    cdsMasterFAuditorName: TStringField;
    cdsDetailTracyFID: TWideStringField;
    cdsDetailTracyFSEQ: TFloatField;
    cdsDetailTracyFMATERIALID: TWideStringField;
    cdsDetailTracyFASSISTPROPERTYID: TWideStringField;
    cdsDetailTracyFUNITID: TWideStringField;
    cdsDetailTracyFSOURCEBILLNUMBER: TWideStringField;
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
    cdsDetailTracyFDELIVERYDATE: TDateTimeField;
    cdsDetailTracyFDELIVERYADDRESS: TWideStringField;
    cdsDetailTracyFTRANSLEADTIME: TFloatField;
    cdsDetailTracyFISPRESENT: TFloatField;
    cdsDetailTracyFCUSTPURNUMBER: TWideStringField;
    cdsDetailTracyFQTY: TFloatField;
    cdsDetailTracyFASSISTQTY: TFloatField;
    cdsDetailTracyFSHIPPEDQTY: TFloatField;
    cdsDetailTracyFUNSHIPPEDQTY: TFloatField;
    cdsDetailTracyFPRICE: TFloatField;
    cdsDetailTracyFORDERCUSTOMERID: TWideStringField;
    cdsDetailTracyFSALEPERSONID: TWideStringField;
    cdsDetailTracyFAMOUNT: TFloatField;
    cdsDetailTracyFDELIVERYTYPEID: TWideStringField;
    cdsDetailTracyFSALEGROUPID: TWideStringField;
    cdsDetailTracyFADMINORGUNITID: TWideStringField;
    cdsDetailTracyFSENDDATE: TDateTimeField;
    cdsDetailTracyFWAREHOUSEID: TWideStringField;
    cdsDetailTracyFSALEORDERID: TWideStringField;
    cdsDetailTracyFSALEORDERENTRYID: TWideStringField;
    cdsDetailTracyFSALEORDERNUMBER: TWideStringField;
    cdsDetailTracyFSALEORDERENTRYSEQ: TFloatField;
    cdsDetailTracyFBASEQTY: TFloatField;
    cdsDetailTracyFSHIPPEDBASEQTY: TFloatField;
    cdsDetailTracyFLOCALAMOUNT: TFloatField;
    cdsDetailTracyFREASON: TWideStringField;
    cdsDetailTracyFTOTALREVERSEDQTY: TFloatField;
    cdsDetailTracyFTOTALREVERSEDBASEQTY: TFloatField;
    cdsDetailTracyFSTOCKTRANSFERBILLID: TWideStringField;
    cdsDetailTracyFSTOCKTRANSFERBILLENTRYID: TWideStringField;
    cdsDetailTracyFSTOCKTRANSFERBILLNUMBER: TWideStringField;
    cdsDetailTracyFSTOCKTRANSFERBILLENTRYSEQ: TFloatField;
    cdsDetailTracyFLOCATIONID: TWideStringField;
    cdsDetailTracyFLOT: TWideStringField;
    cdsDetailTracyFPLANDELIVERYQTY: TFloatField;
    cdsDetailTracyFDELIVERYCUSTOMERID: TWideStringField;
    cdsDetailTracyFRECEIVECUSTOMERID: TWideStringField;
    cdsDetailTracyFPAYMENTCUSTOMERID: TWideStringField;
    cdsDetailTracyFSOURCEBILLID: TWideStringField;
    cdsDetailTracyFSOURCEBILLENTRYID: TWideStringField;
    cdsDetailTracyFNETORDERBILLNUMBER: TWideStringField;
    cdsDetailTracyFNETORDERBILLID: TWideStringField;
    cdsDetailTracyFNETORDERBILLENTRYID: TWideStringField;
    cdsDetailTracyFPROJECTID: TWideStringField;
    cdsDetailTracyFTRACKNUMBERID: TWideStringField;
    cdsDetailTracyCFCUPID: TWideStringField;
    cdsDetailTracyCFMUTILSOURCEBILL: TWideStringField;
    cdsDetailTracyCFPACKID: TWideStringField;
    cdsDetailTracyCFSIZESID: TWideStringField;
    cdsDetailTracyCFCOLORID: TWideStringField;
    cdsDetailTracyCFPACKNUM: TFloatField;
    cdsDetailTracyCFSIZEGROUPID: TWideStringField;
    cdsDetailTracyCFUNITPRICE: TFloatField;
    cdsDetailTracyCFDISCOUNT: TFloatField;
    cdsDetailTracyCFCANCELQTY: TFloatField;
    cdsDetailTracyCFSTOPNUM: TFloatField;
    cdsDetailTracyCFISPURIN: TFloatField;
    cdsDetailTracyCFPURINQTY: TFloatField;
    cdsDetailTracyFACTUALPRICE: TFloatField;
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
    cxgridDetialFBASESTATUS: TcxGridDBColumn;
    cxgridDetialFREMARK: TcxGridDBColumn;
    cxgridDetialFISPRESENT: TcxGridDBColumn;
    cxgridDetialFQTY: TcxGridDBColumn;
    cxgridDetialFSHIPPEDQTY: TcxGridDBColumn;
    cxgridDetialFUNSHIPPEDQTY: TcxGridDBColumn;
    cxgridDetialFPRICE: TcxGridDBColumn;
    cxgridDetialFAMOUNT: TcxGridDBColumn;
    cxgridDetialCFPACKNUM: TcxGridDBColumn;
    cxgridDetialCFDISCOUNT: TcxGridDBColumn;
    cxgridDetialCFSTOPNUM: TcxGridDBColumn;
    cxgridDetialFACTUALPRICE: TcxGridDBColumn;
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
    cdsFindwarehouse: TClientDataSet;
    cdsInWarehouse: TClientDataSet;
    cdstracyFID: TWideStringField;
    cdstracyFSEQ: TFloatField;
    cdstracyFMATERIALID: TWideStringField;
    cdstracyFBASESTATUS: TFloatField;
    cdstracyFBASEUNITID: TWideStringField;
    cdstracyFREMARK: TWideStringField;
    cdstracyFPARENTID: TWideStringField;
    cdstracyFISPRESENT: TFloatField;
    cdstracyFQTY: TFloatField;
    cdstracyFSHIPPEDQTY: TFloatField;
    cdstracyFUNSHIPPEDQTY: TFloatField;
    cdstracyFPRICE: TFloatField;
    cdstracyFAMOUNT: TFloatField;
    cdstracyFLOCATIONID: TWideStringField;
    cdstracyCFCUPID: TWideStringField;
    cdstracyCFPACKID: TWideStringField;
    cdstracyCFSIZESID: TWideStringField;
    cdstracyCFCOLORID: TWideStringField;
    cdstracyCFPACKNUM: TFloatField;
    cdstracyCFSIZEGROUPID: TWideStringField;
    cdstracyCFDISCOUNT: TFloatField;
    cdstracyCFSTOPNUM: TFloatField;
    cdstracyFACTUALPRICE: TFloatField;
    cdstracyCFDPPRICE: TFloatField;
    cdsDetailCFASSISTNUM: TWideStringField;
    procedure cxbtnNUmberKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure cxbtnNUmberPropertiesChange(Sender: TObject);
    procedure btnEnter(Sender: TObject);
    procedure btnExit(Sender: TObject);
    procedure cxbtnSendWareNumKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxbtnSendWareNumPropertiesChange(Sender: TObject);
    procedure cxbtnReceivWareNumPropertiesChange(Sender: TObject);
    procedure cdsDetailNewRecord(DataSet: TDataSet);
    procedure cdsMasterCalcFields(DataSet: TDataSet);
    procedure cxPageDetailChange(Sender: TObject);
    procedure cdsDetailFQTYChange(Sender: TField);
    procedure cdsDetailBeforePost(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure dbgList2CFLocNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxbtnNUmberPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxbtnSendWareNumPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxbtnReceivWareNumPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure dbgList2cfMaterialNumberPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure dbgList2CFColorCodePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure dbgList2CFCupNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure dbgList2CFPackNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cdsDetailAmountFMATERIALIDChange(Sender: TField);
    procedure cdsDetailAmountFACTUALPRICEChange(Sender: TField);
    procedure cdsDetailAmountFDISCOUNTRATEChange(Sender: TField);
    procedure cdsDetailAmountCFPACKIDChange(Sender: TField);
    procedure cdsDetailAmountCFPACKNUMChange(Sender: TField);
    procedure cdsMasterWideStringField31Change(Sender: TField);
    procedure cdsMasterWideStringField30Change(Sender: TField);
    procedure cxbtnNUmberKeyPress(Sender: TObject; var Key: Char);
    procedure cxbtnSendWareNumKeyPress(Sender: TObject; var Key: Char);
    procedure cxbtnReceivWareNumKeyPress(Sender: TObject; var Key: Char);
    procedure actPullExecute(Sender: TObject);
    procedure actPushExecute(Sender: TObject);
    procedure cdsDetailAmountAfterScroll(DataSet: TDataSet);
    procedure cdsMasterWideStringField32Change(Sender: TField);
    procedure cdsDetailAmountAfterPost(DataSet: TDataSet);
    procedure cdsDetailAmountBeforeEdit(DataSet: TDataSet);
    procedure cdsDetailAmountAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Open_Bill(KeyFields: String; KeyValues: String); override;
        //保存单据
    function ST_Save : Boolean; override;
    procedure OPenFindWare(StorageOrgID : string);
    procedure AddDetailRecord;override;
  end;

var
  FM_BillEditPostReq: TFM_BillEditPostReq;

implementation
uses FrmCliDM,Pub_Fun,uMaterDataSelectHelper,uSaleOrderToPostReq,uPostReqToIsSueFrm;
{$R *.dfm}
procedure TFM_BillEditPostReq.Open_Bill(KeyFields: String; KeyValues: String);
var OpenTables: array[0..1] of string;
    _cds: array[0..1] of TClientDataSet;
    ErrMsg,FBIZTYPEID : string;
    strsql,sFinID : string;
begin
  if Trim(KeyValues)='' then
    strsql := ' select * from t_Sd_Postrequisition where 1<>1 '
  else
    strsql := ' select * from t_Sd_Postrequisition where FID='+quotedstr(KeyValues);
  OpenTables[0] := strsql;
  if Trim(KeyValues)='' then
    strsql := ' select * from t_Sd_Postrequisitionentry where 1<>1 '
  else
    strsql := ' select * from t_Sd_Postrequisitionentry where FparentID='+quotedstr(KeyValues);
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
        FieldByName('FID').AsString := CliDM.GetEASSID('9CA9D08F');
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
        FieldByName('fstorageorgunitid').AsString := UserInfo.Branch_ID;   //库存组织
        FieldByName('fsaleorgunitid').AsString := UserInfo.Branch_ID;   //销售组织
        FieldByName('Fcompanyorgunitid').AsString := UserInfo.Branch_ID; //
        FieldByName('FCurrencyID').AsString := BillConst.FCurrency;   //币别
        FieldByName('FExchangeRate').AsFloat := 1;
        FieldByName('CFINPUTWAY').AsString :=  'NOTPACK';
      //  FieldByName('FISINTAX').AsFloat := 0;
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
    OPenFindWare(cdsMaster.fieldbyname('FORDERCUSTOMERID').AsString);
  end;
  FInWarehouseFID := cdsMaster.fieldbyname('FINWAREHOUSEID').AsString;
  FOutWarehouseFID := cdsMaster.fieldbyname('FWAREHOUSEID').AsString;
  inherited;
end;
function TFM_BillEditPostReq.ST_Save : Boolean;
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
    if CliDM.Apply_Delta_Ex(_cds,['t_Sd_Postrequisition','t_Sd_Postrequisitionentry'],ErrMsg) then
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
procedure TFM_BillEditPostReq.cxbtnNUmberKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

  inherited;
  //
end;

procedure TFM_BillEditPostReq.btnKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  ///
end;

procedure TFM_BillEditPostReq.FormCreate(Sender: TObject);
begin
  inherited;
  sKeyFields := 'FmaterialID;CFColorID;CFCupID;CFpackID;Fsourcebillnumber;FLOCATIONID';
  Self.Bill_Sign := 't_Sd_Postrequisition';
  Self.BillEntryTable := 't_Sd_Postrequisitionentry';
  sBillTypeID := BillConst.BILLTYPE_AM;  //单据类型FID
  cdsCustomer.Data := CliDM.cdsCust.Data; //客户
  cdswarehouse.Data := CliDM.cdsWarehouse.Data;//仓库
end;

procedure TFM_BillEditPostReq.cxbtnNUmberPropertiesChange(Sender: TObject);
begin
  inherited;
  girdList.hint :='FORDERCUSTOMERID';
  HeadAutoSelIDchange(cdsCustomer,'');
end;

procedure TFM_BillEditPostReq.btnEnter(Sender: TObject);
begin
  inherited;
  //
end;

procedure TFM_BillEditPostReq.btnExit(Sender: TObject);
begin
  inherited;
  //
end;

procedure TFM_BillEditPostReq.cxbtnSendWareNumKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  //
end;

procedure TFM_BillEditPostReq.cxbtnSendWareNumPropertiesChange(
  Sender: TObject);
begin
  inherited;
  girdList.hint :='FWAREHOUSEID';
  HeadAutoSelIDchange(cdswarehouse,'');
end;

procedure TFM_BillEditPostReq.cxbtnReceivWareNumPropertiesChange(
  Sender: TObject);
begin
  inherited;
  girdList.hint :='FINWAREHOUSEID';
  HeadAutoSelIDchange(cdsInWarehouse,'');
end;

procedure TFM_BillEditPostReq.cdsDetailNewRecord(DataSet: TDataSet);
begin
  inherited;
  with DataSet do
  begin
    DataSet.FieldByName('FID').AsString := CliDM.GetEASSID('CCFD4923');
    DataSet.FieldByName('FParentID').AsString := BillIDValue;
   // DataSet.FieldByName('FWAREHOUSEID').AsString := UserInfo.Warehouse_FID; //收货仓库
    DataSet.FieldByName('FBaseStatus').AsInteger := 1;
    //DataSet.FieldByName('FSTORAGEORGUNITID').AsString := UserInfo.Branch_ID; //申请组织
    DataSet.FieldByName('FOrderCustomerID').AsString := cdsMaster.fieldbyname('FORDERCUSTOMERID').AsString;  //订货客户
    DataSet.FieldByName('FDeliveryCustomerID').AsString := cdsMaster.fieldbyname('FORDERCUSTOMERID').AsString;  //送货客户
    DataSet.FieldByName('FReceiveCustomerID').AsString := cdsMaster.fieldbyname('FORDERCUSTOMERID').AsString;  //应收客户
    DataSet.FieldByName('FPaymentCustomerID').AsString := cdsMaster.fieldbyname('FORDERCUSTOMERID').AsString;  //收款客户
    DataSet.FieldByName('FIspresent').AsInteger := 0;


  end;
end;

procedure TFM_BillEditPostReq.cdsMasterCalcFields(DataSet: TDataSet);
begin
  inherited;
  if DataSet.FindField('CFCustName')<> nil then
  begin
    if FindRecord1(cdsCustomer,'FID',DataSet.fieldbyname('FORDERCUSTOMERID').AsString,1) then
    begin
      DataSet.FieldByName('CFCustName').AsString := cdsCustomer.fieldbyname('Fname_l2').AsString;
      cxbtnNUmber.Text := cdsCustomer.fieldbyname('Fnumber').AsString;
    end;
  end;
  if DataSet.FindField('CFReceivWareName')<> nil then
  begin

    if FindRecord1(CliDM.cdsAllWarehouse,'FID',DataSet.fieldbyname('FINWAREHOUSEID').AsString,1) then
    begin
      DataSet.FieldByName('CFReceivWareName').AsString := CliDM.cdsAllWarehouse.fieldbyname('Fname_l2').AsString;
      cxbtnReceivWareNum.Text := CliDM.cdsAllWarehouse.fieldbyname('Fnumber').AsString;
    end
    else
    begin
      DataSet.FieldByName('CFReceivWareName').AsString := '';
      cxbtnReceivWareNum.Text := '';
    end;
  end  ;

  if DataSet.FindField('CFSendWareName')<> nil then
  begin
    if FindRecord1(cdswarehouse,'FID',DataSet.fieldbyname('FWAREHOUSEID').AsString,1) then
    begin
      DataSet.FieldByName('CFSendWareName').AsString := cdswarehouse.fieldbyname('Fname_l2').AsString;
      cxbtnSendWareNum.Text := cdswarehouse.fieldbyname('Fnumber').AsString;
    end;
  end;
end;

procedure TFM_BillEditPostReq.cxPageDetailChange(Sender: TObject);
begin
  inherited;
  if cxPageDetail.ActivePage=cxTabTractDetail  then
  begin
    cdstracy.Data := cdsDetail.Data;
    OpenTracyDetail('');
  end;
end;

procedure TFM_BillEditPostReq.cdsDetailFQTYChange(Sender: TField);
begin
  inherited;
  Sender.DataSet.FieldByName('CFSTOPNUM').AsFloat := Sender.DataSet.fieldbyname('Fqty').AsFloat;
  Sender.DataSet.FieldByName('FBASEQTY').AsFloat := Sender.DataSet.fieldbyname('Fqty').AsFloat;
  Sender.DataSet.FieldByName('FSHIPPEDBASEQTY').AsFloat := 0;
  Sender.DataSet.FieldByName('FUNSHIPPEDQTY').AsFloat := Sender.DataSet.fieldbyname('Fqty').AsFloat;
  Sender.DataSet.FieldByName('FASSOCIATEQTY').AsFloat := Sender.DataSet.fieldbyname('Fqty').AsFloat;
end;

procedure TFM_BillEditPostReq.cdsDetailBeforePost(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FAMOUNT').AsFloat := DataSet.fieldbyname('Fqty').AsFloat*dataset.fieldbyname('FACTUALPRICE').AsFloat;
  DataSet.FieldByName('FLOCALAMOUNT').AsFloat := DataSet.fieldbyname('Fqty').AsFloat*dataset.fieldbyname('FACTUALPRICE').AsFloat;
  DataSet.FieldByName('Fwarehouseid').AsString := cdsMaster.fieldbyname('FWAREHOUSEID').AsString;
end;

procedure TFM_BillEditPostReq.FormShow(Sender: TObject);
begin
  inherited;
  sIniBillFlag :='AM';
  sSPPack := 'SALE';
end;

procedure TFM_BillEditPostReq.dbgList2CFLocNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  FindLocation(cdsMaster.fieldbyname('CFWAREHOUSEID').AsString,'FLOCATIONID','CFLocationName');
end;

procedure TFM_BillEditPostReq.cxbtnNUmberPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
  var
    ChangEvent : TNotifyEvent;
begin
  inherited;
  if not  cdsMaster.Active then Exit;
  try
    ChangEvent := TcxButtonEdit(Sender).Properties.OnChange;
    TcxButtonEdit(Sender).Properties.OnChange := nil;
    with Select_Customer('','','',1) do
    begin
      if not IsEmpty then
      begin
        if not (cdsMaster.State in DB.dsEditModes) then cdsMaster.Edit;
          cdsMaster.FieldByName('FORDERCUSTOMERID').AsString := fieldbyname('fid').AsString;
      end;
    end;
  finally
    TcxButtonEdit(Sender).Properties.OnChange := ChangEvent;
  end;
end;

procedure TFM_BillEditPostReq.cxbtnSendWareNumPropertiesButtonClick(
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
          cdsMaster.FieldByName('FWAREHOUSEID').AsString := fieldbyname('fid').AsString;
      end;
    end;
  finally
    TcxButtonEdit(Sender).Properties.OnChange := ChangEvent;
  end;
end;

procedure TFM_BillEditPostReq.cxbtnReceivWareNumPropertiesButtonClick(
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
          cdsMaster.FieldByName('FINWAREHOUSEID').AsString := fieldbyname('fid').AsString;
      end;
    end;
  finally
    TcxButtonEdit(Sender).Properties.OnChange := ChangEvent;
  end;
end;

procedure TFM_BillEditPostReq.dbgList2cfMaterialNumberPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  FindMaterial;
end;

procedure TFM_BillEditPostReq.dbgList2CFColorCodePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  FindColor;
end;

procedure TFM_BillEditPostReq.dbgList2CFCupNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  FindCup;
end;

procedure TFM_BillEditPostReq.dbgList2CFPackNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  FindPack;
end;

procedure TFM_BillEditPostReq.cdsDetailAmountFMATERIALIDChange(
  Sender: TField);
begin
  inherited;
  Get_PolicyPrice('FDISCOUNTRATE','FACTUALPRICE',cdsMaster.fieldbyname('FSALEORGUNITID').AsString
  ,cdsMaster.fieldbyname('CFPRICETYPEID').AsString,cdsMaster.fieldbyname('FORDERCUSTOMERID').AsString,cdsDetailAmount.fieldbyname('FMATERIALID').AsString,
  cdsMaster.fieldbyname('FBIZDATE').AsDateTime);
end;

procedure TFM_BillEditPostReq.cdsDetailAmountFACTUALPRICEChange(
  Sender: TField);
  var
    Event : TFieldNotifyEvent;
begin
  inherited;
  try
    Event := Sender.DataSet.fieldbyname('FDISCOUNTRATE').OnChange;
    Sender.DataSet.fieldbyname('FDISCOUNTRATE').OnChange := nil;
    if Sender.DataSet.FieldByName('FPRICE').AsFloat<>0 then
      Sender.DataSet.FieldByName('FDISCOUNTRATE').AsFloat := CliDM.SimpleRoundTo(Sender.DataSet.FieldByName('FACTUALPRICE').AsFloat/Sender.DataSet.FieldByName('FPRICE').AsFloat*100);
  finally
    Sender.DataSet.fieldbyname('FDISCOUNTRATE').OnChange := Event;
  end;

end;

procedure TFM_BillEditPostReq.cdsDetailAmountFDISCOUNTRATEChange(
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

procedure TFM_BillEditPostReq.cdsDetailAmountCFPACKIDChange(
  Sender: TField);
begin
  inherited;
  if cdsDetailAmount.FieldByName('CFPackNum').AsInteger>0 then
    PackNumChang(cdsDetailAmount,cdsDetailAmount.FieldByName('CFSIZEGROUPID').AsString,cdsDetailAmount.fieldbyname('CFPackID').AsString);

end;

procedure TFM_BillEditPostReq.cdsDetailAmountCFPACKNUMChange(
  Sender: TField);
begin
  inherited;
  if cdsDetailAmount.FieldByName('CFPackNum').AsInteger>0 then
    PackNumChang(cdsDetailAmount,cdsDetailAmount.FieldByName('CFSIZEGROUPID').AsString,cdsDetailAmount.fieldbyname('CFPackID').AsString);

end;

procedure TFM_BillEditPostReq.cdsMasterWideStringField31Change(
  Sender: TField);
begin
  inherited;
  FInWarehouseFID := Sender.AsString;
end;

procedure TFM_BillEditPostReq.cdsMasterWideStringField30Change(
  Sender: TField);
begin
  inherited;
  FOutWarehouseFID := Sender.AsString;
end;

procedure TFM_BillEditPostReq.cxbtnNUmberKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  DelBtnEditValue(Key,'FORDERCUSTOMERID');
end;

procedure TFM_BillEditPostReq.cxbtnSendWareNumKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  DelBtnEditValue(Key,'FWAREHOUSEID');
end;

procedure TFM_BillEditPostReq.cxbtnReceivWareNumKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  DelBtnEditValue(Key,'FINWAREHOUSEID');
end;

procedure TFM_BillEditPostReq.actPullExecute(Sender: TObject);
begin
  inherited;
  self.Close;
  Application.CreateForm(TSaleOrderToPostReqFrm,SaleOrderToPostReqFrm);
  SaleOrderToPostReqFrm.OpenType := 2;
  SaleOrderToPostReqFrm.ShowModal;      
  SaleOrderToPostReqFrm.Free;
end;

procedure TFM_BillEditPostReq.actPushExecute(Sender: TObject);
begin
  inherited;
  if not BillInfo.IsAduit then
  begin
    ShowMsg(Handle, '当前单据未审核！',[]);
    Abort;
  end;
  Application.CreateForm(TPostReqToIsSueFrm,PostReqToIsSueFrm);
  PostReqToIsSueFrm.OpenType := 1;
  PostReqToIsSueFrm.txt_BillNumber.Text := cdsMaster.fieldbyname('Fnumber').AsString;
  PostReqToIsSueFrm.FsrcBillFID := cdsMaster.fieldbyname('FID').AsString;
  PostReqToIsSueFrm.txt_SrcDes.Text := txDescription.Text;
  PostReqToIsSueFrm.FSaleType  := cdsMaster.fieldbyname('cfsaletype').AsString;
  PostReqToIsSueFrm.ShowModal;
  PostReqToIsSueFrm.Free;
end;

procedure TFM_BillEditPostReq.cdsDetailAmountAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  cxbtnSO.Text := DataSet.fieldbyname('FSOURCEBILLNUMBER').AsString;
end;
procedure TFM_BillEditPostReq.OPenFindWare(StorageOrgID : string);
var
  strSql,ErrMsg : string;
begin
  inherited;
  try
    strSql :=' select W.FID,W.Fnumber,W.Fname_l2,W.FhelpCode,W.fhaslocation,W.CFCustomerID,W.fstorageorgid from  t_Db_Warehouse W   left join T_BD_CUSTOMER Cus on Cus.Finternalcompanyid=W.Fstorageorgid'+
    '  where W.FWhState=1 and cus.FID='+quotedstr(StorageOrgID);
    Clidm.Get_OpenSQL(CliDM.cdstemp,strsql,ErrMsg);
    cdsInWarehouse.Data := CliDM.cdstemp.Data;
    cdsFindwarehouse.Data := CliDM.cdstemp.Data;
    CliDM.cdstemp.Close;
  except
    on E : Exception do
    begin
      ShowMsg(Handle, '查询仓库数据出错:'+E.Message+' '+ErrMsg ,[]);
      Abort;
    end;
  end;

end;
procedure TFM_BillEditPostReq.cdsMasterWideStringField32Change(
  Sender: TField);
begin
  inherited;
  OPenFindWare(Sender.AsString);
end;

procedure TFM_BillEditPostReq.cdsDetailAmountAfterPost(DataSet: TDataSet);
begin
  inherited;
  ///
end;
procedure TFM_BillEditPostReq.AddDetailRecord;
var
  strSql,ErrMsg,sSizeCode,sCupCode,sColorCoede,spackCode,sAsstCode  : string ;
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
      fieldbyname('CFDISCOUNT').asFloat := cdsDetailAmount.fieldbyname('FDISCOUNTRATE').asfloat;
      fieldbyname('fremark').asstring := cdsDetailAmount.fieldbyname('fremark').AsString;
      fieldbyname('FISPRESENT').asinteger := cdsDetailAmount.fieldbyname('FISPRESENT').asinteger;
      fieldbyname('FBASEUNITID').AsString := cdsDetailAmount.FieldByName('FBASEUNITID').AsString ;
      FieldByName('FWAREHOUSEID').AsString := cdsMaster.fieldbyname('FWAREHOUSEID').AsString;
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
procedure TFM_BillEditPostReq.cdsDetailAmountBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  strMatID := DataSet.Fieldbyname('FMaterialID').AsString;
  strColorID := DataSet.Fieldbyname('CFColorID').AsString;
  StrCupID := DataSet.Fieldbyname('CFCupID').AsString;
  StrPackID := DataSet.Fieldbyname('CFPackID').AsString;
end;

procedure TFM_BillEditPostReq.cdsDetailAmountAfterInsert(
  DataSet: TDataSet);
begin
  strMatID := '';
  strColorID :='';
  StrCupID := '';
  StrpackID := '';
  inherited;

end;

end.
