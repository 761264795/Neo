unit uFrm_MoveIssueBill;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Frm_BillEditBase, 
  DB,
  DBClient, 
  
  cxGridDBTableView, Menus,
  cxEdit, 
  cxGridCustomTableView, cxGridTableView, ADODB, ActnList,
  dxBar, cxClasses, ImgList, cxGridLevel, cxControls, cxGridCustomView,
  cxGrid, StdCtrls, cxButtons, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit, cxDBEdit, cxMaskEdit,
  cxCalendar, cxContainer, ExtCtrls,StrUtils,
  DBCtrls, 
  cxCheckBox, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxDBData, cxLookAndFeelPainters, cxButtonEdit,
  dxGDIPlusClasses, jpeg, Grids, DBGrids, dxSkinsCore,
  dxSkinOffice2007Black, dxSkinOffice2007Green, dxSkinscxPCPainter,
  dxSkinsdxBarPainter, dxSkinOffice2007Blue, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, cxLabel, cxPC, cxSpinEdit;

type
  TFM_BillEditMoveIssue = class(TFM_BillEditBase)
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
    cdsDetailFSTOCKTRANSFERBILLNUM: TWideStringField;
    cdsDetailFSTOCKTRANSFERBILLENTRYSEQ: TFloatField;
    cdsDetailFEXP: TDateTimeField;
    cdsDetailFMFG: TDateTimeField;
    cdsDetailFREMARK: TWideStringField;
    cdsDetailFREVERSEBASEQTY: TFloatField;
    cdsDetailFRETURNBASEQTY: TFloatField;
    cdsDetailFBASEUNITACTUALCOST: TFloatField;
    cdsDetailFTOTALINWAREHSQTY: TFloatField;
    cdsDetailFCANINWAREHSBASEQTY: TFloatField;
    cdsDetailFPROJECTID: TWideStringField;
    cdsDetailFTRACKNUMBERID: TWideStringField;
    cdsDetailFCUSTOMERID: TWideStringField;
    cdsDetailFSUPPLIERID: TWideStringField;
    cdsDetailFSTORETYPEID: TWideStringField;
    cdsDetailCFCHECKINPUTQTY: TFloatField;
    cdsDetailCFCHECKDIFFQTY: TFloatField;
    cdsDetailCFINWAREHOUSEID: TWideStringField;
    cdsDetailCFINLOCATIONID: TWideStringField;
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
    cdsMasterFRECEIPTSTORAGEORGUNITID: TWideStringField;
    cdsMasterFISSUECOMPANYORGUNITID: TWideStringField;
    cdsMasterFRECEIPTCOMPANYORGUNITID: TWideStringField;
    cdsMasterFMODIFICATIONTIME: TDateTimeField;
    cdsMasterFMODIFIERID: TWideStringField;
    cdsMasterFMONTH: TFloatField;
    cdsMasterFDAY: TFloatField;
    cdsMasterCFISBADSHOE: TFloatField;
    cdsMasterCFSUBBILLTYPE: TWideStringField;
    cdsDetailCFAssistNum: TWideStringField;
    dbgList2cfMaterialNumber: TcxGridDBColumn;
    dbgList2CFCOLORName: TcxGridDBColumn;
    dbgList2CFCUPName: TcxGridDBColumn;
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
    cdsDetailAmountFMATERIALID: TWideStringField;
    cdsDetailAmountCFCOLORID: TWideStringField;
    cdsDetailAmountCFCUPID: TWideStringField;
    dbgList2cfMaterialName: TcxGridDBColumn;
    cdsDetailAmountcfMaterialName: TStringField;
    cdsDetailAmountCFCOLORName: TStringField;
    cdsDetailAmountCFCupName: TStringField;
    cdsDetailAmountfkCalculated: TStringField;
    cdsDetailAmountCFInWarehouseID: TStringField;
    cdsMasterFCreatorName: TStringField;
    cdsMasterFAuditorName: TStringField;
    cdsDetailAmountCFPACKName: TStringField;
    cdsDetailAmountCFPacknum: TIntegerField;
    dbgList2Column1: TcxGridDBColumn;
    dbgList2Column2: TcxGridDBColumn;
    cdsInStorageOrg: TClientDataSet;
    dsInStorageORg: TDataSource;
    cdsDetailAmountCFPackID: TStringField;
    cdsDetailAmountFSourceBillID: TStringField;
    cdsDetailAmountFSourceBillNumber: TStringField;
    cdsDetailAmountFSOURCEBILLENTRYID: TStringField;
    cdsDetailAmountCFOldPackID: TStringField;
    cdsDetailAmountcfoldPackNum: TIntegerField;
    cdsDetailAmountCFSIZEGROUPID: TStringField;
    cdsDetailAmountfTotaLQty: TIntegerField;
    dbgList2Column3: TcxGridDBColumn;
    actFindShuPai: TAction;
    cdsDetailAmountFWAREHOUSEID2: TWideStringField;
    dbgList2CFColorCode: TcxGridDBColumn;
    cdsDetailAmountCFColorCode: TStringField;
    cdsMasterCFINPUTWAY: TWideStringField;
    updateQty: TMenuItem;
    bt_CtrlQ: TdxBarButton;
    bt_Ctrl_B: TdxBarButton;
    bt_Ctrl_J: TdxBarButton;
    cdsDetailcfdpprice: TFloatField;
    cdsDetailcfdpamount: TFloatField;
    cdsDetailAmountcfdpprice: TFloatField;
    cdsDetailAmountcfdpamount: TFloatField;
    dbgList2Column4: TcxGridDBColumn;
    dbgList2Column5: TcxGridDBColumn;
    cdsDetailCFOldPackID: TWideStringField;
    n_alterInWhs: TMenuItem;
    cxLabel2: TcxLabel;
    cxbtnInWare: TcxButtonEdit;
    cxedtInware: TcxDBTextEdit;
    cxLabel3: TcxLabel;
    cxcmbOrderType: TcxDBLookupComboBox;
    cxDBCheckBox3: TcxDBCheckBox;
    dsOrderType: TDataSource;
    cdswarehouse: TClientDataSet;
    cdsDetailAmountCFBrandName: TWideStringField;
    cdsDetailAmountcfattributeName: TWideStringField;
    cdsDetailAmountCfbrandid: TWideStringField;
    cdsDetailAmountcfattributeid: TWideStringField;
    cdsDetailAmountFLOCATIONID: TWideStringField;
    cdsDetailAmountCFLocName: TStringField;
    cdsDetailAmountCFNUnitName: TStringField;
    cdsDetailAmountFRemark: TWideStringField;
    cdsDetailAmountCFInLocName: TWideStringField;
    dbgList2FRemark: TcxGridDBColumn;
    dbgList2CFUnitName: TcxGridDBColumn;
    dbgList2CFInLocName: TcxGridDBColumn;
    dbgList2CFOutLocName: TcxGridDBColumn;
    dbgList2cfattributeName: TcxGridDBColumn;
    dbgList2CFBrandName: TcxGridDBColumn;
    cdsMasterCFINWAREHOUSEID: TWideStringField;
    cdsMasterCFOutWAREHOUSEID: TWideStringField;
    cdsMasterCFORDERTYPEID: TWideStringField;
    cdsMasterCFISPROCDUCT: TIntegerField;
    cdsMasterCFSendWareName: TStringField;
    cdsMasterCFReceivWareName: TStringField;
    cdsMasterCFISPACKING: TFloatField;
    cdsMasterCFModifierName: TStringField;
    cxLabel4: TcxLabel;
    cdsDetailTracyFID: TWideStringField;
    cdsDetailTracyFMATERIALID: TWideStringField;
    cdsDetailTracyFWAREHOUSEID: TWideStringField;
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
    cdsDetailTracyFUNITID: TWideStringField;
    cdsDetailTracyFBASEUNITID: TWideStringField;
    cdsDetailTracyFASSISTUNITID: TWideStringField;
    cdsDetailTracyFREASONCODEID: TWideStringField;
    cdsDetailTracyFSTORAGEORGUNITID: TWideStringField;
    cdsDetailTracyFCOMPANYORGUNITID: TWideStringField;
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
    cdsDetailTracyFSTOCKTRANSFERBILLID: TWideStringField;
    cdsDetailTracyFSTOCKTRANSBILLENTRYID: TWideStringField;
    cdsDetailTracyFSTOCKTRANSFERBILLNUM: TWideStringField;
    cdsDetailTracyFSTOCKTRANSFERBILLENTRYSEQ: TFloatField;
    cdsDetailTracyFEXP: TDateTimeField;
    cdsDetailTracyFMFG: TDateTimeField;
    cdsDetailTracyFREVERSEBASEQTY: TFloatField;
    cdsDetailTracyFRETURNBASEQTY: TFloatField;
    cdsDetailTracyFBASEUNITACTUALCOST: TFloatField;
    cdsDetailTracyFTOTALINWAREHSQTY: TFloatField;
    cdsDetailTracyFCANINWAREHSBASEQTY: TFloatField;
    cdsDetailTracyFPROJECTID: TWideStringField;
    cdsDetailTracyFTRACKNUMBERID: TWideStringField;
    cdsDetailTracyFCUSTOMERID: TWideStringField;
    cdsDetailTracyFSUPPLIERID: TWideStringField;
    cdsDetailTracyFSTORETYPEID: TWideStringField;
    cdsDetailTracyCFCHECKINPUTQTY: TFloatField;
    cdsDetailTracyCFCHECKDIFFQTY: TFloatField;
    cdsDetailTracyCFINLOCATIONID: TWideStringField;
    cdsDetailTracyCFCUPID: TWideStringField;
    cdsDetailTracyCFPACKID: TWideStringField;
    cdsDetailTracyCFSIZESID: TWideStringField;
    cdsDetailTracyCFCOLORID: TWideStringField;
    cdsDetailTracyCFPACKNUM: TFloatField;
    cdsDetailTracyCFSIZEGROUPID: TWideStringField;
    cdsDetailTracyCFINWAREHOUSEID: TWideStringField;
    cdsDetailTracyCFAssistNum: TWideStringField;
    cdsDetailTracycfdpprice: TFloatField;
    cdsDetailTracycfdpamount: TFloatField;
    cdsDetailTracyCFOldPackID: TWideStringField;
    cdsDetailTracycfMaterialName: TStringField;
    cdsDetailTracyCFColorCode: TStringField;
    cdsDetailTracyCFColorName: TStringField;
    cdsDetailTracyCFCupName: TStringField;
    cdsDetailTracycfMaterialNumber: TStringField;
    cdsDetailTracyCFPACKName: TStringField;
    cdsDetailTracyFRemark: TWideStringField;
    cdsDetailTracyCFUnitName: TStringField;
    cdsDetailTracyCFInLocName: TWideStringField;
    cdsDetailTracyCFOutLocName: TStringField;
    cdsDetailTracycfattributeid: TWideStringField;
    cdsDetailTracyCfbrandid: TWideStringField;
    cdsDetailTracycfattributeName: TWideStringField;
    cdsDetailTracyCFBrandName: TWideStringField;
    cxgridDetialFSEQ: TcxGridDBColumn;
    cxgridDetialFQTY: TcxGridDBColumn;
    cxgridDetialFPRICE: TcxGridDBColumn;
    cxgridDetialFAMOUNT: TcxGridDBColumn;
    cxgridDetialFTOTALINWAREHSQTY: TcxGridDBColumn;
    cxgridDetialCFCHECKINPUTQTY: TcxGridDBColumn;
    cxgridDetialcfMaterialName: TcxGridDBColumn;
    cxgridDetialCFColorCode: TcxGridDBColumn;
    cxgridDetialCFColorName: TcxGridDBColumn;
    cxgridDetialCFCupName: TcxGridDBColumn;
    cxgridDetialcfMaterialNumber: TcxGridDBColumn;
    cxgridDetialCFPACKName: TcxGridDBColumn;
    cxgridDetialFRemark: TcxGridDBColumn;
    cxgridDetialCFUnitName: TcxGridDBColumn;
    cxgridDetialCFInLocName: TcxGridDBColumn;
    cxgridDetialCFOutLocName: TcxGridDBColumn;
    cxgridDetialcfattributeName: TcxGridDBColumn;
    cxgridDetialCFBrandName: TcxGridDBColumn;
    cxgridDetialCFCHECKDIFFQTY: TcxGridDBColumn;
    cxgridDetialCFPACKNUM: TcxGridDBColumn;
    cxgridDetialcfdpprice: TcxGridDBColumn;
    cdsDetailTracyCFSizeCode: TWideStringField;
    cdsDetailTracyCFSizeName: TWideStringField;
    cxgridDetialCFSizeCode: TcxGridDBColumn;
    cxgridDetialCFSizeName: TcxGridDBColumn;
    cdsDetailAmountFBASEUNITID: TWideStringField;
    dbgList2Column6: TcxGridDBColumn;
    cdsDetailAmountFprice: TFloatField;
    cdsDetailAmountFAmount: TFloatField;
    cdsDetailAmountCFINLOCATIONID: TWideStringField;
    btn_PackingList: TdxBarButton;
    procedure FormCreate(Sender: TObject);
    procedure cdsDetailNewRecord(DataSet: TDataSet);
    procedure cdsDetailFMATERIALIDChange(Sender: TField);
    procedure cdsDetailFQTYChange(Sender: TField);
    procedure actGetBillStatusExecute(Sender: TObject);
    procedure actSetBillStatusExecute(Sender: TObject);
    procedure cdsDetailAmountNewRecord(DataSet: TDataSet);
    procedure dbgList2CFInWarehouseNumberPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure cdsDetailBeforePost(DataSet: TDataSet);
    procedure dbgList2cfMaterialNumberPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure dbgList2CFCUPNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure dbgList2CFCOLORNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cdsDetailAmountBeforePost(DataSet: TDataSet);
    procedure bbtCheckClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbgList2Column1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cdsDetailAmountCFPackIDChange(Sender: TField);
    procedure cdsDetailAmountCFPacknumChange(Sender: TField);
    procedure dbgList2Editing(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure cdsDetailAmountCalcFields(DataSet: TDataSet);
    procedure dbgList2FocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure actAuditExecute(Sender: TObject);
    procedure actUnAuditExecute(Sender: TObject);
    procedure barbtnNewClick(Sender: TObject);
    procedure cdsDetailAmountAfterPost(DataSet: TDataSet);
    procedure actDeleteExecute(Sender: TObject);
    procedure actReportDesignExecute(Sender: TObject);
    procedure actReportViewExecute(Sender: TObject);
    procedure cdsDetailAmountAfterInsert(DataSet: TDataSet);
    procedure cdsDetailAmountAfterDelete(DataSet: TDataSet);
    procedure Label10Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cxdblookupInputwayEditing(Sender: TObject;
      var CanEdit: Boolean);
    procedure pmDetailPopup(Sender: TObject);
    procedure updateQtyClick(Sender: TObject);
    procedure bt_CtrlQClick(Sender: TObject);
    procedure bt_Ctrl_BClick(Sender: TObject);
    procedure bt_Ctrl_JClick(Sender: TObject);
    procedure actF11Execute(Sender: TObject);
    procedure dxBarCodeSMClick(Sender: TObject);
    procedure n_alterInWhsClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxbtnNUmberPropertiesChange(Sender: TObject);
    procedure cxbtnInWarePropertiesChange(Sender: TObject);
    procedure cdsMasterCalcFields(DataSet: TDataSet);
    procedure cxdblookupInputwayPropertiesCloseUp(Sender: TObject);
    procedure cxbtnNUmberPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxbtnInWarePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxPageDetailChange(Sender: TObject);
    procedure girdListDblClick(Sender: TObject);
    procedure girdListKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cdswarehouseFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure cdsMasterBeforePost(DataSet: TDataSet);
    procedure dbgList2CFOutLocNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure dbgList2CFInLocNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btn_PackingListClick(Sender: TObject);
    procedure btnEnter(Sender: TObject);
    procedure btnExit(Sender: TObject);
    procedure btnKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cdsMasterCFINWAREHOUSEIDChange(Sender: TField);
    procedure cdsMasterCFOutWAREHOUSEIDChange(Sender: TField);
    procedure actPullExecute(Sender: TObject);
    procedure cdsDetailAmountBeforeEdit(DataSet: TDataSet);
    procedure actPushExecute(Sender: TObject);
  private
     fHasInLocation : Integer;
     strWareHouseID : string;
     CFInWarehouseID : string;
     INM180 : Integer;  ///是否启用单据扫描校验
     strLocationOut,strLocationIn : string;
     procedure calAmt(DataSet: TDataSet);override;
    { Private declarations }
  public
    { Public declarations }
    //打开单据编辑界面(主键字段, 字段值)

    procedure Open_Bill(KeyFields: String; KeyValues: String); override;
    //保存单据
    function ST_Save : Boolean; override;
    function GetWAREHOUSEID(StorageOrgID : string=''):string;
    procedure OPenFindWare(StorageOrgID : string);
     procedure AddDetailRecord;override;
  end;

var
  FM_BillEditMoveIssue: TFM_BillEditMoveIssue;
  function EditMoveIssue_Frm(KeyValues : string):Boolean;    //打开调拨出库单开单界面

implementation

uses FrmCliDM,Pub_Fun,uSysDataSelect,uMaterDataSelectHelper,uPackingListFrm,
  uPostReqToIsSueFrm,uMoveIssueToMoveInFrm;

{$R *.dfm}
procedure TFM_BillEditMoveIssue.OPenFindWare(StorageOrgID : string);
var
  strSql,ErrMsg : string;
begin
  inherited;
  try
    strSql :=' select FID,Fnumber,Fname_l2,FhelpCode,fhaslocation,CFCustomerID,fstorageorgid from t_Db_Warehouse where FWhState=1 and fstorageorgid='+quotedstr(StorageOrgID);
    Clidm.Get_OpenSQL(CliDM.cdstemp,strsql,ErrMsg);
    cdswarehouse.Data := CliDM.cdstemp.Data;
    CliDM.cdstemp.Close;
  except
    on E : Exception do
    begin
      ShowMsg(Handle, '查询仓库数据出错:'+E.Message+' '+ErrMsg ,[]);
      Abort;
    end;
  end;

end;
function EditMoveIssue_Frm(KeyValues : string):Boolean;    //打开调拨出库单开单界面
begin
  Result := True;
  if FM_BillEditMoveIssue <> nil then
  begin
    Gio.AddShow('调拨出库单EditMoveIssue_Frm已经存在 - 开始');
    if (FM_BillEditMoveIssue.Visible) and (FM_BillEditMoveIssue.Showing) then
    begin
      Gio.AddShow('调拨出库单EditMoveIssue_Frm已经存在 - 显示到最前面');
      FM_BillEditMoveIssue.SetFocus;
    end;  
     Exit;
  end;
  try
    Gio.AddShow('调拨出库单开始创建');
    Application.CreateForm(TFM_BillEditMoveIssue, FM_BillEditMoveIssue);
    FM_BillEditMoveIssue.Open_Bill('FID',KeyValues);
    FM_BillEditMoveIssue.Show;
    if FM_BillEditMoveIssue <> nil then
    if FM_BillEditMoveIssue.Visible then FM_BillEditMoveIssue.SetFocus;
  except
    Gio.AddShow('调拨出库单创建出错,自动释放窗体');
    FM_BillEditMoveIssue := nil;
    FM_BillEditMoveIssue.Free;
  end;
end;

procedure TFM_BillEditMoveIssue.FormCreate(Sender: TObject);
var
  strsql,ErrMsg : string;
begin
  sBillTypeID := BillConst.BILLTYPE_DT;  //单据类型FID
  inherited;
  Self.ReportDir:='调拨出库单';
  sKeyFields := 'FmaterialID;CFColorID;CFCupID;CFpackID;FLOCATIONID,CFINLOCATIONID';
  cdswarehouse.Data := CliDM.cdsWarehouse.Data;
  Self.Bill_Sign := 'T_IM_MoveIssueBill';
  Self.BillEntryTable := 'T_IM_MoveIssueBillEntry';
  setkeyFieldList('cfMaterialNumber;CFColorCode;CFPackName;CFCupName;CFInLocName;CFOutLocName');
end;
procedure TFM_BillEditMoveIssue.Open_Bill(KeyFields, KeyValues: String);
var OpenTables: array[0..1] of string;
    _cds: array[0..1] of TClientDataSet;
    ErrMsg : string;

begin
  OpenTables[0] := 'T_IM_MoveIssueBill';
  OpenTables[1] := 'T_IM_MoveIssueBillEntry';
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
      FieldByName('FID').AsString := CliDM.GetEASSID(UserInfo.T_IM_MoveIssueBill);
      FieldByName('FCREATETIME').AsDateTime := CliDM.Get_ServerTime;
      FieldByName('FNUMBER').AsString := CliDM.GetSCMBillNum(sBillTypeID,UserInfo.Branch_Flag,sBillFlag,true,ErrMsg);
      FieldByName('FBIZDATE').AsDateTime := CliDM.Get_ServerTime;
      FieldByName('FCREATORID').AsString := UserInfo.LoginUser_FID;
      FieldByName('FBASESTATUS').AsInteger := 1;  //保存状态
      FieldByName('FLASTUPDATEUSERID').AsString := UserInfo.LoginUser_FID;
      FieldByName('FLASTUPDATETIME').AsDateTime := CliDM.Get_ServerTime;
      FieldByName('FMODIFIERID').AsString := UserInfo.LoginUser_FID;
      FieldByName('FMODIFICATIONTIME').AsDateTime := CliDM.Get_ServerTime;
      FieldByName('FCONTROLUNITID').AsString := UserInfo.FCONTROLUNITID;     //控制单元，从服务器获取
      FieldByName('FStorageOrgUnitID').AsString := UserInfo.Branch_ID;   //库存组织（调出）
      FieldByName('FRECEIPTSTORAGEORGUNITID').AsString := UserInfo.Branch_ID;  //库存组织（调入）
      FieldByName('FReceiptCompanyOrgUnitID').AsString := UserInfo.Branch_ID;  //调入财务组织
      FieldByName('FIssueCompanyOrgUnitID').AsString := UserInfo.Branch_ID;    //调出财务组织
      FieldByName('FBILLTYPEID').AsString := '50957179-0105-1000-e000-016ec0a812fd463ED552';    //单据类型： 调拨出库单 20120210
      FieldByName('FIsInitBill').AsInteger := 0;  //是否是初始化单 0否 1是  20120406 用于月结时检查未生成凭证单据用
      FieldByName('FMONTH').AsString := FormatDateTime('YYYYMM',UserInfo.ServerTime);
      FieldByName('FDAY').AsString := FormatDateTime('YYYYMMDD',UserInfo.ServerTime);
      FieldByName('CFINPUTWAY').AsString :=  'NOTPACK';
      FieldByName('fsourcebillid').AsString := CliDM.GetEASSID('2239F30A');
      FieldByName('CFISPROCDUCT').AsFloat := 0;
    end;
  end
  else
  begin
    OPenFindWare(cdsMaster.fieldbyname('FReceiptStorageOrgUnitID').AsString);
  end;

  inherited;
end;

function TFM_BillEditMoveIssue.ST_Save: Boolean;
var ErrMsg,CFInWarehouseID,strsql : string;
   _cds: array[0..1] of TClientDataSet;
   OpenTables: array[0..1] of string;
   InWarehouse_Repeat : Boolean;
   DetailSum,AmountSum : Double;
begin
  OpenTables[0] := 'T_IM_MoveIssueBill';
  OpenTables[1] := 'T_IM_MoveIssueBillEntry';

  Result := True;
  if cdsDetailAmount.State in DB.dsEditModes then
   cdsDetailAmount.Post;
  AmountSum := 0;
  DetailSum := 0;
  try
    InWarehouse_Repeat := False;
    //cdsDetailAmount.OnCalcFields := nil;
    cdsDetailAmount.BeforePost := nil;
    cdsDetailAmount.DisableControls;
    cdsDetailAmount.First;
    CFInWarehouseID := cdsDetailAmount.FieldByName('CFInWarehouseID').AsString;
    while not cdsDetailAmount.Eof do
    begin
      AmountSum := AmountSum + cdsDetailAmount.fieldByName('fTotaLQty').AsFloat;
      if CFInWarehouseID<>cdsDetailAmount.FieldByName('CFInWarehouseID').AsString then
      begin
        InWarehouse_Repeat := True;

      end;
      cdsDetailAmount.Next;
    end;
  finally
    cdsDetailAmount.BeforePost := cdsDetailAmountBeforePost;
    cdsDetailAmount.EnableControls;
  end;
  if InWarehouse_Repeat then
  begin
    ShowError(Handle, '保存失败！ 同一单据入库仓库必须相同!',[]);
    abort;
  end;
  if AmountSum=0 then
  begin
    ShowError(Handle, '单据分录数量为0,不允许保存!',[]);
    abort;
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
  end;}
  if cdsMaster.State in db.dsEditModes then
     cdsMaster.Post;
  if cdsDetail.State in db.dsEditModes then
     cdsDetail.Post;
  try
    cdsDetail.DisableControls;
    cdsDetail.First;
    while not cdsDetail.Eof do
    begin
      DetailSum := DetailSum + cdsDetail.fieldByName('FQTY').AsFloat;
      cdsDetail.Next;
    end;
    if AmountSum<>DetailSum then
    begin
      Gio.AddShow('横排数量【'+FloatToStr(AmountSum)+'】与竖排数量不一致【'+FloatToStr(DetailSum)+'】，不能保存！');
      ShowError(Handle, '横排数量【'+FloatToStr(AmountSum)+'】与竖排数量不一致【'+FloatToStr(DetailSum)+'】，不能保存！',[]);
      abort;
    end;
  finally
    cdsDetail.EnableControls;
  end;
  //定义提交的数据集数据
  _cds[0] := cdsMaster;
  _cds[1] := cdsDetail;

  //提交数据
  try
    if CliDM.Apply_Delta_Ex(_cds,['T_IM_MoveIssueBill','T_IM_MoveIssueBillEntry'],ErrMsg) then
    begin
       //ShowMsg('保存成功！',[]);
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
  //用Open_Bill 方法太慢了  owen
  try
    if not CliDM.Get_OpenClients(BillIDValue,_cds,OpenTables,ErrMsg) then
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
end;

