unit uFrm_PurInWarehsBill;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Frm_BillEditBase, Menus,
  DB,
  DBClient,
              
  cxGridDBTableView, 
  cxEdit, 
  cxGridCustomTableView, cxGridTableView, ADODB, ActnList,
  dxBar, cxClasses, ImgList, cxGridLevel, cxControls, cxGridCustomView,
  cxGrid, StdCtrls, cxButtons, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit, cxDBEdit, cxMaskEdit,
  cxCalendar, cxContainer, ExtCtrls,
  cxCheckBox, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxDBData, cxLookAndFeelPainters, cxButtonEdit,
  dxGDIPlusClasses, jpeg, Grids, DBGrids, cxLabel, cxPC, cxSpinEdit;

type
  TFM_BillEditMoveinwarehs = class(TFM_BillEditBase)
    cdsDetailFID: TWideStringField;
    cdsDetailFSEQ: TFloatField;
    cdsDetailFSOURCEBILLID: TWideStringField;
    cdsDetailFSOURCEBILLNUMBER: TWideStringField;
    cdsDetailFSOURCEBILLENTRYID: TWideStringField;
    cdsDetailFSOURCEBILLENTRYSEQ: TFloatField;
    cdsDetailFASSCOEFFICIENT: TFloatField;
    cdsDetailFBASESTATUS: TFloatField;
    cdsDetailFASSOCIATEQTY: TFloatField;
    cdsDetailFSOURCEBILLTYPEID: TWideStringField;
    cdsDetailFASSISTPROPERTYID: TWideStringField;
    cdsDetailFMATERIALID: TWideStringField;
    cdsDetailFUNITID: TWideStringField;
    cdsDetailFBASEUNITID: TWideStringField;
    cdsDetailFASSISTUNITID: TWideStringField;
    cdsDetailFREASONCODEID: TWideStringField;
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
    cdsDetailFSTOCKTRANSFERBILLID: TWideStringField;
    cdsDetailFSTOCKTRANSBILLENTRYID: TWideStringField;
    cdsDetailFSTOCKTRANSFERNUM: TWideStringField;
    cdsDetailFSTOCKTRANSFERBILLENTRYSEQ: TFloatField;
    cdsDetailFMFG: TDateTimeField;
    cdsDetailFEXP: TDateTimeField;
    cdsDetailFREMARK: TWideStringField;
    cdsDetailFREVERSEBASEQTY: TFloatField;
    cdsDetailFRETURNBASEQTY: TFloatField;
    cdsDetailFBASEUNITACTUALCOST: TFloatField;
    cdsDetailFPROJECTID: TWideStringField;
    cdsDetailFTRACKNUMBERID: TWideStringField;
    cdsDetailFCUSTOMERID: TWideStringField;
    cdsDetailFSUPPLIERID: TWideStringField;
    cdsDetailFSTORETYPEID: TWideStringField;
    cdsDetailCFCHECKINPUTQTY: TFloatField;
    cdsDetailCFCHECKDIFFQTY: TFloatField;
    cdsDetailCFCUPID: TWideStringField;
    cdsDetailCFPACKID: TWideStringField;
    cdsDetailCFSIZESID: TWideStringField;
    cdsDetailCFCOLORID: TWideStringField;
    cdsDetailCFPACKNUM: TFloatField;
    cdsDetailCFSIZEGROUPID: TWideStringField;
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
    cdsMasterFISSUECOMPANYORGUNITID: TWideStringField;
    cdsMasterFRECEIPTCOMPANYORGUNITID: TWideStringField;
    cdsMasterFISSUESTORAGEORGUNITID: TWideStringField;
    cdsMasterFMODIFIERID: TWideStringField;
    cdsMasterFMODIFICATIONTIME: TDateTimeField;
    cdsMasterFMONTH: TFloatField;
    cdsMasterFDAY: TFloatField;
    cdsMasterCFISBADSHOE: TFloatField;
    cdsMasterCFSUBBILLTYPE: TWideStringField;
    cdsDetailcfMaterialNumber: TStringField;
    cdsDetailcfMaterialName: TStringField;
    cdsDetailcfColorName: TStringField;
    cdsDetailcfSIZEName: TStringField;
    cdsDetailcfCupName: TStringField;
    cdsDetailFWareHouseNumber: TStringField;
    cdsDetailFWareHouseName: TStringField;
    dbgListFSEQ: TcxGridDBColumn;
    dbgListFQTY: TcxGridDBColumn;
    dbgListFPRICE: TcxGridDBColumn;
    dbgListFWareHouseName: TcxGridDBColumn;
    dbgListFWareHouseNumber: TcxGridDBColumn;
    dbgListcfCupName: TcxGridDBColumn;
    dbgListcfSIZEName: TcxGridDBColumn;
    dbgListcfColorName: TcxGridDBColumn;
    dbgListcfMaterialName: TcxGridDBColumn;
    dbgListcfMaterialNumber: TcxGridDBColumn;
    dbgListCFAssistNum: TcxGridDBColumn;
    cdsDetailCFAssistNum: TWideStringField;
    cdsDetailAmountFMATERIALID: TWideStringField;
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
    cdsDetailAmountCFCOLORID: TWideStringField;
    cdsDetailAmountCFCUPID: TWideStringField;
    cdsDetailAmountcfMaterialName: TStringField;
    cdsDetailAmountCFColorName: TStringField;
    cdsDetailAmountCFCupName: TStringField;
    cdsDetailAmountcfMaterialNumber: TStringField;
    cdsDetailAmountFTIPWAREHOUSEID: TStringField;
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
    dbgList2cfMaterialName: TcxGridDBColumn;
    dbgList2CFCupName: TcxGridDBColumn;
    dbgList2cfMaterialNumber: TcxGridDBColumn;
    cdsMasterFCreatorName: TStringField;
    cdsMasterFAuditorName: TStringField;
    cdsDetailAmountCFOLDPackNum: TIntegerField;
    cdsDetailAmountCFOLDPackID: TStringField;
    cdsDetailAmountFSourceBillID: TStringField;
    cdsDetailAmountFSourceBillNumber: TStringField;
    cdstemp: TClientDataSet;
    cdsDetailCFOLDPackNum: TFloatField;
    cdsDetailCFOLdPackID: TWideStringField;
    cdsDetailAmountCFPackID: TStringField;
    cdsDetailAmountCFPackName: TStringField;
    cdsDetailAmountcfpackNum: TIntegerField; 
    cdsDetailAmountiTotalQty: TIntegerField;
    dbgList2Column3: TcxGridDBColumn;
    cdsDetailCFTOUTWAREHOUSEID: TWideStringField;
    cdsDetailAmountCFTOUTWAREHOUSEID: TWideStringField;
    cdsDetailcfSIZECode: TWideStringField;
    cdsMasterCFINPUTWAY: TWideStringField;
    updateQty: TMenuItem;
    cdsDetailAmountCFColorCode: TStringField;
    dbgList2CFColorCode: TcxGridDBColumn;
    cdsDetailcfColorCode: TStringField;
    btn_TsCiew: TdxBarButton;
    cdsDetailcfdpprice: TFloatField;
    cdsDetailcfdpamount: TFloatField;
    cdsDetailAmountcfdpprice: TFloatField;
    cdsDetailAmountcfdpamount: TFloatField;
    dbgList2Column4: TcxGridDBColumn;
    dbgList2Column5: TcxGridDBColumn;
    dbgList2CFOutLocationName: TcxGridDBColumn;
    cdsDetailCFOutLocationID: TWideStringField;
    cdsDetailAmountCFOutLocationID: TWideStringField;
    cxLabel2: TcxLabel;
    cxbtnInWare: TcxButtonEdit;
    cxedtInware: TcxDBTextEdit;
    cxLabel3: TcxLabel;
    cxcmbOrderType: TcxDBLookupComboBox;
    cdswarehouse: TClientDataSet;
    dsOrderType: TDataSource;
    cdsMasterCFINWAREHOUSEID: TWideStringField;
    cdsMasterCFOutWAREHOUSEID: TWideStringField;
    cdsMasterCFORDERTYPEID: TWideStringField;
    cdsDetailAmountFRemark: TWideStringField;
    cdsDetailAmountCFUnitName: TStringField;
    cdsDetailAmountCFInLocName: TWideStringField;
    cdsDetailAmountFLOCATIONID: TWideStringField;
    cdsDetailAmountcfattributeid: TWideStringField;
    cdsDetailAmountCfbrandid: TWideStringField;
    cdsDetailAmountcfattributeName: TWideStringField;
    cdsDetailAmountCFBrandName: TWideStringField;
    cdsDetailAmountCFOutLocName: TStringField;
    dbgList2Column6: TcxGridDBColumn;
    dbgList2CFPackName: TcxGridDBColumn;
    dbgList2cfpackNum: TcxGridDBColumn;
    dbgList2FRemark: TcxGridDBColumn;
    dbgList2CFUnitName: TcxGridDBColumn;
    dbgList2cfattributeName: TcxGridDBColumn;
    dbgList2CFBrandName: TcxGridDBColumn;
    cdsMasterCFISPROCDUCT: TIntegerField;
    cdsMasterCFSendWareName: TStringField;
    cdsMasterCFReceivWareName: TStringField;
    cdsMasterCFModifierName: TStringField;
    cdsDetailAmountFAmount: TFloatField;
    cdsDetailAmountFprice: TFloatField;
    dbgList2Fprice: TcxGridDBColumn;
    cdsDetailTracyFID: TWideStringField;
    cdsDetailTracyFSEQ: TFloatField;
    cdsDetailTracyFSOURCEBILLID: TWideStringField;
    cdsDetailTracyFSOURCEBILLNUMBER: TWideStringField;
    cdsDetailTracyFSOURCEBILLENTRYID: TWideStringField;
    cdsDetailTracyFSOURCEBILLENTRYSEQ: TFloatField;
    cdsDetailTracyFASSCOEFFICIENT: TFloatField;
    cdsDetailTracyFBASESTATUS: TFloatField;
    cdsDetailTracyFASSOCIATEQTY: TFloatField;
    cdsDetailTracyFSOURCEBILLTYPEID: TWideStringField;
    cdsDetailTracyFASSISTPROPERTYID: TWideStringField;
    cdsDetailTracyFMATERIALID: TWideStringField;
    cdsDetailTracyFUNITID: TWideStringField;
    cdsDetailTracyFBASEUNITID: TWideStringField;
    cdsDetailTracyFASSISTUNITID: TWideStringField;
    cdsDetailTracyFREASONCODEID: TWideStringField;
    cdsDetailTracyFSTORAGEORGUNITID: TWideStringField;
    cdsDetailTracyFCOMPANYORGUNITID: TWideStringField;
    cdsDetailTracyFWAREHOUSEID: TWideStringField;
    cdsDetailTracyFLOCATIONID: TWideStringField;
    cdsDetailTracyFSTOCKERID: TWideStringField;
    cdsDetailTracyFLOT: TWideStringField;
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
    cdsDetailTracyFSTOCKTRANSFERBILLID: TWideStringField;
    cdsDetailTracyFSTOCKTRANSBILLENTRYID: TWideStringField;
    cdsDetailTracyFSTOCKTRANSFERNUM: TWideStringField;
    cdsDetailTracyFSTOCKTRANSFERBILLENTRYSEQ: TFloatField;
    cdsDetailTracyFMFG: TDateTimeField;
    cdsDetailTracyFEXP: TDateTimeField;
    cdsDetailTracyFREMARK: TWideStringField;
    cdsDetailTracyFREVERSEBASEQTY: TFloatField;
    cdsDetailTracyFRETURNBASEQTY: TFloatField;
    cdsDetailTracyFBASEUNITACTUALCOST: TFloatField;
    cdsDetailTracyFPROJECTID: TWideStringField;
    cdsDetailTracyFTRACKNUMBERID: TWideStringField;
    cdsDetailTracyFCUSTOMERID: TWideStringField;
    cdsDetailTracyFSUPPLIERID: TWideStringField;
    cdsDetailTracyFSTORETYPEID: TWideStringField;
    cdsDetailTracyCFCUPID: TWideStringField;
    cdsDetailTracyCFPACKID: TWideStringField;
    cdsDetailTracyCFSIZESID: TWideStringField;
    cdsDetailTracyCFCOLORID: TWideStringField;
    cdsDetailTracyCFPACKNUM: TFloatField;
    cdsDetailTracyCFSIZEGROUPID: TWideStringField;
    cdsDetailTracyFWareHouseName: TStringField;
    cdsDetailTracyFWareHouseNumber: TStringField;
    cdsDetailTracyCFAssistNum: TWideStringField;
    cdsDetailTracyFQTY: TFloatField;
    cdsDetailTracyCFCHECKDIFFQTY: TFloatField;
    cdsDetailTracyCFCHECKINPUTQTY: TFloatField;
    cdsDetailTracyCFOLDPackNum: TFloatField;
    cdsDetailTracyCFOLdPackID: TWideStringField;
    cdsDetailTracyCFTOUTWAREHOUSEID: TWideStringField;
    cdsDetailTracycfdpprice: TFloatField;
    cdsDetailTracycfdpamount: TFloatField;
    cdsDetailTracyCFOutLocationID: TWideStringField;
    cdsDetailTracycfMaterialName: TStringField;
    cdsDetailTracyCFColorName: TStringField;
    cdsDetailTracyCFCupName: TStringField;
    cdsDetailTracycfMaterialNumber: TStringField;
    cdsDetailTracyCFPackName: TStringField;
    cdsDetailTracyCFColorCode: TStringField;
    cdsDetailTracyCFNUitName: TStringField;
    cdsDetailTracyCFInLocName: TWideStringField;
    cdsDetailTracyCFOutLocName: TStringField;
    cdsDetailTracycfattributeid: TWideStringField;
    cdsDetailTracyCfbrandid: TWideStringField;
    cdsDetailTracycfattributeName: TWideStringField;
    cdsDetailTracyCFBrandName: TWideStringField;
    cxgridDetialFSEQ: TcxGridDBColumn;
    cxgridDetialFPRICE: TcxGridDBColumn;
    cxgridDetialFAMOUNT: TcxGridDBColumn;
    cxgridDetialFREMARK: TcxGridDBColumn;
    cxgridDetialCFPACKNUM: TcxGridDBColumn;
    cxgridDetialFQTY: TcxGridDBColumn;
    cxgridDetialCFCHECKDIFFQTY: TcxGridDBColumn;
    cxgridDetialCFCHECKINPUTQTY: TcxGridDBColumn;
    cxgridDetialcfdpprice: TcxGridDBColumn;
    cxgridDetialcfMaterialName: TcxGridDBColumn;
    cxgridDetialCFColorName: TcxGridDBColumn;
    cxgridDetialCFCupName: TcxGridDBColumn;
    cxgridDetialcfMaterialNumber: TcxGridDBColumn;
    cxgridDetialCFPackName: TcxGridDBColumn;
    cxgridDetialCFColorCode: TcxGridDBColumn;
    cxgridDetialCFNUitName: TcxGridDBColumn;
    cxgridDetialCFInLocName: TcxGridDBColumn;
    cxgridDetialCFOutLocName: TcxGridDBColumn;
    cxgridDetialcfattributeName: TcxGridDBColumn;
    cxgridDetialCFBrandName: TcxGridDBColumn;
    cdsDetailAmountFBASEUNITID: TWideStringField;
    cdsDetailTracyCFSizeCode: TWideStringField;
    cdsDetailTracyCFSizeName: TWideStringField;
    dbgList2CFColorName: TcxGridDBColumn;
    btn_PackingList: TdxBarButton;
    cdstracyFID: TWideStringField;
    cdstracyFSEQ: TFloatField;
    cdstracyFMATERIALID: TWideStringField;
    cdstracyFBASEUNITID: TWideStringField;
    cdstracyFLOCATIONID: TWideStringField;
    cdstracyFPRICE: TFloatField;
    cdstracyFAMOUNT: TFloatField;
    cdstracyFPARENTID: TWideStringField;
    cdstracyFREMARK: TWideStringField;
    cdstracyCFCUPID: TWideStringField;
    cdstracyCFPACKID: TWideStringField;
    cdstracyCFSIZESID: TWideStringField;
    cdstracyCFCOLORID: TWideStringField;
    cdstracyCFPACKNUM: TFloatField;
    cdstracyCFSIZEGROUPID: TWideStringField;
    cdstracyFQTY: TFloatField;
    cdstracyCFCHECKDIFFQTY: TFloatField;
    cdstracyCFCHECKINPUTQTY: TFloatField;
    cdstracycfdpprice: TFloatField;
    cdstracyCFOutLocationID: TWideStringField;
    procedure cdsDetailNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure cdsDetailFQTYChange(Sender: TField);
    procedure actGetBillStatusExecute(Sender: TObject);
    procedure actSetBillStatusExecute(Sender: TObject);
    procedure dbgList2cfMaterialNumberPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure dbgList2CFColorNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure dbgList2CFCupNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure dxBarButton26Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bbtCheckClick(Sender: TObject);
    procedure cdsDetailAmountCalcFields(DataSet: TDataSet);
    procedure actDeleteExecute(Sender: TObject);
    procedure actReportDesignExecute(Sender: TObject);
    procedure actReportViewExecute(Sender: TObject);
    procedure actAuditExecute(Sender: TObject);
    procedure actUnAuditExecute(Sender: TObject);
    procedure barbtnNewClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure pmDetailPopup(Sender: TObject);
    procedure updateQtyClick(Sender: TObject);
    procedure btn_TsCiewClick(Sender: TObject);
    procedure cdsDetailBeforePost(DataSet: TDataSet);
    procedure cxbtnNUmberPropertiesChange(Sender: TObject);
    procedure cxbtnInWarePropertiesChange(Sender: TObject);
    procedure cdsMasterCalcFields(DataSet: TDataSet);
    procedure cxdblookupInputwayPropertiesCloseUp(Sender: TObject);
    procedure cdsDetailAmountNewRecord(DataSet: TDataSet);
    procedure cxbtnNUmberPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxPageDetailChange(Sender: TObject);
    procedure girdListDblClick(Sender: TObject);
    procedure girdListKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cdswarehouseFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure dbgList2Editing(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure btn_PackingListClick(Sender: TObject);
    procedure cdsMasterCFINWAREHOUSEIDChange(Sender: TField);
    procedure cdsMasterCFOutWAREHOUSEIDChange(Sender: TField);
    procedure cdsDetailAmountAfterPost(DataSet: TDataSet);
    procedure cdsDetailAmountBeforeEdit(DataSet: TDataSet);
    procedure cdsDetailAmountAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
    INM180 : Integer;  ///是否启用单据扫描校验
    strLocationOut,strLocationIn : string;
  public
    { Public declarations }
    //打开单据编辑界面(主键字段, 字段值)
    procedure Open_Bill(KeyFields: String; KeyValues: String); override;
    //保存单据
    function ST_Save : Boolean; override;
     procedure AddDetailRecord;override;
  end;

var
  FM_BillEditMoveinwarehs: TFM_BillEditMoveinwarehs;
  function EditMoveinwarehs_Frm(KeyValues : string):Boolean;    //打开调拨入库单开单界面
implementation
uses FrmCliDM,Pub_Fun,uTSView,uDrpHelperClase,uMaterDataSelectHelper,uPackingListFrm;
{$R *.dfm}
function EditMoveinwarehs_Frm(KeyValues : string):Boolean;    //打开调拨入库单开单界面
begin
  Result := True;
  if FM_BillEditMoveinwarehs <> nil then
  begin
    FM_BillEditMoveinwarehs.Show;
    FM_BillEditMoveinwarehs.SetFocus;
    Exit;
  end;
  Application.CreateForm(TFM_BillEditMoveinwarehs, FM_BillEditMoveinwarehs);
  FM_BillEditMoveinwarehs.Open_Bill('FID',KeyValues);
  FM_BillEditMoveinwarehs.Show;
  FM_BillEditMoveinwarehs.SetFocus;
end;
{ TFM_BillEditPurInWarehsBill }

procedure TFM_BillEditMoveinwarehs.Open_Bill(KeyFields,
  KeyValues: String);
var OpenTables: array[0..1] of string;
    _cds: array[0..1] of TClientDataSet;
    ErrMsg : string;
begin
  OpenTables[0] := 't_Im_Moveinwarehsbill';
  OpenTables[1] := 't_Im_Moveinwarehsbillentry';
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
    ShowMsg(Handle, '调拨入库单必需有调拨出库单生成！',[]);
    Abort;

    with cdsMaster do
    begin
      Append;
      FieldByName('FID').AsString := CliDM.GetEASSID(UserInfo.t_Im_Moveinwarehsbill);
      FieldByName('FCREATETIME').AsDateTime := CliDM.Get_ServerTime;
      FieldByName('FNUMBER').AsString := CliDM.GetSCMBillNum(sBillTypeID,UserInfo.Branch_Flag,sBillFlag,true,ErrMsg);
      FieldByName('FBIZDATE').AsDateTime := CliDM.Get_ServerTime;
      FieldByName('FBIZTYPEID').AsString := 'd8e80652-011b-1000-e000-04c5c0a812202407435C'; //单据类型，现在默认为（跨仓库调拨成本价）
      FieldByName('FCREATORID').AsString := UserInfo.LoginUser_FID;
      FieldByName('FBASESTATUS').AsInteger := 1;  //保存状态
      FieldByName('FLASTUPDATEUSERID').AsString := UserInfo.LoginUser_FID;
      FieldByName('FLASTUPDATETIME').AsDateTime := CliDM.Get_ServerTime;
      FieldByName('FMODIFIERID').AsString := UserInfo.LoginUser_FID;
      FieldByName('FMODIFICATIONTIME').AsDateTime := CliDM.Get_ServerTime;
      FieldByName('FCONTROLUNITID').AsString := UserInfo.FCONTROLUNITID;              //控制单元，从服务器获取

      FieldByName('FIssueCompanyOrgUnitID').AsString := UserInfo.Branch_ID;       //调出财务组织
      FieldByName('FReceiptCompanyOrgUnitID').AsString := UserInfo.Branch_ID;     //调入财务组织
      FieldByName('FIssueStorageOrgUnitID').AsString :=UserInfo.Branch_ID;        //调出库存组织
      FieldByName('FStorageOrgUnitID').AsString := UserInfo.Branch_ID;            //库存组织
      FieldByName('FTransactionTypeID').AsString := '';       //事务类型
      FieldByName('FBillTypeID').AsString := '';              //单据类型
      FieldByName('CFISPROCDUCT').AsFloat := 0;
    end;
  end;
  inherited;
end;

function TFM_BillEditMoveinwarehs.ST_Save: Boolean;
var ErrMsg : string;
   _cds: array[0..1] of TClientDataSet;
begin
  Result := True;
  //wushaoshu 20120206 为了提高盘点单的效率，横排转竖排只获取横排记录，不累加，
  //调拨入库单横排不允许编辑，同事不做横排转竖排，以免出现横排有2行相同记录，转竖排后少数据的情况出现
  if cdsDetailAmount.State in DB.dsEditModes then
   cdsDetailAmount.Post;

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
  
  if cdsMaster.State in db.dsEditModes then
     cdsMaster.Post;
  if cdsDetail.State in db.dsEditModes then
     cdsDetail.Post;

  //定义提交的数据集数据
  _cds[0] := cdsMaster;
  _cds[1] := cdsDetail;

  //提交数据
  try
    if CliDM.Apply_Delta_Ex(_cds,['t_Im_Moveinwarehsbill','t_Im_Moveinwarehsbillentry'],ErrMsg) then
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

  //Open_Bill('FID',BillIDValue);  //保存后再次打开，避免再次提交时服务器找不到记录
end;

procedure TFM_BillEditMoveinwarehs.cdsDetailNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  with DataSet do
  begin
    DataSet.FieldByName('FID').AsString := CliDM.GetEASSID(UserInfo.t_Im_Moveinwarehsbillentry);
    DataSet.FieldByName('FParentID').AsString := BillIDValue;
    DataSet.FieldByName('FWAREHOUSEID').AsString := cdsMaster.fieldbyname('CFINWAREHOUSEID').AsString;  //入库仓库
    DataSet.FieldByName('CFTOUTWAREHOUSEID').AsString := cdsMaster.fieldbyname('CFOutWAREHOUSEID').AsString;
    DataSet.FieldByName('FSTORETYPEID').AsString := '181875d5-0105-1000-e000-0111c0a812fd97D461A6'; //库存类型：普通
    Dataset.fieldbyname('FBASESTATUS').asfloat := 1;
  end;
end;

procedure TFM_BillEditMoveinwarehs.FormCreate(Sender: TObject);
var
  strsql, ErrMsg : string;
begin
  sBillTypeID := BillConst.BILLTYPE_DI;  //单据类型FID
  inherited;
  Self.ReportDir:='调拨入库单';
  sKeyFields := 'FmaterialID;CFColorID;CFCupID;CFpackID;FLOCATIONID;CFOutLocationID';
  Self.Bill_Sign := 't_Im_Moveinwarehsbill';
  Self.BillEntryTable := 't_Im_Moveinwarehsbillentry';
  cdswarehouse.Data := CliDM.cdsWarehouse.Data;
  setkeyFieldList('cfMaterialNumber;CFColorCode;CFPackName;CFCupName;CFInLocName;CFOutLocName');

  //收货单不允许编辑
  NewListRow.Visible := False;
  DelListRow.Visible := False;
  dxBarF11Imput.Enabled := False;
  dxBarCodeSM1.Enabled := False;
end;

procedure TFM_BillEditMoveinwarehs.cdsDetailFQTYChange(Sender: TField);
begin
  inherited;
  Sender.DataSet.fieldByName('FBASEQTY').Value := Sender.Value;
end;

procedure TFM_BillEditMoveinwarehs.actGetBillStatusExecute(
  Sender: TObject);
begin
  BillInfo.IsAduit := cdsMaster.FieldByName('FBASESTATUS').AsInteger = 4;
  inherited;

end;

procedure TFM_BillEditMoveinwarehs.actSetBillStatusExecute(
  Sender: TObject);
begin
  BillInfo.IsAduit := cdsMaster.FieldByName('FBASESTATUS').AsInteger = 4;
  inherited;
  bbtCheck.Enabled := not BillInfo.IsAduit;
end;

procedure TFM_BillEditMoveinwarehs.dbgList2cfMaterialNumberPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  FindMaterial;
end;

procedure TFM_BillEditMoveinwarehs.dbgList2CFColorNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  FindColor;  //弹选颜色
end;

procedure TFM_BillEditMoveinwarehs.dbgList2CFCupNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  FindCup; //弹选内长
end;

procedure TFM_BillEditMoveinwarehs.dxBarButton26Click(Sender: TObject);
begin
  inherited;
  //
end;

procedure TFM_BillEditMoveinwarehs.FormShow(Sender: TObject);
var
  strsql,ErrorMsg : string;

begin
  inherited;
  //NewListRow.Enabled:=False;
  sIniBillFlag :='MI';
  sSPPack := 'STOCK';
end;

procedure TFM_BillEditMoveinwarehs.bbtCheckClick(Sender: TObject);
begin
  if trim(cdsMaster.FieldByName('CFINPUTWAY').AsString) ='PACK' then
  begin
    ShowMsg(Handle, '选择配码录入方式不允许进行扫描校验!',[]);
    abort;
  end;
  inherited;
  //
end;

procedure TFM_BillEditMoveinwarehs.cdsDetailAmountCalcFields(
  DataSet: TDataSet);
begin
  ///inherited;
  DataSet.FieldByName('FTotaLQty').AsInteger :=
  DataSet.FieldByName('fAmount_1').AsInteger +
  DataSet.FieldByName('fAmount_2').AsInteger +
  DataSet.FieldByName('fAmount_3').AsInteger +
  DataSet.FieldByName('fAmount_4').AsInteger +
  DataSet.FieldByName('fAmount_5').AsInteger +
  DataSet.FieldByName('fAmount_6').AsInteger +
  DataSet.FieldByName('fAmount_7').AsInteger +
  DataSet.FieldByName('fAmount_8').AsInteger +
  DataSet.FieldByName('fAmount_9').AsInteger +
  DataSet.FieldByName('fAmount_10').AsInteger +
  DataSet.FieldByName('fAmount_11').AsInteger +
  DataSet.FieldByName('fAmount_12').AsInteger+
  DataSet.FieldByName('fAmount_13').AsInteger+
  DataSet.FieldByName('fAmount_14').AsInteger+
  DataSet.FieldByName('fAmount_15').AsInteger+
  DataSet.FieldByName('fAmount_16').AsInteger+
  DataSet.FieldByName('fAmount_17').AsInteger+
  DataSet.FieldByName('fAmount_18').AsInteger+
  DataSet.FieldByName('fAmount_19').AsInteger+
  DataSet.FieldByName('fAmount_20').AsInteger+
  DataSet.FieldByName('fAmount_21').AsInteger+
  DataSet.FieldByName('fAmount_22').AsInteger+
  DataSet.FieldByName('fAmount_23').AsInteger+
  DataSet.FieldByName('fAmount_24').AsInteger+
  DataSet.FieldByName('fAmount_25').AsInteger+
  DataSet.FieldByName('fAmount_26').AsInteger+
  DataSet.FieldByName('fAmount_27').AsInteger+
  DataSet.FieldByName('fAmount_28').AsInteger+
  DataSet.FieldByName('fAmount_29').AsInteger+
  DataSet.FieldByName('fAmount_30').AsInteger;
  cdsDetailAmount.FieldByName('famount').AsFloat := cdsDetailAmount.FieldByName('fprice').AsFloat*cdsDetailAmount.FieldByName('fTotaLQty').AsFloat;
end;

procedure TFM_BillEditMoveinwarehs.actDeleteExecute(Sender: TObject);
begin
  CliDM.Chk_UserRight(UserInfo.t_Im_Moveinwarehsbill,'moveinwarehs_delete'); //删除权限
  inherited;
end;

procedure TFM_BillEditMoveinwarehs.actReportDesignExecute(Sender: TObject);
begin
  CliDM.Chk_UserRight(UserInfo.t_Im_Moveinwarehsbill,'moveinwarehs_print'); //打印权限
  inherited;

end;

procedure TFM_BillEditMoveinwarehs.actReportViewExecute(Sender: TObject);
begin
  CliDM.Chk_UserRight(UserInfo.t_Im_Moveinwarehsbill,'moveinwarehs_print'); //打印权限
  inherited;

end;

procedure TFM_BillEditMoveinwarehs.actAuditExecute(Sender: TObject);
var
   strsql, strError : string;
begin
  CliDM.Chk_UserRight(UserInfo.t_Im_Moveinwarehsbill,'moveinwarehs_audit'); //审核权限
  if cdsMaster.IsEmpty then Exit;

 {if (INM180=0) or (INM180=1) then
  begin
    strsql :=' select 1 from t_Im_Moveinwarehsbillentry where nvl(CFCheckinputqty,0)<>0 and fparentID='+quotedstr(cdsMaster.fieldbyname('FID').AsString);
    Clidm.Get_OpenSQL(CliDM.cdstemp,strsql,strError);
    if CliDM.cdstemp.RecordCount=0 then
    begin
      if (INM180=0) then
      begin
        ShowMsg(Handle, '调拨入库单必须进行扫描校验后才能审核!',[]);
        Abort;
      end;
      if (INM180=1) then
      begin
        if ShowYesNo(Handle, '调拨入库单没有进行扫描校验是否要审核单据?',[]) = idYes then
        begin

        end
        else
          Abort;
      end;
    end;
  end;  }
  inherited;

end;

procedure TFM_BillEditMoveinwarehs.actUnAuditExecute(Sender: TObject);
begin
  CliDM.Chk_UserRight(UserInfo.t_Im_Moveinwarehsbill,'moveinwarehs_unAudit'); //反审核权限
  inherited;
end;

procedure TFM_BillEditMoveinwarehs.barbtnNewClick(Sender: TObject);
begin
  ShowMsg(Handle, '调拨入库单必需由调拨出库单生成！',[]);
  Abort;
  inherited;

end;

procedure TFM_BillEditMoveinwarehs.FormDestroy(Sender: TObject);
begin
  inherited;
  FM_BillEditMoveinwarehs := nil;
end;

procedure TFM_BillEditMoveinwarehs.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_F11)  then
  begin
   abort;  //调拨入库单不允许快速录入编辑
  end;
 // inherited;

