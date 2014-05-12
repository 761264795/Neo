unit uPOSEditFrm;
{
  单据状态说明：
   字段 istatus和fstate =2： 结单
   字段 istatus和fstate =-1：挂单
   字段 istatus和fstate =-2：已结单的挂单

   字段CFISReturn =0 正常销售
   字段CFISReturn =1 退换货
}
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBaseEditFrm, cxCustomData, 
  DB, DBClient, StdCtrls,
  cxDBEdit, 
  cxTextEdit, cxGridLevel,
  cxGridTableView, cxGridDBTableView, cxGrid,
  ExtCtrls, cxButtonEdit, Buttons, ActnList, 
  cxButtons, 
  cxDBLookupComboBox, ADODB,
  cxDBData, Menus,
  FrmCliDM, cxEdit,
  cxGridCustomTableView, 
  cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxContainer, cxClasses,
  cxControls, cxGridCustomView, SPComm, 
  shellapi, cxStyles, 
  cxCurrencyEdit, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxLookAndFeelPainters, dxGDIPlusClasses;
type
  PosEntryInfo = class
     fmaterial_id : String;
     fmaterial_code : String;
     fcolor_id    : string;
     fsize_id     : string;
     fcup_id      : string;
     fassNumber   : string;
     qty          : Integer;
  end;
type
  TFrmPOSEdit = class(TSTBaseEdit)
    pnTop: TPanel;
    imgTop: TImage;
    pnClient: TPanel;
    pnClientClient: TPanel;
    cxGD: TcxGrid;
    cxDetail: TcxGridDBTableView;
    cxlev: TcxGridLevel;
    Panel2: TPanel;
    cxFNumber: TcxDBTextEdit;
    pnButton: TPanel;
    imgButton1: TImage;
    lbl_Code: TLabel;
    edt_sStyleBarCode: TcxButtonEdit;
    lblAmount: TLabel;
    edt_fAmount: TcxTextEdit;
    btF2: TSpeedButton;
    btF3: TSpeedButton;
    btF4: TSpeedButton;
    btF7: TSpeedButton;
    btF6: TSpeedButton;
    btF5: TSpeedButton;
    clBill: TLabel;
    actList: TActionList;
    actAddDetail: TAction;
    lbBillType: TLabel;
    lbStyleName: TLabel;
    qryStyleColor: TADOQuery;
    qryStylePack: TADOQuery;
    qryStyleSize: TADOQuery;
    dsStyleSize: TDataSource;
    dsStylePack: TDataSource;
    dsStyleColor: TDataSource;
    csRetailPRPRE: TClientDataSet;
    dsRetailPRPRE: TDataSource;
    csRetailPRPREFID: TWideStringField;
    csRetailPRPREFSEQ: TFloatField;
    csRetailPRPREFPARENTID: TWideStringField;
    csRetailPRPRECFSEQ: TFloatField;
    csRetailPRPRECFNOW_PAY_MONEY: TFloatField;
    csRetailPRPRECFHAVE_PAY_MONEY: TFloatField;
    csRetailPRPRECFEXCHANGE_RATE: TFloatField;
    csRetailPRPRECFPAYMENTTYPE: TWideStringField;
    cxDetailFSEQ: TcxGridDBColumn;
    cxDetailFID: TcxGridDBColumn;
    cxDetailFPARENTID: TcxGridDBColumn;
    cxDetailCFAMOUNT: TcxGridDBColumn;
    cxDetailCFPRICE: TcxGridDBColumn;
    cxDetailCFAGIO: TcxGridDBColumn;
    cxDetailCFAGIO_PRICE: TcxGridDBColumn;
    cxDetailCFAGIO_SUM_PRICE: TcxGridDBColumn;
    cxDetailCFBARCODE: TcxGridDBColumn;
    cxDetailCFMATERIALID: TcxGridDBColumn;
    cxDetailCFCOLORID: TcxGridDBColumn;
    cxDetailCFCUPID: TcxGridDBColumn;
    cxDetailCFSALESMANID: TcxGridDBColumn;
    cxDetailCFSIZESID: TcxGridDBColumn;
    csMaster: TClientDataSet;
    dsMaster: TDataSource;
    csDetail: TClientDataSet;
    dsDetail: TDataSource;
    cxDetailcfMaterialNumber: TcxGridDBColumn;
    cxDetailcfMaterialName: TcxGridDBColumn;
    csDetailFID: TWideStringField;
    csDetailFPARENTID: TWideStringField;
    csDetailCFPRICE: TFloatField;
    csDetailCFSUM_PRICE: TFloatField;
    csDetailCFAGIO: TFloatField;
    csDetailCFAGIO_PRICE: TFloatField;
    csDetailCFAGIO_SUM_PRICE: TFloatField;
    csDetailCFBARCODE: TWideStringField;
    csDetailCFCOST_SUM_PRICE: TFloatField;
    csDetailCFCOST_PRICE: TFloatField;
    csDetailCFPROFIT_MONEY: TFloatField;
    csDetailCFTH_BILLNO: TWideStringField;
    csDetailCFSTHYY_NAME: TWideStringField;
    csDetailCFEXPLAININFO: TWideStringField;
    csDetailCFMATERIALID: TWideStringField;
    csDetailCFCOLORID: TWideStringField;
    csDetailCFCUPID: TWideStringField;
    csDetailCFASSISTPROPERTYID: TWideStringField;
    csDetailCFSALESMANID: TWideStringField;
    csDetailCFSETTLEBACKTYPEID: TWideStringField;
    csDetailCFBACKPOINT: TFloatField;
    csDetailCFASSISTNUM: TWideStringField;
    csDetailCFSIZESID: TWideStringField;
    csDetailFSEQ1: TFloatField;
    csDetailCFAMOUNT: TFloatField;
    csDetailcfMaterialNumber: TStringField;
    csDetailcfMaterialName: TStringField;
    csDetailcfColorName: TStringField;
    csDetailcfCupName: TStringField;
    csDetailcfSIZEName: TStringField;
    cxDetailcfColorName: TcxGridDBColumn;
    cxDetailcfCupName: TcxGridDBColumn;
    cxDetailcfSIZEName: TcxGridDBColumn;
    act_F2: TAction;
    actBtOK: TAction;
    cxBillType: TcxDBLookupComboBox;
    act_F4: TAction;
    Label5: TLabel;
    act_F5: TAction;
    cxDescription: TcxDBTextEdit;
    lbWareHouse: TLabel;
    Label8: TLabel;
    lbFreQuency: TLabel;
    btF8: TSpeedButton;
    btF9: TSpeedButton;
    btF10: TSpeedButton;
    btF11: TSpeedButton;
    btF12: TSpeedButton;
    btCtrlA: TSpeedButton;
    btCtrlG: TSpeedButton;
    btCtrlDown: TSpeedButton;
    Image7: TImage;
    lblUserInifo: TLabel;
    img_help: TImage;
    lb_help: TLabel;
    lb_exit: TLabel;
    Image5: TImage;
    kingdeeURL: TImage;
    imgTopLeft: TImage;
    pnMainTop: TPanel;
    imgTop2: TImage;
    imgStates1: TImage;
    lbStatusName: TLabel;
    imgPOSumPrice: TImage;
    imgPOSAmount: TImage;
    lbAmount: TLabel;
    lbSum_Price: TLabel;
    imgButton2: TImage;
    act_F7: TAction;
    act_F3: TAction;
    act_F6: TAction;
    act_F8: TAction;
    act_F9: TAction;
    act_F10: TAction;
    act_F11: TAction;
    act_F12: TAction;
    act_CtrlA: TAction;
    QryMater: TADOQuery;
    QryMaterFCREATORID: TStringField;
    QryMaterFCREATETIME: TDateTimeField;
    QryMaterFLASTUPDATEUSERID: TStringField;
    QryMaterFLASTUPDATETIME: TDateTimeField;
    QryMaterFCONTROLUNITID: TStringField;
    QryMaterFNUMBER: TWideStringField;
    QryMaterFBIZDATE: TDateTimeField;
    QryMaterFHANDLERID: TStringField;
    QryMaterFDESCRIPTION: TWideStringField;
    QryMaterFHASEFFECTED: TIntegerField;
    QryMaterFAUDITORID: TStringField;
    QryMaterFSOURCEBILLID: TWideStringField;
    QryMaterFSOURCEFUNCTION: TWideStringField;
    QryMaterFID: TStringField;
    QryMaterFFIVOUCHERED: TIntegerField;
    QryMaterCFWEATHER: TWideStringField;
    QryMaterCFCLASSNO: TWideStringField;
    QryMaterCFMACHINENO: TWideStringField;
    QryMaterCFBALANCEDATE: TDateTimeField;
    QryMaterCFASSOCIATOR: TWideStringField;
    QryMaterCFSTORAGEID: TStringField;
    QryMaterCFBILLTYPE: TWideStringField;
    QryMaterCFISSALEOUT: TIntegerField;
    QryMaterCFSTOREUNITID: TStringField;
    QryMaterCFSALEUNITID: TStringField;
    QryMaterCFCREATORNAME: TWideStringField;
    QryMaterCFISMONTHACCOUNT: TIntegerField;
    QryMaterCF_POSTYPE: TStringField;
    QryMaterISTATUS: TIntegerField;
    QryDetail: TADOQuery;
    QryDetailFSEQ: TIntegerField;
    QryDetailFID: TStringField;
    QryDetailFPARENTID: TStringField;
    QryDetailCFAMOUNT: TBCDField;
    QryDetailCFPRICE: TBCDField;
    QryDetailCFSUM_PRICE: TBCDField;
    QryDetailCFAGIO: TBCDField;
    QryDetailCFAGIO_PRICE: TBCDField;
    QryDetailCFAGIO_SUM_PRICE: TBCDField;
    QryDetailCFBARCODE: TWideStringField;
    QryDetailCFCOST_SUM_PRICE: TBCDField;
    QryDetailCFCOST_PRICE: TBCDField;
    QryDetailCFPROFIT_MONEY: TBCDField;
    QryDetailCFTH_BILLNO: TWideStringField;
    QryDetailCFSTHYY_NAME: TWideStringField;
    QryDetailCFEXPLAININFO: TWideStringField;
    QryDetailCFMATERIALID: TStringField;
    QryDetailCFCOLORID: TStringField;
    QryDetailCFCUPID: TStringField;
    QryDetailCFASSISTPROPERTYID: TStringField;
    QryDetailCFSALESMANID: TStringField;
    QryDetailCFSETTLEBACKTYPEID: TStringField;
    QryDetailCFBACKPOINT: TBCDField;
    QryDetailCFASSISTNUM: TWideStringField;
    QryDetailCFSIZESID: TStringField;
    qryPrepre: TADOQuery;
    qryPrepreFID: TStringField;
    qryPrepreFSEQ: TIntegerField;
    qryPrepreFPARENTID: TStringField;
    qryPrepreCFSEQ: TIntegerField;
    qryPrepreCFNOW_PAY_MONEY: TBCDField;
    qryPrepreCFHAVE_PAY_MONEY: TBCDField;
    qryPrepreCFEXCHANGE_RATE: TBCDField;
    qryPrepreCFPAYMENTTYPE: TWideStringField;
    QryDetailcfMaterialNumber: TStringField;
    QryDetailcfMaterialName: TStringField;
    QryDetailcfColorName: TStringField;
    QryDetailcfCupName: TStringField;
    QryDetailcfSIZEName: TStringField;
    QryDetailCFFID_S: TWideStringField;
    QryMaterCFZRMONEY: TBCDField;
    csDetailCFFID_S: TWideStringField;
    act_DeleteDetail: TAction;
    act_Explain_Style: TAction;
    act_Explain_Bill: TAction;
    pmDetail: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    csRetailPRPREcfPayMentTypeName: TStringField;
    qryPreprecfPayMentTypeName: TStringField;
    actPrint: TAction;
    N4: TMenuItem;
    actDown: TAction;
    actUp: TAction;
    img_fullscreen: TImage;
    lb_fullscreen: TLabel;
    Image2: TImage;
    Bevel1: TBevel;
    csMasterWareHouseNumber: TStringField;
    csMasterWareHouseName: TStringField;
    csMasterFCREATORName: TStringField;
    QryMaterWareHouseNumber: TStringField;
    QryMaterWareHouseName: TStringField;
    QryMaterFCREATORName: TStringField;
    csMasterFCREATORID: TWideStringField;
    csMasterFCREATETIME: TDateTimeField;
    csMasterFLASTUPDATEUSERID: TWideStringField;
    csMasterFLASTUPDATETIME: TDateTimeField;
    csMasterFCONTROLUNITID: TWideStringField;
    csMasterFNUMBER: TWideStringField;
    csMasterFBIZDATE: TDateTimeField;
    csMasterFHANDLERID: TWideStringField;
    csMasterFDESCRIPTION: TWideStringField;
    csMasterFHASEFFECTED: TFloatField;
    csMasterFAUDITORID: TWideStringField;
    csMasterFSOURCEBILLID: TWideStringField;
    csMasterFSOURCEFUNCTION: TWideStringField;
    csMasterFID: TWideStringField;
    csMasterFFIVOUCHERED: TFloatField;
    csMasterCFWEATHER: TWideStringField;
    csMasterCFCLASSNO: TWideStringField;
    csMasterCFMACHINENO: TWideStringField;
    csMasterCFBALANCEDATE: TDateTimeField;
    csMasterCFASSOCIATOR: TWideStringField;
    csMasterCFSTORAGEID: TWideStringField;
    csMasterCFBILLTYPE: TWideStringField;
    csMasterCFISSALEOUT: TFloatField;
    csMasterCFSTOREUNITID: TWideStringField;
    csMasterCFSALEUNITID: TWideStringField;
    csMasterCFCREATORNAME: TWideStringField;
    csMasterCFISMONTHACCOUNT: TFloatField;
    csMasterCF_POSTYPE: TWideStringField;
    csMasterISTATUS: TFloatField;
    csMasterCFZRMONEY: TFloatField;
    csMasterCFZLMONEY: TFloatField;
    QryMaterCFZLMONEY: TBCDField;
    QryMaterCFInterval_ID: TWideStringField;
    csMasterCFInterval_ID: TWideStringField;
    QryMaterCFPaymentMoney: TBCDField;
    QryMaterCFVIPCardNumber: TWideStringField;
    QryMaterCFIntegral: TBCDField;
    csMasterCFVIPCardNumber: TWideStringField;
    csMasterCFPaymentMoney: TFloatField;
    csMasterCFIntegral: TFloatField;
    act_CtrlB: TAction;
    btCtrlB: TSpeedButton;
    cds_Vipcard: TClientDataSet;
    cds_VipcardFVIPCARDNUMBER: TWideStringField;
    cds_VipcardFPANELNUMBER: TWideStringField;
    cds_VipcardFMASTERFLAG: TFloatField;
    cds_VipcardFBIZMANID: TWideStringField;
    cds_VipcardFSECCARDNO: TWideStringField;
    cds_VipcardFISSUEORGID: TWideStringField;
    cds_VipcardFPARVALUE: TFloatField;
    cds_VipcardFCOSTFEE: TFloatField;
    cds_VipcardFISSECURITY: TFloatField;
    cds_VipcardFISEFFECTCTRL: TFloatField;
    cds_VipcardFEFFECTRANGE: TFloatField;
    cds_VipcardFFREEZESTATUS: TWideStringField;
    cds_VipcardFCARDSTATUS: TFloatField;
    cds_VipcardFEFFECTDATE: TDateTimeField;
    cds_VipcardFINVALIDATEDATE: TDateTimeField;
    cds_VipcardFCURRENTBONUS: TFloatField;
    cds_VipcardFCUMULATEBONUS: TFloatField;
    cds_VipcardFCURRENTVALUE: TFloatField;
    cds_VipcardFCUMULATEVALUE: TFloatField;
    cds_VipcardFRETURNPROFITAMOUNT: TFloatField;
    cds_VipcardFCUMULATEPROFIT: TFloatField;
    cds_VipcardFLASTRETURNDATE: TDateTimeField;
    cds_VipcardFFIRSTCONSUMEDATE: TDateTimeField;
    cds_VipcardFLASTCONSUMEDATE: TDateTimeField;
    cds_VipcardFCONSUMECOUNT: TFloatField;
    cds_VipcardFCUMULATECONSUMEAMOUT: TFloatField;
    cds_VipcardFOPENDISCOUNTAMOUNT: TFloatField;
    cds_VipcardFTEAMCUSTOMER: TWideStringField;
    cds_VipcardFREMARK: TWideStringField;
    cds_VipcardFBILLSTATUS: TFloatField;
    cds_VipcardFISSUEBILLNO: TWideStringField;
    cds_VipcardFISSUEDATE: TDateTimeField;
    cds_VipcardFCARDTYPEID: TWideStringField;
    cds_VipcardFVIPNUMBER: TWideStringField;
    cds_VipcardFPARENTCARDNUMBERID: TWideStringField;
    cds_VipcardFCARDGRADEID: TWideStringField;
    cds_VipcardFCARDCATEGORYID: TWideStringField;
    cds_VipcardFISSUEBYID: TWideStringField;
    cds_VipcardFCARDKIND: TFloatField;
    cds_VipcardFCREATORID: TWideStringField;
    cds_VipcardFCREATETIME: TDateTimeField;
    cds_VipcardFLASTUPDATEUSERID: TWideStringField;
    cds_VipcardFLASTUPDATETIME: TDateTimeField;
    cds_VipcardFCONTROLUNITID: TWideStringField;
    cds_VipcardFID: TWideStringField;
    cds_VipcardFCREDITLIMIT: TFloatField;
    cds_VipcardFCHECKCODE: TWideStringField;
    cds_VipcardFSONCARDCATEGORYID: TWideStringField;
    cds_VipcardFCONSUMWAY: TFloatField;
    cds_VipcardFISCREDITCARD: TFloatField;
    cds_VipcardFCHECKWAY: TFloatField;
    cds_VipcardFCURRENTCOUNT: TFloatField;
    cds_VipcardFVALIDITYUNIT: TFloatField;
    csMasterCFMouLing_Money: TFloatField;
    QryMaterCFMouLing_Money: TFloatField;
    QryDetailFVipEnabled: TIntegerField;
    csDetailFVipEnabled: TFloatField;
    btCtrlD: TSpeedButton;
    act_CtrlD: TAction;
    csDetailISVIPAgio: TFloatField;
    csMasterCFSTATE: TFloatField;
    cxDetailCFSETTLEBACKTYPEName: TcxGridDBColumn;
    Comm1: TComm;
    N5: TMenuItem;
    n_gridstyleset: TMenuItem;
    n_gridStyleSave: TMenuItem;
    N6: TMenuItem;
    actDelAll: TAction;
    N7: TMenuItem;
    actDelF2: TAction;
    N8: TMenuItem;
    csMasterCFbonusRate: TFloatField;
    QryMaterCFbonusRate: TFloatField;
    QryMaterCFISReturn: TIntegerField;
    csMasterCFISReturn: TFloatField;
    QryMaterCFSTATE: TIntegerField;
    csMasterCFBalanceYear: TWideStringField;
    csMasterCFBalanceMonth: TWideStringField;
    QryMaterCFBalanceYear: TWideStringField;
    QryMaterCFBalanceMonth: TWideStringField;
    Label1: TLabel;
    CbBalanceMonth: TcxDBComboBox;
    Label2: TLabel;
    cbCFBalanceYear: TcxDBComboBox;
    Label3: TLabel;
    cbSETTLEBACKTYPEID: TcxDBLookupComboBox;
    csMasterCFSETTLEBACKTYPEID: TWideStringField;
    csMasterCFBACKPOINT: TFloatField;
    QryMaterCFSETTLEBACKTYPEID: TWideStringField;
    QryMaterCFBACKPOINT: TFloatField;
    Label4: TLabel;
    act_CrtlG: TAction;
    actPrintRepeat: TAction;
    CRTLP1: TMenuItem;
    act_CtrlZ: TAction;
    CtrlZ1: TMenuItem;
    act_CtrlE: TAction;
    CtrlE1: TMenuItem;
    act_CtrlF: TAction;
    CTRLF1: TMenuItem;
    cdsScaleAssign: TClientDataSet;
    cdsScaleAssignFID: TWideStringField;
    cdsScaleAssignFParentID: TWideStringField;
    cdsScaleAssignCFWareHouseID: TWideStringField;
    cdsScaleAssignCFSALESMANID: TWideStringField;
    cdsScaleAssignCFQTY: TFloatField;
    dsScaleAssign: TDataSource;
    cdsScaleAssignCFSumPrice: TFloatField;
    qryScaleAssign: TADOQuery;
    qryScaleAssignFID: TWideStringField;
    qryScaleAssignFParentID: TWideStringField;
    qryScaleAssignCFWareHouseID: TWideStringField;
    qryScaleAssignCFSALESMANID: TWideStringField;
    qryScaleAssignCFQTY: TFloatField;
    qryScaleAssignCFSumPrice: TFloatField;
    btCtrlH: TSpeedButton;
    act_CtrlH: TAction;
    QryMaterCFGDBILLNo: TWideStringField;
    csMasterCFGDBILLNo: TWideStringField;
    act_CtrlS: TAction;
    CrtlS1: TMenuItem;
    cxDetailCFBrandPRICE: TcxGridDBColumn;
    csMasterCFAlterPriceID: TWideStringField;
    csDetailCFBrandPRICE: TFloatField;
    csDetailCFDescription: TWideStringField;
    QryDetailCFBrandPRICE: TFloatField;
    QryDetailCFDescription: TWideStringField;
    QryMaterCFAlterPriceID: TWideStringField;
    csDetailCFSalesManName: TStringField;
    QryDetailCFSalesManName: TStringField;
    QryMaterCFLapseRate1: TBCDField;
    QryMaterCFLapseRate2: TBCDField;
    csMasterCFLapseRate1: TFloatField;
    csMasterCFLapseRate2: TFloatField;
    actCtrl3: TAction;
    NF3: TMenuItem;
    N9: TMenuItem;
    csMasterCFExplain_BillNO: TWideStringField;
    csDetailCFExplainStyleNO: TWideStringField;
    QryDetailCFExplainStyleNO: TWideStringField;
    QryMaterCFExplain_BillNO: TWideStringField;
    csMasterCFYEAR: TWideStringField;
    csDetailCFYEAR: TWideStringField;
    csRetailPRPRECFYEAR: TWideStringField;
    cdsScaleAssignCFYEAR: TWideStringField;
    qryScaleAssignCFYEAR: TWideStringField;
    qryPrepreCFYEAR: TWideStringField;
    QryDetailCFYEAR: TWideStringField;
    QryMaterCFYEAR: TWideStringField;
    csDetailCFSTOREUNITID: TWideStringField;
    csDetailCFSALEUNITID: TWideStringField;
    csRetailPRPRECFSTOREUNITID: TWideStringField;
    csRetailPRPRECFSALEUNITID: TWideStringField;
    cdsScaleAssignCFSTOREUNITID: TWideStringField;
    cdsScaleAssignCFSALEUNITID: TWideStringField;
    qryScaleAssignCFSTOREUNITID: TWideStringField;
    qryScaleAssignCFSALEUNITID: TWideStringField;
    qryPrepreCFSTOREUNITID: TWideStringField;
    qryPrepreCFSALEUNITID: TWideStringField;
    QryDetailCFSTOREUNITID: TWideStringField;
    QryDetailCFSALEUNITID: TWideStringField;
    csDetailCFWAREHOUSEID: TWideStringField;
    csRetailPRPRECFWAREHOUSEID: TWideStringField;
    qryPrepreCFWAREHOUSEID: TWideStringField;
    QryDetailCFWAREHOUSEID: TWideStringField;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    CTRLI1: TMenuItem;
    CTRLJ1: TMenuItem;
    CTRLK1: TMenuItem;
    CTRLL1: TMenuItem;
    CTRLN1: TMenuItem;
    act_CtrlI: TAction;
    act_CtrlJ: TAction;
    act_CtrlK: TAction;
    act_CtrlL: TAction;
    act_CtrlN: TAction;
    csMasterCFMarketBillNo: TWideStringField;
    QryMaterCFMarketBillNo: TWideStringField;
    Label6: TLabel;
    edMarketBillNo: TcxDBTextEdit;
    img5: TImage;
    split: TMenuItem;
    CTRLR_R: TMenuItem;
    act_CtrlR: TAction;
    N10: TMenuItem;
    csDetailCFColorCode: TStringField;
    cxDetailCFColorCode: TcxGridDBColumn;
    QryDetailCFColorCode: TStringField;
    n_vipinfo: TMenuItem;
    act_CtrlM: TAction;
    act_CtrlQ: TAction;
    CTRLT: TMenuItem;
    act_CtrlT: TAction;
    QryMaterCFCouponsInfo: TStringField;
    Label7: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    csMasterCFCouponsInfo: TWideStringField;
    csRetailPRPREcfcoupons: TIntegerField;
    csRetailPRPREcfvipexchange: TIntegerField;
    qryPreprecfcoupons: TIntegerField;
    qryPreprecfvipexchange: TIntegerField;
    act_CtrlW: TAction;
    CtrlW1: TMenuItem;
    XT1: TMenuItem;
    VipAmt: TClientDataSet;
    VipAmtCradFID: TStringField;
    VipAmtCardNumber: TStringField;
    VipAmtCardName: TStringField;
    VipAmtAmount: TFloatField;
    csRetailPRPREApply: TClientDataSet;
    WideStringField1: TWideStringField;
    WideStringField2: TWideStringField;
    FloatField1: TFloatField;
    WideStringField3: TWideStringField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    FloatField5: TFloatField;
    WideStringField4: TWideStringField;
    WideStringField5: TWideStringField;
    WideStringField6: TWideStringField;
    WideStringField7: TWideStringField;
    StringField1: TStringField;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    cds_Vipcardcfpassword: TWideStringField;
    cds_Vipcardcfispasswordcheck: TFloatField;
    item_PalyView: TMenuItem;
    act_CtrlY: TAction;
    SpeedButton1: TSpeedButton;
    Bevel2: TBevel;
    txt_vipInfo: TcxTextEdit;
    txt_vip: TcxTextEdit;
    Label9: TLabel;
    Label10: TLabel;
    cxStyleRepository2: TcxStyleRepository;
    cxStyle2: TcxStyle;
    cxStyleRepository3: TcxStyleRepository;
    cxStyle3: TcxStyle;
    cxStyleRepository4: TcxStyleRepository;
    cxStyle4: TcxStyle;
    cxStyleRepository5: TcxStyleRepository;
    cxStyle5: TcxStyle;
    procedure edt_fAmountKeyPress(Sender: TObject; var Key: Char);
    procedure edt_sStyleBarCodeExit(Sender: TObject);
    procedure lbswitchClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxStyleExit(Sender: TObject);
    procedure csDetailCalcFields(DataSet: TDataSet);
    procedure csDetailCFAGIOChange(Sender: TField);
    procedure csDetailCFAGIO_PRICEChange(Sender: TField);
    procedure act_F2Execute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure act_F4Execute(Sender: TObject);
    procedure act_F5Execute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure act_F9Execute(Sender: TObject);
    procedure act_F6Execute(Sender: TObject);
    procedure act_F3Execute(Sender: TObject);
    procedure act_F8Execute(Sender: TObject);
    procedure act_F11Execute(Sender: TObject);
    procedure act_F10Execute(Sender: TObject);
    procedure act_F12Execute(Sender: TObject);
    procedure csDetailCFAMOUNTChange(Sender: TField);
    procedure cxDetailDataControllerSummaryAfterSummary(
      ASender: TcxDataSummary);
    procedure QryMaterNewRecord(DataSet: TDataSet);
    procedure QryDetailNewRecord(DataSet: TDataSet);
    procedure qryPrepreNewRecord(DataSet: TDataSet);
    procedure QryDetailCFAGIOChange(Sender: TField);
    procedure QryDetailCFAGIO_PRICEChange(Sender: TField);
    procedure act_CtrlAExecute(Sender: TObject);
    procedure act_DeleteDetailExecute(Sender: TObject);
    procedure act_Explain_BillExecute(Sender: TObject);
    procedure act_Explain_StyleExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure actDownExecute(Sender: TObject);
    procedure actUpExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure lb_exitClick(Sender: TObject);
    procedure lb_fullscreenMouseEnter(Sender: TObject);
    procedure lb_fullscreenMouseLeave(Sender: TObject);
    procedure lb_fullscreenClick(Sender: TObject);
    procedure csMasterCalcFields(DataSet: TDataSet);
    procedure cxStyleKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxSizeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure csDetailBeforePost(DataSet: TDataSet);
    procedure QryDetailBeforePost(DataSet: TDataSet);
    procedure act_CtrlBExecute(Sender: TObject);
    procedure act_CtrlDExecute(Sender: TObject);
    procedure QryDetailCFAMOUNTChange(Sender: TField);
    procedure csMasterISTATUSChange(Sender: TField);
    procedure csDetailCFSETTLEBACKTYPEIDChange(Sender: TField);
    procedure QryDetailCFASSISTPROPERTYIDChange(Sender: TField);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure n_gridstylesetClick(Sender: TObject);
    procedure n_gridStyleSaveClick(Sender: TObject);
    procedure actDelAllExecute(Sender: TObject);
    procedure actDelF2Execute(Sender: TObject);
    procedure cxGDExit(Sender: TObject);
    procedure QryMaterISTATUSChange(Sender: TField);
    procedure csMasterCFSETTLEBACKTYPEIDChange(Sender: TField);
    procedure QryMaterCFSETTLEBACKTYPEIDChange(Sender: TField);
    procedure csMasterBeforePost(DataSet: TDataSet);
    procedure act_CrtlGExecute(Sender: TObject);
    procedure QryMaterBeforePost(DataSet: TDataSet);
    procedure actPrintRepeatExecute(Sender: TObject);
    procedure act_CtrlZExecute(Sender: TObject);
    procedure act_CtrlEExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure act_CtrlFExecute(Sender: TObject);
    procedure edt_sStyleBarCodeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxDescriptionKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxFNumberKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_fAmountKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cdsScaleAssignCalcFields(DataSet: TDataSet);
    procedure cdsScaleAssignNewRecord(DataSet: TDataSet);
    procedure csDetailCFAGIO_SUM_PRICEChange(Sender: TField);
    procedure act_CtrlHExecute(Sender: TObject);
    procedure act_CtrlSExecute(Sender: TObject);
    procedure cxDetailEditKeyUp(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Word;
      Shift: TShiftState);
    procedure cxBillTypeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_sStyleBarCodeEnter(Sender: TObject);
    procedure actCtrl3Execute(Sender: TObject);
    procedure lb_helpClick(Sender: TObject);
    procedure act_CtrlIExecute(Sender: TObject);
    procedure act_CtrlJExecute(Sender: TObject);
    procedure act_CtrlKExecute(Sender: TObject);
    procedure act_CtrlLExecute(Sender: TObject);
    procedure act_CtrlNExecute(Sender: TObject);
    procedure CTRLI1Click(Sender: TObject);
    procedure edMarketBillNoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure kingdeeURLClick(Sender: TObject);
    procedure act_CtrlRExecute(Sender: TObject);
    procedure act_CtrlMExecute(Sender: TObject);
    procedure act_CtrlQExecute(Sender: TObject);
    procedure act_CtrlTExecute(Sender: TObject);
    procedure csRetailPRPRECalcFields(DataSet: TDataSet);
    procedure qryPrepreCalcFields(DataSet: TDataSet);
    procedure csDetailAfterPost(DataSet: TDataSet);
    procedure act_CtrlWExecute(Sender: TObject);
    procedure cxDetailEditKeyDown(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Word;
      Shift: TShiftState);
    procedure XT1Click(Sender: TObject);
    procedure pmDetailPopup(Sender: TObject);
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure item_PalyViewClick(Sender: TObject);
    procedure act_CtrlYExecute(Sender: TObject);
    procedure act_F7Execute(Sender: TObject);
    
  private
    { Private declarations }
    RM_PName,POSBillIDValue,POSBillNumber,BizDateStr,strVIPInfo,strVIPBonus : string;
    uStyle_ID : string;  //当前款号ID  在切换到货号模式输入时赋值
    InputSwitch : Boolean;  //输入方式  true 为条码输入  false 为货号+色号+内长+尺码输入方式
    DetailFSEQ,PrepreFSEQ : integer;
    SalesCount,ReturnCount : integer;  //明细正数数量 、负数记录数   结单时控制
    procedure SetInputSwitch(InputSwitch : Boolean);  //更改输入方式
    procedure LoadStyleAsstAttr(Material_FID:string);  //加载商品对应的辅助属性
    function  BillDetailAppend(DataSet :TDataSet;uStyle_ID,uColor_ID,uSize_ID,uPack_ID :string;sBarCodeCount : Integer;var OutMsg :string):Boolean;  //款色码方式增加POS明细
    procedure ClearStyleColorSize; //清除款色码信息

    function GetValueFromBarCode(sBarCode: String; DataSet: TDataSet; sBarCodeCount: Integer; var OutMsg: String): Boolean;  //分录信息新增赋值
    function Insert_Entry_Temp:Boolean;  //写入临时表，用于整单组合促销
    function Delete_Entry_Temp:Boolean;  //写入临时表，用于整单组合促销

    function Set_Explain_Style: Boolean;  //启用按款促销
    function Set_Explain_Bill: Boolean; //启用整单促销

    procedure GetEditStatus;  //是否允许修改，如果不允许的话在方法内会中止执行
    procedure SetEditStatus;  //设置控件是否允许编辑，与单据的状态相关，在单据打开、结单后、挂单后、选单后调用
    procedure SetPopedom;     //权限设置,创建窗体时控制
    function CalcIntegral(BillIDValue,CFVIPCardNumber : string;cfMoney,FBONUSRATE : Double):Double;  //计算积分
    procedure CreateParams(var Params: TCreateParams); override;
    procedure ScaleAssign;  //比例分配
    procedure SetCommState;  //固定部分控件为止，适应不同分辨率
    procedure LoadShopRreceiveType;  //重新加载收银方式
  public
    { Public declarations }
    FbonusRate,FDISCOUNTRATE,FDOUBLEDISCOUNTRATE,FLOWERLIMITDISCOUNTRATE : Double;  //卡级别对应积分比率（元）FbonusRate  折扣率FDISCOUNTRATE  折上折FDOUBLEDISCOUNTRATE  最低折扣FLOWERLIMITDISCOUNTRATE  输入会员卡后从服务器返回
    procedure SetDetailNewRecord(DataSet: TDataSet);  //设置在线模式下的明细新增字段赋值   用于条码扫描、款号录入、促销赠送新品3处
    function EditBill(BillIDValue : string):Boolean;  //在线方式：创建或打开一张POS单据
    function EditBillI_NoOnline(BillIDValue : string):Boolean;  //离线方式：创建或打开一张POS单据
    function ST_Save : Boolean; override;
    function ST_Save_NoLine : Boolean;   //离线保存
    procedure SaveTempdata;
    procedure loadTempdata;
    procedure DelTempFile;
    function checkstockQty(var OutMsg:string):Boolean;
    function checkListData(var OutMsg:string):Boolean;
  end;