procedure TFM_BillEditMoveIssue.cdsDetailNewRecord(DataSet: TDataSet);
begin
  inherited;
  with DataSet do
  begin
    DataSet.FieldByName('FID').AsString := CliDM.GetEASSID(UserInfo.T_IM_MoveIssueBillEntry);
    DataSet.FieldByName('fstocktransferbillid').AsString := cdsMaster.fieldbyname('fsourcebillid').AsString;
    DataSet.FieldByName('FStockTransBillEntryID').AsString := CliDM.GetEASSID('18167B88');
    DataSet.FieldByName('FParentID').AsString := BillIDValue;
    DataSet.FieldByName('FWAREHOUSEID').AsString := cdsMaster.Fieldbyname('CFOutWAREHOUSEID').AsString;      //调拨出库仓
    DataSet.FieldByName('FStorageOrgUnitID').AsString := UserInfo.Branch_ID; //库存组织
    DataSet.FieldByName('FCompanyOrgUnitID').AsString := UserInfo.Branch_ID; //财务组织
    DataSet.FieldByName('FSTORETYPEID').AsString := '181875d5-0105-1000-e000-0111c0a812fd97D461A6'; //库存类型：普通
    DataSet.FieldByName('FISPRESENT').AsFloat := 0; //是否赠品：0 否
    DataSet.FieldByName('CFINWAREHOUSEID').AsString := cdsMaster.Fieldbyname('CFINWAREHOUSEID').AsString;
    DataSet.FieldByName('Fstoretypeid').AsString := '181875d5-0105-1000-e000-0111c0a812fd97D461A6';
  end;