end;

procedure TFM_BillEditMoveinwarehs.pmDetailPopup(Sender: TObject);
begin
  inherited;
  if trim(cdsMaster.FieldByName('CFINPUTWAY').AsString) ='PACK' then
  begin
    updateQty.Enabled := False;
  end;
  if (cdsMaster.FieldByName('FBASESTATUS').AsFloat =4) or (cdsMaster.FieldByName('FBASESTATUS').AsFloat =7)   then
    updateQty.Enabled := False;    
end;

procedure TFM_BillEditMoveinwarehs.updateQtyClick(Sender: TObject);
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
        cdsDetail.FieldByName('Fqty').AsFloat := cdsDetail.fieldbyname('CFCHECKINPUTQTY').AsFloat;
        cdsDetail.FieldByName('Fbaseqty').AsFloat := cdsDetail.fieldbyname('CFCHECKINPUTQTY').AsFloat;
        cdsDetail.FieldByName('CFCHECKDIFFQTY').Clear;
      end
      else
      begin
        cdsDetail.Edit;
        cdsDetail.FieldByName('Fqty').AsFloat := 0;
        cdsDetail.FieldByName('Fbaseqty').AsFloat := 0;
      end;
      cdsDetail.Post;
      cdsDetail.Next;
    end;
  end;
 OpenDetailAmount(Self.Bill_Sign,BillIDValue);  //打开横排明细
