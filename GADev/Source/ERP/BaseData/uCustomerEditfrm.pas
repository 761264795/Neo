unit uCustomerEditfrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBaseEditFrm, DB, DBClient, cxPC, cxControls, cxSplitter,
  Buttons, jpeg, ExtCtrls, cxTextEdit, cxContainer, cxEdit, cxDBEdit,
  StdCtrls, cxCheckBox, cxMaskEdit, cxDropDownEdit, cxCalendar, cxLabel,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxCurrencyEdit, cxButtonEdit, ADODB, dxSkinsCore, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinscxPCPainter;

type
  TFM_CUstomerEditForm = class(TSTBaseEdit)
    Panel1: TPanel;
    Image1: TImage;
    Btn_Save: TSpeedButton;
    btn_CopyNew: TSpeedButton;
    btn_DelRow: TSpeedButton;
    btn_Fisrt: TSpeedButton;
    btn_por: TSpeedButton;
    btn_next: TSpeedButton;
    btn_last: TSpeedButton;
    spt_Audit: TSpeedButton;
    spt_uAudit: TSpeedButton;
    spt_Bear: TSpeedButton;
    spt_uBear: TSpeedButton;
    btn_close: TSpeedButton;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    cxPageControl1: TcxPageControl;
    cxtabCustGroup: TcxTabSheet;
    cxTabBackPoint: TcxTabSheet;
    TopPl: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Bevel8: TBevel;
    Label55: TLabel;
    Label56: TLabel;
    txt_FNUMBER: TcxDBTextEdit;
    txt_FNAME_L2: TcxDBTextEdit;
    txt_lableFind: TcxTextEdit;
    txt_FSIMPLENAME: TcxDBTextEdit;
    Panel5: TPanel;
    Panel6: TPanel;
    cxLabel1: TcxLabel;
    edt_CustStatus: TcxDBTextEdit;
    cxLabel2: TcxLabel;
    edt_Creator: TcxDBTextEdit;
    dt_createTime: TcxDBDateEdit;
    edt_lastupdateTime: TcxDBDateEdit;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    edt_ForName: TcxDBTextEdit;
    cxLabel7: TcxLabel;
    edt_SimpleCode: TcxDBTextEdit;
    cxLabel8: TcxLabel;
    edt_RegisterNo: TcxDBTextEdit;
    cxLabel9: TcxLabel;
    edt_License: TcxDBTextEdit;
    cxLabel10: TcxLabel;
    edt_TaxNo: TcxDBTextEdit;
    cxLabel11: TcxLabel;
    edt_LawPresent: TcxDBTextEdit;
    cxLabel12: TcxLabel;
    edt_barCode: TcxDBTextEdit;
    chk_InnerCust: TcxDBCheckBox;
    Bevel2: TBevel;
    cxTabBank: TcxTabSheet;
    cxGrid1: TcxGrid;
    cxgridCustGroup: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxgridBackPoint: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGrid3: TcxGrid;
    cxgridBank: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    btnImpFromBranch: TSpeedButton;
    cxLabel13: TcxLabel;
    cxLabel14: TcxLabel;
    cxLabel15: TcxLabel;
    cxLabel16: TcxLabel;
    cxLabel17: TcxLabel;
    edt_PreCust: TcxDBButtonEdit;
    edt_setCust: TcxDBButtonEdit;
    edt_BillingCust: TcxDBButtonEdit;
    edt_deliveryCust: TcxDBButtonEdit;
    cbm_InvoiceType: TcxDBComboBox;
    cxLabel18: TcxLabel;
    cmb_CustKind: TcxDBComboBox;
    cxLabel19: TcxLabel;
    Cur_TaxRate: TcxDBCurrencyEdit;
    cxLabel20: TcxLabel;
    edt_CustLevel: TcxDBButtonEdit;
    cxLabel21: TcxLabel;
    edt_CustWare: TcxDBButtonEdit;
    cxLabel22: TcxLabel;
    edt_CustLoc: TcxDBButtonEdit;
    cxLabel23: TcxLabel;
    edt_Zone: TcxDBButtonEdit;
    cxLabel24: TcxLabel;
    edt_SaleZone: TcxDBButtonEdit;
    cxLabel25: TcxLabel;
    edt_SelSampUnit: TcxDBButtonEdit;
    cxLabel26: TcxLabel;
    cxLabel27: TcxLabel;
    cxLabel28: TcxLabel;
    cxLabel29: TcxLabel;
    dt_StartDate: TcxDBDateEdit;
    dt_endDate: TcxDBDateEdit;
    cur_ConKPI: TcxDBCurrencyEdit;
    cxLabel30: TcxLabel;
    edt_ContactPerson: TcxDBTextEdit;
    cxLabel31: TcxLabel;
    edt_Mobile: TcxDBTextEdit;
    cxLabel32: TcxLabel;
    edt_phone: TcxDBTextEdit;
    cxLabel33: TcxLabel;
    edt_EMail: TcxDBTextEdit;
    cxLabel34: TcxLabel;
    edt_QQ: TcxDBTextEdit;
    cxLabel35: TcxLabel;
    edt_WeiXin: TcxDBTextEdit;
    cxLabel36: TcxLabel;
    edt_Fax: TcxDBTextEdit;
    chk_StartCredit: TcxDBCheckBox;
    cxLabel37: TcxLabel;
    edt_CustAddr: TcxDBTextEdit;
    cxLabel38: TcxLabel;
    edt_SetType: TcxDBButtonEdit;
    cxLabel39: TcxLabel;
    edt_Pay: TcxDBButtonEdit;
    chk_FreezeOrder: TcxDBCheckBox;
    chk_FreezeDelivery: TcxDBCheckBox;
    cxLabel40: TcxLabel;
    edt_CustSendAddr: TcxDBTextEdit;
    edt_lastUpdate: TcxDBTextEdit;
    cxLabel3: TcxLabel;
    btn_DelBackPoint: TSpeedButton;
    btn_NewBackPoint: TSpeedButton;
    btn_DelBank: TSpeedButton;
    btn_Newbank: TSpeedButton;
    cxLabel41: TcxLabel;
    edt_City: TcxDBButtonEdit;
    cxLabel42: TcxLabel;
    edt_County: TcxDBButtonEdit;
    cxLabel43: TcxLabel;
    edt_Province: TcxDBButtonEdit;
    cdsMaster: TClientDataSet;
    dsMaster: TDataSource;
    cdsCustGroup: TClientDataSet;
    dsCustGroup: TDataSource;
    cdsBackPoint: TClientDataSet;
    dsBackPoint: TDataSource;
    dsBank: TDataSource;
    cdsBank: TClientDataSet;
    cdsSave: TClientDataSet;
    btn_New: TSpeedButton;
    cdsCustGroupFID: TWideStringField;
    cdsCustGroupFCUSTOMERGROUPSTANDARDID: TWideStringField;
    cdsCustGroupFCUSTOMERGROUPID: TWideStringField;
    cdsCustGroupFCUSTOMERID: TWideStringField;
    cdsCustGroupFCUSTOMERGROUPFULLNAME: TWideStringField;
    cdsBackPointFID: TWideStringField;
    cdsBackPointCFSETTLEBACKID: TWideStringField;
    cdsBackPointFLASTUPDATETIME: TDateTimeField;
    cdsBankFID: TWideStringField;
    cdsBankFBANK: TWideStringField;
    cdsBankFBANKACCOUNT: TWideStringField;
    cdsBankFBANKADDRESS: TWideStringField;
    cdsBankFACCOUNTNAME: TWideStringField;
    cdsBankFCURRENCY: TWideStringField;
    cdsBankFOPENAREA: TWideStringField;
    cdsMasterFID: TWideStringField;
    cdsMasterFCREATORID: TWideStringField;
    cdsMasterFCREATETIME: TDateTimeField;
    cdsMasterFLASTUPDATEUSERID: TWideStringField;
    cdsMasterFLASTUPDATETIME: TDateTimeField;
    cdsMasterFCONTROLUNITID: TWideStringField;
    cdsMasterFNAME_L1: TWideStringField;
    cdsMasterFNAME_L2: TWideStringField;
    cdsMasterFNAME_L3: TWideStringField;
    cdsMasterFNUMBER: TWideStringField;
    cdsMasterFDESCRIPTION_L1: TWideStringField;
    cdsMasterFDESCRIPTION_L2: TWideStringField;
    cdsMasterFDESCRIPTION_L3: TWideStringField;
    cdsMasterFSIMPLENAME: TWideStringField;
    cdsMasterFCOUNTRYID: TWideStringField;
    cdsMasterFCITYID: TWideStringField;
    cdsMasterFPROVINCE: TWideStringField;
    cdsMasterFREGIONID: TWideStringField;
    cdsMasterFTAXDATAID: TWideStringField;
    cdsMasterFINTERNALCOMPANYID: TWideStringField;
    cdsMasterFFREEZEORGUNITID: TWideStringField;
    cdsMasterFBROWSEGROUPID: TWideStringField;
    cdsMasterFARTIFICIALPERSON: TWideStringField;
    cdsMasterFBIZREGISTERNO: TWideStringField;
    cdsMasterFTXREGISTERNO: TWideStringField;
    cdsMasterFBARCODE: TWideStringField;
    cdsMasterFMNEMONICCODE: TWideStringField;
    cdsMasterFBUSILICENCE: TWideStringField;
    cdsMasterFCUSTOMERKIND: TWideStringField;
    cdsMasterFFOREIGNNAME: TWideStringField;
    cdsMasterFADDRESS: TWideStringField;
    cdsMasterFPARENTID: TWideStringField;
    cdsMasterFINVOICETYPE: TWideStringField;
    cdsMasterCFCUSTOMLEVELID: TWideStringField;
    cdsMasterCFSETTLEDAY: TWideStringField;
    cdsMasterCFLOCATIONID: TWideStringField;
    cdsMasterCFWAREHOUSEID: TWideStringField;
    cdsMasterFDESCRIPTION: TWideStringField;
    cdsMasterCFSALESRANGEID: TWideStringField;
    cdsMasterCFSELSAMPLE_UNITID: TWideStringField;
    cdsMasterCFAREAID: TWideStringField;
    cdsMasterCFHTENDDATE: TDateTimeField;
    cdsMasterCFHTSTARTDATE: TDateTimeField;
    cdsMasterFHELPCODE: TWideStringField;
    cdsMasterFCONTACTPERSON: TWideStringField;
    cdsMasterFPHONE: TWideStringField;
    cdsMasterFMOBILE: TWideStringField;
    cdsMasterFFAX: TWideStringField;
    cdsMasterFEMAIL: TWideStringField;
    cdsMasterCFDELIVERYADDR: TWideStringField;
    cdsMasterFSETTLEMENTORGUNITID: TWideStringField;
    cdsMasterFBILLINGORGUNITID: TWideStringField;
    cdsMasterFDELIVERORGUNITID: TWideStringField;
    cdsBackPointCFSetBackPoint: TStringField;
    cur_setday: TcxDBCurrencyEdit;
    cxgridCustGroupCFStandardName: TcxGridDBColumn;
    cxgridCustGroupCFCustGroupName: TcxGridDBColumn;
    cxgridBackPointCFISDEFAULT: TcxGridDBColumn;
    cxgridBackPointCFBACKPOINT: TcxGridDBColumn;
    cxgridBackPointCFISSTOPED: TcxGridDBColumn;
    cxgridBackPointCFSetBackPoint: TcxGridDBColumn;
    cdsMasterFTAXRATE: TFloatField;
    cxgridBankFBANKACCOUNT: TcxGridDBColumn;
    cxgridBankFBANKADDRESS: TcxGridDBColumn;
    cxgridBankFACCOUNTNAME: TcxGridDBColumn;
    cxgridBankFCURRENCY: TcxGridDBColumn;
    cxgridBankFOPENAREA: TcxGridDBColumn;
    cxgridBankCFBankName: TcxGridDBColumn;
    cdsCustGroupSave: TClientDataSet;
    cdsCustGroupStan: TClientDataSet;
    cdsMasterCFCustLevel: TWideStringField;
    cdsMasterCFWareName: TWideStringField;
    cdsMasterCFLocName: TWideStringField;
    cdsMasterCFZoneName: TWideStringField;
    cdsMasterCFSaleZone: TWideStringField;
    cdsMasterCFSelSampleUnit: TWideStringField;
    cdsMasterCFPayMent: TWideStringField;
    cdsMasterCFSetType: TWideStringField;
    cdsMasterCFproviceName: TWideStringField;
    cdsMasterCFCityName: TWideStringField;
    cdsMasterCFCountyName: TWideStringField;
    cdsMasterCfpreCustName: TWideStringField;
    cdsMasterCFSetCustName: TWideStringField;
    cdsMasterCFBillCustName: TWideStringField;
    cdsMasterCFDeliveryName: TWideStringField;
    cdsMasterCFCreatorName: TWideStringField;
    cdsMasterCFlastUpdatePerson: TWideStringField;
    cdsMasterCFQQNum: TWideStringField;
    cdsMasterCFWeiXinNum: TWideStringField;
    cdsMasterFSettlementTypeID: TWideStringField;
    cdsMasterFPaymentTypeID: TWideStringField;
    cdsMasterFEFFECTEDSTATUS: TFloatField;
    cdsMasterCFHTBACKTARGET: TFloatField;
    cdsMasterFISSTARTCREDIT: TFloatField;
    cdsMasterFISCREDITPROD: TFloatField;
    cdsMasterFISMULTICOPY: TFloatField;
    cdsMasterFISCREDITED: TFloatField;
    cdsMasterFISINTERNALCOMPANY: TFloatField;
    cdsMasterFUSEDSTATUS: TFloatField;
    cdsBackPointFSEQ: TFloatField;
    cdsBankFSEQ: TFloatField;
    cdsSaveFID: TWideStringField;
    cdsSaveFCREATORID: TWideStringField;
    cdsSaveFCREATETIME: TDateTimeField;
    cdsSaveFLASTUPDATEUSERID: TWideStringField;
    cdsSaveFLASTUPDATETIME: TDateTimeField;
    cdsSaveFCONTROLUNITID: TWideStringField;
    cdsSaveFNAME_L1: TWideStringField;
    cdsSaveFNAME_L2: TWideStringField;
    cdsSaveFNAME_L3: TWideStringField;
    cdsSaveFNUMBER: TWideStringField;
    cdsSaveFDESCRIPTION_L1: TWideStringField;
    cdsSaveFDESCRIPTION_L2: TWideStringField;
    cdsSaveFDESCRIPTION_L3: TWideStringField;
    cdsSaveFSIMPLENAME: TWideStringField;
    cdsSaveFCOUNTRYID: TWideStringField;
    cdsSaveFCITYID: TWideStringField;
    cdsSaveFPROVINCE: TWideStringField;
    cdsSaveFREGIONID: TWideStringField;
    cdsSaveFTAXDATAID: TWideStringField;
    cdsSaveFUSEDSTATUS: TFloatField;
    cdsSaveFINTERNALCOMPANYID: TWideStringField;
    cdsSaveFFREEZEORGUNITID: TWideStringField;
    cdsSaveFBROWSEGROUPID: TWideStringField;
    cdsSaveFARTIFICIALPERSON: TWideStringField;
    cdsSaveFBIZREGISTERNO: TWideStringField;
    cdsSaveFISINTERNALCOMPANY: TFloatField;
    cdsSaveFTXREGISTERNO: TWideStringField;
    cdsSaveFEFFECTEDSTATUS: TFloatField;
    cdsSaveFBARCODE: TWideStringField;
    cdsSaveFMNEMONICCODE: TWideStringField;
    cdsSaveFBUSILICENCE: TWideStringField;
    cdsSaveFCUSTOMERKIND: TWideStringField;
    cdsSaveFFOREIGNNAME: TWideStringField;
    cdsSaveFADDRESS: TWideStringField;
    cdsSaveFPARENTID: TWideStringField;
    cdsSaveFINVOICETYPE: TWideStringField;
    cdsSaveFISCREDITED: TFloatField;
    cdsSaveFTAXRATE: TFloatField;
    cdsSaveFISMULTICOPY: TFloatField;
    cdsSaveCFCUSTOMLEVELID: TWideStringField;
    cdsSaveCFSETTLEDAY: TWideStringField;
    cdsSaveCFLOCATIONID: TWideStringField;
    cdsSaveCFWAREHOUSEID: TWideStringField;
    cdsSaveFDESCRIPTION: TWideStringField;
    cdsSaveCFSALESRANGEID: TWideStringField;
    cdsSaveFISCREDITPROD: TFloatField;
    cdsSaveFISSTARTCREDIT: TFloatField;
    cdsSaveCFSELSAMPLE_UNITID: TWideStringField;
    cdsSaveCFAREAID: TWideStringField;
    cdsSaveCFHTENDDATE: TDateTimeField;
    cdsSaveCFHTSTARTDATE: TDateTimeField;
    cdsSaveCFHTBACKTARGET: TFloatField;
    cdsSaveFHELPCODE: TWideStringField;
    cdsSaveCFQQNUM: TWideStringField;
    cdsSaveCFWEIXINNUM: TWideStringField;
    cdsSaveFSETTLEMENTTYPEID: TWideStringField;
    cdsSaveFPAYMENTTYPEID: TWideStringField;
    cdsSaveFSETTLEMENTORGUNITID: TWideStringField;
    cdsSaveFBILLINGORGUNITID: TWideStringField;
    cdsSaveFDELIVERORGUNITID: TWideStringField;
    cdsSaveFCONTACTPERSON: TWideStringField;
    cdsSaveFPHONE: TWideStringField;
    cdsSaveFMOBILE: TWideStringField;
    cdsSaveFFAX: TWideStringField;
    cdsSaveFEMAIL: TWideStringField;
    cdsSaveFISFREEZEORDER: TIntegerField;
    cdsSaveFISFREEZEDELIVERY: TIntegerField;
    cdsSaveCFDELIVERYADDR: TWideStringField;
    cdsMasterFISFREEZEDELIVERY: TIntegerField;
    cdsMasterFISFREEZEORDER: TIntegerField;
    cdsBackPointCFISDEFAULT: TFloatField;
    cdsBackPointCFISSTOPED: TFloatField;
    cdsBackPointCFBACKPOINT: TFloatField;
    cdsCustGroupCFStandardName: TWideStringField;
    cdsCustGroupCFCustGroupName: TWideStringField;
    cdstmp: TClientDataSet;
    cdsBPointtmp: TClientDataSet;
    cdsBankTmp: TClientDataSet;
    cxLabel44: TcxLabel;
    edt_InnerBranch: TcxDBButtonEdit;
    cdsMasterCFInternalcompanyNmae: TWideStringField;
    adods: TADODataSet;
    cxLabel45: TcxLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cdsMasterCFControlUnit: TWideStringField;
    cdsMasterFCreateBranch: TWideStringField;
    cdsSaveFCreateBranch: TWideStringField;
    cxDBCheckBox1: TcxDBCheckBox;
    cdsMasterCFIsGenPurIn: TIntegerField;
    cdsSaveCFIsGenPurIn: TIntegerField;
    cdsBackPointFCUSTOMERCOMPANYINFOID: TWideStringField;
    cdsBankFCUSTOMERCOMPANYINFOID: TWideStringField;
    procedure cdsMasterAfterPost(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure btn_NewClick(Sender: TObject);
    procedure cdsMasterAfterInsert(DataSet: TDataSet);
    procedure btn_closeClick(Sender: TObject);
    procedure Btn_SaveClick(Sender: TObject);
    procedure cxgridCustGroupCFCustGroupNamePropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure btn_NewBackPointClick(Sender: TObject);
    procedure btn_DelBackPointClick(Sender: TObject);
    procedure cdsBackPointAfterInsert(DataSet: TDataSet);
    procedure cdsBankAfterInsert(DataSet: TDataSet);
    procedure cdsBackPointBeforePost(DataSet: TDataSet);
    procedure btn_NewbankClick(Sender: TObject);
    procedure btn_DelBankClick(Sender: TObject);
    procedure spt_AuditClick(Sender: TObject);
    procedure spt_uAuditClick(Sender: TObject);
    procedure spt_BearClick(Sender: TObject);
    procedure spt_uBearClick(Sender: TObject);
    procedure cdsMasterBeforePost(DataSet: TDataSet);
    procedure cdsMasterFCUSTOMERKINDGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cmb_CustKindPropertiesChange(Sender: TObject);
    procedure cbm_InvoiceTypePropertiesChange(Sender: TObject);
    procedure cdsMasterFINVOICETYPEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure F7Button(Sender: TObject;
      AButtonIndex: Integer);
    procedure txt_lableFindPropertiesChange(Sender: TObject);
    procedure btn_DelRowClick(Sender: TObject);
    procedure cdsBackPointCalcFields(DataSet: TDataSet);
    procedure cxgridBackPointCFSetBackPointPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure cdsBankBeforePost(DataSet: TDataSet);
    procedure cdsMasterFUSEDSTATUSGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure btn_FisrtClick(Sender: TObject);
    procedure btn_porClick(Sender: TObject);
    procedure btn_nextClick(Sender: TObject);
    procedure btn_lastClick(Sender: TObject);
    procedure btn_CopyNewClick(Sender: TObject);
    procedure chk_InnerCustClick(Sender: TObject);
    procedure btnImpFromBranchClick(Sender: TObject);
    procedure cdsMasterFINTERNALCOMPANYIDChange(Sender: TField);
  private
    { Private declarations }
    procedure LoadCustGroup(sCustID:string);
    procedure AddCustGroup(sCustID:string);
    function DelData:Boolean;
  public
    { Public declarations }
    CustStatus : Integer;// 0:未审核 1:审核 2:禁用
    IsReference : Boolean;
    listQuery:TClientDataSet;
    Groupstandardid,GroupID,CustFID,sGroupname,sGroupFullname:string;
    IsChange:Boolean;//用于记录打开界面后是否修改过数据
    procedure openData(mFID:string);
    function ST_Save : Boolean; override; //保存单据
    procedure setControlState;
  end;

var
  FM_CUstomerEditForm: TFM_CUstomerEditForm;
  function EditCustomer(_listQuery:TClientDataSet;_Groupstandardid,_GroupID,_CustFID:string;sGroupNameArr: array of string):Boolean;
implementation

uses FrmCliDM,Pub_Fun,uMaterDataSelectHelper,StringUtilClass,uDrpHelperClase;

{$R *.dfm}
function EditCustomer(_listQuery:TClientDataSet;_Groupstandardid,_GroupID,_CustFID:string;sGroupNameArr: array of string):Boolean;
var
ArrayCount : Integer;
begin
  try
    Application.CreateForm(TFM_CUstomerEditForm,FM_CUstomerEditForm);
    FM_CUstomerEditForm.listQuery := TClientDataSet.Create(FM_CUstomerEditForm);
    FM_CUstomerEditForm.listQuery.Data := _listQuery.Data;
    FM_CUstomerEditForm.Groupstandardid := _Groupstandardid;
    FM_CUstomerEditForm.GroupID := _GroupID;
    FM_CUstomerEditForm.CustFID := Trim(_CustFID);
    ArrayCount := High(sGroupNameArr);
    if  ArrayCount>=0 then
    FM_CUstomerEditForm.sGroupname := Trim(sGroupNameArr[0]);
    if  ArrayCount>=1 then
    FM_CUstomerEditForm.sGroupFullname := Trim(sGroupNameArr[1]);
    FM_CUstomerEditForm.ShowModal;
    Result:=FM_CUstomerEditForm.IsChange;
  finally
    FM_CUstomerEditForm.Free;
  end;
end;
procedure TFM_CUstomerEditForm.openData(mFID:string);
var CustSQL,Custgpsql,ErrMsg,strSql:string;
  _cds: array[0..6] of TClientDataSet;
  _SQL: array[0..6] of String;
begin
  _cds[0] := cdsMaster;
  _cds[1] := cdsCustGroupSave;
  _cds[2] := cdsBackPoint;
 // _cds[3] := cdsBank;
  _cds[3] := cdsSave;
  _cds[4] := cdsCustGroupStan ;
  _cds[5] := cdsCustGroup ;
  _cds[6] := cdsBPointtmp;
  CustSQL := ' select cus.*,R.Fname_L2 as CFCustLevel,w.fname_l2 as CFWareName,L.Fname_L2 as CFLocName,A.Fname_L2 as CFZoneName, '+
             ' S.Fname_L2 as CFSaleZone,b.fname_l2 as CFSelSampleUnit,T.Fname_L2 as CFSetType,p.fname_l2 as CFPayMent,V.Fname_L2 as CFproviceName, '+
             ' C.Fname_L2 as CFCityName,d.fname_l2 as CFCountyName,pcus.fname_l2 as CfpreCustName,scus.fname_l2 as CFSetCustName,BCus.Fname_L2 as CFBillCustName '+
             ',Dcus.Fname_L2 as CFDeliveryName,u.fname_l2 as CFCreatorName,Pu.Fname_L2 as CFlastUpdatePerson,g.fname_l2 as CFInternalcompanyNmae,ctl.fname_l2 as CFControlUnit  '+
             '  from t_Bd_Customer cus left join CT_BAS_Customerrating R on cus.cfcustomlevelid=R.Fid  '+
             ' left join t_Db_Warehouse w on w.fid=cus.cfwarehouseid  '+
             ' left join t_Db_Location L on L.Fid=cus.cflocationid  '+
             ' left join t_Bd_Area A on A.fid=cus.cfareaid  '+
             ' left join CT_BD_Salesrange S on S.Fid=cus.cfsalesrangeid '+
             ' left join t_Org_Baseunit b on b.fid=cus.cfselsample_unitid '+
             ' left join T_BD_SettlementType T on T.Fid=cus.FSettlementTypeID  '+
             ' left join T_BD_PaymentType p on p.fid=cus.fpaymenttypeid  '+
             ' left join t_Bd_Province V on v.fid=cus.fprovince  '+
             ' left join t_Bd_City C on c.fid=cus.fcityid  '+
             ' left join T_BD_Region d on d.fid=cus.fregionid  '+
             ' left join t_Bd_Customer pcus on pcus.fid=cus.Fparentid '+
             ' left join t_Bd_Customer sCus on sCus.Fid=cus.FSettlementOrgUnitID  '+
             ' left join t_Bd_Customer BCus on Bcus.fid=cus.FBillingOrgUnitID '+
             ' left join t_Bd_Customer DCus on DCus.Fid=cus.FDeliverOrgUnitID '+
             ' left join t_Pm_User u on U.Fid=cus.fcreatorid  '+
             ' left join t_Pm_User PU on Pu.Fid=cus.flastupdateuserid '+
             ' left join T_Org_baseUnit g on g.fid=cus.FINTERNALCOMPANYID '+
             ' left join t_Org_Baseunit ctl on ctl.fid=cus.FCreateBranch   ' ;
  Custgpsql := ' select A.FID,A.FCUSTOMERGROUPSTANDARDID,A.FCUSTOMERGROUPID,A.FCUSTOMERID,A.FCUSTOMERGROUPFULLNAME,S.Fname_L2 as CFStandardName,G.Fname_L2 as CFCustGroupName '+
                ' from T_BD_CustomerGroupDetail  A left join T_BD_CSSPGroupStandard S on A.FCUSTOMERGROUPSTANDARDID=S.FID  '+
                ' left join T_BD_CSSPGroup G on G.fid=A.FCUSTOMERGROUPID ';
  try
    Screen.Cursor := crHourGlass;
    if Trim(mFID)<>'' then
    begin
      IsReference := CliDM.Chk_Reference(mFID,'t_Bd_Customer');
      _SQL[0] := CustSQL+'  where cus.FID='+quotedstr(Trim(mFID));
      _SQL[1] := ' select * from T_BD_CustomerGroupDetail where FCustomerID='+quotedstr(Trim(mFID));
      _SQL[2] := ' select * from Ct_Ms_Customercustomersettle where FparentID='+quotedstr(Trim(mFID));
      //_SQL[3] := ' select * from T_BD_CustomerCompanyBank where FCUSTOMERCOMPANYINFOID='+quotedstr(Trim(mFID));
      _SQL[3] := ' select * from T_BD_Customer where FID='+quotedstr(Trim(mFID));
      _SQL[4] := ' select * from T_BD_CSSPGroupStandard where (Ftype=0 or Ftype=1) ';
      _SQL[5] := Custgpsql+'  where A.FCUSTOMERID='+quotedstr(Trim(mFID));
      _SQL[6] := ' select FID,fnumber,fname_l2 from CT_BAS_SettlePointType ';
    end
    else
    begin
      IsReference := False;
      _SQL[0] := CustSQL+'  where 1<>1 ';
      _SQL[1] := ' select * from T_BD_CustomerGroupDetail where 1<>1';
      _SQL[2] := ' select * from Ct_Ms_Customercustomersettle where 1<>1';
     // _SQL[3] := ' select * from T_BD_CustomerCompanyBank  where 1<>1 ';
      _SQL[3] := ' select * from T_BD_Customer where 1<>1 ';
      _Sql[4] := ' select * from T_BD_CSSPGroupStandard where (Ftype=0 or Ftype=1)  ';
      _SQL[5] := Custgpsql+' where 1<>1 ';
      _SQL[6] := ' select FID,fnumber,fname_l2 from CT_BAS_SettlePointType ';
    end;

    if not (CliDM.Get_OpenClients_E(custFID,_cds,_SQL,ErrMsg)) then
    begin
      showmsg(self.Handle,'客户资料打开出错:'+ErrMsg,[]);
      Self.Close;
    end;
  finally
    Screen.Cursor := crDefault;
  end;
  CustStatus :=  cdsMaster.fieldbyname('FUSEDSTATUS').AsInteger;
end;
function TFM_CUstomerEditForm.ST_Save : Boolean;
var ErrMsg,strsql : string;
   _cds: array[0..3] of TClientDataSet;
begin
  Result := True;
  if cdsMaster.State in   db.dsEditModes then cdsMaster.Post;
  if cdsSave.State in db.dsEditModes then cdsSave.Post;
  if cdsCustGroup.State in db.dsEditModes then cdsCustGroup.Post;
  if cdsCustGroupSave.State in db.dsEditModes then cdsCustGroupSave.Post;
  if cdsBackPoint.State in db.dsEditModes then cdsBackPoint.Post;
  if cdsBank.State in db.dsEditModes then cdsBank.Post;
  if not FindRecord1(listQuery,'FID',cdsMaster.fieldbyname('FID').AsString,1)  then
  begin
     listQuery.FieldByName('FID').ReadOnly := False;
     listQuery.Append;
     listQuery.FieldByName('FID').AsString:= cdsMaster.fieldbyname('FID').AsString ;
     listQuery.Post;
  end;
  _cds[0] := cdsSave;
  _cds[1] := cdsCustGroupSave;
  _cds[2] := cdsBackPoint;
  _cds[3] := cdsBank;
  try
    if CliDM.Apply_Delta_Ex(_cds,['t_Bd_Customer','T_BD_CustomerGroupDetail','Ct_Ms_Customercustomersettle'],ErrMsg) then
    begin
      Result := True;

    end
    else
    begin
      ShowMsg(Handle, '客户资料保存失败'+ErrMsg,[]);
      Gio.AddShow(ErrMsg);
      Result := False;
    end;
  except
    on E: Exception do
    begin
      ShowMsg(Handle, '客户资料保存失败：'+e.Message,[]);
      Result := False;
    end;
  end;
end;
procedure TFM_CUstomerEditForm.LoadCustGroup(sCustID : string);
begin
  if not cdsCustGroup.Active then Exit;
  cdsCustGroupStan.First;
  cdstmp.Data := cdsCustGroup.Data ;
  while not cdsCustGroupStan.Eof do
  begin
    if not FindRecord1(cdstmp,'FCUSTOMERGROUPSTANDARDID',cdsCustGroupStan.fieldbyname('FID').AsString,1) then
    begin
      cdsCustGroup.Append;
      cdsCustGroup.FieldByName('FID').AsString := CliDM.GetEASSID('68413080');;     //68413080
      cdsCustGroup.FieldByName('FCUSTOMERGROUPSTANDARDID').AsString := cdsCustGroupStan.fieldbyname('FID').AsString;
      cdsCustGroup.FieldByName('FCUSTOMERID').AsString := sCustID;
      cdsCustGroup.FieldByName('CFStandardName').AsString := cdsCustGroupStan.fieldbyname('fName_l2').AsString;
      if (cdsCustGroup.RecordCount=0) And (trim(cdsCustGroup.FieldByName('FCUSTOMERGROUPID').AsString) ='') then
      begin
        cdsCustGroup.FieldByName('FCUSTOMERGROUPID').AsString :=  GroupID;
        cdsCustGroup.FieldByName('CFCustGroupName').AsString  := sGroupname
      end;
      cdsCustGroup.Post;
    end;
    cdsCustGroupStan.Next;
  end;
end;
procedure TFM_CUstomerEditForm.cdsMasterAfterPost(DataSet: TDataSet);
var
  I : Integer;
  sField : string;
begin
  inherited;
  if  cdsSave.Active  then
  begin
    try
      if cdsSave.IsEmpty then
        cdsSave.Append
      else
        cdsSave.Edit;
      for I:= 0 to cdsSave.FieldCount-1 do
      begin
        sField := cdsSave.Fields[I].FieldName;
        if cdsMaster.FindField(sField)<>nil then
          cdsSave.FieldByName(sField).Value := cdsMaster.fieldbyname(sField).Value;
      end;
      if cdsSave.State in db.dsEditModes then cdsSave.Post;
    except
      on E : Exception do
      begin
        showmsg(self.Handle,'客户资料保存出错:'+E.Message,[]);
        Abort;
      end;
    end;
  end;
  AddCustGroup(cdsMaster.fieldbyname('FID').AsString);//处理分类
end;

procedure TFM_CUstomerEditForm.FormShow(Sender: TObject);
begin
  inherited;
  try
    Screen.Cursor := crHourGlass;
    openData(CustFID);
    if Trim(CustFID)='' then btn_New.OnClick(btn_New);
  finally
    Screen.Cursor := crDefault;
  end;
  txt_FNUMBER.SetFocus;
end;

procedure TFM_CUstomerEditForm.btn_NewClick(Sender: TObject);
begin
  inherited;
  if not  cdsMaster.Active then
  begin
    showmsg(self.Handle,'数据源关闭,新增出错!',[]);
    Abort;
  end;
  cdsCustGroup.Close;
  cdsCustGroup.CreateDataSet;
  cdsCustGroup.EmptyDataSet;
  cdsSave.Close;
  cdsSave.CreateDataSet;
  cdsSave.EmptyDataSet;
  cdsBackPoint.Close;
  cdsBackPoint.CreateDataSet;
  cdsBackPoint.EmptyDataSet;
  cdsCustGroupSave.Close;
  cdsCustGroupSave.CreateDataSet;
  cdsCustGroupSave.EmptyDataSet;
  cdsBank.Close;
  cdsBank.CreateDataSet;
  cdsBank.EmptyDataSet;
  cdsMaster.Append;
  txt_FNUMBER.SetFocus;
end;

procedure TFM_CUstomerEditForm.cdsMasterAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FID').AsString := CliDM.GetEASSID('BF0C040E');
  DataSet.FieldByName('FCREATORID').AsString := UserInfo.LoginUser_FID;
  DataSet.FieldByName('CFCreatorName').AsString := UserInfo.LoginUser_Name;
  DataSet.FieldByName('FCREATETIME').AsDateTime := CliDM.Get_ServerTime;
  DataSet.FieldByName('FCUSTOMERKIND').AsInteger := -1;
  DataSet.FieldByName('FTAXRATE').AsFloat := 0;
  DataSet.FieldByName('FInvoiceType').AsFloat := -1;
  DataSet.FieldByName('FCONTROLUNITID').AsString := UserInfo.Controlunitid;
  DataSet.FieldByName('FCreateBranch').AsString := UserInfo.Branch_ID;
  DataSet.FieldByName('CFControlUnit').AsString := UserInfo.Branch_Name;
  DataSet.FieldByName('FISCREDITED').AsFloat := 0;
  DataSet.FieldByName('FBrowseGroupID').AsString := GroupID;
  DataSet.FieldByName('FUSEDSTATUS').AsFloat := 0;
  CustStatus :=  0;
  LoadCustGroup(DataSet.fieldbyname('FID').AsString);
end;

procedure TFM_CUstomerEditForm.btn_closeClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TFM_CUstomerEditForm.Btn_SaveClick(Sender: TObject);
begin
  inherited;

  if ST_save then
    ShowMsg(Handle, '客户资料保存成功!',[]);
end;

procedure TFM_CUstomerEditForm.cxgridCustGroupCFCustGroupNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  if CustStatus <> 0 then
  begin
    ShowMsg(self.Handle,'客户状态不是未审核状态,不能修改!',[]);
    Exit;
  end;
  with Select_TreeBaseData('T_BD_CSSPGroup','客户分类','',' where Fdeletedstatus=1 and  Fcsspgroupstandardid='+quotedstr(cdsCustGroup.fieldbyname('FCUSTOMERGROUPSTANDARDID').AsString)) do
  begin
    if not IsEmpty  then
    begin
      cdsCustGroup.Edit;
      cdsCustGroup.FieldByName('FCUSTOMERGROUPID').AsString := fieldbyname('fid').AsString;
      cdsCustGroup.FieldByName('CFCustGroupName').AsString := fieldbyname('fname_l2').AsString;
      cdsCustGroup.FieldByName('FCUSTOMERID').AsString := cdsMaster.fieldbyname('FID').AsString;
      cdsCustGroup.Post;
    end;
  end;
end;

procedure TFM_CUstomerEditForm.btn_NewBackPointClick(Sender: TObject);
begin
  inherited;
  if not cdsBackPoint.Active then
  begin
    ShowMsg(self.Handle,'数据源没有打开,不能新增!',[]);
    Exit;
  end;
  cdsBackPoint.Append;
end;

procedure TFM_CUstomerEditForm.btn_DelBackPointClick(Sender: TObject);
begin
  inherited;
  if cdsBackPoint.IsEmpty then Exit;
  if  MessageBox(Handle, PChar('确定删除返点类型记录吗？'), '艾尚提示', MB_YESNO) = IDYES then
    cdsBackPoint.Delete;
end;

procedure TFM_CUstomerEditForm.AddCustGroup(sCustID : string );
begin
  cdsCustGroup.First;
  while not cdsCustGroup.Eof do
  begin
    if FindRecord3(cdsCustGroupSave,'FCUSTOMERGROUPSTANDARDID','FCUSTOMERGROUPID','FCUSTOMERID',cdsCustGroup.fieldbyname('FCUSTOMERGROUPSTANDARDID').AsString,
     cdsCustGroup.fieldbyname('FCUSTOMERGROUPID').AsString,sCustID,1) then
    begin
      cdsCustGroupSave.Edit;
      cdsCustGroupSave.FieldByName('FCUSTOMERGROUPSTANDARDID').AsString :=  cdsCustGroup.fieldbyname('FCUSTOMERGROUPSTANDARDID').AsString;
      cdsCustGroupSave.FieldByName('FCUSTOMERGROUPID').AsString := cdsCustGroup.fieldbyname('FCUSTOMERGROUPID').AsString;
      cdsCustGroupSave.FieldByName('FCUSTOMERID').AsString := sCustID;
      cdsCustGroupSave.FieldByName('Fcustomergroupfullname').AsString := StringReplace(sGroupFullname,'_','.',[rfReplaceAll]);
      cdsCustGroupSave.Post;
    end
    else
    begin
      if Trim(cdsCustGroup.fieldbyname('FCUSTOMERGROUPID').AsString)<>'' then
      begin
        cdsCustGroupSave.Append;
        cdsCustGroupSave.FieldByName('FID').AsString := CliDM.GetEASSID('68413080');  //68413080
        cdsCustGroupSave.FieldByName('FCUSTOMERGROUPSTANDARDID').AsString :=  cdsCustGroup.fieldbyname('FCUSTOMERGROUPSTANDARDID').AsString;
        cdsCustGroupSave.FieldByName('FCUSTOMERGROUPID').AsString := cdsCustGroup.fieldbyname('FCUSTOMERGROUPID').AsString;
        cdsCustGroupSave.FieldByName('FCUSTOMERID').AsString := sCustID;
        cdsCustGroupSave.FieldByName('Fcustomergroupfullname').AsString := StringReplace(sGroupFullname,'_','.',[rfReplaceAll]);;
        cdsCustGroupSave.Post;
      end;
    end;
    cdsCustGroup.Next;
  end;
end;
procedure TFM_CUstomerEditForm.cdsBackPointAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FID').AsString := CliDM.GetEASSID('07D13E77');///Get_Guid;
  DataSet.FieldByName('FparentiD').AsString := cdsMaster.fieldbyname('FID').AsString;
  DataSet.FieldByName('CFISDEFAULT').AsFloat := 0;
  DataSet.FieldByName('CFISSTOPED').AsFloat := 0;
  DataSet.FieldByName('CFBACKPOINT').AsFloat :=0;
  DataSet.FieldByName('CFSetBackPoint').AsFloat :=0;
end;

procedure TFM_CUstomerEditForm.cdsBankAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FID').AsString := Get_Guid;
  DataSet.FieldByName('FCUSTOMERCOMPANYINFOID').AsString := cdsMaster.fieldbyname('FID').AsString;
end;

procedure TFM_CUstomerEditForm.cdsBackPointBeforePost(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FLASTUPDATETIME').AsDateTime := CliDM.Get_ServerTime;
end;

procedure TFM_CUstomerEditForm.btn_NewbankClick(Sender: TObject);
begin
  inherited;
  if not cdsBank.Active then
  begin
    ShowMsg(self.Handle,'数据源没有打开,不能新增!',[]);
    Exit;
  end;
  cdsBank.Append;
end;

procedure TFM_CUstomerEditForm.btn_DelBankClick(Sender: TObject);
begin
  inherited;
  if cdsBank.IsEmpty then Exit;
  if  MessageBox(Handle, PChar('确定删除银行记录吗？'), '艾尚提示', MB_YESNO) = IDYES then
    cdsBank.Delete;
end;

procedure TFM_CUstomerEditForm.spt_AuditClick(Sender: TObject);
begin
  inherited;
  if cdsMaster.IsEmpty then Exit;
  try
    CustStatus :=  cdsMaster.fieldbyname('FUSEDSTATUS').AsInteger;
    spt_Audit.Enabled := True;
    if CustStatus <> 0 then
    begin
      ShowMsg(self.Handle,'客户状态必须是未审核状态才能审核',[]);
      Abort;
    end;
    if not (cdsMaster.State in DB.dsEditModes) then cdsMaster.Edit;
    cdsMaster.FieldByName('FUSEDSTATUS').AsInteger :=1;
    cdsMaster.Post;
    if ST_Save then
    begin
      CustStatus :=  cdsMaster.FieldByName('FUSEDSTATUS').AsInteger;
      ShowMsg(self.Handle,'客户审核成功!     ',[]);
    end
    else
    begin
      if not (cdsMaster.State in DB.dsEditModes) then cdsMaster.Edit;
      cdsMaster.FieldByName('FUSEDSTATUS').AsInteger :=0;
      cdsMaster.Post;
      CustStatus :=  cdsMaster.FieldByName('FUSEDSTATUS').AsInteger;
    end;
  finally
    spt_Audit.Enabled := True;
    setControlState;
  end;
  CustStatus :=  cdsMaster.fieldbyname('FUSEDSTATUS').AsInteger;
end;

procedure TFM_CUstomerEditForm.spt_uAuditClick(Sender: TObject);
begin
  inherited;
  if cdsMaster.IsEmpty then Exit;
  try
    CustStatus :=  cdsMaster.fieldbyname('FUSEDSTATUS').AsInteger;
    spt_uAudit.Enabled := True;
    if CustStatus <> 1 then
    begin
      ShowMsg(self.Handle,'客户状态必须是审核状态才能反审核',[]);
      Abort;
    end;
    if not (cdsMaster.State in DB.dsEditModes) then cdsMaster.Edit;
    cdsMaster.FieldByName('FUSEDSTATUS').AsInteger :=0;
    cdsMaster.Post;
    if ST_Save then
    begin
      CustStatus :=  cdsMaster.FieldByName('FUSEDSTATUS').AsInteger;
      ShowMsg(self.Handle,'客户反审核成功!     ',[]);
    end
    else
    begin
      if not (cdsMaster.State in DB.dsEditModes) then cdsMaster.Edit;
      cdsMaster.FieldByName('FUSEDSTATUS').AsInteger :=1;
      cdsMaster.Post;
      CustStatus :=  cdsMaster.FieldByName('FUSEDSTATUS').AsInteger;
    end;
  finally
    spt_uAudit.Enabled := True;
    setControlState;
  end;
  CustStatus :=  0;
end;

procedure TFM_CUstomerEditForm.spt_BearClick(Sender: TObject);
begin
  inherited;
  if cdsMaster.IsEmpty then Exit;
  CustStatus := cdsMaster.FieldByName('FUSEDSTATUS').AsInteger;
  try
    spt_Bear.Enabled := False;
    if CustStatus <> 1 then
    begin
      ShowMsg(self.Handle,'客户状态必须是审核状态才能禁用',[]);
      Abort;
    end;
    if not (cdsMaster.State in DB.dsEditModes) then cdsMaster.Edit;
    cdsMaster.FieldByName('FUSEDSTATUS').AsInteger := 2;
    cdsMaster.Post;
    if ST_Save then
    begin
      CustStatus :=  cdsMaster.FieldByName('FUSEDSTATUS').AsInteger;
      ShowMsg(self.Handle,'客户禁用成功!     ',[]);
    end
    else
    begin
      if not (cdsMaster.State in DB.dsEditModes) then cdsMaster.Edit;
      cdsMaster.FieldByName('FUSEDSTATUS').AsInteger :=1;
      cdsMaster.Post;
      CustStatus :=  cdsMaster.FieldByName('FUSEDSTATUS').AsInteger;
    end;
  finally
    spt_Bear.Enabled := True;
    setControlState;
  end;
  CustStatus :=  cdsMaster.fieldbyname('FUSEDSTATUS').AsInteger;
end;

procedure TFM_CUstomerEditForm.spt_uBearClick(Sender: TObject);
begin
  inherited;
  if cdsMaster.IsEmpty then Exit;
  CustStatus :=  cdsMaster.fieldbyname('FUSEDSTATUS').AsInteger;
  try
    spt_uBear.Enabled := False;
    if CustStatus <> 2 then
    begin
      ShowMsg(self.Handle,'客户状态必须是禁用状态才能反禁用',[]);
      Abort;
    end;
    if not (cdsMaster.State in DB.dsEditModes) then cdsMaster.Edit;
    cdsMaster.FieldByName('FUSEDSTATUS').AsInteger :=1;
    cdsMaster.Post;
    if ST_Save then
    begin
      CustStatus :=  cdsMaster.FieldByName('FUSEDSTATUS').AsInteger;
      ShowMsg(self.Handle,'客户反禁用成功!     ',[]);
    end
    else
    begin
      if not (cdsMaster.State in DB.dsEditModes) then cdsMaster.Edit;
      cdsMaster.FieldByName('FUSEDSTATUS').AsInteger :=2;
      cdsMaster.Post;
      CustStatus :=  cdsMaster.FieldByName('FUSEDSTATUS').AsInteger;
    end;
  finally
    spt_uBear.Enabled := True;
    setControlState;
  end;
  CustStatus :=  cdsMaster.fieldbyname('FUSEDSTATUS').AsInteger;
end;

procedure TFM_CUstomerEditForm.cdsMasterBeforePost(DataSet: TDataSet);
begin
  inherited;
  if trim(DataSet.FieldByName('Fnumber').AsString)='' then
  begin
    ShowMsg(self.Handle,'客户编号为空,不允许保存!',[]);
    Abort;
  end;
  if trim(DataSet.FieldByName('FNAME_L2').AsString)='' then
  begin
    ShowMsg(self.Handle,'客户名称为空,不允许保存!',[]);
    Abort;
  end;
  if chk_Repeat(DataSet.FieldByName('FID').AsString,DataSet.FieldByName('Fnumber').AsString,'T_BD_Customer') then
  begin
    ShowMsg(self.Handle,'客户编号重复,不允许保存!',[]);
    Abort;
  end;
  DataSet.FieldByName('FHELPCODE').AsString := ChnToPY(DataSet.Fieldbyname('FNAME_L2').AsString);
  DataSet.FieldByName('FLASTUPDATEUSERID').AsString := UserInfo.LoginUser_FID;
  DataSet.FieldByName('FLASTUPDATETIME').AsDateTime := CliDM.Get_ServerTime;
end;

procedure TFM_CUstomerEditForm.cdsMasterFCUSTOMERKINDGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  DisplayText := True;
  if Sender.AsString='0' then
    Text := '经销商'
  else if Sender.AsString ='1' then
    Text := '代理商'
  else if Sender.AsString ='2' then
    Text := '分公司'
  else if Sender.AsString ='3' then
    Text := '总公司'
  else if Sender.AsString ='4' then
    Text := '商场'
  else if Sender.AsString ='-1' then
    Text := '';

end;

procedure TFM_CUstomerEditForm.cmb_CustKindPropertiesChange(
  Sender: TObject);
begin
  inherited;
  if  (cdsMaster.State in DB.dsEditModes) then
  begin
    if Trim(cmb_CustKind.Text)='' then
      cdsMaster.FieldByName('FCUSTOMERKIND').AsString := '-1'
    else if Trim(cmb_CustKind.Text)='经销商' then
      cdsMaster.FieldByName('FCUSTOMERKIND').AsString := '0'
    else if Trim(cmb_CustKind.Text)= '代理商' then
      cdsMaster.FieldByName('FCUSTOMERKIND').AsString := '1'
    else if  Trim(cmb_CustKind.Text)= '分公司' then
      cdsMaster.FieldByName('FCUSTOMERKIND').AsString := '2'
    else if Trim(cmb_CustKind.Text)= '总公司' then
      cdsMaster.FieldByName('FCUSTOMERKIND').AsString := '3'
    else if Trim(cmb_CustKind.Text)= '商场' then
      cdsMaster.FieldByName('FCUSTOMERKIND').AsString := '4';
  end;
end;

procedure TFM_CUstomerEditForm.cbm_InvoiceTypePropertiesChange(
  Sender: TObject);
begin
  inherited;
  if  (cdsMaster.State in DB.dsEditModes) then
  begin
    if Trim(cmb_CustKind.Text)='' then
      cdsMaster.FieldByName('FInvoiceType').AsString := '-1'
    else if Trim(cmb_CustKind.Text)='普通发票' then
      cdsMaster.FieldByName('FInvoiceType').AsString := '0'
    else if Trim(cmb_CustKind.Text)= '增值税发票' then
      cdsMaster.FieldByName('FInvoiceType').AsString := '1' ;
  end;
end;

procedure TFM_CUstomerEditForm.cdsMasterFINVOICETYPEGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  DisplayText := True;
  if Sender.AsString='-1' then
    Text :=''
  else if Sender.AsString ='0' then
    Text := '普通发票'
  else if Sender.AsString ='1' then
    Text := '增值税发票';
end;

procedure TFM_CUstomerEditForm.F7Button(
  Sender: TObject; AButtonIndex: Integer);
   var btn : TcxDBButtonEdit;
      hidelist:TStringList;
      thisFieldName,fidFieldname,tableName,title:string;
begin
  if CustStatus <> 0 then
  begin
    ShowMsg(self.Handle,'客户状态不是未审核状态,不能修改!',[]);
    Exit;
  end;
  try
    hidelist := TStringList.Create;
    btn := TcxDBButtonEdit(Sender);
    hidelist.DelimitedText := btn.Hint;
    if hidelist.Count <> 3 then Exit;
    thisFieldName := btn.DataBinding.Field.FieldName;
    tableName     := hidelist[0];
    fidFieldname  := hidelist[1];
    title         := hidelist[2];
    if UpperCase(fidFieldname)='FINTERNALCOMPANYID' then
    begin
      if cdsMaster.FieldByName('FISINTERNALCOMPANY').AsFloat=0 then
      begin
        ShowMsg(self.Handle,'请先勾选内部客户,再选择对应机构!',[]);
        Abort;
      end;
    end;
//    if UpperCase(thisFieldName) = uppercase('sgpName') then
//    begin
//      if IsReference then
//      begin
//        ShowMsg(self.Handle,'客户已经被业务单据引用,不允许修改!',[]);
//        Abort;
//      end;
//    end;
    with Select_BaseData(tableName,title,'','') do
    begin
      if not IsEmpty then
      begin
        cdsMaster.Edit;
        cdsMaster.FieldByName(fidFieldname).AsString := fieldbyname('fid').AsString;
        cdsMaster.FieldByName(thisFieldName).AsString := fieldbyname('fname_l2').AsString;
        cdsMaster.Post;
      end;
    end;
  finally
    hidelist.Free;
  end;
end;
function TFM_CUstomerEditForm.DelData:Boolean;
var _sql,ErrMsg,FID:string;
begin
  try
    if cdsMaster.IsEmpty then Exit;
    btn_DelRow.Enabled := False;
    Result := False;
    if IsReference then
    begin
      ShowMsg(self.Handle,'客户数据已被业务单据引用,不允许删除!    ',[]);
      Abort;
    end;
    if CustStatus <> 0 then
    begin
      ShowMsg(self.Handle,'客户状态必须是未审核状态才能删除!    ',[]);
      Abort;
    end;
    FID := cdsMaster.fieldbyname('FID').AsString;
    Result := CliDM.E_DelBaseData('T_BD_customer',FID,ErrMsg);
    if not Result then
    begin
      ShowMsg(self.Handle,'客户数据删除失败:'+ErrMsg,[]);
      Gio.AddShow('客户数据删除失败:'+ErrMsg);
      Abort;
    end;
    IsChange := True;
    if FindRecord1(listQuery,'FID',cdsMaster.fieldbyname('FID').AsString,1) then
      listQuery.Delete;
    if listQuery.IsEmpty then
    Self.Close
    else
    begin
      btn_DelRow.Enabled := True;
      openData(listQuery.fieldbyname('FID').AsString);
    end;
  finally
    btn_DelRow.Enabled := True;
    setControlState;
  end;
end;
procedure TFM_CUstomerEditForm.txt_lableFindPropertiesChange(
  Sender: TObject);
begin
  inherited;
  Findlablecaption(Self,Trim(txt_lableFind.Text),'Label55');
end;

procedure TFM_CUstomerEditForm.btn_DelRowClick(Sender: TObject);
begin
  inherited;
  if  MessageBox(Handle, PChar('确定删除客户资料吗？'), '艾尚提示', MB_YESNO) = IDYES then
  if  DelData then
  begin
    showmsg(self.Handle,'客户删除成功!',[]);
  end;
end;
procedure TFM_CUstomerEditForm.setControlState;
begin
  if Self.CustStatus = 0 then
  begin
    Btn_Save.Enabled  := True;
    spt_Audit.Enabled := True;
    spt_uAudit.Enabled := False;
    spt_Bear.Enabled := False;
    spt_uBear.Enabled := False;
    btn_Newbank.Enabled := True;
    btn_DelBank.Enabled := True;
    btn_NewBackPoint.Enabled := True;
    btn_DelBackPoint.Enabled := True;
    cxgridCustGroup.OptionsData.Editing := True ;
    cxgridBackPoint.OptionsData.Editing := True;
    cxgridBank.OptionsData.Editing := True;
  end;
  if Self.CustStatus = 1 then
  begin
    Btn_Save.Enabled  := False;
    spt_Audit.Enabled := False;
    spt_uAudit.Enabled := True;
    spt_Bear.Enabled := True;
    spt_uBear.Enabled := False;
    btn_Newbank.Enabled := False;
    btn_DelBank.Enabled := False;
    btn_NewBackPoint.Enabled := False;
    btn_DelBackPoint.Enabled := False;
    cxgridCustGroup.OptionsData.Editing := False ;
    cxgridBackPoint.OptionsData.Editing := False;
    cxgridBank.OptionsData.Editing := False;
  end;
  if Self.CustStatus = 2 then
  begin
    Btn_Save.Enabled  := False;
    spt_Audit.Enabled := False;
    spt_uAudit.Enabled := False;
    spt_Bear.Enabled := False;
    spt_uBear.Enabled := True;
    btn_Newbank.Enabled := False;
    btn_DelBank.Enabled := False;
    btn_NewBackPoint.Enabled := False;
    btn_DelBackPoint.Enabled := False;
    cxgridCustGroup.OptionsData.Editing := False ;
    cxgridBackPoint.OptionsData.Editing := False;
    cxgridBank.OptionsData.Editing := False;
  end;
  if    listQuery.IsEmpty then
  begin
    btn_por.Enabled   := False;
    btn_Fisrt.Enabled := False;
    btn_next.Enabled  := False;
    btn_last.Enabled  := False;
    cxgridCustGroup.OptionsData.Editing := True ;
    cxgridBank.OptionsData.Editing := True;
  end
  else
  begin
    btn_por.Enabled := not listQuery.Bof;
    btn_Fisrt.Enabled := not listQuery.Bof;
    btn_next.Enabled := not listQuery.Eof;
    btn_last.Enabled := not listQuery.Eof;
    cxgridCustGroup.OptionsData.Editing := cdsMaster.FieldByName('FUsedStatus').AsFloat=0 ;
    cxgridBackPoint.OptionsData.Editing := cdsMaster.FieldByName('FUsedStatus').AsFloat=0 ;
    cxgridBank.OptionsData.Editing := cdsMaster.FieldByName('FUsedStatus').AsFloat=0;
  end;
end;
procedure TFM_CUstomerEditForm.cdsBackPointCalcFields(DataSet: TDataSet);
begin
  inherited;
  if DataSet.FindField('CFSetBackPoint')<> nil then
  begin
    if FindRecord1(cdsBPointtmp,'FID',DataSet.fieldbyname('CFSETTLEBACKID').AsString,1) then
      cdsBackPoint.FieldByName('CFSetBackPoint').AsString := cdsBPointtmp.fieldbyname('Fname_l2').AsString;
  end;
end;

procedure TFM_CUstomerEditForm.cxgridBackPointCFSetBackPointPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  with Select_BaseData('CT_BAS_SettlePointType','选择返点类型','','') do
  begin
    cdsBackPoint.FieldByName('CFSETTLEBACKID').AsString := fieldbyname('FID').AsString;
    
  end;

end;

procedure TFM_CUstomerEditForm.cdsBankBeforePost(DataSet: TDataSet);
begin
  inherited;
  if trim(DataSet.FieldByName('FBANK').AsString)='' then
  begin
    ShowMsg(self.Handle,'开户银行为空,不允许保存!',[]);
    Abort;
  end;
end;

procedure TFM_CUstomerEditForm.cdsMasterFUSEDSTATUSGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  DisplayText := True;
  if Sender.AsFloat =0 then
    Text := '未审核'
  else if Sender.AsFloat=1 then
    Text := '审核'
  else if Sender.AsFloat=2  then
    Text := '禁用';
end;

procedure TFM_CUstomerEditForm.btn_FisrtClick(Sender: TObject);
begin
  inherited;
  if not listQuery.Bof then
  begin
    listQuery.First;
    openData(listQuery.fieldbyname('fid').AsString);
  end;
end;

procedure TFM_CUstomerEditForm.btn_porClick(Sender: TObject);
begin
  inherited;
  if not listQuery.Bof then
  begin
    listQuery.Prior;
    openData(listQuery.fieldbyname('fid').AsString);
  end;
end;

procedure TFM_CUstomerEditForm.btn_nextClick(Sender: TObject);
begin
  inherited;
  if not listQuery.Eof then
  begin
    listQuery.Next;
    openData(listQuery.fieldbyname('fid').AsString);
  end;
end;

procedure TFM_CUstomerEditForm.btn_lastClick(Sender: TObject);
begin
  inherited;
  if not listQuery.Eof then 
  begin
    listQuery.Last;
    openData(listQuery.fieldbyname('fid').AsString);
  end;
end;

procedure TFM_CUstomerEditForm.btn_CopyNewClick(Sender: TObject);
var
  I : Integer;
  sField : string;
  event :TDataSetNotifyEvent;
begin
  inherited;
  if cdsMaster.IsEmpty then Exit;

  try
    event := cdsMaster.AfterInsert;
    cdsMaster.AfterInsert := nil ;
    cdstmp.Data := cdsMaster.Data;
    cdsSave.Close;
    cdsSave.CreateDataSet;
    cdsSave.EmptyDataSet;
    cdsMaster.Append;
    for I := 0 to cdstmp.FieldCount-1 do
    begin
      sField := cdstmp.Fields[i].FieldName;
      if (sField='FCREATORID') or (sField='FCREATETIME') or(sField='FUSEDSTATUS') then
      begin
        cdsMaster.FieldByName('FCREATORID').AsString := UserInfo.LoginUser_FID;
        cdsMaster.FieldByName('CFCreatorName').AsString := UserInfo.LoginUser_Name;
        cdsMaster.FieldByName('FCREATETIME').AsDateTime := CliDM.Get_ServerTime;
        cdsMaster.FieldByName('FUSEDSTATUS').AsFloat := 0;
      end
      else if UpperCase(sField)='FNAME_L2' then
        cdsMaster.FieldByName(sField).AsString :=cdstmp.fieldbyname(sField).AsString+'_Copy'
      else if  sField='FID' then
        cdsMaster.FieldByName(sField).AsString := CliDM.GetEASSID('BF0C040E')
      else
      if  (uppercase(sField)<>uppercase('FCreateBranch')) then
        cdsMaster.FieldByName(sField).Value :=  cdstmp.FieldByName(sField).Value ;
    end;
    if not cdsBackPoint.IsEmpty then
    begin
      cdstmp.Data := cdsBackPoint.Data;
      cdstmp.First;
      cdsBackPoint.Close;
      cdsBackPoint.CreateDataSet;
      cdsBackPoint.EmptyDataSet;
      while not cdstmp.Eof do
      begin
        cdsBackPoint.Append;
        cdsBackPoint.FieldByName('CFSETTLEBACKID').AsString := cdstmp.fieldbyname('CFSETTLEBACKID').AsString;
        cdsBackPoint.FieldByName('CFSetBackPoint').AsFloat :=  cdstmp.fieldbyname('CFSetBackPoint').AsFloat;
        cdsBackPoint.FieldByName('CFISDEFAULT').AsFloat := cdstmp.fieldbyname('CFISDEFAULT').AsFloat;
        cdsBackPoint.FieldByName('CFISSTOPED').AsFloat := cdstmp.fieldbyname('CFISSTOPED').AsFloat;
        cdsBackPoint.FieldByName('CFBACKPOINT').AsFloat := cdstmp.fieldbyname('CFBACKPOINT').AsFloat;
        cdsBackPoint.Post;
        cdstmp.Next;
      end;
    end;
    if not cdsCustGroup.IsEmpty then
    begin
      cdstmp.Data := cdsCustGroup.Data;
      cdstmp.First;
      cdsCustGroup.Close;
      cdsCustGroup.CreateDataSet;
      cdsCustGroup.EmptyDataSet;
      cdsCustGroupSave.Close;
      cdsCustGroupSave.CreateDataSet;
      cdsCustGroupSave.EmptyDataSet;
      while not cdstmp.Eof do
      begin
        cdsCustGroup.Append;
        cdsCustGroup.FieldByName('FCUSTOMERGROUPSTANDARDID').AsString := cdstmp.fieldbyname('FCUSTOMERGROUPSTANDARDID').AsString;
        cdsCustGroup.FieldByName('FCUSTOMERGROUPID').AsString := cdstmp.fieldbyname('FCUSTOMERGROUPID').AsString;
        cdsCustGroup.FieldByName('FCUSTOMERID').AsString := cdsMaster.fieldbyname('FID').AsString;
        cdsCustGroup.FieldByName('CFStandardName').AsString := cdstmp.fieldbyname('CFStandardName').AsString;
        cdsCustGroup.FieldByName('CFCustGroupName').AsString := cdstmp.fieldbyname('CFCustGroupName').AsString;
        cdsCustGroup.Post;
        cdstmp.Next;
      end;
    end;
  finally
    cdsMaster.AfterInsert := event;
  end;
end;

procedure TFM_CUstomerEditForm.chk_InnerCustClick(Sender: TObject);
begin
  inherited;
  if not chk_InnerCust.Checked then
  begin
    cdsMaster.FieldByName('CFInternalcompanyNmae').AsString := '';
    cdsMaster.FieldByName('FINTERNALCOMPANYID').AsString := '';
  end;
end;

procedure TFM_CUstomerEditForm.btnImpFromBranchClick(Sender: TObject);
var ErrMsg,sFid : string;
   _cds: array[0..3] of TClientDataSet;
   StringList:TStringList;
   acCount,errCount : Integer;
begin

  acCount := 0;
  errCount:= 0;
  adods:= Select_Branch('','',0);
  adods.first;
  cdsSave.Close;
  cdsSave.CreateDataSet;
  cdsSave.EmptyDataSet;
  cdsCustGroupSave.Close;
  cdsCustGroupSave.CreateDataSet;
  cdsCustGroupSave.EmptyDataSet;
  cdsBackPoint.Close;
  cdsBackPoint.CreateDataSet;
  cdsBackPoint.EmptyDataSet;
  cdsBank.Close;
  cdsBank.CreateDataSet;
  cdsBank.EmptyDataSet;
  try
    StringList:=TStringList.Create;
    while not adods.Eof do
    begin
      cdsSave.Append;
      cdsSave.FieldByName('FID').AsString := CliDM.GetEASSID('BF0C040E');
      cdsSave.FieldByName('FCREATORID').AsString := UserInfo.LoginUser_FID;
      cdsSave.FieldByName('FCREATETIME').AsDateTime := CliDM.Get_ServerTime;
      cdsSave.FieldByName('FCUSTOMERKIND').AsInteger := -1;
      cdsSave.FieldByName('FTAXRATE').AsFloat := 0;
      cdsSave.FieldByName('FInvoiceType').AsFloat := -1;
      cdsSave.FieldByName('FCONTROLUNITID').AsString := UserInfo.Controlunitid;
      cdsSave.FieldByName('FISCREDITED').AsFloat := 0;
      cdsSave.FieldByName('FBrowseGroupID').AsString := GroupID;
      cdsSave.FieldByName('FUSEDSTATUS').AsFloat := 0;
      cdsSave.FieldByName('fnumber').AsString := adods.fieldbyname('fnumber').AsString;
      cdsSave.FieldByName('fname_l2').AsString := adods.fieldbyname('fname_l2').AsString;
      if chk_Repeat(cdsSave.FieldByName('FID').AsString,cdsSave.FieldByName('Fnumber').AsString,'T_BD_Customer') then
      begin
        inc(errCount);
        StringList.Add('客户编号'+adods.fieldbyname('fnumber').AsString+'重复,跳过导入!');
        adods.Next;
        Continue;
      end;
      cdsSave.Post;
      LoadCustGroup(cdsSave.FieldByName('FID').AsString );
      AddCustGroup(cdsSave.FieldByName('FID').AsString );
      sFid := cdsSave.FieldByName('FID').AsString;
      _cds[0] := cdsSave;
      _cds[1] := cdsCustGroupSave;
      _cds[2] := cdsBackPoint;
      _cds[3] := cdsBank;
      try
        if CliDM.Apply_Delta_Ex(_cds,['t_Bd_Customer','T_BD_CustomerGroupDetail','Ct_Ms_Customercustomersettle','T_BD_CustomerCompanyBank'],ErrMsg) then
        begin
          inc(acCount);
        end
        else
        begin
         //ShowMsg(Handle, '客户资料保存失败'+ErrMsg,[]);
          Gio.AddShow(ErrMsg);
          Inc(errCount);
          StringList.Add('客户编号'+adods.fieldbyname('fnumber').AsString+'保存失败:'+ErrMsg);
        end;
      except
        on E: Exception do
        begin
          ShowMsg(Handle, '客户资料保存失败：'+e.Message,[]);
        end;
      end;
      adods.Next();
    end;
    openData(sFid);
    //ShowMsg(Handle, '客户资料导入成功',[]);
    ShowListMsg('导入完成,成功 '+inttostr(acCount)+' 条,失败或跳过 '+inttostr(errCount)+' 条!',StringList);
  finally
    StringList.Free;
  end;
 // ST_Save;
end;

procedure TFM_CUstomerEditForm.cdsMasterFINTERNALCOMPANYIDChange(
  Sender: TField);
  var
    strSql ,ErrMsg: string;
begin
  inherited;
  strSql := ' select 1 from t_Bd_Customer where FINTERNALCOMPANYID='+quotedstr(Sender.AsString);
  CliDM.Get_OpenSQL(CliDM.cdsTemp,strSql,ErrMsg);
  if not  CliDM.cdsTemp.IsEmpty then
  begin
    ShowMsg(Handle, '机构已经存在对应的内部客户!'+ErrMsg,[]);
    Abort;
  end;
end;

end.