end;

procedure TFM_BillEditMoveIssue.cdsDetailFMATERIALIDChange(Sender: TField);
var CFSIZEGROUPID,FBASEUNITID : String;
begin
  inherited;

end;

procedure TFM_BillEditMoveIssue.cdsDetailFQTYChange(Sender: TField);
begin
  inherited;
  Sender.DataSet.fieldByName('FBASEQTY').AsFloat  := Sender.AsFloat;
  Sender.DataSet.FieldByName('Fassociateqty').AsFloat := Sender.AsFloat;
end;

procedure TFM_BillEditMoveIssue.actGetBillStatusExecute(Sender: TObject);
begin
  BillInfo.IsAduit := cdsMaster.FieldByName('FBASESTATUS').AsInteger = 4;
  inherited;
end;

procedure TFM_BillEditMoveIssue.actSetBillStatusExecute(Sender: TObject);
begin
  BillInfo.IsAduit := cdsMaster.FieldByName('FBASESTATUS').AsInteger = 4;
  inherited;

end;

procedure TFM_BillEditMoveIssue.cdsDetailAmountNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  //Dataset.fieldbyname('FBASESTATUS').asfloat := 1;
  DataSet.FieldByName('FWAREHOUSEID').AsString := cdsMaster.fieldbyname('CFOutWAREHOUSEID').AsString;    //调拨出库仓
  DataSet.FieldByName('CFInWarehouseID').AsString := cdsMaster.fieldbyname('CFINWAREHOUSEID').AsString;    //调拨入库仓