end;

procedure TFM_BillEditMoveinwarehs.btn_TsCiewClick(Sender: TObject);
begin
  inherited;
  if cdsMasterFNUMBER.AsString='' then Exit;
  if cdsMasterFID.AsString='' then Exit;
  CallViewDiff(cdsMasterFID.AsString,cdsMasterFNUMBER.AsString);
end;

procedure TFM_BillEditMoveinwarehs.cdsDetailBeforePost(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('cfdpamount').AsFloat := DataSet.FieldByName('cfdpprice').AsFloat*DataSet.FieldByName('FQTY').AsFloat;
  DataSet.FieldByName('FWAREHOUSEID').AsString := cdsMaster.fieldbyname('CFINWAREHOUSEID').AsString;  //入库仓库
end;

procedure TFM_BillEditMoveinwarehs.cxbtnNUmberPropertiesChange(
  Sender: TObject);
begin
  inherited;
  girdList.hint :='CFINWAREHOUSEID';
  HeadAutoSelIDchange(cdswarehouse,'');
end;

procedure TFM_BillEditMoveinwarehs.cxbtnInWarePropertiesChange(
  Sender: TObject);
begin
  inherited;
  girdList.hint :='CFOutWAREHOUSEID';
  HeadAutoSelIDchange(cdswarehouse,'');
end;

procedure TFM_BillEditMoveinwarehs.cdsMasterCalcFields(DataSet: TDataSet);
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
    if DataSet.FindField('CFReceivWareName')<> nil then
    begin
      if FindRecord1(CliDM.cdsWarehouse,'FID',DataSet.fieldbyname('CFOutWAREHOUSEID').AsString,1) then
      begin
        DataSet.FieldByName('CFReceivWareName').AsString := CliDM.cdsWarehouse.fieldbyname('Fname_l2').AsString;
        cxbtnInWare.Text := CliDM.cdsWarehouse.fieldbyname('Fnumber').AsString;
      end;
    end;
    if DataSet.FindField('CFSendWareName')<> nil then
    begin
      if FindRecord1(CliDM.cdsWarehouse,'FID',DataSet.fieldbyname('CFINWAREHOUSEID').AsString,1) then
      begin
        DataSet.FieldByName('CFSendWareName').AsString := CliDM.cdsWarehouse.fieldbyname('Fname_l2').AsString;
        cxbtnNUmber.Text := CliDM.cdsWarehouse.fieldbyname('Fnumber').AsString;
      end;
    end;
  finally
    if tmpbtnEdit <> nil then
      tmpbtnEdit.Properties.OnChange := event;
  end;

end;

procedure TFM_BillEditMoveinwarehs.cxdblookupInputwayPropertiesCloseUp(
  Sender: TObject);
begin
  inherited;
  //
end;

procedure TFM_BillEditMoveinwarehs.cdsDetailAmountNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  Dataset.fieldbyname('FBASEUNITID').asfloat := 1;
  DataSet.FieldByName('FWAREHOUSEID').AsString := cdsMaster.fieldbyname('CFINWAREHOUSEID').AsString;  //入库仓库
end;

procedure TFM_BillEditMoveinwarehs.cxbtnNUmberPropertiesButtonClick(
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
          cdsMaster.FieldByName('Cfinwarehouseid').AsString := fieldbyname('fid').AsString;
      end;
    end;
  finally
    TcxButtonEdit(Sender).Properties.OnChange := ChangEvent;
  end;

end;

procedure TFM_BillEditMoveinwarehs.cxPageDetailChange(Sender: TObject);
begin
  inherited;
  if cxPageDetail.ActivePage=cxTabTractDetail  then
  begin
    cdstracy.Data := cdsDetail.Data;
    OpenTracyDetail('');
  end;
end;

procedure TFM_BillEditMoveinwarehs.girdListDblClick(Sender: TObject);
begin
  inherited;
  if tmpbtnEdit <> nil then
  if tmpbtnEdit.Name='cxbtnNUmber' then
    fHasLocation := dsHeadSel.DataSet.FieldByName('fhaslocation').AsInteger;
end;

procedure TFM_BillEditMoveinwarehs.girdListKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if tmpbtnEdit <> nil then
  if tmpbtnEdit.Name='cxbtnNUmber' then
    fHasLocation := dsHeadSel.DataSet.FieldByName('fhaslocation').AsInteger;
end;

procedure TFM_BillEditMoveinwarehs.cdswarehouseFilterRecord(
  DataSet: TDataSet; var Accept: Boolean);
begin
  inherited;
  if tmpbtnEdit<> nil then
  begin
    if tmpbtnEdit.Name='cxbtnNUmber' then
      Accept:=((Pos(Trim(UpperCase(tmpbtnEdit.Text)),UpperCase(DataSet.fieldbyname('fnumber').AsString))>0) or
          (Pos(Trim(UpperCase(tmpbtnEdit.Text)),UpperCase(DataSet.fieldbyname('fname_l2').AsString))>0) or
          (Pos(Trim(UpperCase(tmpbtnEdit.Text)),UpperCase(DataSet.fieldbyname('FhelpCode').AsString))>0));
  end;
end;

procedure TFM_BillEditMoveinwarehs.dbgList2Editing(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  var AAllow: Boolean);
  var
    Focused_Field : string;
begin
  inherited;
  Focused_Field := TcxGridDBTableView(Sender).Columns[AItem.Index].DataBinding.FieldName;

  if fHasLocation =0 then
  if FocuField='CFInLocName' then
    AAllow :=False;
end;

procedure TFM_BillEditMoveinwarehs.btn_PackingListClick(Sender: TObject);
var PKContext : TPackingContext ;
begin
  inherited;
  if cdsMaster.FieldByName('CFINPUTWAY').AsString <> 'NOTPACK' then
  begin
    ShowMsg(self.Handle,'只有散码才可以使用装箱功能! ',[]);
    Abort;
  end;
  if cdsMaster.FindField('CFISPACKING') <> nil then 
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
  PKContext.CFWAREHOUSEID  := cdsMaster.FieldByName('Cfinwarehouseid').AsString;
  PKContext.FWAREHOUSEName := cdsMaster.FieldByName('CFReceivWareName').AsString;
  CallPackingList(PKContext);
end;


procedure TFM_BillEditMoveinwarehs.cdsMasterCFINWAREHOUSEIDChange(
  Sender: TField);
begin
  inherited;
  FInWarehouseFID := Sender.AsString;
end;

procedure TFM_BillEditMoveinwarehs.cdsMasterCFOutWAREHOUSEIDChange(
  Sender: TField);
begin
  inherited;
  FOutWarehouseFID := Sender.AsString;
end;
procedure TFM_BillEditMoveinwarehs.AddDetailRecord;
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
      if cdsDetail.Locate('CFColorID;CFCUPID;CFPackID;CFSizesID;CFSIZEGroupID;FMaterialID;fParentID;FLOCATIONID;CFOutLocationID',VarArrayOf([
        cdsDetailAmount.fieldbyname('CFColorID').AsString,cdsDetailAmount.fieldbyname('CFCUPID').AsString,cdsDetailAmount.fieldbyname('CFPackID').AsString,
        CliDM.cdsTmp.fieldbyname('Cfsizeid').AsString,cdsDetailAmount.fieldbyname('CFSIZEGroupID').AsString,cdsDetailAmount.fieldbyname('FMaterialID').AsString,BillIDValue,
       cdsDetailAmount.fieldbyname('FLOCATIONID').AsString,cdsDetailAmount.fieldbyname('CFOutLocationID').AsString ]), []) then  //数量为空删除
      cdsDetail.Delete;
      CliDM.cdsTmp.Next;
      Continue;
    end;
    with cdsDetail do
    begin
      if (cdsDetail.Locate('CFColorID;CFCUPID;CFPackID;CFSizesID;CFSIZEGroupID;FMaterialID;fParentID;FLOCATIONID;CFOutLocationID',VarArrayOf([
      cdsDetailAmount.fieldbyname('CFColorID').AsString,cdsDetailAmount.fieldbyname('CFCUPID').AsString,cdsDetailAmount.fieldbyname('CFPackID').AsString,
      CliDM.cdsTmp.fieldbyname('Cfsizeid').AsString,cdsDetailAmount.fieldbyname('CFSIZEGroupID').AsString,cdsDetailAmount.fieldbyname('FMaterialID').AsString,BillIDValue,
      cdsDetailAmount.fieldbyname('FLOCATIONID').AsString,cdsDetailAmount.fieldbyname('CFOutLocationID').AsString]), []))
      or (cdsDetail.Locate('CFColorID;CFCUPID;CFPackID;CFSizesID;CFSIZEGroupID;FMaterialID;fParentID;FLOCATIONID;CFOutLocationID',VarArrayOf([
      strColorID,StrCupID,StrpackID,CliDM.cdsTmp.fieldbyname('Cfsizeid').AsString
      ,cdsDetailAmount.fieldbyname('CFSIZEGroupID').AsString,strMatID,BillIDValue,strLocationIn,strLocationOut]), [])) then
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
      fieldbyname('fremark').asstring := cdsDetailAmount.fieldbyname('fremark').AsString;
      FieldByName('FWAREHOUSEID').AsString := cdsDetailAmount.fieldbyname('CFINWAREHOUSEID').AsString;
      //FieldByName('CFTOUTWAREHOUSEID').AsString := cdsDetailAmount.fieldbyname('CFOutWAREHOUSEID').AsString;
      FieldByName('FLOCATIONID').AsString := cdsDetailAmount.fieldbyname('FLOCATIONID').AsString;
     // FieldByName('CFOutLocationID').AsString := cdsDetailAmount.fieldbyname('CFOutLocationID').AsString;
      fieldbyname('FBASEUNITID').AsString := cdsDetailAmount.FieldByName('FBASEUNITID').AsString ;
     /// FieldByName('FDELIVERYDATE').AsDateTime := cdsMaster.fieldbyname('CFReceiveDate').AsDateTime;
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
procedure TFM_BillEditMoveinwarehs.cdsDetailAmountAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  /////
end;

procedure TFM_BillEditMoveinwarehs.cdsDetailAmountBeforeEdit(
  DataSet: TDataSet);
begin
  inherited;
  strMatID := DataSet.Fieldbyname('FMaterialID').AsString;
  strColorID := DataSet.Fieldbyname('CFColorID').AsString;
  StrCupID := DataSet.Fieldbyname('CFCupID').AsString;
  StrPackID := DataSet.Fieldbyname('CFPackID').AsString;
  strLocationOut := DataSet.Fieldbyname('CFOutLocationID').AsString;
  strLocationIn :=  DataSet.Fieldbyname('FLOCATIONID').AsString;
end;

procedure TFM_BillEditMoveinwarehs.cdsDetailAmountAfterInsert(
  DataSet: TDataSet);
begin
  inherited;
  strMatID := '';
  strColorID :='';
  StrCupID := '';
  StrpackID := '';
  strLocationOut :='';
  strLocationIn :='';
end;

end.

