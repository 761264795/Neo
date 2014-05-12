
unit FrmCliMain;
//���н���ĵ�ɫֵ  $00FBF3EC,����ͳһ  
interface

uses
  Windows, SysUtils, Variants, Classes, Graphics, Controls, Forms,Messages,
  Dialogs, dxBar, untFunctions, UntTIO,
  ExtCtrls, IniFiles, AppEvnts, DB, DBClient, StdCtrls,ShellAPI,
  ADODB, cxPC, dxStatusBar, 
  dxNavBarCollns, 
  ActnList, 
  Menus, Buttons, 
  
  
  
  IdIcmpClient, 
  
  cxDBRichEdit, cxDBEdit,
  cxLabel, cxGridLevel, 
  cxGridCustomTableView, cxGridDBTableView, cxGrid,
  cxButtons, 
  DateUtils, cxStyles, 
  cxEdit, IdBaseComponent,
  IdComponent, IdRawBase, IdRawClient, ImgList, cxMemo, cxRichEdit,
  cxTextEdit, cxContainer, cxGridTableView, cxClasses, cxControls,
  cxGridCustomView, 
  cxTL, cxMaskEdit,
  cxInplaceContainer, cxDBTL, cxTLData,
  uListFormBaseFrm,
  cxDropDownEdit, cxCalendar, 
  
  StringUtilClass, cxGraphics, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxDBData, cxLookAndFeelPainters, cxTLdxBarBuiltInMenu,
  dxGDIPlusClasses, jpeg, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinsdxStatusBarPainter,
  dxSkinscxPCPainter, dxSkinsdxBarPainter,uI3BaseFrm;


type TFormClass   =   class   of   TListFormBaseFrm;