end;

procedure TFM_BillEditMoveIssue.dbgList2CFInWarehouseNumberPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var CFInWarehouseID : string;
begin  //查询出库仓库
  inherited;

  if CFInWarehouseID <> '' then
  begin
    cdsDetailAmount.FieldByName('CFInWarehouseID').AsString := CFInWarehouseID;
  end;
end;

procedure TFM_BillEditMoveIssue.cdsDetailBeforePost(DataSet: TDataSet);
begin
  inherited;                                                                                
  DataSet.FieldByName('FCOMPANYORGUNITID').AsString := UserInfo.Branch_ID;
 { if DataSet.FieldByName('CFINWAREHOUSEID').AsString = '' then
  begin
    ShowMsg(Handle, '收货仓库不能为空！',[]);
    abort;
  end;

  if DataSet.FieldByName('CFINWAREHOUSEID').AsString = DataSet.FieldByName('FWAREHOUSEID').AsString then
  begin
    ShowMsg(Handle, '收货仓库和出库仓库不能相同！',[]);
    abort;
  end;   }
  DataSet.FieldByName('cfdpamount').AsFloat := DataSet.FieldByName('cfdpprice').AsFloat*DataSet.FieldByName('FQTY').AsFloat;
  DataSet.FieldByName('FWAREHOUSEID').AsString := cdsMaster.Fieldbyname('CFOutWAREHOUSEID').AsString;      //调拨出库仓
  DataSet.FieldByName('CFINWAREHOUSEID').AsString := cdsMaster.Fieldbyname('CFINWAREHOUSEID').AsString;