var
  FrmPOSEdit: TFrmPOSEdit;
  function EditPOSFrm(BillIDValue : string):Boolean;    //打开POS开单界面
  function CheckBillIsSource(BillIDValue : string) : Boolean;  //检查单据是否已经被其他单据引用  主要用户挂单直接结单和退货

implementation
uses Pub_Fun,FrmCliMain,dSLPFrm,uHangFrm,uSalesManFrm,ureliefFrm,uShowStoragefrm,Frm_TranUpDate
      ,uLockSysFrm,uDayBalanceFrm,RMReport_lib,uEarnestMoneyFrm,uExplain_StyleFrm,uExplain_BillFrm,uVIPCardInput
      ,uPOSAlterDate_Frm,uTuiHuoFrm,Frm_SysComfig,uGridStyleSet,materialinfo,uBalanceHandFrm,uProrateFrm,uDayReceiveTypeFrm,
      uDutyCheckIn,uCashStoragefrm,uCacthCashierfrm,uCashBookfrm,uLeaveCheckInfrm,uEmitAssociatorCard,uPOSFormTxtImport,uPlayTypeView,uSelectMaterialInfo;
{$R *.dfm}

function CheckBillIsSource(BillIDValue : string): Boolean;
var sqlstr,ErrMsg : string;
begin
  if BillIDValue = '' then Exit;
  sqlstr := 'select 1 From CT_BIL_RetailPOS A Where iStatus=-2  AND FID='+QuotedStr(BillIDValue);
  if CliDM.Get_ExistsSQL(sqlstr,ErrMsg) then
  begin
    MessageBox(0, PChar('当前挂单已经处理过！') ,pchar('金蝶提示'), M_Hint);
    Abort;
  end;
end;

function EditPOSFrm(BillIDValue : string):Boolean;    //打开POS开单界面
begin
  Result := True;
  if UserInfo.Is_SysOnline then
     CliDM.Chk_UserRight(UserInfo.RetailPOSID,'posAddNew'); //检查权限
 
  if frmPOSEdit <> nil then
  begin
    if not frmPOSEdit.Showing then frmPOSEdit.Show;
    frmPOSEdit.SetFocus;
    Exit;
  end;
  Application.CreateForm(TfrmPOSEdit, frmPOSEdit);
  if UserInfo.Is_SysOnline then
  begin
    if not frmPOSEdit.EditBill(BillIDValue) then//打开开单界面
    begin
      Result := False;
      frmPOSEdit.Close;
      Exit;
    end;
  end
  else
  begin
    if not frmPOSEdit.EditBillI_NoOnline(BillIDValue) then
    begin
      Result := False;
      frmPOSEdit.Close;
      Exit;
    end;
  end;
  if frmPOSEdit<> nil then
  begin
    frmPOSEdit.Show;
    if (frmPOSEdit.Visible=True) and (frmPOSEdit.Showing=True) then
    frmPOSEdit.SetFocus;
  end;
end;


{ TfrmPOSEdit }
function TFrmPOSEdit.EditBill(BillIDValue: string): Boolean;
var  cfBillTypeID,ErrMsg: string;
     OpenTables: array[0..3] of string;
     _cds: array[0..3] of TClientDataSet;
begin
  Result := True;
  dsMaster.DataSet := csMaster;
  dsDetail.DataSet := csDetail;
  dsRetailPRPRE.DataSet := csRetailPRPRE;
  dsScaleAssign.DataSet := cdsScaleAssign;


  OpenTables[0] := 'CT_BIL_RetailPOS';
  OpenTables[1] := 'ct_bil_retailposentry';
  OpenTables[2] := 'CT_BIL_RETAILPRPRE';
  OpenTables[3] := 'T_POS_ScaleAssign';

  _cds[0] := csMaster;
  _cds[1] := csDetail;
  _cds[2] := csRetailPRPRE;
  _cds[3] := cdsScaleAssign;

  if not CliDM.Get_OpenClients(BillIDValue,_cds,OpenTables,ErrMsg) then  //打开数据集
  begin
    ShowMsg(Handle, ErrMsg+'  或者重新打开POS零售单！',[]);
    Result := False;
    exit;
  end;
  POSBillIDValue := BillIDValue;
  POSBillNumber := csMaster.fieldByName('FNumber').AsString;

  if BillIDValue = '' then //新增POS单据
  begin
    cxDetail.GetColumnByFieldName('CFAGIO').Options.Editing := False;
    cxDetail.GetColumnByFieldName('CFAGIO_PRICE').Options.Editing := False;
    cxDetail.GetColumnByFieldName('CFAGIO_SUM_PRICE').Options.Editing := False;
    DetailFSEQ := 1;
    PrepreFSEQ := 1;
    FbonusRate := 0;  //卡级别对应积分比率（元）  清零
    FDISCOUNTRATE  := 0;
    FDOUBLEDISCOUNTRATE  := 0;
    FLOWERLIMITDISCOUNTRATE := 0;  
    BillIDValue := CliDM.GetEASSID(UserInfo.RetailPOSID);
    POSBillIDValue := BillIDValue;
    POSBillNumber := Clidm.GetBillNo('P',UserInfo.WareHouser_Sign,UserInfo.MachineCode); //单据编号
    CliDM.qryPosRetailEx.First;
    cfBillTypeID := CliDM.qryPosRetailEx.fieldByName('FID').AsString; //获取单据类型

    DataSetEditStatus(csMaster);  //将数据集置为编辑状态
    with csMaster do
    begin
      Append;
      FieldByName('iStatus').AsInteger := 0;
      FieldByName('FID').AsString := BillIDValue;          //单据ID
      FieldByName('FNUMBER').AsString := POSBillNumber;    //单据编号
      FieldByName('cfBillType').AsString := cfBillTypeID;  //单据类型
      FieldByName('fcreatorid').AsString := UserInfo.LoginUser_FID;
      FieldByName('fcreatetime').Value := CliDM.Get_ServerTime;
      FieldByName('flastupdateuserid').Value := '';
      FieldByName('flastupdatetime').Value := CliDM.Get_ServerTime;
      FieldByName('fcontrolunitid').Value := UserInfo.FCONTROLUNITID;
      FieldByName('fbizdate').Value := CliDM.Get_ServerTime;
      FieldByName('fhandlerid').Value := '';
      FieldByName('fdescription').Value := '';
      FieldByName('fhaseffected').Value := 0;
      FieldByName('fauditorid').Value := '';
      FieldByName('fsourcebillid').Value := '';
      FieldByName('fsourcefunction').Value := '';
      FieldByName('ffivouchered').Value := 0;
      FieldByName('cfclassno').Value := '';
      FieldByName('cfmachineno').Value := UserInfo.MachineCode;  //机器码
      FieldByName('cfbalancedate').Value := CliDM.Get_ServerTime;
      FieldByName('cfassociator').Value := '';
      FieldByName('cfstorageid').AsString := UserInfo.Warehouse_FID;    //仓库
      FieldByName('cfstoreunitid').AsString := UserInfo.FStoreOrgUnit;  //库存组织ID
      FieldByName('cfsaleunitid').AsString := UserInfo.FSaleOrgID;   //销售组织ID
      FieldByName('cfcreatorname').Value := '';
      FieldByName('CFInterval_ID').Value := UserInfo.FreQuency_ID;  //班次ID
      FieldByName('CFISReturn').Value := 0;  //0 正常销售 1退货单
      FieldByName('CFBalanceYear').Value := UserInfo.BalanceYear;   //月结年份
      FieldByName('CFBalanceMonth').Value := UserInfo.BalanceMonth; //月结月份
      FieldByName('CFSETTLEBACKTYPEID').Value := UserInfo.CFBACKPointType;  //返点类型  返点类型change时会更新返点值

      //20120125 天气温度
      FieldByName('CFWEATHER').Value := UserInfo.Weather; //天气
      FieldByName('CFLapseRate1').Value := UserInfo.lapseRate1; //最低温度
      FieldByName('CFLapseRate2').Value := UserInfo.lapseRate2; //最高温度
      FieldByName('CFYEAR').Value := UserInfo.YearStr; //年份
    end;
  end;
  BizDateStr:=formatdatetime('yyyy-MM-dd',csMaster.fieldbyname('FBIZDATE').asdatetime);
  if UserInfo.WareHouserCustorID <> '' then
     Self.Caption := 'POS开单-业务日期【'+BizDateStr+'】商场结算年份【'+csMaster.fieldbyName('CFBalanceYear').AsString+'】月份【'+csMaster.fieldbyName('CFBalanceMonth').AsString+'】'
  else
     Self.Caption := 'POS开单-业务日期【'+BizDateStr+'】';
end;

function TFrmPOSEdit.ST_Save: Boolean;
var ErrMsg : string;
   _cds: array[0..3] of TClientDataSet;
   RetailList : TStringList;
   i,col : integer;
begin
  Result := True;
  csRetailPRPREApply.Close;
  csRetailPRPREApply.CreateDataSet;
  while not  csRetailPRPREApply.IsEmpty do csRetailPRPREApply.Delete;
  if csMaster.State in db.dsEditModes then csMaster.Post;
  if csDetail.State in db.dsEditModes then csDetail.Post;
  if cds_Vipcard.State in db.dsEditModes then cds_Vipcard.Post;   //会员记录
  Gio.AddShow('POS单【'+POSBillNumber+'】实收金额：'+csMaster.FieldByName('CFPaymentMoney').AsString);
  try
    RetailList := TStringList.Create;
    //只提交不为0的收银方式记录
    csRetailPRPRE.First;
    while not csRetailPRPRE.Eof do
    begin
      if (csRetailPRPRE.FieldByName('CFHAVE_PAY_MONEY').AsFloat <> 0) or ( not csRetailPRPRE.FieldByName('CFHAVE_PAY_MONEY').IsNull) then
      begin
        csRetailPRPREApply.Append;
        for col:=0 to csRetailPRPRE.FieldCount-1 do
        begin
          csRetailPRPREApply.Fields[col].Value :=  csRetailPRPRE.Fields[col].Value;
        end;
        csRetailPRPREApply.Post;
      end ;
      csRetailPRPRE.Next;
    end;
//删除金额为0的记录，冗余记录
//    for i := 0 to RetailList.Count-1 do
//    begin
//      csRetailPRPRE.First;
//      if csRetailPRPRE.Locate('CFPAYMENTTYPE',RetailList.Strings[i],[]) then
//      begin
//         Gio.AddShow('POS单【'+POSBillNumber+'】删除为空收银数据:'+csRetailPRPRE.fieldbyName('cfPayMentTypeName').AsString+' '+csRetailPRPRE.FieldByName('CFHAVE_PAY_MONEY').AsString);
//         csRetailPRPRE.Delete;
//      end;
//    end;
//    if csRetailPRPRE.State in db.dsEditModes then csRetailPRPRE.Post;
  finally
    RetailList.Free;
  end;
  if (csMaster.IsEmpty)  then
  begin
    ShowMsg(Handle, '结单异常不能提交单据,单据头为空，请退出收银界面重新进入开单收银!'+ErrMsg,[]);
    Gio.AddShow( '结单异常不能提交单据,单据头数据集为空!'+ErrMsg);
    Result := False;
    Abort;
  end;
  if (csMaster.FieldByName('CFPaymentMoney').AsFloat <>0)  then     ////表头收款金额不为空，而收银记录没有 added  by owen
  begin
    if  (csRetailPRPREApply.RecordCount=0) or (not csRetailPRPREApply.Active) or (csRetailPRPREApply.ChangeCount=0)  or (csRetailPRPREApply.IsEmpty)
    then
    begin
      ShowMsg(Handle, '结单异常不能提交单据,收银方式收款为空，请退出收银界面重新进入开单收银!'+ErrMsg,[]);
      Gio.AddShow( '结单异常不能提交单据,收银方式数据集为空!'+ErrMsg);
      Result := False;
      Abort;
    end;
  end;
  //定义提交的数据集数据
  _cds[0] := csMaster;
  _cds[1] := csDetail;
  _cds[2] := csRetailPRPREApply;
  _cds[3] := cdsScaleAssign;

  //提交数据
  try
    if CliDM.Apply_Delta_Ex(_cds,['CT_BIL_RetailPOS','CT_BIL_RetailPOSEntry','CT_BIL_RetailPRPRE','T_POS_ScaleAssign'],ErrMsg) then
    begin
      Gio.AddShow('数据集【csRetailPRPREApply】提交行数：'+inttostr(_cds[2].RecordCount));
      Gio.AddShow('POS单【'+POSBillNumber+'】提交成功！');
    end
    else
    begin
      ShowMsg(Handle, 'POS单提交失败'+ErrMsg,[]);
      Gio.AddShow(ErrMsg);
      Result := False;
    end;
  except
    on E: Exception do
    begin
      ShowMsg(Handle, '数据提交失败：'+e.Message,[]);
      Result := False;
    end;
  end;
end;

