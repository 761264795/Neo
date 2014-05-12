unit uPOSEditFrm;
{
  ����״̬˵����
   �ֶ� istatus��fstate =2�� �ᵥ
   �ֶ� istatus��fstate =-1���ҵ�
   �ֶ� istatus��fstate =-2���ѽᵥ�Ĺҵ�

   �ֶ�CFISReturn =0 ��������
   �ֶ�CFISReturn =1 �˻���
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
    uStyle_ID : string;  //��ǰ���ID  ���л�������ģʽ����ʱ��ֵ
    InputSwitch : Boolean;  //���뷽ʽ  true Ϊ��������  false Ϊ����+ɫ��+�ڳ�+�������뷽ʽ
    DetailFSEQ,PrepreFSEQ : integer;
    SalesCount,ReturnCount : integer;  //��ϸ�������� ��������¼��   �ᵥʱ����
    procedure SetInputSwitch(InputSwitch : Boolean);  //�������뷽ʽ
    procedure LoadStyleAsstAttr(Material_FID:string);  //������Ʒ��Ӧ�ĸ�������
    function  BillDetailAppend(DataSet :TDataSet;uStyle_ID,uColor_ID,uSize_ID,uPack_ID :string;sBarCodeCount : Integer;var OutMsg :string):Boolean;  //��ɫ�뷽ʽ����POS��ϸ
    procedure ClearStyleColorSize; //�����ɫ����Ϣ

    function GetValueFromBarCode(sBarCode: String; DataSet: TDataSet; sBarCodeCount: Integer; var OutMsg: String): Boolean;  //��¼��Ϣ������ֵ
    function Insert_Entry_Temp:Boolean;  //д����ʱ������������ϴ���
    function Delete_Entry_Temp:Boolean;  //д����ʱ������������ϴ���

    function Set_Explain_Style: Boolean;  //���ð������
    function Set_Explain_Bill: Boolean; //������������

    procedure GetEditStatus;  //�Ƿ������޸ģ����������Ļ��ڷ����ڻ���ִֹ��
    procedure SetEditStatus;  //���ÿؼ��Ƿ�����༭���뵥�ݵ�״̬��أ��ڵ��ݴ򿪡��ᵥ�󡢹ҵ���ѡ�������
    procedure SetPopedom;     //Ȩ������,��������ʱ����
    function CalcIntegral(BillIDValue,CFVIPCardNumber : string;cfMoney,FBONUSRATE : Double):Double;  //�������
    procedure CreateParams(var Params: TCreateParams); override;
    procedure ScaleAssign;  //��������
    procedure SetCommState;  //�̶����ֿؼ�Ϊֹ����Ӧ��ͬ�ֱ���
    procedure LoadShopRreceiveType;  //���¼���������ʽ
  public
    { Public declarations }
    FbonusRate,FDISCOUNTRATE,FDOUBLEDISCOUNTRATE,FLOWERLIMITDISCOUNTRATE : Double;  //�������Ӧ���ֱ��ʣ�Ԫ��FbonusRate  �ۿ���FDISCOUNTRATE  ������FDOUBLEDISCOUNTRATE  ����ۿ�FLOWERLIMITDISCOUNTRATE  �����Ա����ӷ���������
    procedure SetDetailNewRecord(DataSet: TDataSet);  //��������ģʽ�µ���ϸ�����ֶθ�ֵ   ��������ɨ�衢���¼�롢����������Ʒ3��
    function EditBill(BillIDValue : string):Boolean;  //���߷�ʽ���������һ��POS����
    function EditBillI_NoOnline(BillIDValue : string):Boolean;  //���߷�ʽ���������һ��POS����
    function ST_Save : Boolean; override;
    function ST_Save_NoLine : Boolean;   //���߱���
    procedure SaveTempdata;
    procedure loadTempdata;
    procedure DelTempFile;
    function checkstockQty(var OutMsg:string):Boolean;
    function checkListData(var OutMsg:string):Boolean;
  end;

var
  FrmPOSEdit: TFrmPOSEdit;
  function EditPOSFrm(BillIDValue : string):Boolean;    //��POS��������
  function CheckBillIsSource(BillIDValue : string) : Boolean;  //��鵥���Ƿ��Ѿ���������������  ��Ҫ�û��ҵ�ֱ�ӽᵥ���˻�

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
    MessageBox(0, PChar('��ǰ�ҵ��Ѿ��������') ,pchar('�����ʾ'), M_Hint);
    Abort;
  end;
end;

function EditPOSFrm(BillIDValue : string):Boolean;    //��POS��������
begin
  Result := True;
  if UserInfo.Is_SysOnline then
     CliDM.Chk_UserRight(UserInfo.RetailPOSID,'posAddNew'); //���Ȩ��
 
  if frmPOSEdit <> nil then
  begin
    if not frmPOSEdit.Showing then frmPOSEdit.Show;
    frmPOSEdit.SetFocus;
    Exit;
  end;
  Application.CreateForm(TfrmPOSEdit, frmPOSEdit);
  if UserInfo.Is_SysOnline then
  begin
    if not frmPOSEdit.EditBill(BillIDValue) then//�򿪿�������
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

  if not CliDM.Get_OpenClients(BillIDValue,_cds,OpenTables,ErrMsg) then  //�����ݼ�
  begin
    ShowMsg(Handle, ErrMsg+'  �������´�POS���۵���',[]);
    Result := False;
    exit;
  end;
  POSBillIDValue := BillIDValue;
  POSBillNumber := csMaster.fieldByName('FNumber').AsString;

  if BillIDValue = '' then //����POS����
  begin
    cxDetail.GetColumnByFieldName('CFAGIO').Options.Editing := False;
    cxDetail.GetColumnByFieldName('CFAGIO_PRICE').Options.Editing := False;
    cxDetail.GetColumnByFieldName('CFAGIO_SUM_PRICE').Options.Editing := False;
    DetailFSEQ := 1;
    PrepreFSEQ := 1;
    FbonusRate := 0;  //�������Ӧ���ֱ��ʣ�Ԫ��  ����
    FDISCOUNTRATE  := 0;
    FDOUBLEDISCOUNTRATE  := 0;
    FLOWERLIMITDISCOUNTRATE := 0;  
    BillIDValue := CliDM.GetEASSID(UserInfo.RetailPOSID);
    POSBillIDValue := BillIDValue;
    POSBillNumber := Clidm.GetBillNo('P',UserInfo.WareHouser_Sign,UserInfo.MachineCode); //���ݱ��
    CliDM.qryPosRetailEx.First;
    cfBillTypeID := CliDM.qryPosRetailEx.fieldByName('FID').AsString; //��ȡ��������

    DataSetEditStatus(csMaster);  //�����ݼ���Ϊ�༭״̬
    with csMaster do
    begin
      Append;
      FieldByName('iStatus').AsInteger := 0;
      FieldByName('FID').AsString := BillIDValue;          //����ID
      FieldByName('FNUMBER').AsString := POSBillNumber;    //���ݱ��
      FieldByName('cfBillType').AsString := cfBillTypeID;  //��������
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
      FieldByName('cfmachineno').Value := UserInfo.MachineCode;  //������
      FieldByName('cfbalancedate').Value := CliDM.Get_ServerTime;
      FieldByName('cfassociator').Value := '';
      FieldByName('cfstorageid').AsString := UserInfo.Warehouse_FID;    //�ֿ�
      FieldByName('cfstoreunitid').AsString := UserInfo.FStoreOrgUnit;  //�����֯ID
      FieldByName('cfsaleunitid').AsString := UserInfo.FSaleOrgID;   //������֯ID
      FieldByName('cfcreatorname').Value := '';
      FieldByName('CFInterval_ID').Value := UserInfo.FreQuency_ID;  //���ID
      FieldByName('CFISReturn').Value := 0;  //0 �������� 1�˻���
      FieldByName('CFBalanceYear').Value := UserInfo.BalanceYear;   //�½����
      FieldByName('CFBalanceMonth').Value := UserInfo.BalanceMonth; //�½��·�
      FieldByName('CFSETTLEBACKTYPEID').Value := UserInfo.CFBACKPointType;  //��������  ��������changeʱ����·���ֵ

      //20120125 �����¶�
      FieldByName('CFWEATHER').Value := UserInfo.Weather; //����
      FieldByName('CFLapseRate1').Value := UserInfo.lapseRate1; //����¶�
      FieldByName('CFLapseRate2').Value := UserInfo.lapseRate2; //����¶�
      FieldByName('CFYEAR').Value := UserInfo.YearStr; //���
    end;
  end;
  BizDateStr:=formatdatetime('yyyy-MM-dd',csMaster.fieldbyname('FBIZDATE').asdatetime);
  if UserInfo.WareHouserCustorID <> '' then
     Self.Caption := 'POS����-ҵ�����ڡ�'+BizDateStr+'���̳�������ݡ�'+csMaster.fieldbyName('CFBalanceYear').AsString+'���·ݡ�'+csMaster.fieldbyName('CFBalanceMonth').AsString+'��'
  else
     Self.Caption := 'POS����-ҵ�����ڡ�'+BizDateStr+'��';
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
  if cds_Vipcard.State in db.dsEditModes then cds_Vipcard.Post;   //��Ա��¼
  Gio.AddShow('POS����'+POSBillNumber+'��ʵ�ս�'+csMaster.FieldByName('CFPaymentMoney').AsString);
  try
    RetailList := TStringList.Create;
    //ֻ�ύ��Ϊ0��������ʽ��¼
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
//ɾ�����Ϊ0�ļ�¼�������¼
//    for i := 0 to RetailList.Count-1 do
//    begin
//      csRetailPRPRE.First;
//      if csRetailPRPRE.Locate('CFPAYMENTTYPE',RetailList.Strings[i],[]) then
//      begin
//         Gio.AddShow('POS����'+POSBillNumber+'��ɾ��Ϊ����������:'+csRetailPRPRE.fieldbyName('cfPayMentTypeName').AsString+' '+csRetailPRPRE.FieldByName('CFHAVE_PAY_MONEY').AsString);
//         csRetailPRPRE.Delete;
//      end;
//    end;
//    if csRetailPRPRE.State in db.dsEditModes then csRetailPRPRE.Post;
  finally
    RetailList.Free;
  end;
  if (csMaster.IsEmpty)  then
  begin
    ShowMsg(Handle, '�ᵥ�쳣�����ύ����,����ͷΪ�գ����˳������������½��뿪������!'+ErrMsg,[]);
    Gio.AddShow( '�ᵥ�쳣�����ύ����,����ͷ���ݼ�Ϊ��!'+ErrMsg);
    Result := False;
    Abort;
  end;
  if (csMaster.FieldByName('CFPaymentMoney').AsFloat <>0)  then     ////��ͷ�տ��Ϊ�գ���������¼û�� added  by owen
  begin
    if  (csRetailPRPREApply.RecordCount=0) or (not csRetailPRPREApply.Active) or (csRetailPRPREApply.ChangeCount=0)  or (csRetailPRPREApply.IsEmpty)
    then
    begin
      ShowMsg(Handle, '�ᵥ�쳣�����ύ����,������ʽ�տ�Ϊ�գ����˳������������½��뿪������!'+ErrMsg,[]);
      Gio.AddShow( '�ᵥ�쳣�����ύ����,������ʽ���ݼ�Ϊ��!'+ErrMsg);
      Result := False;
      Abort;
    end;
  end;
  //�����ύ�����ݼ�����
  _cds[0] := csMaster;
  _cds[1] := csDetail;
  _cds[2] := csRetailPRPREApply;
  _cds[3] := cdsScaleAssign;

  //�ύ����
  try
    if CliDM.Apply_Delta_Ex(_cds,['CT_BIL_RetailPOS','CT_BIL_RetailPOSEntry','CT_BIL_RetailPRPRE','T_POS_ScaleAssign'],ErrMsg) then
    begin
      Gio.AddShow('���ݼ���csRetailPRPREApply���ύ������'+inttostr(_cds[2].RecordCount));
      Gio.AddShow('POS����'+POSBillNumber+'���ύ�ɹ���');
    end
    else
    begin
      ShowMsg(Handle, 'POS���ύʧ��'+ErrMsg,[]);
      Gio.AddShow(ErrMsg);
      Result := False;
    end;
  except
    on E: Exception do
    begin
      ShowMsg(Handle, '�����ύʧ�ܣ�'+e.Message,[]);
      Result := False;
    end;
  end;
end;

procedure TFrmPOSEdit.edt_fAmountKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  //����ֻ������������
  if (Key<>#8) then     //BackSpace ɾ��������
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
  if GetValueFromBarCode(sStyleBarCode,dsDetail.DataSet,sBarCodeCount,OutMsg) then //��������ɹ�
  begin
    edt_sStyleBarCode.Clear;
    Set_Explain_Style;  //�򿪰���������棬���ѡ�д������޸��ۿۡ����ۺ��ۺ���
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
  InputSwitch := True;   //Ĭ�ϲ�����������ķ�ʽ
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
  //�̶��ؼ�λ�ã���Ӧ��ͬ�ֱ���
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
    ShowMsg(Handle, '����Ʒ��Ӧ��ɫ/�ڳ�/�������',[]);
    Exit;
  end;
end;

function TFrmPOSEdit.BillDetailAppend(DataSet :TDataSet; uStyle_ID,uColor_ID,uSize_ID,uPack_ID :string;sBarCodeCount : Integer;var OutMsg :string): Boolean;
var BrandPRICE,StorageQty : Double;
  CFAssistNum,ErrMsg,StyleCode : string;
begin
  Result := True;
  CFAssistNum := CliDM.GetAssistNum(uStyle_ID,uColor_ID,uSize_ID,uPack_ID); //�������Ա��  �û����۵����ɳ��ⵥ�ͼ������Ҹ���������
//20120107 �������� wushaoshu  >>>>>2013-04-09 ��־���޸ĵ��ᵥ�ټ��
//  if (sBarCodeCount>0) and (UserInfo.Is_SysOnline) and (UserInfo.IsNeisSue) then   //����˿��Ʋ�����������ʱ
//  begin
//    Gio.AddShow('��ʼ��ȡ��棡');
//    StorageQty := CliDM.Pub_POSCheckSto(uStyle_ID,uColor_ID,uSize_ID,uPack_ID,CFAssistNum,ErrMsg);
//    Gio.AddShow('��ȡ�����ɣ�');
//    if StorageQty<sBarCodeCount then
//    begin
//      StyleCode := cxStyle.Text;
//      OutMsg :=  '��Ʒ['+StyleCode+']��治������ǰ���Ϊ��'+FloatTostr(StorageQty)+'����';
//      //ShowMsg(Handle, '��Ʒ['+StyleCode+']��治������ǰ���Ϊ��'+FloatTostr(StorageQty)+'����',[]);
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
        BrandPRICE := CliDM.GetStylePrice(uStyle_ID,UserInfo.FsaleOrgID);  //��ȡ���Ƽ�
        DataSet.FieldByName('CFBrandPRICE').AsFloat := BrandPRICE;  //���Ƽ�
        DataSet.FieldByName('CFPRICE').AsFloat := CliDM.GetStyleRetailPrice(uStyle_ID,uColor_ID,uSize_id,BrandPRICE);  //��ȡ���ۼ�  ���۵������Ժ�������Ҫ�޸�

        DataSet.FieldByName('CFAGIO').AsFloat := 100;
        //�ۿ��޸ĺ���ύ���ݼ�
        if not(DataSet.State in Db.dsEditModes) then DataSet.Edit;
        DataSet.FieldByName('FVipEnabled').AsFloat := -1;               //���Ա��ϵ  ���������ͽᵥʱ�� -1 Ĭ��Ϊû�в����Ա�ۿ�
        DataSet.FieldByName('CFAssistNum').AsString := CFAssistNum;   //�������Ա���
        //DataSet.FieldByName('CFSETTLEBACKTYPEID').AsString := UserInfo.CFBACKPointType;  //Ĭ�Ϸ�������
        DataSet.FieldByName('CFSALESMANID').AsString := UserInfo.FPERSONID;  //Ĭ��ӪҵԱ
        //20120409
        DataSet.FieldByName('CFYEAR').Value := UserInfo.YearStr; //���
        DataSet.FieldByName('cfstoreunitid').AsString := Userinfo.FStoreOrgUnit;   //�����֯
        DataSet.FieldByName('cfsaleunitid').AsString := Userinfo.FSaleOrgID;  //������֯
        DataSet.FieldByName('CFWAREHOUSEID').AsString := Userinfo.Warehouse_FID;  //�ֿ�
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
      OutMsg := '������ϸʧ��:'+E.Message;
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
    ShowMsg(Handle, '������ϸ����',[]);
    Abort;
  end;
end;

//������� wushaoshu 20110511
function TFrmPOSEdit.GetValueFromBarCode(sBarCode: String;DataSet: TDataSet;sBarCodeCount : Integer;var OutMsg : String): Boolean;
var uStyle_ID,uColor_ID,uSize_id,uBei_id,CFAssistNum,cfAssistProperTyID: string;
    BrandPRICE,StorageQty : Double;
begin
  Result := CliDM.GetValueFromBarCode(sBarCode,uStyle_ID,uColor_ID,uSize_id,uBei_id,CFAssistNum,cfAssistProperTyID,OutMsg);
  if not Result then
  begin
    Gio.AddShow(OutMsg);
   // ShowMsg(Handle, OutMsg,[]);
    Exit;  //�����������������˳�
  end;

//20120107 �������� wushaoshu  >>>>>2013-04-09 ��־���޸ĵ��ᵥ�ټ��
//  if UserInfo.Is_SysOnline then
//  if (sBarCodeCount>0) and (UserInfo.IsNeisSue) then   //����˿��Ʋ�����������ʱ
//  begin
//    Gio.AddShow('��ʼ��ȡ��棡');
//    try
//      StorageQty := CliDM.Pub_POSCheckSto(uStyle_ID,uColor_ID,uSize_ID,uBei_id,CFAssistNum,OutMsg);
//    except
//      on E:Exception do
//      begin
//        Gio.AddShow('POS������['+sBarCode+']ɨ��У�������:'+e.Message+OutMsg);
//      end;
//    end;
//    Gio.AddShow('��ʼ��ȡ��������');
//    if StorageQty<sBarCodeCount then
//    begin
//      OutMsg := '��治������ǰ���Ϊ��'+FloatTostr(StorageQty)+'����';
//      Result := False;
//      exit;
//    end;
//  end;

  if (DataSet.FieldByName('cfmaterialid') = nil) or
      (DataSet.FieldByName('cfcolorid') = nil) or
      (DataSet.FieldByName('cfsizesid') = nil) or
      (DataSet.FieldByName('cfcupid') = nil) then
  begin
    OutMsg := 'ȱ��������ɫ���뱭/ͰΧ�����ֶΣ�';
    Result := False;
    Exit;
  end;
  try
    DataSet.OnCalcFields := nil;
      //DataSetEditStatus(DataSet);  //�༭ʱ����������¼�
    with DataSet do
    begin
      //�����ִ�Сд���Ҽ�¼
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
        if UserInfo.Is_SysOnline then  //����ģʽ������NewAppend�¼��г�ʼ����ֻ��ͨ����������
          SetDetailNewRecord(DataSet);
        DataSet.FieldByName('cfmaterialid').AsString := uStyle_ID;    //��ƷID
        DataSet.FieldByName('cfcolorid').AsString := uColor_ID;       //��ɫ
        DataSet.FieldByName('cfsizesid').AsString := uSize_id;        //����
        DataSet.FieldByName('cfcupid').AsString := uBei_id;           //�ڳ�
        DataSet.FieldByName('CFAssistNum').AsString := CFAssistNum;   //�������Ա���
        DataSet.FieldByName('cfAssistProperTyID').AsString := cfAssistProperTyID;  //��������ID
        DataSet.FieldByName('cfamount').AsFloat := sBarCodeCount;     //����
        DataSet.FieldByName('CFBARCODE').AsString := sBarCode;        //����
        BrandPRICE := CliDM.GetStylePrice(uStyle_ID,UserInfo.FsaleOrgID);  //��ȡ���Ƽ�
        DataSet.FieldByName('CFBrandPRICE').AsFloat := BrandPRICE;  //���Ƽ�
        DataSet.FieldByName('CFPRICE').AsFloat := CliDM.GetStyleRetailPrice(uStyle_ID,uColor_ID,uSize_id,BrandPRICE);  //��ȡ���ۼ�  ���۵������Ժ�������Ҫ�޸�

        DataSet.FieldByName('CFAGIO').AsFloat := 100;                   //�ۿ�
        DataSet.FieldByName('FVipEnabled').AsFloat := -1;               //���Ա��ϵ���ᵥʱ���ѡ�л�Ա�ۿۺ���Զ����Ϊ1
        //DataSet.FieldByName('CFSETTLEBACKTYPEID').AsString := UserInfo.CFBACKPointType;  //Ĭ�Ϸ�������
        DataSet.FieldByName('CFSALESMANID').AsString := UserInfo.FPERSONID;  //Ĭ��ӪҵԱ

        //20120409
        DataSet.FieldByName('CFYEAR').Value := UserInfo.YearStr; //���
        DataSet.FieldByName('cfstoreunitid').AsString := Userinfo.FStoreOrgUnit;   //�����֯
        DataSet.FieldByName('cfsaleunitid').AsString := Userinfo.FSaleOrgID;  //������֯
        DataSet.FieldByName('CFWAREHOUSEID').AsString := Userinfo.Warehouse_FID;  //�ֿ�
      end;
    end;
  finally
      DataSet.OnCalcFields := csDetailCalcFields;
  end;
  DataSet.Post; //���������ֶ��¼�
end;

procedure TFrmPOSEdit.csDetailCalcFields(DataSet: TDataSet);
begin
  inherited;
  with CliDM.Client_QuerySQL('Select FNumber,fname_l2 From T_BD_Material(nolock) Where FID collate Chinese_PRC_CS_AS_WS ='+QuotedStr(DataSet.fieldByName('CFMATERIALID').AsString)) do
  begin
    DataSet.FieldByName('cfMaterialNumber').AsString := FieldByName('FNumber').AsString;
    DataSet.FieldByName('cfMaterialName').AsString := FieldByName('fname_l2').AsString;
  end;
  //��ɫ����
  with CliDM.Client_QuerySQL('Select FNumber,fname_l2 From T_BD_AsstAttrValue(nolock) Where FBasicTypeID='+QuotedStr(UserInfo.AsstAttrValue_ColorID) +' and FID='+QuotedStr(DataSet.fieldByName('CFCOLORID').AsString)) do
  begin
    DataSet.FieldByName('CFCOLORName').AsString := FieldByName('fname_l2').AsString;
    DataSet.FieldByName('CFColorCode').AsString := FieldByName('FNumber').AsString;  //��־�� 2012-09-01
  end;
  //�ڳ�
  if QuotedStr(DataSet.fieldByName('CFCUPID').AsString) <> '' then
  begin
    with CliDM.Client_QuerySQL('Select FNumber,fname_l2 From T_BD_AsstAttrValue(nolock) Where FBasicTypeID='+QuotedStr(UserInfo.AsstAttrValue_BeiID)+' and FID='+QuotedStr(DataSet.fieldByName('CFCUPID').AsString)) do
    begin
      DataSet.FieldByName('CFCUPName').AsString := FieldByName('fname_l2').AsString;
    end;
  end;

  //����
  with CliDM.Client_QuerySQL('Select FNumber,fname_l2 From T_BD_AsstAttrValue(nolock) Where FBasicTypeID='+QuotedStr(UserInfo.AsstAttrValue_SizeID)+' and FID='+QuotedStr(DataSet.fieldByName('CFSIZESID').AsString)) do
  begin
    DataSet.FieldByName('CFSIZEName').AsString := FieldByName('fname_l2').AsString;
  end;

  //ӪҵԱ

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
    csDetailCFAGIO_PRICE.OnChange := nil; //���ص����ۿۼ�change�¼���������ѭ��
    csDetailCFAGIO_SUM_PRICE.OnChange := nil; 
    Agio := Sender.AsFloat;

    CFAGIO_PRICE := Sender.AsFloat * Sender.DataSet.FieldByName('CFPRICE').AsFloat/100;   //�ۿۺ�۸�

    if UserInfo.RoundBillType=1 then //��Ʒ����λ�ô���С��λ
      CFAGIO_PRICE := CliDM.SimpleRoundTo(CFAGIO_PRICE);

    CFAGIO_SUM_PRICE := cfAgio_PRICE * Sender.DataSet.FieldByName('CFAMOUNT').AsFloat; //�ۿۺ���
    if UserInfo.RoundBillType=2 then //��Ʒ���λ�ô���С��λ
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
    if UserInfo.RoundBillType=1 then //��Ʒ����λ�ô���С��λ
       Sender.AsFloat := CliDM.SimpleRoundTo(Sender.AsFloat);
  finally
    Sender.OnChange := csDetailCFAGIO_PRICEChange;
  end;
  
  try
    csDetailCFAGIO.OnChange := nil;  //���ص����ۿ�change�¼���������ѭ��
    csDetailCFAGIO_SUM_PRICE.OnChange := nil;
    //WriteTxt('csDetailCFAGIO_PRICEChange CFAGIO_PRICE='+FloatToStr(Sender.AsFloat)+' CFPRICE='+FloatToStr(Sender.DataSet.FieldByName('CFPRICE').AsFloat));
    if Sender.DataSet.FieldByName('CFPRICE').AsFloat =0 then
      Sender.DataSet.FieldByName('CFAGIO').AsFloat := 0
    else
      Sender.DataSet.FieldByName('CFAGIO').AsFloat := Sender.AsFloat / Sender.DataSet.FieldByName('CFPRICE').AsFloat*100; //�ۿ�
    CFAGIO_SUM_PRICE := Sender.AsFloat * Sender.DataSet.FieldByName('CFAMOUNT').AsFloat;

    if UserInfo.RoundBillType=2 then //��Ʒ���λ�ô���С��λ
      CFAGIO_SUM_PRICE := CliDM.SimpleRoundTo(CFAGIO_SUM_PRICE);
    Sender.DataSet.FieldByName('CFAGIO_SUM_PRICE').AsFloat := CFAGIO_SUM_PRICE; //�ۿۺ���
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
  LoadShopRreceiveType;  //����������ʽ
  if Userinfo.Cash_FID='' then
  begin
    ShowError(Handle, '����ȱ�١��ֽ��տʽ���뵽���������ϡ�ִ�С��������ݡ������µ�¼ϵͳ��!',[]);
    Abort;
  end;

  if dsMaster.DataSet.State in db.dsEditModes then
     dsMaster.DataSet.Post;

  if dsDetail.DataSet.State in db.dsEditModes then
    dsDetail.DataSet.Post;
  GetEditStatus; //����Ƿ�����ᵥ���߹ҵ�
  if cxDetail.DataController.DataSource.DataSet.IsEmpty then
  begin
    ShowMsg(Handle, 'û�����ۼ�¼!���ܽᵥ',[]);
    edt_sStyleBarCode.SetFocus;
    abort;
  end;
  //�ֹ���������ͬʱ����������
  if not checkListData(OutMsg) then
  begin
    ShowMsg(Handle,OutMsg,[]);
    Abort;
  end;
  //��鸺������
  if not checkstockQty(OutMsg)   then
  begin
    ShowMsg(Handle,OutMsg,[]);
    Abort;
  end;
  //�ս���첻�����ٽᵥ
  FBIZDATE := FormatDateTime('yyyy-mm-dd', dsMaster.DataSet.FieldByName('FBIZDATE').AsDateTime);
  if UserInfo.PeriBeginDate <> '' then
  if FBIZDATE<UserInfo.PeriBeginDate then
  begin
    ShowMsg(Handle,'ҵ�����ڲ���С�ڵ�ǰ����ڼ俪ʼ���ڡ�'+UserInfo.PeriBeginDate+'��,�밴CTRL+B�޸�ҵ�����ڣ�',[]);
    abort;
  end;
  if UserInfo.IniStoDate<>'' then
  if FBIZDATE<UserInfo.IniStoDate then
  begin
    ShowMsg(Handle,'ҵ�����ڲ���С�ڿ���ʼ�����ڡ�'+UserInfo.IniStoDate+'��,�밴CTRL+B�޸�ҵ�����ڣ�',[]);
    abort;
  end;

  try
    //�򿪽ᵥ���� begin
    if UserInfo.Is_SysOnline then
    begin
      CliDM.Chk_UserRight(UserInfo.RetailPOSID,'posF2'); //���Ȩ��
      if CliDM.CHKPeriodClose(FormatDateTime('yyyy-mm-dd',csMaster.FieldByName('fbizdate').AsDateTime) )then
      begin
        ShowMsg(Handle, 'ҵ�����ڡ�'+FormatDateTime('yyyy-mm-dd',csMaster.FieldByName('fbizdate').AsDateTime)+'�����ڵĻ���ڼ��Ѿ�����,���޸�ҵ������',[]);
        Abort;
      end;
      /////owen�ж��Ƿ����
      if CliDM.CHKPeriodCHKOUT(FormatDateTime('yyyy-mm-dd',csMaster.FieldByName('fbizdate').AsDateTime))then
      begin
        ShowMsg(Handle, 'ҵ�����ڡ�'+FormatDateTime('yyyy-mm-dd',csMaster.FieldByName('fbizdate').AsDateTime)+'�����ڵĻ���ڼ��Ѿ�����,���޸�ҵ������',[]);
        Abort;
      end;
      //
      if FBIZDATE <> FormatDateTime('yyyy-mm-dd',CliDM.Get_ServerTime) then   ///ҵ�����ڲ����ڵ�ǰϵͳ���ڼ��ҵ�������Ƿ��ս�owen
      begin
        try
          strsql := 'select 1 from T_POS_DayBalance where FWarehouseID ='+quotedstr(UserInfo.Warehouse_FID)+' and to_char(Begindate,''yyyy-mm-dd'')='+quotedstr(FBIZDATE);
          CliDM.Get_OpenSQL(clidm.cdsTemp,strsql,ErrMsg);
        except
          on e : Exception do
          begin
            ShowMsg(Handle, '��鵱ǰҵ�������Ƿ��ս����:'+E.Message,[]);
          end;
        end;
        if clidm.cdsTemp.RecordCount>0 then
        begin
          ShowMsg(Handle, FBIZDATE+'�Ѿ��ս�������޸�ҵ�����ڡ�CTRL+B����',[]);
          abort;
        end;
      end
      else
      begin
        if FormatDateTime('yyyy-mm-dd',UserInfo.DayEndDay)<>'1899-12-30' then
        if StrToDate(FBIZDATE) <= UserInfo.DayEndDay then
        begin
          ShowMsg(Handle, FBIZDATE+'�Ѿ��ս�������޸�ҵ�����ڡ�CTRL+B����',[]);
          abort;
        end;
      end;
      Delete_Entry_Temp;  //ɾ����ʱ����
      Insert_Entry_Temp;  //��¼��ʱ���ݣ���¼���ݿ����Ϣ�Լ�����ϸ���У��������������е���ϴ���
      {
      if dsMaster.DataSet.FieldByName('CFISReturn').AsInteger = 0 then  //�˻��������ҵ�Դ��   0 �������� 1�˻�
      if ReturnCount>0 then
      begin
        ShowMsg(Handle, '�˻�������ͨ����ݼ���CTRL+D���ҵ�Դ�����ٽᵥ��',[]);
        abort;
      end;
      }
      
      //if ReturnCount>0 then CliDM.Chk_UserRight(UserInfo.RetailPOSID,'posCTRL_C'); //����˻�Ȩ��
      {if (SalesCount>0) and (ReturnCount>0) then
      begin
        ShowMsg(Handle, '�˻���Ʒ�������¿�һ�ŵ��ݣ�',[]);
        abort;
      end;
      }
      //�˻�����������������   CFISReturn=1 �˻�
      if dsMaster.DataSet.FieldByName('CFISReturn').AsInteger = 0 then Set_Explain_Bill;   //ѡ����������
      //// �ж��ۿ��Ƿ�С��ӪҵԱ����ۿ�owen
      if dsMaster.DataSet.FieldByName('CFISReturn').AsInteger = 0 then
      if UserInfo.Cflowestdiscrate>0 then
      begin
        dsDetail.DataSet.First;
        while not dsDetail.DataSet.Eof do
        begin
          if dsDetail.DataSet.FieldByName('CFAGIO').AsInteger< UserInfo.Cflowestdiscrate then
          begin
            ShowError(Handle, '���۵���¼�ۿ۲�С��ӪҵԱ����ۿۡ�'+Inttostr(UserInfo.Cflowestdiscrate)+'��!',[]);
            Abort;
          end;
          dsDetail.DataSet.Next;
        end;
      end;
      ////////////
      if UserInfo.Delete_POS_Temp then Delete_Entry_Temp;  //ɾ����ʱ����
      if ShowSLPFrm(POSBillIDValue,FDISCOUNTRATE,csMaster,csDetail,csRetailPRPRE) then
      begin
        if not (dsMaster.DataSet.State in db.dsEditModes) then dsMaster.DataSet.Edit;
        dsMaster.DataSet.FieldByName('iStatus').Value := 2;  //����״̬
        dsMaster.DataSet.FieldByName('CFSTATE').Value := 2;  //����״̬  EAS����ʵ���ã���ʱ������Ʒ������ʱ������Ч���۵���

        dsMaster.DataSet.FieldByName('FAUDITORID').Value := UserInfo.LoginUser_FID;  //�����
        dsMaster.DataSet.FieldByName('FLASTUPDATEUSERID').Value := UserInfo.LoginUser_FID;  //�����
        dsMaster.DataSet.FieldByName('FLASTUPDATETIME').AsDateTime := CliDM.Get_ServerTime;  //���ʱ��
        if (SalesCount=0) and (ReturnCount>0) then //���ȫ�����˻���������ô���ݱ��Ϊ�˻���
          dsMaster.DataSet.FieldByName('CFISReturn').Value := 1;  //�˻���

        CFVIPCardNumber := csMaster.FieldByName('CFVIPCardNumber').AsString;
        if CFVIPCardNumber<> '' then   //�ǻ�Ա��������
        begin
          try
            
            CFPaymentMoney := csMaster.fieldByName('CFPaymentMoney').AsFloat;   //��ȡ�����տ���
            FbonusRate := csMaster.fieldByName('CFbonusRate').AsFloat;      //���ֻ�����
            if FbonusRate<> 0 then //����ֻ����ʲ��������
               Integral := CFPaymentMoney/FbonusRate;
            if IsdepCopros then  //����ͻ�Ա���ֶһ�owen
               Integral := depCopros*(-1) ;
            if  IsdepCopros then  //����ͻ�Ա���ֶһ��˵����ۻ���owen
            if dsMaster.DataSet.FieldByName('CFISReturn').Value=1 then
              Integral := depCopros;
              //Integral := CalcIntegral(POSBillIDValue,CFVIPCardNumber,CFPaymentMoney,FbonusRate); //�����������߽�������֣��ڱ������ݿ����
            dsMaster.DataSet.FieldByName('CFIntegral').Value := Integral;  //��ͷ��¼����
            //��Ա����¼�������ӱ�������
            {cds_Vipcard.Edit;
            cds_Vipcard.FieldByName('FLastConsumeDate').AsDateTime := CliDM.Get_ServerTime; //���һ����������
            cds_Vipcard.FieldByName('FCumulateConsumeAmout').Value := cds_Vipcard.FieldByName('FCumulateConsumeAmout').Value+CFPaymentMoney;  //�ۼ����ѽ��
            cds_Vipcard.FieldByName('FCurrentBonus').Value := cds_Vipcard.FieldByName('FCurrentBonus').Value+Integral; //��ǰ����
            cds_Vipcard.FieldByName('FCumulateBonus').Value := cds_Vipcard.FieldByName('FCumulateBonus').Value+Integral;  //�ۼƻ���
            }
          except
            on E:Exception do       //�쳣֮�󵥾ݸ�Ϊ�µ������ύ
            begin
              ShowError(Handle, e.Message,[]);
              dsMaster.Edit;
              dsMaster.DataSet.FieldByName('iStatus').Value := 0;
              dsMaster.DataSet.FieldByName('CFSTATE').Value := 0;
              Abort;
            end;
          end;
        end;

        ScaleAssign;  //�Զ�����������

        if ST_Save then //�����ύ ErrMsg
        begin
          //���·�������Ա�����ֺ���ˮ��¼
           if CFVIPCardNumber<> '' then
           if not CliDM.Pub_UpCardIntegral(CFVIPCardNumber,POSBillIDValue,CFPaymentMoney,Integral,VipAmt,ErrMsg) then
           begin
             dsMaster.Edit;
             dsMaster.DataSet.FieldByName('iStatus').Value := 0;
             ShowMsg(Handle, ErrMsg,[]);
             Abort;
           end;
           //��ӡСƱ
           if UserInfo.F2Print then
           begin
             if not RM_PrintRpt(Self, UserInfo.ExePath + '\Report\���۵�\�ᵥСƱ_����.rmf',False,True,RM_PName) then
             ShowError(Handle, '���۵�['+POSBillNumber+']��ӡ����',[]);

           end;
           depCopros := 0;
           Cfexchange := 0;
           fcurrentbonus := 0;
           IsdepCopros := False;
           txt_vip.Text     :=  '';
           txt_vipInfo.Text := '';
           srcBillFID :=   Trim(csMaster.fieldbyname('FSOURCEBILLID').AsString);
           //�ᵥ�ɹ����ѹҵ�״̬�޸�Ϊ-2
           if (srcBillFID<>'') then
           begin
             CliDM.Get_ExecSQL('update ct_bil_retailpos a set a.istatus=-2,a.cfstate=-2 where  a.fid ='+QuotedStr(srcBillFID)+' and  a.istatus=-1',ErrMsg)
           end;
           //20110123 ����ɹ���Ŵ�ӡСƱ  ��Ϊ���ŵ귴ӳСƱ�г�������ȴû�б��������
        end
        else
        begin
          ShowError(Handle, '���۵�['+POSBillNumber+']�ύʧ�ܣ����������Ƿ��������Ժ����½ᵥ��',[]);

          dsMaster.Edit;
          dsMaster.DataSet.FieldByName('iStatus').Value := 0;
          Abort;
        end;

        //��Ǯ��
        if UserInfo.F2OpenMoneyBox then openMoneyBox(Comm1);
        EditBill('');   //��һ���µ�
        SetEditStatus;  //���ÿؼ��Ƿ�����༭
      end;
    end
    else
    begin
        SalesCount :=0;   //������������
        ReturnCount:=0;   //�˻�����
        with dsDetail.DataSet do
        begin
          try
          DisableControls;
          OnCalcFields := nil;
          First;
          while not Eof do
          begin
            CFAMOUNT := FieldByName('CFAMOUNT').AsFloat;            //����
            if CFAMOUNT>0 then //������������
            SalesCount :=SalesCount+1
            else //�˻�����
            ReturnCount:=ReturnCount+1;
            Next;
          end;
          finally
            OnCalcFields := csDetailCalcFields;
            EnableControls;
          end;
        end;
        if ReturnCount>0 then CliDM.Chk_UserRight(UserInfo.RetailPOSID,'posCTRL_C'); //����˻�Ȩ��
        if (SalesCount>0) and (ReturnCount>0) then
        begin
          ShowMsg(Handle, '�˻���Ʒ�������¿�һ�ŵ��ݣ�',[]);
          abort;
        end;
      Delete_Entry_Temp;  //ɾ����ʱ����
      Insert_Entry_Temp;  //��¼��ʱ���ݣ���¼���ݿ����Ϣ�Լ�����ϸ���У��������������е���ϴ���
      if dsMaster.DataSet.FieldByName('CFISReturn').AsInteger = 0 then Set_Explain_Bill;   //ѡ����������      //// �ж��ۿ��Ƿ�С��ӪҵԱ����ۿ�owen

            //// �ж��ۿ��Ƿ�С��ӪҵԱ����ۿ�owen
      if ReturnCount=0then
      if UserInfo.Cflowestdiscrate>0 then
      begin
        dsDetail.DataSet.First;
        while not dsDetail.DataSet.Eof do
        begin
          if dsDetail.DataSet.FieldByName('CFAGIO').AsInteger< UserInfo.Cflowestdiscrate then
          begin
            ShowError(Handle, '���۵���¼�ۿ۲�С��ӪҵԱ����ۿۡ�'+Inttostr(UserInfo.Cflowestdiscrate)+'��!',[]);
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
        dsMaster.DataSet.FieldByName('CFSTATE').Value := 2;  //����״̬  EAS����ʵ����
        dsMaster.DataSet.FieldByName('FAUDITORID').Value := UserInfo.LoginUser_FID;  //�����
        if (SalesCount=0) and (ReturnCount>0) then //���ȫ�����˻���������ô���ݱ��Ϊ�˻���
        dsMaster.DataSet.FieldByName('CFISReturn').Value := 1;  //�˻���

        ScaleAssign;  //�Զ����������� 20120223
        if not ST_Save_NoLine then  //���߱��浽���ݿ�
        begin
          dsMaster.DataSet.FieldByName('iStatus').Value := 0;
          Abort;
        end;
        srcBillFID :=   Trim(csMaster.fieldbyname('FSOURCEBILLID').AsString);
        //�ᵥ�ɹ����ѹҵ�״̬�޸�Ϊ-2
        if (srcBillFID<>'') then
        begin
          CliDM.Client_ExecSQL('update ct_bil_retailpos  set istatus=-2,cfstate=-2 where  fid ='+QuotedStr(srcBillFID)+' and  istatus=-1')
        end;
        //��ӡСƱ
        if UserInfo.F2Print then RM_PrintRpt(Self, UserInfo.ExePath + '\Report\���۵�\�ᵥСƱ_����.rmf',False,True,RM_PName); //��ӡСƱ
        //��Ǯ��
        if UserInfo.F2OpenMoneyBox then openMoneyBox(Comm1);
        EditBillI_NoOnline('');  //����һ������POS��
        SetEditStatus; //���ÿؼ��Ƿ�����༭
      end;
     depCopros := 0;
     Cfexchange := 0;
     fcurrentbonus := 0;
     IsdepCopros := False;
    end;
    ///////////////owen

    if  CliDM.qryInsertCashlist.Active then
      CliDM.qryInsertCashlist.UpdateBatch();//�ύǮ���ֽ�̨��owen
    //ɾ���������� ��־��
    DelTempFile;
    //////////////////////////////////
    //�򿪽ᵥ���� end
  finally
    if UserInfo.Delete_POS_Temp then Delete_Entry_Temp;  //ɾ����ʱ����
    edt_sStyleBarCode.SetFocus;
  end;
end;

procedure TFrmPOSEdit.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var toFileName : string;
begin
 // inherited;  //Windows��Ԫ��ȡֵ
  if (Key = VK_F1)  then
  begin
    toFileName:=ExtractFilePath(Application.ExeName)+'help.chm';
    if not FileExists(toFileName)  then
    begin
      ShowMsg(Handle, 'û���ҵ������ļ�(help.chm)!',[]);
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
  
  if (shift = [ssCtrl]) and (key = 65) then  //crtl+A �������
    act_CtrlA.Execute;
  if (shift = [ssCtrl]) and (key = 66) then  //crtl+B �޸�ҵ��ʱ��
    act_CtrlB.Execute;
  if (shift = [ssCtrl]) and (key = 68) then  //crtl+D �˻�
    act_CtrlD.Execute;
  if (shift = [ssCtrl]) and (key = 69) then  //crtl+E �˶���
    act_CtrlE.Execute;
  if (shift = [ssCtrl]) and (key = 70) then  //crtl+F �˶���  �ҵ�ֱ�ӽᵥ
    act_CtrlF.Execute;
  if (shift = [ssCtrl]) and (key = 71) then  //crtl+G �޸��̳�������Ϣ
    act_CrtlG.Execute;
  if (shift = [ssCtrl]) and (key = 72) then  //crtl+H ��������
    act_CtrlH.Execute;
  if (shift = [ssCtrl]) and (key = 80) then  //crtl+P �ش�СƱ
    actPrintRepeat.Execute;
  if (shift = [ssCtrl]) and (key = 83) then  //crtl+S �޸�����
    act_CtrlS.Execute;
  if (shift = [ssCtrl]) and (key = 90) then  //crtl+Z ��Ʒ�۸�����
    act_CtrlZ.Execute;


  if (shift = [ssCtrl]) and (key = 49) then  //crtl+1 ɾ����ǰ��Ʒ
    act_DeleteDetail.Execute;
  if (shift = [ssCtrl]) and (key = 50) then  //crtl+2 ɾ��������Ʒ
    actDelAll.Execute;
  if (shift = [ssCtrl]) and (key = 51) then  //crtl+3 ��λ������
    edt_sStyleBarCode.SetFocus;
  if (shift = [ssCtrl]) and (key = 52) then  //CTRL+4 �鿴Դ��������ʽ...
    item_PalyView.OnClick(nil);
    //////////owen 2012-05-02

  if (Shift =[ssctrl])  and (Key=73 ) then
    act_CtrlI.Execute;           //CTrl+I�ϰ�Ǽ�
  if (Shift =[ssctrl])  and (Key=74 ) then
    act_CtrlJ.Execute;           //CTrl+J���ֽ�
  if (Shift =[ssctrl])  and (Key=75 ) then
    act_CtrlK.Execute;           //CTrl+Kȡ�ֽ�
  if (Shift =[ssctrl])  and (Key=78 ) then
    act_CtrlN.Execute;           //CTrl+K�ֽ�̨��
  if (Shift =[ssctrl] ) and (Key=76 ) then
    act_CtrlL.Execute;           //CTrl+L �°����

  //�л�������  ��־��
  if (Shift =[ssctrl] ) and (Key=82 ) then
  act_CtrlR.Execute;           //CTrl+R �л�������

  //��ѯ����  ��־��
  if (Shift =[ssctrl] ) and (Key=77 ) then
  act_CtrlM.Execute;           //CTrl+M ��ѯ����
  //��ѯ��Ա  ��־��
  if (Shift =[ssctrl] ) and (Key=81 ) then
  act_CtrlQ.Execute;           //CTrl+Q ��ѯ��Ա
  if (shift = [ssCtrl]) and (key = 84) then  //crtl+T��ջ�Ա��Ϣowen
    act_CtrlT.Execute;
  //��־�� ��������
  if (shift = [ssCtrl]) and (key = 87) then  //��������
  act_CtrlW.Execute;
  //����
  if (shift = [ssCtrl]) and (key = 89) then
  act_CtrlY.Execute;

  if (key = 45 ) then
  act_F7.Execute;

end;

procedure TFrmPOSEdit.act_F4Execute(Sender: TObject);
begin
  inherited;
  GetEditStatus;  //�������µ�״̬����ѡ��
  if not dsDetail.DataSet.IsEmpty then
  begin
    ShowMsg(Handle, '������һ��POS��������ѡ��������',[]);
    abort;
  end;
  if UserInfo.Is_SysOnline then
  begin
     CliDM.Chk_UserRight(UserInfo.RetailPOSID,'posF4'); //���Ȩ��
    GetHangBillID(POSBillIDValue,POSBillNumber,csMaster,csDetail,csRetailPRPRE) //��ѡ�����棬�ӷ�������ȡ�ҵ���¼
  end
  else
    GetHangBillID(POSBillIDValue,POSBillNumber,QryMater,QryDetail,qryPrepre) //��ѡ�����棬�ӱ��ػ�ȡ�ҵ���¼
end;

procedure TFrmPOSEdit.act_F5Execute(Sender: TObject);
begin
  inherited;
  GetEditStatus;
  if cxDetail.DataController.DataSource.DataSet.IsEmpty then
  begin
    ShowMsg(Handle, 'û�����ۼ�¼!',[]);
    abort;
  end;
  SetBillSalesMan(cxDetail.DataController.DataSource.DataSet);  //�����ۻ�Ա
end;

procedure TFrmPOSEdit.FormShow(Sender: TObject);
begin
  inherited;
  edt_sStyleBarCode.SetFocus;  //ѡ������
  lbWareHouse.Caption := '����:'+UserInfo.Warehouse_NumberName;   //����
  lbFreQuency.Caption := UserInfo.FreQuency_Name;   //���

  SetEditStatus; //���ÿؼ��Ƿ�����༭
  //cxDetail.OptionsView.HeaderHeight:=26;
  //����������ʽ
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
    if UserInfo.Is_SysOnline then CliDM.Chk_UserRight(UserInfo.RetailPOSID,'posF9_1');  //�޸ĵ��۽��Ȩ��

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
    ShowMsg(Handle, 'ֻ������״̬�²���ʹ�ñ����ܣ�',[]);
    abort;
  end;
   CliDM.Chk_UserRight(UserInfo.RetailPOSID,'posF6'); //���Ȩ��

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
  
  ShowstorageQry(UserInfo.Warehouse_FID,CFMATERIALID,MaterNumber,MaterName); //��ѯ���
end;

procedure TFrmPOSEdit.act_F3Execute(Sender: TObject);
var EarnestMoney : Double;
    GDBillNo,sqlstr : string;
begin
  inherited;
  if dsDetail.DataSet.State in db.dsEditModes then dsDetail.DataSet.Post;
  if UserInfo.Is_SysOnline then CliDM.Chk_UserRight(UserInfo.RetailPOSID,'posF3'); //���Ȩ��
  GetEditStatus;  //����Ƿ�����ҵ�
  LoadShopRreceiveType;  //����������ʽ
  
  //�ҵ�״̬
  if UserInfo.Earnest_FID='' then
  begin
    ShowError(Handle, '����ȱ�١������տʽ����Ӱ��POS�ҵ��ͽᵥ���뵽���������ϡ�ִ�С��������ݡ������µ�¼ϵͳ�ҵ���!',[]);
    Abort;
  end;
  //�����ѡ����ĵ����ٹҵ���Ӧ�ô����ϴεĹҵ����
  if dsRetailPRPRE.DataSet.Locate('CFPAYMENTTYPE',UserInfo.Earnest_FID,[]) then
      EarnestMoney := csRetailPRPRE.FieldByName('CFHAVE_PAY_MONEY').AsFloat;

  //��¼����
  if ShowEarnestMoney(EarnestMoney,GDBillNo) then
  begin
    if UserInfo.Is_SysOnline then
    begin
      DataSetEditStatus(csMaster);
      DataSetEditStatus(csRetailPRPRE);
      if csMaster.FieldByName('iStatus') <> nil then
         csMaster.FieldByName('iStatus').Value := -1;
         
      if GDBillNo<>'' then  //�ҵ�����
      if dsMaster.DataSet.FieldByName('CFGDBILLNo') <> nil then
         dsMaster.DataSet.FieldByName('CFGDBILLNo').Value := GDBillNo;

     { if dsMaster.DataSet.FieldByName('CFVIPCardNumber').AsString <> '' then  //�ҵ�ʱ��ջ�Ա
         dsMaster.DataSet.FieldByName('CFVIPCardNumber').AsString := ''; }  //owen�ҵ��������Ա�����Ҫ���ѡ�����ݼ����

       dsMaster.DataSet.FieldByName('FLASTUPDATEUSERID').Value := UserInfo.LoginUser_FID;  //�����
       dsMaster.DataSet.FieldByName('FLASTUPDATETIME').AsDateTime := CliDM.Get_ServerTime;  //���ʱ��

      //��¼����
      if not csRetailPRPRE.Locate('CFPAYMENTTYPE',UserInfo.Earnest_FID,[]) then
      begin
        DataSetEditStatus(csRetailPRPRE);
        csRetailPRPRE.Append;  
        csRetailPRPRE.FieldByName('FID').value := CliDM.GetEASSID(UserInfo.RetailPOSReceiverEntryID);
        csRetailPRPRE.FieldByName('FSEQ').AsFloat  := csRetailPRPRE.RecordCount+1;
        csRetailPRPRE.FieldByName('CFPAYMENTTYPE').AsString := UserInfo.Earnest_FID;
        csRetailPRPRE.FieldByName('FPARENTID').AsString := POSBillIDValue;  //����ID
        csRetailPRPRE.FieldByName('CFHAVE_PAY_MONEY').AsFloat := EarnestMoney;  //����ID
      end
      else //����Ǵ�ѡ�������ĵ����ٹҵ�����Ҫ���޸Ĺҵ����
      begin
        DataSetEditStatus(csRetailPRPRE);
        csRetailPRPRE.FieldByName('CFHAVE_PAY_MONEY').AsFloat := EarnestMoney;  //����ID
      end;
      ST_Save;  //�ύ��������
      //��ӡ�ҵ�СƱ
      if FileExists(UserInfo.ExePath + '\Report\���۵�\�ҵ�СƱ_����.rmf') then
         RM_PrintRpt(self, UserInfo.ExePath + '\Report\���۵�\�ҵ�СƱ_����.rmf',False,True,RM_PName)
      else
         ShowMsg(Handle,'û���ҵ��ҵ���ӡģ��',[]);
      EditBill('');//��һ���µ�
    end
    else //����
    begin
      DataSetEditStatus(QryMater);
      if QryMater.FieldByName('iStatus') <> nil then
        QryMater.FieldByName('iStatus').Value := -1;

      if GDBillNo<>'' then  //�ҵ�����
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
      ST_Save_NoLine;  //���߱��浽���ݿ�
      //��ӡ�ҵ�СƱ
      if FileExists(UserInfo.ExePath + '\Report\���۵�\�ҵ�СƱ_����.rmf') then
        RM_PrintRpt(self, UserInfo.ExePath + '\Report\���۵�\�ҵ�СƱ_����.rmf',False,True,RM_PName)
      else
        ShowMsg(Handle,'û���ҵ��ҵ���ӡģ��',[]);
      EditBillI_NoOnline('');  //�¿�һ�ŵ���
    end;
    edt_sStyleBarCode.SetFocus;
  end;
end;

procedure TFrmPOSEdit.act_F8Execute(Sender: TObject);
begin
  inherited;
  if UserInfo.Is_SysOnline then
   CliDM.Chk_UserRight(UserInfo.RetailPOSID,'posF8'); //���Ȩ��
  openMoneyBox(Comm1);
end;

procedure TFrmPOSEdit.act_F11Execute(Sender: TObject);
begin
  inherited;
  if not UserInfo.Is_SysOnline then
  begin
    ShowMsg(Handle, 'ֻ������״̬�²���ʹ�ñ����ܣ�',[]);
    abort;
  end;
  depCopros := 0;
  Cfexchange := 0;
  fcurrentbonus := 0;
  IsdepCopros := False;
  GetEditStatus; //�Ѿ��ᵥ�ĵ��ݲ��������
  if csMaster.FieldByName('CFVIPCardNumber').AsString <> '' then  //����Ƿ�¼�����Ա
  begin
    ShowMsg(Handle, '��ǰ�����Ѿ�¼���Ա����'+csMaster.FieldByName('CFVIPCardNumber').AsString+'��',[]);
    abort;
  end;
  if not dsDetail.DataSet.IsEmpty then //����Ʒ������¼��
  begin
    ShowMsg(Handle, '������¼��Ա��¼��Ʒ��',[]);
    abort;
  end;
  VIPCardInput(csMaster,FbonusRate,FDISCOUNTRATE,FDOUBLEDISCOUNTRATE,FLOWERLIMITDISCOUNTRATE,strVIPInfo,strVIPBonus);  //�����Ա
  txt_vip.Text     :=  strVIPInfo;
  txt_vipInfo.Text := strVIPBonus;
end;

procedure TFrmPOSEdit.act_F10Execute(Sender: TObject);
begin
  inherited;
  if not UserInfo.Is_SysOnline then
  begin
    ShowMsg(Handle, 'ֻ������״̬�²���ʹ�ñ����ܣ�',[]);
    abort;
  end;

  if dsMaster.DataSet.FieldByName('ISTATUS').AsInteger = 0 then
  if not dsDetail.DataSet.IsEmpty then
  begin
    ShowMsg(Handle, '�봦��ǰ���ݺ������սᣡ',[]);
    abort;
  end;

  ShowDayBalance; //�ս�
end;

procedure TFrmPOSEdit.act_F12Execute(Sender: TObject);
begin
  inherited;
  LockSys;   //����ϵͳ
end;

procedure TFrmPOSEdit.csDetailCFAMOUNTChange(Sender: TField);
var AmountSum : double;
begin
  inherited;
  try
    Sender.DataSet.FieldByName('CFAGIO_SUM_PRICE').OnChange := nil;
    Sender.DataSet.FieldByName('CFAGIO_SUM_PRICE').AsFloat := Sender.AsFloat * Sender.DataSet.FieldByName('CFAGIO_PRICE').AsFloat; //�ۿۺ���
  finally
    Sender.DataSet.FieldByName('CFAGIO_SUM_PRICE').OnChange := csDetailCFAGIO_SUM_PRICEChange;
    //csDetailCFAGIO.OnChange := csDetailCFAGIOChange;
  end;

   //�����޸ĺϼ������ͺϼƽ��
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
    if BillIDValue='' then  //��������
    begin
      DetailFSEQ := 1;
      PrepreFSEQ := 1;
      FbonusRate := 0;  //�������Ӧ���ֱ��ʣ�Ԫ��  ����
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
    begin //�����е���

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
      ShowError(Handle, '�����۵�����'+e.Message,[]);
    end;
  end;

  BizDateStr:=formatdatetime('yyyy-MM-dd',QryMater.fieldbyname('FBIZDATE').asdatetime);
  if UserInfo.WareHouserCustorID <> '' then
   Self.Caption := 'POS����-ҵ�����ڡ�'+BizDateStr+'���̳�������ݡ�'+QryMater.fieldbyName('CFBalanceYear').AsString+'���·ݡ�'+QryMater.fieldbyName('CFBalanceMonth').AsString+'��'
  else
   Self.Caption := 'POS����-ҵ�����ڡ�'+BizDateStr+'��';


end;


procedure TFrmPOSEdit.QryMaterNewRecord(DataSet: TDataSet);
var  cfBillTypeID : string;
begin
  inherited;
  POSBillIDValue := CliDM.GetEASSID(UserInfo.RetailPOSID);
  POSBillNumber := Clidm.GetBillNo('P',UserInfo.WareHouser_Sign,UserInfo.MachineCode); //���ݱ��
  CliDM.qryPosRetailEx.First;
  cfBillTypeID := CliDM.qryPosRetailEx.fieldByName('FID').AsString; //��ȡ��������
  with DataSet do
  begin
    FieldByName('iStatus').AsInteger := 0;     
    FieldByName('FID').Value := POSBillIDValue;          //����ID
    FieldByName('FNUMBER').Value := POSBillNumber;    //���ݱ��
    FieldByName('cfBillType').Value := cfBillTypeID;  //��������
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
    FieldByName('cfstoreunitid').Value := UserInfo.FStoreOrgUnit;  //�����֯ID
    FieldByName('cfsaleunitid').Value := UserInfo.FSaleOrgID;   //������֯ID
    FieldByName('cfcreatorname').Value := '';
    FieldByName('CFInterval_ID').Value := UserInfo.FreQuency_ID;  //���ID
    FieldByName('CFISReturn').Value := 0;  //0 �������� 1�˻���
    FieldByName('CFBalanceYear').Value := UserInfo.BalanceYear;   //�½����
    FieldByName('CFBalanceMonth').Value := UserInfo.BalanceMonth; //�½��·�
    FieldByName('CFSETTLEBACKTYPEID').Value := UserInfo.CFBACKPointType;  //��������
    //20120125 �����¶�
    FieldByName('CFWEATHER').Value := UserInfo.Weather; //����
    FieldByName('CFLapseRate1').Value := UserInfo.lapseRate1; //����¶�
    FieldByName('CFLapseRate2').Value := UserInfo.lapseRate2; //����¶�
    //20120409
    FieldByName('CFYEAR').Value := UserInfo.YearStr; //���
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
  DataSet.FieldByName('CFYEAR').Value := UserInfo.YearStr; //���
  DataSet.FieldByName('cfstoreunitid').AsString := Userinfo.FStoreOrgUnit;   //�����֯
  DataSet.FieldByName('cfsaleunitid').AsString := Userinfo.FSaleOrgID;  //������֯
  DataSet.FieldByName('CFWAREHOUSEID').AsString := Userinfo.Warehouse_FID;  //�ֿ�
  
  //DataSet.FieldByName('CFSETTLEBACKTYPEID').AsString := UserInfo.CFBACKPointType;  //Ĭ�Ϸ�������   �ĵ���ͷ
end;

procedure TFrmPOSEdit.qryPrepreNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FPARENTID').AsString := POSBillIDValue;
  DataSet.FieldByName('FID').AsString := CliDM.GetEASSID(UserInfo.RetailPOSReceiverEntryID);
  DataSet.FieldByName('FSEQ').AsInteger := PrepreFSEQ;
  PrepreFSEQ := PrepreFSEQ+1;

  //20120409
  DataSet.FieldByName('CFYEAR').Value := UserInfo.YearStr; //���
  DataSet.FieldByName('cfstoreunitid').AsString := Userinfo.FStoreOrgUnit;   //�����֯
  DataSet.FieldByName('cfsaleunitid').AsString := Userinfo.FSaleOrgID;  //������֯
  DataSet.FieldByName('CFWAREHOUSEID').AsString := Userinfo.Warehouse_FID;  //�ֿ�
end;

procedure TFrmPOSEdit.QryDetailCFAGIOChange(Sender: TField);
begin
  inherited;
  try
    QryDetailCFAGIO_PRICE.OnChange := nil; //���ص����ۿۼ�change�¼���������ѭ��
    Sender.DataSet.FieldByName('CFAGIO_PRICE').AsFloat := Sender.AsFloat * Sender.DataSet.FieldByName('CFPRICE').AsFloat/100; //�ۿۺ�۸�
    Sender.DataSet.FieldByName('CFAGIO_SUM_PRICE').AsFloat := Sender.AsFloat * Sender.DataSet.FieldByName('CFPRICE').AsFloat*Sender.DataSet.FieldByName('CFAMOUNT').AsFloat/100; //�ۿۺ���
  finally
    QryDetailCFAGIO_PRICE.OnChange := QryDetailCFAGIO_PRICEChange;
  end;
end;

procedure TFrmPOSEdit.QryDetailCFAGIO_PRICEChange(Sender: TField);
begin
  inherited;
  try
    QryDetailCFAGIO.OnChange := nil;  //���ص����ۿ�change�¼���������ѭ��
    //WriteTxt('QryDetailCFAGIO_PRICEChange CFAGIO_PRICE='+FloatToStr(Sender.AsFloat)+' CFPRICE='+FloatToStr(Sender.DataSet.FieldByName('CFPRICE').AsFloat));
    Sender.DataSet.FieldByName('CFAGIO').AsFloat := Sender.AsFloat / Sender.DataSet.FieldByName('CFPRICE').AsFloat*100; //�ۿ�
    Sender.DataSet.FieldByName('CFAGIO_SUM_PRICE').AsFloat := Sender.AsFloat * Sender.DataSet.FieldByName('CFAMOUNT').AsFloat; //�ۿۺ���
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
    Gio.AddShow('POS����'+POSBillNumber+'����ʼ�ύ!');
    Gio.AddShow('POS����'+POSBillNumber+'��ʵ�ս�'+QryMater.FieldByName('CFPaymentMoney').AsString);
    QryMater.UpdateBatch(arAll);
    QryDetail.UpdateBatch(arAll);
    //ɾ�����Ϊ0�ļ�¼�������¼
    qryPrepre.First;
    while not qryPrepre.Eof do
    begin
      if (qryPrepre.FieldByName('CFHAVE_PAY_MONEY').AsFloat = 0) or (qryPrepre.FieldByName('CFHAVE_PAY_MONEY').IsNull) then
      begin
        Gio.AddShow('POS����'+POSBillNumber+'��ɾ����������ϸ:'+qryPrepre.fieldbyName('cfPayMentTypeName').AsString+'  '+qryPrepre.FieldByName('CFHAVE_PAY_MONEY').AsString);
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
        Gio.AddShow('POS����'+POSBillNumber+'��������ʽ�տ�Ϊ��,�����ύ!');
        ShowMsg(Handle, '������ʽ�տ�Ϊ��,�����ύ!',[]);
        Result := False;
        Abort;
      end;
    end;
    qryPrepre.UpdateBatch(arAll);
    CliDM.conClient.CommitTrans;
    Gio.AddShow('POS����'+POSBillNumber+'���ύ���!');
  except
    on E : Exception do
    begin
      CliDM.conClient.RollbackTrans;
      ShowMsg(Handle, '���߱���ʧ�ܣ�'+E.Message,[]);
      Result := False;
      Abort;
    end;
  end;
end;

procedure TFrmPOSEdit.act_CtrlAExecute(Sender: TObject);
begin
  inherited;
  if UserInfo.Is_SysOnline then
      CliDM.Chk_UserRight(UserInfo.RetailPOSID,'posCTRL_A'); //���Ȩ��

  if cxDetail.DataController.DataSource.DataSet.IsEmpty then
  begin
    ShowMsg(Handle, 'û�����ۼ�¼!���ܷ��������',[]);
    edt_sStyleBarCode.SetFocus;
    abort;
  end;

  GetEditStatus;
  ScaleAssign;  //�Զ�����������
  Open_ProrateFrm(dsScaleAssign);  //�򿪷����������
end;

procedure TFrmPOSEdit.act_DeleteDetailExecute(Sender: TObject);
var DetailFID : string;
begin
  inherited;
  if UserInfo.Is_SysOnline then
     CliDM.Chk_UserRight(UserInfo.RetailPOSID,'posDelete'); //���Ȩ��

  if cxDetail.DataController.DataSource.DataSet.IsEmpty then exit;
  GetEditStatus;  //����Ƿ�����༭

  if dsDetail.DataSet.FieldByName('CFExplainInfo').AsString = '' then
  begin
    if ShowYesNo(Handle, 'ȷ��Ҫɾ������Ʒ��',[])= IDNO then Exit;
    dsDetail.DataSet.Delete;
    //20120316 �����ͷ�м�¼�����������Ż����������ý���ɾ��
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
    ShowMsg(Handle, '��Ʒ����ֱ��ɾ����ɾ��Դ��ʱ�Ż��Զ�ɾ����Ʒ��',[]);
    Abort;
  end
  else
  begin
    if ShowYesNo(Handle, 'ȷ��Ҫɾ������Ʒ�Լ������Ʒ��',[])= IDNO then Exit;
    try
      dsDetail.DataSet.DisableControls;
        DetailFID := dsDetail.DataSet.FieldByName('FID').AsString;
        //ɾ����Ʒ
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
        //ɾ��Դ��
        dsDetail.DataSet.Locate('FID',DetailFID,[]);
        dsDetail.DataSet.Delete;
    finally
      dsDetail.DataSet.EnableControls;
    end;
  end;

  //20120316 �����ͷ�м�¼�����������Ż����������ý���ɾ��
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
  //��������
  CFExplain_BillNO := dsMaster.DataSet.fieldByName('CFExplain_BillNO').AsString;
  if CFExplain_BillNO <> '' then exit;  //20120316 wushaoshu ��������ֻ��ʹ��һ��
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
  //if not UserInfo.Is_SysOnline then Exit;  //20110625 ���߲����ô���

  DetailFID := dsDetail.DataSet.fieldByName('FID').AsString;
  cfMaterialID := dsDetail.DataSet.fieldByName('cfMaterialID').AsString;
  uColor_ID := dsDetail.DataSet.fieldByName('CFCOLORID').AsString;
  uSize_ID  := dsDetail.DataSet.fieldByName('CFSIZESID').AsString;
  fUnit_Price := dsDetail.DataSet.fieldByName('CFPRICE').AsFloat;
  fAmount := dsDetail.DataSet.fieldByName('CFAMOUNT').AsFloat;
  fSum_Price := dsDetail.DataSet.fieldByName('CFAGIO_SUM_PRICE').AsFloat;
  if fAmount < 0 then
  begin
    Gio.AddShow('�˻���Ʒ�����������');
    //ShowMsg(Handle, '�˻���Ʒ�����������',[]);
    Abort;
  end;
  if fSum_Price =0 then
  begin
    Gio.AddShow('�۸�Ϊ0Ĭ����Ϊ��Ʒ�����������������');
    Abort;
  end;

  //���õ������,����д�����ѡ�к�������ϸ���ۿۡ����ۻ����ۺ���
  if UserInfo.Is_SysOnline then
    chk_Explain_Style(TDataSet(csMaster),TDataSet(csDetail),DetailFID,cfMaterialID,uColor_ID,uSize_ID,fUnit_Price, fAmount, fSum_Price)
  else
    chk_Explain_Style(TDataSet(QryMater),TDataSet(QryDetail),DetailFID,cfMaterialID,uColor_ID,uSize_ID,fUnit_Price, fAmount, fSum_Price);
end;

//д����ʱ������������ϴ���
function TFrmPOSEdit.Insert_Entry_Temp: Boolean;
var FID,CFMATERIALID,CFCOLORID,CFCUPID,CFSIZESID,CFASSISTPROPERTYID,CFExplainInfo,CFFID_S : string;
    CFAMOUNT,CFAGIO,CFAGIO_SUM_PRICE,CFPRICE : Double;
    sqlstr : string;
begin
  Result := True;
  //if not UserInfo.Is_SysOnline then Exit;  //20110625 ���߲����ô���
  SalesCount :=0;   //������������
  ReturnCount:=0;   //�˻�����

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
        CFASSISTPROPERTYID := QuotedStr(FieldByName('CFASSISTPROPERTYID').AsString); //��������ID
        CFExplainInfo := QuotedStr(FieldByName('CFExplainInfo').AsString);  //�Ƿ��ǲ��밴�����
        CFFID_S := QuotedStr(FieldByName('CFFID_S').AsString);  //Դ��FID
        CFAMOUNT := FieldByName('CFAMOUNT').AsFloat;            //����
        CFAGIO := FieldByName('CFAGIO').AsFloat;                //�ۿ�
        CFAGIO_SUM_PRICE := FieldByName('CFAGIO_SUM_PRICE').AsFloat;   //�ۺ���
        CFPRICE := FieldByName('CFPRICE').AsFloat;   //�ۺ���
        if CFAMOUNT>0 then //������������
          SalesCount :=SalesCount+1
        else //�˻�����
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
    ShowMsg(Handle,'��ǰ�������˻������ݣ������˻���Ʒ��������Ϊ������',[]);
    Result := True;
    Abort;
  end;
end;

procedure TFrmPOSEdit.act_Explain_BillExecute(Sender: TObject);
begin
  inherited;
  if dsDetail.DataSet.IsEmpty then Exit;
  Delete_Entry_Temp;  //ɾ����ʱ����
  Insert_Entry_Temp;  //��¼��ʱ���ݣ���¼���ݿ����Ϣ�Լ�����ϸ���У��������������е���ϴ���
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
      ShowMsg(Handle, '�˻���Ʒ�����������',[]);
      Abort;
    end;

    if (csDetail.FieldByName('CFExplainInfo').AsString <>'') and (csDetail.FieldByName('CFFID_S').AsString='') then
    begin
      ShowMsg(Handle, '�����Ѿ����������',[]);
      Abort;
    end;

    if csDetail.FieldByName('CFFID_S').AsString <> '' then
    begin
      ShowMsg(Handle, '��Ʒ�����������',[]);
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
     CliDM.Chk_UserRight(UserInfo.RetailPOSID,'posPRINTDesign'); //���Ȩ��

    Open_ReportFile(Self,UserInfo.ExePath + '\Report\���۵�\',True); //���СƱ
end;

procedure TFrmPOSEdit.actDownExecute(Sender: TObject);
begin
  inherited;
  if not UserInfo.Is_SysOnline then
  begin
    ShowMsg(Handle, 'ֻ������״̬�²���ʹ�ñ����ܣ�',[]);
    abort;
  end;
  //��������
  if UserInfo.Is_SysOnline then
    FMCliMain.Open_DownExe(True);
end;

procedure TFrmPOSEdit.actUpExecute(Sender: TObject);
begin
  inherited;
  if not UserInfo.Is_SysOnline then
  begin
    ShowMsg(Handle, 'ֻ������״̬�²���ʹ�ñ����ܣ�',[]);
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
  lblUserInifo.Caption := Format('��ӭ��! %s ������%s', [FMCliMain.LoginUser_Name, FormatDateTime('yyyy"��"m"��"d"��" dddd', Date())]);
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
      lb_fullscreen.Caption := '   �ָ�';
    end
    else
    begin
      lb_fullscreen.Caption := '   ȫ��';
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
  //�ֿ���롢����
  if DataSet.FindField('WareHouseNumber') <> nil then
  with CliDM.Client_QuerySQL('Select FNumber,fname_l2 From T_DB_WAREHOUSE(nolock) Where FID='+QuotedStr(DataSet.fieldByName('cfstorageid').AsString)) do
  begin
    DataSet.FieldByName('WareHouseNumber').AsString := FieldByName('FNumber').AsString;
    DataSet.FieldByName('WareHouseName').AsString := FieldByName('fname_l2').AsString;
  end;
  
  //�Ƶ���
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
    ErrMsg := '�����ǹҵ�,�������ٲ�����';
  if ISTATUS=2 then
    ErrMsg := '�����Ѿ��ᵥ,�������ٲ���';
  if ISTATUS=-2 then
    ErrMsg := '�����Ѿ��˶���,�������ٲ���';
  //20110826 �˶��𵥾ݲ����������
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

//���ÿؼ�
procedure TFrmPOSEdit.SetEditStatus;
var EditStatus : Boolean;
   ISTATUS : Integer;
begin
  //ֻ��״̬Ϊ0�����޸�   -1 �ҵ�  2�ᵥ ��������༭
  EditStatus := dsMaster.DataSet.FieldByName('ISTATUS').AsInteger=0;
  ISTATUS := dsMaster.DataSet.FieldByName('ISTATUS').AsInteger;
  cxBillType.Enabled := EditStatus;
  cxDescription.Enabled := EditStatus;
  edt_sStyleBarCode.Properties.ReadOnly := not EditStatus;

  cbCFBalanceYear.Enabled := EditStatus;   //������
  CbBalanceMonth.Enabled := EditStatus;    //������
  cbSETTLEBACKTYPEID.Enabled := EditStatus;        //��������




  cxDetailCFAMOUNT.Options.Editing := EditStatus;
  //20110804 �ۿۡ������Ҫ��Ȩ�޲����޸�
  //cxDetailCFAGIO.Options.Editing := EditStatus;
  //cxDetailCFAGIO_PRICE.Options.Editing := EditStatus;
  //cxDetailCFAGIO_SUM_PRICE.Options.Editing := EditStatus;
  cxDetailCFSALESMANID.Options.Editing := EditStatus;    //�������� ���ϣ��Ƶ���ͷ

  //�Ҽ�
  N1.Enabled := EditStatus;
  N2.Enabled := EditStatus;
  N3.Enabled := EditStatus;
  N7.Enabled := EditStatus;      //ɾ������
  CrtlS1.Enabled := EditStatus;  //�޸�����
  N8.Enabled := ISTATUS=-1;
  act_CtrlE.Enabled := ISTATUS=-1; //�˶���ԭ�ҵ����䣬����һ���µ����˶��� iStatus = -2
  act_CtrlF.Enabled := ISTATUS=-1; //�ҵ�ֱ�ӽᵥ��ԭ�ҵ����䣬����һ���µ����˶��� iStatus = -2

  actPrintRepeat.Enabled := not EditStatus;  //�ش�СƱ
  act_CtrlZ.Enabled := EditStatus; //��Ʒ�۸�����

  case ISTATUS of
    -1 : lbStatusName.Caption := '�ҵ�';
    0  : lbStatusName.Caption := '�µ�';
    2  : lbStatusName.Caption := '�ᵥ';
  end
end;

procedure TFrmPOSEdit.SetPopedom;
begin
 if not UserInfo.Is_SysOnline then  //����ʱ����ģ�鲻�������
 begin
    act_F6.Enabled := False;
    act_F10.Enabled := False;
    act_F11.Enabled := False;
    act_Explain_Style.Enabled := False;
    act_Explain_Bill.Enabled := False;
 end;
end;

//�������
function TFrmPOSEdit.CalcIntegral(BillIDValue,CFVIPCardNumber: string;cfMoney,FBONUSRATE : Double): Double;
var Integral : Double;
begin
  Result := 0;
  with CliDM.Temp do
  try
    Close;
    CommandText := 'sp_CalcIntegral;1';
    Parameters.Clear;
    Parameters.CreateParameter('@BillIDValue',ftString,pdInput,200,BillIDValue);              //���ݱ��
    Parameters.CreateParameter('@CFVIPCardNumber',ftString,pdInput,200,CFVIPCardNumber);      //��Ա����
    Parameters.CreateParameter('@cfMoney',ftFloat,pdInput,200,cfMoney);                       //�����տ���
    Parameters.CreateParameter('@FBONUSRATE',ftFloat,pdInput,200,FBONUSRATE);                 //���ֱ��ʣ�Ԫ��   �ӿ����𵵰��л�ȡ
    Parameters.CreateParameter('@FSalesOrgUnit',ftString,pdInput,200,UserInfo.FSaleOrgID);    //������֯
    Parameters.CreateParameter('@ServerDateTime',ftdate,pdInput,200,CliDM.Get_ServerTime);    //��������ǰʱ��
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
    ShowMsg(Handle, '�ۿ۲���С��0',[]);
    abort;
  end;
  if DataSet.FieldByName('CFAGIO_PRICE').AsCurrency <0 then
  begin
    ShowMsg(Handle, '�ۿۼ۲���С��0',[]);
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
    ShowMsg(Handle, '�ۿ۲���С��0',[]);
    abort;
  end;
  if DataSet.FieldByName('CFAGIO_PRICE').AsCurrency <0 then
  begin
    ShowMsg(Handle, '�ۿۼ۲���С��0',[]);
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
    ShowMsg(Handle, '����״̬�²��ܸ���ҵ������!',[]);
    Exit;
  end;
  if UserInfo.Is_SysOnline then
     CliDM.Chk_UserRight(UserInfo.RetailPOSID,'posCTRL_D'); //���Ȩ��

  GetEditStatus; //����Ƿ������޸�
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
        csMaster.fieldbyName('cfbalanceyear').AsString := FormatDateTime('YYYY',IncMonth(Alterdate,1)); //Ĭ���½����
        csMaster.fieldbyName('cfbalancemonth').AsString := FormatDateTime('MM',IncMonth(Alterdate,1));  //Ĭ���½��·�
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
        QryMater.fieldbyName('cfbalanceyear').AsString := FormatDateTime('YYYY',IncMonth(Alterdate,1)); //Ĭ���½����
        QryMater.fieldbyName('cfbalancemonth').AsString := FormatDateTime('MM',IncMonth(Alterdate,1));  //Ĭ���½��·�
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
     Self.Caption := 'POS����-ҵ�����ڡ�'+BizDateStr+'���̳�������ݡ�'+csMaster.fieldbyName('CFBalanceYear').AsString+'���·ݡ�'+csMaster.fieldbyName('CFBalanceMonth').AsString+'��'
    else
     Self.Caption := 'POS����-ҵ�����ڡ�'+BizDateStr+'��';
  end;
end;

procedure TFrmPOSEdit.act_CtrlDExecute(Sender: TObject);
begin
  inherited;
  GetEditStatus;  //�������µ�״̬�����˵�
  if dsMaster.DataSet.FieldByName('ISTATUS').AsInteger = 0 then
  if not dsDetail.DataSet.IsEmpty then
  begin
    ShowMsg(Handle, '�봦��ǰ���ݺ������˻����߻�����',[]);
    abort;
  end;

  if UserInfo.Is_SysOnline then
  begin
    CliDM.Chk_UserRight(UserInfo.RetailPOSID,'posCTRL_C'); //���Ȩ��
    GetTuiHuo(POSBillIDValue,POSBillNumber,csMaster,csDetail) //��ѡ�����棬�ӷ�������ȡ�ҵ���¼
  end
  else
    GetTuiHuo(POSBillIDValue,POSBillNumber,QryMater,QryDetail) ;//��ѡ�����棬�ӱ��ػ�ȡ�ҵ���¼
end;

function TFrmPOSEdit.Delete_Entry_Temp: Boolean;
begin
  //if UserInfo.Is_SysOnline then   //20110625 ���߲����ô���
  //20120315 �������ô���
  CliDM.Client_ExecSQL('Delete CT_BIL_RETAILPOSENTRY_TEMP Where FPARENTID='+QuotedStr(POSBillIDValue));
end;

procedure TFrmPOSEdit.QryDetailCFAMOUNTChange(Sender: TField);
begin
  inherited;
  try
    csDetailCFAGIO.OnChange := nil;
    Sender.DataSet.FieldByName('CFAGIO_SUM_PRICE').AsFloat := Sender.AsFloat * Sender.DataSet.FieldByName('CFAGIO_PRICE').AsFloat; //�ۿۺ���
  finally
    csDetailCFAGIO.OnChange := QryDetailCFAGIOChange;
  end;
end;

procedure TFrmPOSEdit.csMasterISTATUSChange(Sender: TField);
begin
  inherited;
  Sender.DataSet.FieldByName('CFSTATE').Value := Sender.Value;  //20110728 EAS���ֻ���Ʒ��Ҫ��ʵ�����ӵ���״̬�ֶ� ���ڹ���
end;

procedure TFrmPOSEdit.csDetailCFSETTLEBACKTYPEIDChange(Sender: TField);
begin
  inherited;
  CliDM.qryPoint.Locate('FID',Sender.AsString,[]);  //��ȡ������
  Sender.DataSet.FieldByName('CFBACKPOINT').AsFloat := CliDM.qryPoint.fieldByName('CFBACKPOINT').AsFloat;

end;

procedure TFrmPOSEdit.QryDetailCFASSISTPROPERTYIDChange(Sender: TField);
begin
  inherited;
  CliDM.qryPoint.Locate('FID',Sender.AsString,[]);  //��ȡ������
  Sender.DataSet.FieldByName('CFBACKPOINT').AsFloat := CliDM.qryPoint.fieldByName('CFBACKPOINT').AsFloat;
end;

procedure TFrmPOSEdit.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if dsMaster.DataSet.FieldByName('iStatus').AsInteger = 0 then
    if not dsDetail.DataSet.IsEmpty then
      if ShowYesNo(Handle, '�رմ�����Ѿ�¼����Ʒ���ᱣ��,ȷ���رգ�',[]) = IDNO then abort;
  DelTempFile;//ɾ�������ļ�
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
     CliDM.Chk_UserRight(UserInfo.RetailPOSID,'posDelete'); //���Ȩ��

  if cxDetail.DataController.DataSource.DataSet.IsEmpty then exit;
  GetEditStatus;  //����Ƿ�����༭

  if ShowYesNo(Handle, 'ȷ��Ҫɾ��������ϸ��',[])= IDNO then Exit;

  while not  dsDetail.DataSet.IsEmpty do dsDetail.DataSet.Delete;

  //20120316 �����ͷ�м�¼�����������Ż����������ý���ɾ��
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
    ShowMsg(Handle, '��ǰ���ݲ��ǹҵ���',[]);
    Abort;
  end;
  if ShowYesNo(Handle, 'ȷ��Ҫɾ����ǰ�ҵ���',[]) = Idno then exit;
  dsRetailPRPRE.DataSet.First;
  while not dsRetailPRPRE.DataSet.Eof do
  begin
    if dsRetailPRPRE.DataSet.FieldByName('CFHAVE_PAY_MONEY').AsFloat > 0 then
      HAVE_PAY_MONEY := HAVE_PAY_MONEY+dsRetailPRPRE.DataSet.FieldByName('CFHAVE_PAY_MONEY').AsFloat;
    dsRetailPRPRE.DataSet.Next;
  end;
  if HAVE_PAY_MONEY>0 then
  begin
    ShowMsg(Handle, '�ҵ�ʱ�Ѿ����˶���'+FloatToStr(HAVE_PAY_MONEY)+'��Ԫ��������ɾ����',[]);  //20110826
    abort;
  end;
  //if ShowYesNo('�Ѿ����˶���'+FloatToStr(HAVE_PAY_MONEY)+'����ȷ��Ҫɾ���˹ҵ���',[])=IDNO then exit;

  if UserInfo.Is_SysOnline then
  begin
    if csMaster.FindField('FBIZDATE') <> nil then BizDateStr := FormatDateTime('yyyy-mm-dd', csMaster.FieldByName('FBIZDATE').AsDateTime);
    if CliDM.Pub_BillDel(UserInfo.LoginUser_FID,'CT_BIL_RetailPOS',POSBillIDValue,BizDateStr,ErrMsg) then
    begin
      ShowMsg(Handle, '�ҵ�ɾ���ɹ���',[]);
      Gio.AddShow('�û���'+UserInfo.LoginUser+'  �ҵ�����['+POSBillNumber+']ɾ���ɹ�');
      EditBill('');
    end
    else
    begin
      ShowMsg(Handle, '�ҵ�['+POSBillNumber+']ɾ��ʧ�ܣ�'+ErrMsg,[]);
      Abort;
    end;
  end;
  if not UserInfo.Is_SysOnline then
  if CliDM.DelPOSHang(POSBillIDValue) then
  begin
    ShowMsg(Handle, '�ҵ�ɾ���ɹ���',[]);
    Gio.AddShow('�û���'+UserInfo.LoginUser+'  �ҵ�����['+POSBillNumber+']ɾ���ɹ�');
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

//���߷��������޸Ļ�ȡ����ֵ
procedure TFrmPOSEdit.csMasterCFSETTLEBACKTYPEIDChange(Sender: TField);
begin
  inherited;
  CliDM.qryPoint.Locate('FID',Sender.AsString,[]);  //��ȡ������
  Sender.DataSet.FieldByName('CFBACKPOINT').AsFloat := CliDM.qryPoint.fieldByName('CFBACKPOINT').AsFloat;
end;

//���߷��������޸Ļ�ȡ����ֵ
procedure TFrmPOSEdit.QryMaterCFSETTLEBACKTYPEIDChange(Sender: TField);
begin
  inherited;
  CliDM.qryPoint.Locate('FID',Sender.AsString,[]);  //��ȡ������
  Sender.DataSet.FieldByName('CFBACKPOINT').AsFloat := CliDM.qryPoint.fieldByName('CFBACKPOINT').AsFloat;
end;

procedure TFrmPOSEdit.csMasterBeforePost(DataSet: TDataSet);
begin
  inherited;
  {if UserInfo.WareHouserCustorID <> '' then
  begin
    if DataSet.FieldByName('CFSETTLEBACKTYPEID').AsString = '' then
    begin
      ShowMsg(Handle, '�̳��������Ͳ���Ϊ�գ�',[]);
      abort;
    end;
    if DataSet.FieldByName('CFBalanceYear').AsString = '' then
    begin
      ShowMsg(Handle, '�̳�������ݲ���Ϊ�գ�',[]);
      abort;
    end;
    if DataSet.FieldByName('CFBalanceMonth').AsString = '' then
    begin
      ShowMsg(Handle, '�̳������·ݲ���Ϊ�գ�',[]);
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
    ShowMsg(Handle, 'ֻ���������̳��ĵ��̲����޸��̳�������Ϣ��',[]);
    abort;
  end;
  if SetBalanceHand(dsMaster.DataSet) then
     Self.Caption := 'POS����-�̳�������ݡ�'+dsMaster.DataSet.fieldbyName('CFBalanceYear').AsString+'���·ݡ�'+dsMaster.DataSet.fieldbyName('CFBalanceMonth').AsString+'��';
end;

procedure TFrmPOSEdit.QryMaterBeforePost(DataSet: TDataSet);
begin
  inherited;
  {
  if UserInfo.WareHouserCustorID <> '' then
  begin
    if DataSet.FieldByName('CFSETTLEBACKTYPEID').AsString = '' then
    begin
      ShowMsg(Handle, '�̳��������Ͳ���Ϊ�գ�',[]);
      abort;
    end;
    if DataSet.FieldByName('CFBalanceYear').AsString = '' then
    begin
      ShowMsg(Handle, '�̳�������ݲ���Ϊ�գ�',[]);
      abort;
    end;
    if DataSet.FieldByName('CFBalanceMonth').AsString = '' then
    begin
      ShowMsg(Handle, '�̳������·ݲ���Ϊ�գ�',[]);
      abort;
    end;
  end;
  }
end;

procedure TFrmPOSEdit.actPrintRepeatExecute(Sender: TObject);
begin
  inherited;
  //��ӡСƱ
  if UserInfo.Is_SysOnline then
  begin
     RM_PrintRpt(Self, UserInfo.ExePath + '\Report\���۵�\�ᵥСƱ_����.rmf',False,True,RM_PName);
  end
  else
     RM_PrintRpt(Self, UserInfo.ExePath + '\Report\���۵�\�ᵥСƱ_����.rmf',False,True,RM_PName); //��ӡСƱ

end;

procedure TFrmPOSEdit.act_CtrlZExecute(Sender: TObject);
begin
  inherited;
  if UserInfo.Is_SysOnline then
  CliDM.Chk_UserRight(UserInfo.RetailPOSID,'posCTRL_Z'); //���Ȩ��
  if dsDetail.DataSet.IsEmpty then Exit;

  if dsMaster.DataSet.FieldByName('ISTATUS').AsInteger<>0 then
  begin
    ShowMsg(Handle, '�µ������޸���Ʒ�۸�',[]);
    abort;
  end;
  if dsMaster.DataSet.FieldByName('CFISReturn').AsInteger=1 then
  begin
    ShowMsg(Handle, '�˻������������ͣ�',[]);
    abort;
  end;

  dsDetail.DataSet.Edit;
  dsDetail.DataSet.FieldByName('CFAGIO_PRICE').Value := 0;  //�ۺ������
  dsDetail.DataSet.FieldByName('CFDescription').Value := dsDetail.DataSet.FieldByName('CFDescription').Value+' ����';
  dsMaster.DataSet.Edit;
 // dsMaster.DataSet.FieldByName('fdescription').Value := dsMaster.DataSet.FieldByName('fdescription').Value + ' ����';
end;

procedure TFrmPOSEdit.act_CtrlEExecute(Sender: TObject);
var oldBillID,OldBillNumber : string;
  HAVE_PAY_MONEY : Double;
  srcBillFID,ErrMsg : string;
begin
  inherited;
  if UserInfo.Is_SysOnline then
    CliDM.Chk_UserRight(UserInfo.RetailPOSID,'posCTRL_E'); //���Ȩ��
  //�˶��� 1 ����һ�� ���˶��� ״̬�ĵ���
  if dsMaster.DataSet.FieldByName('ISTATUS').AsInteger <> -1 then
  begin
    ShowMsg(Handle, 'ֻ�йҵ������˶���',[]);
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
    ShowMsg(Handle, '��ǰ�ҵ�û�ж���',[]);
    abort;
  end;

  oldBillID := POSBillIDValue;
  OldBillNumber := POSBillNumber;
  srcBillFID :=  oldBillID;
  if UserInfo.Is_SysOnline then
  begin
    EditBill('');
    CopyPOSBill(POSBillIDValue,POSBillNumber,csMaster,csDetail,csRetailPRPRE,oldBillID,OldBillNumber) //��ѡ�����棬�ӷ�������ȡ�ҵ���¼
  end
  else
  begin
    EditBillI_NoOnline('');
    CopyPOSBill(POSBillIDValue,POSBillNumber,QryMater,QryDetail,qryPrepre,oldBillID,OldBillNumber) //��ѡ�����棬�ӱ��ػ�ȡ�ҵ���¼
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
    dsMaster.DataSet.FieldByName('fdescription').AsString := '���������˶��𵥾ݣ�Դ�����ţ�'+OldBillNumber;
    dsMaster.DataSet.FieldByName('iStatus').Value := -2;  //����״̬
    dsMaster.DataSet.FieldByName('CFSTATE').Value := -2;  //����״̬  EAS����ʵ����
    dsMaster.DataSet.FieldByName('FAUDITORID').Value := UserInfo.LoginUser_FID;  //�����
    dsMaster.DataSet.FieldByName('FLASTUPDATEUSERID').Value := UserInfo.LoginUser_FID;  //�����
    dsMaster.DataSet.FieldByName('FLASTUPDATETIME').AsDateTime := CliDM.Get_ServerTime;  //���ʱ��
    if (UserInfo.Is_SysOnline)  then
    begin
      if ST_Save then //�����ύ
      begin
        //�ᵥ�ɹ����ѹҵ�״̬�޸�Ϊ-2
        if (srcBillFID<>'') then
        begin
          CliDM.Get_ExecSQL('update ct_bil_retailpos a set a.istatus=-2,a.cfstate=-2 where  a.fid ='+QuotedStr(srcBillFID)+' and  a.istatus=-1',ErrMsg)
        end;
        EditBill('');   //��һ���µ�
      end;
    end
    else
    begin
      if ST_Save_NoLine then
      begin
        //�ᵥ�ɹ����ѹҵ�״̬�޸�Ϊ-2
        if (srcBillFID<>'') then
        begin
          CliDM.Client_ExecSQL('update ct_bil_retailpos  set istatus=-2,cfstate=-2 where  fid ='+QuotedStr(srcBillFID)+' and  istatus=-1')
        end;
        EditBillI_NoOnline('');
      end;
    end;

    SetEditStatus;  //���ÿؼ��Ƿ�����༭
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
  //�˶��� 1 ����һ�� ���˶��� ״̬�ĵ���
  if dsMaster.DataSet.FieldByName('ISTATUS').AsInteger <> -1 then
  begin
    ShowMsg(Handle, 'ֻ�йҵ�����ִ�д˲�����',[]);
    abort;
  end;

  oldBillID := POSBillIDValue;
  OldBillNumber := POSBillNumber;
  if UserInfo.Is_SysOnline then
  begin
    CliDM.Chk_UserRight(UserInfo.RetailPOSID,'posF2'); //���Ȩ��
    EditBill('');
    CopyPOSBill(POSBillIDValue,POSBillNumber,csMaster,csDetail,csRetailPRPRE,oldBillID,OldBillNumber) //��ѡ�����棬�ӷ�������ȡ�ҵ���¼
  end
  else
  begin
    EditBillI_NoOnline('');
    CopyPOSBill(POSBillIDValue,POSBillNumber,QryMater,QryDetail,qryPrepre,oldBillID,OldBillNumber) //��ѡ�����棬�ӱ��ػ�ȡ�ҵ���¼
  end;

  if ShowSLPFrm(POSBillIDValue,0,dsMaster.DataSet,dsDetail.DataSet,dsRetailPRPRE.DataSet) then
  begin
    if not (dsMaster.DataSet.State in db.dsEditModes) then dsMaster.DataSet.Edit;
    dsMaster.DataSet.FieldByName('fdescription').AsString := '�������ڹҵ�ֱ�ӽᵥ�����ɵĵ��ݣ�Դ�����ţ�'+OldBillNumber;
    dsMaster.DataSet.FieldByName('iStatus').Value := 2;  //����״̬
    dsMaster.DataSet.FieldByName('CFSTATE').Value := 2;  //����״̬  EAS����ʵ����
    dsMaster.DataSet.FieldByName('FAUDITORID').Value := UserInfo.LoginUser_FID;  //�����
    dsMaster.DataSet.FieldByName('FLASTUPDATEUSERID').Value := UserInfo.LoginUser_FID;  //�����
    dsMaster.DataSet.FieldByName('FLASTUPDATETIME').AsDateTime := CliDM.Get_ServerTime;  //���ʱ��
    ST_Save; //�����ύ
    SetEditStatus;  //���ÿؼ��Ƿ�����༭
  end;

end;

procedure TFrmPOSEdit.edt_sStyleBarCodeKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var sStyleBarCode,OutMsg : string;
    sBarCodeCount : Integer;
begin
  inherited;
  if (Key = VK_RETURN) or (Key=13) then   //�س�
  begin
    //Gio.AddShow('edt_sStyleBarCodeKeyDown...Key='+Inttostr(Key));
    sStyleBarCode := SbctoDbc(Trim(edt_sStyleBarCode.Text));
    if sStyleBarCode = '' then Exit;
    if Trim(edt_fAmount.Text)= '' then sBarCodeCount :=1
    else
      sBarCodeCount := StrToInt(edt_fAmount.Text);
    if GetValueFromBarCode(sStyleBarCode,dsDetail.DataSet,sBarCodeCount,OutMsg) then //��������ɹ�
    begin
      edt_sStyleBarCode.Clear;
      Set_Explain_Style;  //�򿪰���������棬���ѡ�д������޸��ۿۡ����ۺ��ۺ���
    end
    else
    begin
      Gio.AddShow(OutMsg);
      ShowMsg(Handle,OutMsg,[]);
    end;
    edt_sStyleBarCode.SetFocus;
  end;

  if (Key = 37) or (Key=38) then   //���  �ϼ�
  begin
    cxDescription.SetFocus;
  end;

  if (Key = 39) then   //�Ҽ�
  begin
    edt_fAmount.SetFocus;
  end;



end;



procedure TFrmPOSEdit.cxDescriptionKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (Key = 37) or (Key=38) then   //���  �ϼ�
    edMarketBillNo.SetFocus;

  if (Key = VK_RETURN) or (Key = 39)  then   //�س� �Ҽ�
    cxBillType.SetFocus;

  if (Key=40) then  //�¼�
     edt_sStyleBarCode.SetFocus;

end;

procedure TFrmPOSEdit.cxFNumberKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (Key = 37) or (Key=38) then   //���  �ϼ�
    edt_sStyleBarCode.SetFocus;

  if (Key = VK_RETURN) or (Key = 39) or (Key=40) then   //�Ҽ�  �¼�
    edMarketBillNo.SetFocus;
end;

procedure TFrmPOSEdit.edt_fAmountKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (Key = 37) then   //���
    edt_sStyleBarCode.SetFocus;

  if (Key=38) then   //�ϼ�
    cxBillType.SetFocus;


end;

procedure TFrmPOSEdit.ScaleAssign;
var Bill_Sum_Price,CFAGIO_SUM_PRICE,CFQTY : Double;
    CFSALESMANID : string;
begin
  //�Զ�����������
  Gio.AddShow('��ʼ�������������');
  if dsScaleAssign.DataSet.RecordCount>0 then Exit;  //����Ѿ��ֹ���д�˷���������˳�
  try
    Bill_Sum_Price := StrToFloat(lbSum_Price.Caption);
  except
    Gio.AddShow('��������ʱ��ȡ�������������š�'+POSBillNumber+'����'+lbSum_Price.Caption+'��');
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
        dsScaleAssign.DataSet.FieldByName('CFYEAR').Value := UserInfo.YearStr; //���
        dsScaleAssign.DataSet.FieldByName('cfstoreunitid').AsString := Userinfo.FStoreOrgUnit;   //�����֯
        dsScaleAssign.DataSet.FieldByName('cfsaleunitid').AsString := Userinfo.FSaleOrgID;  //������֯
        dsScaleAssign.DataSet.FieldByName('CFWAREHOUSEID').AsString := Userinfo.Warehouse_FID;  //�ֿ�
        dsScaleAssign.DataSet.Post;
      end;
      Next;
    end;
  end;

  Gio.AddShow('��ɼ������������');
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
  DataSet.FieldByName('CFYEAR').Value := UserInfo.YearStr; //���
  DataSet.FieldByName('cfstoreunitid').AsString := Userinfo.FStoreOrgUnit;   //�����֯
  DataSet.FieldByName('cfsaleunitid').AsString := Userinfo.FSaleOrgID;  //������֯
end;

procedure TFrmPOSEdit.csDetailCFAGIO_SUM_PRICEChange(Sender: TField);
var CFAGIO_SUM_PRICE,CFPRICE,CFAGIO_PRICE,CFAMOUNT,CFAGIO : Double;
begin
  inherited;
  try
    Sender.OnChange := nil;
    if UserInfo.RoundBillType=2 then //��Ʒ���λ�ô���С��λ
        Sender.AsFloat := CliDM.SimpleRoundTo(Sender.AsFloat);
  finally
    Sender.OnChange := csDetailCFAGIO_SUM_PRICEChange;
  end;

  try
    csDetailCFAGIO.OnChange := nil;  //���ص����ۿ�change�¼���������ѭ��
    csDetailCFAGIO_PRICE.OnChange := nil;
    CFAGIO_SUM_PRICE := Sender.AsFloat;
    CFAMOUNT := Sender.DataSet.FieldByName('CFAMOUNT').AsFloat;
    CFPRICE := Sender.DataSet.FieldByName('CFPRICE').AsFloat;
    CFAGIO_PRICE := CFAGIO_SUM_PRICE/CFAMOUNT;
    Sender.DataSet.FieldByName('CFAGIO_PRICE').AsFloat := CFAGIO_PRICE; //�ۿۺ�۸�
    //WriteTxt('csDetailCFAGIO_SUM_PRICEChange CFAGIO_PRICE='+FloatToStr(CFAGIO_PRICE)+' CFPRICE='+FloatToStr(CFPRICE));
    if Sender.DataSet.FieldByName('CFPRICE').AsFloat =0 then
      Sender.DataSet.FieldByName('CFAGIO').AsFloat := 0
    else
      Sender.DataSet.FieldByName('CFAGIO').AsFloat := CFAGIO_PRICE /CFPRICE *100; //�ۿ�
  finally
    csDetailCFAGIO.OnChange := csDetailCFAGIOChange;
    csDetailCFAGIO_PRICE.OnChange := csDetailCFAGIO_PRICEChange;
  end;
end;

procedure TFrmPOSEdit.act_CtrlHExecute(Sender: TObject);
begin
  inherited;
  GetDayReceive;  //�򿪵�������
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
    if TcxGridDBColumn(AItem).Editing then    //�༭״̬�²Ŵ������Ҽ����Ǳ༭״̬ϵͳ���Զ��л�
    begin
     with TcxGridDBColumn(AItem)do
     begin
       KeyFieldName := DataBinding.FieldName;
       FocusFieldIndex := Index;
     end;
     if Key=37 then NextFieldIndex := FocusFieldIndex-1;    //���
     if Key=39 then NextFieldIndex := FocusFieldIndex+1;    //�Ҽ�
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
  if (Key = 37) or (Key=38) then   //���  �ϼ�
    cxDescription.SetFocus;

  if (Key = VK_RETURN) or (Key = 39) or (Key=40)  then   //�س� �Ҽ� �¼�
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
  if DevicCaps=1024 then //��1024��768�ֱ��ʽ��д���Ĵ��룻
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
    ShowMsg(Handle, 'û���ҵ������ļ�(help.chm)!',[]);
    Exit;
  end;
  shellexecute(handle,'open',pchar(toFileName),nil,nil,sw_shownormal);
end;

procedure TFrmPOSEdit.act_CtrlIExecute(Sender: TObject);
var sqlstr : string;
begin
  inherited;
  //��ν������� 2012��5�·���֮�����ӵģ�����ĳ������������ FType ˵��û����������ִ����������
  sqlstr := 'SELECT * FROM SYSCOLUMNS WHERE ID = OBJECT_ID(''CT_BD_FREQUENCY_Relief '') AND NAME = ''FType'' ';
  if not CliDM.Client_IsExists(sqlstr) then
  begin
    ShowMsg(Handle,'ȱ�ٱ�Ҫ�ֶΣ����������²�����ʹ��',[]);
    Exit;
  end;

  with TfrmDutyCheckIn.Create(self)do
  begin
    ShowModal;
    if ModalResult =mrok then
    begin
       CliDM.InsertOnDutyRecord(UserInfo.LoginUser_FID,UserInfo.Warehouse_FID,UserInfo.MachineCode,UserInfo.FreQuency_ID,1);  //owen����ϰ��¼
      CliDM.InserCashRecord(UserInfo.LoginUser_FID,UserInfo.Warehouse_FID,UserInfo.MachineCode,'���ý�',UserInfo.FreQuency_ID,'',
      1,1,cxCurFee.Value,0);
      CliDM.qryInsertCashlist.UpdateBatch();
    end;
  end;
end;

procedure TFrmPOSEdit.act_CtrlJExecute(Sender: TObject);
var sqlstr : string;
begin
  inherited;
    //��ν������� 2012��5�·���֮�����ӵģ�����ĳ������������ FType ˵��û����������ִ����������
  sqlstr := 'SELECT * FROM SYSCOLUMNS WHERE ID = OBJECT_ID(''CT_BD_FREQUENCY_Relief '') AND NAME = ''FType'' ';
  if not CliDM.Client_IsExists(sqlstr) then
  begin
    ShowMsg(Handle,'ȱ�ٱ�Ҫ�ֶΣ����������²�����ʹ��',[]);
    Exit;
  end;
  
  with TfrmCashStorage.Create(self)do
  begin
    ShowModal;
    if ModalResult =mrok then
    begin
      CliDM.InserCashRecord(UserInfo.LoginUser_FID,UserInfo.Warehouse_FID,UserInfo.MachineCode,'���ý�',UserInfo.FreQuency_ID,'',
      1,1,cxCurAmt.Value,0);
      CliDM.qryInsertCashlist.UpdateBatch();

    end;
  end;
end;

procedure TFrmPOSEdit.act_CtrlKExecute(Sender: TObject);
var sqlstr : string;
begin
  inherited;
    //��ν������� 2012��5�·���֮�����ӵģ�����ĳ������������ FType ˵��û����������ִ����������
  sqlstr := 'SELECT * FROM SYSCOLUMNS WHERE ID = OBJECT_ID(''CT_BD_FREQUENCY_Relief '') AND NAME = ''FType'' ';
  if not CliDM.Client_IsExists(sqlstr) then
  begin
    ShowMsg(Handle,'ȱ�ٱ�Ҫ�ֶΣ����������²�����ʹ��',[]);
    Exit;
  end;
  with TfrmCacthCash.Create(self) do
  begin
    ShowModal;
    if ModalResult=mrok then
    begin
      CliDM.InserCashRecord(UserInfo.LoginUser_FID,UserInfo.Warehouse_FID,UserInfo.MachineCode,'ȡ��',UserInfo.FreQuency_ID,'',
      2,-1,cxCurAmt.Value,0);
      CliDM.qryInsertCashlist.UpdateBatch();
    end;  
  end;
end;

procedure TFrmPOSEdit.act_CtrlLExecute(Sender: TObject);
var sqlstr : string;
begin
  inherited;
    //��ν������� 2012��5�·���֮�����ӵģ�����ĳ������������ FType ˵��û����������ִ����������
  sqlstr := 'SELECT * FROM SYSCOLUMNS WHERE ID = OBJECT_ID(''CT_BD_FREQUENCY_Relief '') AND NAME = ''FType'' ';
  if not CliDM.Client_IsExists(sqlstr) then
  begin
    ShowMsg(Handle,'ȱ�ٱ�Ҫ�ֶΣ����������²�����ʹ��',[]);
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
  //��ν������� 2012��5�·���֮�����ӵģ�����ĳ������������ FType ˵��û����������ִ����������
  sqlstr := 'SELECT * FROM SYSCOLUMNS WHERE ID = OBJECT_ID(''CT_BD_FREQUENCY_Relief '') AND NAME = ''FType'' ';
  if not CliDM.Client_IsExists(sqlstr) then
  begin
    ShowMsg(Handle,'ȱ�ٱ�Ҫ�ֶΣ����������²�����ʹ��',[]);
    Exit;
  end;
  
  with TfrmLeaveCheckIn.Create(self) do
  begin
    ShowModal;
    if ModalResult =mrok then
    begin
      with CliDM.qryduty do  //�°����owen
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
  if (Key = 37) or (Key=38) then   //���  �ϼ�
  begin
    edt_sStyleBarCode.SetFocus;
  end;

  if (Key = VK_RETURN) or (Key = 39) or (Key=40) then   //�Ҽ�  �¼�
  begin
    cxDescription.SetFocus;
  end;
end;

//20120717
procedure TFrmPOSEdit.LoadShopRreceiveType;
var sqlstr : string;
begin
    //���ϵͳ�Ƿ���������ʽ����ֹ��һ�οտⰲװ�������޷��ᵥ������
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

    //��Ϊ֮ǰ�İ�װ���Ѿ����ظ��ļ�¼��������仰��Ҫ��2011��11.1��֮�����ã�������������Կͻ��˵�¼��ʾ
    if Userinfo.Earnest_FID='' then
    begin
      Userinfo.Earnest_FID := CliDM.Client_QuerySQL('select FID,FNUMBER from CT_SBA_SHOPRECEIVETYPE(nolock) Where FNAME_L2='+QuotedStr('����')).fieldbyName('FID').AsString;  //����FID
      if Userinfo.Earnest_FID='' then
      ShowError(Handle, '����ȱ�١������տʽ����Ӱ��POS�ҵ��ͽᵥ��ϵͳ�����������ݣ����Ժ��ٴ�POS������',[]);
    end;
    if Userinfo.Cash_FID='' then
    begin
      Userinfo.Cash_FID := CliDM.Client_QuerySQL('select FID,FNUMBER from CT_SBA_SHOPRECEIVETYPE(nolock) Where FNAME_L2='+QuotedStr('�ֽ�')).fieldbyName('FID').AsString;     //�ֽ�FID
      if Userinfo.Cash_FID='' then
      ShowError(Handle, '����ȱ�١��ֽ��տʽ����Ӱ��POS�ҵ��ͽᵥ��ϵͳ�����������ݣ����Ժ��ٴ�POS������',[]);
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
      ShowMessage('û����Ʒ���Բ鿴!');
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
    ShowMsg(Handle, '����û�������Ա��',[]);
    abort;
  end;
  EmitCartEdit(CardCode);  //�򿪻�Ա����Ϣ
end;

procedure TFrmPOSEdit.act_CtrlTExecute(Sender: TObject);
begin
  inherited;
  if not UserInfo.Is_SysOnline then
  begin
    ShowMsg(Handle, 'ֻ������״̬�²���ʹ�ñ����ܣ�',[]);
    abort;
  end;
  if ShowYesNo(Handle, 'ȷ��Ҫ��������Ļ�Ա��Ϣ��?ѡ���ǡ��������Ա��Ϣ!',[]) = idYes then
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
      if ShowYesNo(Handle, '����δ�ύ�ɹ�����,�Ƿ�ָ������ύ?',[]) = idYes then
      begin
        csMaster.LoadFromFile(onLine+'csMaster.cds');
        //�ָ�������Ҫ��������FID��
        POSBillIDValue:=csMaster.fieldbyname('fid').AsString;
        POSBillNumber := csMaster.fieldByName('FNumber').AsString;
        if FileExists(onLine+'csDetail.cds') then
        csDetail.LoadFromFile(onLine+'csDetail.cds');
        if FileExists(onLine+'cdsScaleAssign.cds') then
        cdsScaleAssign.LoadFromFile(onLine+'cdsScaleAssign.cds');
        if FileExists(onLine+'cds_Vipcard.cds') then
        begin
          cds_Vipcard.LoadFromFile(onLine+'cds_Vipcard.cds');
          //ȡ��Ա��Ϣ
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
              ShowMessage('���һ�Ա���ݳ���:'+errmsg);
              Exit;
            end;
            strVIPInfo :=  cds.FieldByName('fname_l2').AsString ;
            strVIPBonus:= '����: '+FormatFloat('0',cds.fieldbyname('FCurrentBonus').AsFloat)
                           +' ��ֵ��'+FormatFloat('0.0',cds.fieldbyname('FCurrentValue').AsFloat);
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
      DelTempFile;//��ɾ��
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
            if (Trim(barcode)='') or (Trim(rowlist[AmountIndex])='') then   //�������Ϊ�ջ�������Ϊ�� ��������
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
        info.fmaterial_code :='���ϱ��:' + Trim(csDetail.fieldbyname('cfMaterialNumber').AsString)
                              + ' ,��ɫ���:'+ Trim(csDetail.fieldbyname('CFColorCode').AsString)
                              + ' ,����:'+ Trim(csDetail.fieldbyname('cfSIZEName').AsString);
        if Trim(csDetail.fieldbyname('cfCupName').AsString)<>'' then
        begin
          info.fmaterial_code:=info.fmaterial_code+ ' ,�ڳ�:'+ Trim(csDetail.fieldbyname('cfCupName').AsString);
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
          Gio.AddShow('��ʼ��ȡ��棡');
          StorageQty :=  CliDM.Pub_POSCheckSto(info.fmaterial_id,info.fcolor_id,info.fsize_id,info.fcup_id,info.fassNumber,ErrMsg);
          Gio.AddShow('��ȡ�����ɣ�');
          if StorageQty<info.qty then
          begin
            OutMsg :=  '��Ʒ['+info.fmaterial_code+']��治������ǰ���Ϊ��'+FloatTostr(StorageQty)+'����';
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
          OutMsg:='�ֹ�����ʱ�����ݲ�����ͬʱ�����������������ֹ��˻������迪���ŵ�������';
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
   CliDM.Chk_UserRight(UserInfo.RetailPOSID,'posF7'); //���Ȩ��

  if dsMaster.DataSet.FieldByName('ISTATUS').AsInteger = 0 then
  if not dsDetail.DataSet.IsEmpty then
  begin
    ShowMsg(Handle, '�봦��ǰ���ݺ��ٻ��࣡',[]);
    abort;
  end;
  WarehouseRelief;  //F7����
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
    if FBIZDATE <> FormatDateTime('yyyy-mm-dd',CliDM.Get_ServerTime) then   ///ҵ�����ڲ����ڵ�ǰϵͳ���ڼ��ҵ�������Ƿ��ս�owen
    begin
      try
        strsql := 'select 1 from T_POS_DayBalance where FWarehouseID ='+quotedstr(UserInfo.Warehouse_FID)+' and to_char(Begindate,''yyyy-mm-dd'')='+quotedstr(FBIZDATE);
        CliDM.Get_OpenSQL(clidm.cdsTemp,strsql,ErrMsg);
      except
        on e : Exception do
        begin
          ShowMsg(Handle, '��鵱ǰҵ�������Ƿ��ս����:'+E.Message,[]);
        end;
      end;
      if clidm.cdsTemp.RecordCount>0 then
      begin
        ShowMsg(Handle, FBIZDATE+'�Ѿ��ս�������޸�ҵ�����ڡ�CTRL+B����',[]);
        abort;
      end;
    end
    else
    begin
      if FormatDateTime('yyyy-mm-dd',UserInfo.DayEndDay)<>'1899-12-30' then
      if StrToDate(FBIZDATE) <= UserInfo.DayEndDay then
      begin
        ShowMsg(Handle, FBIZDATE+'�Ѿ��ս�������޸�ҵ�����ڡ�CTRL+B����',[]);
        abort;
      end;
    end;
  end;
//  sStyle_Code := Trim(cxStyle.Text);
//  if sStyle_Code='' then cxStyle.Text := FindMaterial
//  else
//  begin
//    //����������֯���ˣ�û�ж��η��䵽������֯����Ʒ����������
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

    //����POS��ϸ
    if BillDetailAppend(cxDetail.DataController.DataSource.DataSet,uStyle_ID,uColor_ID,uSize_ID,uPack_ID,sBarCodeCount,OutMsg) then
    begin
      ClearStyleColorSize;   //���������¼
      Set_Explain_Style;  //�򿪰���������棬���ѡ�д������޸��ۿۡ����ۺ��ۺ���
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