end;

procedure TFM_BillEditMoveIssue.dbgList2cfMaterialNumberPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  FindMaterial;
end;

procedure TFM_BillEditMoveIssue.dbgList2CFCUPNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  FindCup; //弹选内长
end;

procedure TFM_BillEditMoveIssue.dbgList2CFCOLORNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  FindColor;  //弹选颜色
end;

procedure TFM_BillEditMoveIssue.cdsDetailAmountBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  {IF DataSet.FieldByName('CFInWarehouseID').AsString = '' then
  begin
    ShowMsg(Handle, '入库仓库不能为空!',[]);
    abort;
  end;
  IF DataSet.FieldByName('FWAREHOUSEID').AsString = '' then
  begin
    ShowMsg(Handle, '出库仓库不能为空!',[]);
    abort;
  end;  }

  {IF DataSet.FieldByName('CFInWarehouseID').AsString = DataSet.FieldByName('FWAREHOUSEID').AsString then
  begin
    ShowMsg(Handle, '出库仓库不能与入库仓库相同!',[]);
    abort;
  end;  }
end;

procedure TFM_BillEditMoveIssue.bbtCheckClick(Sender: TObject);
begin
  if trim(cdsMaster.FieldByName('CFINPUTWAY').AsString) ='PACK' then
  begin
    ShowMsg(Handle, '选择配码录入方式不允许进行扫描校验!',[]);
    abort;
  end;
    inherited;

end;

procedure TFM_BillEditMoveIssue.FormShow(Sender: TObject);
begin
  inherited;
  sIniBillFlag :='MO';
  sSPPack := 'STOCK';
end;

procedure TFM_BillEditMoveIssue.dbgList2Column1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
   FindPack;
end;

procedure TFM_BillEditMoveIssue.cdsDetailAmountCFPackIDChange(
  Sender: TField);
begin
  inherited;
  if cdsDetailAmount.FieldByName('CFPackNum').AsInteger>0 then
    PackNumChang(cdsDetailAmount,cdsDetailAmount.FieldByName('CFSIZEGROUPID').AsString,cdsDetailAmount.fieldbyname('CFPackID').AsString);
end;

procedure TFM_BillEditMoveIssue.cdsDetailAmountCFPacknumChange(
  Sender: TField);
begin
  inherited;
  if cdsDetailAmount.FieldByName('CFPackNum').AsInteger>0 then
    PackNumChang(cdsDetailAmount,cdsDetailAmount.FieldByName('CFSIZEGROUPID').AsString,cdsDetailAmount.fieldbyname('CFPackID').AsString);
end;

procedure TFM_BillEditMoveIssue.dbgList2Editing(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  var AAllow: Boolean);
  var
    Focused_Field : string;
begin
  inherited;
  Focused_Field := TcxGridDBTableView(Sender).Columns[AItem.Index].DataBinding.FieldName;
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
  if fHasLocation =0 then
  if FocuField='CFOutLocName' then
    AAllow :=False;
  if fHasInLocation =0 then
  if FocuField='CFInLocName' then
    AAllow :=False;
end;

procedure TFM_BillEditMoveIssue.cdsDetailAmountCalcFields(
  DataSet: TDataSet);