procedure TFrmPOSEdit.edt_fAmountKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  //控制只允许输入数字
  if (Key<>#8) then     //BackSpace 删除键除外
  if not (Key in ['0'..'9']) then
   Key   :=   #0;
end;

procedure TFrmPOSEdit.edt_sStyleBarCodeExit(Sender: TObject);
var sStyleBarCode,OutMsg : string;
    sBarCodeCount : Integer;
begin
//  Gio.AddShow('edt_sStyleBarCodeExit...');
  inherited;
  sStyleBarCode := SbctoDbc(Trim(edt_sStyleBarCode.Text));
  if sStyleBarCode = '' then Exit;
  if Trim(edt_fAmount.Text)= '' then sBarCodeCount :=1
  else
    sBarCodeCount := StrToInt(edt_fAmount.Text);
  if GetValueFromBarCode(sStyleBarCode,dsDetail.DataSet,sBarCodeCount,OutMsg) then //条码解析成功
  begin
    edt_sStyleBarCode.Clear;
    Set_Explain_Style;  //打开按款促销界面，如果选中促销会修改折扣、单价和折后金额
  end
  else
  begin 
    ShowMsg(Handle,OutMsg,[]);
  end;
  edt_sStyleBarCode.SetFocus;
end;


procedure TFrmPOSEdit.SetInputSwitch(InputSwitch: Boolean);
begin
  Exit;
  lbl_Code.Visible := InputSwitch;
  edt_sStyleBarCode.Visible := InputSwitch;
  lblAmount.Visible := InputSwitch;
  edt_fAmount.Visible := InputSwitch;


  if not InputSwitch then
    ClearStyleColorSize;
end;

procedure TFrmPOSEdit.lbswitchClick(Sender: TObject);
begin
  inherited;
  InputSwitch := not InputSwitch;
  SetInputSwitch(InputSwitch);
end;

procedure TFrmPOSEdit.FormCreate(Sender: TObject);
begin
  inherited;
  self.DoubleBuffered := True;
  InputSwitch := True;   //默认采用条码输入的方式
  SetInputSwitch(InputSwitch);
  
  cxDetail.GetColumnByFieldName('CFAGIO').Options.Editing := not UserInfo.Is_SysOnline;
  cxDetail.GetColumnByFieldName('CFAGIO_PRICE').Options.Editing := not UserInfo.Is_SysOnline;
  cxDetail.GetColumnByFieldName('CFAGIO_SUM_PRICE').Options.Editing := not UserInfo.Is_SysOnline;

  LoadImage(UserInfo.ExePath+'\Img\POS_Edit_Top.jpg',imgTop);
  LoadImage(UserInfo.ExePath+'\Img\POS_Edit_Top2.jpg',imgTop2);
  LoadImage(UserInfo.ExePath+'\Img\POS_Edit_imgButton1.jpg',imgButton1);
  LoadImage(UserInfo.ExePath+'\Img\POS_Edit_imgButton2.jpg',imgButton2);
  LoadImage(UserInfo.ExePath+'\Img\imgTopLeft.png',imgTopLeft);
  LoadImage(UserInfo.ExePath+'\Img\kingdeeURL.png',kingdeeURL);
  LoadImage(UserInfo.ExePath+'\Img\imgPOSAmount.png',imgPOSAmount);
  LoadImage(UserInfo.ExePath+'\Img\imgPOSumPrice.png',imgPOSumPrice);
  LoadImage(UserInfo.ExePath+'\Img\POSEdit_imgStates1.bmp',imgStates1);
  {
  if UserInfo.WareHouserCustorID <> '' then
   pnMainTop.Height := 50
  else
  }
  // pnMainTop.Height := 23;
  //固定控件位置，适应不同分辨率
  SetCommState;
end;

procedure TFrmPOSEdit.cxStyleExit(Sender: TObject);
var sStyle_Code,FID,FNAME_L2,sqlstr : string;
begin
  inherited;

end;

procedure TFrmPOSEdit.LoadStyleAsstAttr(Material_FID: string);
var sqlstr : string;
begin
  try
    sqlstr := 'select FID,FNUMBER,FNAME_L2 from T_BD_AsstAttrValue A(nolock) where FBasicTypeID='+QuotedStr(UserInfo.AsstAttrValue_ColorID)
              +' and exists(Select 1 From ct_ms_materialcolorpg(nolock) Where FParentID='+QuotedStr(Material_FID)+' and CFColorID=A.FID)';
    with qryStyleColor do
    begin
      Close;
      SQL.Clear;
      sql.Add(sqlstr);
      Open;
    end;
    sqlstr := 'select FID,FNUMBER,FNAME_L2 from T_BD_AsstAttrValue A(nolock) where FBasicTypeID='+QuotedStr(UserInfo.AsstAttrValue_BeiID)
              +' and exists(Select 1 From ct_ms_materialcuppg(nolock) Where FParentID='+QuotedStr(Material_FID)+' and CFCUPID=A.FID)';
    with qryStylePack do
    begin
      Close;
      SQL.Clear;
      sql.Add(sqlstr);
      Open;
    end;
    sqlstr := ' select C.FID,C.FNUMBER,C.FNAME_L2 from T_BD_Material A '
              +' LEFT OUTER JOIN ct_bas_sizegroupentry B ON A.CFSIZEGROUPID=B.FParentID '
              +' LEFT OUTER JOIN T_BD_AsstAttrValue C ON B.CFSIZEID=C.FID '
              +' WHERE C.FBasicTypeID='+QuotedStr(UserInfo.AsstAttrValue_SizeID)+' and A.FID='+QuotedStr(Material_FID)
              +' ORDER BY B.FSEQ';
    with qryStyleSize do
    begin
      Close;
      SQL.Clear;
      sql.Add(sqlstr);
      Open;
    end;
  except
    ShowMsg(Handle, '打开商品对应颜色/内长/尺码出错！',[]);
    Exit;
  end;
end;

function TFrmPOSEdit.BillDetailAppend(DataSet :TDataSet; uStyle_ID,uColor_ID,uSize_ID,uPack_ID :string;sBarCodeCount : Integer;var OutMsg :string): Boolean;
var BrandPRICE,StorageQty : Double;
  CFAssistNum,ErrMsg,StyleCode : string;
begin
  Result := True;
  CFAssistNum := CliDM.GetAssistNum(uStyle_ID,uColor_ID,uSize_ID,uPack_ID); //辅助属性编号  用户零售单生成出库单和计算库存找辅助属性用
//20120107 负库存控制 wushaoshu  >>>>>2013-04-09 许志祥修改到结单再检查
//  if (sBarCodeCount>0) and (UserInfo.Is_SysOnline) and (UserInfo.IsNeisSue) then   //服务端控制不允许负库存出库时
//  begin
//    Gio.AddShow('开始获取库存！');
//    StorageQty := CliDM.Pub_POSCheckSto(uStyle_ID,uColor_ID,uSize_ID,uPack_ID,CFAssistNum,ErrMsg);
//    Gio.AddShow('获取库存完成！');
//    if StorageQty<sBarCodeCount then
//    begin
//      StyleCode := cxStyle.Text;
//      OutMsg :=  '商品['+StyleCode+']库存不够，当前库存为【'+FloatTostr(StorageQty)+'】！';
//      //ShowMsg(Handle, '商品['+StyleCode+']库存不够，当前库存为【'+FloatTostr(StorageQty)+'】！',[]);
//      Result := False;
//      Exit;
//    end;
//  end;

  try
    try
      DataSet.DisableControls;
      DataSet.OnCalcFields := nil;
      DataSetEditStatus(DataSet);
      begin
        DataSet.Append;
        if UserInfo.Is_SysOnline then
           SetDetailNewRecord(DataSet);
        
        DataSet.FieldByName('cfmaterialid').AsString := uStyle_ID;
        DataSet.FieldByName('cfcolorid').AsString := uColor_ID;
        DataSet.FieldByName('cfsizesid').AsString := uSize_id;
        DataSet.FieldByName('cfcupid').AsString := uPack_ID;
        DataSet.FieldByName('cfamount').AsFloat := sBarCodeCount;
        BrandPRICE := CliDM.GetStylePrice(uStyle_ID,UserInfo.FsaleOrgID);  //获取吊牌价
        DataSet.FieldByName('CFBrandPRICE').AsFloat := BrandPRICE;  //吊牌价
        DataSet.FieldByName('CFPRICE').AsFloat := CliDM.GetStyleRetailPrice(uStyle_ID,uColor_ID,uSize_id,BrandPRICE);  //获取零售价  调价单做好以后这里需要修改

        DataSet.FieldByName('CFAGIO').AsFloat := 100;
        //折扣修改后会提交数据集
        if not(DataSet.State in Db.dsEditModes) then DataSet.Edit;
        DataSet.FieldByName('FVipEnabled').AsFloat := -1;               //与会员关系  整单促销和结单时用 -1 默认为没有参与会员折扣
        DataSet.FieldByName('CFAssistNum').AsString := CFAssistNum;   //辅助属性编码
        //DataSet.FieldByName('CFSETTLEBACKTYPEID').AsString := UserInfo.CFBACKPointType;  //默认返点类型
        DataSet.FieldByName('CFSALESMANID').AsString := UserInfo.FPERSONID;  //默认营业员
        //20120409
        DataSet.FieldByName('CFYEAR').Value := UserInfo.YearStr; //年份
        DataSet.FieldByName('cfstoreunitid').AsString := Userinfo.FStoreOrgUnit;   //库存组织
        DataSet.FieldByName('cfsaleunitid').AsString := Userinfo.FSaleOrgID;  //销售组织
        DataSet.FieldByName('CFWAREHOUSEID').AsString := Userinfo.Warehouse_FID;  //仓库
      end;
    finally
      uStyle_ID := '';
      uColor_ID := '';
      uSize_id := '';
      uPack_ID := '';
      DataSet.OnCalcFields := csDetailCalcFields;
      DataSet.EnableControls;
    end;
    DataSet.Post;
  except
    on E : Exception do
    begin
      Result := False;
      OutMsg := '增加明细失败:'+E.Message;
    end;
  end;
end;

procedure TFrmPOSEdit.ClearStyleColorSize;
begin
  if qryStyleColor.Active then qryStyleColor.Close;
  if qryStylePack.Active then qryStylePack.Close;
  if qryStyleSize.Active then qryStyleSize.Close;
end;

procedure TFrmPOSEdit.SetDetailNewRecord(DataSet: TDataSet);
begin
  try
    if not (DataSet.FieldByName('FPARENTID') = nil) then
      DataSet.FieldByName('FPARENTID').AsString := POSBillIDValue;
    if not (DataSet.FieldByName('FID') = nil) then
      DataSet.FieldByName('FID').AsString := CliDM.GetEASSID(UserInfo.RetailPOSEntryID);
    if not (DataSet.FieldByName('FSEQ') = nil) then
      DataSet.FieldByName('FSEQ').AsFloat := DataSet.RecordCount+1;
  except
    ShowMsg(Handle, '新增明细出错！',[]);
    Abort;
  end;
end;

//条码解析 wushaoshu 20110511
function TFrmPOSEdit.GetValueFromBarCode(sBarCode: String;DataSet: TDataSet;sBarCodeCount : Integer;var OutMsg : String): Boolean;
var uStyle_ID,uColor_ID,uSize_id,uBei_id,CFAssistNum,cfAssistProperTyID: string;
    BrandPRICE,StorageQty : Double;
begin
  Result := CliDM.GetValueFromBarCode(sBarCode,uStyle_ID,uColor_ID,uSize_id,uBei_id,CFAssistNum,cfAssistProperTyID,OutMsg);
  if not Result then
  begin
    Gio.AddShow(OutMsg);
   // ShowMsg(Handle, OutMsg,[]);
    Exit;  //如果条码解析错误则退出
  end;

//20120107 负库存控制 wushaoshu  >>>>>2013-04-09 许志祥修改到结单再检查
//  if UserInfo.Is_SysOnline then
//  if (sBarCodeCount>0) and (UserInfo.IsNeisSue) then   //服务端控制不允许负库存出库时
//  begin
//    Gio.AddShow('开始获取库存！');
//    try
//      StorageQty := CliDM.Pub_POSCheckSto(uStyle_ID,uColor_ID,uSize_ID,uBei_id,CFAssistNum,OutMsg);
//    except
//      on E:Exception do
//      begin
//        Gio.AddShow('POS单条码['+sBarCode+']扫描校验库存出错:'+e.Message+OutMsg);
//      end;
//    end;
//    Gio.AddShow('开始获取库存结束！');
//    if StorageQty<sBarCodeCount then
//    begin
//      OutMsg := '库存不够，当前库存为【'+FloatTostr(StorageQty)+'】！';
//      Result := False;
//      exit;
//    end;
//  end;

  if (DataSet.FieldByName('cfmaterialid') = nil) or
      (DataSet.FieldByName('cfcolorid') = nil) or
      (DataSet.FieldByName('cfsizesid') = nil) or
      (DataSet.FieldByName('cfcupid') = nil) then
  begin
    OutMsg := '缺少物料颜色尺码杯/桶围必填字段！';
    Result := False;
    Exit;
  end;
  try
    DataSet.OnCalcFields := nil;
      //DataSetEditStatus(DataSet);  //编辑时会出发新增事件
    with DataSet do
    begin
      //不区分大小写查找记录
     { if DataSet.Locate('cfmaterialid;cfcolorid;cfsizesid;cfcupid',VarArrayof([uStyle_ID,uColor_ID,uSize_id,uBei_id]),[loCaseInsensitive]) then
      begin
        DataSetEditStatus(DataSet);
        if not(DataSet.FieldByName('cfamount')=nil) then
        DataSet.FieldByName('cfamount').AsFloat := DataSet.FieldByName('cfamount').AsFloat+sBarCodeCount;
      end
      else
      }
      begin
        DataSet.Append;
        if UserInfo.Is_SysOnline then  //在线模式不能在NewAppend事件中初始化，只能通过方法复制
          SetDetailNewRecord(DataSet);
        DataSet.FieldByName('cfmaterialid').AsString := uStyle_ID;    //商品ID
        DataSet.FieldByName('cfcolorid').AsString := uColor_ID;       //颜色
        DataSet.FieldByName('cfsizesid').AsString := uSize_id;        //尺码
        DataSet.FieldByName('cfcupid').AsString := uBei_id;           //内长
        DataSet.FieldByName('CFAssistNum').AsString := CFAssistNum;   //辅助属性编码
        DataSet.FieldByName('cfAssistProperTyID').AsString := cfAssistProperTyID;  //辅助属性ID
        DataSet.FieldByName('cfamount').AsFloat := sBarCodeCount;     //数量
        DataSet.FieldByName('CFBARCODE').AsString := sBarCode;        //条码
        BrandPRICE := CliDM.GetStylePrice(uStyle_ID,UserInfo.FsaleOrgID);  //获取吊牌价
        DataSet.FieldByName('CFBrandPRICE').AsFloat := BrandPRICE;  //吊牌价
        DataSet.FieldByName('CFPRICE').AsFloat := CliDM.GetStyleRetailPrice(uStyle_ID,uColor_ID,uSize_id,BrandPRICE);  //获取零售价  调价单做好以后这里需要修改

        DataSet.FieldByName('CFAGIO').AsFloat := 100;                   //折扣
        DataSet.FieldByName('FVipEnabled').AsFloat := -1;               //与会员关系，结单时如果选中会员折扣后会自动标记为1
        //DataSet.FieldByName('CFSETTLEBACKTYPEID').AsString := UserInfo.CFBACKPointType;  //默认返点类型
        DataSet.FieldByName('CFSALESMANID').AsString := UserInfo.FPERSONID;  //默认营业员

        //20120409
        DataSet.FieldByName('CFYEAR').Value := UserInfo.YearStr; //年份
        DataSet.FieldByName('cfstoreunitid').AsString := Userinfo.FStoreOrgUnit;   //库存组织
        DataSet.FieldByName('cfsaleunitid').AsString := Userinfo.FSaleOrgID;  //销售组织
        DataSet.FieldByName('CFWAREHOUSEID').AsString := Userinfo.Warehouse_FID;  //仓库
      end;
    end;
  finally
      DataSet.OnCalcFields := csDetailCalcFields;
  end;
  DataSet.Post; //触发计算字段事件
end;

procedure TFrmPOSEdit.csDetailCalcFields(DataSet: TDataSet);
begin
  inherited;
  with CliDM.Client_QuerySQL('Select FNumber,fname_l2 From T_BD_Material(nolock) Where FID collate Chinese_PRC_CS_AS_WS ='+QuotedStr(DataSet.fieldByName('CFMATERIALID').AsString)) do
  begin
    DataSet.FieldByName('cfMaterialNumber').AsString := FieldByName('FNumber').AsString;
    DataSet.FieldByName('cfMaterialName').AsString := FieldByName('fname_l2').AsString;
  end;
  //颜色名称
  with CliDM.Client_QuerySQL('Select FNumber,fname_l2 From T_BD_AsstAttrValue(nolock) Where FBasicTypeID='+QuotedStr(UserInfo.AsstAttrValue_ColorID) +' and FID='+QuotedStr(DataSet.fieldByName('CFCOLORID').AsString)) do
  begin
    DataSet.FieldByName('CFCOLORName').AsString := FieldByName('fname_l2').AsString;
    DataSet.FieldByName('CFColorCode').AsString := FieldByName('FNumber').AsString;  //许志祥 2012-09-01
  end;
  //内长
  if QuotedStr(DataSet.fieldByName('CFCUPID').AsString) <> '' then
  begin
    with CliDM.Client_QuerySQL('Select FNumber,fname_l2 From T_BD_AsstAttrValue(nolock) Where FBasicTypeID='+QuotedStr(UserInfo.AsstAttrValue_BeiID)+' and FID='+QuotedStr(DataSet.fieldByName('CFCUPID').AsString)) do
    begin
      DataSet.FieldByName('CFCUPName').AsString := FieldByName('fname_l2').AsString;
    end;
  end;

  //尺码
  with CliDM.Client_QuerySQL('Select FNumber,fname_l2 From T_BD_AsstAttrValue(nolock) Where FBasicTypeID='+QuotedStr(UserInfo.AsstAttrValue_SizeID)+' and FID='+QuotedStr(DataSet.fieldByName('CFSIZESID').AsString)) do
  begin
    DataSet.FieldByName('CFSIZEName').AsString := FieldByName('fname_l2').AsString;
  end;

  //营业员

  with CliDM.Client_QuerySQL('Select FNumber,fname_l2 From T_BD_Person(nolock) Where FID collate Chinese_PRC_CS_AS_WS ='+QuotedStr(DataSet.fieldByName('CFSALESMANID').AsString)) do
  begin
    DataSet.FieldByName('CFSalesManName').AsString := FieldByName('fname_l2').AsString;
  end;

end;

procedure TFrmPOSEdit.csDetailCFAGIOChange(Sender: TField);
var Agio,CFAGIO_PRICE,CFAGIO_SUM_PRICE : Double;
    AMOUNTSum : Double;
begin
  inherited;
  try
    csDetailCFAGIO_PRICE.OnChange := nil; //隐藏调整折扣价change事件，避免死循环
    csDetailCFAGIO_SUM_PRICE.OnChange := nil; 
    Agio := Sender.AsFloat;

    CFAGIO_PRICE := Sender.AsFloat * Sender.DataSet.FieldByName('CFPRICE').AsFloat/100;   //折扣后价格

    if UserInfo.RoundBillType=1 then //商品单价位置处理小数位
      CFAGIO_PRICE := CliDM.SimpleRoundTo(CFAGIO_PRICE);

    CFAGIO_SUM_PRICE := cfAgio_PRICE * Sender.DataSet.FieldByName('CFAMOUNT').AsFloat; //折扣后金额
    if UserInfo.RoundBillType=2 then //商品金额位置处理小数位
      CFAGIO_SUM_PRICE := CliDM.SimpleRoundTo(CFAGIO_SUM_PRICE);

    Sender.DataSet.FieldByName('CFAGIO_PRICE').AsFloat := CFAGIO_PRICE;
    Sender.DataSet.FieldByName('CFAGIO_SUM_PRICE').AsFloat := CFAGIO_SUM_PRICE;

  finally
    csDetailCFAGIO_PRICE.OnChange := csDetailCFAGIO_PRICEChange;
    csDetailCFAGIO_SUM_PRICE.OnChange := csDetailCFAGIO_SUM_PRICEChange;
  end;
end;

procedure TFrmPOSEdit.csDetailCFAGIO_PRICEChange(Sender: TField);
var CFAGIO_SUM_PRICE,CFAGIO_PRICE : Double;
begin
  inherited;
  try
    Sender.OnChange := nil;
    if UserInfo.RoundBillType=1 then //商品单价位置处理小数位
       Sender.AsFloat := CliDM.SimpleRoundTo(Sender.AsFloat);
  finally
    Sender.OnChange := csDetailCFAGIO_PRICEChange;
  end;
  
  try
    csDetailCFAGIO.OnChange := nil;  //隐藏调整折扣change事件，避免死循环
    csDetailCFAGIO_SUM_PRICE.OnChange := nil;
    //WriteTxt('csDetailCFAGIO_PRICEChange CFAGIO_PRICE='+FloatToStr(Sender.AsFloat)+' CFPRICE='+FloatToStr(Sender.DataSet.FieldByName('CFPRICE').AsFloat));
    if Sender.DataSet.FieldByName('CFPRICE').AsFloat =0 then
      Sender.DataSet.FieldByName('CFAGIO').AsFloat := 0
    else
      Sender.DataSet.FieldByName('CFAGIO').AsFloat := Sender.AsFloat / Sender.DataSet.FieldByName('CFPRICE').AsFloat*100; //折扣
    CFAGIO_SUM_PRICE := Sender.AsFloat * Sender.DataSet.FieldByName('CFAMOUNT').AsFloat;

    if UserInfo.RoundBillType=2 then //商品金额位置处理小数位
      CFAGIO_SUM_PRICE := CliDM.SimpleRoundTo(CFAGIO_SUM_PRICE);
    Sender.DataSet.FieldByName('CFAGIO_SUM_PRICE').AsFloat := CFAGIO_SUM_PRICE; //折扣后金额
  finally
    csDetailCFAGIO.OnChange := csDetailCFAGIOChange;
    csDetailCFAGIO_SUM_PRICE.OnChange := csDetailCFAGIO_SUM_PRICEChange;
  end;
end;

procedure TFrmPOSEdit.act_F2Execute(Sender: TObject);
var Integral,CFPaymentMoney,CFAMOUNT,fotherAMT : Double;
  CFVIPCardNumber,ErrMsg,strsql,OutMsg : string;
  FBIZDATE,srcBillFID : string;
begin
  inherited;
  while not VipAmt.IsEmpty do VipAmt.Delete;
  LoadShopRreceiveType;  //加载收银方式
  if Userinfo.Cash_FID='' then
  begin
    ShowError(Handle, '本机缺少“现金”收款方式，请到“基础资料”执行“下载数据”后，重新登录系统！!',[]);
    Abort;
  end;

  if dsMaster.DataSet.State in db.dsEditModes then
     dsMaster.DataSet.Post;

  if dsDetail.DataSet.State in db.dsEditModes then
    dsDetail.DataSet.Post;
  GetEditStatus; //检查是否允许结单或者挂单
  if cxDetail.DataController.DataSource.DataSet.IsEmpty then
  begin
    ShowMsg(Handle, '没有销售记录!不能结单',[]);
    edt_sStyleBarCode.SetFocus;
    abort;
  end;
  //手工单不允许同时出现正负数
  if not checkListData(OutMsg) then
  begin
    ShowMsg(Handle,OutMsg,[]);
    Abort;
  end;
  //检查负库存出库
  if not checkstockQty(OutMsg)   then
  begin
    ShowMsg(Handle,OutMsg,[]);
    Abort;
  end;
  //日结后当天不允许再结单
  FBIZDATE := FormatDateTime('yyyy-mm-dd', dsMaster.DataSet.FieldByName('FBIZDATE').AsDateTime);
  if UserInfo.PeriBeginDate <> '' then
  if FBIZDATE<UserInfo.PeriBeginDate then
  begin
    ShowMsg(Handle,'业务日期不能小于当前会计期间开始日期【'+UserInfo.PeriBeginDate+'】,请按CTRL+B修改业务日期！',[]);
    abort;
  end;
  if UserInfo.IniStoDate<>'' then
  if FBIZDATE<UserInfo.IniStoDate then
  begin
    ShowMsg(Handle,'业务日期不能小于库存初始化日期【'+UserInfo.IniStoDate+'】,请按CTRL+B修改业务日期！',[]);
    abort;
  end;

  try
    //打开结单界面 begin
    if UserInfo.Is_SysOnline then
    begin
      CliDM.Chk_UserRight(UserInfo.RetailPOSID,'posF2'); //检查权限
      if CliDM.CHKPeriodClose(FormatDateTime('yyyy-mm-dd',csMaster.FieldByName('fbizdate').AsDateTime) )then
      begin
        ShowMsg(Handle, '业务日期【'+FormatDateTime('yyyy-mm-dd',csMaster.FieldByName('fbizdate').AsDateTime)+'】所在的会计期间已经关账,请修改业务日期',[]);
        Abort;
      end;
      /////owen判断是否结账
      if CliDM.CHKPeriodCHKOUT(FormatDateTime('yyyy-mm-dd',csMaster.FieldByName('fbizdate').AsDateTime))then
      begin
        ShowMsg(Handle, '业务日期【'+FormatDateTime('yyyy-mm-dd',csMaster.FieldByName('fbizdate').AsDateTime)+'】所在的会计期间已经结账,请修改业务日期',[]);
        Abort;
      end;
      //
      if FBIZDATE <> FormatDateTime('yyyy-mm-dd',CliDM.Get_ServerTime) then   ///业务日期不等于当前系统日期检查业务日期是否日结owen
      begin
        try
          strsql := 'select 1 from T_POS_DayBalance where FWarehouseID ='+quotedstr(UserInfo.Warehouse_FID)+' and to_char(Begindate,''yyyy-mm-dd'')='+quotedstr(FBIZDATE);
          CliDM.Get_OpenSQL(clidm.cdsTemp,strsql,ErrMsg);
        except
          on e : Exception do
          begin
            ShowMsg(Handle, '检查当前业务日期是否日结出错:'+E.Message,[]);
          end;
        end;
        if clidm.cdsTemp.RecordCount>0 then
        begin
          ShowMsg(Handle, FBIZDATE+'已经日结过，请修改业务日期【CTRL+B】！',[]);
          abort;
        end;
      end
      else
      begin
        if FormatDateTime('yyyy-mm-dd',UserInfo.DayEndDay)<>'1899-12-30' then
        if StrToDate(FBIZDATE) <= UserInfo.DayEndDay then
        begin
          ShowMsg(Handle, FBIZDATE+'已经日结过，请修改业务日期【CTRL+B】！',[]);
          abort;
        end;
      end;
      Delete_Entry_Temp;  //删除临时数据
      Insert_Entry_Temp;  //记录临时数据：记录单据款号信息以及金额到明细表中，用于整单促销中的组合促销
      {
      if dsMaster.DataSet.FieldByName('CFISReturn').AsInteger = 0 then  //退货单必需找到源单   0 正常销售 1退货
      if ReturnCount>0 then
      begin
        ShowMsg(Handle, '退换货必需通过快捷键【CTRL+D】找到源单后再结单！',[]);
        abort;
      end;
      }
      
      //if ReturnCount>0 then CliDM.Chk_UserRight(UserInfo.RetailPOSID,'posCTRL_C'); //检查退货权限
      {if (SalesCount>0) and (ReturnCount>0) then
      begin
        ShowMsg(Handle, '退货商品必需重新开一张单据！',[]);
        abort;
      end;
      }
      //退货单不参与整单促销   CFISReturn=1 退货
      if dsMaster.DataSet.FieldByName('CFISReturn').AsInteger = 0 then Set_Explain_Bill;   //选择整单促销
      //// 判断折扣是否小于营业员最低折扣owen
      if dsMaster.DataSet.FieldByName('CFISReturn').AsInteger = 0 then
      if UserInfo.Cflowestdiscrate>0 then
      begin
        dsDetail.DataSet.First;
        while not dsDetail.DataSet.Eof do
        begin
          if dsDetail.DataSet.FieldByName('CFAGIO').AsInteger< UserInfo.Cflowestdiscrate then
          begin
            ShowError(Handle, '零售单分录折扣不小于营业员最低折扣【'+Inttostr(UserInfo.Cflowestdiscrate)+'】!',[]);
            Abort;
          end;
          dsDetail.DataSet.Next;
        end;
      end;
      ////////////
      if UserInfo.Delete_POS_Temp then Delete_Entry_Temp;  //删除临时数据
      if ShowSLPFrm(POSBillIDValue,FDISCOUNTRATE,csMaster,csDetail,csRetailPRPRE) then
      begin
        if not (dsMaster.DataSet.State in db.dsEditModes) then dsMaster.DataSet.Edit;
        dsMaster.DataSet.FieldByName('iStatus').Value := 2;  //单据状态
        dsMaster.DataSet.FieldByName('CFSTATE').Value := 2;  //单据状态  EAS单据实体用：暂时用于礼品换积分时过滤有效零售单用

        dsMaster.DataSet.FieldByName('FAUDITORID').Value := UserInfo.LoginUser_FID;  //审核人
        dsMaster.DataSet.FieldByName('FLASTUPDATEUSERID').Value := UserInfo.LoginUser_FID;  //审核人
        dsMaster.DataSet.FieldByName('FLASTUPDATETIME').AsDateTime := CliDM.Get_ServerTime;  //审核时间
        if (SalesCount=0) and (ReturnCount>0) then //如果全部是退货数量，那么单据标记为退货单
          dsMaster.DataSet.FieldByName('CFISReturn').Value := 1;  //退货单

        CFVIPCardNumber := csMaster.FieldByName('CFVIPCardNumber').AsString;
        if CFVIPCardNumber<> '' then   //是会员则计算积分
        begin
          try
            
            CFPaymentMoney := csMaster.fieldByName('CFPaymentMoney').AsFloat;   //获取本单收款金额
            FbonusRate := csMaster.fieldByName('CFbonusRate').AsFloat;      //积分换算率
            if FbonusRate<> 0 then //零积分换算率不参与积分
               Integral := CFPaymentMoney/FbonusRate;
            if IsdepCopros then  //赠卷和会员积分兑换owen
               Integral := depCopros*(-1) ;
            if  IsdepCopros then  //赠卷和会员积分兑换退单不扣积分owen
            if dsMaster.DataSet.FieldByName('CFISReturn').Value=1 then
              Integral := depCopros;
              //Integral := CalcIntegral(POSBillIDValue,CFVIPCardNumber,CFPaymentMoney,FbonusRate); //根据数量或者金额计算积分，在本地数据库计算
            dsMaster.DataSet.FieldByName('CFIntegral').Value := Integral;  //表头记录积分
            //会员卡记录积分增加本单积分
            {cds_Vipcard.Edit;
            cds_Vipcard.FieldByName('FLastConsumeDate').AsDateTime := CliDM.Get_ServerTime; //最后一次消费日期
            cds_Vipcard.FieldByName('FCumulateConsumeAmout').Value := cds_Vipcard.FieldByName('FCumulateConsumeAmout').Value+CFPaymentMoney;  //累计消费金额
            cds_Vipcard.FieldByName('FCurrentBonus').Value := cds_Vipcard.FieldByName('FCurrentBonus').Value+Integral; //当前积分
            cds_Vipcard.FieldByName('FCumulateBonus').Value := cds_Vipcard.FieldByName('FCumulateBonus').Value+Integral;  //累计积分
            }
          except
            on E:Exception do       //异常之后单据改为新单，不提交
            begin
              ShowError(Handle, e.Message,[]);
              dsMaster.Edit;
              dsMaster.DataSet.FieldByName('iStatus').Value := 0;
              dsMaster.DataSet.FieldByName('CFSTATE').Value := 0;
              Abort;
            end;
          end;
        end;

        ScaleAssign;  //自动计算分配比例

        if ST_Save then //在线提交 ErrMsg
        begin
          //更新服务器会员卡积分和流水记录
           if CFVIPCardNumber<> '' then
           if not CliDM.Pub_UpCardIntegral(CFVIPCardNumber,POSBillIDValue,CFPaymentMoney,Integral,VipAmt,ErrMsg) then
           begin
             dsMaster.Edit;
             dsMaster.DataSet.FieldByName('iStatus').Value := 0;
             ShowMsg(Handle, ErrMsg,[]);
             Abort;
           end;
           //打印小票
           if UserInfo.F2Print then
           begin
             if not RM_PrintRpt(Self, UserInfo.ExePath + '\Report\零售单\结单小票_在线.rmf',False,True,RM_PName) then
             ShowError(Handle, '零售单['+POSBillNumber+']打印出错！',[]);

           end;
           depCopros := 0;
           Cfexchange := 0;
           fcurrentbonus := 0;
           IsdepCopros := False;
           txt_vip.Text     :=  '';
           txt_vipInfo.Text := '';
           srcBillFID :=   Trim(csMaster.fieldbyname('FSOURCEBILLID').AsString);
           //结单成功，把挂单状态修改为-2
           if (srcBillFID<>'') then
           begin
             CliDM.Get_ExecSQL('update ct_bil_retailpos a set a.istatus=-2,a.cfstate=-2 where  a.fid ='+QuotedStr(srcBillFID)+' and  a.istatus=-1',ErrMsg)
           end;
           //20110123 保存成功后才打印小票  因为有门店反映小票有出，单据却没有保存的现象
        end
        else
        begin
          ShowError(Handle, '零售单['+POSBillNumber+']提交失败，请检查网络是否正常，稍后重新结单！',[]);

          dsMaster.Edit;
          dsMaster.DataSet.FieldByName('iStatus').Value := 0;
          Abort;
        end;

        //开钱箱
        if UserInfo.F2OpenMoneyBox then openMoneyBox(Comm1);
        EditBill('');   //打开一张新单
        SetEditStatus;  //设置控件是否允许编辑
      end;
    end
    else
    begin
        SalesCount :=0;   //正常销售数量
        ReturnCount:=0;   //退货数量
        with dsDetail.DataSet do
        begin
          try
          DisableControls;
          OnCalcFields := nil;
          First;
          while not Eof do
          begin
            CFAMOUNT := FieldByName('CFAMOUNT').AsFloat;            //数量
            if CFAMOUNT>0 then //正常销售数量
            SalesCount :=SalesCount+1
            else //退货数量
            ReturnCount:=ReturnCount+1;
            Next;
          end;
          finally
            OnCalcFields := csDetailCalcFields;
            EnableControls;
          end;
        end;
        if ReturnCount>0 then CliDM.Chk_UserRight(UserInfo.RetailPOSID,'posCTRL_C'); //检查退货权限
        if (SalesCount>0) and (ReturnCount>0) then
        begin
          ShowMsg(Handle, '退货商品必需重新开一张单据！',[]);
          abort;
        end;
      Delete_Entry_Temp;  //删除临时数据
      Insert_Entry_Temp;  //记录临时数据：记录单据款号信息以及金额到明细表中，用于整单促销中的组合促销
      if dsMaster.DataSet.FieldByName('CFISReturn').AsInteger = 0 then Set_Explain_Bill;   //选择整单促销      //// 判断折扣是否小于营业员最低折扣owen

            //// 判断折扣是否小于营业员最低折扣owen
      if ReturnCount=0then
      if UserInfo.Cflowestdiscrate>0 then
      begin
        dsDetail.DataSet.First;
        while not dsDetail.DataSet.Eof do
        begin
          if dsDetail.DataSet.FieldByName('CFAGIO').AsInteger< UserInfo.Cflowestdiscrate then
          begin
            ShowError(Handle, '零售单分录折扣不小于营业员最低折扣【'+Inttostr(UserInfo.Cflowestdiscrate)+'】!',[]);
            Abort;
          end;
          dsDetail.DataSet.Next;
        end;
      end;
      ////////////
      if ShowSLPFrm(POSBillIDValue,FDISCOUNTRATE,QryMater,QryDetail,qryPrepre) then
      begin
        if not (dsMaster.DataSet.State in db.dsEditModes) then dsMaster.DataSet.Edit;
        dsMaster.DataSet.FieldByName('iStatus').Value := 2;
        dsMaster.DataSet.FieldByName('CFSTATE').Value := 2;  //单据状态  EAS单据实体用
        dsMaster.DataSet.FieldByName('FAUDITORID').Value := UserInfo.LoginUser_FID;  //审核人
        if (SalesCount=0) and (ReturnCount>0) then //如果全部是退货数量，那么单据标记为退货单
        dsMaster.DataSet.FieldByName('CFISReturn').Value := 1;  //退货单

        ScaleAssign;  //自动计算分配比例 20120223
        if not ST_Save_NoLine then  //离线保存到数据库
        begin
          dsMaster.DataSet.FieldByName('iStatus').Value := 0;
          Abort;
        end;
        srcBillFID :=   Trim(csMaster.fieldbyname('FSOURCEBILLID').AsString);
        //结单成功，把挂单状态修改为-2
        if (srcBillFID<>'') then
        begin
          CliDM.Client_ExecSQL('update ct_bil_retailpos  set istatus=-2,cfstate=-2 where  fid ='+QuotedStr(srcBillFID)+' and  istatus=-1')
        end;
        //打印小票
        if UserInfo.F2Print then RM_PrintRpt(Self, UserInfo.ExePath + '\Report\零售单\结单小票_离线.rmf',False,True,RM_PName); //打印小票
        //开钱箱
        if UserInfo.F2OpenMoneyBox then openMoneyBox(Comm1);
        EditBillI_NoOnline('');  //新增一张离线POS单
        SetEditStatus; //设置控件是否允许编辑
      end;
     depCopros := 0;
     Cfexchange := 0;
     fcurrentbonus := 0;
     IsdepCopros := False;
    end;
    ///////////////owen

    if  CliDM.qryInsertCashlist.Active then
      CliDM.qryInsertCashlist.UpdateBatch();//提交钱箱现金台账owen
    //删除缓存数据 许志祥
    DelTempFile;
    //////////////////////////////////
    //打开结单界面 end
  finally
    if UserInfo.Delete_POS_Temp then Delete_Entry_Temp;  //删除临时数据
    edt_sStyleBarCode.SetFocus;
  end;
end;

procedure TFrmPOSEdit.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var toFileName : string;
begin
 // inherited;  //Windows单元获取值
  if (Key = VK_F1)  then
  begin
    toFileName:=ExtractFilePath(Application.ExeName)+'help.chm';
    if not FileExists(toFileName)  then
    begin
      ShowMsg(Handle, '没有找到帮助文件(help.chm)!',[]);
      Exit;
    end;
    shellexecute(handle,'open',pchar(toFileName),nil,nil,sw_shownormal);
  end;

  if (Key = VK_F2)  then
    act_F2.Execute;
  if (Key = VK_F3)  then
    act_F3.Execute;
  if (Key = VK_F4)  then
    act_F4.Execute;
  if (Key = VK_F5)  then
    act_F5.Execute;
  if (Key = VK_F6)  then
    act_F6.Execute;
  if (Key = VK_F7)  then
    act_F7.Execute;
  if (Key = VK_F8)  then
    act_F8.Execute;
  if (Key = VK_F9)  then
    act_F9.Execute;
  if (Key = VK_F10)  then
    act_F10.Execute;
  if (Key = VK_F11)  then
    act_F11.Execute;
  if (Key = VK_F12)  then
    act_F12.Execute;
  
  if (shift = [ssCtrl]) and (key = 65) then  //crtl+A 分配比例
    act_CtrlA.Execute;
  if (shift = [ssCtrl]) and (key = 66) then  //crtl+B 修改业务时间
    act_CtrlB.Execute;
  if (shift = [ssCtrl]) and (key = 68) then  //crtl+D 退货
    act_CtrlD.Execute;
  if (shift = [ssCtrl]) and (key = 69) then  //crtl+E 退定金
    act_CtrlE.Execute;
  if (shift = [ssCtrl]) and (key = 70) then  //crtl+F 退定金  挂单直接结单
    act_CtrlF.Execute;
  if (shift = [ssCtrl]) and (key = 71) then  //crtl+G 修改商场结算信息
    act_CrtlG.Execute;
  if (shift = [ssCtrl]) and (key = 72) then  //crtl+H 当天收银
    act_CtrlH.Execute;
  if (shift = [ssCtrl]) and (key = 80) then  //crtl+P 重打小票
    actPrintRepeat.Execute;
  if (shift = [ssCtrl]) and (key = 83) then  //crtl+S 修改数量
    act_CtrlS.Execute;
  if (shift = [ssCtrl]) and (key = 90) then  //crtl+Z 赠品价格清零
    act_CtrlZ.Execute;


  if (shift = [ssCtrl]) and (key = 49) then  //crtl+1 删除当前商品
    act_DeleteDetail.Execute;
  if (shift = [ssCtrl]) and (key = 50) then  //crtl+2 删除所有商品
    actDelAll.Execute;
  if (shift = [ssCtrl]) and (key = 51) then  //crtl+3 定位到条码
    edt_sStyleBarCode.SetFocus;
  if (shift = [ssCtrl]) and (key = 52) then  //CTRL+4 查看源单收银方式...
    item_PalyView.OnClick(nil);
    //////////owen 2012-05-02

  if (Shift =[ssctrl])  and (Key=73 ) then
    act_CtrlI.Execute;           //CTrl+I上班登记
  if (Shift =[ssctrl])  and (Key=74 ) then
    act_CtrlJ.Execute;           //CTrl+J存现金
  if (Shift =[ssctrl])  and (Key=75 ) then
    act_CtrlK.Execute;           //CTrl+K取现金
  if (Shift =[ssctrl])  and (Key=78 ) then
    act_CtrlN.Execute;           //CTrl+K现金台账
  if (Shift =[ssctrl] ) and (Key=76 ) then
    act_CtrlL.Execute;           //CTrl+L 下班结账

  //切换正负号  许志祥
  if (Shift =[ssctrl] ) and (Key=82 ) then
  act_CtrlR.Execute;           //CTrl+R 切换正负号

  //查询物料  许志祥
  if (Shift =[ssctrl] ) and (Key=77 ) then
  act_CtrlM.Execute;           //CTrl+M 查询物料
  //查询会员  许志祥
  if (Shift =[ssctrl] ) and (Key=81 ) then
  act_CtrlQ.Execute;           //CTrl+Q 查询会员
  if (shift = [ssCtrl]) and (key = 84) then  //crtl+T清空会员信息owen
    act_CtrlT.Execute;
  //许志祥 缓存数据
  if (shift = [ssCtrl]) and (key = 87) then  //缓存数据
  act_CtrlW.Execute;
  //换班
  if (shift = [ssCtrl]) and (key = 89) then
  act_CtrlY.Execute;

  if (key = 45 ) then
  act_F7.Execute;

end;

procedure TFrmPOSEdit.act_F4Execute(Sender: TObject);
begin
  inherited;
  GetEditStatus;  //必需是新单状态才能选单
  if not dsDetail.DataSet.IsEmpty then
  begin
    ShowMsg(Handle, '请新增一张POS单后再做选单操作！',[]);
    abort;
  end;
  if UserInfo.Is_SysOnline then
  begin
     CliDM.Chk_UserRight(UserInfo.RetailPOSID,'posF4'); //检查权限
    GetHangBillID(POSBillIDValue,POSBillNumber,csMaster,csDetail,csRetailPRPRE) //打开选单界面，从服务器获取挂单记录
  end
  else
    GetHangBillID(POSBillIDValue,POSBillNumber,QryMater,QryDetail,qryPrepre) //打开选单界面，从本地获取挂单记录
end;

procedure TFrmPOSEdit.act_F5Execute(Sender: TObject);
begin
  inherited;
  GetEditStatus;
  if cxDetail.DataController.DataSource.DataSet.IsEmpty then
  begin
    ShowMsg(Handle, '没有销售记录!',[]);
    abort;
  end;
  SetBillSalesMan(cxDetail.DataController.DataSource.DataSet);  //更新售货员
end;

procedure TFrmPOSEdit.FormShow(Sender: TObject);
begin
  inherited;
  edt_sStyleBarCode.SetFocus;  //选中条码
  lbWareHouse.Caption := '店铺:'+UserInfo.Warehouse_NumberName;   //店铺
  lbFreQuency.Caption := UserInfo.FreQuency_Name;   //班次

  SetEditStatus; //设置控件是否允许编辑
  //cxDetail.OptionsView.HeaderHeight:=26;
  //加载网格样式
  if FileExists(UserInfo.ExePath+'GridStyle\'+self.Name+cxDetail.Name+'.ini') then
  GetGridStyleFromini(cxDetail,UserInfo.ExePath+'GridStyle\'+self.Name+cxDetail.Name+'.ini');
  loadTempdata;
  VipAmt.CreateDataSet;

end;

procedure TFrmPOSEdit.act_F9Execute(Sender: TObject);
begin
  inherited;
  GetEditStatus;
  if not dsDetail.DataSet.IsEmpty then
  begin
    if UserInfo.Is_SysOnline then CliDM.Chk_UserRight(UserInfo.RetailPOSID,'posF9_1');  //修改单价金额权限

    cxDetail.GetColumnByFieldName('CFAGIO').Options.Editing := True;
    cxDetail.GetColumnByFieldName('CFAGIO_PRICE').Options.Editing := True;
    cxDetail.GetColumnByFieldName('CFAGIO_SUM_PRICE').Options.Editing := True;
    cxGD.SetFocus;
    cxDetail.GetColumnByFieldName('CFAGIO').Selected := True;
    cxDetail.GetColumnByFieldName('CFAGIO').Focused := True;
    cxDetail.Controller.EditingController.ShowEdit;
  end;
end;

procedure TFrmPOSEdit.act_F6Execute(Sender: TObject);
var CFMATERIALID,MaterNumber,MaterName : string;
begin
  inherited;
  if not UserInfo.Is_SysOnline then
  begin
    ShowMsg(Handle, '只有联机状态下才能使用本功能！',[]);
    abort;
  end;
   CliDM.Chk_UserRight(UserInfo.RetailPOSID,'posF6'); //检查权限

  if not cxDetail.DataController.DataSource.DataSet.IsEmpty then
  with cxDetail.DataController.DataSource.DataSet do
  begin
    if FieldByName('CFMATERIALID') <> nil then
      CFMATERIALID := FieldByName('CFMATERIALID').AsString;
    if FieldByName('cfMaterialNumber') <> nil then
      MaterNumber := FieldByName('cfMaterialNumber').AsString;
    if FieldByName('cfMaterialName') <> nil then
      MaterName := FieldByName('cfMaterialName').AsString;
  end;
  
  ShowstorageQry(UserInfo.Warehouse_FID,CFMATERIALID,MaterNumber,MaterName); //查询库存
end;

procedure TFrmPOSEdit.act_F3Execute(Sender: TObject);
var EarnestMoney : Double;
    GDBillNo,sqlstr : string;
begin
  inherited;
  if dsDetail.DataSet.State in db.dsEditModes then dsDetail.DataSet.Post;
  if UserInfo.Is_SysOnline then CliDM.Chk_UserRight(UserInfo.RetailPOSID,'posF3'); //检查权限
  GetEditStatus;  //检查是否允许挂单
  LoadShopRreceiveType;  //加载收银方式
  
  //挂单状态
  if UserInfo.Earnest_FID='' then
  begin
    ShowError(Handle, '本机缺少“定金”收款方式，会影响POS挂单和结单，请到“基础资料”执行“下载数据”后，重新登录系统挂单！!',[]);
    Abort;
  end;
  //如果是选单后的单据再挂单，应该带出上次的挂单金额
  if dsRetailPRPRE.DataSet.Locate('CFPAYMENTTYPE',UserInfo.Earnest_FID,[]) then
      EarnestMoney := csRetailPRPRE.FieldByName('CFHAVE_PAY_MONEY').AsFloat;

  //记录定金
  if ShowEarnestMoney(EarnestMoney,GDBillNo) then
  begin
    if UserInfo.Is_SysOnline then
    begin
      DataSetEditStatus(csMaster);
      DataSetEditStatus(csRetailPRPRE);
      if csMaster.FieldByName('iStatus') <> nil then
         csMaster.FieldByName('iStatus').Value := -1;
         
      if GDBillNo<>'' then  //挂单单号
      if dsMaster.DataSet.FieldByName('CFGDBILLNo') <> nil then
         dsMaster.DataSet.FieldByName('CFGDBILLNo').Value := GDBillNo;

     { if dsMaster.DataSet.FieldByName('CFVIPCardNumber').AsString <> '' then  //挂单时清空会员
         dsMaster.DataSet.FieldByName('CFVIPCardNumber').AsString := ''; }  //owen挂单不清除会员，如果要清除选单后快捷键清除

       dsMaster.DataSet.FieldByName('FLASTUPDATEUSERID').Value := UserInfo.LoginUser_FID;  //审核人
       dsMaster.DataSet.FieldByName('FLASTUPDATETIME').AsDateTime := CliDM.Get_ServerTime;  //审核时间

      //记录定金
      if not csRetailPRPRE.Locate('CFPAYMENTTYPE',UserInfo.Earnest_FID,[]) then
      begin
        DataSetEditStatus(csRetailPRPRE);
        csRetailPRPRE.Append;  
        csRetailPRPRE.FieldByName('FID').value := CliDM.GetEASSID(UserInfo.RetailPOSReceiverEntryID);
        csRetailPRPRE.FieldByName('FSEQ').AsFloat  := csRetailPRPRE.RecordCount+1;
        csRetailPRPRE.FieldByName('CFPAYMENTTYPE').AsString := UserInfo.Earnest_FID;
        csRetailPRPRE.FieldByName('FPARENTID').AsString := POSBillIDValue;  //主表ID
        csRetailPRPRE.FieldByName('CFHAVE_PAY_MONEY').AsFloat := EarnestMoney;  //主表ID
      end
      else //如果是从选单过来的单据再挂单，需要新修改挂单金额
      begin
        DataSetEditStatus(csRetailPRPRE);
        csRetailPRPRE.FieldByName('CFHAVE_PAY_MONEY').AsFloat := EarnestMoney;  //主表ID
      end;
      ST_Save;  //提交到服务器
      //打印挂单小票
      if FileExists(UserInfo.ExePath + '\Report\零售单\挂单小票_在线.rmf') then
         RM_PrintRpt(self, UserInfo.ExePath + '\Report\零售单\挂单小票_在线.rmf',False,True,RM_PName)
      else
         ShowMsg(Handle,'没有找到挂单打印模版',[]);
      EditBill('');//打开一张新单
    end
    else //离线
    begin
      DataSetEditStatus(QryMater);
      if QryMater.FieldByName('iStatus') <> nil then
        QryMater.FieldByName('iStatus').Value := -1;

      if GDBillNo<>'' then  //挂单单号
      if dsMaster.DataSet.FieldByName('CFGDBILLNo') <> nil then
         dsMaster.DataSet.FieldByName('CFGDBILLNo').Value := GDBillNo;

      DataSetEditStatus(qryPrepre);
      if not qryPrepre.Locate('CFPAYMENTTYPE',UserInfo.Earnest_FID,[]) then
      begin
        qryPrepre.Append;
        qryPrepre.FieldByName('CFPAYMENTTYPE').AsString := UserInfo.Earnest_FID;
        qryPrepre.FieldByName('FPARENTID').AsString := POSBillIDValue;
        qryPrepre.FieldByName('CFHAVE_PAY_MONEY').AsFloat := EarnestMoney;
      end;
      ST_Save_NoLine;  //离线保存到数据库
      //打印挂单小票
      if FileExists(UserInfo.ExePath + '\Report\零售单\挂单小票_离线.rmf') then
        RM_PrintRpt(self, UserInfo.ExePath + '\Report\零售单\挂单小票_离线.rmf',False,True,RM_PName)
      else
        ShowMsg(Handle,'没有找到挂单打印模版',[]);
      EditBillI_NoOnline('');  //新开一张单据
    end;
    edt_sStyleBarCode.SetFocus;
  end;
end;

procedure TFrmPOSEdit.act_F8Execute(Sender: TObject);
begin
  inherited;
  if UserInfo.Is_SysOnline then
   CliDM.Chk_UserRight(UserInfo.RetailPOSID,'posF8'); //检查权限
  openMoneyBox(Comm1);
end;

procedure TFrmPOSEdit.act_F11Execute(Sender: TObject);
begin
  inherited;
  if not UserInfo.Is_SysOnline then
  begin
    ShowMsg(Handle, '只有联机状态下才能使用本功能！',[]);
    abort;
  end;
  depCopros := 0;
  Cfexchange := 0;
  fcurrentbonus := 0;
  IsdepCopros := False;
  GetEditStatus; //已经结单的单据不允许曹祖
  if csMaster.FieldByName('CFVIPCardNumber').AsString <> '' then  //检查是否录入过会员
  begin
    ShowMsg(Handle, '当前单据已经录入会员卡【'+csMaster.FieldByName('CFVIPCardNumber').AsString+'】',[]);
    abort;
  end;
  if not dsDetail.DataSet.IsEmpty then //有商品不能再录入
  begin
    ShowMsg(Handle, '必需先录会员再录商品！',[]);
    abort;
  end;
  VIPCardInput(csMaster,FbonusRate,FDISCOUNTRATE,FDOUBLEDISCOUNTRATE,FLOWERLIMITDISCOUNTRATE,strVIPInfo,strVIPBonus);  //输入会员
  txt_vip.Text     :=  strVIPInfo;
  txt_vipInfo.Text := strVIPBonus;
end;

procedure TFrmPOSEdit.act_F10Execute(Sender: TObject);
begin
  inherited;
  if not UserInfo.Is_SysOnline then
  begin
    ShowMsg(Handle, '只有联机状态下才能使用本功能！',[]);
    abort;
  end;

  if dsMaster.DataSet.FieldByName('ISTATUS').AsInteger = 0 then
  if not dsDetail.DataSet.IsEmpty then
  begin
    ShowMsg(Handle, '请处理当前单据后再做日结！',[]);
    abort;
  end;

  ShowDayBalance; //日结
end;

procedure TFrmPOSEdit.act_F12Execute(Sender: TObject);
begin
  inherited;
  LockSys;   //锁定系统
end;

procedure TFrmPOSEdit.csDetailCFAMOUNTChange(Sender: TField);
var AmountSum : double;
begin
  inherited;
  try
    Sender.DataSet.FieldByName('CFAGIO_SUM_PRICE').OnChange := nil;
    Sender.DataSet.FieldByName('CFAGIO_SUM_PRICE').AsFloat := Sender.AsFloat * Sender.DataSet.FieldByName('CFAGIO_PRICE').AsFloat; //折扣后金额
  finally
    Sender.DataSet.FieldByName('CFAGIO_SUM_PRICE').OnChange := csDetailCFAGIO_SUM_PRICEChange;
    //csDetailCFAGIO.OnChange := csDetailCFAGIOChange;
  end;

   //触发修改合计数量和合计金额
    {
    with dsDetail.DataSet do
    begin
      First;
      while not Eof do
      begin
        AmountSum := AMOUNTSum + FieldbyName('CFAMOUNT').AsFloat;
        Next;
      end;
    end;
    lbAmount.Caption := FloatToStr(AmountSum);
    }
end;

procedure TFrmPOSEdit.cxDetailDataControllerSummaryAfterSummary(
  ASender: TcxDataSummary);
 var sunPrice:String;
begin
  inherited;
  lbAmount.Caption := VarToStr(aSender.FooterSummaryValues[0]);
  sunPrice:=VarToStr(aSender.FooterSummaryValues[1]);
  if (sunPrice<>'') then
  lbSum_Price.Caption :=FormatFloat('0.00',StrToFloat(sunPrice))
  else
  lbSum_Price.Caption :='';
end;

function TFrmPOSEdit.EditBillI_NoOnline(BillIDValue: string): Boolean;
begin
  Result := True;
  dsMaster.DataSet := QryMater;
  dsDetail.DataSet := QryDetail;
  dsRetailPRPRE.DataSet := qryPrepre;
  dsScaleAssign.DataSet := qryScaleAssign;
  
  try
    if BillIDValue='' then  //新增单据
    begin
      DetailFSEQ := 1;
      PrepreFSEQ := 1;
      FbonusRate := 0;  //卡级别对应积分比率（元）  清零
      with QryMater do
      begin
        Close;
        SQL.Clear;
        SQL.Add('select * From CT_BIL_RetailPOS where 1<>1');
        Open;
        Append;
      end;
      with QryDetail do
      begin
        Close;
        SQL.Clear;
        SQL.Add('select * From ct_bil_retailposentry where 1<>1');
        Open;
      end;
      with qryPrepre do
      begin
        Close;
        SQL.Clear;
        SQL.Add('select * From CT_BIL_RetailPRPRE where 1<>1');
        Open;
      end;
      with qryScaleAssign do
      begin
        Close;
        SQL.Clear;
        SQL.Add('select * From T_POS_ScaleAssign where 1<>1');
        Open;
      end;

    end
    else
    begin //打开已有单据

      with QryMater do
      begin
        Close;
        SQL.Clear;
        SQL.Add('select * From CT_BIL_RetailPOS where FID='+QuotedStr(BillIDValue));
        Open;
        //Append;
      end;
      with QryDetail do
      begin
        Close;
        SQL.Clear;
        SQL.Add('select * From ct_bil_retailposentry where FPARENTID='+QuotedStr(BillIDValue));
        Open;
      end;
      with qryPrepre do
      begin
        Close;
        SQL.Clear;
        SQL.Add('select * From CT_BIL_RetailPRPRE where FPARENTID='+QuotedStr(BillIDValue));
        Open;
      end;
      POSBillIDValue := BillIDValue;
      POSBillNumber := QryMater.fieldByName('FNUMBER').AsString;
    end;
  except
    on E:Exception do
    begin
      Result := False;
      ShowError(Handle, '打开零售单出错：'+e.Message,[]);
    end;
  end;

  BizDateStr:=formatdatetime('yyyy-MM-dd',QryMater.fieldbyname('FBIZDATE').asdatetime);
  if UserInfo.WareHouserCustorID <> '' then
   Self.Caption := 'POS开单-业务日期【'+BizDateStr+'】商场结算年份【'+QryMater.fieldbyName('CFBalanceYear').AsString+'】月份【'+QryMater.fieldbyName('CFBalanceMonth').AsString+'】'
  else
   Self.Caption := 'POS开单-业务日期【'+BizDateStr+'】';


end;


procedure TFrmPOSEdit.QryMaterNewRecord(DataSet: TDataSet);
var  cfBillTypeID : string;
begin
  inherited;
  POSBillIDValue := CliDM.GetEASSID(UserInfo.RetailPOSID);
  POSBillNumber := Clidm.GetBillNo('P',UserInfo.WareHouser_Sign,UserInfo.MachineCode); //单据编号
  CliDM.qryPosRetailEx.First;
  cfBillTypeID := CliDM.qryPosRetailEx.fieldByName('FID').AsString; //获取单据类型
  with DataSet do
  begin
    FieldByName('iStatus').AsInteger := 0;     
    FieldByName('FID').Value := POSBillIDValue;          //单据ID
    FieldByName('FNUMBER').Value := POSBillNumber;    //单据编号
    FieldByName('cfBillType').Value := cfBillTypeID;  //单据类型
    FieldByName('fcreatorid').Value := UserInfo.LoginUser_FID;
    FieldByName('fcreatetime').Value := CliDM.Get_ServerTime;
    FieldByName('flastupdateuserid').Value := '';
    FieldByName('flastupdatetime').Value := CliDM.Get_ServerTime;
    FieldByName('fcontrolunitid').Value := UserInfo.FCONTROLUNITID;
    FieldByName('fbizdate').Value := CliDM.Get_ServerTime;
    FieldByName('fhandlerid').Value := '';
    FieldByName('fdescription').Value := '';
    FieldByName('fhaseffected').Value := 0;
    FieldByName('fauditorid').Value := '';
    FieldByName('fsourcebillid').Value := '';
    FieldByName('fsourcefunction').Value := '';
    FieldByName('ffivouchered').Value := 0;
    FieldByName('cfclassno').Value := '';
    FieldByName('cfmachineno').Value := UserInfo.MachineCode;
    FieldByName('cfbalancedate').Value := CliDM.Get_ServerTime;
    FieldByName('cfassociator').Value := '';
    FieldByName('cfstorageid').Value := UserInfo.Warehouse_FID;
    FieldByName('cfstoreunitid').Value := UserInfo.FStoreOrgUnit;  //库存组织ID
    FieldByName('cfsaleunitid').Value := UserInfo.FSaleOrgID;   //销售组织ID
    FieldByName('cfcreatorname').Value := '';
    FieldByName('CFInterval_ID').Value := UserInfo.FreQuency_ID;  //班次ID
    FieldByName('CFISReturn').Value := 0;  //0 正常销售 1退货单
    FieldByName('CFBalanceYear').Value := UserInfo.BalanceYear;   //月结年份
    FieldByName('CFBalanceMonth').Value := UserInfo.BalanceMonth; //月结月份
    FieldByName('CFSETTLEBACKTYPEID').Value := UserInfo.CFBACKPointType;  //返点类型
    //20120125 天气温度
    FieldByName('CFWEATHER').Value := UserInfo.Weather; //天气
    FieldByName('CFLapseRate1').Value := UserInfo.lapseRate1; //最低温度
    FieldByName('CFLapseRate2').Value := UserInfo.lapseRate2; //最高温度
    //20120409
    FieldByName('CFYEAR').Value := UserInfo.YearStr; //年份
  end;
end;

procedure TFrmPOSEdit.QryDetailNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FPARENTID').AsString := POSBillIDValue;
  DataSet.FieldByName('FID').AsString := CliDM.GetEASSID(UserInfo.RetailPOSEntryID);
  DataSet.FieldByName('FSEQ').AsInteger := DetailFSEQ;
  DetailFSEQ := DetailFSEQ+1;
  
  //20120409
  DataSet.FieldByName('CFYEAR').Value := UserInfo.YearStr; //年份
  DataSet.FieldByName('cfstoreunitid').AsString := Userinfo.FStoreOrgUnit;   //库存组织
  DataSet.FieldByName('cfsaleunitid').AsString := Userinfo.FSaleOrgID;  //销售组织
  DataSet.FieldByName('CFWAREHOUSEID').AsString := Userinfo.Warehouse_FID;  //仓库
  
  //DataSet.FieldByName('CFSETTLEBACKTYPEID').AsString := UserInfo.CFBACKPointType;  //默认返点类型   改到表头
end;

procedure TFrmPOSEdit.qryPrepreNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FPARENTID').AsString := POSBillIDValue;
  DataSet.FieldByName('FID').AsString := CliDM.GetEASSID(UserInfo.RetailPOSReceiverEntryID);
  DataSet.FieldByName('FSEQ').AsInteger := PrepreFSEQ;
  PrepreFSEQ := PrepreFSEQ+1;

  //20120409
  DataSet.FieldByName('CFYEAR').Value := UserInfo.YearStr; //年份
  DataSet.FieldByName('cfstoreunitid').AsString := Userinfo.FStoreOrgUnit;   //库存组织
  DataSet.FieldByName('cfsaleunitid').AsString := Userinfo.FSaleOrgID;  //销售组织
  DataSet.FieldByName('CFWAREHOUSEID').AsString := Userinfo.Warehouse_FID;  //仓库
end;

procedure TFrmPOSEdit.QryDetailCFAGIOChange(Sender: TField);
begin
  inherited;
  try
    QryDetailCFAGIO_PRICE.OnChange := nil; //隐藏调整折扣价change事件，避免死循环
    Sender.DataSet.FieldByName('CFAGIO_PRICE').AsFloat := Sender.AsFloat * Sender.DataSet.FieldByName('CFPRICE').AsFloat/100; //折扣后价格
    Sender.DataSet.FieldByName('CFAGIO_SUM_PRICE').AsFloat := Sender.AsFloat * Sender.DataSet.FieldByName('CFPRICE').AsFloat*Sender.DataSet.FieldByName('CFAMOUNT').AsFloat/100; //折扣后金额
  finally
    QryDetailCFAGIO_PRICE.OnChange := QryDetailCFAGIO_PRICEChange;
  end;
end;

procedure TFrmPOSEdit.QryDetailCFAGIO_PRICEChange(Sender: TField);
begin
  inherited;
  try
    QryDetailCFAGIO.OnChange := nil;  //隐藏调整折扣change事件，避免死循环
    //WriteTxt('QryDetailCFAGIO_PRICEChange CFAGIO_PRICE='+FloatToStr(Sender.AsFloat)+' CFPRICE='+FloatToStr(Sender.DataSet.FieldByName('CFPRICE').AsFloat));
    Sender.DataSet.FieldByName('CFAGIO').AsFloat := Sender.AsFloat / Sender.DataSet.FieldByName('CFPRICE').AsFloat*100; //折扣
    Sender.DataSet.FieldByName('CFAGIO_SUM_PRICE').AsFloat := Sender.AsFloat * Sender.DataSet.FieldByName('CFAMOUNT').AsFloat; //折扣后金额
  finally
    QryDetailCFAGIO.OnChange := QryDetailCFAGIOChange;
  end;
end;

function TFrmPOSEdit.ST_Save_NoLine: Boolean;
var POSBillNumber:string;
begin
  Result := True;
  try
    CliDM.conClient.BeginTrans;
    if QryMater.State in DB.dsEditModes then QryMater.Post;
    if QryDetail.State in DB.dsEditModes then QryDetail.Post;
    POSBillNumber :=  QryMater.fieldbyname('fnumber').AsString;
    Gio.AddShow('POS单【'+POSBillNumber+'】开始提交!');
    Gio.AddShow('POS单【'+POSBillNumber+'】实收金额：'+QryMater.FieldByName('CFPaymentMoney').AsString);
    QryMater.UpdateBatch(arAll);
    QryDetail.UpdateBatch(arAll);
    //删除金额为0的记录，冗余记录
    qryPrepre.First;
    while not qryPrepre.Eof do
    begin
      if (qryPrepre.FieldByName('CFHAVE_PAY_MONEY').AsFloat = 0) or (qryPrepre.FieldByName('CFHAVE_PAY_MONEY').IsNull) then
      begin
        Gio.AddShow('POS单【'+POSBillNumber+'】删除空收银明细:'+qryPrepre.fieldbyName('cfPayMentTypeName').AsString+'  '+qryPrepre.FieldByName('CFHAVE_PAY_MONEY').AsString);
        qryPrepre.Delete;
        qryPrepre.First;
      end;
      qryPrepre.Next;
    end;
    if qryPrepre.State in DB.dsEditModes then qryPrepre.Post;
    if (QryMater.FieldByName('CFPaymentMoney').AsFloat<>0)   then
    begin
      if (qryPrepre.IsEmpty) or (qryPrepre.RecordCount=0) then
      begin
        CliDM.conClient.RollbackTrans;
        Gio.AddShow('POS单【'+POSBillNumber+'】收银方式收款为空,不能提交!');
        ShowMsg(Handle, '收银方式收款为空,不能提交!',[]);
        Result := False;
        Abort;
      end;
    end;
    qryPrepre.UpdateBatch(arAll);
    CliDM.conClient.CommitTrans;
    Gio.AddShow('POS单【'+POSBillNumber+'】提交完成!');
  except
    on E : Exception do
    begin
      CliDM.conClient.RollbackTrans;
      ShowMsg(Handle, '离线保存失败：'+E.Message,[]);
      Result := False;
      Abort;
    end;
  end;
end;

procedure TFrmPOSEdit.act_CtrlAExecute(Sender: TObject);
begin
  inherited;
  if UserInfo.Is_SysOnline then
      CliDM.Chk_UserRight(UserInfo.RetailPOSID,'posCTRL_A'); //检查权限

  if cxDetail.DataController.DataSource.DataSet.IsEmpty then
  begin
    ShowMsg(Handle, '没有销售记录!不能分配比例！',[]);
    edt_sStyleBarCode.SetFocus;
    abort;
  end;

  GetEditStatus;
  ScaleAssign;  //自动计算分配比例
  Open_ProrateFrm(dsScaleAssign);  //打开分配比例界面
end;

procedure TFrmPOSEdit.act_DeleteDetailExecute(Sender: TObject);
var DetailFID : string;
begin
  inherited;
  if UserInfo.Is_SysOnline then
     CliDM.Chk_UserRight(UserInfo.RetailPOSID,'posDelete'); //检查权限

  if cxDetail.DataController.DataSource.DataSet.IsEmpty then exit;
  GetEditStatus;  //检查是否允许编辑

  if dsDetail.DataSet.FieldByName('CFExplainInfo').AsString = '' then
  begin
    if ShowYesNo(Handle, '确定要删除该商品？',[])= IDNO then Exit;
    dsDetail.DataSet.Delete;
    //20120316 如果表头有记录整单促销单号或者整单折让金额，则删除
    if dsDetail.DataSet.IsEmpty then
    begin
      if not(dsMaster.DataSet.State in db.dsEditModes) then  dsMaster.DataSet.Edit;
      dsMaster.DataSet.FieldByName('CFExplain_BillNO').AsString := '';
      dsMaster.DataSet.FieldByName('CFZRMONEY').AsFloat := 0;
    end;

    Exit;
  end;

  if dsDetail.DataSet.FieldByName('CFFID_S').AsString <> '' then
  begin
    ShowMsg(Handle, '赠品不能直接删除，删除源款时才会自动删除赠品！',[]);
    Abort;
  end
  else
  begin
    if ShowYesNo(Handle, '确定要删除该商品以及相关赠品？',[])= IDNO then Exit;
    try
      dsDetail.DataSet.DisableControls;
        DetailFID := dsDetail.DataSet.FieldByName('FID').AsString;
        //删除赠品
        with dsDetail.DataSet do
        begin
          While not Eof do
          begin
            if dsDetail.DataSet.FieldByName('CFFID_S').AsString = DetailFID then
            begin
              dsDetail.DataSet.Delete;
              dsDetail.DataSet.First;
            end;
            Next;
          end;
        end;
        //删除源款
        dsDetail.DataSet.Locate('FID',DetailFID,[]);
        dsDetail.DataSet.Delete;
    finally
      dsDetail.DataSet.EnableControls;
    end;
  end;

  //20120316 如果表头有记录整单促销单号或者整单折让金额，则删除
  if dsDetail.DataSet.IsEmpty then
  begin
    if not(dsMaster.DataSet.State in db.dsEditModes) then  dsMaster.DataSet.Edit;
    dsMaster.DataSet.FieldByName('CFExplain_BillNO').AsString := '';
    dsMaster.DataSet.FieldByName('CFZRMONEY').AsFloat := 0;
  end;
end;

function TFrmPOSEdit.Set_Explain_Bill: Boolean;
//var AssociatorAgio : Double;
var CFExplain_BillNO : string;
begin
  //整单促销
  CFExplain_BillNO := dsMaster.DataSet.fieldByName('CFExplain_BillNO').AsString;
  if CFExplain_BillNO <> '' then exit;  //20120316 wushaoshu 整单促销只能使用一次
  if UserInfo.Is_SysOnline then
    chk_Explain_Bill(TDataSet(csMaster),TDataSet(csDetail),POSBillIDValue,FDISCOUNTRATE,FLOWERLIMITDISCOUNTRATE)
  else
    chk_Explain_Bill(TDataSet(QryMater),TDataSet(QryDetail),POSBillIDValue,FDISCOUNTRATE,FLOWERLIMITDISCOUNTRATE);
end;

function TFrmPOSEdit.Set_Explain_Style: Boolean;
var DetailFID,cfMaterialID,uColor_ID,uSize_ID : String;
    fUnit_Price, fAmount, fSum_Price: Double;
begin
  Result := True;
  //if not UserInfo.Is_SysOnline then Exit;  //20110625 离线不启用促销

  DetailFID := dsDetail.DataSet.fieldByName('FID').AsString;
  cfMaterialID := dsDetail.DataSet.fieldByName('cfMaterialID').AsString;
  uColor_ID := dsDetail.DataSet.fieldByName('CFCOLORID').AsString;
  uSize_ID  := dsDetail.DataSet.fieldByName('CFSIZESID').AsString;
  fUnit_Price := dsDetail.DataSet.fieldByName('CFPRICE').AsFloat;
  fAmount := dsDetail.DataSet.fieldByName('CFAMOUNT').AsFloat;
  fSum_Price := dsDetail.DataSet.fieldByName('CFAGIO_SUM_PRICE').AsFloat;
  if fAmount < 0 then
  begin
    Gio.AddShow('退货商品不参与促销！');
    //ShowMsg(Handle, '退货商品不参与促销！',[]);
    Abort;
  end;
  if fSum_Price =0 then
  begin
    Gio.AddShow('价格为0默认视为赠品，不触发单款促销！');
    Abort;
  end;

  //启用单款促销,如果有促销，选中后会更新明细的折扣、单价或者折后金额
  if UserInfo.Is_SysOnline then
    chk_Explain_Style(TDataSet(csMaster),TDataSet(csDetail),DetailFID,cfMaterialID,uColor_ID,uSize_ID,fUnit_Price, fAmount, fSum_Price)
  else
    chk_Explain_Style(TDataSet(QryMater),TDataSet(QryDetail),DetailFID,cfMaterialID,uColor_ID,uSize_ID,fUnit_Price, fAmount, fSum_Price);
end;

//写入临时表，用于整单组合促销
function TFrmPOSEdit.Insert_Entry_Temp: Boolean;
var FID,CFMATERIALID,CFCOLORID,CFCUPID,CFSIZESID,CFASSISTPROPERTYID,CFExplainInfo,CFFID_S : string;
    CFAMOUNT,CFAGIO,CFAGIO_SUM_PRICE,CFPRICE : Double;
    sqlstr : string;
begin
  Result := True;
  //if not UserInfo.Is_SysOnline then Exit;  //20110625 离线不启用促销
  SalesCount :=0;   //正常销售数量
  ReturnCount:=0;   //退货数量

  with dsDetail.DataSet do
  begin
    try
      DisableControls;
      OnCalcFields := nil;
      First;
      while not Eof do
      begin
        FID := QuotedStr(FieldByName('FID').AsString);
        CFMATERIALID := QuotedStr(FieldByName('CFMATERIALID').AsString);
        CFCOLORID := QuotedStr(FieldByName('CFCOLORID').AsString);
        CFCUPID := QuotedStr(FieldByName('CFCUPID').AsString);
        CFSIZESID := QuotedStr(FieldByName('CFSIZESID').AsString);
        CFASSISTPROPERTYID := QuotedStr(FieldByName('CFASSISTPROPERTYID').AsString); //辅助属性ID
        CFExplainInfo := QuotedStr(FieldByName('CFExplainInfo').AsString);  //是否是参与按款促销
        CFFID_S := QuotedStr(FieldByName('CFFID_S').AsString);  //源款FID
        CFAMOUNT := FieldByName('CFAMOUNT').AsFloat;            //数量
        CFAGIO := FieldByName('CFAGIO').AsFloat;                //折扣
        CFAGIO_SUM_PRICE := FieldByName('CFAGIO_SUM_PRICE').AsFloat;   //折后金额
        CFPRICE := FieldByName('CFPRICE').AsFloat;   //折后金额
        if CFAMOUNT>0 then //正常销售数量
          SalesCount :=SalesCount+1
        else //退货数量
          ReturnCount:=ReturnCount+1;

        sqlstr := 'Insert into CT_BIL_RETAILPOSENTRY_TEMP(FID,FPARENTID,CFMATERIALID,CFCOLORID,CFCUPID,CFSIZESID,CFASSISTPROPERTYID,CFExplainInfo,CFFID_S,CFAMOUNT,CFAGIO,CFAGIO_SUM_PRICE,CFPRICE)'
                    +'Values('+FID+','+QuotedStr(POSBillIDValue)+','+CFMATERIALID+','+CFCOLORID+','+CFCUPID+','+CFSIZESID+','
                              +CFASSISTPROPERTYID+','+CFExplainInfo+','+CFFID_S+','
                              +FloatTostr(CFAMOUNT)+','+FloatTostr(CFAGIO)+','+FloatTostr(CFAGIO_SUM_PRICE)+','+FloatTostr(CFAGIO_SUM_PRICE)+')';
        CliDM.Client_ExecSQL(sqlstr);
        Next;
      end;
    finally
      OnCalcFields := csDetailCalcFields;
      EnableControls;
    end;
  end;

  if dsMaster.DataSet.FieldByName('CFISReturn').AsFloat =1 then
  if (SalesCount>0) and (ReturnCount=0) then
  begin
    ShowMsg(Handle,'当前单据是退换货单据，需有退货商品：即数量为负数！',[]);
    Result := True;
    Abort;
  end;
end;

procedure TFrmPOSEdit.act_Explain_BillExecute(Sender: TObject);
begin
  inherited;
  if dsDetail.DataSet.IsEmpty then Exit;
  Delete_Entry_Temp;  //删除临时数据
  Insert_Entry_Temp;  //记录临时数据：记录单据款号信息以及金额到明细表中，用于整单促销中的组合促销
  Set_Explain_Bill;
end;

procedure TFrmPOSEdit.act_Explain_StyleExecute(Sender: TObject);
begin
  inherited;
  if dsDetail.DataSet.IsEmpty then Exit;

  if UserInfo.Is_SysOnline then
  begin
    if csDetail.FieldByName('CFAMOUNT').AsFloat < 0 then
    begin
      ShowMsg(Handle, '退货商品不参与促销！',[]);
      Abort;
    end;

    if (csDetail.FieldByName('CFExplainInfo').AsString <>'') and (csDetail.FieldByName('CFFID_S').AsString='') then
    begin
      ShowMsg(Handle, '本款已经参与促销！',[]);
      Abort;
    end;

    if csDetail.FieldByName('CFFID_S').AsString <> '' then
    begin
      ShowMsg(Handle, '赠品不参与促销！',[]);
      Abort;
    end;
    Set_Explain_Style;
    edt_sStyleBarCode.SetFocus;
  end;
end;

procedure TFrmPOSEdit.actPrintExecute(Sender: TObject);
begin
  inherited;
  if UserInfo.Is_SysOnline then
     CliDM.Chk_UserRight(UserInfo.RetailPOSID,'posPRINTDesign'); //检查权限

    Open_ReportFile(Self,UserInfo.ExePath + '\Report\零售单\',True); //设计小票
end;

procedure TFrmPOSEdit.actDownExecute(Sender: TObject);
begin
  inherited;
  if not UserInfo.Is_SysOnline then
  begin
    ShowMsg(Handle, '只有联机状态下才能使用本功能！',[]);
    abort;
  end;
  //下载数据
  if UserInfo.Is_SysOnline then
    FMCliMain.Open_DownExe(True);
end;

procedure TFrmPOSEdit.actUpExecute(Sender: TObject);
begin
  inherited;
  if not UserInfo.Is_SysOnline then
  begin
    ShowMsg(Handle, '只有联机状态下才能使用本功能！',[]);
    abort;
  end;

  if UserInfo.Is_SysOnline then
  TranUpData;
end;

procedure TFrmPOSEdit.FormActivate(Sender: TObject);
begin
  inherited;
//  self.Left := Screen.WorkAreaLeft;
//  self.Top := Screen.WorkAreaTop;
//  self.Width := Screen.WorkAreaWidth;
//  self.Height := Screen.WorkAreaHeight;
  lblUserInifo.Caption := Format('欢迎您! %s 今天是%s', [FMCliMain.LoginUser_Name, FormatDateTime('yyyy"年"m"月"d"日" dddd', Date())]);
end;

procedure TFrmPOSEdit.lb_exitClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TFrmPOSEdit.lb_fullscreenMouseEnter(Sender: TObject);
begin
  inherited;
  TLabel(sender).Font.Color:=clBlue;
  //TLabel(sender).Font.Style:=[fsUnderline];
end;

procedure TFrmPOSEdit.lb_fullscreenMouseLeave(Sender: TObject);
begin
  inherited;
  TLabel(sender).Font.Color:=clBlack;;
  TLabel(sender).Font.Style:=[];
end;

procedure TFrmPOSEdit.lb_fullscreenClick(Sender: TObject);
begin
  inherited;
  try
    Self.OnShow := nil;
    if Self.BorderStyle= bsSizeable then
    begin
      Self.BorderStyle:=bsNone ;
      if Self.WindowState<>wsMaximized then
      Self.WindowState:= wsMaximized;
      lb_fullscreen.Caption := '   恢复';
    end
    else
    begin
      lb_fullscreen.Caption := '   全屏';
      Self.BorderStyle := bsSizeable;
      Self.WindowState := wsNormal;
    end;
  finally
    Self.OnShow := FormShow;
  end;
end;

procedure TFrmPOSEdit.csMasterCalcFields(DataSet: TDataSet);
begin
  inherited;
  //仓库编码、名称
  if DataSet.FindField('WareHouseNumber') <> nil then
  with CliDM.Client_QuerySQL('Select FNumber,fname_l2 From T_DB_WAREHOUSE(nolock) Where FID='+QuotedStr(DataSet.fieldByName('cfstorageid').AsString)) do
  begin
    DataSet.FieldByName('WareHouseNumber').AsString := FieldByName('FNumber').AsString;
    DataSet.FieldByName('WareHouseName').AsString := FieldByName('fname_l2').AsString;
  end;
  
  //制单人
  if DataSet.FindField('FCREATORName') <> nil then
  with CliDM.Client_QuerySQL('Select FNumber,fname_l2 From T_PM_USER(nolock) Where FID='+QuotedStr(DataSet.fieldByName('FCREATORID').AsString)) do
  begin
    DataSet.FieldByName('FCREATORName').AsString := FieldByName('fname_l2').AsString;
  end;


end;

procedure TFrmPOSEdit.GetEditStatus;
var ISTATUS : Integer;
    ErrMsg : string;
begin
  ISTATUS := dsMaster.DataSet.FieldByName('ISTATUS').AsInteger;
  if ISTATUS=-1 then
    ErrMsg := '本单是挂单,不允许再操作！';
  if ISTATUS=2 then
    ErrMsg := '本单已经结单,不允许再操作';
  if ISTATUS=-2 then
    ErrMsg := '本单已经退定金,不允许再操作';
  //20110826 退定金单据不允许操作！
  if ErrMsg <> '' then
  begin
    ShowMsg(Handle, ErrMsg,[]);
    Abort;
  end;
end;

procedure TFrmPOSEdit.cxStyleKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var sStyle_Code,sqlstr,FBIZDATE,strsql,ErrMsg : string;
begin
  inherited;
end;

procedure TFrmPOSEdit.cxSizeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;

end;

//设置控件
procedure TFrmPOSEdit.SetEditStatus;
var EditStatus : Boolean;
   ISTATUS : Integer;
begin
  //只有状态为0可以修改   -1 挂单  2结单 都不允许编辑
  EditStatus := dsMaster.DataSet.FieldByName('ISTATUS').AsInteger=0;
  ISTATUS := dsMaster.DataSet.FieldByName('ISTATUS').AsInteger;
  cxBillType.Enabled := EditStatus;
  cxDescription.Enabled := EditStatus;
  edt_sStyleBarCode.Properties.ReadOnly := not EditStatus;

  cbCFBalanceYear.Enabled := EditStatus;   //结算年
  CbBalanceMonth.Enabled := EditStatus;    //结算月
  cbSETTLEBACKTYPEID.Enabled := EditStatus;        //返点类型




  cxDetailCFAMOUNT.Options.Editing := EditStatus;
  //20110804 折扣、金额需要有权限才能修改
  //cxDetailCFAGIO.Options.Editing := EditStatus;
  //cxDetailCFAGIO_PRICE.Options.Editing := EditStatus;
  //cxDetailCFAGIO_SUM_PRICE.Options.Editing := EditStatus;
  cxDetailCFSALESMANID.Options.Editing := EditStatus;    //返点类型 作废，移到表头

  //右键
  N1.Enabled := EditStatus;
  N2.Enabled := EditStatus;
  N3.Enabled := EditStatus;
  N7.Enabled := EditStatus;      //删除整单
  CrtlS1.Enabled := EditStatus;  //修改数量
  N8.Enabled := ISTATUS=-1;
  act_CtrlE.Enabled := ISTATUS=-1; //退定金：原挂单不变，生成一张新单，退定金 iStatus = -2
  act_CtrlF.Enabled := ISTATUS=-1; //挂单直接结单：原挂单不变，生成一张新单，退定金 iStatus = -2

  actPrintRepeat.Enabled := not EditStatus;  //重打小票
  act_CtrlZ.Enabled := EditStatus; //赠品价格清零

  case ISTATUS of
    -1 : lbStatusName.Caption := '挂单';
    0  : lbStatusName.Caption := '新单';
    2  : lbStatusName.Caption := '结单';
  end
end;

procedure TFrmPOSEdit.SetPopedom;
begin
 if not UserInfo.Is_SysOnline then  //离线时部分模块不允许操作
 begin
    act_F6.Enabled := False;
    act_F10.Enabled := False;
    act_F11.Enabled := False;
    act_Explain_Style.Enabled := False;
    act_Explain_Bill.Enabled := False;
 end;
end;

//计算积分
function TFrmPOSEdit.CalcIntegral(BillIDValue,CFVIPCardNumber: string;cfMoney,FBONUSRATE : Double): Double;
var Integral : Double;
begin
  Result := 0;
  with CliDM.Temp do
  try
    Close;
    CommandText := 'sp_CalcIntegral;1';
    Parameters.Clear;
    Parameters.CreateParameter('@BillIDValue',ftString,pdInput,200,BillIDValue);              //单据编号
    Parameters.CreateParameter('@CFVIPCardNumber',ftString,pdInput,200,CFVIPCardNumber);      //会员卡号
    Parameters.CreateParameter('@cfMoney',ftFloat,pdInput,200,cfMoney);                       //本单收款金额
    Parameters.CreateParameter('@FBONUSRATE',ftFloat,pdInput,200,FBONUSRATE);                 //积分比率（元）   从卡级别档案中获取
    Parameters.CreateParameter('@FSalesOrgUnit',ftString,pdInput,200,UserInfo.FSaleOrgID);    //销售组织
    Parameters.CreateParameter('@ServerDateTime',ftdate,pdInput,200,CliDM.Get_ServerTime);    //服务器当前时间
    Open;
    Integral := FieldByName('Integral').AsFloat;
  finally
    Close;
  end;
  Result := Integral;
end;

procedure TFrmPOSEdit.csDetailBeforePost(DataSet: TDataSet);
begin
  inherited;
  if DataSet.FieldByName('CFAGIO').AsCurrency <0 then
  begin
    ShowMsg(Handle, '折扣不能小于0',[]);
    abort;
  end;
  if DataSet.FieldByName('CFAGIO_PRICE').AsCurrency <0 then
  begin
    ShowMsg(Handle, '折扣价不能小于0',[]);
    abort;
  end;
  if DataSet.FieldByName('CFAGIO_SUM_PRICE').IsNull then
    DataSet.FieldByName('CFAGIO_SUM_PRICE').AsFloat := 0;
  if DataSet.FieldByName('CFBACKPOINT').IsNull then
    DataSet.FieldByName('CFBACKPOINT').AsFloat := 0;
end;

procedure TFrmPOSEdit.QryDetailBeforePost(DataSet: TDataSet);
begin
  inherited;
  if DataSet.FieldByName('CFAGIO').AsCurrency <0 then
  begin
    ShowMsg(Handle, '折扣不能小于0',[]);
    abort;
  end;
  if DataSet.FieldByName('CFAGIO_PRICE').AsCurrency <0 then
  begin
    ShowMsg(Handle, '折扣价不能小于0',[]);
    abort;
  end;
  if DataSet.FieldByName('CFAGIO_SUM_PRICE').IsNull then
    DataSet.FieldByName('CFAGIO_SUM_PRICE').AsFloat := 0;
  if DataSet.FieldByName('CFBACKPOINT').IsNull then
    DataSet.FieldByName('CFBACKPOINT').AsFloat := 0;  
end;

procedure TFrmPOSEdit.act_CtrlBExecute(Sender: TObject);
var CreateDate,Alterdate : TDateTime;
begin
  inherited;
  if not UserInfo.Is_SysOnline then
  begin
    ShowMsg(Handle, '离线状态下不能更改业务日期!',[]);
    Exit;
  end;
  if UserInfo.Is_SysOnline then
     CliDM.Chk_UserRight(UserInfo.RetailPOSID,'posCTRL_D'); //检查权限

  GetEditStatus; //检查是否允许修改
  if UserInfo.Is_SysOnline then
    CreateDate := csMaster.fieldbyName('FBIZDATE').AsDateTime
  else
    CreateDate := QryMater.fieldbyName('FBIZDATE').AsDateTime;

  if AlterBillCreateDate(CreateDate,Alterdate) then
  begin
    if UserInfo.Is_SysOnline then
    begin
      csMaster.Edit;
      csMaster.fieldbyName('FBIZDATE').AsDateTime := Alterdate;
      if strtoint(FormatDateTime('dd',Alterdate))>StrToIntDef(trim(UserInfo.cfsettleday),0) then
      begin
        csMaster.fieldbyName('cfbalanceyear').AsString := FormatDateTime('YYYY',IncMonth(Alterdate,1)); //默认月结年份
        csMaster.fieldbyName('cfbalancemonth').AsString := FormatDateTime('MM',IncMonth(Alterdate,1));  //默认月结月份
        csMaster.FieldByName('cfbalancedate').AsDateTime := Alterdate;
      end
      else
      begin
        csMaster.fieldbyName('cfbalanceyear').AsString := FormatDateTime('YYYY',Alterdate);
        csMaster.fieldbyName('cfbalancemonth').AsString := FormatDateTime('MM',Alterdate);
        csMaster.FieldByName('cfbalancedate').AsDateTime := Alterdate;
      end;
    end
    else
    begin
      QryMater.Edit;
      QryMater.fieldbyName('FBIZDATE').AsDateTime := Alterdate;
      if strtoint(FormatDateTime('dd',Alterdate))>StrToIntDef(trim(UserInfo.cfsettleday),0) then
      begin
        QryMater.fieldbyName('cfbalanceyear').AsString := FormatDateTime('YYYY',IncMonth(Alterdate,1)); //默认月结年份
        QryMater.fieldbyName('cfbalancemonth').AsString := FormatDateTime('MM',IncMonth(Alterdate,1));  //默认月结月份
        QryMater.FieldByName('cfbalancedate').AsDateTime := Alterdate;
      end
      else
      begin
        QryMater.fieldbyName('cfbalanceyear').AsString := FormatDateTime('YYYY',Alterdate);
        QryMater.fieldbyName('cfbalancemonth').AsString := FormatDateTime('MM',Alterdate);
        QryMater.FieldByName('cfbalancedate').AsDateTime := Alterdate;
      end;
    end;
    BizDateStr:=formatdatetime('yyyy-MM-dd',Alterdate);

    if UserInfo.WareHouserCustorID <> '' then
     Self.Caption := 'POS开单-业务日期【'+BizDateStr+'】商场结算年份【'+csMaster.fieldbyName('CFBalanceYear').AsString+'】月份【'+csMaster.fieldbyName('CFBalanceMonth').AsString+'】'
    else
     Self.Caption := 'POS开单-业务日期【'+BizDateStr+'】';
  end;
end;

procedure TFrmPOSEdit.act_CtrlDExecute(Sender: TObject);
begin
  inherited;
  GetEditStatus;  //必需是新单状态才能退单
  if dsMaster.DataSet.FieldByName('ISTATUS').AsInteger = 0 then
  if not dsDetail.DataSet.IsEmpty then
  begin
    ShowMsg(Handle, '请处理当前单据后再做退货或者换货！',[]);
    abort;
  end;

  if UserInfo.Is_SysOnline then
  begin
    CliDM.Chk_UserRight(UserInfo.RetailPOSID,'posCTRL_C'); //检查权限
    GetTuiHuo(POSBillIDValue,POSBillNumber,csMaster,csDetail) //打开选单界面，从服务器获取挂单记录
  end
  else
    GetTuiHuo(POSBillIDValue,POSBillNumber,QryMater,QryDetail) ;//打开选单界面，从本地获取挂单记录
end;

function TFrmPOSEdit.Delete_Entry_Temp: Boolean;
begin
  //if UserInfo.Is_SysOnline then   //20110625 离线不启用促销
  //20120315 离线启用促销
  CliDM.Client_ExecSQL('Delete CT_BIL_RETAILPOSENTRY_TEMP Where FPARENTID='+QuotedStr(POSBillIDValue));
end;

procedure TFrmPOSEdit.QryDetailCFAMOUNTChange(Sender: TField);
begin
  inherited;
  try
    csDetailCFAGIO.OnChange := nil;
    Sender.DataSet.FieldByName('CFAGIO_SUM_PRICE').AsFloat := Sender.AsFloat * Sender.DataSet.FieldByName('CFAGIO_PRICE').AsFloat; //折扣后金额
  finally
    csDetailCFAGIO.OnChange := QryDetailCFAGIOChange;
  end;
end;

procedure TFrmPOSEdit.csMasterISTATUSChange(Sender: TField);
begin
  inherited;
  Sender.DataSet.FieldByName('CFSTATE').Value := Sender.Value;  //20110728 EAS积分换礼品需要，实体增加单据状态字段 用于过滤
end;

procedure TFrmPOSEdit.csDetailCFSETTLEBACKTYPEIDChange(Sender: TField);
begin
  inherited;
  CliDM.qryPoint.Locate('FID',Sender.AsString,[]);  //获取返点数
  Sender.DataSet.FieldByName('CFBACKPOINT').AsFloat := CliDM.qryPoint.fieldByName('CFBACKPOINT').AsFloat;

end;

procedure TFrmPOSEdit.QryDetailCFASSISTPROPERTYIDChange(Sender: TField);
begin
  inherited;
  CliDM.qryPoint.Locate('FID',Sender.AsString,[]);  //获取返点数
  Sender.DataSet.FieldByName('CFBACKPOINT').AsFloat := CliDM.qryPoint.fieldByName('CFBACKPOINT').AsFloat;
end;

procedure TFrmPOSEdit.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if dsMaster.DataSet.FieldByName('iStatus').AsInteger = 0 then
    if not dsDetail.DataSet.IsEmpty then
      if ShowYesNo(Handle, '关闭窗体后已经录入商品不会保存,确定关闭？',[]) = IDNO then abort;
  DelTempFile;//删除缓存文件
  Action:=caFree;
end;

procedure TFrmPOSEdit.n_gridstylesetClick(Sender: TObject);
begin
  inherited;
  setGridStyle(cxDetail);
end;

procedure TFrmPOSEdit.n_gridStyleSaveClick(Sender: TObject);
var FName:string;
begin
  inherited;
  FName:=UserInfo.ExePath+'GridStyle\'+self.Name+cxDetail.Name+'.ini';
  if FileExists(FName) then
  DeleteFile(FName);
  SaveGridStyleToini(cxDetail,FName);
end;

procedure TFrmPOSEdit.actDelAllExecute(Sender: TObject);
begin
  inherited;
  if UserInfo.Is_SysOnline then
     CliDM.Chk_UserRight(UserInfo.RetailPOSID,'posDelete'); //检查权限

  if cxDetail.DataController.DataSource.DataSet.IsEmpty then exit;
  GetEditStatus;  //检查是否允许编辑

  if ShowYesNo(Handle, '确定要删除整单明细？',[])= IDNO then Exit;

  while not  dsDetail.DataSet.IsEmpty do dsDetail.DataSet.Delete;

  //20120316 如果表头有记录整单促销单号或者整单折让金额，则删除
  if not(dsMaster.DataSet.State in db.dsEditModes) then  dsMaster.DataSet.Edit;
  dsMaster.DataSet.FieldByName('CFExplain_BillNO').AsString := '';
  dsMaster.DataSet.FieldByName('CFZRMONEY').AsFloat := 0;
end;

procedure TFrmPOSEdit.actDelF2Execute(Sender: TObject);
var ErrMsg,BizDateStr : string;
    HAVE_PAY_MONEY : Double;
begin
  inherited;
  if dsMaster.DataSet.FieldByName('ISTATUS').AsInteger <> -1 then
  begin
    ShowMsg(Handle, '当前单据不是挂单！',[]);
    Abort;
  end;
  if ShowYesNo(Handle, '确定要删除当前挂单！',[]) = Idno then exit;
  dsRetailPRPRE.DataSet.First;
  while not dsRetailPRPRE.DataSet.Eof do
  begin
    if dsRetailPRPRE.DataSet.FieldByName('CFHAVE_PAY_MONEY').AsFloat > 0 then
      HAVE_PAY_MONEY := HAVE_PAY_MONEY+dsRetailPRPRE.DataSet.FieldByName('CFHAVE_PAY_MONEY').AsFloat;
    dsRetailPRPRE.DataSet.Next;
  end;
  if HAVE_PAY_MONEY>0 then
  begin
    ShowMsg(Handle, '挂单时已经收了定金【'+FloatToStr(HAVE_PAY_MONEY)+'】元，不允许删除！',[]);  //20110826
    abort;
  end;
  //if ShowYesNo('已经收了定金【'+FloatToStr(HAVE_PAY_MONEY)+'】，确定要删除此挂单？',[])=IDNO then exit;

  if UserInfo.Is_SysOnline then
  begin
    if csMaster.FindField('FBIZDATE') <> nil then BizDateStr := FormatDateTime('yyyy-mm-dd', csMaster.FieldByName('FBIZDATE').AsDateTime);
    if CliDM.Pub_BillDel(UserInfo.LoginUser_FID,'CT_BIL_RetailPOS',POSBillIDValue,BizDateStr,ErrMsg) then
    begin
      ShowMsg(Handle, '挂单删除成功！',[]);
      Gio.AddShow('用户：'+UserInfo.LoginUser+'  挂单单据['+POSBillNumber+']删除成功');
      EditBill('');
    end
    else
    begin
      ShowMsg(Handle, '挂单['+POSBillNumber+']删除失败：'+ErrMsg,[]);
      Abort;
    end;
  end;
  if not UserInfo.Is_SysOnline then
  if CliDM.DelPOSHang(POSBillIDValue) then
  begin
    ShowMsg(Handle, '挂单删除成功！',[]);
    Gio.AddShow('用户：'+UserInfo.LoginUser+'  挂单单据['+POSBillNumber+']删除成功');
  end;
end;

procedure TFrmPOSEdit.cxGDExit(Sender: TObject);
begin
  inherited;
  if dsDetail.DataSet.State in db.dsEditModes then
    dsDetail.DataSet.Post;

end;

procedure TFrmPOSEdit.QryMaterISTATUSChange(Sender: TField);
begin
  inherited;
  Sender.DataSet.FieldByName('CFSTATE').Value := Sender.Value;
end;

//在线返点类型修改获取返点值
procedure TFrmPOSEdit.csMasterCFSETTLEBACKTYPEIDChange(Sender: TField);
begin
  inherited;
  CliDM.qryPoint.Locate('FID',Sender.AsString,[]);  //获取返点数
  Sender.DataSet.FieldByName('CFBACKPOINT').AsFloat := CliDM.qryPoint.fieldByName('CFBACKPOINT').AsFloat;
end;

//离线返点类型修改获取返点值
procedure TFrmPOSEdit.QryMaterCFSETTLEBACKTYPEIDChange(Sender: TField);
begin
  inherited;
  CliDM.qryPoint.Locate('FID',Sender.AsString,[]);  //获取返点数
  Sender.DataSet.FieldByName('CFBACKPOINT').AsFloat := CliDM.qryPoint.fieldByName('CFBACKPOINT').AsFloat;
end;

procedure TFrmPOSEdit.csMasterBeforePost(DataSet: TDataSet);
begin
  inherited;
  {if UserInfo.WareHouserCustorID <> '' then
  begin
    if DataSet.FieldByName('CFSETTLEBACKTYPEID').AsString = '' then
    begin
      ShowMsg(Handle, '商场返点类型不能为空！',[]);
      abort;
    end;
    if DataSet.FieldByName('CFBalanceYear').AsString = '' then
    begin
      ShowMsg(Handle, '商场结算年份不能为空！',[]);
      abort;
    end;
    if DataSet.FieldByName('CFBalanceMonth').AsString = '' then
    begin
      ShowMsg(Handle, '商场结算月份不能为空！',[]);
      abort;
    end;
  end;
  }
end;

procedure TFrmPOSEdit.act_CrtlGExecute(Sender: TObject);
begin
  inherited;
  if UserInfo.WareHouserCustorID = '' then
  begin
    ShowMsg(Handle, '只有隶属于商场的店铺才能修改商场结算信息！',[]);
    abort;
  end;
  if SetBalanceHand(dsMaster.DataSet) then
     Self.Caption := 'POS开单-商场结算年份【'+dsMaster.DataSet.fieldbyName('CFBalanceYear').AsString+'】月份【'+dsMaster.DataSet.fieldbyName('CFBalanceMonth').AsString+'】';
end;

procedure TFrmPOSEdit.QryMaterBeforePost(DataSet: TDataSet);
begin
  inherited;
  {
  if UserInfo.WareHouserCustorID <> '' then
  begin
    if DataSet.FieldByName('CFSETTLEBACKTYPEID').AsString = '' then
    begin
      ShowMsg(Handle, '商场返点类型不能为空！',[]);
      abort;
    end;
    if DataSet.FieldByName('CFBalanceYear').AsString = '' then
    begin
      ShowMsg(Handle, '商场结算年份不能为空！',[]);
      abort;
    end;
    if DataSet.FieldByName('CFBalanceMonth').AsString = '' then
    begin
      ShowMsg(Handle, '商场结算月份不能为空！',[]);
      abort;
    end;
  end;
  }
end;

procedure TFrmPOSEdit.actPrintRepeatExecute(Sender: TObject);
begin
  inherited;
  //打印小票
  if UserInfo.Is_SysOnline then
  begin
     RM_PrintRpt(Self, UserInfo.ExePath + '\Report\零售单\结单小票_在线.rmf',False,True,RM_PName);
  end
  else
     RM_PrintRpt(Self, UserInfo.ExePath + '\Report\零售单\结单小票_离线.rmf',False,True,RM_PName); //打印小票

end;

procedure TFrmPOSEdit.act_CtrlZExecute(Sender: TObject);
begin
  inherited;
  if UserInfo.Is_SysOnline then
  CliDM.Chk_UserRight(UserInfo.RetailPOSID,'posCTRL_Z'); //检查权限
  if dsDetail.DataSet.IsEmpty then Exit;

  if dsMaster.DataSet.FieldByName('ISTATUS').AsInteger<>0 then
  begin
    ShowMsg(Handle, '新单才能修改赠品价格！',[]);
    abort;
  end;
  if dsMaster.DataSet.FieldByName('CFISReturn').AsInteger=1 then
  begin
    ShowMsg(Handle, '退换货单不能赠送！',[]);
    abort;
  end;

  dsDetail.DataSet.Edit;
  dsDetail.DataSet.FieldByName('CFAGIO_PRICE').Value := 0;  //折后价清零
  dsDetail.DataSet.FieldByName('CFDescription').Value := dsDetail.DataSet.FieldByName('CFDescription').Value+' 赠送';
  dsMaster.DataSet.Edit;
 // dsMaster.DataSet.FieldByName('fdescription').Value := dsMaster.DataSet.FieldByName('fdescription').Value + ' 赠送';
end;

procedure TFrmPOSEdit.act_CtrlEExecute(Sender: TObject);
var oldBillID,OldBillNumber : string;
  HAVE_PAY_MONEY : Double;
  srcBillFID,ErrMsg : string;
begin
  inherited;
  if UserInfo.Is_SysOnline then
    CliDM.Chk_UserRight(UserInfo.RetailPOSID,'posCTRL_E'); //检查权限
  //退定金 1 生成一张 已退定金 状态的单据
  if dsMaster.DataSet.FieldByName('ISTATUS').AsInteger <> -1 then
  begin
    ShowMsg(Handle, '只有挂单才能退定金！',[]);
    abort;
  end;
  dsRetailPRPRE.DataSet.First;
  while not dsRetailPRPRE.DataSet.Eof do
  begin
    if dsRetailPRPRE.DataSet.FieldByName('CFHAVE_PAY_MONEY').AsFloat > 0 then
      HAVE_PAY_MONEY := HAVE_PAY_MONEY+dsRetailPRPRE.DataSet.FieldByName('CFHAVE_PAY_MONEY').AsFloat;
    dsRetailPRPRE.DataSet.Next;
  end;
  if HAVE_PAY_MONEY =0 then
  begin
    ShowMsg(Handle, '当前挂单没有定金！',[]);
    abort;
  end;

  oldBillID := POSBillIDValue;
  OldBillNumber := POSBillNumber;
  srcBillFID :=  oldBillID;
  if UserInfo.Is_SysOnline then
  begin
    EditBill('');
    CopyPOSBill(POSBillIDValue,POSBillNumber,csMaster,csDetail,csRetailPRPRE,oldBillID,OldBillNumber) //打开选单界面，从服务器获取挂单记录
  end
  else
  begin
    EditBillI_NoOnline('');
    CopyPOSBill(POSBillIDValue,POSBillNumber,QryMater,QryDetail,qryPrepre,oldBillID,OldBillNumber) //打开选单界面，从本地获取挂单记录
  end;

  dsRetailPRPRE.DataSet.First;
  while not dsRetailPRPRE.DataSet.Eof do
  begin
    dsRetailPRPRE.DataSet.Edit;
    dsRetailPRPRE.DataSet.FieldByName('CFHAVE_PAY_MONEY').Value := -1 * dsRetailPRPRE.DataSet.FieldByName('CFHAVE_PAY_MONEY').Value;
    dsRetailPRPRE.DataSet.Next;
  end;

  if ShowSLPFrm(POSBillIDValue,0,dsMaster.DataSet,dsDetail.DataSet,dsRetailPRPRE.DataSet,HAVE_PAY_MONEY) then
  begin
    if not (dsMaster.DataSet.State in db.dsEditModes) then dsMaster.DataSet.Edit;
    dsMaster.DataSet.FieldByName('fdescription').AsString := '本单属于退定金单据，源单单号：'+OldBillNumber;
    dsMaster.DataSet.FieldByName('iStatus').Value := -2;  //单据状态
    dsMaster.DataSet.FieldByName('CFSTATE').Value := -2;  //单据状态  EAS单据实体用
    dsMaster.DataSet.FieldByName('FAUDITORID').Value := UserInfo.LoginUser_FID;  //审核人
    dsMaster.DataSet.FieldByName('FLASTUPDATEUSERID').Value := UserInfo.LoginUser_FID;  //审核人
    dsMaster.DataSet.FieldByName('FLASTUPDATETIME').AsDateTime := CliDM.Get_ServerTime;  //审核时间
    if (UserInfo.Is_SysOnline)  then
    begin
      if ST_Save then //在线提交
      begin
        //结单成功，把挂单状态修改为-2
        if (srcBillFID<>'') then
        begin
          CliDM.Get_ExecSQL('update ct_bil_retailpos a set a.istatus=-2,a.cfstate=-2 where  a.fid ='+QuotedStr(srcBillFID)+' and  a.istatus=-1',ErrMsg)
        end;
        EditBill('');   //打开一张新单
      end;
    end
    else
    begin
      if ST_Save_NoLine then
      begin
        //结单成功，把挂单状态修改为-2
        if (srcBillFID<>'') then
        begin
          CliDM.Client_ExecSQL('update ct_bil_retailpos  set istatus=-2,cfstate=-2 where  fid ='+QuotedStr(srcBillFID)+' and  istatus=-1')
        end;
        EditBillI_NoOnline('');
      end;
    end;

    SetEditStatus;  //设置控件是否允许编辑
  end;
end;

procedure TFrmPOSEdit.FormDestroy(Sender: TObject);
begin
  inherited;
  FrmPOSEdit := nil;
end;

procedure TFrmPOSEdit.CreateParams(var Params: TCreateParams);
begin
  Inherited CreateParams(Params);
  //Params.WndParent := GetDesktopWindow;
  Params.ExStyle := Params.ExStyle or WS_Ex_AppWindow;
end;

procedure TFrmPOSEdit.act_CtrlFExecute(Sender: TObject);
var oldBillID,OldBillNumber : string;
  HAVE_PAY_MONEY : Double;
begin
  inherited;
  //退定金 1 生成一张 已退定金 状态的单据
  if dsMaster.DataSet.FieldByName('ISTATUS').AsInteger <> -1 then
  begin
    ShowMsg(Handle, '只有挂单才能执行此操作！',[]);
    abort;
  end;

  oldBillID := POSBillIDValue;
  OldBillNumber := POSBillNumber;
  if UserInfo.Is_SysOnline then
  begin
    CliDM.Chk_UserRight(UserInfo.RetailPOSID,'posF2'); //检查权限
    EditBill('');
    CopyPOSBill(POSBillIDValue,POSBillNumber,csMaster,csDetail,csRetailPRPRE,oldBillID,OldBillNumber) //打开选单界面，从服务器获取挂单记录
  end
  else
  begin
    EditBillI_NoOnline('');
    CopyPOSBill(POSBillIDValue,POSBillNumber,QryMater,QryDetail,qryPrepre,oldBillID,OldBillNumber) //打开选单界面，从本地获取挂单记录
  end;

  if ShowSLPFrm(POSBillIDValue,0,dsMaster.DataSet,dsDetail.DataSet,dsRetailPRPRE.DataSet) then
  begin
    if not (dsMaster.DataSet.State in db.dsEditModes) then dsMaster.DataSet.Edit;
    dsMaster.DataSet.FieldByName('fdescription').AsString := '本单属于挂单直接结单后生成的单据，源单单号：'+OldBillNumber;
    dsMaster.DataSet.FieldByName('iStatus').Value := 2;  //单据状态
    dsMaster.DataSet.FieldByName('CFSTATE').Value := 2;  //单据状态  EAS单据实体用
    dsMaster.DataSet.FieldByName('FAUDITORID').Value := UserInfo.LoginUser_FID;  //审核人
    dsMaster.DataSet.FieldByName('FLASTUPDATEUSERID').Value := UserInfo.LoginUser_FID;  //审核人
    dsMaster.DataSet.FieldByName('FLASTUPDATETIME').AsDateTime := CliDM.Get_ServerTime;  //审核时间
    ST_Save; //在线提交
    SetEditStatus;  //设置控件是否允许编辑
  end;

end;

procedure TFrmPOSEdit.edt_sStyleBarCodeKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var sStyleBarCode,OutMsg : string;
    sBarCodeCount : Integer;
begin
  inherited;
  if (Key = VK_RETURN) or (Key=13) then   //回车
  begin
    //Gio.AddShow('edt_sStyleBarCodeKeyDown...Key='+Inttostr(Key));
    sStyleBarCode := SbctoDbc(Trim(edt_sStyleBarCode.Text));
    if sStyleBarCode = '' then Exit;
    if Trim(edt_fAmount.Text)= '' then sBarCodeCount :=1
    else
      sBarCodeCount := StrToInt(edt_fAmount.Text);
    if GetValueFromBarCode(sStyleBarCode,dsDetail.DataSet,sBarCodeCount,OutMsg) then //条码解析成功
    begin
      edt_sStyleBarCode.Clear;
      Set_Explain_Style;  //打开按款促销界面，如果选中促销会修改折扣、单价和折后金额
    end
    else
    begin
      Gio.AddShow(OutMsg);
      ShowMsg(Handle,OutMsg,[]);
    end;
    edt_sStyleBarCode.SetFocus;
  end;

  if (Key = 37) or (Key=38) then   //左键  上键
  begin
    cxDescription.SetFocus;
  end;

  if (Key = 39) then   //右键
  begin
    edt_fAmount.SetFocus;
  end;



end;



procedure TFrmPOSEdit.cxDescriptionKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (Key = 37) or (Key=38) then   //左键  上键
    edMarketBillNo.SetFocus;

  if (Key = VK_RETURN) or (Key = 39)  then   //回车 右键
    cxBillType.SetFocus;

  if (Key=40) then  //下键
     edt_sStyleBarCode.SetFocus;

end;

procedure TFrmPOSEdit.cxFNumberKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (Key = 37) or (Key=38) then   //左键  上键
    edt_sStyleBarCode.SetFocus;

  if (Key = VK_RETURN) or (Key = 39) or (Key=40) then   //右键  下键
    edMarketBillNo.SetFocus;
end;

procedure TFrmPOSEdit.edt_fAmountKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (Key = 37) then   //左键
    edt_sStyleBarCode.SetFocus;

  if (Key=38) then   //上键
    cxBillType.SetFocus;


end;

procedure TFrmPOSEdit.ScaleAssign;
var Bill_Sum_Price,CFAGIO_SUM_PRICE,CFQTY : Double;
    CFSALESMANID : string;
begin
  //自动计算分配比例
  Gio.AddShow('开始计算比例分配金额');
  if dsScaleAssign.DataSet.RecordCount>0 then Exit;  //如果已经手工填写了分配比例则退出
  try
    Bill_Sum_Price := StrToFloat(lbSum_Price.Caption);
  except
    Gio.AddShow('比例分配时获取整单金额出错！单号【'+POSBillNumber+'】金额【'+lbSum_Price.Caption+'】');
    Bill_Sum_Price := 0;
  end;
  if Bill_Sum_Price=0 then Exit;

  with dsDetail.DataSet do
  begin
    First;
    while not Eof do
    begin
      CFSALESMANID := FieldbyName('CFSALESMANID').AsString;
      CFAGIO_SUM_PRICE := FieldbyName('CFAGIO_SUM_PRICE').AsFloat;

      if dsScaleAssign.DataSet.Locate('CFSALESMANID',CFSALESMANID,[]) then
      begin
        if not(dsScaleAssign.DataSet.State in db.dsEditModes) then dsScaleAssign.DataSet.Edit;
        CFQTY := CFQTY+dsScaleAssign.DataSet.FieldByName('CFQTY').Value;
        dsScaleAssign.DataSet.FieldByName('CFSumPrice').Value := dsScaleAssign.DataSet.FieldByName('CFSumPrice').AsFloat+CFAGIO_SUM_PRICE;
        dsScaleAssign.DataSet.FieldByName('CFQTY').Value := 100*dsScaleAssign.DataSet.FieldByName('CFSumPrice').AsFloat/Bill_Sum_Price;
        dsScaleAssign.DataSet.Post;
      end
      else
      begin
        if not(dsScaleAssign.DataSet.State in db.dsEditModes) then dsScaleAssign.DataSet.Edit;
        dsScaleAssign.DataSet.Append;
        dsScaleAssign.DataSet.FieldByName('CFSALESMANID').Value := CFSALESMANID;
        dsScaleAssign.DataSet.FieldByName('CFSumPrice').Value := CFAGIO_SUM_PRICE;
        dsScaleAssign.DataSet.FieldByName('CFQTY').Value := 100*CFAGIO_SUM_PRICE/Bill_Sum_Price;

        //20120409
        dsScaleAssign.DataSet.FieldByName('CFYEAR').Value := UserInfo.YearStr; //年份
        dsScaleAssign.DataSet.FieldByName('cfstoreunitid').AsString := Userinfo.FStoreOrgUnit;   //库存组织
        dsScaleAssign.DataSet.FieldByName('cfsaleunitid').AsString := Userinfo.FSaleOrgID;  //销售组织
        dsScaleAssign.DataSet.FieldByName('CFWAREHOUSEID').AsString := Userinfo.Warehouse_FID;  //仓库
        dsScaleAssign.DataSet.Post;
      end;
      Next;
    end;
  end;

  Gio.AddShow('完成计算比例分配金额');
end;

procedure TFrmPOSEdit.cdsScaleAssignCalcFields(DataSet: TDataSet);
var sqlstr : string;
begin
  inherited;
  
end;

procedure TFrmPOSEdit.cdsScaleAssignNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FID').AsString := CliDM.GetEASSID(UserInfo.RetailPOSReceiverEntryID);;
  DataSet.FieldByName('FParentID').AsString := POSBillIDValue;
  DataSet.FieldByName('CFWareHouseID').AsString := UserInfo.Warehouse_FID;

  //20120409
  DataSet.FieldByName('CFYEAR').Value := UserInfo.YearStr; //年份
  DataSet.FieldByName('cfstoreunitid').AsString := Userinfo.FStoreOrgUnit;   //库存组织
  DataSet.FieldByName('cfsaleunitid').AsString := Userinfo.FSaleOrgID;  //销售组织
end;

procedure TFrmPOSEdit.csDetailCFAGIO_SUM_PRICEChange(Sender: TField);
var CFAGIO_SUM_PRICE,CFPRICE,CFAGIO_PRICE,CFAMOUNT,CFAGIO : Double;
begin
  inherited;
  try
    Sender.OnChange := nil;
    if UserInfo.RoundBillType=2 then //商品金额位置处理小数位
        Sender.AsFloat := CliDM.SimpleRoundTo(Sender.AsFloat);
  finally
    Sender.OnChange := csDetailCFAGIO_SUM_PRICEChange;
  end;

  try
    csDetailCFAGIO.OnChange := nil;  //隐藏调整折扣change事件，避免死循环
    csDetailCFAGIO_PRICE.OnChange := nil;
    CFAGIO_SUM_PRICE := Sender.AsFloat;
    CFAMOUNT := Sender.DataSet.FieldByName('CFAMOUNT').AsFloat;
    CFPRICE := Sender.DataSet.FieldByName('CFPRICE').AsFloat;
    CFAGIO_PRICE := CFAGIO_SUM_PRICE/CFAMOUNT;
    Sender.DataSet.FieldByName('CFAGIO_PRICE').AsFloat := CFAGIO_PRICE; //折扣后价格
    //WriteTxt('csDetailCFAGIO_SUM_PRICEChange CFAGIO_PRICE='+FloatToStr(CFAGIO_PRICE)+' CFPRICE='+FloatToStr(CFPRICE));
    if Sender.DataSet.FieldByName('CFPRICE').AsFloat =0 then
      Sender.DataSet.FieldByName('CFAGIO').AsFloat := 0
    else
      Sender.DataSet.FieldByName('CFAGIO').AsFloat := CFAGIO_PRICE /CFPRICE *100; //折扣
  finally
    csDetailCFAGIO.OnChange := csDetailCFAGIOChange;
    csDetailCFAGIO_PRICE.OnChange := csDetailCFAGIO_PRICEChange;
  end;
end;

procedure TFrmPOSEdit.act_CtrlHExecute(Sender: TObject);
begin
  inherited;
  GetDayReceive;  //打开当天收银
end;

procedure TFrmPOSEdit.act_CtrlSExecute(Sender: TObject);
begin
  inherited;
  GetEditStatus;
  if not dsDetail.DataSet.IsEmpty then
  begin
    cxGD.SetFocus;
    cxDetail.GetColumnByFieldName('CFAMOUNT').Selected := True;
    cxDetail.GetColumnByFieldName('CFAMOUNT').Focused := True;
    cxDetail.Controller.EditingController.ShowEdit;
  end;
end;

procedure TFrmPOSEdit.cxDetailEditKeyUp(Sender: TcxCustomGridTableView;
  AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Word;
  Shift: TShiftState);
var KeyFieldName : string;
    FocusFieldIndex,NextFieldIndex : Integer;
begin
  inherited;
  if (Key=37) or (Key=39) then
  begin
    if dsDetail.DataSet.State in Db.dsEditModes then dsDetail.DataSet.Post;
    if TcxGridDBColumn(AItem).Editing then    //编辑状态下才处理左右键，非编辑状态系统会自动切换
    begin
     with TcxGridDBColumn(AItem)do
     begin
       KeyFieldName := DataBinding.FieldName;
       FocusFieldIndex := Index;
     end;
     if Key=37 then NextFieldIndex := FocusFieldIndex-1;    //左键
     if Key=39 then NextFieldIndex := FocusFieldIndex+1;    //右键
     with TcxGridDBColumn(TcxGridDBTableView(Sender).FindItemByID(NextFieldIndex)) do
     begin
       Selected := True;
       Focused := True;
       if Options.Editing then
         cxDetail.Controller.EditingController.ShowEdit;
     end;
    end;

  end;
end;

procedure TFrmPOSEdit.cxBillTypeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (Key = 37) or (Key=38) then   //左键  上键
    cxDescription.SetFocus;

  if (Key = VK_RETURN) or (Key = 39) or (Key=40)  then   //回车 右键 下键
  edt_sStyleBarCode.SetFocus;
end;

procedure TFrmPOSEdit.edt_sStyleBarCodeEnter(Sender: TObject);
begin
  //Gio.AddShow('edt_sStyleBarCodeEnter...');
  inherited;

end;

procedure TFrmPOSEdit.actCtrl3Execute(Sender: TObject);
begin
  inherited;
  edt_sStyleBarCode.SetFocus;  
end;

procedure TFrmPOSEdit.SetCommState;
var DevicCaps,DevicInt : integer;
begin
  DevicCaps := GetDeviceCaps(GetDC(Self.Handle),HORZRES);
  {
  if DevicCaps=1024 then //对1024×768分辨率进行处理的代码；
  begin
    if Self.WindowState = wsMaximized then
    begin
      DevicInt := 100;
      kingdeeURL.Left := kingdeeURL.Left-DevicInt;
      img_fullscreen.Left := img_fullscreen.Left-DevicInt;
      lb_fullscreen.Left := lb_fullscreen.Left-DevicInt;
      lb_help.Left := lb_help.Left-DevicInt;
      img_help.Left := img_help.Left - DevicInt;
      Image7.Left := Image7.Left-DevicInt;
      lblUserInifo.Left := lblUserInifo.Left-DevicInt;
    end
    else
    begin
      DevicInt := 100;
      kingdeeURL.Left := kingdeeURL.Left-DevicInt;
      //kingdeeURL.Left := Self.Left+Self.Width-kingdeeURL.Width-38;
      img_fullscreen.Left := img_fullscreen.Left-DevicInt;
      lb_fullscreen.Left := lb_fullscreen.Left-DevicInt;
      lb_help.Left := lb_help.Left-DevicInt;
      img_help.Left := img_help.Left - DevicInt;
      Image7.Left := Image7.Left-DevicInt;
      lblUserInifo.Left := lblUserInifo.Left-DevicInt;
    end;

    btF2.Left :=0;
    btF2.Width := 45;
    btF3.Width := 45;
    btF3.Left := btF2.Left+btF2.Width;
    btF4.Width := 43;
    btF4.Left := btF3.Left+btF3.Width;
    btF5.Width := 53;
    btF5.Left := btF4.Left+btF4.Width;
    btF6.Width := 55;
    btF6.Left := btF5.Left+btF5.Width;
    btF7.Width := 44;
    btF7.Left := btF6.Left+btF6.Width;
    btF8.Width := 55;
    btF8.Left := btF7.Left+btF7.Width;
    btF9.Width := 55;
    btF9.Left := btF8.Left+btF8.Width;
    btF10.Width := 48;
    btF10.Left := btF9.Left+btF9.Width;
    btF11.Width := 48;
    btF11.Left := btF10.Left+btF10.Width;
    btF12.Width := 61;
    btF12.Left := btF11.Left+btF11.Width;
    btCtrlA.Width := 84;
    btCtrlA.Left := btF12.Left+btF12.Width;
    btCtrlB.Width := 105;
    btCtrlB.Left := btCtrlA.Left+btCtrlA.Width;
    btCtrlD.Width := 83;
    btCtrlD.Left := btCtrlB.Left+btCtrlB.Width;
    btCtrlG.Width := 93;
    btCtrlG.Left := btCtrlD.Left+btCtrlD.Width;
    btCtrlH.Width := 95;
    btCtrlH.Left := btCtrlG.Left+btCtrlG.Width;
    btCtrlDown.Width := 61;
    btCtrlDown.Left := btCtrlH.Left+btCtrlH.Width;
  end;
  }
end;

procedure TFrmPOSEdit.lb_helpClick(Sender: TObject);
var toFileName:string;
begin
  toFileName:=ExtractFilePath(Application.ExeName)+'help.chm';
  if not FileExists(toFileName)  then
  begin
    ShowMsg(Handle, '没有找到帮助文件(help.chm)!',[]);
    Exit;
  end;
  shellexecute(handle,'open',pchar(toFileName),nil,nil,sw_shownormal);
end;

procedure TFrmPOSEdit.act_CtrlIExecute(Sender: TObject);
var sqlstr : string;
begin
  inherited;
  //班次结账属于 2012年5月发版之后增加的，发版的程序如果不包含 FType 说明没有升级，则不执行下述方法
  sqlstr := 'SELECT * FROM SYSCOLUMNS WHERE ID = OBJECT_ID(''CT_BD_FREQUENCY_Relief '') AND NAME = ''FType'' ';
  if not CliDM.Client_IsExists(sqlstr) then
  begin
    ShowMsg(Handle,'缺少必要字段，请升级最新补丁后使用',[]);
    Exit;
  end;

  with TfrmDutyCheckIn.Create(self)do
  begin
    ShowModal;
    if ModalResult =mrok then
    begin
       CliDM.InsertOnDutyRecord(UserInfo.LoginUser_FID,UserInfo.Warehouse_FID,UserInfo.MachineCode,UserInfo.FreQuency_ID,1);  //owen添加上班记录
      CliDM.InserCashRecord(UserInfo.LoginUser_FID,UserInfo.Warehouse_FID,UserInfo.MachineCode,'备用金',UserInfo.FreQuency_ID,'',
      1,1,cxCurFee.Value,0);
      CliDM.qryInsertCashlist.UpdateBatch();
    end;
  end;
end;

procedure TFrmPOSEdit.act_CtrlJExecute(Sender: TObject);
var sqlstr : string;
begin
  inherited;
    //班次结账属于 2012年5月发版之后增加的，发版的程序如果不包含 FType 说明没有升级，则不执行下述方法
  sqlstr := 'SELECT * FROM SYSCOLUMNS WHERE ID = OBJECT_ID(''CT_BD_FREQUENCY_Relief '') AND NAME = ''FType'' ';
  if not CliDM.Client_IsExists(sqlstr) then
  begin
    ShowMsg(Handle,'缺少必要字段，请升级最新补丁后使用',[]);
    Exit;
  end;
  
  with TfrmCashStorage.Create(self)do
  begin
    ShowModal;
    if ModalResult =mrok then
    begin
      CliDM.InserCashRecord(UserInfo.LoginUser_FID,UserInfo.Warehouse_FID,UserInfo.MachineCode,'备用金',UserInfo.FreQuency_ID,'',
      1,1,cxCurAmt.Value,0);
      CliDM.qryInsertCashlist.UpdateBatch();

    end;
  end;
end;

procedure TFrmPOSEdit.act_CtrlKExecute(Sender: TObject);
var sqlstr : string;
begin
  inherited;
    //班次结账属于 2012年5月发版之后增加的，发版的程序如果不包含 FType 说明没有升级，则不执行下述方法
  sqlstr := 'SELECT * FROM SYSCOLUMNS WHERE ID = OBJECT_ID(''CT_BD_FREQUENCY_Relief '') AND NAME = ''FType'' ';
  if not CliDM.Client_IsExists(sqlstr) then
  begin
    ShowMsg(Handle,'缺少必要字段，请升级最新补丁后使用',[]);
    Exit;
  end;
  with TfrmCacthCash.Create(self) do
  begin
    ShowModal;
    if ModalResult=mrok then
    begin
      CliDM.InserCashRecord(UserInfo.LoginUser_FID,UserInfo.Warehouse_FID,UserInfo.MachineCode,'取现',UserInfo.FreQuency_ID,'',
      2,-1,cxCurAmt.Value,0);
      CliDM.qryInsertCashlist.UpdateBatch();
    end;  
  end;
end;

procedure TFrmPOSEdit.act_CtrlLExecute(Sender: TObject);
var sqlstr : string;
begin
  inherited;
    //班次结账属于 2012年5月发版之后增加的，发版的程序如果不包含 FType 说明没有升级，则不执行下述方法
  sqlstr := 'SELECT * FROM SYSCOLUMNS WHERE ID = OBJECT_ID(''CT_BD_FREQUENCY_Relief '') AND NAME = ''FType'' ';
  if not CliDM.Client_IsExists(sqlstr) then
  begin
    ShowMsg(Handle,'缺少必要字段，请升级最新补丁后使用',[]);
    Exit;
  end;
  
  with TfrmCashBook.Create(self)do
  begin
    ShowModal;
  end;
end;

procedure TFrmPOSEdit.act_CtrlNExecute(Sender: TObject);
var sqlstr : string;
begin
  inherited;
  //班次结账属于 2012年5月发版之后增加的，发版的程序如果不包含 FType 说明没有升级，则不执行下述方法
  sqlstr := 'SELECT * FROM SYSCOLUMNS WHERE ID = OBJECT_ID(''CT_BD_FREQUENCY_Relief '') AND NAME = ''FType'' ';
  if not CliDM.Client_IsExists(sqlstr) then
  begin
    ShowMsg(Handle,'缺少必要字段，请升级最新补丁后使用',[]);
    Exit;
  end;
  
  with TfrmLeaveCheckIn.Create(self) do
  begin
    ShowModal;
    if ModalResult =mrok then
    begin
      with CliDM.qryduty do  //下班结账owen
      begin
        Close;
        SQL.Clear;
        SQL.Add(' update CT_BD_FREQUENCY_Relief set Ftype=2,Reliefdate=getdate()  where  Ftype=1 and FreQuency_FID ='''+UserInfo.FreQuency_ID+''' ');
        SQL.Add(' and Warehouse_FID='''+UserInfo.Warehouse_FID+''' and FEmployeeID='''+UserInfo.LoginUser_FID+''' and Fmachineno='''+UserInfo.MachineCode+''' ');
        ExecSQL;
      end;
    end;
  end;
end;

procedure TFrmPOSEdit.CTRLI1Click(Sender: TObject);
begin
  inherited;
  act_CtrlI.Execute;
end;

procedure TFrmPOSEdit.edMarketBillNoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (Key = 37) or (Key=38) then   //左键  上键
  begin
    edt_sStyleBarCode.SetFocus;
  end;

  if (Key = VK_RETURN) or (Key = 39) or (Key=40) then   //右键  下键
  begin
    cxDescription.SetFocus;
  end;
end;

//20120717
procedure TFrmPOSEdit.LoadShopRreceiveType;
var sqlstr : string;
begin
    //检查系统是否有收银方式，防止第一次空库安装后做单无法结单的问题
    with CliDM.qryShopRreceiveType do
    begin
       sqlstr := 'select FID,FNUMBER,FNAME_L2,cfcoupons,cfvipexchange from CT_SBA_SHOPRECEIVETYPE(nolock) order by FNUMBER';
      if Active then
      if RecordCount<3 then
      begin
        Close;
        SQL.Clear;
        sql.Add(sqlstr);
        Open;
      end;
    end;

    //因为之前的安装包已经有重复的记录，下面这句话需要在2011。11.1日之后启用，否则会引起所以客户端登录提示
    if Userinfo.Earnest_FID='' then
    begin
      Userinfo.Earnest_FID := CliDM.Client_QuerySQL('select FID,FNUMBER from CT_SBA_SHOPRECEIVETYPE(nolock) Where FNAME_L2='+QuotedStr('定金')).fieldbyName('FID').AsString;  //定金FID
      if Userinfo.Earnest_FID='' then
      ShowError(Handle, '本机缺少“定金”收款方式，会影响POS挂单和结单，系统正在下载数据，请稍后再打开POS开单！',[]);
    end;
    if Userinfo.Cash_FID='' then
    begin
      Userinfo.Cash_FID := CliDM.Client_QuerySQL('select FID,FNUMBER from CT_SBA_SHOPRECEIVETYPE(nolock) Where FNAME_L2='+QuotedStr('现金')).fieldbyName('FID').AsString;     //现金FID
      if Userinfo.Cash_FID='' then
      ShowError(Handle, '本机缺少“现金”收款方式，会影响POS挂单和结单，系统正在下载数据，请稍后再打开POS开单！',[]);
    end;

end;

procedure TFrmPOSEdit.kingdeeURLClick(Sender: TObject);
begin
  inherited;
  ShellExecute(Application.Handle, 'open','Iexplore.exe','http://www.kingdee.com',nil,SW_SHOWNORMAL);
end;

procedure TFrmPOSEdit.act_CtrlRExecute(Sender: TObject);
var  fAmount:integer;
begin
  inherited;
  fAmount:=strtoint(edt_fAmount.Text);
  if fAmount<0 then
    edt_fAmount.Text:=inttostr(abs(fAmount))
  else
  edt_fAmount.Text:='-'+edt_fAmount.Text;
end;

procedure TFrmPOSEdit.act_CtrlMExecute(Sender: TObject);
var CFMATERIALID:string;
begin
  with cxDetail.DataController.DataSource do
  begin
    if DataSet.IsEmpty then
    begin
      ShowMessage('没有商品可以查看!');
      Abort;
    end;
    if is_fieldByName(TClientDataSet(DataSet),'CFMATERIALID') then
      CFMATERIALID := DataSet.FieldByName('CFMATERIALID').AsString
    else
    if is_fieldByName(TClientDataSet(DataSet),'FMATERIALID') then
      CFMATERIALID := DataSet.FieldByName('FMATERIALID').AsString;
  end;
  getMaterialinfo(CFMATERIALID);
end;
procedure TFrmPOSEdit.act_CtrlQExecute(Sender: TObject);
var CardCode : string;
begin
  inherited;
  CardCode := csMaster.FieldByName('CFVIPCardNumber').AsString;
  if CardCode='' then
  begin
    ShowMsg(Handle, '您还没有输入会员！',[]);
    abort;
  end;
  EmitCartEdit(CardCode);  //打开会员卡信息
end;

procedure TFrmPOSEdit.act_CtrlTExecute(Sender: TObject);
begin
  inherited;
  if not UserInfo.Is_SysOnline then
  begin
    ShowMsg(Handle, '只有联机状态下才能使用本功能！',[]);
    abort;
  end;
  if ShowYesNo(Handle, '确定要清除本单的会员信息吗?选【是】将清除会员信息!',[]) = idYes then
  begin
    csMaster.Edit;
    csMaster.FieldByName('CFVIPCardNumber').AsString :='';
    csMaster.FieldByName('CFbonusRate').Clear;
    csMaster.FieldByName('fdescription').AsString := '';
    csMaster.Post;    
  end;
end;

procedure TFrmPOSEdit.loadTempdata;
var onLine,notLine,strVIPInfo,strVIPBonus,inputval,_sql,errmsg:string;
   cds:TClientDataSet;
begin
  inherited;
  onLine:=ExtractFilePath(paramstr(0)) + UserInfo.LoginUser+'\onLine\';
  if UserInfo.Is_SysOnline then
  begin
    if FileExists(onLine+'csMaster.cds') then
    begin
      if ShowYesNo(Handle, '发现未提交成功数据,是否恢复重新提交?',[]) = idYes then
      begin
        csMaster.LoadFromFile(onLine+'csMaster.cds');
        //恢复的数据要重新设置FID号
        POSBillIDValue:=csMaster.fieldbyname('fid').AsString;
        POSBillNumber := csMaster.fieldByName('FNumber').AsString;
        if FileExists(onLine+'csDetail.cds') then
        csDetail.LoadFromFile(onLine+'csDetail.cds');
        if FileExists(onLine+'cdsScaleAssign.cds') then
        cdsScaleAssign.LoadFromFile(onLine+'cdsScaleAssign.cds');
        if FileExists(onLine+'cds_Vipcard.cds') then
        begin
          cds_Vipcard.LoadFromFile(onLine+'cds_Vipcard.cds');
          //取会员信息
          try
            if cds_Vipcard.IsEmpty then Exit;
            cds:=TClientDataSet.Create(nil);
            inputval := cds_Vipcard.fieldbyname('FVIPCARDNUMBER').AsString;
            if (inputval='') then Exit;
            _sql:='select a.fid, a.FVipCardNumber,b.fname_l2, a.FCurrentBonus,a.FCumulateBonus ,'
              +' a.FCurrentValue,a.FCumulateValue  from t_rt_vipcard a   '
              +' inner join t_rt_vipbasedata b on a.fvipcardnumber = b.fnumber '
              +' where a.FVipCardNumber ='+QuotedStr(inputval);
            if not CliDM.Get_OpenSQL(cds,_sql,errmsg) then
            begin
              ShowMessage('查找会员数据出错:'+errmsg);
              Exit;
            end;
            strVIPInfo :=  cds.FieldByName('fname_l2').AsString ;
            strVIPBonus:= '积分: '+FormatFloat('0',cds.fieldbyname('FCurrentBonus').AsFloat)
                           +' 储值：'+FormatFloat('0.0',cds.fieldbyname('FCurrentValue').AsFloat);
            txt_vip.Text     :=  strVIPInfo;
            txt_vipInfo.Text := strVIPBonus;
          finally
            cds.Free;
          end;
        end;
      end;
    end;
  end;
end;

procedure TFrmPOSEdit.DelTempFile;
var onLine,notLine:string;
begin
  inherited;
  onLine:=ExtractFilePath(paramstr(0)) + UserInfo.LoginUser+'\onLine\';
  if UserInfo.Is_SysOnline then
  begin
    if FileExists(onLine+'csMaster.cds') then
    begin
      DeleteFile(onLine+'csMaster.cds');
      if FileExists(onLine+'csDetail.cds') then
      DeleteFile(onLine+'csDetail.cds');
      if FileExists(onLine+'cdsScaleAssign.cds') then
      DeleteFile(onLine+'cdsScaleAssign.cds');

      if FileExists(onLine+'cds_Vipcard.cds') then
      DeleteFile(onLine+'cds_Vipcard.cds');

    end;
  end;
end;

procedure TFrmPOSEdit.csRetailPRPRECalcFields(DataSet: TDataSet);
begin
  inherited;
  if CliDM.qryShopRreceiveType.Locate('FID',DataSet.FieldByName('CFPAYMENTTYPE').AsString,[])then
  begin
    DataSet.FieldByName('cfcoupons').AsInteger := CliDM.qryShopRreceiveType.fieldbyname('cfcoupons').AsInteger;
    DataSet.FieldByName('cfvipexchange').AsInteger := CliDM.qryShopRreceiveType.fieldbyname('cfvipexchange').AsInteger;
  end;  
end;

procedure TFrmPOSEdit.qryPrepreCalcFields(DataSet: TDataSet);
begin
  inherited;
  if CliDM.qryShopRreceiveType.Locate('FID',DataSet.FieldByName('CFPAYMENTTYPE').AsString,[])then
  begin
    DataSet.FieldByName('cfcoupons').AsInteger := CliDM.qryShopRreceiveType.fieldbyname('cfcoupons').AsInteger;
    DataSet.FieldByName('cfvipexchange').AsInteger := CliDM.qryShopRreceiveType.fieldbyname('cfvipexchange').AsInteger;
  end; 
end;

procedure TFrmPOSEdit.csDetailAfterPost(DataSet: TDataSet);
begin
  inherited;
  SaveTempdata;
end;

procedure TFrmPOSEdit.SaveTempdata;
var onLine,notLine:string;
begin
  inherited;
  onLine:=ExtractFilePath(paramstr(0)) + UserInfo.LoginUser+'\onLine\';
  if (UserInfo.Is_SysOnline)   then
  begin
    if (not csMaster.IsEmpty) and (not csDetail.IsEmpty)  then
    begin
      DelTempFile;//先删除
      csMaster.SaveToFile(onLine+'csMaster.cds');
      csDetail.SaveToFile(onLine+'csDetail.cds');
      if not cds_Vipcard.IsEmpty then
      cds_Vipcard.SaveToFile(onLine+'cds_Vipcard.cds');
      if not cdsScaleAssign.IsEmpty then
      cdsScaleAssign.SaveToFile(onLine+'cdsScaleAssign.cds');
    end;
  end;
end;

procedure TFrmPOSEdit.act_CtrlWExecute(Sender: TObject);
begin
  inherited;
  try
    csDetail.AfterPost:=nil;
    SaveTempdata;
  finally
    csDetail.AfterPost:=csDetailAfterPost;
  end;
end;

procedure TFrmPOSEdit.cxDetailEditKeyDown(Sender: TcxCustomGridTableView;
  AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key=13 then
  begin
    if dsDetail.DataSet.State in Db.dsEditModes then dsDetail.DataSet.Post;
    edt_sStyleBarCode.SetFocus;
  end;
end;

procedure TFrmPOSEdit.XT1Click(Sender: TObject);
var
   mpCount,barCount,InQty,FAmount,i,BarCodeIndex,AmountIndex:Integer;
   barcode,OutMsg :string ;
  key :Word;
  e : TShiftState;
  strlistlog :TStringList;
begin
  inherited;
  strlistlog := TStringList.Create;
  with TPOSFormTxtImportFrm.Create(self) do
  begin
    stDataSet := dsDetail.DataSet;
    stPOSBillIDValue := POSBillIDValue;
    ShowModal;

    {if ModalResult =mrok then
    begin
      if AmountIndex=0 then AmountIndex := 1;
      try
      if  UserInfo.Is_SysOnline then
        csdetail.DisableControls
      else
        QryDetail.DisableControls ;
      cxDetail.BeginUpdate;
      Screen.Cursor := crHourGlass;
        for  barCount:=1 to FileList.Count-1 do
        begin
            if Trim(FileList[barCount])='' then
            begin
              p_bar.Position:=barCount+1;
              Application.ProcessMessages;
              Continue ;
            end;
            rowlist.Delimiter:=sp;
            rowlist.DelimitedText:=FileList[barCount];

            barcode:=rowlist[BarCodeIndex];
            if (Trim(barcode)='') or (Trim(rowlist[AmountIndex])='') then   //如果条码为空或者数量为空 跳过空行
            begin
              p_bar.Position:=barCount+1;
              Application.ProcessMessages;
              Continue;
            end;
            if  dsDetail.DataSet.Locate('CFBARCODE;CFAGIO_PRICE',VarArrayOf([Trim(barcode),strtoint(rowlist[2])]),[]) then
            begin
              dsDetail.DataSet.Edit;
              dsDetail.DataSet.FieldByName('CFAMOUNT').AsFloat := dsDetail.DataSet.FieldByName('CFAMOUNT').AsFloat+ strtoint(rowlist[AmountIndex]);

            end
            else
            begin

              inQty:=StrToInt(rowlist[AmountIndex]);
             // edt_fAmount.Text := IntToStr(inQty);
             // edt_sStyleBarCode.Text := Trim(barcode);
             // key := 13;
             // edt_sStyleBarCode.OnKeyDown(nil,key,e);
              GetValueFromBarCode(Trim(barcode),dsDetail.DataSet,inQty,OutMsg) ;
              if Trim(OutMsg) <>'' then strlistlog.Add(OutMsg);
              dsDetail.DataSet.Edit;
              dsDetail.DataSet.FieldByName('CFAGIO_PRICE').AsFloat := strtoint(rowlist[2]);
            end;
          //dsDetail.DataSet.Post;
        end;
        if  strlistlog.Count >0 then
          ShowMsg(Handle, strlistlog.CommaText,[]);
      finally
        if  UserInfo.Is_SysOnline then
          csdetail.EnableControls
        else
          QryDetail.EnableControls ;
        cxDetail.EndUpdate;
        csdetail.Last;;
        edt_fAmount.Text := '1';
        Screen.Cursor := crDefault;
        strlistlog.Free;
      end;
    end;  }
  end;

  dsDetail.DataSet.OnCalcFields := csDetailCalcFields;
  dsDetail.DataSet.Last;
end;

procedure TFrmPOSEdit.pmDetailPopup(Sender: TObject);
begin
  inherited;
  if dsMaster.DataSet.FieldByName('CFSTATE').AsInteger =0 then
    XT1.Enabled := True
  else
    XT1.Enabled := False;  
end;

function TFrmPOSEdit.checkstockQty(var OutMsg:string): Boolean;
var info :PosEntryInfo;
    listinfo : TList;
    bk : TBookmarkStr;
    ErrMsg : string;
    StorageQty:Double;
    i:Integer;
function FilterList(list:TList;material_id,color_id,size_id,cup_id:string;qty:Integer):Boolean;
var tmpinfo : PosEntryInfo ;
    i : Integer;
begin
  Result := False;
  if list.Count = 0 then Exit;
  for i:=0 to list.Count-1 do
  begin
    tmpinfo := PosEntryInfo(list[i]);
    if (tmpinfo.fmaterial_id=material_id) and (tmpinfo.fcolor_id=color_id)
       and (tmpinfo.fsize_id=size_id) and (tmpinfo.fcup_id=cup_id)
    then
    begin
      tmpinfo.qty :=   tmpinfo.qty+qty;
      Result := True;
    end;
  end;
end;
begin
  Result := True;
  if not UserInfo.Is_SysOnline then Exit;
  if not UserInfo.IsNeisSue then Exit;
  if csDetail.IsEmpty then Exit;
  listinfo := TList.Create;
  bk := csDetail.Bookmark;
  try
    csDetail.DisableControls;
    csDetail.First;
    while  not csDetail.Eof do
    begin
      if (csDetail.fieldbyname('CFAMOUNT').AsInteger>0) then
      begin
        info :=  PosEntryInfo.Create;
        info.fmaterial_id := Trim(csDetail.fieldbyname('CFMATERIALID').AsString);
        info.fmaterial_code :='物料编号:' + Trim(csDetail.fieldbyname('cfMaterialNumber').AsString)
                              + ' ,颜色编号:'+ Trim(csDetail.fieldbyname('CFColorCode').AsString)
                              + ' ,尺码:'+ Trim(csDetail.fieldbyname('cfSIZEName').AsString);
        if Trim(csDetail.fieldbyname('cfCupName').AsString)<>'' then
        begin
          info.fmaterial_code:=info.fmaterial_code+ ' ,内长:'+ Trim(csDetail.fieldbyname('cfCupName').AsString);
        end;
        info.fcolor_id    := Trim(csDetail.fieldbyname('CFCOLORID').AsString);
        info.fsize_id     := Trim(csDetail.fieldbyname('CFSIZESID').AsString);
        info.fcup_id      := Trim(csDetail.fieldbyname('CFCUPID').AsString);
        info.fassNumber   := Trim(csDetail.fieldbyname('CFASSISTNUM').AsString);
        info.qty          := csDetail.fieldbyname('CFAMOUNT').AsInteger;
        if (not FilterList(listinfo,
          Trim(csDetail.fieldbyname('CFMATERIALID').AsString),
          Trim(csDetail.fieldbyname('CFCOLORID').AsString),
          Trim(csDetail.fieldbyname('CFSIZESID').AsString),
          Trim(csDetail.fieldbyname('CFCUPID').AsString),
          csDetail.fieldbyname('CFAMOUNT').AsInteger
          ))
        then
        begin
          listinfo.Add(info);
        end;
      end;
      csDetail.Next;
    end;
    if (listinfo.Count>0) then
    begin
        for i:=0 to listinfo.Count-1 do
        begin
          info :=  PosEntryInfo(listinfo[i]);
          Gio.AddShow('开始获取库存！');
          StorageQty :=  CliDM.Pub_POSCheckSto(info.fmaterial_id,info.fcolor_id,info.fsize_id,info.fcup_id,info.fassNumber,ErrMsg);
          Gio.AddShow('获取库存完成！');
          if StorageQty<info.qty then
          begin
            OutMsg :=  '商品['+info.fmaterial_code+']库存不够，当前库存为【'+FloatTostr(StorageQty)+'】！';
            Result := False;
            Exit;
          end;
        end;
    end;
  finally
    csDetail.Bookmark:=bk;
    csDetail.EnableControls;
    listinfo.Free;
  end;
end;

function TFrmPOSEdit.checkListData(var OutMsg: string): Boolean;
var bk : TBookmarkStr;
    al,al2,i:Integer;
begin
  Result := True;
  if cxDetail.DataController.DataSource.DataSet.IsEmpty then Exit;
  if (UserInfo.Is_SysOnline) then
  begin
    if Trim(csMaster.FieldByName('fsourcebillid').AsString)<>'' then Exit;
  end
  else
  begin
    if Trim(QryMater.FieldByName('fsourcebillid').AsString)<>'' then Exit;
  end;
  bk := csDetail.Bookmark;
  try
    cxDetail.DataController.DataSource.DataSet.DisableControls;
    cxDetail.DataController.DataSource.DataSet.First;
    i := 0;
    while  not cxDetail.DataController.DataSource.DataSet.Eof do
    begin
      if (i=0) then
      begin
        al := cxDetail.DataController.DataSource.DataSet.fieldbyname('CFAMOUNT').AsInteger;
        if al>0 then al:=1 else al := 0;
      end
      else
      begin
        al2 := cxDetail.DataController.DataSource.DataSet.fieldbyname('CFAMOUNT').AsInteger;
        if al2>0 then al2:=1 else al2 := 0;

        if al<>al2 then
        begin
          OutMsg:='手工开单时，单据不允许同时出现正负数，如需手工退换货，需开两张单来处理！';
          Result := False;
          Exit;
        end;
      end;
      i:= i+1;
      cxDetail.DataController.DataSource.DataSet.Next;
    end;
  finally
    cxDetail.DataController.DataSource.DataSet.Bookmark:=bk;
    cxDetail.DataController.DataSource.DataSet.EnableControls;
  end;
end;

procedure TFrmPOSEdit.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
  inherited;
  Image7.Left := pnTop.Width - (Length(Trim(lblUserInifo.Caption))*6+58);
end;

procedure TFrmPOSEdit.item_PalyViewClick(Sender: TObject);
var ReturnBillFID : string;
begin
  inherited;
  if (dsMaster.DataSet.FieldByName('CFISReturn').AsInteger = 1) then
  begin
    ReturnBillFID := '';
    ReturnBillFID := dsMaster.DataSet.FieldByName('FSOURCEBILLID').AsString;
    if ReturnBillFID <> '' then  ShowPalyType(ReturnBillFID);
  end;
end;

procedure TFrmPOSEdit.act_CtrlYExecute(Sender: TObject);
begin
  inherited;
  if UserInfo.Is_SysOnline then
   CliDM.Chk_UserRight(UserInfo.RetailPOSID,'posF7'); //检查权限

  if dsMaster.DataSet.FieldByName('ISTATUS').AsInteger = 0 then
  if not dsDetail.DataSet.IsEmpty then
  begin
    ShowMsg(Handle, '请处理当前单据后再换班！',[]);
    abort;
  end;
  WarehouseRelief;  //F7换班
end;

procedure TFrmPOSEdit.act_F7Execute(Sender: TObject);
var _uStyle_ID,uColor_ID,uSize_ID,uPack_ID,OutMsg : string;
    sBarCodeCount : Integer;
    info : TMaterInfo;
    FBIZDATE,strsql,ErrMsg :string;
begin
  inherited;
  if UserInfo.Is_SysOnline then
  begin
    FBIZDATE := FormatDateTime('yyyy-mm-dd', dsMaster.DataSet.FieldByName('FBIZDATE').AsDateTime);
    if FBIZDATE <> FormatDateTime('yyyy-mm-dd',CliDM.Get_ServerTime) then   ///业务日期不等于当前系统日期检查业务日期是否日结owen
    begin
      try
        strsql := 'select 1 from T_POS_DayBalance where FWarehouseID ='+quotedstr(UserInfo.Warehouse_FID)+' and to_char(Begindate,''yyyy-mm-dd'')='+quotedstr(FBIZDATE);
        CliDM.Get_OpenSQL(clidm.cdsTemp,strsql,ErrMsg);
      except
        on e : Exception do
        begin
          ShowMsg(Handle, '检查当前业务日期是否日结出错:'+E.Message,[]);
        end;
      end;
      if clidm.cdsTemp.RecordCount>0 then
      begin
        ShowMsg(Handle, FBIZDATE+'已经日结过，请修改业务日期【CTRL+B】！',[]);
        abort;
      end;
    end
    else
    begin
      if FormatDateTime('yyyy-mm-dd',UserInfo.DayEndDay)<>'1899-12-30' then
      if StrToDate(FBIZDATE) <= UserInfo.DayEndDay then
      begin
        ShowMsg(Handle, FBIZDATE+'已经日结过，请修改业务日期【CTRL+B】！',[]);
        abort;
      end;
    end;
  end;
//  sStyle_Code := Trim(cxStyle.Text);
//  if sStyle_Code='' then cxStyle.Text := FindMaterial
//  else
//  begin
//    //增加销售组织过滤，没有二次分配到销售组织的商品不允许输入
//    sqlstr := ' Select FID,FNumber,FNAME_L2 from T_BD_Material A(nolock) '
//              +' Where FSTATUS=1 AND FNumber='+QuotedStr(sStyle_Code);
//            //  +'  AND EXISTS(SELECT 1 FROM t_bd_materialsales WHERE FMATERIALID=A.FID AND FOrgUnit='+QuotedStr(UserInfo.FSaleOrgID)+') ';
//    with CliDM.Client_QuerySQL(sqlstr) do
//    begin
//      if IsEmpty then cxStyle.Text := FindMaterial
//      else
//      cxColor.SetFocus;
//    end;
//  end;

  try
    info := GetSelectMaterialInfo;
    if not info.isOK then Exit;
    _uStyle_ID  := info.Style_ID;
    uStyle_ID   := info.Style_ID;
    uColor_ID   := info.Color_ID;
    uSize_ID    := info.Size_ID;
    uPack_ID    := info.Pack_ID;
    if Trim(edt_fAmount.Text) = '' then sBarCodeCount := 1
    else
    sBarCodeCount := StrToInt(edt_fAmount.Text);

    //新增POS明细
    if BillDetailAppend(cxDetail.DataController.DataSource.DataSet,uStyle_ID,uColor_ID,uSize_ID,uPack_ID,sBarCodeCount,OutMsg) then
    begin
      ClearStyleColorSize;   //清除输入框记录
      Set_Explain_Style;  //打开按款促销界面，如果选中促销会修改折扣、单价和折后金额
      cxDetail.Focused := True;
      cxDetail.GetColumnByFieldName('CFAMOUNT').Selected := True;
      cxDetail.GetColumnByFieldName('CFAMOUNT').Focused := True;
      Self.ActiveControl :=  cxGD;
    end
    else
    begin
      ShowMsg(Handle, OutMsg,[]);
    end;
  finally
    info.Free;
  end;

end;

end.