type TModalFormClass   =   class   of   TForm;
type
  TFMCliMain = class(TI3BaseFrm)
    dxBarManager1: TdxBarManager;
    dxBarButton5: TdxBarButton;
    dxbrsbtm1: TdxBarSubItem;
    AppEvents: TApplicationEvents;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    ADOStoredProc1: TADOStoredProc;
    P_top: TPanel;
    dxStatusBar1: TdxStatusBar;
    mainPg: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    Image1: TImage;
    Splitter1: TSplitter;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    lb_retrun: TLabel;
    lb_set: TLabel;
    lb_help: TLabel;
    lb_exit: TLabel;
    Image7: TImage;
    lblUserInifo: TLabel;
    lb_DRP: TLabel;
    ImageList1: TImageList;
    img_MsgBox: TImage;
    lb_Lmsg: TLabel;
    Image11: TImage;
    Image12: TImage;
    lb_msg: TLabel;
    tmrDownData: TTimer;
    cdsQry: TClientDataSet;
    actList: TActionList;
    cdsUserRole: TClientDataSet;
    mainPm: TPopupMenu;
    Rlogin: TMenuItem;
    N7: TMenuItem;
    Pm_exit: TMenuItem;
    Saveimg: TSaveDialog;
    OpenDg: TOpenDialog;
    P_MsgBox: TPanel;
    lb_POS: TLabel;
    ICMP: TIdIcmpClient;
    tmrPing: TTimer;
    cxGrid1: TcxGrid;
    NMGrid: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    OMGrid: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    Panel2: TPanel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    Panel1: TPanel;
    cxtxBT: TcxDBTextEdit;
    cxLabel1: TcxLabel;
    GroupBox3: TGroupBox;
    cxGrid3: TcxGrid;
    cxAttachmentlist: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    GroupBox4: TGroupBox;
    cxDBRichEdit1: TcxDBRichEdit;
    pnl1: TPanel;
    cxpgcntrl1: TcxPageControl;
    cxtbsht1: TcxTabSheet;
    cxtbsht2: TcxTabSheet;
    img1: TImage;
    pnl2: TPanel;
    btn1: TcxButton;
    pnl3: TPanel;
    img2: TImage;
    pnl6: TPanel;
    img6: TImage;
    spl1: TSplitter;
    dsNewMessage: TClientDataSet;
    dsOldMessage: TClientDataSet;
    dsNew: TDataSource;
    dsOld: TDataSource;
    dsATTACHMEN: TClientDataSet;
    ds_ATTACHMEN: TDataSource;
    cxAttachmentlistColumn1: TcxGridDBColumn;
    cxAttachmentlistColumn2: TcxGridDBColumn;
    cxAttachmentlistColumn3: TcxGridDBColumn;
    NMGridColumn1: TcxGridDBColumn;
    NMGridColumn2: TcxGridDBColumn;
    NMGridColumn3: TcxGridDBColumn;
    NMGridColumn4: TcxGridDBColumn;
    OMGridColumn1: TcxGridDBColumn;
    OMGridColumn2: TcxGridDBColumn;
    OMGridColumn3: TcxGridDBColumn;
    OMGridColumn4: TcxGridDBColumn;
    Image6: TImage;
    Label1: TLabel;
    autoRefInfo: TTimer;
    bt_send: TSpeedButton;
    bt_rec: TSpeedButton;
    bt_fFead: TSpeedButton;
    bt_nRead: TSpeedButton;
    cxtbsht3: TcxTabSheet;
    LeftPanel: TPanel;
    lb_MPS: TLabel;
    Label10: TLabel;
    lb_Database: TLabel;
    Label14: TLabel;
    lb_System: TLabel;
    Label17: TLabel;
    lb_report: TLabel;
    Label19: TLabel;
    lb_BI: TLabel;
    Panel3: TPanel;
    lb_ModelName: TLabel;
    dsMenu: TDataSource;
    cdsMenu: TClientDataSet;
    cdsMenuFID: TWideStringField;
    cdsMenuFNUMBER: TWideStringField;
    cdsMenuFNAME_L1: TWideStringField;
    cdsMenuFPARENTID: TWideStringField;
    cdsMenuFImgageIndex: TIntegerField;
    TreeList: TcxDBTreeList;
    cxDBTreeList1cxDBTreeListColumn1: TcxDBTreeListColumn;
    cxDBTreeList1cxDBTreeListColumn2: TcxDBTreeListColumn;
    cxDBTreeList1cxDBTreeListColumn3: TcxDBTreeListColumn;
    cxDBTreeList1cxDBTreeListColumn6: TcxDBTreeListColumn;
    TreePm: TPopupMenu;
    N1: TMenuItem;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyleRepository2: TcxStyleRepository;
    cxStyle2: TcxStyle;
    cxStyleRepository3: TcxStyleRepository;
    cxStyle3: TcxStyle;
    Image8: TImage;
    Image10: TImage;
    Txt_helpCode: TcxTextEdit;
    Image13: TImage;
    dBegin: TcxDateEdit;
    Dend: TcxDateEdit;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Image14: TImage;
    cxLabel4: TcxLabel;
    Label2: TLabel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    ScrollBox1: TScrollBox;
    lb_Leftmove: TLabel;
    lb_Rigthmove: TLabel;
    N_AddMain: TMenuItem;
    lb_APP: TLabel;
    cxGrid4: TcxGrid;
    cxTX: TcxGridDBTableView;
    cxGridLevel3: TcxGridLevel;
    cxSMSPage: TcxPageControl;
    cxTabSheet2: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    btnRefresh: TSpeedButton;
    cxMM_tel: TcxMemo;
    cxMM_DES: TcxMemo;
    cdsTX: TClientDataSet;
    dsTX: TDataSource;
    cdsTXFID: TStringField;
    cdsTXFitem: TStringField;
    cdsTXFValue: TStringField;
    cxTXFID: TcxGridDBColumn;
    cxTXFitem: TcxGridDBColumn;
    cxTXFValue: TcxGridDBColumn;
    cxStyleRepository4: TcxStyleRepository;
    cxStyle4: TcxStyle;
    Label3: TLabel;
    Label4: TLabel;
    pm_Down: TPopupMenu;
    N_DownFile: TMenuItem;
    SaveDg: TSaveDialog;
    spt_AppEdit: TSpeedButton;
    SpeedButton2: TSpeedButton;
    cdsMenufHelpCode: TWideStringField;
    dsFilterMenu: TDataSource;
    cdsFilterMenu: TClientDataSet;
    FilterGrid: TcxGrid;
    tv_FilterMenu: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridLevel4: TcxGridLevel;
    cxStyleRepository5: TcxStyleRepository;
    cxStyle5: TcxStyle;
    pct_LeftPge: TcxPageControl;
    ts_App: TcxTabSheet;
    ts_report: TcxTabSheet;
    ReportTree: TcxDBTreeList;
    TreeListcxDBTreeListColumn2: TcxDBTreeListColumn;
    TreeListcxDBTreeListColumn1: TcxDBTreeListColumn;
    TreeListcxDBTreeListColumn3: TcxDBTreeListColumn;
    TreeListcxDBTreeListColumn4: TcxDBTreeListColumn;
    TreeListcxDBTreeListColumn5: TcxDBTreeListColumn;
    TreeListcxDBTreeListColumn6: TcxDBTreeListColumn;
    TreeListcxDBTreeListColumn7: TcxDBTreeListColumn;
    TreeListcxDBTreeListColumn8: TcxDBTreeListColumn;
    TreeListcxDBTreeListColumn9: TcxDBTreeListColumn;
    TreeListcxDBTreeListColumn10: TcxDBTreeListColumn;
    TreeListcxDBTreeListColumn11: TcxDBTreeListColumn;
    TreeListcxDBTreeListColumn12: TcxDBTreeListColumn;
    TreeListcxDBTreeListColumn13: TcxDBTreeListColumn;
    TreeListcxDBTreeListColumn14: TcxDBTreeListColumn;
    TreeListcxDBTreeListColumn15: TcxDBTreeListColumn;
    dsType: TDataSource;
    cdsType: TClientDataSet;
    cdsTypeID: TStringField;
    cdsTypeTREEID: TStringField;
    cdsTypeFNUMBER: TStringField;
    cdsTypeREPORTTYPENAME: TStringField;
    cdsTypeFPARENTID: TStringField;
    cdsTypeFISROOT: TIntegerField;
    cdsTypeFIMGAGEINDEX: TIntegerField;
    cdsTypeFSELECTIMGAGEINDEX: TIntegerField;
    cdsTypeFISSYSTEM: TIntegerField;
    cdsTypeFLEVEL: TFloatField;
    cdsTypeFVISIBLE: TIntegerField;
    cdsTypeFTABLENAME: TStringField;
    cdsTypeFCREATORID: TStringField;
    cdsTypeFLASTUPDATEUSERID: TStringField;
    cdsTypeFLONGNUMBER: TStringField;
    cdsQueryFind: TADODataSet;
    Panel10: TPanel;
    Label8: TLabel;
    lb_SyCount: TLabel;
    Label5: TLabel;
    lb_SmsCount: TLabel;
    Label6: TLabel;
    lb_fcCount: TLabel;
    Panel11: TPanel;
    Label7: TLabel;
    cdsTxQuery: TClientDataSet;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    cdsMsgQuery: TClientDataSet;
    Image15: TImage;
    procedure dxBarButton5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure AppEventsException(Sender: TObject; E: Exception);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure dxBarButton1Click(Sender: TObject);
    procedure lb_retrunMouseEnter(Sender: TObject);
    procedure lb_retrunMouseLeave(Sender: TObject);
    procedure Label5MouseEnter(Sender: TObject);
    procedure Label5MouseLeave(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure lb_msgClick(Sender: TObject);
    procedure lb_msgBoxExitClick(Sender: TObject);
    procedure lb_exitClick(Sender: TObject);
    procedure lb_retrunClick(Sender: TObject);
    procedure mainPgCanClose(Sender: TObject; var ACanClose: Boolean);
    procedure mainPgDblClick(Sender: TObject);
    procedure kingdeeURLClick(Sender: TObject);
    procedure BarItemTranDataClick(Sender: TObject);
    procedure tmrDownDataTimer(Sender: TObject);
    procedure MainDayBalanceClick(Sender: TObject);
    procedure mainNavFillFreightApplyClick(Sender: TObject);
    procedure mainNavPOSListClick(Sender: TObject);
    procedure act_T_FA_FaDispatchBill_ListExecute(Sender: TObject);
    procedure actT_IM_MoveIssueBill_ListExecute(Sender: TObject);
    procedure actT_IM_MoveInWarehsBill_ListExecute(Sender: TObject);
    procedure actFillFreight_ListExecute(Sender: TObject);
    procedure actPOSNewExecute(Sender: TObject);
    procedure actPurInWarehs_NewExecute(Sender: TObject);
    procedure actMoveIssue_NewExecute(Sender: TObject);
    procedure lb_setClick(Sender: TObject);
    procedure Pm_exitClick(Sender: TObject);
    procedure RloginClick(Sender: TObject);
    procedure lb_GDcountMouseEnter(Sender: TObject);
    procedure lb_GDcountMouseLeave(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure lb_helpClick(Sender: TObject);
    procedure mainNavBarItem16Click(Sender: TObject);
    procedure ZXQueryReportClick(Sender: TObject);
    procedure SaleGZReportClick(Sender: TObject);
    procedure QueryLogClick(Sender: TObject);
    procedure actChangePassExecute(Sender: TObject);
    procedure mainNavBarItem15Click(Sender: TObject);
    procedure PHreportClick(Sender: TObject);
    procedure DPReportClick(Sender: TObject);
    procedure VIPReportClick(Sender: TObject);
    procedure DayBalanceReportClick(Sender: TObject);
    procedure BusinessDcListClick(Sender: TObject);
    procedure BusinessDcEditClick(Sender: TObject);
    procedure actSysConfigExecute(Sender: TObject);
    procedure tmrPingTimer(Sender: TObject);
    procedure dxStatusBar1Panels4Click(Sender: TObject);
    procedure dxStatusBar1Panels0Click(Sender: TObject);
    procedure actSaveCheckStorageExecute(Sender: TObject);
    procedure actAffirmCheckExecute(Sender: TObject);
    procedure actCheckDiffReportExecute(Sender: TObject);
    procedure mainsaleManSatiscClick(Sender: TObject);
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxpgcntrl1Change(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure OMGridCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure mainNavFindEnvironClick(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure autoRefInfoTimer(Sender: TObject);
    procedure bt_sendClick(Sender: TObject);
    procedure bt_recClick(Sender: TObject);
    procedure bt_fFeadClick(Sender: TObject);
    procedure bt_nReadClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure mainSaleBizqueryClick(Sender: TObject);
    procedure vipCurrentValueClick(Sender: TObject);
    procedure bar_vippswdupdateClick(Sender: TObject);
    procedure lb_DRPClick(Sender: TObject);
    procedure lb_DatabaseClick(Sender: TObject);
    procedure lb_SystemClick(Sender: TObject);
    procedure lb_reportClick(Sender: TObject);
    procedure lb_BIClick(Sender: TObject);
    procedure lb_MPSClick(Sender: TObject);
    procedure lb_DRPMouseEnter(Sender: TObject);
    procedure lb_DRPMouseLeave(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure TreeListDblClick(Sender: TObject);
    procedure Txt_helpCodeEditing(Sender: TObject; var CanEdit: Boolean);
    procedure Txt_helpCodeExit(Sender: TObject);
    procedure lb_LeftmoveMouseEnter(Sender: TObject);
    procedure lb_LeftmoveMouseLeave(Sender: TObject);
    procedure lb_RigthmoveClick(Sender: TObject);
    procedure lb_LeftmoveClick(Sender: TObject);
    procedure N_AddMainClick(Sender: TObject);
    procedure ScrollBox1DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure ScrollBox1DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure APPClick(Sender: TObject);
    procedure N_DownFileClick(Sender: TObject);
    procedure spt_AppEditClick(Sender: TObject);
    procedure Txt_helpCodeMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cdsFilterMenuFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure Txt_helpCodePropertiesChange(Sender: TObject);
    procedure tv_FilterMenuCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure ReportTreeDblClick(Sender: TObject);
    procedure cxMM_DESKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton2Click(Sender: TObject);
    procedure NMGridFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure cxTXCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure dxStatusBar1Panels2DblClick(Sender: TObject);
  private
    bmp: Tbitmap;
    SizeNameList,WarList: TStringList;
    fColIndex,G_index:Integer;
    fSubReportFlag:Boolean;
    FLoginUser_ID: string;
    FLoginUser_Name: string;
    FIs_SysOnline: Boolean;
    OldX,OldY:integer; //�������
    procedure SetLoginUser_ID(const Value: string);
    procedure SetLoginUser_Name(const Value: string);
    procedure SetIs_DownData(const Value: Boolean);
    procedure SetIs_SysOnline(const Value: Boolean);
    function GetClientTag: string;
    function UpdateClientFile:Boolean;  //���͸����ļ�
    { Private declarations }
  public
    { Public declarations }
    FIs_DownData: Boolean;
    procedure setMsgBox;
    procedure setchartdata;
    //��¼�û�ID
    property LoginUser_ID: string read FLoginUser_ID write SetLoginUser_ID;
    //��¼�û�����
    property LoginUser_Name: string read FLoginUser_Name write SetLoginUser_Name;
    //�Ƿ���ͬ������
    property Is_DownData: Boolean read FIs_DownData write SetIs_DownData;
    //�Ƿ�����ʹ�ÿͻ���
    property Is_SysOnline: Boolean read FIs_SysOnline write SetIs_SysOnline;
    //���������
    property ClientTag: string read GetClientTag;
    //��������ͬ��
    function Open_DownExe(ShowForm: Boolean): Boolean;
    //ȡ���û�Ȩ�ޱ�
    function Get_UserRoles: Boolean;
    //����û��Ƿ���ĳ���ܵ�Ȩ��
    function Chk_UserRight(FOBJECTTYPE,    //ģ�����
                           FNUMBER: string //���ܴ���
                           ): Boolean;
    procedure repaitImg;//ʹ��Ϣ���͸��
    //ping������
    function Ping_Ser: Boolean;
    function CheckBaseData : boolean;  //�����������Ƿ��쳣
    procedure ShowATTACHMENT(FID : string);  //��ʾ������Ϣ
    procedure GetData(PageIndex:integer);
    procedure SetLevelVisible(PageIndex:integer);
    function CreatePageList(frmclass:TFormClass;opt:TOpenFormParameter):TForm;
    procedure CreateModalFrom(frmclass:TModalFormClass);  //��ģ̬����
    //��������οؼ��򿪴���***************���÷���***************
    procedure ShowFrom(Fromkey,title : String);
    procedure setTreeListExp;
    procedure CreateSpeedButton(_Caption,_Frmkey:String;isADDSt:Boolean=True);
    procedure AppSaveToIni;
    procedure FromIinLoadAPP;
    procedure GetTxItem;
    procedure ReportInit;
    procedure ReportShow;
    procedure OpenReportQuery(frmKey,title:String);
    procedure OpenReportModel(frmKey,title:String;ftype:Integer);
    procedure GetMainInfo;
    Procedure I3UserMessageResult(var msg:TMessage);override;
    procedure AlterOrg;
  end;

var
  FMCliMain: TFMCliMain;
  //��־���� ����ʾ�ͼ�¼��־��Ϣ
  //Gio: TIOer;
  //������IP
  ServerIP: string;
  //������ͨѶ�˿�
  SerPort: Integer;

implementation

uses FrmCliDM, FrmLogin, Pub_Fun, uPOSEditFrm,uDayBalanceFrm
    ,uBillList_T_FA_FaDispatchBillFrm,uBillList_T_IM_MoveIssueBillFrm,Frm_ChangePwd
    ,uBillList_T_IM_MoveInWarehsBillFrm,uBillList_FillFreight_Frm,uFrm_MoveIssueBill,uFrm_PurInWarehsBill
    ,Frm_SysComfig,QueryThread,uCheckSaveStorageFrm,SaleDayReport,uNmarketable,uSaleGZAY,uLogQuery
    ,uQueryPosStock,uSubsidiary_trace_report,uTransf_trace_report,uVipAyReportFrm,uDayBalance,uBusinessDataC,uBusinessDataCollection,
    Frm_Ping,uFrm_CheckAffirm,uCheckReportFrm,SalesManSatiscReport,
    uFrmEnvirTesting,uSendMessage,ShopSalesPerformance,uVipCurrentValue
    ,uVipPassWordUpdate,uSystemMenuEditFrm,uAssDataItemEditFrm,uUserInfofrm,uRoleListfrm,
    uSelectMaterialFrm,uBranchEditFrm,uSelectClientFrm,uselectSuppliersFrm,uSelectWarehouseFrm
  ,uWarehouseSetFrm,uDepartmentFrm,uPersonListFrm,uCodeTableFrm,uParameterSetfrm,uSizeGroupListFrm
  ,uReadCodeScenarioListFrm,uPermissionsEditFrm,DMPublic_R,uReportPub_R,STPublic_R,untTio_R,uReportEdit_R,uRight_R,uRoleRight_R,uView_R
  ,uReportFind_R,uBillQueryFrm,uSmsSendQueryFrm,uSmsSystemSetFrm,uPrintQueryFrm,uPrintTemplateDesign,uINTERCODEPREFIXListFrm,
  uBarCodePrintFrm,uCreateInterCode,uBillEditPurOrder,uAlterPriceListFrm,uBasedataEditFrm,
  uAlterPriceEditFrm,uBillList_PurOrder,Frm_BillEditBase,uBillList_SaleIssue,
  uBillEditSaleOrder,uBillList_SaleOrder,uBillEditPostReq,uBillList_PostReq,uPriceQueryFrm,uShopAlterPriceListFrm,uBillEditSaleIssue,
  uBillEditBranchPO,uBillList_BranchPO,uBillEditPurRequset,uBillListPurReceive,uBillEditPurReceive,
  uBillEditPurInWarehs,uBillListPurInWarehs,uFindBillQueryFrm,uRemindConfigFrm
  ,uUserRemindConfigFrm,uBillEditPurReturns,uBillListPurReturns,uDrpHelperClase,
  uBillEditPurInWarehsReturn,uBillListPurInWarehsReturn,uBillEditSaleIssueReturn,uBillList_SaleIssueReturn
  ,uTransactionFrm,uTransactionLogQuery,uBillListSaleReturnRequest,uBillEditSaleReturnRequest,uBillListChanelTrans,uBillEditChanelTrans,
  uBillEditPurReturnWarehs,uExportToAccess,uBillDistributionFrm,uMaterialDistributionFrm,uStockDistributionFrm,
  uBillEditPurInStock,uBillListPurInStock,uBillListPurReturnWarehs,uPackingListFrm,
  uBillEditOtherissuebill, uBillEditOtherinwarehsbill,uBillListOtherIssuebillfrm,uBillListOtherInwarehsbillfrm,uBillEditInvInitfrm,
  uBillListInvInitFrm,uBillListSCMCheck,uFrm_SCMCheckBill,uSCMCheckSaveStorageFrm,uCreditFileFrm
  ,uOtherBillBaseEditFrm,uTicketRequisitionList,uTicketRequisition,uBillPromotion
  ,uMallCompareListFrm,uMallCompareFrm,uBatchCancelAllocationFrm,uBatchAlterOrderColorFrm
  ,uBatchCloseOrderFrm,uOrderAllocateFrm,uBillListPromtion,uRepairListFrm,uRepairEditFrm,
  uBatchAddOrderMaterialFrm,uMaterDataSelectHelper;

var RTL:TQueryThread;
{$R *.dfm}
function IsAllClose(const AHandle: THandle):Boolean;
var  h,h2 : THandle;
     pid,pid2: DWord;
     r: TRect;
begin
  Result := True;
  GetWindowThreadProcessId(AHandle, @pid);
  h := GetWindow(AHandle, GW_HWNDFIRST);
  while h <> 0 do
  begin
    h2 := h;
    h := GetWindow(h,GW_HWNDNEXT);
    if (h2 <> AHandle) and IsWindowVisible(h2) and GetWindowRect(h2, r) and (r.Right > r.Left) then
    begin
      GetWindowThreadProcessId(h2, @pid2);
      if pid = pid2 then 
      begin
        Result := False;
      end;
    end;
  end;
end;
procedure CloseAllPopupWindows(const AHandle: THandle);
var  h,h2 : THandle;
     pid,pid2: DWord;
     r: TRect;
begin
  GetWindowThreadProcessId(AHandle, @pid);
  h := GetWindow(AHandle, GW_HWNDFIRST);
  while h <> 0 do
  begin
    h2 := h;
    h := GetWindow(h,GW_HWNDNEXT);
    if (h2 <> AHandle) and IsWindowVisible(h2) and GetWindowRect(h2, r) and (r.Right > r.Left) then
    begin
      GetWindowThreadProcessId(h2, @pid2);
      if pid = pid2 then 
      begin
        Windows.SendMessage(h2,WM_CLOSE, 0, 0);
      end;    
    end;  
  end;  
  SetForegroundWindow(AHandle);
end;

function TFMCliMain.CreatePageList(frmclass:TFormClass;opt:TOpenFormParameter):TForm;
var tabsheet : TcxTabSheet;
    tmBaseList:TListFormBaseFrm;   
    i : Integer;
    FormBool : Boolean;
begin
  FormBool := False;
  for i := 0 to mainPg.PageCount-1 do
  begin
    if mainPg.Pages[i].Name = 'ts'+ frmclass.ClassName+opt.FrmKey then
    begin
       tabsheet := mainPg.Pages[i];          
       tabsheet.ImageIndex:=3;
       FormBool := True;
       mainPg.ActivePage := tabsheet;
       Result := TForm(tabsheet.Controls[0]);
       Break;
    end;
  end;
  if FormBool then Exit;
  tabsheet := TcxTabSheet.Create(mainPg);
  tabsheet.Name := 'ts'+ frmclass.ClassName+opt.FrmKey;
  tabsheet.ImageIndex:=3;
  tabsheet.PageControl := mainPg;
  tmBaseList := frmclass.Create(Tabsheet);
  tmBaseList.Caption := opt.Caption;
  tabsheet.Caption   := opt.Caption;
  tmBaseList.mainSgin :=  opt.mainSgin;
  tmBaseList.OpenFormParameter := opt;
  tmBaseList.Name := 'Frm'+frmclass.ClassName+opt.FrmKey;
  tmBaseList.Parent := tabsheet;
  mainPg.ActivePage := tabsheet;
  tmBaseList.Show;
  Result :=  tmBaseList;
end;
procedure TFMCliMain.dxBarButton5Click(Sender: TObject);
begin
  Close;
end;
procedure TFMCliMain.FormCreate(Sender: TObject);
var
  SetupFile: string;
  IniFile: TIniFile;
begin
  inherited;
  //������־����
  //Gio := TIOer.Create(nil, GetCurrPath+'Pos_CliFile\CliLog\');
  //Self.DoubleBuffered:=True;
  Gio.AddShow('���������ͻ���...');
  //ϵͳ����
  SetupFile := ExtractFilePath(paramstr(0)) + 'POSSetup.ini';
  IniFile := TINIFile.Create(SetupFile);
  try
    ServerIP := IniFile.ReadString('POSClient', 'ServerIP','127.0.0.1');
    SerPort  := IniFile.ReadInteger('POSClient', 'Port', 211);
    UserInfo.RoundType := IniFile.ReadInteger('POSClient', 'RoundType', 2);  //С������ʽ  1��ȡ2λС��   2 ��������ȡ��  3 ��С��ȥβ   4��С����1
    UserInfo.RoundBillType := IniFile.ReadInteger('POSClient', 'RoundBillType', 1);  
    UserInfo.F2Print := IniFile.ReadBool('POSClient', 'F2Print', True);
    UserInfo.F2OpenMoneyBox := IniFile.ReadBool('F2OpenMoneyBox', 'F2Print', False);
    Userinfo.AccFile:= IniFile.ReadString('POSClient', 'accFile','');
    Userinfo.ErrorFile:= IniFile.ReadString('POSClient', 'errorFile','');
  finally
    IniFile.Free;
  end;
  //���ӷ�����
  Is_SysOnline := True;
  UserInfo.Is_SysOnline := True;
  try
    UserInfo.ClientTag := GetClientTag;  //���������
  except
    ShowError(Handle, '��ȡ���������ʧ�ܣ�',[]);
  end;
  
  try
    Gio.AddShow('����POS������ - ��ʼ��'+ServerIP+'��'+inttostr(SerPort));
    CliDM.SckCon.Close;
    CliDM.SckCon.Host := ServerIP;
    CliDM.SckCon.Port := SerPort;
    CliDM.SckCon.Open;
    dxStatusBar1.Panels[1].Text := ServerIP + ',' + IntToStr(SerPort);
    CliDM.SckThread.Close;
    CliDM.SckThread.Host := ServerIP;
    CliDM.SckThread.Port := SerPort;
    Gio.AddShow('������ҵ������� - ��ɣ�'+ServerIP+','+inttostr(SerPort));
  except
    on E: Exception do
    begin
      Is_SysOnline := False;
      UserInfo.Is_SysOnline := False;
      Gio.AddShow('����POS����������'+E.Message);
      Self.OnActivate := nil;
      MessageBox(Handle, PChar('���ӷ�������������:'+e.Message), 'I3��ʾ', MB_OK OR MB_ICONINFORMATION);
      Application.Terminate;
      Abort;
    end;
  end;

    //�������ݿ�(�ͻ������ݿ�)
  try
    CliDM.conClient.Close;
    CliDM.conClient.Open;
    Gio.AddShow('�Ѿ����ӱ������ݿ�');
  except
    on E: Exception do
    begin
      Gio.AddShow('�������ݿ����'+E.Message);
      Self.OnActivate := nil;
      MessageBox(Handle, PChar('���ӱ������ݿⷢ������,���޷���½ϵͳ��'), '�����ʾ', MB_OK OR MB_ICONINFORMATION);
      Application.Terminate;
      Abort;
    end;
  end;

  //�������ļ����������³���
  // UpdateClientFile;
  //ϵͳ��½
  if not Login_System then
  begin
    Self.OnActivate := nil;
    Application.Terminate;
    Abort;
  end;
  //��ʼ���������Ա�
  InitAsstAttrTables;
  //������¼ϵͳ����������
  if FMCliMain.Is_SysOnline then
  begin
     FMCliMain.Open_DownExe(False);
     CliDM.iniCreateQuery('');
  end;
  //ȡ���û�Ȩ��
  //Get_UserRoles;
  //LoadImage(UserInfo.ExePath+'\Img\MainTop.jpg',Image1);
  //LoadImage(UserInfo.ExePath+'\Img\background.jpg',mainImg);
  //LoadImage(UserInfo.ExePath+'\Img\img_MsgBox.png',img_MsgBox);
  //LoadImage(UserInfo.ExePath+'\Img\POSMainImage8.png',Image8);
  //LoadImage(UserInfo.ExePath+'\Img\POSMainKingdeeURL.png',kingdeeURL);

  //����������ʽĿ¼
  if not DirectoryExists(UserInfo.ExePath+'GridStyle\') then
  begin
    CreateDir(UserInfo.ExePath+'GridStyle\');
  end;
  cdsTX.CreateDataSet;
  cdsTxQuery.CreateDataSet;
  Self.WindowState := wsMaximized;
  self.DoubleBuffered:=true;
  mainPg.Images := CliDM.ImageList16;
  cxpgcntrl1.Images :=  CliDM.ImageList16;
end;

procedure TFMCliMain.FormDestroy(Sender: TObject);
var ExeFile : string;
begin

  try
    Gio.AddShow('��ʼ�˳��ͻ���');
    if RTL<>nil then
    begin
      RTL.Terminate;
      RTL.Destroy;
    end;
    //Gio.Free;
  except
    on E : Exception do
    begin
      Gio.AddShow(' �˳��ͻ����쳣��'+e.Message);
    end;
  end;

  KillTask('DownData.exe');  //20111028 �˳�ϵͳ�ر����س��򣬱������ش���һֱ��ס����
  //�������³���
  if UserInfo.TUpdateExe then
  begin
    Gio.AddShow('������������');
    MessageBox(Handle, PChar('ϵͳ�������������򣬵��ȷ����ʼ�Զ�������'), '�����ʾ', MB_OK or MB_ICONINFORMATION);
    ExeFile := ExtractFilePath(paramstr(0)) + 'update.exe';
        
    if FileExists(ExeFile) then
      ShellExecute(Handle, 'open', PChar(ExeFile), PChar('"'+LoginUser_ID+'" "'+LoginUser_Name+'"'), PChar(ExtractFilePath(paramstr(0))), SW_SHOWNORMAL)
    else
       ShowMessage('�Ҳ������³���,�����°�װϵͳ�����������������ϵ����Ա��');

  end;
  if UserInfo.iRestart then  //����ʱ����������ʶ
     WinExec(PChar(ParamStr(0)),   sw_show);
  Gio.AddShow('�˳��ͻ�����ɣ�');
end;

procedure TFMCliMain.FormActivate(Sender: TObject);
begin
  Self.OnActivate := nil;
  Self.WindowState:=wsMaximized;
  tmrPing.Enabled := True;
end;

procedure TFMCliMain.AppEventsException(Sender: TObject; E: Exception);
begin
  Gio.AddShow(Format('ϵͳ����%s��%s', [Sender.ClassName, E.Message]));
  MessageBox(Handle, PChar(Format('ϵͳ����%s��%s', [Sender.ClassName, E.Message])), '�����ʾ', MB_ok or MB_ICONINFORMATION)
end;

procedure TFMCliMain.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := MessageBox(Handle, PChar('��ȷ��Ҫ�˳�ϵͳ��'), 'I3��ʾ', MB_YESNO or MB_ICONQUESTION) = IDYES;
  AppSaveToIni;
end;

procedure TFMCliMain.dxBarButton1Click(Sender: TObject);
begin
 {
   Application.CreateForm(TfTest,fTest);
   fTest.ShowModal;
   fTest.Free;
 }
end;

procedure TFMCliMain.lb_retrunMouseEnter(Sender: TObject);
begin
  TLabel(sender).Font.Color:=clNavy;
end;

procedure TFMCliMain.lb_retrunMouseLeave(Sender: TObject);
begin
  TLabel(sender).Font.Color:=clBlack;
  TLabel(sender).Font.Style:=[];
end;

procedure TFMCliMain.Label5MouseEnter(Sender: TObject);
begin
  TLabel(sender).Font.Color:=clRed;
end;

procedure TFMCliMain.Label5MouseLeave(Sender: TObject);
begin
  TLabel(sender).Font.Color:=clWhite;
  TLabel(sender).Font.Style:=[];
end;

procedure TFMCliMain.FormShow(Sender: TObject);
var ini:TIniFile;
    Stretch,toFileName,FilePath:string;
    DevicCaps,DevicInt : integer;
    isrestart:Boolean;
    onLine:string;
begin
  dBegin.Date:=dateutils.IncDay(Date,-30);
  Dend.Date:=Date;
  repaitImg;
  lb_POS.Caption:='| ���̡�'+UserInfo.Warehouse_NumberName+'��';
  if Ping_Ser then
    dxStatusBar1.Panels[0].Text := '���磺����'
  else
    dxStatusBar1.Panels[0].Text := '���磺�쳣';

  DevicCaps := GetDeviceCaps(GetDC(Self.Handle),HORZRES);
  FilePath:=ExtractFilePath(Application.ExeName)+userinfo.LoginUser;
  if not DirectoryExists(FilePath) then CreateDir(FilePath);
  if Is_SysOnline  then
  begin
    autoRefInfo.Interval:=UserInfo.RefTime*60*1000;
    autoRefInfo.Enabled:=true;
  end;

  if  UserInfo.Is_SysOnline then
  begin
    if UserInfo.IsOverPort then
    begin
      Ini := TINIFile.Create(ExtractFilePath(paramstr(0)) + 'POSSetup.ini');
      try
        isrestart:=False;
        if  Ini.ReadString('POSClient', 'Port', '')<> UserInfo.Port then
        begin
          Ini.Writestring('POSClient', 'Port', UserInfo.Port);
          isrestart:=True;
        end;
        if  Ini.ReadString('POSClient', 'DownPort', '')<> UserInfo.DownPort then
        begin
          Ini.Writestring('POSClient', 'DownPort', UserInfo.DownPort);
          isrestart:=True;
        end;
        if isrestart then
        begin
          ShowMsg(Handle, '����˶˿��Ѿ��޸�,����������!',[]);
          Application.Terminate;
        end;
      finally
        Ini.Free;
      end;
    end;
  end;
  onLine:=ExtractFilePath(paramstr(0)) + UserInfo.LoginUser+'\onLine\';
  if not DirectoryExists(onLine) then
  CreateDir(onLine);
  TreeList.Images := CliDM.ImageList16;
  dxStatusBar1.Images := CliDM.ImageList16;
  ReportTree.Images := CliDM.ImageList16;
  GetData(0);
  dxStatusBar1.Panels[2].Text := '��¼��֯��' + UserInfo.Branch_Name;
  Txt_helpCode.Properties.AutoSelect :=False;
  Txt_helpCode.SelLength:=1;
  Txt_helpCode.SelStart :=1;
  setTreeListExp;
  FromIinLoadAPP;                                 
  GetTxItem;
  FilterGrid.Width := Image10.Width;
  FilterGrid.Left := Image10.Left;
  FilterGrid.Top  := Image10.Top+Image10.Height;
  ReportInit;//��ʼ������
  GetMainInfo;
end;

procedure TFMCliMain.setMsgBox;
begin
  P_MsgBox.Visible:=not P_MsgBox.Visible;
end;

procedure TFMCliMain.lb_msgClick(Sender: TObject);
begin
  AlterOrg;
end;

procedure TFMCliMain.lb_msgBoxExitClick(Sender: TObject);
begin
  setMsgBox;
end;

procedure TFMCliMain.lb_exitClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TFMCliMain.lb_retrunClick(Sender: TObject);
begin
  mainPg.ActivePageIndex:=0;
end;

procedure TFMCliMain.mainPgCanClose(Sender: TObject;
  var ACanClose: Boolean);
begin
  if mainPg.ActivePageIndex=0 then  ACanClose:=False;
end;

procedure TFMCliMain.mainPgDblClick(Sender: TObject);
begin
  if mainPg.ActivePageIndex<>0 then
  mainPg.ActivePage.Free;
end;

procedure TFMCliMain.kingdeeURLClick(Sender: TObject);
begin
  ShellExecute(Application.Handle, 'open','Iexplore.exe','http://www.kingdee.com',nil,SW_SHOWNORMAL);
end;

procedure TFMCliMain.setchartdata;
begin
end;

procedure TFMCliMain.SetLoginUser_ID(const Value: string);
begin
  FLoginUser_ID := Value;
end;

procedure TFMCliMain.SetLoginUser_Name(const Value: string);    //FLoginUser_Name
begin
  FLoginUser_Name := Value;
  lblUserInifo.Caption := Format('��ӭ��! %s ������%s ', [FLoginUser_Name, FormatDateTime('yyyy"��"m"��"d"��" dddd', Date())]);
  Userinfo.LoginUser_Name:=FLoginUser_Name;
end;

procedure TFMCliMain.BarItemTranDataClick(Sender: TObject);
begin
  //����ͬ��
  if not UserInfo.Is_SysOnline then
  begin
    ShowMsg(Handle, '������ֻ������ʱʹ�ã�',[]);
    Abort;
  end;
  if Application.MessageBox('ȷ�Ͽ�ʼ��������?(Y?N)','�����ʾ',MB_YESNO)=id_yes then
  Open_DownExe(True);
end;

procedure TFMCliMain.SetIs_DownData(const Value: Boolean);
begin
  FIs_DownData := Value;
  if FIs_DownData then
    dxStatusBar1.Panels[4].Text := '����ͬ�����ݣ����Ժ�...'
  else
    dxStatusBar1.Panels[4].Text := '';
  if tmrDownData.Enabled <> FIs_DownData then
    tmrDownData.Enabled := FIs_DownData;
end;

procedure TFMCliMain.tmrDownDataTimer(Sender: TObject);
var
  _FIs_DownData: Boolean;
begin
  tmrDownData.Enabled := False;
  Application.ProcessMessages;
  _FIs_DownData := FindProcess('DownData.exe');
  if _FIs_DownData then
  begin
    if dxStatusBar1.Panels[4].PanelStyle.Font.Color = clBlue then
      dxStatusBar1.Panels[4].PanelStyle.Font.Color := clRed
    else
      dxStatusBar1.Panels[4].PanelStyle.Font.Color := clBlue;
    tmrDownData.Enabled := True;
  end;

  if _FIs_DownData <> FIs_DownData then
  begin
    Is_DownData := _FIs_DownData;
    CliDM.iniCreateQuery(UserInfo.LoginUser_FID);  //��ʼ��ְԱ���������͡���Ρ��������û��ɲ�������
  end;
end;

function TFMCliMain.Open_DownExe(ShowForm: Boolean): Boolean;
var
  ExeFile: string;
begin
  Result := False;
  if Is_DownData then
  begin
    MessageBox(Handle, PChar('�������ݳ����������С�'), '�����ʾ', MB_OK OR MB_ICONINFORMATION);
    Exit;
  end;
  ExeFile := ExtractFilePath(paramstr(0)) + 'DownData.exe';
  if not FileExists(ExeFile) then
  begin
    Gio.AddShow('���س��� '+ExeFile+' ������');
    Exit;
  end;
  //wushaoshu 20120306 Ϊ֧��Զ�����淽ʽ����ʽ���˵�¼ʱͬʱ��������
  if FindProcess('DownData.exe') then
  begin
    Gio.AddShow('���س��� '+ExeFile+' �Ѿ�����');
    Exit;
  end;

  if ShowForm then
    ShellExecute(Handle, 'open', PChar(ExeFile), PChar('"'+LoginUser_ID+'" "'+UserINFo.Branch_ID+'" "'+UserINFo.Branch_ID+'" "1"'+'" "ShowMainForm"'), PChar(ExtractFilePath(paramstr(0))), SW_SHOW)
  else
    ShellExecute(Handle, 'open', PChar(ExeFile), PChar('"'+LoginUser_ID+'" "'+UserInfo.Branch_ID+'" "'+UserINFo.Branch_ID+'" "1"'+'" ""'), PChar(ExtractFilePath(paramstr(0))), SW_SHOW);
  Is_DownData := True;
  Result := True;
end;

procedure TFMCliMain.SetIs_SysOnline(const Value: Boolean);
begin
  FIs_SysOnline := Value;
  if FIs_SysOnline then
  begin
    dxStatusBar1.Panels[0].Text := '����' ;
    TdxStatusBarTextPanelStyle(dxStatusBar1.Panels[0].PanelStyle).imageindex:=113;
  end
  else
  begin
    dxStatusBar1.Panels[0].Text := '����';
    TdxStatusBarTextPanelStyle(dxStatusBar1.Panels[0].PanelStyle).imageindex:=117;
  end;
end;

function TFMCliMain.GetClientTag: string;
var
  SoftLock, ErrMsg: string;
  IniFile: TIniFile;
begin
  if not Get_SoftLock(SoftLock, ErrMsg) then
  begin
    IniFile := TINIFile.Create(ExtractFilePath(paramstr(0)) + 'POSSetup.ini');
    try
      SoftLock := IniFile.ReadString('POSClient', 'SoftLock', '');
      if SoftLock = '' then
        SoftLock := Get_Guid;
      IniFile.WriteString('POSClient', 'SoftLock', SoftLock);
    finally
      IniFile.Free;
    end;
  end;
  Result := SoftLock;
end;

procedure TFMCliMain.MainDayBalanceClick(Sender: TObject);
begin
  if FIs_DownData then
  begin
    ShowMsg(Handle,'����ͬ����,���Ժ�...',[]);
    Exit;
  end;
  if not UserInfo.Is_SysOnline then
  begin
    ShowMsg(Handle, '������ֻ������ʱʹ�ã�',[]);
    Abort;
  end;
  ShowDayBalance; //�ս�
end;

procedure TFMCliMain.mainNavFillFreightApplyClick(Sender: TObject);
begin
end;

//POS���б��ѯ
procedure TFMCliMain.mainNavPOSListClick(Sender: TObject);
begin
end;

//�������뵥��ѯ
procedure TFMCliMain.act_T_FA_FaDispatchBill_ListExecute(Sender: TObject);
var tabsheet : TcxTabSheet;
    tmBaseList : TFM_BillList_T_FA_FaDispatchBill;
    i : Integer;
    FormBool : Boolean;
begin

end;

//�������ⵥ��ѯ
procedure TFMCliMain.actT_IM_MoveIssueBill_ListExecute(Sender: TObject);
var tabsheet : TcxTabSheet;
    tmBaseList : TFM_BillListT_IM_MoveIssueBill;
    i : Integer;
    FormBool : Boolean;
begin
  CheckBaseData;  //����������
  if not UserInfo.Is_SysOnline then
  begin
    ShowMsg(Handle, '������ֻ������ʱʹ�ã�',[]);
    Abort;
  end;
  for i := 0 to mainPg.PageCount-1 do
  begin
    if mainPg.Pages[i].Name = 'ts'+ TdxNavBarItem(Sender).Name then
    begin
       tabsheet := mainPg.Pages[i];
       FormBool := True;
       mainPg.ActivePage := tabsheet;
       Break;
    end;
  end;
  if FormBool then Exit;
  tabsheet := TcxTabSheet.Create(mainPg);
  tabsheet.Name := 'ts'+ TdxNavBarItem(Sender).Name;
  tabsheet.PageControl := mainPg;
  tmBaseList := TFM_BillListT_IM_MoveIssueBill.Create(Tabsheet);

  tmBaseList.Parent := tabsheet;
  tmBaseList.Name := 'Frm'+TdxNavBarItem(Sender).Name;
  tabsheet.Caption := tmBaseList.Caption;
  tmBaseList.Show;
  mainPg.ActivePage := tabsheet;
end;

//������ⵥ��ѯ
procedure TFMCliMain.actT_IM_MoveInWarehsBill_ListExecute(Sender: TObject);
var tabsheet : TcxTabSheet;
    tmBaseList : TFM_BillListT_IM_MoveInWarehsBill;
    i : Integer;
    FormBool : Boolean;
begin
  if not UserInfo.Is_SysOnline then
  begin
    ShowMsg(Handle, '������ֻ������ʱʹ�ã�',[]);
    Abort;
  end;
  for i := 0 to mainPg.PageCount-1 do
  begin
    if mainPg.Pages[i].Name = 'ts'+ TdxNavBarItem(Sender).Name then
    begin
       tabsheet := mainPg.Pages[i];
       tabsheet.ImageIndex:=3;
       FormBool := True;
       mainPg.ActivePage := tabsheet;
       Break;
    end;
  end;
  if FormBool then Exit;
  tabsheet := TcxTabSheet.Create(mainPg);
  tabsheet.Name := 'ts'+ TdxNavBarItem(Sender).Name;
  tabsheet.ImageIndex:=3;
  tabsheet.PageControl := mainPg;
  tmBaseList := TFM_BillListT_IM_MoveInWarehsBill.Create(Tabsheet);

  tmBaseList.Parent := tabsheet;
  tmBaseList.Name := 'Frm'+TdxNavBarItem(Sender).Name;
  tabsheet.Caption := tmBaseList.Caption;
  tmBaseList.Show;
  mainPg.ActivePage := tabsheet;
end;

procedure TFMCliMain.actFillFreight_ListExecute(Sender: TObject);
var tabsheet : TcxTabSheet;
    tmBaseList : TFrmBillList_FillFreight;
    i : Integer;
    FormBool : Boolean;
begin
  CheckBaseData;  //����������
  if not UserInfo.Is_SysOnline then
  begin
    ShowMsg(Handle, '������ֻ������ʱʹ�ã�',[]);
    Abort;
  end;
  for i := 0 to mainPg.PageCount-1 do
  begin
    if mainPg.Pages[i].Name = 'ts'+ TdxNavBarItem(Sender).Name then
    begin
       tabsheet := mainPg.Pages[i];
       tabsheet.ImageIndex:=3;
       FormBool := True;
       mainPg.ActivePage := tabsheet;
       Break;
    end;
  end;
  if FormBool then Exit;
  tabsheet := TcxTabSheet.Create(mainPg);
  tabsheet.Name := 'ts'+ TdxNavBarItem(Sender).Name;
  tabsheet.PageControl := mainPg;
  tabsheet.ImageIndex:=3;
  tmBaseList := TFrmBillList_FillFreight.Create(Tabsheet);
  tmBaseList.Parent := tabsheet;
  tmBaseList.Name := 'Frm'+TdxNavBarItem(Sender).Name;
  tabsheet.Caption := tmBaseList.Caption;
  tmBaseList.Show;
  mainPg.ActivePage := tabsheet;
end;

procedure TFMCliMain.actPOSNewExecute(Sender: TObject);
begin
  if FIs_DownData then
  begin
    ShowMsg(Handle,'����ͬ����,���Ժ�...',[]);
    Exit;
  end;
  CheckBaseData;  //����������
  if UserInfo.Is_SysOnline then
     CliDM.Chk_UserRight(UserInfo.RetailPOSID,'posAddNew'); //���Ȩ��
  EditPOSFrm('');  //����POS��
end;

procedure TFMCliMain.actPurInWarehs_NewExecute(Sender: TObject);
begin
  ShowMsg(Handle, '������ⵥ�����е������ⵥ���ɣ�',[]);
  Abort;
  if FIs_DownData then
  begin
    ShowMsg(Handle, '����ͬ����,���Ժ�...',[]);
    Exit;
  end;
  if not UserInfo.Is_SysOnline then
  begin
    ShowMsg(Handle, '������ֻ������ʱʹ�ã�',[]);
    Abort;
  end;
  //ShowMsg('������ⵥ�����ɵ������ⵥ���ɣ�',[]);
  EditMoveinwarehs_Frm('');  //����������ⵥ
end;

procedure TFMCliMain.actMoveIssue_NewExecute(Sender: TObject);
begin
  if FIs_DownData then
  begin
    ShowMsg(Handle,'����ͬ����,���Ժ�...',[]);
    Exit;
  end;
  CheckBaseData;  //����������
  if not UserInfo.Is_SysOnline then
  begin
    ShowMsg(Handle, '������ֻ������ʱʹ�ã�',[]);
    Abort;
  end;
  CliDM.Chk_UserRight(UserInfo.T_IM_MoveIssueBill,'moveissue_new'); //����Ȩ��
  EditMoveIssue_Frm('');  //�����������ⵥ
end;

function TFMCliMain.Get_UserRoles: Boolean;
var
  Data: OleVariant;
  ErrMsg: string;
begin
  Result := False;
  if Is_SysOnline then
  begin  //���߷�ʽ
    try
      if not CliDM.SckCon.Connected then CliDM.SckCon.Open;
    except
      on E: Exception do
      begin
        Gio.AddShow('����POS����������' + E.Message);
        Result := False;
        Exit;
      end;
    end;
    try
      Gio.AddShow('ȡ��Ȩ�� - ��ʼ');
      Result := CliDM.SckCon.AppServer.Get_Userrole(LoginUser_ID, Data, ErrMsg) = 0;
      if Result then
      begin
        Gio.AddShow('ȡ��Ȩ�� - ���');
        //��ѹ�����ݰ�
        Data := UnZip_OleVariant(Data);
        Gio.AddShow('ȡ��Ȩ�� - ��ѹ�����');
        try
          cdsUserRole.Data := Data;
        except
          on e : Exception do
          begin
            ErrMsg := e.Message;
            Gio.AddShow(Format('ȡ��Ȩ�� - ����%s', [ErrMsg]));
            Result := False;
          end;
        end;
      end
      else Gio.AddShow(Format('ȡ��Ȩ�� - ����%s', [ErrMsg]));
      Result := True;
    finally
      CliDM.SckCon.Close;
    end;
    Exit;
  end
  else
  begin  //ȡ������POSȨ��
    CliDM.qryUserRole.Close;
    CliDM.qryUserRole.Parameters.ParamByName('USERID').Value := LoginUser_ID;
    CliDM.qryUserRole.Open;
  end;
  Result := True;
end;

function TFMCliMain.Chk_UserRight(FOBJECTTYPE, FNUMBER: string): Boolean;
begin
  Result := False;
  if Is_SysOnline then
    Result := cdsUserRole.Locate('FOBJECTTYPE;FNUMBER', VarArrayOf([FOBJECTTYPE, FNUMBER]), [])
  else
    Result := CliDM.qryUserRole.Locate('FOBJECTTYPE;FNUMBER', VarArrayOf([FOBJECTTYPE, FNUMBER]), []);
end;

procedure TFMCliMain.lb_setClick(Sender: TObject);
begin
  show_sysConfig;
  dxStatusBar1.Panels[2].Text := '��֧������' + UserInfo.Branch_Name;
end;

procedure TFMCliMain.Pm_exitClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TFMCliMain.RloginClick(Sender: TObject);
var ini:TIniFile;
    Stretch,toFileName:string;
begin
//ϵͳ��½
  if not Login_System then
  begin
    Gio.AddShow('��¼�û���Ϣ��֤����');
    Self.OnActivate := nil;
    Application.Terminate;
    Abort;
  end;
  //ȡ���û�Ȩ��
  Get_UserRoles;
 // LoadImage(UserInfo.ExePath+'\Img\MainTop.jpg',Image1);
  //LoadImage(UserInfo.ExePath+'\Img\img_MsgBox.png',img_MsgBox);
 // LoadImage(UserInfo.ExePath+'\Img\POSMainImage8.png',Image8);
  //LoadImage(UserInfo.ExePath+'\Img\POSMainKingdeeURL.png',kingdeeURL);

  if Is_SysOnline then
  RTL:=TQueryThread.Create
  else  P_MsgBox.Visible:=False;

  repaitImg;
  
end;

function TFMCliMain.UpdateClientFile: Boolean;
var
  IniFile: TIniFile;
  ErrMsg : string;
  SPNO: Integer;
begin
    Result := False;
    if not UserInfo.Is_SysOnline then exit;  //���߲�����
    IniFile := TINIFile.Create(ExtractFilePath(paramstr(0)) + 'POSSetup.ini');
    try
      SPNO  := IniFile.ReadInteger('POSClient', 'MaxSPNO', 0);
    finally
      IniFile.Free;
    end;
    try
    //ȡ�����ص��ļ��б�
    if cdsQry.Active then cdsQry.EmptyDataSet;
    if CliDM.Get_Updatefile(SPNO, cdsqry, ErrMsg) then
    begin
      if cdsQry.Active then
      begin
        with cdsQry do  //���³���update.exe�Ƿ���Ҫ����
        begin
          if (FileExists(ExtractFilePath(paramstr(0))+FieldByName('FileName').AsString))  then
            DeleteFile(ExtractFilePath(paramstr(0))+FieldByName('FileName').AsString);
          TBLOBfield(FieldByName('fileval')).SaveToFile(ExtractFilePath(paramstr(0))+FieldByName('FileName').AsString);
        end;
        cdsQry.EmptyDataSet;
        if SPNO <> 2 then
        begin
          IniFile := TINIFile.Create(ExtractFilePath(paramstr(0)) + 'POSSetup.ini');
          try
            SPNO  := IniFile.ReadInteger('POSClient', 'MaxSPNO', 0);
            IniFile.WriteInteger('POSClient', 'MaxSPNO', SPNO + 1);
          finally
            IniFile.Free;
          end;
        end;
      end;
      if SPNO = 2 then
      begin
        UserInfo.TUpdateExe := True; //�رտͻ��ˣ��������³���
        Application.Terminate;
        Abort;
      end;
    end
    else
    begin
      if ErrMsg <> '' then
        MessageBox(Handle, PChar('ϵͳ������������' + #13#10 + ErrMsg), '�����ʾ', MB_OK or MB_ICONERROR);
    end;
  except
     on E:Exception do
     begin
       ShowMsg(Handle, '�����ļ�����!',[]);
     end;
  end;
  //CliDM.Get_CheckDataInfo;  //��鱾�����ݿ��ǲ��Ǻͷ�����һ�£���һ��ʱ�Զ��ر�  2011-12-11ע�ͣ��ĵ���¼ʱ���
  Result := True;
  {Version := GetVersionString(Application.ExeName);
   //����ͻ��˰汾�ͷ������汾��һ�£�������������
   //������ͨ��updatetoll.exe���߽������ļ��ϴ���T_POSUpdateFile��T_POSUpdateFileֻ�������һ�ε������ļ�
  if not CliDM.Get_ExistsSQL('Select Version From T_POSUpdateFile Where rownum <2 and Version='+QuotedStr(Version),ErrMsg) then
  begin
     ShellExecute(Application.Handle, '', pchar(ExtractFilePath(Application.ExeName)+'update.exe'), Nil, Pchar(ExtractFileDir(Application.ExeName)), SW_HIDE);
     Application.Terminate;
  end;
  }
end;



procedure TFMCliMain.lb_GDcountMouseEnter(Sender: TObject);
begin
  TLabel(sender).Font.Style:=[fsBold];
end;

procedure TFMCliMain.lb_GDcountMouseLeave(Sender: TObject);
begin
  TLabel(sender).Font.Style:=[];
end;

procedure TFMCliMain.btnRefreshClick(Sender: TObject);
var ErrMsg:string;
begin
//   if not Is_SysOnline then  Exit;
//   if RTL<>nil then
//   begin
//     RTL.Terminate;
//     RTL.Destroy;
//   end;
//   RTL:=TQueryThread.Create;
  if  Trim(cxMM_DES.Text) = '' then
  begin
    ShowMsg(Self.Handle,'�������ݲ���Ϊ��Ŷ!  ',[]);
    cxSMSPage.ActivePageIndex := 0;
    cxMM_DES.SetFocus;
    Exit;
  end;
  if  Trim(cxMM_tel.Text) = '' then
  begin
    ShowMsg(Self.Handle,'���Ž��պ��벻��Ϊ��Ŷ!  ',[]);
    cxSMSPage.ActivePageIndex := 1;
    cxMM_tel.SetFocus;
    Exit;
  end;
  if not CliDM.SendSMS(Trim(cxMM_tel.Text),Trim(cxMM_DES.Text),ErrMsg) then
  begin
    ShowMsg(Self.Handle,ErrMsg,[]);
    Exit;
  end;
  ShowMsg(Self.Handle,'���ŷ��ͳɹ�!     ',[]);
end;

procedure TFMCliMain.repaitImg;
begin

end;

procedure TFMCliMain.lb_helpClick(Sender: TObject);
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



procedure TFMCliMain.mainNavBarItem16Click(Sender: TObject);
var tabsheet : TcxTabSheet;
    tmBaseList : TSaleDayReportFrm;
    i : Integer;
    FormBool : Boolean;
begin
  if not UserInfo.Is_SysOnline then
  begin
    ShowMsg(Handle, '������ֻ������ʱʹ�ã�',[]);
    Abort;
  end;
  for i := 0 to mainPg.PageCount-1 do
  begin
    if mainPg.Pages[i].Name = 'ts'+ TdxNavBarItem(Sender).Name then
    begin
       tabsheet := mainPg.Pages[i];
       tabsheet.ImageIndex:=3;
       FormBool := True;
       mainPg.ActivePage := tabsheet;
       Break;
    end;
  end;
  if FormBool then Exit;
  tabsheet := TcxTabSheet.Create(mainPg);
  tabsheet.Name := 'ts'+ TdxNavBarItem(Sender).Name;
  tabsheet.ImageIndex:=3;
  tabsheet.PageControl := mainPg;
  tmBaseList := TSaleDayReportFrm.Create(Tabsheet);

  tmBaseList.Parent := tabsheet;
  tmBaseList.Name := 'Frm'+TdxNavBarItem(Sender).Name;
  tabsheet.Caption := tmBaseList.Caption;
  tmBaseList.Show;
  mainPg.ActivePage := tabsheet;
end;

procedure TFMCliMain.ZXQueryReportClick(Sender: TObject);
var tabsheet : TcxTabSheet;
    tmBaseList : TUnmarketableFrm;
    i : Integer;
    FormBool : Boolean;
begin
  if not UserInfo.Is_SysOnline then
  begin
    ShowMsg(Handle, '������ֻ������ʱʹ�ã�',[]);
    Abort;
  end;
  for i := 0 to mainPg.PageCount-1 do
  begin
    if mainPg.Pages[i].Name = 'ts'+ TdxNavBarItem(Sender).Name then
    begin
       tabsheet := mainPg.Pages[i];
       tabsheet.ImageIndex:=3;
       FormBool := True;
       mainPg.ActivePage := tabsheet;
       Break;
    end;
  end;
  if FormBool then Exit;
  tabsheet := TcxTabSheet.Create(mainPg);
  tabsheet.Name := 'ts'+ TdxNavBarItem(Sender).Name;
  tabsheet.ImageIndex:=3;
  tabsheet.PageControl := mainPg;
  tmBaseList := TUnmarketableFrm.Create(Tabsheet);

  tmBaseList.Parent := tabsheet;
  tmBaseList.Name := 'Frm'+TdxNavBarItem(Sender).Name;
  tabsheet.Caption := tmBaseList.Caption;
  tmBaseList.Show;
  mainPg.ActivePage := tabsheet;
end;

procedure TFMCliMain.SaleGZReportClick(Sender: TObject);
var tabsheet : TcxTabSheet;
    tmBaseList : TSaleGZAYFrm;
    i : Integer;
    FormBool : Boolean;
begin
  if not UserInfo.Is_SysOnline then
  begin
    ShowMsg(Handle, '������ֻ������ʱʹ�ã�',[]);
    Abort;
  end;
  for i := 0 to mainPg.PageCount-1 do
  begin
    if mainPg.Pages[i].Name = 'ts'+ TdxNavBarItem(Sender).Name then
    begin
       tabsheet := mainPg.Pages[i];
       tabsheet.ImageIndex:=3;
       FormBool := True;
       mainPg.ActivePage := tabsheet;
       Break;
    end;
  end;
  if FormBool then Exit;
  tabsheet := TcxTabSheet.Create(mainPg);
  tabsheet.Name := 'ts'+ TdxNavBarItem(Sender).Name;
  tabsheet.ImageIndex:=3;
  tabsheet.PageControl := mainPg;
  tmBaseList := TSaleGZAYFrm.Create(Tabsheet);

  tmBaseList.Parent := tabsheet;
  tmBaseList.Name := 'Frm'+TdxNavBarItem(Sender).Name;
  tabsheet.Caption := tmBaseList.Caption;
  tmBaseList.Show;
  mainPg.ActivePage := tabsheet;
end;

procedure TFMCliMain.QueryLogClick(Sender: TObject);
begin
  if Self.Is_DownData then
  begin
    ShowMessage('������������,���ܲ�ѯ��־,���Ժ�!');
    Abort;
  end;
  try
    Gio.Free;
    Application.CreateForm(TLogQuery,LogQuery);
    LogQuery.ShowModal;
  finally
    LogQuery.Free;
    FrmCliDM.Gio := UntTIO.TIOer.Create(nil, UserInfo.ExePath+'Pos_CliFile\CliLog\');
  end;
end;

procedure TFMCliMain.actChangePassExecute(Sender: TObject);
begin
  Change_UserPWD(UserInfo.LoginUser_FID); //�޸�����
end;

procedure TFMCliMain.mainNavBarItem15Click(Sender: TObject);
var tabsheet : TcxTabSheet;
    tmBaseList : TQueryPosStockFrm;
    i : Integer;
    FormBool : Boolean;
begin
  if not UserInfo.Is_SysOnline then
  begin
    ShowMsg(Handle, '������ֻ������ʱʹ�ã�',[]);
    Abort;
  end;
  for i := 0 to mainPg.PageCount-1 do
  begin
    if mainPg.Pages[i].Name = 'ts'+ TdxNavBarItem(Sender).Name then
    begin
       tabsheet := mainPg.Pages[i];
       tabsheet.ImageIndex:=3;
       FormBool := True;
       mainPg.ActivePage := tabsheet;
       Break;
    end;
  end;
  if FormBool then Exit;
  tabsheet := TcxTabSheet.Create(mainPg);
  tabsheet.Name := 'ts'+ TdxNavBarItem(Sender).Name;
  tabsheet.ImageIndex:=3;
  tabsheet.PageControl := mainPg;
  tmBaseList := TQueryPosStockFrm.Create(Tabsheet);

  tmBaseList.Parent := tabsheet;
  tmBaseList.Name := 'Frm'+TdxNavBarItem(Sender).Name;
  tabsheet.Caption := tmBaseList.Caption;
  tmBaseList.Show;
  mainPg.ActivePage := tabsheet;
end;

procedure TFMCliMain.PHreportClick(Sender: TObject);
var tabsheet : TcxTabSheet;
    tmBaseList : Tsubsidiary_trace_reportFrm;
    i : Integer;
    FormBool : Boolean;
begin
  if not UserInfo.Is_SysOnline then
  begin
    ShowMsg(Handle, '������ֻ������ʱʹ�ã�',[]);
    Abort;
  end;
  for i := 0 to mainPg.PageCount-1 do
  begin
    if mainPg.Pages[i].Name = 'ts'+ TdxNavBarItem(Sender).Name then
    begin
       tabsheet := mainPg.Pages[i];
       tabsheet.ImageIndex:=3;
       FormBool := True;
       mainPg.ActivePage := tabsheet;
       Break;
    end;
  end;
  if FormBool then Exit;
  tabsheet := TcxTabSheet.Create(mainPg);
  tabsheet.Name := 'ts'+ TdxNavBarItem(Sender).Name;
  tabsheet.ImageIndex:=3;
  tabsheet.PageControl := mainPg;
  tmBaseList := Tsubsidiary_trace_reportFrm.Create(Tabsheet);

  tmBaseList.Parent := tabsheet;
  tmBaseList.Name := 'Frm'+TdxNavBarItem(Sender).Name;
  tabsheet.Caption := tmBaseList.Caption;
  tmBaseList.Show;
  mainPg.ActivePage := tabsheet;
end;

procedure TFMCliMain.DPReportClick(Sender: TObject);
var tabsheet : TcxTabSheet;
    tmBaseList : Ttransf_trace_reportFrm;
    i : Integer;
    FormBool : Boolean;
begin
  if not UserInfo.Is_SysOnline then
  begin
    ShowMsg(Handle, '������ֻ������ʱʹ�ã�',[]);
    Abort;
  end;
  for i := 0 to mainPg.PageCount-1 do
  begin
    if mainPg.Pages[i].Name = 'ts'+ TdxNavBarItem(Sender).Name then
    begin
       tabsheet := mainPg.Pages[i];
       tabsheet.ImageIndex:=3;
       FormBool := True;
       mainPg.ActivePage := tabsheet;
       Break;
    end;
  end;
  if FormBool then Exit;
  tabsheet := TcxTabSheet.Create(mainPg);
  tabsheet.Name := 'ts'+ TdxNavBarItem(Sender).Name;
  tabsheet.ImageIndex:=3;
  tabsheet.PageControl := mainPg;
  tmBaseList := Ttransf_trace_reportFrm.Create(Tabsheet);

  tmBaseList.Parent := tabsheet;
  tmBaseList.Name := 'Frm'+TdxNavBarItem(Sender).Name;
  tabsheet.Caption := tmBaseList.Caption;
  tmBaseList.Show;
  mainPg.ActivePage := tabsheet;
end;

procedure TFMCliMain.VIPReportClick(Sender: TObject);
var tabsheet : TcxTabSheet;
    tmBaseList : TVipAyReportFrm;
    i : Integer;
    FormBool : Boolean;
begin
  if not UserInfo.Is_SysOnline then
  begin
    ShowMsg(Handle, '������ֻ������ʱʹ�ã�',[]);
    Abort;
  end;
  for i := 0 to mainPg.PageCount-1 do
  begin
    if mainPg.Pages[i].Name = 'ts'+ TdxNavBarItem(Sender).Name then
    begin
       tabsheet := mainPg.Pages[i];
       tabsheet.ImageIndex:=3;
       FormBool := True;
       mainPg.ActivePage := tabsheet;
       Break;
    end;
  end;
  if FormBool then Exit;
  tabsheet := TcxTabSheet.Create(mainPg);
  tabsheet.Name := 'ts'+ TdxNavBarItem(Sender).Name;
  tabsheet.ImageIndex:=3;
  tabsheet.PageControl := mainPg;
  tmBaseList := TVipAyReportFrm.Create(Tabsheet);

  tmBaseList.Parent := tabsheet;
  tmBaseList.Name := 'Frm'+TdxNavBarItem(Sender).Name;
  tabsheet.Caption := tmBaseList.Caption;
  tmBaseList.Show;
  mainPg.ActivePage := tabsheet;
end;

procedure TFMCliMain.DayBalanceReportClick(Sender: TObject);
var tabsheet : TcxTabSheet;
    tmBaseList : TDayBalanceFrm;
    i : Integer;
    FormBool : Boolean;
begin
  if not UserInfo.Is_SysOnline then
  begin
    ShowMsg(Handle, '������ֻ������ʱʹ�ã�',[]);
    Abort;
  end;
  for i := 0 to mainPg.PageCount-1 do
  begin
    if mainPg.Pages[i].Name = 'ts'+ TdxNavBarItem(Sender).Name then
    begin
       tabsheet := mainPg.Pages[i];
       tabsheet.ImageIndex:=3;
       FormBool := True;
       mainPg.ActivePage := tabsheet;
       Break;
    end;
  end;
  if FormBool then Exit;
  tabsheet := TcxTabSheet.Create(mainPg);
  tabsheet.Name := 'ts'+ TdxNavBarItem(Sender).Name;
  tabsheet.ImageIndex:=3;
  tabsheet.PageControl := mainPg;
  tmBaseList := TDayBalanceFrm.Create(Tabsheet);

  tmBaseList.Parent := tabsheet;
  tmBaseList.Name := 'Frm'+TdxNavBarItem(Sender).Name;
  tabsheet.Caption := tmBaseList.Caption;
  tmBaseList.Show;
  mainPg.ActivePage := tabsheet;
end;

procedure TFMCliMain.BusinessDcListClick(Sender: TObject);
var tabsheet : TcxTabSheet;
    tmBaseList : TBusinessDcFrm;
    i : Integer;
    FormBool : Boolean;
begin
  if not UserInfo.Is_SysOnline then
  begin
    ShowMsg(Handle, '������ֻ������ʱʹ�ã�',[]);
    Abort;
  end;
  for i := 0 to mainPg.PageCount-1 do
  begin
    if mainPg.Pages[i].Name = 'ts'+ TdxNavBarItem(Sender).Name then
    begin
       tabsheet := mainPg.Pages[i];
       tabsheet.ImageIndex:=3;
       FormBool := True;
       mainPg.ActivePage := tabsheet;
       Break;
    end;
  end;
  if FormBool then Exit;
  tabsheet := TcxTabSheet.Create(mainPg);
  tabsheet.Name := 'ts'+ TdxNavBarItem(Sender).Name;
  tabsheet.ImageIndex:=3;
  tabsheet.PageControl := mainPg;
  tmBaseList := TBusinessDcFrm.Create(Tabsheet);

  tmBaseList.Parent := tabsheet;
  tmBaseList.Name := 'Frm'+TdxNavBarItem(Sender).Name;
  tabsheet.Caption := tmBaseList.Caption;
  tmBaseList.Show;
  mainPg.ActivePage := tabsheet;
end;

procedure TFMCliMain.BusinessDcEditClick(Sender: TObject);
begin
  if not UserInfo.Is_SysOnline then
  begin
    ShowMsg(Handle, '������ֻ������ʱʹ�ã�',[]);
    Abort;
  end;
  if FIs_DownData then
  begin
    ShowMsg(Handle,'����ͬ����,���Ժ�...',[]);
    Exit;
  end;
  try
    Application.CreateForm(TBusinessDataCollectionFrm,BusinessDataCollectionFrm);
    BusinessDataCollectionFrm.ShowModal;
  finally
    BusinessDataCollectionFrm.Free;
  end;
end;

procedure TFMCliMain.actSysConfigExecute(Sender: TObject);
begin
  show_sysConfig;
end;

procedure TFMCliMain.tmrPingTimer(Sender: TObject);
begin
  tmrPing.Enabled := False;
  try
    if Ping_Ser then
      dxStatusBar1.Panels[0].Text := '���磺����'
    else
      dxStatusBar1.Panels[0].Text := '���磺�쳣';
  finally
    tmrPing.Enabled := True;
  end;
end;

function TFMCliMain.Ping_Ser: Boolean;
var
  i: Integer;
begin
  Result := False;
  if Trim(ServerIP) = '' then Exit;
  ICMP.Host := Trim(ServerIP);
  ICMP.ReceiveTimeout := 1000;
  for i := 0 to 3 do
  begin
    //Application.ProcessMessages;
    try
      ICMP.Ping;
      if ICMP.ReplyStatus.BytesReceived>0 then
      begin
        Result := True;
        break;
      end
    except
      on E: Exception do
      begin
        Result := False;
        Break;
      end;
    end;
  end;
end;

procedure TFMCliMain.dxStatusBar1Panels4Click(Sender: TObject);
begin
  Ping_Server(ServerIP);
end;

procedure TFMCliMain.dxStatusBar1Panels0Click(Sender: TObject);
var
  i: Integer;
  Is_BillOpen: Boolean;
begin
//  Is_BillOpen := False;
//  for i := 0 to Application.ComponentCount - 1 do
//    if Application.Components[i].InheritsFrom(TFM_BillEditBase)or
//       Application.Components[i].InheritsFrom(TEmitAssociatorCard)or
//       Application.Components[i].InheritsFrom(TFrmPOSEdit)
//        then
//    begin
//      Is_BillOpen := True;
//      Break;
//    end;
//  if Is_BillOpen then
//  begin
//    MessageBox(Handle, PChar('���д򿪵���ά�����ڣ����ȹرյ��ݴ��ں��ٽ���״̬�л���'), '�����ʾ', MB_OK OR MB_ICONINFORMATION);
//    Exit;
//  end;
//  Change_SysLine;
end;

procedure TFMCliMain.actSaveCheckStorageExecute(Sender: TObject);
begin
   OpenCheckSaveStorage;
end;

procedure TFMCliMain.actAffirmCheckExecute(Sender: TObject);
begin
  CliDM.Chk_UserRight('C77080D3','RetailPosShopCheck_ReSet'); //���Ȩ��
  OpenCheckAffirm;
end;

procedure TFMCliMain.actCheckDiffReportExecute(Sender: TObject);
begin
  OpenCheckReport;
end;

procedure TFMCliMain.mainsaleManSatiscClick(Sender: TObject);
var tabsheet : TcxTabSheet;
    tmBaseList : TSaleManSatiscReportForm;
    i : Integer;
    FormBool : Boolean;
begin
  if not UserInfo.Is_SysOnline then
  begin
    ShowMsg(Handle, '������ֻ������ʱʹ�ã�',[]);
    Abort;
  end;
  for i := 0 to mainPg.PageCount-1 do
  begin
    if mainPg.Pages[i].Name = 'ts'+ TdxNavBarItem(Sender).Name then
    begin
       tabsheet := mainPg.Pages[i];
       tabsheet.ImageIndex:=3;
       FormBool := True;
       mainPg.ActivePage := tabsheet;
       Break;
    end;
  end;
  if FormBool then Exit;
  tabsheet := TcxTabSheet.Create(mainPg);
  tabsheet.Name := 'ts'+ TdxNavBarItem(Sender).Name;
  tabsheet.ImageIndex:=3;
  tabsheet.PageControl := mainPg;
  tmBaseList := TSaleManSatiscReportForm.Create(Tabsheet);

  tmBaseList.Parent := tabsheet;
  tmBaseList.Name := 'Frm'+TdxNavBarItem(Sender).Name;
  tabsheet.Caption := tmBaseList.Caption;
  tmBaseList.Show;
  mainPg.ActivePage := tabsheet;
end;

procedure TFMCliMain.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
  Image7.Left := P_top.Width - (Length(Trim(lblUserInifo.Caption))*6+40);
end;

function TFMCliMain.CheckBaseData: boolean;
var sqlstr,MateRialSizeGp : string;
begin
  if Userinfo.MaxSizeCount>30 then ShowError(Handle, '������������������30����Ӱ�쵥�ݲ���������ϵϵͳ����Ա��!',[]);

    //����ǵ�һ�ε�¼ϵͳ��ֱ�ӷ��������¼���ӪҵԱ��
  sqlstr := 'select B.FID,B.FNUMBER,B.FNAME_L2,B.FNAME_L2+'+QuotedStr(' : ')+'+B.FNUMBER as NumberName from T_IN_SalerEntry A(NOLOCK) '
            +' LEFT OUTER JOIN T_BD_Person B(NOLOCK) ON A.FPERSONID=B.FID collate Chinese_PRC_CS_AS_WS '
            +' WHERE A.FCanused=1 and A.FParentID collate Chinese_PRC_CS_AS_WS ='+QuotedStr(UserInfo.Warehouse_FID);
  with CliDM.qrySalesMan do
  begin
    Close;
    SQL.Clear;
    SQL.Add(SqlStr);
    Open;
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

  if Userinfo.MaxSizeCount=0 then
  begin
      //ϵͳ����������
    sqlstr := 'select 1 from Ct_Bas_Sizegroup(nolock) ';
    Userinfo.SizeGroupCount := CliDM.Client_QuerySQL(sqlstr).RecordCount;

    sqlstr := 'select FPARENTID,COUNT(*) AS SizeCount from ct_bas_sizegroupentry GROUP BY FPARENTID ORDER BY COUNT(*) DESC';
    MateRialSizeGp := CliDM.Client_QuerySQL(sqlstr).FieldByName('FPARENTID').asstring;
    sqlstr := 'SELECT DISTINCT FPARENTID,CFSIZEID FROM ct_bas_sizegroupentry WHERE FPARENTID='+QuotedStr(MateRialSizeGp);
    Userinfo.MaxSizeCount := CliDM.Client_QuerySQL(sqlstr).RecordCount;

    if Userinfo.MaxSizeCount=0 then
      ShowError(Handle, '��������������Ϊ0�� ���������ݺ����µ�¼ϵͳ��!',[]);
  end;

  if CliDM.cdsAsst.IsEmpty then
  begin
    sqlstr := 'Select FID,FNumber,FNAME_L1,FNAME_L2,FNAME_L3 From T_BD_AsstAttrValue(nolock) Where FBasicTypeID<>''''';
    with CliDM.Client_QuerySQL(sqlstr) do
    begin
      if not IsEmpty then
      begin
        First;
        while not Eof do
        begin
          if not CliDM.cdsAsst.Active then CliDM.cdsAsst.CreateDataSet;
          if CliDM.cdsAsst.state in DB.dsEditModes then CliDM.cdsAsst.Edit;
          CliDM.cdsAsst.Append;
          CliDM.cdsAsst.FieldByName('FID').AsString := FieldByName('FID').AsString;
          CliDM.cdsAsst.FieldByName('FNumber').AsString := FieldByName('FNumber').AsString;
          CliDM.cdsAsst.FieldByName('fname_l2').AsString := FieldByName('fname_l2').AsString;
          Next;
        end;
        CliDM.cdsAsst.Post;
      end;
      if CliDM.qryTemp.Active then CliDM.qryTemp.Close;
    end;
    if CliDM.cdsAsst.IsEmpty then
      ShowError(Handle, '��ɫ����ȸ�������Ϊ�գ� ���������ݺ����µ�¼ϵͳ��!',[]);
  end;
end;

procedure TFMCliMain.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var toFileName:string;
begin
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
  if (Key = VK_F5)  then  //ˢ��
  begin
     GetMainInfo;
  end;
  if (Key = VK_F6)  then
  begin
     try
       Application.CreateForm(TSystemMenuEditFrm,SystemMenuEditFrm);
       SystemMenuEditFrm.ShowModal;
     finally
       SystemMenuEditFrm.Free;
     end;
  end;
  if Txt_helpCode.Focused then
  begin
    if Key=40 then
    begin
      if not cdsFilterMenu.IsEmpty  then
      if not cdsFilterMenu.Eof then
      begin
        cdsFilterMenu.Next;
      end;
    end;
    if Key=38 then
    begin
      if not cdsFilterMenu.IsEmpty  then
      if not cdsFilterMenu.bof then
      begin
        cdsFilterMenu.Prior;
      end;
    end;

    if Key = 13 then
    begin
      if not cdsFilterMenu.IsEmpty then
      begin
        Self.ShowFrom(cdsFilterMenu.fieldbyname('FID').AsString,cdsFilterMenu.fieldbyname('Fname_l2').AsString);
        FilterGrid.Visible := False;
      end;
    end
  end;
  if Key = 27 then  FilterGrid.Visible := False;
end;

procedure TFMCliMain.cxpgcntrl1Change(Sender: TObject);
begin
  if cxpgcntrl1.ActivePageIndex = 0 then
  begin
     cxtxBT.DataBinding.DataSource := dsNew;
     cxDBRichEdit1.DataBinding.DataSource := dsNew;
     Panel2.Parent:=cxtbsht1;
     bt_fFead.Font.Color:=clBlack;
     bt_nRead.Font.Color:=clScrollBar;
  end
  else
  if cxpgcntrl1.ActivePageIndex = 1 then
  begin
    omgrid.GetColumnByFieldName('������').Caption:='������';
    dsOldMessage.Close;
    cxtxBT.DataBinding.DataSource := dsOld;
    cxDBRichEdit1.DataBinding.DataSource := dsOld;
    Panel2.Parent:=cxtbsht2;
    cxGrid2.Parent:=cxtbsht2;
    bt_fFead.Font.Color:=clScrollBar;
    bt_nRead.Font.Color:=clBlack;
  end
  else
  begin
    omgrid.GetColumnByFieldName('������').Caption:='�ռ���';
    dsOldMessage.Close;
    cxtxBT.DataBinding.DataSource := dsOld;
    cxDBRichEdit1.DataBinding.DataSource := dsOld;
    Panel2.Parent:=cxtbsht3;
    cxGrid2.Parent:=cxtbsht3;
  end;
  cxLabel2.Visible:=not (cxpgcntrl1.ActivePageIndex = 0);
  dBegin.Visible:=not (cxpgcntrl1.ActivePageIndex = 0);
  cxLabel3.Visible:=not (cxpgcntrl1.ActivePageIndex = 0);
  Dend.Visible:=not (cxpgcntrl1.ActivePageIndex = 0);
  btn1.Visible:=not (cxpgcntrl1.ActivePageIndex = 0);
  bt_fFead.Visible:= not (cxpgcntrl1.ActivePageIndex = 2);
  bt_send.Visible:= not (cxpgcntrl1.ActivePageIndex = 2);
  bt_nread.Visible:= not( cxpgcntrl1.ActivePageIndex = 2);
  bt_rec.Visible:=  not (cxpgcntrl1.ActivePageIndex = 2);
end;

procedure TFMCliMain.btn1Click(Sender: TObject);
var sqlstr,errmsg : string;
begin
  if not UserInfo.Is_SysOnline then
  begin
    ShowMsg(Handle, '������ֻ������ʱʹ�ã�',[]);
    Abort
  end;
    //��Ϣ
  if  cxpgcntrl1.ActivePageIndex=1 then
  begin
    sqlstr:='SELECT a.FID,a.FSENDER_L2 AS ������, a.FSENDTIME AS ����ʱ��, a.FTITLE_L2 AS ����, '
             + ' a.FBODY_L2 AS ���� '
           +'FROM T_BAS_MESSAGE A  '
           +' WHERE nvl(a.FSENDER_L2,'' '')<>'' '' and nvl(a.FSENDER_L2,'' '')<>''��̨����'' and nvl(a.FSENDER_L2,'' '')<>''������'' and A.FRECEIVER = '+QuotedStr(UserInfo.LoginUser_FID)
           +' AND to_char(FSENDTIME,''YYYY-MM-DD'') >= '+QuotedStr(FormatDateTime('yyyy-mm-dd',dBegin.Date))
           +' AND to_char(FSENDTIME,''YYYY-MM-DD'') <= '+QuotedStr(FormatDateTime('yyyy-mm-dd',Dend.Date))
           +' and FSTATUS=10 order by A.FSENDTIME desc';
  end
  else
  begin
    sqlstr:='SELECT a.FID,u.fname_l2 AS ������, a.FSENDTIME AS ����ʱ��, a.FTITLE_L2 AS ����, '
             + ' a.FBODY_L2 AS ���� '
           +'FROM T_BAS_MESSAGE A  left join t_pm_user u on a.FRECEIVER=u.fid'
           +' WHERE 1=1'
           +' AND to_char(FSENDTIME,''YYYY-MM-DD'') >= '+QuotedStr(FormatDateTime('yyyy-mm-dd',dBegin.Date))
           +' AND to_char(FSENDTIME,''YYYY-MM-DD'') <= '+QuotedStr(FormatDateTime('yyyy-mm-dd',Dend.Date))
           +' and exists(select 1 from T_BAS_MsgSendRecord rec where a.fid=rec.Fsourceid and Fsenderid='+QuotedStr(UserInfo.LoginUser_FID)+')'
           +' order by A.FSENDTIME desc';
  end;
   if not CliDM.Get_OpenSQL(dsOldMessage,sqlstr,errmsg) then
   begin
      Gio.AddShow(sqlstr+'��ѯ����');
   end
   else
   begin
     { OMGrid.ClearItems;
      OMGrid.DataController.CreateAllItems(false);
      if OMGrid.GetColumnByFieldName('FID')<>nil then
        OMGrid.GetColumnByFieldName('FID').Visible := False;
      if OMGrid.GetColumnByFieldName('������')<>nil then
        OMGrid.GetColumnByFieldName('������').Width := 50;
      if OMGrid.GetColumnByFieldName('����ʱ��')<>nil then
        OMGrid.GetColumnByFieldName('����ʱ��').Width := 50;
      if OMGrid.GetColumnByFieldName('����')<>nil then
        OMGrid.GetColumnByFieldName('����').Width := 100;
      }
   end;

end;

procedure TFMCliMain.ShowATTACHMENT(FID: string);
var sqlstr,ErrMsg:string;
    i : integer;
begin
  if FID='' then exit;
   sqlstr:='SELECT C.FID, c.FNAME_L2 �����ļ���,C.FSIMPLENAME AS �ļ�����, '
             + ' c.FSIZE AS �����ļ���С  '
           +'FROM T_BAS_MESSAGE a LEFT OUTER JOIN  '
             +' T_BAS_BOATTCHASSO b ON a.fsourceid = b.FBOID LEFT OUTER JOIN '
             +' T_BAS_ATTACHMENT c ON b.FATTACHMENTID = c.FID          '
           +' WHERE a.FID = '+QuotedStr(FID); 
   if not CliDM.Get_OpenSQL(dsATTACHMEN,sqlstr,errmsg) then
   begin
     Gio.AddShow(sqlstr+'��ѯ����');
   end;
end;

procedure TFMCliMain.OMGridCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
 try
    if not btnRefresh.Enabled  then Exit;
    Screen.Cursor:=crHourGlass;
    if dsATTACHMEN.Active then dsATTACHMEN.Close;
    if dsOldMessage.IsEmpty then Exit;
    ShowATTACHMENT(dsOldMessage.fieldbyName('FID').AsString);
 finally
    Screen.Cursor:=crDefault;
 end;
end;

procedure TFMCliMain.mainNavFindEnvironClick(Sender: TObject);
begin
  Show_Environ(0);
end;

procedure TFMCliMain.Label1Click(Sender: TObject);
begin
  Application.Terminate;
  shellexecute(handle,'open',pchar(ExtractFilePath(paramstr(0)) + 'I3ERP.exe'),nil,nil,sw_shownormal);
end;

procedure TFMCliMain.autoRefInfoTimer(Sender: TObject);
begin
  if Gio<>nil then Gio.AddShow('��ʼˢ����������Ϣ...');
  GetMainInfo;
  lblUserInifo.Caption := Format('��ӭ��! %s ������%s ', [FLoginUser_Name, FormatDateTime('yyyy"��"m"��"d"��" dddd', Date())]);
  if Gio<>nil then Gio.AddShow('���ˢ����������Ϣ...');
end;

procedure TFMCliMain.bt_sendClick(Sender: TObject);
begin
  if not UserInfo.Is_SysOnline then
  begin
    ShowMsg(Handle, '������ֻ������ʱʹ�ã�',[]);
    Abort
  end;
  SendMessage('','','','','');
end;

procedure TFMCliMain.bt_recClick(Sender: TObject);
begin
  if not UserInfo.Is_SysOnline then
  begin
    ShowMsg(Handle, '������ֻ������ʱʹ�ã�',[]);
    Abort
  end;
  if cxpgcntrl1.ActivePageIndex=0 then
  begin
    if dsNewMessage.IsEmpty then
    begin
      ShowMsg(Handle, '����Ϣ�ɻظ�!    ',[]);
      exit;
    end;
    SendMessage(userinfo.LoginUser_FID,userinfo.LoginUser_Name,
       dsNewMessage.fieldbyname('FID').AsString,
       dsNewMessage.fieldbyname('������').AsString,
       dsNewMessage.fieldbyname('����').AsString,true);
  end
  else
  begin
    if dsOldMessage.IsEmpty then
    begin
      ShowMsg(Handle, '����Ϣ�ɻظ�!    ',[]);
      exit;
    end;
    SendMessage(userinfo.LoginUser_FID,userinfo.LoginUser_Name,
    dsOldMessage.fieldbyname('FID').AsString,
    dsOldMessage.fieldbyname('������').AsString,
    dsOldMessage.fieldbyname('����').AsString,true);
  end;
end;

procedure TFMCliMain.bt_fFeadClick(Sender: TObject);
  var _sql,msg:string;
begin
  if not UserInfo.Is_SysOnline then
  begin
    ShowMsg(Handle, '������ֻ������ʱʹ�ã�',[]);
    Abort
  end;
  if cxpgcntrl1.ActivePageIndex=1 then exit;
  if dsNewMessage.IsEmpty then
  begin
    exit;
  end;
  _sql:= 'update T_BAS_MESSAGE set FSTATUS=10 where fid='''+dsNewMessage.fieldbyname('fid').AsString+'''';
  CliDM.Get_ExecSQL(_sql,msg);
  dsNewMessage.Delete;
end;

procedure TFMCliMain.bt_nReadClick(Sender: TObject);
  var _sql,msg:string;
begin
  if not UserInfo.Is_SysOnline then
  begin
    ShowMsg(Handle, '������ֻ������ʱʹ�ã�',[]);
    Abort
  end;
  if cxpgcntrl1.ActivePageIndex=0 then exit;
  if dsOldMessage.IsEmpty then
  begin
    exit;
  end;
  _sql:= 'update T_BAS_MESSAGE set FSTATUS=0 where fid='''+dsOldMessage.fieldbyname('fid').AsString+'''';
  CliDM.Get_ExecSQL(_sql,msg);
  dsOldMessage.Delete;
end;

procedure TFMCliMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if  FMCliMain.Is_SysOnline then
  CliDM.AddOnlineLoginRec('OUT',UserInfo.Warehouse_FID,UserInfo.Warehouse_Number,UserInfo.Warehouse_Name,UserInfo.LoginUser_FID,
      UserInfo.LoginUser,UserInfo.LoginUser_Name,LocalIP,'');
  if userinfo.Is_SysOnline then
  if dsNewMessage.Active then
  if dsNewMessage.RecordCount>20 then
  begin
    ShowMsg(Handle, '����δ����Ϣ�ѳ���20��,Ϊ��Լϵͳ��Դ,�뼰ʱ��δ����Ϣ���ó��Ѷ�,лл��',[]);
  end;
  if DMPub.SocketConn.Connected then  DMPub.SocketConn.Close;
end;

procedure TFMCliMain.mainSaleBizqueryClick(Sender: TObject);
begin
  if not UserInfo.Is_SysOnline then
  begin
    ShowMsg(Handle, '������ֻ������ʱʹ�ã�',[]);
    Abort
  end;
  with TShopSalesPerformanceForm.Create(self) do
  begin
    show;
  end;
end;

procedure TFMCliMain.vipCurrentValueClick(Sender: TObject);
begin
  CallVipCurrentValue;
end;

procedure TFMCliMain.bar_vippswdupdateClick(Sender: TObject);
begin
  if not UserInfo.Is_SysOnline then
  begin
    ShowMsg(Handle, '������ֻ������ʱʹ�ã�',[]);
    Abort
  end;
  Application.CreateForm(TVIPPswdupdate,VIPPswdupdate);
  VIPPswdupdate.ShowModal;
  VIPPswdupdate.Free;
end;

procedure TFMCliMain.GetData(PageIndex: integer);
var _sql,errMsg:String;
begin
  _sql := ' select FID,FparentID,FImgageIndex,Fname_l2,fnumber,fhelpcode from T_DB_MainMenuItem  '
       +  ' order by FLevel,fnumber';
  if not CliDM.Get_OpenSQL(cdsMenu,_sql,errMsg) then
  begin
    ShowMsg(Handle, '�����ݳ���'+errMsg,[]);
    Abort
  end;
  SetLevelVisible(PageIndex);
  cdsFilterMenu.Data := cdsMenu.Data;
end;

procedure TFMCliMain.SetLevelVisible(PageIndex: integer);
begin
  if PageIndex = 4 then
  begin
    pct_LeftPge.ActivePage := ts_report;    //��������
  end
  else
  begin
    pct_LeftPge.ActivePage := ts_App;
  end;
  //����
  if TreeList.FindNodeByKeyValue('09B44D8B988C46B2BF01BF2CA6277124') <> nil then
  TreeList.FindNodeByKeyValue('09B44D8B988C46B2BF01BF2CA6277124').Visible:= PageIndex=0;
  //����
  if TreeList.FindNodeByKeyValue('7D94339304B74E3DA6558617175A6616') <> nil then
  TreeList.FindNodeByKeyValue('7D94339304B74E3DA6558617175A6616').Visible:= PageIndex=1;
  //��������
  if TreeList.FindNodeByKeyValue('93874DC7099E4EA6854FBA6B3A3FC247') <> nil then
  TreeList.FindNodeByKeyValue('93874DC7099E4EA6854FBA6B3A3FC247').Visible:= PageIndex=2;
  //ϵͳƽ̨
  if TreeList.FindNodeByKeyValue('B5BDD16D4B51432BB25896E194F8CABD') <> nil then
  TreeList.FindNodeByKeyValue('B5BDD16D4B51432BB25896E194F8CABD').Visible:= PageIndex=3;
  //����֧��
  if TreeList.FindNodeByKeyValue('A8B718420D9146C082FF61559509F3FC') <> nil then
  TreeList.FindNodeByKeyValue('A8B718420D9146C082FF61559509F3FC').Visible:= PageIndex=5;

  mainPg.ActivePageIndex := 0;
end;

procedure TFMCliMain.lb_DRPClick(Sender: TObject);
begin
  SetLevelVisible(0);
  lb_ModelName.Caption := TLabel(Sender).Caption;
end;

procedure TFMCliMain.lb_DatabaseClick(Sender: TObject);
begin
  SetLevelVisible(2);
  lb_ModelName.Caption := TLabel(Sender).Caption;
end;

procedure TFMCliMain.lb_SystemClick(Sender: TObject);
begin
  SetLevelVisible(3);
  lb_ModelName.Caption := TLabel(Sender).Caption;
end;

procedure TFMCliMain.lb_reportClick(Sender: TObject);
begin
  SetLevelVisible(4);
  lb_ModelName.Caption := TLabel(Sender).Caption;
end;

procedure TFMCliMain.lb_BIClick(Sender: TObject);
begin
  SetLevelVisible(5);
  lb_ModelName.Caption := TLabel(Sender).Caption;
end;

procedure TFMCliMain.lb_MPSClick(Sender: TObject);
begin
  SetLevelVisible(1);
  lb_ModelName.Caption := TLabel(Sender).Caption;
end;

procedure TFMCliMain.lb_DRPMouseEnter(Sender: TObject);
begin
  TLabel(Sender).Font.Color := clNavy;
  TLabel(Sender).Font.Style := [fsUnderline];
end;

procedure TFMCliMain.lb_DRPMouseLeave(Sender: TObject);
begin
  TLabel(Sender).Font.Color := clBlack;
  TLabel(Sender).Font.Style := [];
end;

procedure TFMCliMain.N1Click(Sender: TObject);
begin
  if pct_LeftPge.ActivePage  = ts_App then
  begin
    if not cdsMenu.IsEmpty  then
    ShowMsg(Handle,cdsMenu.fieldbyname('FID').AsString,[]);
  end
  else
  if pct_LeftPge.ActivePage  = ts_report then
  begin
    if not cdsType.IsEmpty  then
    ShowMsg(Handle,cdsType.fieldbyname('TreeID').AsString,[]);
  end;
end;

procedure TFMCliMain.CreateModalFrom(frmclass: TModalFormClass);
var  tmBaseList:TForm;
begin
  try
     tmBaseList := frmclass.Create(Self);
     tmBaseList.ShowModal;
  finally
     tmBaseList.Free;
  end;
end;

procedure TFMCliMain.TreeListDblClick(Sender: TObject);
var KeyFID,title : string;
begin
  if (cdsMenu.IsEmpty) then Exit;
  KeyFID := cdsMenu.fieldbyname('FID').AsString;
  title  := cdsMenu.fieldbyname('fname_l2').AsString;
  if KeyFID <> '' then
  ShowFrom(KeyFID,title);
end;
//��Ҫ���´���,���޸�Щ����
procedure TFMCliMain.ShowFrom(Fromkey,title : String);
var opt:TOpenFormParameter;
    ErrMsg:string;
    tmpEditForm : TEditFormPar;
    tmpOtherEditForm : TOtherEditFormPar;
begin
  //����˵��:  frmclass:����, title:����ҳǩ��,isMsgIn:�Ƿ����Ϣ����
  //procedure CreatePageList(frmclass:TFormClass;Title:string;isMsgIn:Boolean=False); //���б����
  //����˵��: frmclass:����
  //procedure CreateModalFrom(frmclass:TModalFormClass);     //��ģ̬����
  try
    Screen.Cursor := crHourGlass;
    Gio.AddShow('��ʼ���ô���:'+title+' �ڲ�KEY:'+Fromkey);
    opt:=TOpenFormParameter.Create;
    tmpEditForm := TEditFormPar.Create;
    tmpOtherEditForm := TOtherEditFormPar.Create;
    tmpOtherEditForm.BillFID := '';
    tmpEditForm.BillFID :='';
    //E3E8040F631B46948B5638AB5BB0E8AE ��֧����
    if (Fromkey='E3E8040F631B46948B5638AB5BB0E8AE') then
    begin
      CreateModalFrom(TBranchEditFrm) ;
      Exit;
    end;
    if (Fromkey='5924D489D0AA448389B9B92C8FA3267C') then
    begin
      opt.Caption := title;
      CreatePageList(TAssDataItemEditFrm,opt) ;
      Exit;
    end;
    //���� T_BD_Material,T_BD_Customer,T_BD_Supplier,T_DB_WAREHOUSE
    if (Fromkey='80E70E30009044B19F07997C15570690') then
    begin
      opt.Caption := title;
      opt.TableName := 'T_BD_Material';
      opt.mType := 1;
      opt.isEdit := True;
      opt.isRadioSelect := 1;
      opt.IsNull := False;
      opt.FrmKey := Fromkey;
      CreatePageList(TSelectMaterialFrm,opt) ;
      Exit;
      //getMsterData(TSelectMaterialFrm,title,'','T_BD_Material',1,True,1) ;
    end;
      //���� T_BD_Material,T_BD_Customer,T_BD_Supplier,T_DB_WAREHOUSE
    if (Fromkey='FB9C43141BDC4855A52134C6184A8A7D') then
    begin
      opt.Caption := title;
      opt.TableName := 'T_BD_Material';
      opt.mType := 2;
      opt.isEdit := True;
      opt.isRadioSelect := 1;
      opt.IsNull := False;
      opt.FrmKey := Fromkey;
      CreatePageList(TSelectMaterialFrm,opt) ;
      Exit;
      //getMsterData(TSelectMaterialFrm,title,'','T_BD_Material',1,True,1) ;
    end;
    //FDB6B7AD3D8648CB952E36C5B7976814�ͻ�
    if (Fromkey='FDB6B7AD3D8648CB952E36C5B7976814') then
    begin
      opt.Caption := title;
      opt.TableName := 'T_BD_Customer';
      opt.mType := 5;
      opt.isEdit := True;
      opt.isRadioSelect := 1;
      opt.IsNull := False;
      CreatePageList(TSelectClientFrm,opt) ;
      Exit;
    end;
    //4206032AD83E4560BAA807C55DBDC444��Ӧ��
    if (Fromkey='4206032AD83E4560BAA807C55DBDC444') then
    begin
      opt.Caption := title;
      opt.TableName := 'T_BD_Supplier';
      opt.mType := 6;
      opt.isEdit := True;
      opt.isRadioSelect := 1;
      opt.IsNull := False;
      CreatePageList(TselectSuppliersFrm,opt) ;
      Exit;
    end;
    //84094E1361CC4137AA43E8387E11C1E9�ֿ�
    if (Fromkey='84094E1361CC4137AA43E8387E11C1E9') then
    begin
      opt.Caption := title;
      opt.TableName := 'T_DB_WAREHOUSE';
      opt.mType := 4;
      opt.isEdit := True;
      opt.isRadioSelect := 1;
      opt.IsNull := False;
      CreatePageList(TSelectWarehouseFrm,opt) ;
      Exit;
    end;
    /////////////�û�����
    if (Fromkey='AFDAAA5EBC6B480993B96619186FF763') then
    begin
      opt.Caption := title;
      CreatePageList(TFM_UserInfoForm,opt) ;
      Exit;
    end;
      /////////////��ɫ����
    if (Fromkey='F1274B75C65A4EDCA9C486C6447881D8') then
    begin
      opt.Caption := title;
      CreatePageList(TFM_RoleListForm,opt) ;
      Exit;
    end;
    //��ɫ
    if (Fromkey='81904DCA89E3462AA733D9BAB2FEA996') then
    begin
      opt.Caption := title;
      opt.TableName := 't_bd_asstattrvalue_color' ;
      CreatePageList(TAssDataItemEditFrm,opt) ;
      Exit;
    end;
    //����
    if (Fromkey='40CAEB654CDE4DF0A27C597BBE745973') then
    begin
      opt.Caption := title;
      opt.TableName := 't_bd_asstattrvalue_size' ;
      CreatePageList(TAssDataItemEditFrm,opt) ;
      Exit;
    end;
    //���
    if (Fromkey='943710A288B64D6FB4FC3A60001142BE') then
    begin
      opt.Caption := title;
      opt.TableName := 't_bd_asstattrvalue_model';
      CreatePageList(TAssDataItemEditFrm,opt) ;
      Exit;
    end;
    //�ڳ�
    if (Fromkey='E51E29B2D3B54AF2A7EDBBE9FCF20B83') then
    begin
      opt.Caption := title;
      opt.TableName := 't_bd_asstattrvalue_cup' ;
      CreatePageList(TAssDataItemEditFrm,opt) ;
      Exit;
    end;
    //����
    if (Fromkey='3CB9272CE9AA4F058E3339C2E4653B81') then
    begin
      opt.Caption := title;
      opt.TableName := 't_bd_asstattrvalue_pack' ;
      CreatePageList(TAssDataItemEditFrm,opt) ;
      Exit;
    end;
      //�ֿ�����
    if (Fromkey='289A51FF37AD41978F622B5640BEAD22') then
    begin
      opt.Caption := title;
      CreatePageList(TWarehouseSetFrm,opt) ;
      Exit;
    end;
    //���� 0F2E71798FCE460391FBBB1A4211D072
    if (Fromkey='0F2E71798FCE460391FBBB1A4211D072') then
    begin
      CreateModalFrom(TDepartmentFrm) ;
      Exit;
    end;
    //��Ա71FDEFBD085743A792B952162E28DB0E
    if (Fromkey='71FDEFBD085743A792B952162E28DB0E') then
    begin
      opt.Caption := title;
      CreatePageList(TPersonListFrm,opt) ;
      Exit;
    end;
    //������ձ�ED932041B822480F8ACFD78FEBDB3CCD
    if (Fromkey='ED932041B822480F8ACFD78FEBDB3CCD') then
    begin
      opt.Caption := title;
      CreatePageList(TCodeTableFrm,opt) ;
      Exit;
    end;
    if (Fromkey='ED932041B822480F8ACFD78FEBDB3CCD') then
    begin
      opt.Caption := title;
      CreatePageList(TCodeTableFrm,opt) ;
      Exit;
    end;
    if (Fromkey='F3E412B1045F4FE1BB458A5518252CE3') then
    begin
      opt.Caption := title;
      CreatePageList(TFM_ParamSetForm,opt) ;
      Exit;
    end;
    if (Fromkey='2C0CB4CF1A5640D7BCF8A17757D9E56B') then
    begin
      opt.Caption := title;
      opt.FrmKey := Fromkey;
      opt.mType := 0;//0������ 1:�����
      CreatePageList(TSizeGroupListFrm,opt) ;
      Exit;
    end;
    if (Fromkey='619253D36CB54BB9BAF90035EE15529F') then
    begin
      opt.Caption := title;
      opt.FrmKey := Fromkey;
      opt.mType := 1;//0������ 1:�����
      CreatePageList(TSizeGroupListFrm,opt) ;
      Exit;
    end;
    //�����ȡ����
    if (Fromkey='88E8CD8A53824819AD4A1DE354EAF010') then
    begin
      opt.Caption := title;
      CreatePageList(TReadCodeScenarioListFrm,opt) ;
      Exit;
    end;
      //Ȩ����ά��
    if (Fromkey='D4DC3CD7A9F8427DB5C99B299C267566') then
    begin
      opt.Caption := title;
      CreatePageList(TPermissionsEditFrm,opt) ;
      Exit;
    end;
        //�����б�����
    if (Fromkey='709EE238AFDF4D64ADD5CC7015A7EA1B') then
    begin
      opt.Caption := title;
      CreatePageList(TBillQueryFrm,opt) ;
      Exit;
    end;
    //����ƽ̨����
    if (Fromkey='BD1ECCBC246D4C89B8348CB883CDB3EB') then
    begin
      opt.Caption := title;
      CreatePageList(TSmsSystemSetFrm,opt) ;
      Exit;
    end;
     //���Ų���
    if (Fromkey='D8999C2F87C949ACA7212B75BC8AF480') then
    begin
      opt.Caption := title;
      CreatePageList(TSmsSendQueryFrm,opt) ;
      Exit;
    end;
    //�����б�����
    if (Fromkey='A678CE00642B4EADA363AC380DE33998') then
    begin
      opt.Caption := title;
      CreatePageList(TFM_BillListT_IM_MoveInWarehsBill,opt) ;
      Exit;
    end;
    //��ӡ����Դ����
    if (Fromkey='F33A6CB96CB74D5D9511884570D0DEB2') then
    begin
      opt.Caption := title;
      CreatePageList(TPrintQueryFrm,opt) ;
      Exit;
    end;
    //��ӡģ������
    if (Fromkey='D1D90157AA5D4F14930E51CDA3D0151D') then
    begin
      opt.Caption := title;
      CreatePageList(TPrintTemplateDesign,opt) ;
      Exit;
    end;
    //������ǰ׺
    if (Fromkey='61C0E3CEF2F04B00A8BB8B6500AAFF2B') then
    begin
      opt.Caption := title;
      CreatePageList(TINTERCODEPREFIXListFrm,opt) ;
      Exit;
    end;
    //���ɹ�����
    if (Fromkey='710DEFDF878F4B82B6C8908864D14770') then
    begin
      opt.Caption := title;
      CreatePageList(TCreateInterCode,opt) ;
      Exit;
    end;
    //�������ӡ
    if (Fromkey='ACD85BC68AB6491DA2634E5E605A5E3D') then
    begin
      opt.Caption := title;
      CreatePageList(TBarCodePrintFrm,opt) ;
      Exit;
    end;
    if (Fromkey='FC9D21C5FEFB44BDAEB86C99945F7D96') then //�ɹ������༭
    begin
      OpenEditFrom(FM_BillEditPurOrder,TFM_BillEditPurOrder,tmpEditForm);
      Exit;
    end;
    if (FromKey='831DB7B482464BB791BFB10F87F36AF6') then   //�ɹ������б�
    begin
      opt.Caption := title;
      CreatePageList(TFM_BillListPurOrder,opt) ;
      Exit;
    end;
    if (Fromkey='3535C77C4ADD4181900F95EAB4DB8BD8') then  //���۶����༭
    begin
      OpenEditFrom(FM_BillEditSaleOrder,TFM_BillEditSaleOrder,tmpEditForm);
      Exit;
    end;
    if (Fromkey='1462516471CF48D58FE16ED36CBA6188') then  //���۶�����ѯ
    begin
      opt.Caption := title;
      CreatePageList(TFM_BillListSaleOrder,opt) ;
      Exit;
    end;
    if (Fromkey='A60721335A484E5395DF967AF9CBDD68') then  //������༭
    begin
      OpenEditFrom(FM_BillEditPostReq,TFM_BillEditPostReq,tmpEditForm);
      Exit;
    end;
    if (Fromkey='8BE8E504DA6041AEADDDD461353A8D90') then  //�������ѯ
    begin
      opt.Caption := title;
      CreatePageList(TFM_BillListPostReq,opt) ;
      Exit;
    end;
    if (Fromkey='10AD23F23E2E4F51A4A389B20ECFF406') then  //���۳��ⵥ�༭
    begin
      OpenEditFrom(FM_BillEditSaleIssue,TFM_BillEditSaleIssue,tmpEditForm);
      Exit;
    end;
    if (Fromkey='D56BF82CEB674C50B8672C798B48CDC9') then  //���۳��ⵥ��ѯ
    begin
      opt.Caption := title;
      CreatePageList(TFM_BillListSaleIssue,opt) ;
      Exit;
    end;

    if (Fromkey='4F8D05F960224A2EB7DEAB0FE01DD07A') then  //�����˻����༭
    begin
      OpenEditFrom(FM_BillEditSaleIssueReturn,TFM_BillEditSaleIssueReturn,tmpEditForm);
      Exit;
    end;
    if (Fromkey='CB83D2CA446F492C94340A5736A1226C') then  //�����˻�����ѯ
    begin
      opt.Caption := title;
      CreatePageList(TFM_BillListSaleIssueReturn,opt) ;
      Exit;
    end;


    if (Fromkey='A57E5EF33866400F90FD5B73AD0F44F1') then //�����ɹ������༭
    begin
      OpenEditFrom(FM_BillEditBranchPO,TFM_BillEditBranchPO,tmpEditForm);
      Exit;
    end;
    if (Fromkey='CCAEB80E809441E3B8763384E7721A96') then  //�����ɹ�������ѯ
    begin
      opt.Caption := title;
      CreatePageList(TFM_BillListBranchPO,opt) ;
      Exit;
    end;
    if (Fromkey='D9F77E05CFBC41D598594536FCB87786') then  //�ɹ����뵥����
    begin
      OpenEditFrom(FM_BillEditPurRequest,TFM_BillEditPurRequest,tmpEditForm);
      Exit;
    end;
    if (Fromkey='3838F7DF5542479AB7A781B41DEB63D1') then  //�ɹ����뵥��ѯ
    begin
      opt.Caption := title;
      CreatePageList(TFM_BillListPurReturns,opt) ;
      Exit;
    end;
    if (Fromkey='BC45D02D00D1444F90516BAF8825582E') then  //�ɹ��ջ�������
    begin
      OpenEditFrom(FM_BillEditPurReceive,TFM_BillEditPurReceive,tmpEditForm);
      Exit;
    end;
    if (Fromkey='01AE86377F7E4CCB9700CEC4394A3C87') then  //�ɹ��ջ�����ѯ
    begin
      opt.Caption := title;
      CreatePageList(TFM_BillListPurReceive,opt) ;
      Exit;
    end;
    if (Fromkey='C5D203C14BB74410A20372827F98C75E') then  //�ɹ���ⵥ����
    begin
      OpenEditFrom(FM_BillEditPurInStock,TFM_BillEditPurInStock,tmpEditForm);
      Exit;
    end;
    if (Fromkey='0BC41C7E61F04D8F9B273E80A4EDCA4B') then  //�ɹ���ⵥ��ѯ
    begin
      opt.Caption := title;
      CreatePageList(TFM_BillListPurInStock,opt) ;
      Exit;
    end;
    if (Fromkey='05C9017CF1474E6A8236BAF437106881') then  //�����ɹ���ⵥ����
    begin
      OpenEditFrom(FM_BillEditPurInWarehs,TFM_BillEditPurInWarehs,tmpEditForm);
      Exit;
    end;
    if (Fromkey='0FF683C8157643B7B2CDC8186F51A1E6') then  //�����ɹ���ⵥ��ѯ
    begin
      opt.Caption := title;
      CreatePageList(TFM_BillListPurInWarehs,opt) ;
      Exit;
    end;
  
    if (Fromkey='9D09F6FCF1104280B64E8B7FAA1BB4D8') then  //�����ɹ��˻�������
    begin
      OpenEditFrom(FM_BillEditPurReturnWarehs,TFM_BillEditPurReturnWarehs,tmpEditForm);
      Exit;
    end;
    if (Fromkey='4DB6BAFB962149FA9CDD198AAD9FE542') then  //�����ɹ��˻�����ѯ
    begin
      opt.Caption := title;
      CreatePageList(TFM_BillListPurReturWarehs,opt) ;
      Exit;
    end;
    if (Fromkey='781058DE51934DADB043F8E090E3D1CB') then  //�ɹ��˻����뵥����
    begin
      OpenEditFrom(FM_BillEditPurRetuens,TFM_BillEditPurRetuens,tmpEditForm);
      Exit;
    end;
    if (Fromkey='CC19AFDA4B294F99AA4F60C20C2A229E') then  //�ɹ��˻����뵥��ѯ
    begin
      opt.Caption := title;
      CreatePageList(TFM_BillListPurReturns,opt) ;
      Exit;
    end;
    if (Fromkey='A67E04B65E6C4248A98839ADCBE829E2') then  //���޵���ѯ
    begin
      opt.Caption := title;
      CreatePageList(TRepairListFrm,opt) ;
      Exit;
    end;


    if (Fromkey='251D3E40E83F4D30966E53E949D5146E') then  //�ɹ��˻�������
    begin
      OpenEditFrom(FM_BillEditPurInWarehsReturn,TFM_BillEditPurInWarehsReturn,tmpEditForm);
      Exit;
    end;
    if (Fromkey='23F8450840FB4A089885DD4D24E1A89F') then  //�ɹ��˻�����ѯ
    begin
      opt.Caption := title;
      CreatePageList(TFM_BillListPurInWarehsReturn,opt) ;
      Exit;
    end;

    if (Fromkey='9C4EA42025674E17A17E02326F9F8BA4') then  //�������ⵥ����
    begin
      OpenEditFrom(FM_BillEditMoveIssue,TFM_BillEditMoveIssue,tmpEditForm);
      Exit;
    end;
    if (Fromkey='8449C6AAE60F4EE493C1CD8776967476') then  //�������ⵥ��ѯ
    begin
      opt.Caption := title;
      CreatePageList(TFM_BillListT_IM_MoveIssueBill,opt) ;
      Exit;
    end;

    if (Fromkey='6D64185781DF4CB596CE28749D7A03D0') then  //������ⵥ����
    begin
      OpenEditFrom(FM_BillEditMoveinwarehs,TFM_BillEditMoveinwarehs,tmpEditForm);
      Exit;
    end;
    if (Fromkey='A678CE00642B4EADA363AC380DE33998') then  //������ⵥ��ѯ
    begin
      opt.Caption := title;
      CreatePageList(TFM_BillListT_IM_MoveInWarehsBill,opt) ;
      Exit;
    end;

    if (Fromkey='308C4C28A1A04805881E543EE6038F6A') then  //�����˻���������
    begin
      OpenEditFrom(FM_BillEditSaleReturnRequest,TFM_BillEditSaleReturnRequest,tmpEditForm);
      Exit;
    end;
    if (Fromkey='4D06AC5CB1A847B7A0BD8B26DA925E37') then  //�����˻������ѯ
    begin
      opt.Caption := title;
      CreatePageList(TFM_BillListSaleReturnRequest,opt) ;
      Exit;
    end;
     if (Fromkey='CBFB6929601D46A2AA48B6567F7E16AC') then  //��������������
    begin
      OpenEditFrom(FM_BillEditChanelTrans,TFM_BillEditChanelTrans,tmpEditForm);
      Exit;
    end;
    if (Fromkey='E6E20E327797454FA3360C601D7A6368') then  //������������ѯ
    begin
      opt.Caption := title;
      CreatePageList(TFM_BillListChanelTrans,opt) ;
      Exit;
    end;

    if (Fromkey='C9580B19E7BF4A168FC5ADB243BE0959') then  //�������ⵥ����
    begin
      OpenEditFrom(FM_BillEditOtherIssuebill,TFM_BillEditOtherIssuebill,tmpEditForm);
      Exit;
    end;
    if (Fromkey='D4656D6449B54D3985737C1DB679A49F') then  //�������ⵥ��ѯ
    begin
      opt.Caption := title;
      CreatePageList(TFM_BillListOtherIssuebill,opt) ;
      Exit;
    end;
    if (Fromkey='70DB8753306C42BC915BF1F5C1ECA779') then  //���õ���
    begin
      opt.Caption := title;
      CreatePageList(TCreditFileFrm,opt) ;
      Exit;
    end;
    if (Fromkey='36A0BF5315034A31846407EDCBBEFFDC') then  //�̳����˵���ѯ
    begin
      opt.Caption := title;
      CreatePageList(TMallCompareListFrm,opt) ;
      Exit;
    end;

    if (Fromkey='5651B7E835194006A9993D1766ECB157') then  //������ⵥ����
    begin
      OpenEditFrom(FM_BillEditOtherInwarehsbill,TFM_BillEditOtherInwarehsbill,tmpEditForm );
      Exit;
    end;
    if (Fromkey='248A9B0587D74F338E8EA26A6A7F0739') then  //������ⵥ��ѯ
    begin
      opt.Caption := title;
      CreatePageList(TFM_BillListOtherInwarehsbill,opt) ;
      Exit;
    end;
    if (Fromkey='64C081D7904E4F49A78F47D3BCF2C535') then  //�̳����˵�����
    begin
      Self.CreateModalFrom(TMallCompareFrm);
      Exit;
    end;
    if (Fromkey='42FA5905E00B4129BC76E2B020396801') then  //�����޸���ɫ
    begin
      Self.CreateModalFrom(TBatchAlterOrderColorFrm);
      Exit;
    end;
    if (Fromkey='014631D4753B4D3890487AAD2765DF1C') then  //�����رն���
    begin
      Self.CreateModalFrom(TBatchCloseOrderFrm);
      Exit;
    end;
    if (Fromkey='4889625AF1FD4BF793993E27BE089AC3') then  //��������
    begin
      Self.CreateModalFrom(TOrderAllocateFrm);
      Exit;
    end;
    if (Fromkey='6F695F810BB44F0B9E334DB74D6DDF8F') then  //����ȡ�����
    begin
      Self.CreateModalFrom(TBatchCancelAllocationFrm);
      Exit;
    end;
    if (Fromkey='CF3EBF44191240D48E963B52933A9F80') then  //�������Ӷ�������
    begin
      Self.CreateModalFrom(TBatchAddOrderMaterialFrm);
      Exit;
    end;
    if (Fromkey='0DABA00B49174A579B8362B5AD07B65A') then  //��Ʊ֪ͨ������
    begin
      OpenOtherBillEditFrom(TicketRequisitionFrm,TTicketRequisitionFrm,tmpOtherEditForm);
      Exit;
    end;
    if (Fromkey='57DF9D07AB4949F6BF1F799A281CDDC5') then  //���޵�����
    begin
      OpenOtherBillEditFrom(RepairEditFrm,TRepairEditFrm,tmpOtherEditForm);
      Exit;
    end;
    if (Fromkey='59F49E61E28047F389ECF7FDB54EBA6F') then  //��Ʊ֪ͨ����ѯ
    begin
      opt.Caption := title;
      CreatePageList(TTicketRequisitionList,opt) ;
      Exit;
    end;
    ////����ʼ��
    if (Fromkey='254A0AD5DFF1487B8135E7D5F45E0308') then  //����ʼ��������
    begin
      OpenEditFrom(FM_BillEditInvInitForm,TFM_BillEditInvInitForm,tmpEditForm);
      Exit;
    end;
    if (Fromkey='5372314CC4DC4593A52675F64829D150') then  //����ʼ������ѯ
    begin
      opt.Caption := title;
      CreatePageList(TFM_BillListInvInitForm,opt) ;
      Exit;
    end;
     ////����̵㵥
    if (Fromkey='06BA1BE75C324FCCA5E4D3A431F8B186') then  //����̵㵥����
    begin
      OpenEditFrom(Frm_SCMCheckBill,TFrm_SCMCheckBill,tmpEditForm);
      Exit;
    end;
    if (Fromkey='68729CB9C4584FA88DF5DA759576A99A') then  //����̵㵥��ѯ
    begin
      opt.Caption := title;
      CreatePageList(TFM_BillListSCMCheck,opt) ;
      Exit;
    end;
    ///
    if (Fromkey='17D476D231A2409889AE9C297868B96D') then  //�����̵���
    begin
      opt.Caption := title;
      OpenCheckSaveStorage;
     // CreatePageList(TFrm_SCMCheckSaveStorage,opt) ;
      Exit;
    end;
    if (Fromkey='B7A1E23B3C58479F8E6452203CF30338') then  //�̵����
    begin
      opt.Caption := title;
      OpenCheckReport;
     // CreatePageList(TFrm_SCMCheckSaveStorage,opt) ;
      Exit;
    end;
    if (Fromkey='84869956AAC74F6FA2C53CB9700823F7') then  //����ӯ/����
    begin
      opt.Caption := title;
      OpenCheckAffirm;
     // CreatePageList(TFrm_SCMCheckSaveStorage,opt) ;
      Exit;
    end;
    if (Fromkey='3D851171E6054A7196EA748CAAA9B790') then  //���ӯ/����
    begin
      opt.Caption := title;
     // OpenCheckAffirm;
     // CreatePageList(TFrm_SCMCheckSaveStorage,opt) ;
      Exit;
    end;
    if (Fromkey='A5556DD9E5B2428E9410F57F1DEB0968') then     //������ѯ
    begin
      opt.Caption := title;
      CreatePageList(TFM_BillListPromt,opt) ;
      Exit;
    end;

    if (Fromkey='68729CB9C4584FA88DF5DA759576A99A') then  //����̵㵥��ѯ
    begin
      opt.Caption := title;
      CreatePageList(TFM_BillListSCMCheck,opt) ;
      Exit;
    end;

    //�������>>
    //�������
    if (Fromkey='9F78112111BF485FA0AA35849D051C6A') then
    begin
      opt.Caption := title;
      CreatePageList(TBillDistributionFrm,opt) ;
      Exit;
    end;
    //�������
    if (Fromkey='C8BC1A39B2654920B8C94BBA4C6BB5BA') then
    begin
      opt.Caption := title;
      CreatePageList(TMaterialDistributionFrm,opt) ;
      Exit;
    end;
    //��������
    if (Fromkey='0F87D1E1093E4C49836411105A91F580') then
    begin
      opt.Caption := title;
      CreatePageList(TStockDistributionFrm,opt) ;
      Exit;
    end;
    //ɢ��װ��
    if (Fromkey ='F8C0115DAC514A598F8DF9773AD51413') then
    begin
      Application.CreateForm(TPackingListFrm,PackingListFrm);
      PackingListFrm.PackingContext.IsBillOpen := False;
      PackingListFrm.ShowModal;
      PackingListFrm.Free;
    end;
    //�����۸������ѯ
    if (Fromkey='D8FBE6F0DD01442B894B8F5920D5B626') then
    begin
      opt.Caption := title;
      CreatePageList(TAlterPriceListFrm,opt) ;
      Exit;
    end;
    //���ۼ۸������ѯ
    if (Fromkey='4917833D29DC4484ACE6D5D9767D37F6') then
    begin
      opt.Caption := title;
      CreatePageList(TShopAlterPriceListFrm,opt) ;
      Exit;
    end;
    //�����۸��ѯ
    if (Fromkey='CF70CBCA8D4D4DDFADCDDF48365D0A79') then
    begin
      opt.Caption := '�۸��ѯ';
      opt.FrmKey := Fromkey;
      opt.mType := 0;
      CreatePageList(TPriceQueryFrm,opt) ;
      Exit;
    end;
    //���ۼ۸��ѯ
    if (Fromkey='736780F409594EE7BDDEDDE979800C7D') then
    begin
      opt.Caption := '�۸��ѯ';
      opt.FrmKey := Fromkey;
      opt.mType := 1;
      CreatePageList(TPriceQueryFrm,opt) ;
      Exit;
    end;
    //�����ɹ��۸��ѯ
    if (Fromkey='461D4DF578DB450E94753C329F54BD7A') then
    begin
      opt.Caption := '�۸��ѯ';
      opt.FrmKey := Fromkey;
      opt.mType := 2;
      CreatePageList(TPriceQueryFrm,opt) ;
      Exit;
    end;
    //�������²�����
    if (Fromkey='C5CE277D5DBA409A953D11E4B8362D74') then
    begin
      opt.Caption := title;
      CreatePageList(TFindBillQueryFrm,opt) ;
      Exit;
    end;
    //��������
    if (Fromkey='5ACCFADEEBBB4477AF262BE63801F581') then
    begin
      opt.Caption := title;
      CreatePageList(TRemindConfigFrm,opt) ;
      Exit;
    end;
    //������
    if (Fromkey='FAC5C4EE330B4F6887CFE1B44F31234C') then
    begin
      opt.Caption := title;
      CreatePageList(TTransactionFrm,opt) ;
      Exit;
    end;
    //��̨������־��ѯ����
    if (Fromkey='36BF59767D3945D196DBBFFE895EA13D') then
    begin
      opt.Caption := title;
      CreatePageList(TTransactionLogQuery,opt) ;
      Exit;
    end;
    //���ݱ�������
    if (FromKey='AEBF3A69AD844C9A95AF226B79B1A116') then   //�ɹ������б�
    begin
      opt.Caption := title;
      CreatePageList(TExportMainFrm,opt) ;
      Exit;
    end;

    //----------------------------------------------------------------------------
    //�������
    if (Fromkey='BE0D0EAADEAC4D6C82F60B8A679C503D') then //���������
    begin
      OpenReportModel(Fromkey,title,1);
      Exit;
    end;
      //�������
    if (Fromkey='9749958DA3C145F3AB5578343CBAFEC9') then //�����û�Ȩ��
    begin
      OpenReportModel(Fromkey,title,2);
      Exit;
    end;
    if (Fromkey='DB58D634BC63430A9712352955E632E5') then //�����ɫȨ��
    begin
      OpenReportModel(Fromkey,title,3);
      Exit;
    end;

    //�������ĵı���
    if string(CliDM.Get_QueryReturn('select Report_id from F_report where Report_id='+quotedstr(Fromkey),ErrMsg))<>'' then
    begin
      OpenReportQuery(Fromkey,title);
      Exit;
    end;
  finally
    Screen.Cursor := crDefault;
  end;
end;



procedure TFMCliMain.Txt_helpCodeEditing(Sender: TObject;
  var CanEdit: Boolean);
begin
  if Txt_helpCode.Text = '����������򿪹��ܽ���...' then
  begin
    Txt_helpCode.Text := '';
  end;
  Txt_helpCode.Style.Font.Color := clBlack;
end;

procedure TFMCliMain.Txt_helpCodeExit(Sender: TObject);
begin
  if Txt_helpCode.Text = '' then
  begin
    Txt_helpCode.Style.Font.Color := clScrollBar;
    Txt_helpCode.Text := '����������򿪹��ܽ���...';
  end;
  //FilterGrid.Visible := False;
end;

procedure TFMCliMain.setTreeListExp;
begin
  if TreeList.FindNodeByKeyValue('09B44D8B988C46B2BF01BF2CA6277124') <> nil then
  TreeList.FindNodeByKeyValue('09B44D8B988C46B2BF01BF2CA6277124').Expanded := True;
  //����
  if TreeList.FindNodeByKeyValue('7D94339304B74E3DA6558617175A6616') <> nil then
  TreeList.FindNodeByKeyValue('7D94339304B74E3DA6558617175A6616').Expanded := True;
  //��������
  if TreeList.FindNodeByKeyValue('93874DC7099E4EA6854FBA6B3A3FC247') <> nil then
  TreeList.FindNodeByKeyValue('93874DC7099E4EA6854FBA6B3A3FC247').Expanded := True;
  //ϵͳƽ̨
  if TreeList.FindNodeByKeyValue('B5BDD16D4B51432BB25896E194F8CABD') <> nil then
  TreeList.FindNodeByKeyValue('B5BDD16D4B51432BB25896E194F8CABD').Expanded := True;
  //�������
  if TreeList.FindNodeByKeyValue('73AB11AEF29741A1B6289406D4C7C0FD') <> nil then
  TreeList.FindNodeByKeyValue('73AB11AEF29741A1B6289406D4C7C0FD').Expanded := True;
  //����֧��
  if TreeList.FindNodeByKeyValue('A8B718420D9146C082FF61559509F3FC') <> nil then
  TreeList.FindNodeByKeyValue('A8B718420D9146C082FF61559509F3FC').Expanded := True;
end;

procedure TFMCliMain.CreateSpeedButton(_Caption, _Frmkey: String;isADDSt:Boolean=True);
var sbt : TSpeedButton;
    leftWidth,i:Integer;
begin
  for i:=0 to ScrollBox1.ComponentCount -1 do
  begin
    if ScrollBox1.Components[i].Name = 'ST_'+ _Frmkey then
    Exit;
  end;
  lb_APP.Visible := False;
  leftWidth := ScrollBox1.ComponentCount*82;
  sbt := TSpeedButton.Create(ScrollBox1);
  sbt.Parent := ScrollBox1;
  if isADDSt then
  sbt.Name :='ST_'+_Frmkey
  else
  sbt.Name :=_Frmkey;
  sbt.Width := 82;
  sbt.Height := 75;
  sbt.Top := 4;
  sbt.Left := leftWidth;
  sbt.Layout := blGlyphTop;
  if Length(_Caption)>10 then
  sbt.Caption := Copy(_Caption,1,10)+'...'
  else
  sbt.Caption := _Caption;
  sbt.Flat := True;
  sbt.Font.Size := 9;
  sbt.Hint := _Caption;
  sbt.ShowHint := True;
  sbt.Cursor := crHandPoint;
  sbt.OnClick := APPClick;
  sbt.Glyph.LoadFromFile(userinfo.ExePath+'Img\App.bmp');
end;

procedure TFMCliMain.lb_LeftmoveMouseEnter(Sender: TObject);
begin
  TLabel(Sender).Font.Style := [fsBold];
end;

procedure TFMCliMain.lb_LeftmoveMouseLeave(Sender: TObject);
begin
  TLabel(Sender).Font.Style := [];
end;

procedure TFMCliMain.lb_RigthmoveClick(Sender: TObject);
var i:Integer;
begin
  for i:=1 to 40 do
  begin
    Sleep(1);
    ScrollBox1.ScrollBy(2,0);
    Application.ProcessMessages;
  end;
end;

procedure TFMCliMain.lb_LeftmoveClick(Sender: TObject);
var i:Integer;
begin
  for i:=1 to 40 do
  begin
    Sleep(1);
    ScrollBox1.ScrollBy(-2,0);
    Application.ProcessMessages;
  end;
end;

procedure TFMCliMain.N_AddMainClick(Sender: TObject);
var FID,Title:string;
begin
  if pct_LeftPge.ActivePage  = ts_App then
  begin
    FID := cdsMenu.fieldbyname('FID').AsString;
    Title := cdsMenu.fieldbyname('fname_l2').AsString;
    CreateSpeedButton(Title,fid);
  end
  else
  if pct_LeftPge.ActivePage  = ts_report then
  begin
    FID := cdsType.fieldbyname('TreeID').AsString;
    Title := cdsMenu.fieldbyname('REPORTTYPENAME').AsString;
    CreateSpeedButton(Title,fid);
  end;
end;

procedure TFMCliMain.ScrollBox1DragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept :=  Source is TcxDBTreeList;
end;

procedure TFMCliMain.ScrollBox1DragDrop(Sender, Source: TObject; X,
  Y: Integer);
  var FID,Title:string;
begin
  if Source is TcxDBTreeList then
  begin
    if pct_LeftPge.ActivePage  = ts_App then
    begin
      if TreeList.FocusedNode = nil then Exit;
      if TreeList.FocusedNode.HasChildren then
      begin
        ShowMsg(self.Handle,'��ѡ��Ľڵ㲻�ǹ��ܽڵ�Ŷ!',[]);
        Exit;
      end;
      FID := TreeList.FocusedNode.Values[0];
      Title := TreeList.FocusedNode.Values[2];
      CreateSpeedButton(Title,FID);
    end
    else
    if pct_LeftPge.ActivePage  = ts_report then
    begin
      if ReportTree.FocusedNode = nil then Exit;
      if ReportTree.FocusedNode.HasChildren then
      begin
        ShowMsg(self.Handle,'��ѡ��Ľڵ㲻�ǹ��ܽڵ�Ŷ!',[]);
        Exit;
      end;
      FID := ReportTree.FocusedNode.Values[0];
      Title := ReportTree.FocusedNode.Values[2];
      CreateSpeedButton(Title,FID);
    end;

  end;

end;

procedure TFMCliMain.AppSaveToIni;
var ini:TIniFile;
i:Integer;
begin
  try
    ini:=TIniFile.Create(userinfo.ExePath+'App.ini');
    ini.EraseSection('APP');
    for i:=0 to ScrollBox1.ComponentCount -1 do
    begin
      if (ScrollBox1.Components[i] is TSpeedButton ) and (TSpeedButton(ScrollBox1.Components[i]).Visible)    then
      ini.WriteString('APP',ScrollBox1.Components[i].Name,TSpeedButton(ScrollBox1.Components[i]).Hint);
    end;
  finally
    ini.Free;
  end;
end;

procedure TFMCliMain.FromIinLoadAPP;
var list,node:TStringList;
    ini:TIniFile;
    i:Integer;
    fid,title:string;
    olist:TList;
begin
  try
    olist := TList.Create;
    for i:=0 to ScrollBox1.ComponentCount -1 do
    begin
      if ScrollBox1.Components[i] is TSpeedButton     then
      begin
        olist.Add(ScrollBox1.Components[i]);
      end;
    end;
    for i:=0 to  olist.Count -1 do
    begin
      TSpeedButton(olist[i]).Free;
    end;
    list := TStringList.Create;
    node := TStringList.Create;
    node.Delimiter :='=';
    ini:=TIniFile.Create(userinfo.ExePath+'App.ini');
    ini.readsectionvalues('APP',list);
    for i:=0 to list.Count-1 do
    begin
      node.DelimitedText := list[i];
      fid := node[0];
      title := node[1];
      CreateSpeedButton(title,fid,False);
    end;
  finally
    olist.Free;
    ini.Free;
    node.Free;
    list.Free;
  end;
end;

procedure TFMCliMain.APPClick(Sender: TObject);
var fid,_name:string;
begin
  if TSpeedButton(Sender).Tag = 0 then
  begin
    _name := TSpeedButton(Sender).Name;
    fid := Copy(_name,4,Length(_name)-3);
    ShowFrom(fid,TSpeedButton(Sender).Hint);
  end
  else
  begin
    TSpeedButton(Sender).Visible := False;
  end;
end;

procedure TFMCliMain.GetTxItem;
begin

  {
  cdsTX.Append;
  cdsTX.FieldByName('FID').AsString := 'tx_001';
  cdsTX.FieldByName('Fitem').AsString := 'δ��˵����۶���';
  cdsTX.FieldByName('Fvalue').AsString := '6';
  cdsTX.Post;
  cdsTX.Append;
  cdsTX.FieldByName('FID').AsString := 'tx_002';
  cdsTX.FieldByName('Fitem').AsString := 'δ��˵Ĳɹ�����';
  cdsTX.FieldByName('Fvalue').AsString := '3';
  cdsTX.Post;
  cdsTX.Append;
  cdsTX.FieldByName('FID').AsString := 'tx_003';
  cdsTX.FieldByName('Fitem').AsString := 'δ��˵ĵ�����ⵥ';
  cdsTX.FieldByName('Fvalue').AsString := '2';
  cdsTX.Post;
  cdsTX.Append;
  cdsTX.FieldByName('FID').AsString := 'tx_004';
  cdsTX.FieldByName('Fitem').AsString := 'δ��˵Ĳɹ���ⵥ';
  cdsTX.FieldByName('Fvalue').AsString := '5';
  cdsTX.Post;
  cdsTX.Append;
  cdsTX.FieldByName('FID').AsString := 'tx_005';
  cdsTX.FieldByName('Fitem').AsString := 'δ������۳��ⵥ';
  cdsTX.FieldByName('Fvalue').AsString := '8';
  cdsTX.Post;
  }
end;

procedure TFMCliMain.N_DownFileClick(Sender: TObject);
var Fname,_sql,ErrMsg:string;
    cds : TClientDataSet;
begin
  if dsATTACHMEN.IsEmpty then Exit;
  Fname := dsATTACHMEN.fieldbyname('�����ļ���').AsString;
  SaveDg.FileName := Fname ;
  if SaveDg.Execute then
  begin
    try
      cds := TClientDataSet.Create(nil);
      _sql := 'select FFile from T_BAS_ATTACHMENT where FID='+QuotedStr(dsATTACHMEN.fieldbyname('FID').AsString);
      if not CliDM.Get_OpenSQL(cds,_sql,ErrMsg) then
      begin
        ShowMsg(Self.Handle,'���ظ�������:'+Errmsg,[]);
        Exit;
      end;
      if not cds.IsEmpty then
      begin
        TBlobField(cds.FieldByName('FFile')).SaveToFile(SaveDg.FileName);
        ShowMsg(Self.Handle,'�������سɹ�,���λ��Ϊ:'+ExtractFileDir(SaveDg.FileName),[]);
      end;
    finally
      cds.Free;
    end;
  end;
end;

procedure TFMCliMain.spt_AppEditClick(Sender: TObject);
var i:Integer;
begin
  if spt_AppEdit.Caption = '�༭' then
  begin
    if ScrollBox1.ComponentCount = 0 then Exit;
    for i:=0 to ScrollBox1.ComponentCount -1 do
    begin
      if ScrollBox1.Components[i] is TSpeedButton     then
      begin
        TSpeedButton(ScrollBox1.Components[i]).Tag := 1 ;
        TSpeedButton(ScrollBox1.Components[i]).Glyph.LoadFromFile(userinfo.ExePath+'Img\Appdel.bmp');
        spt_AppEdit.Caption := '���';
      end;
    end;
  end
  else
  begin
    spt_AppEdit.Caption := '�༭';
    AppSaveToIni;
    FromIinLoadAPP;
  end;
end;

procedure TFMCliMain.Txt_helpCodeMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Txt_helpCode.Text = '����������򿪹��ܽ���...' then  Txt_helpCode.Text := '';
end;

procedure TFMCliMain.cdsFilterMenuFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
    Accept:=((Pos(Trim(UpperCase(Txt_helpCode.Text)),UpperCase(DataSet.fieldbyname('fnumber').AsString))>0) or
          (Pos(Trim(UpperCase(Txt_helpCode.Text)),UpperCase(DataSet.fieldbyname('fname_l2').AsString))>0) or
          (Pos(Trim(UpperCase(Txt_helpCode.Text)),ChnToPY(UpperCase(DataSet.fieldbyname('fnumber').AsString)))>0)  or
          (Pos(Trim(UpperCase(Txt_helpCode.Text)),ChnToPY(UpperCase(DataSet.fieldbyname('fname_l2').AsString)))>0)
          )
end;

procedure TFMCliMain.Txt_helpCodePropertiesChange(Sender: TObject);
var inputTxt:string;
begin
  inputTxt := Trim(Txt_helpCode.Text);
  cdsFilterMenu.Filtered := False;
  if (inputTxt <> '' ) then
    cdsFilterMenu.Filtered := True
  else
  begin
    cdsFilterMenu.Filtered := False;
  end;

  FilterGrid.Visible := (not cdsFilterMenu.IsEmpty) and (inputTxt <> '');
end;

procedure TFMCliMain.tv_FilterMenuCellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  if not cdsFilterMenu.IsEmpty then
  begin
    Self.ShowFrom(cdsFilterMenu.fieldbyname('FID').AsString,cdsFilterMenu.fieldbyname('Fname_l2').AsString);
    FilterGrid.Visible := False;
  end;
end;



procedure TFMCliMain.ReportInit;
var
  ini: TIniFile;
  _DllReg_Bat,FilePath,dir,ErrMsg,DBServerIP,DBConnStr: string;
function Ping_ReportSer: Boolean;
var
  i: Integer;
begin
  if G_NotPing then
  begin
    Result:=True;
    Exit;
  end;
  Result := False;
  if Trim(DBServerIP) = '' then Exit;
  ICMP.Host := Trim(DBServerIP);
  ICMP.ReceiveTimeout := 1000;
  for i := 0 to 2 do
  begin
    Application.ProcessMessages;
    try
      ICMP.Ping;
      if Icmp.ReplyStatus.BytesReceived >0 then
      begin
        Result := True;
        Break;
      end;
    except
      on E: Exception do
      begin
        Result := False;
        Break;
      end;
    end;
  end;
end;
begin
  inherited;
  try
    //ע��DLL
    dbType :='oracle';
    _SysType := 0;
    _DllReg_Bat := ExtractFilePath(paramstr(0)) + 'CCubeX4\CCubeX4_Install.bat';
    if FileExists(_DllReg_Bat) then
      ExecAndWait(_DllReg_Bat, '', SW_HIDE);
    try
      G_UserInfo.UserFID := userinfo.LoginUser_FID;
      G_UserInfo.usernumber := userinfo.LoginUser;
      G_UserInfo.UserName := userinfo.LoginUser_Name;
      G_UserInfo.Branch_ID := userinfo.Branch_ID;
      DMPub := TDMPub.Create(nil);
      ini:=Tinifile.Create(ExtractFilePath(Application.ExeName) + '\POSSetup.ini');
      with DMPub.SocketConn do
      begin
        Connected:=False;
        Host:=ini.ReadString('POSClient','ReportServerIP','');
        Port:=ini.ReadInteger('POSClient','ReportPort',211);
        G_Debug:=  ini.ReadBool('POSClient','Debug',False);
        G_NotPing:= ini.ReadBool('POSClient','NotPing',False);
        Connected:=True;
        DMPub.GetUserRoles;
        UserInfo.FuserRoleArray := uReportPub_R.userRoleArray;
      end;
      G_UserInfo.Server_IP:= DMPub.SocketConn.Host;
      G_UserInfo.Server_port:=IntToStr(DMPub.SocketConn.Port);
        //�������ģʽ
      DMPub.SocketConn.AppServer.getDBInfo(DBServerIP,DBConnStr);
      Localnetwork:=False;
      if Ping_ReportSer then
      begin
        try
          DMPub.OrclConn.Close;
          DMPub.OrclConn.Options.Charset:='ZHS16GBK';
          DMPub.OrclConn.Options.Net:=True;
          DMPub.OrclConn.ConnectString:=DBConnStr;
          DMPub.OrclConn.Connected:=True;
          Localnetwork:=DMPub.OrclConn.Connected;
        except
          on e:Exception do
          begin
            Localnetwork:=False;
          end;
        end;
      end
      else
      begin
        Localnetwork:=False;
      end;
      if Localnetwork then dxStatusBar1.Panels[3].Text := '�����ѯģʽ:������'
      else dxStatusBar1.Panels[3].Text := '�����ѯģʽ:������';
      //if not cdsType.Active then cdsType.Open;
      //���������ʾ�� wushaoshu  20100414
      bmp := Tbitmap.Create;
      SizeNameList := TStringList.Create;
      G_index:=0;
    except
      on e:Exception do
      begin
        ShowMsg(self.Handle, '���ӱ��������ʧ��! �������:'+e.Message,[]);
        Application.Terminate;
      end;
    end;

    //��ʼ����־��
    dir:=ExtractFilePath(Application.ExeName)+G_userinfo.usernumber+'\log';
    if not DirectoryExists(dir) then CreateDir(dir);
    Gio_R:=untTio_R.TIOer.Create(nil,dir);
    Gio_R.AddShow('�ͻ�������!  ',0);
    //������ͼ
    cdstype.RemoteServer := DMPub.SocketConn;
    cdstype.Close;
    cdstype.CommandText := 'select * from ReportType';
    cdsType.Open;
    //DelNoCopyrightNode;
    ReportShow;
  finally
    if DMPub.SocketConn.Connected then DMPub.SocketConn.Close;
  end;
end;

procedure TFMCliMain.ReportShow;
var serverTime,localTime:string;
    ini:TIniFile;
    toFileName,Stretch:string;
    b:Boolean;
    sr:TSearchRec;
    sPath,sFile:String;
begin
  if DirectoryExists(ExtractFilePath(Application.ExeName)+G_userinfo.usernumber+'\RP') then
  begin
    sPath:=ExtractFilePath(Application.ExeName)+G_userinfo.usernumber+'\RP\';
    //------------------------------------------------------------------
    if FindFirst(sPath+'*.*',faAnyFile,sr)=0 then
    begin
      repeat
        sFile:=Trim(sr.Name);
        if sFile='.' then Continue;
        if sFile='..' then Continue;
        sFile:=sPath+sr.Name;
        if(sr.Attr and faDirectory)<>0 then
          DeleteFile(sFile)
        else if(sr.Attr and faAnyFile)=sr.Attr then
          DeleteFile(sFile);//ɾ���ļ�
      until FindNext(sr)<>0;
      FindClose(sr);
    end;
    RemoveDir(sPath);
  end;
  if G_userinfo.usernumber<>'' then
  CreateDir(ExtractFilePath(Application.ExeName)+G_userinfo.usernumber+'\RP');
end;

procedure TFMCliMain.OpenReportQuery(frmKey,title: String);
var tabsheet : TcxTabSheet;
    tmBaseList:TViewFrm;
    i : Integer;
    _FindqueryNM,resultSQL : string;
    FormBool : Boolean;
begin
  if not  DMPub.openSocketConn  then Exit;
  resultSQL := getQuerySql(frmKey, title,cdsQueryFind,_FindqueryNM); //cdsQueryFind ������ת��ѯ���ݼ�
  if   Trim(resultSQL) = '' then
  begin
    if DMPub.SocketConn.Connected then  DMPub.SocketConn.Close;
    Exit;
  end;
  FormBool := False;
  for i := 0 to mainPg.PageCount-1 do
  begin
    if mainPg.Pages[i].Name = 'ts'+ TViewFrm.ClassName+frmKey then
    begin
       tabsheet := mainPg.Pages[i];
       tabsheet.ImageIndex:=3;
       FormBool := True;
       mainPg.ActivePage := tabsheet;
       tmBaseList := TViewFrm(tabsheet.Controls[0]);
       tmBaseList.resultSQL := resultSQL;
       tmBaseList.report_id := frmKey;
       tmBaseList.report_name := title;
       tmBaseList.QueryReport(_FindqueryNM);
       Break;
    end;
  end;
  if FormBool then Exit;
  tabsheet := TcxTabSheet.Create(mainPg);
  tabsheet.Name := 'ts'+ TViewFrm.ClassName+FrmKey;
  tabsheet.ImageIndex:=3;
  tabsheet.PageControl := mainPg;
  tmBaseList := TViewFrm.Create(Tabsheet);
  tmBaseList.Caption := title;
  tabsheet.Caption   := title;
  tmBaseList.Name := 'Frm'+TViewFrm.ClassName+FrmKey;
  tmBaseList.Parent := tabsheet;
  mainPg.ActivePage := tabsheet;
  tmBaseList.resultSQL := resultSQL;
  tmBaseList.report_id := frmKey;
  tmBaseList.report_name := title;
  tmBaseList.QueryReport(_FindqueryNM);
  tmBaseList.Show;

end;

procedure TFMCliMain.ReportTreeDblClick(Sender: TObject);
var KeyFID,title,ErrMsg : string;
begin
  if (cdsType.IsEmpty) then Exit;
  KeyFID := cdsType.fieldbyname('TreeID').AsString;
  title  := cdsType.fieldbyname('REPORTTYPENAME').AsString;
  if KeyFID <> '' then
  ShowFrom(KeyFID,title);
end;

procedure TFMCliMain.cxMM_DESKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var ct:Integer;
begin
  ct := length(Trim(cxMM_DES.text));
  lb_SmsCount.Caption :=inttostr(ct);
  lb_SyCount.Caption :=inttostr(960-ct);
  lb_fcCount.Caption := inttostr((ct div 141) +1);
end;

procedure TFMCliMain.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  try
    application.CreateForm(TUserRemindConfigFrm,UserRemindConfigFrm);
    UserRemindConfigFrm.ShowModal;
  finally
    UserRemindConfigFrm.Free;
  end;
end;

procedure TFMCliMain.GetMainInfo;
var _SQL:string;
begin
  cdsTxQuery.EmptyDataSet;
  Thread_QueryRemind(self.Handle,cdsTxQuery,20001);
  _SQL:=' SELECT * FROM '
     +' ('
     +'SELECT a.FSTATUS , a.FID,a.FSENDER_L2 AS ������, a.FSENDTIME AS ����ʱ��, a.FTITLE_L2 AS ����, '
     + ' a.FBODY_L2 AS ���� '
     +'FROM T_BAS_MESSAGE A  '
     +' WHERE nvl(a.FSENDER_L2,'' '')<>'' '' and nvl(a.FSENDER_L2,'' '')<>''��̨����'' and nvl(a.FSENDER_L2,'' '')<>''������'' and  FSTATUS=0 and a.FRECEIVER = '+QuotedStr(UserInfo.LoginUser_FID)
     +' order by FSENDTIME desc '
     +' )'
     +' WHERE rownum<=1000 ';
  Thread_OpenSQL(self.Handle,cdsMsgQuery,_SQL,20002);
end;

procedure TFMCliMain.I3UserMessageResult(var msg: TMessage);
begin
  inherited;
  if (msg.WParam = 20001) then
  begin
    cdsTX.Data := cdsTxQuery.Data;
  end;
  if (msg.WParam = 20002) then
  begin
    dsNewMessage.Data := cdsMsgQuery.Data;
  end;
end;

procedure TFMCliMain.NMGridFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;
  try
    Screen.Cursor:=crHourGlass;
    if dsNewMessage.IsEmpty then Exit;
    if dsATTACHMEN.Active then dsATTACHMEN.Close;
    ShowATTACHMENT(dsNewMessage.fieldbyName('FID').AsString);
  finally
    Screen.Cursor:=crDefault;
  end;
end;

procedure TFMCliMain.cxTXCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  if cdsTX.IsEmpty then Exit;
  cdsFilterMenu.Filtered := False;
  if cdsFilterMenu.Locate('FID',VarArrayOf([cdsTX.FieldByName('FRelevanceID').AsString]),[])  then
  begin
    Self.ShowFrom(cdsFilterMenu.fieldbyname('FID').AsString,cdsFilterMenu.fieldbyname('Fname_l2').AsString);
  end;
end;

procedure TFMCliMain.OpenReportModel(frmKey, title: String;
  ftype: Integer);
var tabsheet : TcxTabSheet;
    tmBaseList:TForm;
    i : Integer;
    _FindqueryNM,resultSQL : string;
    FormBool : Boolean;
begin
  if not  DMPub.openSocketConn  then Exit;
  FormBool := False;
  for i := 0 to mainPg.PageCount-1 do
  begin
    if mainPg.Pages[i].Name = 'ts'+frmKey then
    begin
       tabsheet := mainPg.Pages[i];
       tabsheet.ImageIndex:=3;
       FormBool := True;
       mainPg.ActivePage := tabsheet;
       Break;
    end;
  end;
  if FormBool then Exit;
  tabsheet := TcxTabSheet.Create(mainPg);
  tabsheet.Name := 'ts'+ FrmKey;
  tabsheet.ImageIndex:=3;
  tabsheet.PageControl := mainPg;
  if Ftype = 1 then
  tmBaseList := TReportEditFrm.Create(Tabsheet)
  else
  if Ftype = 2 then
  tmBaseList := TRightFrm.Create(Tabsheet)
  else
  if Ftype = 3 then
  tmBaseList := TRoleRightFrm.Create(Tabsheet);
  tmBaseList.Caption := title;
  tabsheet.Caption   := title;
  tmBaseList.BorderStyle := bsNone;
  tmBaseList.Align := alClient;
  tmBaseList.Name := 'Frm'+FrmKey;
  tmBaseList.Parent := tabsheet;
  mainPg.ActivePage := tabsheet;
  tmBaseList.Show;
end;

procedure TFMCliMain.AlterOrg;
var i,pCount:Integer;
begin
  if MessageBox(Handle, PChar('�л���֯�����ȹر�����̨�����ҳǩ�򴰿�,��ȷ��ִ�д˲���?(Y/N)'), 'I3��ʾ', MB_YESNO) = IDNO then Exit;
  CloseAllPopupWindows(Application.MainForm.Handle);
  if not IsAllClose(Application.MainForm.Handle) then
  begin
    ShowMsg(self.Handle,'��ر������Ѵ򿪴������л���֯��',[]);
    Exit;
  end;
  pCount := mainPg.PageCount -1;
  for i := pCount  downto  1 do
  begin
    mainPg.Pages[i].Free;
  end;
  with Select_Branch('','',-1) do
  begin
    if not IsEmpty() then
    begin
      UserInfo.Branch_ID     := fieldbyname('FID').asstring;
      UserInfo.Branch_Number := fieldbyname('fnumber').asstring;
      UserInfo.Branch_Name   := fieldbyname('fname_l2').asstring;
      UserInfo.Branch_Flag   := fieldbyname('cfbranchflag').asstring;
      dxStatusBar1.Panels[2].Text := '��¼��֯��' + UserInfo.Branch_Name;
    end;
  end;
end;

procedure TFMCliMain.dxStatusBar1Panels2DblClick(Sender: TObject);
begin
  inherited;
  AlterOrg;
end;
initialization
 RegisterClasses([TIcon, TBitmap, TJPEGImage, TMetafile]);
end.