begin
  //inherited;
  if DataSet.FindField('fTotaLQty')<> nil then
    DataSet.FieldByName('fTotaLQty').AsInteger :=
    DataSet.FieldByName('fAmount_1').AsInteger +
    DataSet.FieldByName('fAmount_2').AsInteger +
    DataSet.FieldByName('fAmount_3').AsInteger +
    DataSet.FieldByName('fAmount_4').AsInteger +
    DataSet.FieldByName('fAmount_5').AsInteger +
    DataSet.FieldByName('fAmount_6').AsInteger +
    DataSet.FieldByName('fAmount_7').AsInteger +
    DataSet.FieldByName('fAmount_8').AsInteger +
    DataSet.FieldByName('fAmount_9').AsInteger +
    DataSet.FieldByName('fAmount_10').AsInteger+
    DataSet.FieldByName('fAmount_11').AsInteger+
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

procedure TFM_BillEditMoveIssue.dbgList2FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;
//
end;

procedure TFM_BillEditMoveIssue.actAuditExecute(Sender: TObject);
var
  strsql,strError : string;
begin
  CliDM.Chk_UserRight(UserInfo.T_IM_MoveIssueBill,'moveissue_audit'); //审核权限

  {if (INM180=0) or (INM180=1) then
  begin
    strsql :=' select 1 from T_IM_MoveIssueBillEntry where nvl(CFCheckinputqty,0)<>0 and fparentID='+quotedstr(cdsMaster.fieldbyname('FID').AsString);
    Clidm.Get_OpenSQL(CliDM.cdstemp,strsql,strError);
    if CliDM.cdstemp.RecordCount=0 then
    begin
      if (INM180=0) then
      begin
        ShowMsg(Handle, '调拨出库单必须进行扫描校验后才能审核!',[]);
        Abort;
      end;
      if (INM180=1) then
      begin
        if ShowYesNo(Handle, '调拨出库单没有进行扫描校验是否要审核单据?',[]) = idYes then
        begin

        end
        else
          Abort;
      end;
    end;
  end;  }
  inherited;
end;

procedure TFM_BillEditMoveIssue.actUnAuditExecute(Sender: TObject);
begin
  CliDM.Chk_UserRight(UserInfo.T_IM_MoveIssueBill,'moveissue_unAudit'); //反审核权限
  inherited;
end;

procedure TFM_BillEditMoveIssue.barbtnNewClick(Sender: TObject);
begin
  CliDM.Chk_UserRight(UserInfo.T_IM_MoveIssueBill,'moveissue_new'); //新增权限

  BillInfo.IsAduit := False;
  cxBIZDATE.Enabled := not BillInfo.IsAduit;
  txDescription.Enabled := not BillInfo.IsAduit;
  if dbgList2.GetColumnByFieldName('cfMaterialNumber') <> nil then
    dbgList2.GetColumnByFieldName('cfMaterialNumber').Options.Editing := not BillInfo.IsAduit;
  if dbgList2.GetColumnByFieldName('CFColorName') <> nil then
    dbgList2.GetColumnByFieldName('CFColorName').Options.Editing := not BillInfo.IsAduit;
  if dbgList2.GetColumnByFieldName('CFCupName') <> nil then
    dbgList2.GetColumnByFieldName('CFCupName').Options.Editing := not BillInfo.IsAduit;
  inherited;
  cdsDetailAmount.Close;
  cdsDetailAmount.CreateDataSet;
  cdsDetailAmount.EmptyDataSet;
  img_NewBill.Visible := True;
  im_Audit.Visible := False;
  BillInfo.IsAduit := False;
end;

procedure TFM_BillEditMoveIssue.cdsDetailAmountAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  strWareHouseID := DataSet.fieldbyname('CFInWarehouseID').AsString;
end;

procedure TFM_BillEditMoveIssue.actDeleteExecute(Sender: TObject);
begin
  CliDM.Chk_UserRight(UserInfo.T_IM_MoveIssueBill,'moveissue_delete'); //删除权限
  inherited;

end;

procedure TFM_BillEditMoveIssue.actReportDesignExecute(Sender: TObject);
begin
  CliDM.Chk_UserRight(UserInfo.T_IM_MoveIssueBill,'moveissue_print'); //打印权限
  inherited;

end;

procedure TFM_BillEditMoveIssue.actReportViewExecute(Sender: TObject);
begin
  CliDM.Chk_UserRight(UserInfo.T_IM_MoveIssueBill,'moveissue_print'); //打印权限
  inherited;

end;

procedure TFM_BillEditMoveIssue.cdsDetailAmountAfterInsert(
  DataSet: TDataSet);
begin
  inherited;
  strMatID := '';
  strColorID :='';
  StrCupID := '';
  StrpackID := '';
  strLocationOut :='';
  strLocationIn :='';
  actSetBillStatus.Execute;  //设置表头的调入库存组织
end;

procedure TFM_BillEditMoveIssue.cdsDetailAmountAfterDelete(
  DataSet: TDataSet);
begin
  inherited;
  actSetBillStatus.Execute;  //设置表头的调入库存组织
end;

procedure TFM_BillEditMoveIssue.Label10Click(Sender: TObject);
begin
  inherited;
  application.MessageBox(PChar(
                         '调拨出库说明:'#13''
                          +'     *如果门店设置不允许负库存，调拨出库单审核前会检查库存'#13''
                          +'     *输入配码时尺码数不能修改，配码为空时才能输入尺码数量'#13''
                          +'     *调拨出库单审核后成功会自动生成入库门店调拨入库单'#13''
                          +'     *一张调拨出库单只能有一个入库仓库'#13''
                         ),'调拨出库说明',64);
end;

procedure TFM_BillEditMoveIssue.FormDestroy(Sender: TObject);
begin
  inherited;
  FM_BillEditMoveIssue := nil;
end;

//调入库存组织ID修改
procedure TFM_BillEditMoveIssue.cxdblookupInputwayEditing(Sender: TObject;
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

procedure TFM_BillEditMoveIssue.pmDetailPopup(Sender: TObject);
begin
  inherited;
  if trim(cdsMaster.FieldByName('CFINPUTWAY').AsString) ='PACK' then
  begin
    updateQty.Enabled := False;
  end;
  if (cdsMaster.FieldByName('FBASESTATUS').AsFloat =4) or (cdsMaster.FieldByName('FBASESTATUS').AsFloat =7)   then
    updateQty.Enabled := False;
  n_alterInWhs.Enabled := not BillInfo.IsAduit;
end;

procedure TFM_BillEditMoveIssue.updateQtyClick(Sender: TObject);
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

procedure TFM_BillEditMoveIssue.bt_CtrlQClick(Sender: TObject);
var  fAmount:integer;
begin
  inherited;
  fAmount:=strtoint(cxBaseQty.Text);
  if fAmount<0 then
    cxBaseQty.Text:=inttostr(abs(fAmount))
  else
  cxBaseQty.Text:='-'+cxBaseQty.Text;
end;

procedure TFM_BillEditMoveIssue.bt_Ctrl_BClick(Sender: TObject);
begin
  inherited;
   if pnlCodeSM.Visible then  cxCodeText.SetFocus;
end;

procedure TFM_BillEditMoveIssue.bt_Ctrl_JClick(Sender: TObject);
begin
  inherited;
  if pnlCodeSM.Visible then  cxBaseQty.SetFocus; 
end;

procedure TFM_BillEditMoveIssue.actF11Execute(Sender: TObject);
begin
  if cxdblookupInputway.EditValue='PACK' then
  begin
    ShowMsg(Handle, '对不起!此功能只支持散码输入方式!',[]);
    abort;
  end;
  inherited;
end;

procedure TFM_BillEditMoveIssue.dxBarCodeSMClick(Sender: TObject);
begin
  if cxdblookupInputway.EditValue='PACK' then
  begin
    ShowMsg(Handle, '对不起!此功能只支持散码输入方式!',[]);
    abort;
  end;
  inherited;
end;
function TFM_BillEditMoveIssue.GetWAREHOUSEID(StorageOrgID : string=''):string;
var
  sqlstr,ReturnStr: string;
  fdEnglishList, fdChineseList, fdReturnAimList,strORgID: string;
begin
  if Trim(StorageOrgID)='' then
    strORgID :=  UserInfo.Branch_ID
  else
    strORgID := StorageOrgID;
  sqlstr := 'SELECT FID,FNUMBER,FNAME_L2 FROM T_DB_WAREHOUSE(nolock) '
            +' WHERE FWHState=1 and  FSTORAGEORGID='+QuotedStr(strORgID)
            +' and FID collate Chinese_PRC_CS_AS_WS <>'+QuotedStr(UserInfo.Warehouse_FID)
            +' ORDER BY FNUMBER';

  fdEnglishList := 'Fnumber,Fname_l2';
  fdChineseList := '店铺编号,店铺名称';
  fdReturnAimList := 'FID';
  ReturnStr := ShareSelectBoxCall(sqlstr, fdEnglishList, fdChineseList, fdReturnAimList, 200);
  Result := ReturnStr;
end;
procedure TFM_BillEditMoveIssue.n_alterInWhsClick(Sender: TObject);
var CFInWarehouseID: string;
    bk : TBookmarkStr;
begin  //查询出库仓库
  inherited;
  if cdsDetailAmount.IsEmpty then Exit;
  if BillInfo.IsAduit then
  begin
    ShowMsg(Handle, '对不起!此单据已审核,不允许编辑!',[]);
    abort;
  end;
  if CFInWarehouseID <> '' then
  begin
    try
      cdsDetailAmount.DisableControls;
      bk :=  cdsDetailAmount.Bookmark;
      cdsDetailAmount.First;
      while not cdsDetailAmount.Eof do
      begin
        cdsDetailAmount.Edit;
        cdsDetailAmount.FieldByName('CFInWarehouseID').AsString := CFInWarehouseID;
        cdsDetailAmount.Post;
        cdsDetailAmount.Next;
      end;
    finally
      cdsDetailAmount.Bookmark := bk;
      cdsDetailAmount.EnableControls;
    end;
  end;
end;

procedure TFM_BillEditMoveIssue.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  //
end;

procedure TFM_BillEditMoveIssue.cxbtnNUmberPropertiesChange(
  Sender: TObject);
begin
  inherited;
  girdList.hint :='CFOutWAREHOUSEID';
  HeadAutoSelIDchange(cdswarehouse,'');
end;

procedure TFM_BillEditMoveIssue.cxbtnInWarePropertiesChange(
  Sender: TObject);
begin
  inherited;
  girdList.hint :='CFINWAREHOUSEID';
  HeadAutoSelIDchange(cdswarehouse,'');
end;

procedure TFM_BillEditMoveIssue.cdsMasterCalcFields(DataSet: TDataSet);
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
      if FindRecord1(clidm.cdsWarehouse,'FID',DataSet.fieldbyname('CFOutWAREHOUSEID').AsString,1) then
      begin
        DataSet.FieldByName('CFReceivWareName').AsString := clidm.cdsWarehouse.fieldbyname('Fname_l2').AsString;
        cxbtnNUmber.Text := clidm.cdsWarehouse.fieldbyname('Fnumber').AsString;
      end;
    end;
    if DataSet.FindField('CFSendWareName')<> nil then
    begin
      if FindRecord1(clidm.cdsWarehouse,'FID',DataSet.fieldbyname('CFINWAREHOUSEID').AsString,1) then
      begin
        DataSet.FieldByName('CFSendWareName').AsString := clidm.cdsWarehouse.fieldbyname('Fname_l2').AsString;
        cxbtnInWare.Text := clidm.cdsWarehouse.fieldbyname('Fnumber').AsString;
      end;
    end;
  finally
    if tmpbtnEdit <> nil then
      tmpbtnEdit.Properties.OnChange := event;
  end;

end;

procedure TFM_BillEditMoveIssue.cxdblookupInputwayPropertiesCloseUp(
  Sender: TObject);
begin
  inherited;
  //
end;

procedure TFM_BillEditMoveIssue.cxbtnNUmberPropertiesButtonClick(
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
          cdsMaster.FieldByName('Cfoutwarehouseid').AsString := fieldbyname('fid').AsString;
      end;
    end;
  finally
    TcxButtonEdit(Sender).Properties.OnChange := ChangEvent;
  end;

end;

procedure TFM_BillEditMoveIssue.cxbtnInWarePropertiesButtonClick(
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

procedure TFM_BillEditMoveIssue.cxPageDetailChange(Sender: TObject);
begin
  inherited;
  if cxPageDetail.ActivePage=cxTabTractDetail  then
  begin
    OpenTracyDetail('');
  end;
end;
procedure TFM_BillEditMoveIssue.calAmt(DataSet: TDataSet);
begin
  DataSet.FieldByName('FAmount').AsFloat := CliDM.SimpleRoundTo(DataSet.fieldbyname('fqty').AsFloat*DataSet.FieldByName('FPRICE').AsFloat); //金额
end;
procedure TFM_BillEditMoveIssue.girdListDblClick(Sender: TObject);
begin
  inherited;
  if tmpbtnEdit <> nil then
  if tmpbtnEdit.Name='cxbtnNUmber' then
    fHasLocation := dsHeadSel.DataSet.FieldByName('fhaslocation').AsInteger;
  if tmpbtnEdit <> nil then
  if tmpbtnEdit.Name='cxbtnInWare' then
    fHasInLocation := dsHeadSel.DataSet.FieldByName('fhaslocation').AsInteger;
end;

procedure TFM_BillEditMoveIssue.girdListKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if tmpbtnEdit <> nil then
  if tmpbtnEdit.Name='cxbtnNUmber' then
    fHasLocation := dsHeadSel.DataSet.FieldByName('fhaslocation').AsInteger;
  if tmpbtnEdit <> nil then
  if tmpbtnEdit.Name='cxbtnInWare' then
    fHasInLocation := dsHeadSel.DataSet.FieldByName('fhaslocation').AsInteger;
end;

procedure TFM_BillEditMoveIssue.cdswarehouseFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  inherited;
  if tmpbtnEdit<> nil then
  begin
    Accept:=((Pos(Trim(UpperCase(tmpbtnEdit.Text)),UpperCase(DataSet.fieldbyname('fnumber').AsString))>0) or
            (Pos(Trim(UpperCase(tmpbtnEdit.Text)),UpperCase(DataSet.fieldbyname('fname_l2').AsString))>0) or
            (Pos(Trim(UpperCase(tmpbtnEdit.Text)),UpperCase(DataSet.fieldbyname('FhelpCode').AsString))>0));
  end;
end;

procedure TFM_BillEditMoveIssue.cdsMasterBeforePost(DataSet: TDataSet);
begin
  inherited;
  if trim(DataSet.FieldByName('CFINWAREHOUSEID').AsString)=Trim(DataSet.FieldByName('CFOutWAREHOUSEID').AsString) then
  begin
    ShowMsg(Handle, '出库仓库不能与入库仓库相同!',[]);
    abort;
  end;
end;

procedure TFM_BillEditMoveIssue.dbgList2CFOutLocNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  FindLocation(cdsMaster.fieldbyname('CFOutWAREHOUSEID').AsString,'FLOCATIONID','CFOutLocName');
end;

procedure TFM_BillEditMoveIssue.dbgList2CFInLocNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  FindLocation(cdsMaster.fieldbyname('CFINWAREHOUSEID').AsString,'CFINLOCATIONID','CFInLocName');
end;

procedure TFM_BillEditMoveIssue.btn_PackingListClick(Sender: TObject);
var PKContext : TPackingContext ;
begin
  inherited;
  if cdsMaster.FieldByName('CFINPUTWAY').AsString <> 'NOTPACK' then
  begin
    ShowMsg(self.Handle,'只有散码才可以使用装箱功能! ',[]);
    Abort;
  end;
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
  PKContext.CFWAREHOUSEID  := cdsMaster.FieldByName('Cfoutwarehouseid').AsString;
  PKContext.FWAREHOUSEName := cdsMaster.FieldByName('CFReceivWareName').AsString;
  CallPackingList(PKContext);
end;

procedure TFM_BillEditMoveIssue.btnEnter(Sender: TObject);
begin
  inherited;
  //
end;

procedure TFM_BillEditMoveIssue.btnExit(Sender: TObject);
begin
  inherited;
  //
end;

procedure TFM_BillEditMoveIssue.btnKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  //
end;

procedure TFM_BillEditMoveIssue.cdsMasterCFINWAREHOUSEIDChange(
  Sender: TField);
begin
  inherited;
  FInWarehouseFID := Sender.AsString;
end;

procedure TFM_BillEditMoveIssue.cdsMasterCFOutWAREHOUSEIDChange(
  Sender: TField);
begin
  inherited;
  FOutWarehouseFID := Sender.AsString;
end;

procedure TFM_BillEditMoveIssue.actPullExecute(Sender: TObject);
begin
  inherited;
  self.Close;
  Application.CreateForm(TPostReqToIsSueFrm,PostReqToIsSueFrm);
  PostReqToIsSueFrm.OpenType := 2;
  PostReqToIsSueFrm.ShowModal;
  PostReqToIsSueFrm.Free;
end;
procedure TFM_BillEditMoveIssue.AddDetailRecord;
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
      if cdsDetail.Locate('CFColorID;CFCUPID;CFPackID;CFSizesID;CFSIZEGroupID;FMaterialID;fParentID;CFINLOCATIONID;FLOCATIONID',VarArrayOf([
        cdsDetailAmount.fieldbyname('CFColorID').AsString,cdsDetailAmount.fieldbyname('CFCUPID').AsString,cdsDetailAmount.fieldbyname('CFPackID').AsString,
        CliDM.cdsTmp.fieldbyname('Cfsizeid').AsString,cdsDetailAmount.fieldbyname('CFSIZEGroupID').AsString,cdsDetailAmount.fieldbyname('FMaterialID').AsString,BillIDValue,
       cdsDetailAmount.fieldbyname('CFINLOCATIONID').AsString,cdsDetailAmount.fieldbyname('FLOCATIONID').AsString ]), []) then  //数量为空删除
      cdsDetail.Delete;
      CliDM.cdsTmp.Next;
      Continue;
    end;
    with cdsDetail do
    begin
      if (cdsDetail.Locate('CFColorID;CFCUPID;CFPackID;CFSizesID;CFSIZEGroupID;FMaterialID;fParentID;CFINLOCATIONID;FLOCATIONID',VarArrayOf([
      cdsDetailAmount.fieldbyname('CFColorID').AsString,cdsDetailAmount.fieldbyname('CFCUPID').AsString,cdsDetailAmount.fieldbyname('CFPackID').AsString,
      CliDM.cdsTmp.fieldbyname('Cfsizeid').AsString,cdsDetailAmount.fieldbyname('CFSIZEGroupID').AsString,cdsDetailAmount.fieldbyname('FMaterialID').AsString,BillIDValue
     , cdsDetailAmount.fieldbyname('CFINLOCATIONID').AsString,cdsDetailAmount.fieldbyname('FLOCATIONID').AsString ]), []))
      or (cdsDetail.Locate('CFColorID;CFCUPID;CFPackID;CFSizesID;CFSIZEGroupID;FMaterialID;fParentID;CFINLOCATIONID;FLOCATIONID',VarArrayOf([
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
      FieldByName('CFINLOCATIONID').AsString := cdsDetailAmount.fieldbyname('CFINLOCATIONID').AsString;
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
procedure TFM_BillEditMoveIssue.cdsDetailAmountBeforeEdit(
  DataSet: TDataSet);
begin
  inherited;
  strMatID := DataSet.Fieldbyname('FMaterialID').AsString;
  strColorID := DataSet.Fieldbyname('CFColorID').AsString;
  StrCupID := DataSet.Fieldbyname('CFCupID').AsString;
  StrPackID := DataSet.Fieldbyname('CFPackID').AsString;
  strLocationIn := DataSet.Fieldbyname('CFINLOCATIONID').AsString;
  strLocationOut :=  DataSet.Fieldbyname('FLOCATIONID').AsString;
end;

procedure TFM_BillEditMoveIssue.actPushExecute(Sender: TObject);
begin
  inherited;
  if not BillInfo.IsAduit then
  begin
    ShowMsg(Handle, '当前单据未审核！',[]);
    Abort;
  end;
  Application.CreateForm(TMoveIssueToMoveInFrm,MoveIssueToMoveInFrm);
  MoveIssueToMoveInFrm.OpenType := 1;
  MoveIssueToMoveInFrm.txt_BillNumber.Text := cdsMaster.fieldbyname('Fnumber').AsString;
  MoveIssueToMoveInFrm.FsrcBillFID       := cdsMaster.fieldbyname('FID').AsString;
  MoveIssueToMoveInFrm.txt_SrcDes.Text   := txDescription.Text;
  MoveIssueToMoveInFrm.txt_OutStock.Text := txtName.Text;
  MoveIssueToMoveInFrm.txt_InStock.Text  := cxedtInware.Text;
  MoveIssueToMoveInFrm.ShowModal;
  MoveIssueToMoveInFrm.Free;
end;

end.
