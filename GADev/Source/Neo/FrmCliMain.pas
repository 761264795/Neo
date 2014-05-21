
unit FrmCliMain;
//所有界面的底色值  $00FBF3EC,必需统一
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
  dxSkinscxPCPainter, dxSkinsdxBarPainter,uI3BaseFrm, ComCtrls, RzListVw,
  RzGroupBar, dxSkinValentine, dxSkinXmas2008Blue;


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
    Image1: TImage;
    Image7: TImage;
    lblUserInifo: TLabel;
    ImageList1: TImageList;
    Image11: TImage;
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
    ICMP: TIdIcmpClient;
    tmrPing: TTimer;
    dsNewMessage: TClientDataSet;
    dsOldMessage: TClientDataSet;
    dsNew: TDataSource;
    dsOld: TDataSource;
    dsATTACHMEN: TClientDataSet;
    ds_ATTACHMEN: TDataSource;
    autoRefInfo: TTimer;
    dsMenu: TDataSource;
    cdsMenu: TClientDataSet;
    cdsMenuFID: TStringField;
    cdsMenuFNUMBER: TStringField;
    cdsMenuFNAME_L2: TWideStringField;
    cdsMenuFPARENTID: TStringField;
    cdsMenuFImgageIndex: TIntegerField;
    TreePm: TPopupMenu;
    N1: TMenuItem;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyleRepository2: TcxStyleRepository;
    cxStyle2: TcxStyle;
    cxStyleRepository3: TcxStyleRepository;
    cxStyle3: TcxStyle;
    Image10: TImage;
    Txt_helpCode: TcxTextEdit;
    Image13: TImage;
    N_AddMain: TMenuItem;
    cdsTX: TClientDataSet;
    dsTX: TDataSource;
    cdsTXFID: TStringField;
    cdsTXFitem: TStringField;
    cdsTXFValue: TStringField;
    cxStyleRepository4: TcxStyleRepository;
    cxStyle4: TcxStyle;
    pm_Down: TPopupMenu;
    N_DownFile: TMenuItem;
    SaveDg: TSaveDialog;
    cdsMenufHelpCode: TWideStringField;
    dsFilterMenu: TDataSource;
    cdsFilterMenu: TClientDataSet;
    FilterGrid: TcxGrid;
    tv_FilterMenu: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridLevel4: TcxGridLevel;
    cxStyleRepository5: TcxStyleRepository;
    cxStyle5: TcxStyle;
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
    cdsTxQuery: TClientDataSet;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    cdsMsgQuery: TClientDataSet;
    MainMenu1: TMainMenu;
    S1: TMenuItem;
    H1: TMenuItem;
    T1: TMenuItem;
    N2: TMenuItem;
    R1: TMenuItem;
    X1: TMenuItem;
    A1: TMenuItem;
    N3: TMenuItem;
    
    cxComboBox1: TcxComboBox;
    cxLabel5: TcxLabel;
    mainPg: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    Splitter1: TSplitter;
    LeftPanel: TPanel;
    Panel3: TPanel;
    Image15: TImage;
    lb_ModelName: TLabel;
    pct_LeftPge: TcxPageControl;
    ts_App: TcxTabSheet;
    TreeList: TcxDBTreeList;
    cxDBTreeList1cxDBTreeListColumn1: TcxDBTreeListColumn;
    cxDBTreeList1cxDBTreeListColumn2: TcxDBTreeListColumn;
    cxDBTreeList1cxDBTreeListColumn3: TcxDBTreeListColumn;
    cxDBTreeList1cxDBTreeListColumn6: TcxDBTreeListColumn;
    ts_report: TcxTabSheet;
    ReportTree: TcxDBTreeList;
    TreeListcxDBTreeListColumn2: TcxDBTreeListColumn;
    TreeListcxDBTreeListColumn1: TcxDBTreeListColumn;
    TreeListcxDBTreeListColumn4: TcxDBTreeListColumn;
    TreeListcxDBTreeListColumn3: TcxDBTreeListColumn;
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
    pnl1: TPanel;
    spl1: TSplitter;
    Panel5: TPanel;
    Panel6: TPanel;
    Image14: TImage;
    spt_AppEdit: TSpeedButton;
    cxLabel4: TcxLabel;
    Panel9: TPanel;
    lb_Leftmove: TLabel;
    lb_Rigthmove: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    ImgBottom: TImage;
    ScrollBox1: TScrollBox;
    lb_APP: TLabel;
    P_MsgBox: TPanel;
    pnl3: TPanel;
    img2: TImage;
    lb_Lmsg: TLabel;
    SpeedButton2: TSpeedButton;
    Panel7: TPanel;
    cxGrid4: TcxGrid;
    cxTX: TcxGridDBTableView;
    cxTXFID: TcxGridDBColumn;
    cxTXFitem: TcxGridDBColumn;
    cxTXFValue: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    pnl6: TPanel;
    img_MsgBox: TImage;
    Label2: TLabel;
    btnRefresh: TSpeedButton;
    Panel8: TPanel;
    cxSMSPage: TcxPageControl;
    cxTabSheet3: TcxTabSheet;
    cxMM_DES: TcxMemo;
    Panel10: TPanel;
    Label8: TLabel;
    lb_SyCount: TLabel;
    Label5: TLabel;
    lb_SmsCount: TLabel;
    Label6: TLabel;
    lb_fcCount: TLabel;
    cxTabSheet2: TcxTabSheet;
    cxMM_tel: TcxMemo;
    Panel11: TPanel;
    Label7: TLabel;
    Panel13: TPanel;
    RzGroupBar1: TRzGroupBar;
    RzGroup3: TRzGroup;
    cxDBTreeList1: TcxDBTreeList;
    cxDBTreeListColumn1: TcxDBTreeListColumn;
    cxDBTreeListColumn2: TcxDBTreeListColumn;
    cxDBTreeListColumn3: TcxDBTreeListColumn;
    cxDBTreeListColumn4: TcxDBTreeListColumn;
    RzGroup1: TRzGroup;
    RzGroup2: TRzGroup;
    RzGroup4: TRzGroup;
    RzGroup6: TRzGroup;
    cxTabSheet4: TcxTabSheet;
    Panel2: TPanel;
    cxpgcntrl1: TcxPageControl;
    cxtbsht1: TcxTabSheet;
    cxGrid1: TcxGrid;
    NMGrid: TcxGridDBTableView;
    NMGridColumn1: TcxGridDBColumn;
    NMGridColumn2: TcxGridDBColumn;
    NMGridColumn3: TcxGridDBColumn;
    NMGridColumn4: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    Panel12: TPanel;
    img6: TImage;
    bt_send: TSpeedButton;
    bt_rec: TSpeedButton;
    bt_fFead: TSpeedButton;
    bt_nRead: TSpeedButton;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    btn1: TcxButton;
    dBegin: TcxDateEdit;
    Dend: TcxDateEdit;
    cxtbsht2: TcxTabSheet;
    cxGrid2: TcxGrid;
    OMGrid: TcxGridDBTableView;
    OMGridColumn1: TcxGridDBColumn;
    OMGridColumn2: TcxGridDBColumn;
    OMGridColumn3: TcxGridDBColumn;
    OMGridColumn4: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxtbsht3: TcxTabSheet;
    Panel4: TPanel;
    GroupBox4: TGroupBox;
    cxDBRichEdit1: TcxDBRichEdit;
    Panel1: TPanel;
    img1: TImage;
    cxtxBT: TcxDBTextEdit;
    cxLabel1: TcxLabel;
    GroupBox3: TGroupBox;
    cxGrid3: TcxGrid;
    cxAttachmentlist: TcxGridDBTableView;
    cxAttachmentlistColumn1: TcxGridDBColumn;
    cxAttachmentlistColumn2: TcxGridDBColumn;
    cxAttachmentlistColumn3: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    RzGroup5: TRzGroup;procedure dxBarButton5Click(Sender: TObject);
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
    procedure lb_msgBoxExitClick(Sender: TObject);
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
    procedure lb_setClick(Sender: TObject);
    procedure Pm_exitClick(Sender: TObject);
    procedure lb_GDcountMouseEnter(Sender: TObject);
    procedure lb_GDcountMouseLeave(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure actChangePassExecute(Sender: TObject);
    procedure actSysConfigExecute(Sender: TObject);
    procedure tmrPingTimer(Sender: TObject);
    procedure dxStatusBar1Panels4Click(Sender: TObject);
    procedure actSaveCheckStorageExecute(Sender: TObject);
    procedure actAffirmCheckExecute(Sender: TObject);
    procedure actCheckDiffReportExecute(Sender: TObject);
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
    procedure autoRefInfoTimer(Sender: TObject);
    procedure bt_sendClick(Sender: TObject);
    procedure bt_recClick(Sender: TObject);
    procedure bt_fFeadClick(Sender: TObject);
    procedure bt_nReadClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure mainSaleBizqueryClick(Sender: TObject);
    procedure lb_DRPClick(Sender: TObject);
    procedure lb_DatabaseClick(Sender: TObject);
    procedure lb_SystemClick(Sender: TObject);
    procedure lb_reportClick(Sender: TObject);
    procedure lb_BIClick(Sender: TObject);
    procedure lb_RSMClick(Sender: TObject);
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
//    procedure ReportTreeDblClick(Sender: TObject);
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
    procedure Label9Click(Sender: TObject);
    procedure Label11Click(Sender: TObject);
    procedure X1Click(Sender: TObject);
    procedure R1Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure T1Click(Sender: TObject);
    procedure RzGroup3Open(Sender: TObject);

  private
    bmp: Tbitmap;
    SizeNameList,WarList: TStringList;
    fColIndex,G_index:Integer;
    fSubReportFlag:Boolean;
    FLoginUser_ID: string;
    FLoginUser_Name: string;
    FIs_SysOnline: Boolean;
    OldX,OldY:integer; //定义变量
    procedure SetLoginUser_ID(const Value: string);
    procedure SetLoginUser_Name(const Value: string);
    procedure SetIs_DownData(const Value: Boolean);
    procedure SetIs_SysOnline(const Value: Boolean);
    function GetClientTag: string;
    function UpdateClientFile:Boolean;  //检查和更新文件
    { Private declarations }
  public
    { Public declarations }
    FIs_DownData: Boolean;
    procedure setMsgBox;
    procedure setchartdata;
    //登录用户ID
    property LoginUser_ID: string read FLoginUser_ID write SetLoginUser_ID;
    //登录用户名称
    property LoginUser_Name: string read FLoginUser_Name write SetLoginUser_Name;
    //是否在同步数据
    property Is_DownData: Boolean read FIs_DownData write SetIs_DownData;
    //是否联机使用客户端
    property Is_SysOnline: Boolean read FIs_SysOnline write SetIs_SysOnline;
    //软件特征码
    property ClientTag: string read GetClientTag;
    //启动数据同步
    function Open_DownExe(ShowForm: Boolean): Boolean;
    //取得用户权限表
    function Get_UserRoles: Boolean;
    //检查用户是否有某功能的权限
    function Chk_UserRight(FOBJECTTYPE,    //模块代码
                           FNUMBER: string //功能代码
                           ): Boolean;
    procedure repaitImg;//使消息面板透明
    //ping服务器
    function Ping_Ser: Boolean;
    function CheckBaseData : boolean;  //检查基础资料是否异常
    procedure ShowATTACHMENT(FID : string);  //显示附件信息
    procedure GetData(PageIndex:integer);
    procedure SetLevelVisible(PageIndex:integer);
    function CreatePageList(frmclass:TFormClass;opt:TOpenFormParameter):TForm;
    procedure CreateModalFrom(frmclass:TModalFormClass);  //打开模态窗口
    //从左边树形控件打开窗口***************共用方法***************
    procedure ShowFrom(Fromkey,title : String);
    procedure setTreeListExp;
    procedure CreateSpeedButton(_Caption,_Frmkey:String;isADDSt:Boolean=True);
    procedure AppSaveToIni;
    procedure FromIinLoadAPP;
    procedure GetTxItem;
//    procedure ReportInit;
//    procedure ReportShow;
//    procedure OpenReportQuery(frmKey,title:String);
//    procedure OpenReportModel(frmKey,title:String;ftype:Integer);
    procedure GetMainInfo;
    Procedure I3UserMessageResult(var msg:TMessage);override;
    procedure AlterOrg;
  end;

var
  FMCliMain: TFMCliMain;
  //日志对象 可显示和记录日志信息
  //Gio: TIOer;
  //服务器IP
  ServerIP: string;
  //服务器通讯端口
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
  ,uReadCodeScenarioListFrm,uPermissionsEditFrm,uBillQueryFrm,uSmsSendQueryFrm,uSmsSystemSetFrm,uPrintQueryFrm,uPrintTemplateDesign,uINTERCODEPREFIXListFrm,
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
  uBatchAddOrderMaterialFrm,uMaterDataSelectHelper,uRepairWOEditFrm,uRepairWoListFrm;

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
  //创建日志对象
  //Gio := TIOer.Create(nil, GetCurrPath+'Pos_CliFile\CliLog\');
  //Self.DoubleBuffered:=True;
  Gio.AddShow('正在启动客户端...');
  //系统设置
  SetupFile := ExtractFilePath(paramstr(0)) + 'POSSetup.ini';
  IniFile := TINIFile.Create(SetupFile);
  try
    ServerIP := IniFile.ReadString('POSClient', 'ServerIP','127.0.0.1');
    SerPort  := IniFile.ReadInteger('POSClient', 'Port', 211);
    UserInfo.RoundType := IniFile.ReadInteger('POSClient', 'RoundType', 2);  //小数处理方式  1截取2位小数   2 四舍五入取整  3 逢小数去尾   4逢小数进1
    UserInfo.RoundBillType := IniFile.ReadInteger('POSClient', 'RoundBillType', 1);  
    UserInfo.F2Print := IniFile.ReadBool('POSClient', 'F2Print', True);
    UserInfo.F2OpenMoneyBox := IniFile.ReadBool('F2OpenMoneyBox', 'F2Print', False);
    Userinfo.AccFile:= IniFile.ReadString('POSClient', 'accFile','');
    Userinfo.ErrorFile:= IniFile.ReadString('POSClient', 'errorFile','');
  finally
    IniFile.Free;
  end;
  //连接服务器
  Is_SysOnline := True;
  UserInfo.Is_SysOnline := True;
  try
    UserInfo.ClientTag := GetClientTag;  //软件特征码
  except
    ShowError(Handle, '获取软件特征码失败！',[]);
  end;
  
  try
    Gio.AddShow('连接POS服务器 - 开始：'+ServerIP+'，'+inttostr(SerPort));
    CliDM.SckCon.Close;
    CliDM.SckCon.Host := ServerIP;
    CliDM.SckCon.Port := SerPort;
    CliDM.SckCon.Open;
    dxStatusBar1.Panels[1].Text := ServerIP + ',' + IntToStr(SerPort);
    CliDM.SckThread.Close;
    CliDM.SckThread.Host := ServerIP;
    CliDM.SckThread.Port := SerPort;
    Gio.AddShow('连接主业务服务器 - 完成：'+ServerIP+','+inttostr(SerPort));
  except
    on E: Exception do
    begin
      Is_SysOnline := False;
      UserInfo.Is_SysOnline := False;
      Gio.AddShow('连接POS服务器错误：'+E.Message);
      Self.OnActivate := nil;
      MessageBox(Handle, PChar('连接服务器发生错误:'+e.Message), 'GA集团ERP提示', MB_OK OR MB_ICONINFORMATION);
      Application.Terminate;
      Abort;
    end;
  end;



  //检查更新文件和启动更新程序
  // UpdateClientFile;
  //系统登陆
  if not Login_System then
  begin
    Self.OnActivate := nil;
    Application.Terminate;
    Abort;
  end;

  //增加网格样式目录
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
    Gio.AddShow('开始退出客户端');
    if RTL<>nil then
    begin
      RTL.Terminate;
      RTL.Destroy;
    end;
    //Gio.Free;
  except
    on E : Exception do
    begin
      Gio.AddShow(' 退出客户端异常：'+e.Message);
    end;
  end;

  KillTask('DownData.exe');  //20111028 退出系统关闭下载程序，避免下载错误一直卡住不退
  //启动更新程序
  if UserInfo.TUpdateExe then
  begin
    Gio.AddShow('启动升级程序！');
    MessageBox(Handle, PChar('系统发现有升级程序，点击确定开始自动升级。'), '金蝶提示', MB_OK or MB_ICONINFORMATION);
    ExeFile := ExtractFilePath(paramstr(0)) + 'update.exe';
        
    if FileExists(ExeFile) then
      ShellExecute(Handle, 'open', PChar(ExeFile), PChar('"'+LoginUser_ID+'" "'+LoginUser_Name+'"'), PChar(ExtractFilePath(paramstr(0))), SW_SHOWNORMAL)
    else
       ShowMessage('找不到更新程序,请重新安装系统，如果还有问题请联系管理员！');

  end;
  if UserInfo.iRestart then  //换班时更新重启标识
     WinExec(PChar(ParamStr(0)),   sw_show);
  Gio.AddShow('退出客户端完成！');
end;

procedure TFMCliMain.FormActivate(Sender: TObject);
begin
  Self.OnActivate := nil;
  Self.WindowState:=wsMaximized;
  tmrPing.Enabled := True;
end;

procedure TFMCliMain.AppEventsException(Sender: TObject; E: Exception);
begin
  Gio.AddShow(Format('系统错误：%s，%s', [Sender.ClassName, E.Message]));
  MessageBox(Handle, PChar(Format('系统错误：%s，%s', [Sender.ClassName, E.Message])), '金蝶提示', MB_ok or MB_ICONINFORMATION)
end;

procedure TFMCliMain.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := MessageBox(Handle, PChar('您确定要退出系统吗？'), 'GA集团ERP提示', MB_YESNO or MB_ICONQUESTION) = IDYES;
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
  if Ping_Ser then
    dxStatusBar1.Panels[0].Text := '网络：正常'
  else
    dxStatusBar1.Panels[0].Text := '网络：异常';

  DevicCaps := GetDeviceCaps(GetDC(Self.Handle),HORZRES);
  FilePath:=ExtractFilePath(Application.ExeName)+userinfo.LoginUser;
  if not DirectoryExists(FilePath) then CreateDir(FilePath);
  if Is_SysOnline  then
  begin
    autoRefInfo.Interval:=UserInfo.RefTime*60*1000;
    autoRefInfo.Enabled:=true;
  end;

  onLine:=ExtractFilePath(paramstr(0)) + UserInfo.LoginUser+'\onLine\';
  if not DirectoryExists(onLine) then
  CreateDir(onLine);
  cxDBTreeList1.Images := CliDM.ImageList16;
  dxStatusBar1.Images := CliDM.ImageList16;
  ReportTree.Images := CliDM.ImageList16;
  GetData(0);
  dxStatusBar1.Panels[2].Text := '登录组织：' + UserInfo.Branch_Name;
  Txt_helpCode.Properties.AutoSelect :=False;
  Txt_helpCode.SelLength:=1;
  Txt_helpCode.SelStart :=1;
  setTreeListExp;
  SetLevelVisible(0);
  cxDBTreeList1.Parent := RzGroup3;
  FromIinLoadAPP;
  ImgBottom.Picture.LoadFromFile(userinfo.ExePath+'Img\mainbottom.jpg');
  GetTxItem;
  FilterGrid.Width := Image10.Width;
  FilterGrid.Left := Image10.Left;
  FilterGrid.Top  := Image10.Top+Image10.Height;
//  ReportInit;//初始化报表
  GetMainInfo;
end;

procedure TFMCliMain.setMsgBox;
begin
  P_MsgBox.Visible:=not P_MsgBox.Visible;
end;

procedure TFMCliMain.lb_msgBoxExitClick(Sender: TObject);
begin
  setMsgBox;
end;

procedure TFMCliMain.lb_retrunClick(Sender: TObject);
begin
  mainPg.ActivePageIndex:=0;
end;

procedure TFMCliMain.mainPgCanClose(Sender: TObject;
  var ACanClose: Boolean);
begin
  if (mainPg.ActivePageIndex=0) or (mainPg.ActivePageIndex=1) then
    ACanClose:=False;
end;

procedure TFMCliMain.mainPgDblClick(Sender: TObject);
begin
  if (mainPg.ActivePageIndex<>0) and (mainPg.ActivePageIndex<>1) then
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
  lblUserInifo.Caption := Format('欢迎您! %s 今天是%s ', [FLoginUser_Name, FormatDateTime('yyyy"年"m"月"d"日" dddd', Date())]);
  Userinfo.LoginUser_Name:=FLoginUser_Name;
end;

procedure TFMCliMain.BarItemTranDataClick(Sender: TObject);
begin
  //数据同步
  if not UserInfo.Is_SysOnline then
  begin
    ShowMsg(Handle, '本功能只能在线时使用！',[]);
    Abort;
  end;
  if Application.MessageBox('确认开始下载数据?(Y?N)','金蝶提示',MB_YESNO)=id_yes then
  Open_DownExe(True);
end;

procedure TFMCliMain.SetIs_DownData(const Value: Boolean);
begin
  FIs_DownData := Value;
  if FIs_DownData then
    dxStatusBar1.Panels[4].Text := '正在同步数据，请稍候...'
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
    CliDM.iniCreateQuery(UserInfo.LoginUser_FID);  //初始化职员、单据类型、班次、天气、用户可操作店铺
  end;
end;

function TFMCliMain.Open_DownExe(ShowForm: Boolean): Boolean;
var
  ExeFile: string;
begin
  Result := False;
  if Is_DownData then
  begin
    MessageBox(Handle, PChar('下载数据程序正在运行。'), '金蝶提示', MB_OK OR MB_ICONINFORMATION);
    Exit;
  end;
  ExeFile := ExtractFilePath(paramstr(0)) + 'DownData.exe';
  if not FileExists(ExeFile) then
  begin
    Gio.AddShow('下载程序 '+ExeFile+' 不存在');
    Exit;
  end;
  //wushaoshu 20120306 为支持远程桌面方式，方式多人登录时同时启用下载
  if FindProcess('DownData.exe') then
  begin
    Gio.AddShow('下载程序 '+ExeFile+' 已经启动');
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
    dxStatusBar1.Panels[0].Text := '联机' ;
    TdxStatusBarTextPanelStyle(dxStatusBar1.Panels[0].PanelStyle).imageindex:=113;
  end
  else
  begin
    dxStatusBar1.Panels[0].Text := '离线';
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
    ShowMsg(Handle,'数据同步中,请稍候...',[]);
    Exit;
  end;
  if not UserInfo.Is_SysOnline then
  begin
    ShowMsg(Handle, '本功能只能在线时使用！',[]);
    Abort;
  end;
  ShowDayBalance; //日结
end;

procedure TFMCliMain.mainNavFillFreightApplyClick(Sender: TObject);
begin
end;

//POS单列表查询
procedure TFMCliMain.mainNavPOSListClick(Sender: TObject);
begin
end;

//补货申请单查询
procedure TFMCliMain.act_T_FA_FaDispatchBill_ListExecute(Sender: TObject);
var tabsheet : TcxTabSheet;
    tmBaseList : TFM_BillList_T_FA_FaDispatchBill;
    i : Integer;
    FormBool : Boolean;
begin

end;

//调拨出库单查询
procedure TFMCliMain.actT_IM_MoveIssueBill_ListExecute(Sender: TObject);
begin
end;

//调拨入库单查询
function TFMCliMain.Get_UserRoles: Boolean;
var
  Data: OleVariant;
  ErrMsg: string;
begin
  Result := False;
  if Is_SysOnline then
  begin  //在线方式
    try
      if not CliDM.SckCon.Connected then CliDM.SckCon.Open;
    except
      on E: Exception do
      begin
        Gio.AddShow('连接POS服务器错误：' + E.Message);
        Result := False;
        Exit;
      end;
    end;
    try
      Gio.AddShow('取得权限 - 开始');
      Result := CliDM.SckCon.AppServer.Get_Userrole(LoginUser_ID, Data, ErrMsg) = 0;
      if Result then
      begin
        Gio.AddShow('取得权限 - 完成');
        //解压缩数据包
        Data := UnZip_OleVariant(Data);
        Gio.AddShow('取得权限 - 解压缩完成');
        try
          cdsUserRole.Data := Data;
        except
          on e : Exception do
          begin
            ErrMsg := e.Message;
            Gio.AddShow(Format('取得权限 - 出错：%s', [ErrMsg]));
            Result := False;
          end;
        end;
      end
      else Gio.AddShow(Format('取得权限 - 出错：%s', [ErrMsg]));
      Result := True;
    finally
      CliDM.SckCon.Close;
    end;
    Exit;
  end
  else
  begin  //取得离线POS权限
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
  dxStatusBar1.Panels[2].Text := '分支机构：' + UserInfo.Branch_Name;
end;

procedure TFMCliMain.Pm_exitClick(Sender: TObject);
begin
  Self.Close;
end;

function TFMCliMain.UpdateClientFile: Boolean;
var
  IniFile: TIniFile;
  ErrMsg : string;
  SPNO: Integer;
begin
  Result := False;
  if not UserInfo.Is_SysOnline then exit;  //离线不升级
  IniFile := TINIFile.Create(ExtractFilePath(paramstr(0)) + 'POSSetup.ini');
  try
    SPNO  := IniFile.ReadInteger('POSClient', 'MaxSPNO', 0);
  finally
    IniFile.Free;
  end;
  try
    //取得下载的文件列表
    if cdsQry.Active then cdsQry.EmptyDataSet;
    if CliDM.Get_Updatefile(SPNO, cdsqry, ErrMsg) then
    begin
      if cdsQry.Active then
      begin
        with cdsQry do  //更新程序update.exe是否需要升级
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
        UserInfo.TUpdateExe := True; //关闭客户端，启动更新程序
        Application.Terminate;
        Abort;
      end;
    end
    else
    begin
      if ErrMsg <> '' then
        MessageBox(Handle, PChar('系统升级发生错误：' + #13#10 + ErrMsg), '金蝶提示', MB_OK or MB_ICONERROR);
    end;
  except
     on E:Exception do
     begin
       ShowMsg(Handle, '升级文件出错!',[]);
     end;
  end;
  //CliDM.Get_CheckDataInfo;  //检查本地数据库是不是和服务器一致，不一致时自动关闭  2011-12-11注释，改到登录时检查
  Result := True;
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
  if  Trim(cxMM_DES.Text) = '' then
  begin
    ShowMsg(Self.Handle,'短信内容不能为空哦!  ',[]);
    cxSMSPage.ActivePageIndex := 0;
    cxMM_DES.SetFocus;
    Exit;
  end;
  if  Trim(cxMM_tel.Text) = '' then
  begin
    ShowMsg(Self.Handle,'短信接收号码不能为空哦!  ',[]);
    cxSMSPage.ActivePageIndex := 1;
    cxMM_tel.SetFocus;
    Exit;
  end;
  if not CliDM.SendSMS(Trim(cxMM_tel.Text),Trim(cxMM_DES.Text),ErrMsg) then
  begin
    ShowMsg(Self.Handle,ErrMsg,[]);
    Exit;
  end;
  ShowMsg(Self.Handle,'短信发送成功!     ',[]);
end;

procedure TFMCliMain.repaitImg;
begin

end;

procedure TFMCliMain.actChangePassExecute(Sender: TObject);
begin
  Change_UserPWD(UserInfo.LoginUser_FID); //修改密码
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
      dxStatusBar1.Panels[0].Text := '网络：正常'
    else
      dxStatusBar1.Panels[0].Text := '网络：异常';
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

procedure TFMCliMain.actSaveCheckStorageExecute(Sender: TObject);
begin
   OpenCheckSaveStorage;
end;

procedure TFMCliMain.actAffirmCheckExecute(Sender: TObject);
begin
  CliDM.Chk_UserRight('C77080D3','RetailPosShopCheck_ReSet'); //检查权限
  OpenCheckAffirm;
end;

procedure TFMCliMain.actCheckDiffReportExecute(Sender: TObject);
begin
  OpenCheckReport;
end;

procedure TFMCliMain.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
  Image7.Left := P_top.Width - (Length(Trim(lblUserInifo.Caption))*6+40);
end;

function TFMCliMain.CheckBaseData: boolean;
begin
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
      ShowMsg(Handle, '没有找到帮助文件(help.chm)!',[]);
      Exit;
    end;
    shellexecute(handle,'open',pchar(toFileName),nil,nil,sw_shownormal);
  end;
  if (Key = VK_F5)  then  //刷新
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
    omgrid.GetColumnByFieldName('发件人').Caption:='发件人';
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
    omgrid.GetColumnByFieldName('发件人').Caption:='收件人';
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
    ShowMsg(Handle, '本功能只能在线时使用！',[]);
    Abort
  end;
    //消息
  if  cxpgcntrl1.ActivePageIndex=1 then
  begin
    sqlstr:='SELECT a.FID,a.FSENDER_L2 AS 发件人, a.FSENDTIME AS 发件时间, a.FTITLE_L2 AS 标题, '
             + ' a.FBODY_L2 AS 内容 '
           +'FROM T_BAS_MESSAGE A  '
           +' WHERE isnull(a.FSENDER_L2,'' '')<>'' '' and isnull(a.FSENDER_L2,'' '')<>''后台事物'' and isnull(a.FSENDER_L2,'' '')<>''服务器'' and A.FRECEIVER = '+QuotedStr(UserInfo.LoginUser_FID)
           +' AND to_char(FSENDTIME,''YYYY-MM-DD'') >= '+QuotedStr(FormatDateTime('yyyy-mm-dd',dBegin.Date))
           +' AND to_char(FSENDTIME,''YYYY-MM-DD'') <= '+QuotedStr(FormatDateTime('yyyy-mm-dd',Dend.Date))
           +' and FSTATUS=10 order by A.FSENDTIME desc';
  end
  else
  begin
    sqlstr:='SELECT a.FID,u.fname_l2 AS 发件人, a.FSENDTIME AS 发件时间, a.FTITLE_L2 AS 标题, '
             + ' a.FBODY_L2 AS 内容 '
           +'FROM T_BAS_MESSAGE A  left join t_pm_user u on a.FRECEIVER=u.fid'
           +' WHERE 1=1'
           +' AND to_char(FSENDTIME,''YYYY-MM-DD'') >= '+QuotedStr(FormatDateTime('yyyy-mm-dd',dBegin.Date))
           +' AND to_char(FSENDTIME,''YYYY-MM-DD'') <= '+QuotedStr(FormatDateTime('yyyy-mm-dd',Dend.Date))
           +' and exists(select 1 from T_BAS_MsgSendRecord rec where a.fid=rec.Fsourceid and Fsenderid='+QuotedStr(UserInfo.LoginUser_FID)+')'
           +' order by A.FSENDTIME desc';
  end;
   if not CliDM.Get_OpenSQL(dsOldMessage,sqlstr,errmsg) then
   begin
      Gio.AddShow(sqlstr+'查询出错');
   end
   else
   begin
     { OMGrid.ClearItems;
      OMGrid.DataController.CreateAllItems(false);
      if OMGrid.GetColumnByFieldName('FID')<>nil then
        OMGrid.GetColumnByFieldName('FID').Visible := False;
      if OMGrid.GetColumnByFieldName('发件人')<>nil then
        OMGrid.GetColumnByFieldName('发件人').Width := 50;
      if OMGrid.GetColumnByFieldName('发件时间')<>nil then
        OMGrid.GetColumnByFieldName('发件时间').Width := 50;
      if OMGrid.GetColumnByFieldName('标题')<>nil then
        OMGrid.GetColumnByFieldName('标题').Width := 100;
      }
   end;

end;

procedure TFMCliMain.ShowATTACHMENT(FID: string);
var sqlstr,ErrMsg:string;
    i : integer;
begin
  if FID='' then exit;
   sqlstr:='SELECT C.FID, c.FNAME_L2 附件文件名,C.FSIMPLENAME AS 文件类型, '
             + ' c.FSIZE AS 附件文件大小  '
           +'FROM T_BAS_MESSAGE a LEFT OUTER JOIN  '
             +' T_BAS_BOATTCHASSO b ON a.fsourceid = b.FBOID LEFT OUTER JOIN '
             +' T_BAS_ATTACHMENT c ON b.FATTACHMENTID = c.FID          '
           +' WHERE a.FID = '+QuotedStr(FID); 
   if not CliDM.Get_OpenSQL(dsATTACHMEN,sqlstr,errmsg) then
   begin
     Gio.AddShow(sqlstr+'查询出错');
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

procedure TFMCliMain.autoRefInfoTimer(Sender: TObject);
begin
  if Gio<>nil then Gio.AddShow('开始刷新主界面信息...');
  GetMainInfo;
  lblUserInifo.Caption := Format('欢迎您! %s 今天是%s ', [FLoginUser_Name, FormatDateTime('yyyy"年"m"月"d"日" dddd', Date())]);
  if Gio<>nil then Gio.AddShow('完成刷新主界面信息...');
end;

procedure TFMCliMain.bt_sendClick(Sender: TObject);
begin
  if not UserInfo.Is_SysOnline then
  begin
    ShowMsg(Handle, '本功能只能在线时使用！',[]);
    Abort
  end;
  SendMessage('','','','','');
end;

procedure TFMCliMain.bt_recClick(Sender: TObject);
begin
  if not UserInfo.Is_SysOnline then
  begin
    ShowMsg(Handle, '本功能只能在线时使用！',[]);
    Abort
  end;
  if cxpgcntrl1.ActivePageIndex=0 then
  begin
    if dsNewMessage.IsEmpty then
    begin
      ShowMsg(Handle, '无消息可回复!    ',[]);
      exit;
    end;
    SendMessage(userinfo.LoginUser_FID,userinfo.LoginUser_Name,
       dsNewMessage.fieldbyname('FID').AsString,
       dsNewMessage.fieldbyname('发件人').AsString,
       dsNewMessage.fieldbyname('标题').AsString,true);
  end
  else
  begin
    if dsOldMessage.IsEmpty then
    begin
      ShowMsg(Handle, '无消息可回复!    ',[]);
      exit;
    end;
    SendMessage(userinfo.LoginUser_FID,userinfo.LoginUser_Name,
    dsOldMessage.fieldbyname('FID').AsString,
    dsOldMessage.fieldbyname('发件人').AsString,
    dsOldMessage.fieldbyname('标题').AsString,true);
  end;
end;

procedure TFMCliMain.bt_fFeadClick(Sender: TObject);
  var _sql,msg:string;
begin
  if not UserInfo.Is_SysOnline then
  begin
    ShowMsg(Handle, '本功能只能在线时使用！',[]);
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
    ShowMsg(Handle, '本功能只能在线时使用！',[]);
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
    ShowMsg(Handle, '您的未读信息已超过20条,为节约系统资源,请及时将未读信息设置成已读,谢谢！',[]);
  end;
  { TODO : jibin_guo暂时调整 --暂时去除初始化报表，导致DMPub为空，暂时注释}
  //if DMPub.SocketConn.Connected then  DMPub.SocketConn.Close;
end;

procedure TFMCliMain.mainSaleBizqueryClick(Sender: TObject);
begin
  if not UserInfo.Is_SysOnline then
  begin
    ShowMsg(Handle, '本功能只能在线时使用！',[]);
    Abort
  end;
  with TShopSalesPerformanceForm.Create(self) do
  begin
    show;
  end;
end;

procedure TFMCliMain.GetData(PageIndex: integer);
var _sql,errMsg:String;
begin
  _sql := ' select FID,FparentID,FImgageIndex,Fname_l2,fnumber,fhelpcode from T_DB_MainMenuItem  '
       +  ' order by FLevel,fnumber';
  if not CliDM.Get_OpenSQL(cdsMenu,_sql,errMsg) then
  begin
    ShowMsg(Handle, '打开数据出错！'+errMsg,[]);
    Abort
  end;
  SetLevelVisible(PageIndex);
  cdsFilterMenu.Data := cdsMenu.Data;
end;

procedure TFMCliMain.SetLevelVisible(PageIndex: integer);
begin
  if PageIndex = 4 then
  begin
    pct_LeftPge.ActivePage := ts_report;    //报表中心
  end
  else
  begin
    pct_LeftPge.ActivePage := ts_App;
  end;
  //精品配件管理
  if cxDBTreeList1.FindNodeByKeyValue('C027DCAB748446C8AD582A4BE1BD6643') <> nil then
    cxDBTreeList1.FindNodeByKeyValue('C027DCAB748446C8AD582A4BE1BD6643').Visible:= PageIndex=2;
  //维修管理
  if cxDBTreeList1.FindNodeByKeyValue('579DB090DCA04F3A976C7BAF69BE5ACC') <> nil then
    cxDBTreeList1.FindNodeByKeyValue('579DB090DCA04F3A976C7BAF69BE5ACC').Visible:= PageIndex=1;
  //财务结算
  if cxDBTreeList1.FindNodeByKeyValue('32F1BEC0545D47D9910326CD40D2A65E') <> nil then
    cxDBTreeList1.FindNodeByKeyValue('32F1BEC0545D47D9910326CD40D2A65E').Visible:= PageIndex=3;

  //基础数据
  if cxDBTreeList1.FindNodeByKeyValue('93874DC7099E4EA6854FBA6B3A3FC247') <> nil then
    cxDBTreeList1.FindNodeByKeyValue('93874DC7099E4EA6854FBA6B3A3FC247').Visible:= PageIndex=0;
  //系统平台
  if cxDBTreeList1.FindNodeByKeyValue('B5BDD16D4B51432BB25896E194F8CABD') <> nil then
    cxDBTreeList1.FindNodeByKeyValue('B5BDD16D4B51432BB25896E194F8CABD').Visible:= PageIndex=5;
  //报表中心
  if cxDBTreeList1.FindNodeByKeyValue('77B024488BF64CE5AEAEB46BC386D470') <> nil then
    cxDBTreeList1.FindNodeByKeyValue('77B024488BF64CE5AEAEB46BC386D470').Visible:= PageIndex=4;

  mainPg.ActivePageIndex := 0;
end;

procedure TFMCliMain.lb_DRPClick(Sender: TObject);
begin
  SetLevelVisible(1);
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

procedure TFMCliMain.lb_RSMClick(Sender: TObject);
begin
  SetLevelVisible(0);
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
//如要打开新窗口,请修改些方法
procedure TFMCliMain.ShowFrom(Fromkey,title : String);
var opt:TOpenFormParameter;
    ErrMsg:string;
    tmpEditForm : TEditFormPar;
    tmpOtherEditForm : TOtherEditFormPar;
begin
  //参数说明:  frmclass:类名, title:窗口页签名,isMsgIn:是否从消息栏打开
  //procedure CreatePageList(frmclass:TFormClass;Title:string;isMsgIn:Boolean=False); //打开列表界面
  //参数说明: frmclass:类名
  //procedure CreateModalFrom(frmclass:TModalFormClass);     //打开模态窗口
  try
    Screen.Cursor := crHourGlass;
    Gio.AddShow('开始调用窗口:'+title+' 内部KEY:'+Fromkey);
    opt:=TOpenFormParameter.Create;
    tmpEditForm := TEditFormPar.Create;
    tmpOtherEditForm := TOtherEditFormPar.Create;
    tmpOtherEditForm.BillFID := '';
    tmpEditForm.BillFID :='';
    //E3E8040F631B46948B5638AB5BB0E8AE 组织单元
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
    //表名 T_BD_Material,T_BD_Customer,T_BD_Supplier,T_DB_WAREHOUSE
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
      //表名 T_BD_Material,T_BD_Customer,T_BD_Supplier,T_DB_WAREHOUSE
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
    //FDB6B7AD3D8648CB952E36C5B7976814客户
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
    //4206032AD83E4560BAA807C55DBDC444供应商
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
    //84094E1361CC4137AA43E8387E11C1E9仓库
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
    /////////////用户管理
    if (Fromkey='AFDAAA5EBC6B480993B96619186FF763') then
    begin
      opt.Caption := title;
      CreatePageList(TFM_UserInfoForm,opt) ;
      Exit;
    end;
      /////////////角色管理
    if (Fromkey='F1274B75C65A4EDCA9C486C6447881D8') then
    begin
      opt.Caption := title;
      CreatePageList(TFM_RoleListForm,opt) ;
      Exit;
    end;

      //仓库设置
    if (Fromkey='289A51FF37AD41978F622B5640BEAD22') then
    begin
      opt.Caption := title;
      CreatePageList(TWarehouseSetFrm,opt) ;
      Exit;
    end;
    //部门 0F2E71798FCE460391FBBB1A4211D072
    if (Fromkey='0F2E71798FCE460391FBBB1A4211D072') then
    begin
      CreateModalFrom(TDepartmentFrm) ;
      Exit;
    end;
    //人员71FDEFBD085743A792B952162E28DB0E
    if (Fromkey='71FDEFBD085743A792B952162E28DB0E') then
    begin
      opt.Caption := title;
      CreatePageList(TPersonListFrm,opt) ;
      Exit;
    end;

    if (Fromkey='F3E412B1045F4FE1BB458A5518252CE3') then
    begin
      opt.Caption := title;
      CreatePageList(TFM_ParamSetForm,opt) ;
      Exit;
    end;

      //权限项维护
    if (Fromkey='D4DC3CD7A9F8427DB5C99B299C267566') then
    begin
      opt.Caption := title;
      CreatePageList(TPermissionsEditFrm,opt) ;
      Exit;
    end;
        //单据列表配置
    if (Fromkey='709EE238AFDF4D64ADD5CC7015A7EA1B') then
    begin
      opt.Caption := title;
      CreatePageList(TBillQueryFrm,opt) ;
      Exit;
    end;
    //短信平台配置
    if (Fromkey='BD1ECCBC246D4C89B8348CB883CDB3EB') then
    begin
      opt.Caption := title;
      CreatePageList(TSmsSystemSetFrm,opt) ;
      Exit;
    end;
     //短信查找
    if (Fromkey='D8999C2F87C949ACA7212B75BC8AF480') then
    begin
      opt.Caption := title;
      CreatePageList(TSmsSendQueryFrm,opt) ;
      Exit;
    end;
    //单据列表配置
    if (Fromkey='A678CE00642B4EADA363AC380DE33998') then
    begin
      opt.Caption := title;
      CreatePageList(TFM_BillListT_IM_MoveInWarehsBill,opt) ;
      Exit;
    end;
    //打印数据源配置
    if (Fromkey='F33A6CB96CB74D5D9511884570D0DEB2') then
    begin
      opt.Caption := title;
      CreatePageList(TPrintQueryFrm,opt) ;
      Exit;
    end;
    //打印模板配置
    if (Fromkey='D1D90157AA5D4F14930E51CDA3D0151D') then
    begin
      opt.Caption := title;
      CreatePageList(TPrintTemplateDesign,opt) ;
      Exit;
    end;
    //渠道价格调整查询
    if (Fromkey='D8FBE6F0DD01442B894B8F5920D5B626') then
    begin
      opt.Caption := title;
      CreatePageList(TAlterPriceListFrm,opt) ;
      Exit;
    end;
    //零售价格调整查询
    if (Fromkey='4917833D29DC4484ACE6D5D9767D37F6') then
    begin
      opt.Caption := title;
      CreatePageList(TShopAlterPriceListFrm,opt) ;
      Exit;
    end;
    //渠道价格查询
    if (Fromkey='CF70CBCA8D4D4DDFADCDDF48365D0A79') then
    begin
      opt.Caption := '价格查询';
      opt.FrmKey := Fromkey;
      opt.mType := 0;
      CreatePageList(TPriceQueryFrm,opt) ;
      Exit;
    end;
    //零售价格查询
    if (Fromkey='736780F409594EE7BDDEDDE979800C7D') then
    begin
      opt.Caption := '价格查询';
      opt.FrmKey := Fromkey;
      opt.mType := 1;
      CreatePageList(TPriceQueryFrm,opt) ;
      Exit;
    end;
    //渠道采购价格查询
    if (Fromkey='461D4DF578DB450E94753C329F54BD7A') then
    begin
      opt.Caption := '价格查询';
      opt.FrmKey := Fromkey;
      opt.mType := 2;
      CreatePageList(TPriceQueryFrm,opt) ;
      Exit;
    end;
    //单据上下查配置
    if (Fromkey='C5CE277D5DBA409A953D11E4B8362D74') then
    begin
      opt.Caption := title;
      CreatePageList(TFindBillQueryFrm,opt) ;
      Exit;
    end;
    //提醒配置
    if (Fromkey='5ACCFADEEBBB4477AF262BE63801F581') then
    begin
      opt.Caption := title;
      CreatePageList(TRemindConfigFrm,opt) ;
      Exit;
    end;
    //事务定义
    if (Fromkey='FAC5C4EE330B4F6887CFE1B44F31234C') then
    begin
      opt.Caption := title;
      CreatePageList(TTransactionFrm,opt) ;
      Exit;
    end;
    //后台事务日志查询处理
    if (Fromkey='36BF59767D3945D196DBBFFE895EA13D') then
    begin
      opt.Caption := title;
      CreatePageList(TTransactionLogQuery,opt) ;
      Exit;
    end;
    //数据表导出导入
    if (FromKey='AEBF3A69AD844C9A95AF226B79B1A116') then   
    begin
      opt.Caption := title;
      CreatePageList(TExportMainFrm,opt) ;
      Exit;
    end;

    if (FromKey='831DB7B482464BB791BFB10F87F36AF6') then    //采购订单列表
    begin
      opt.Caption := title;
      CreatePageList(TFM_BillListPurOrder,opt) ;
      Exit;
    end;
    //------------------------维修管理  begin----------------------------------------
    if (Fromkey='D78CE9D874144BAFBE1E772E8A87C119') then
    begin
      OpenOtherBillEditFrom(RepairWOEditFrm,TRepairWOEditFrm,tmpOtherEditForm) ;
      Exit;
    end;

    if Fromkey = '56C22177C2CD48BEA11904A9D63560D3' then
    begin
      opt.Caption := title;
      CreatePageList(TRepairWOListFrm,opt)
    end;


    //------------------------维修管理- end -----------------------------------------------------


    //采购入库单
    if (FromKey = '0BC41C7E61F04D8F9B273E80A4EDCA4B') then
    begin
      opt.Caption := title;
      CreatePageList(TFM_BillListPurInStock, opt);
      Exit;
    end;                                  

    if (FromKey = 'C5D203C14BB74410A20372827F98C75E') then
    begin
//      opt.Caption := title;
      CreateModalFrom(TFM_BillEditPurInStock);
      Exit;
    end;

    //----------------------------------------------------------------------------
    //报表相关
//    if (Fromkey='BE0D0EAADEAC4D6C82F60B8A679C503D') then //报表设计器
//    begin
//      OpenReportModel(Fromkey,title,1);
//      Exit;
//    end;
//      //报表相关
//    if (Fromkey='9749958DA3C145F3AB5578343CBAFEC9') then //报表用户权限
//    begin
//      OpenReportModel(Fromkey,title,2);
//      Exit;
//    end;
//    if (Fromkey='DB58D634BC63430A9712352955E632E5') then //报表角色权限
//    begin
//      OpenReportModel(Fromkey,title,3);
//      Exit;
//    end;


//    报表中心的报表
//    if string(CliDM.Get_QueryReturn('select Report_id from F_report where Report_id='+quotedstr(Fromkey),ErrMsg))<>'' then
//    begin
//      OpenReportQuery(Fromkey,title);
//      Exit;
//    end;
  finally
    Screen.Cursor := crDefault;
  end;
end;



procedure TFMCliMain.Txt_helpCodeEditing(Sender: TObject;
  var CanEdit: Boolean);
begin
  if Txt_helpCode.Text = '输入助记码打开功能界面...' then
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
    Txt_helpCode.Text := '输入助记码打开功能界面...';
  end;
  //FilterGrid.Visible := False;
end;

procedure TFMCliMain.setTreeListExp;
begin
  //精品配件管理
  if cxDBTreeList1.FindNodeByKeyValue('C027DCAB748446C8AD582A4BE1BD6643') <> nil then
    cxDBTreeList1.FindNodeByKeyValue('C027DCAB748446C8AD582A4BE1BD6643').Expanded:= True;
  //维修管理
  if cxDBTreeList1.FindNodeByKeyValue('579DB090DCA04F3A976C7BAF69BE5ACC') <> nil then
    cxDBTreeList1.FindNodeByKeyValue('579DB090DCA04F3A976C7BAF69BE5ACC').Expanded:= True;
  //财务结算
  if cxDBTreeList1.FindNodeByKeyValue('32F1BEC0545D47D9910326CD40D2A65E') <> nil then
    cxDBTreeList1.FindNodeByKeyValue('32F1BEC0545D47D9910326CD40D2A65E').Expanded:= True;

  //基础数据
  if cxDBTreeList1.FindNodeByKeyValue('93874DC7099E4EA6854FBA6B3A3FC247') <> nil then
    cxDBTreeList1.FindNodeByKeyValue('93874DC7099E4EA6854FBA6B3A3FC247').Expanded:= True;
  //系统平台
  if cxDBTreeList1.FindNodeByKeyValue('B5BDD16D4B51432BB25896E194F8CABD') <> nil then
    cxDBTreeList1.FindNodeByKeyValue('B5BDD16D4B51432BB25896E194F8CABD').Expanded:= True;
  //报表中心
  if cxDBTreeList1.FindNodeByKeyValue('77B024488BF64CE5AEAEB46BC386D470') <> nil then
    cxDBTreeList1.FindNodeByKeyValue('77B024488BF64CE5AEAEB46BC386D470').Expanded:= True;
end;

procedure TFMCliMain.CreateSpeedButton(_Caption, _Frmkey: String;isADDSt:Boolean=True);
var
  sbt : TSpeedButton;
  leftWidth,i,iCount:Integer;
const
  sptWidth = 90;
  sptHeight = 90;
  SpaceWidth = 10;
begin
  iCount := ScrollBox1.ComponentCount;
  for i:=0 to iCount-1 do
  begin
    if ScrollBox1.Components[i].Name = 'ST_'+ _Frmkey then
    Exit;
  end;
  lb_APP.Visible := False;
  leftWidth := ScrollBox1.ComponentCount*sptWidth;
  sbt := TSpeedButton.Create(ScrollBox1);
  sbt.Parent := ScrollBox1;
  if isADDSt then
    sbt.Name :='ST_'+_Frmkey
  else
  sbt.Name :=_Frmkey;
  sbt.Width := sptWidth;
  sbt.Height := sptHeight;
  sbt.Top := 4;
  sbt.Left := leftWidth;
//  if ScrollBox1.Width < sptWidth * iCount then
  sbt.Top := (sptWidth * iCount div ScrollBox1.Width) * (sptHeight + SpaceWidth);
  sbt.Left := (sptWidth * iCount mod ScrollBox1.Width) div sptWidth * (sptWidth + SpaceWidth);
  sbt.Layout := blGlyphTop;
  if Length(_Caption)>12 then
    sbt.Caption := Copy(_Caption,1,12)+'...'
  else
  sbt.Caption := _Caption;
  sbt.Flat := True;
  sbt.Font.Name := '宋体';
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
        ShowMsg(self.Handle,'您选择的节点不是功能节点哦!',[]);
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
        ShowMsg(self.Handle,'您选择的节点不是功能节点哦!',[]);
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
  cdsTX.FieldByName('Fitem').AsString := '未审核的销售订单';
  cdsTX.FieldByName('Fvalue').AsString := '6';
  cdsTX.Post;
  cdsTX.Append;
  cdsTX.FieldByName('FID').AsString := 'tx_002';
  cdsTX.FieldByName('Fitem').AsString := '未审核的采购订单';
  cdsTX.FieldByName('Fvalue').AsString := '3';
  cdsTX.Post;
  cdsTX.Append;
  cdsTX.FieldByName('FID').AsString := 'tx_003';
  cdsTX.FieldByName('Fitem').AsString := '未审核的调拨入库单';
  cdsTX.FieldByName('Fvalue').AsString := '2';
  cdsTX.Post;
  cdsTX.Append;
  cdsTX.FieldByName('FID').AsString := 'tx_004';
  cdsTX.FieldByName('Fitem').AsString := '未审核的采购入库单';
  cdsTX.FieldByName('Fvalue').AsString := '5';
  cdsTX.Post;
  cdsTX.Append;
  cdsTX.FieldByName('FID').AsString := 'tx_005';
  cdsTX.FieldByName('Fitem').AsString := '未审核销售出库单';
  cdsTX.FieldByName('Fvalue').AsString := '8';
  cdsTX.Post;
  }
end;

procedure TFMCliMain.N_DownFileClick(Sender: TObject);
var Fname,_sql,ErrMsg:string;
    cds : TClientDataSet;
begin
  if dsATTACHMEN.IsEmpty then Exit;
  Fname := dsATTACHMEN.fieldbyname('附件文件名').AsString;
  SaveDg.FileName := Fname ;
  if SaveDg.Execute then
  begin
    try
      cds := TClientDataSet.Create(nil);
      _sql := 'select FFile from T_BAS_ATTACHMENT where FID='+QuotedStr(dsATTACHMEN.fieldbyname('FID').AsString);
      if not CliDM.Get_OpenSQL(cds,_sql,ErrMsg) then
      begin
        ShowMsg(Self.Handle,'下载附件出错:'+Errmsg,[]);
        Exit;
      end;
      if not cds.IsEmpty then
      begin
        TBlobField(cds.FieldByName('FFile')).SaveToFile(SaveDg.FileName);
        ShowMsg(Self.Handle,'附件下载成功,存放位置为:'+ExtractFileDir(SaveDg.FileName),[]);
      end;
    finally
      cds.Free;
    end;
  end;
end;

procedure TFMCliMain.spt_AppEditClick(Sender: TObject);
var i:Integer;
begin
  if spt_AppEdit.Caption = '编辑' then
  begin
    if ScrollBox1.ComponentCount = 0 then Exit;
    for i:=0 to ScrollBox1.ComponentCount -1 do
    begin
      if ScrollBox1.Components[i] is TSpeedButton     then
      begin
        TSpeedButton(ScrollBox1.Components[i]).Tag := 1 ;
        TSpeedButton(ScrollBox1.Components[i]).Glyph.LoadFromFile(userinfo.ExePath+'Img\Appdel.bmp');
        spt_AppEdit.Caption := '完成';
      end;
    end;
  end
  else
  begin
    spt_AppEdit.Caption := '编辑';
    AppSaveToIni;
    FromIinLoadAPP;
  end;
end;

procedure TFMCliMain.Txt_helpCodeMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Txt_helpCode.Text = '输入助记码打开功能界面...' then  Txt_helpCode.Text := '';
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



//procedure TFMCliMain.ReportInit;
//var
//  ini: TIniFile;
//  _DllReg_Bat,FilePath,dir,ErrMsg,DBServerIP,DBConnStr: string;
//function Ping_ReportSer: Boolean;
//var
//  i: Integer;
//begin
//  if G_NotPing then
//  begin
//    Result:=True;
//    Exit;
//  end;
//  Result := False;
//  if Trim(DBServerIP) = '' then Exit;
//  ICMP.Host := Trim(DBServerIP);
//  ICMP.ReceiveTimeout := 1000;
//  for i := 0 to 2 do
//  begin
//    Application.ProcessMessages;
//    try
//      ICMP.Ping;
//      if Icmp.ReplyStatus.BytesReceived >0 then
//      begin
//        Result := True;
//        Break;
//      end;
//    except
//      on E: Exception do
//      begin
//        Result := False;
//        Break;
//      end;
//    end;
//  end;
//end;
//begin
//  inherited;
//  try
//    //注册DLL
//    dbType :='oracle';
//    _SysType := 0;
//    _DllReg_Bat := ExtractFilePath(paramstr(0)) + 'CCubeX4\CCubeX4_Install.bat';
//    if FileExists(_DllReg_Bat) then
//      ExecAndWait(_DllReg_Bat, '', SW_HIDE);
//    try
//      G_UserInfo.UserFID := userinfo.LoginUser_FID;
//      G_UserInfo.usernumber := userinfo.LoginUser;
//      G_UserInfo.UserName := userinfo.LoginUser_Name;
//      G_UserInfo.Branch_ID := userinfo.Branch_ID;
//      DMPub := TDMPub.Create(nil);
//      ini:=Tinifile.Create(ExtractFilePath(Application.ExeName) + '\POSSetup.ini');
//      with DMPub.SocketConn do
//      begin
//        Connected:=False;
//        Host:=ini.ReadString('POSClient','ReportServerIP','');
//        Port:=ini.ReadInteger('POSClient','ReportPort',211);
//        G_Debug:=  ini.ReadBool('POSClient','Debug',False);
//        G_NotPing:= ini.ReadBool('POSClient','NotPing',False);
//        Connected:=True;
//        DMPub.GetUserRoles;
//        UserInfo.FuserRoleArray := uReportPub_R.userRoleArray;
//      end;
//      G_UserInfo.Server_IP:= DMPub.SocketConn.Host;
//      G_UserInfo.Server_port:=IntToStr(DMPub.SocketConn.Port);
//        //检查网络模式
//      DMPub.SocketConn.AppServer.getDBInfo(DBServerIP,DBConnStr);
//      Localnetwork:=False;
//      if Ping_ReportSer then
//      begin
//        try
//          DMPub.OrclConn.Close;
//          DMPub.OrclConn.Options.Charset:='ZHS16GBK';
//          DMPub.OrclConn.Options.Net:=True;
//          DMPub.OrclConn.ConnectString:=DBConnStr;
//          DMPub.OrclConn.Connected:=True;
//          Localnetwork:=DMPub.OrclConn.Connected;
//        except
//          on e:Exception do
//          begin
//            Localnetwork:=False;
//          end;
//        end;
//      end
//      else
//      begin
//        Localnetwork:=False;
//      end;
//      if Localnetwork then dxStatusBar1.Panels[3].Text := '报表查询模式:局域网'
//      else dxStatusBar1.Panels[3].Text := '报表查询模式:广域网';
//      //if not cdsType.Active then cdsType.Open;
//      //尺码横排显示用 wushaoshu  20100414
//      bmp := Tbitmap.Create;
//      SizeNameList := TStringList.Create;
//      G_index:=0;
//    except
//      on e:Exception do
//      begin
//        ShowMsg(self.Handle, '连接报表服务器失败! 错误代码:'+e.Message,[]);
//        Application.Terminate;
//      end;
//    end;
//
//    //初始化日志类
//    dir:=ExtractFilePath(Application.ExeName)+G_userinfo.usernumber+'\log';
//    if not DirectoryExists(dir) then CreateDir(dir);
//    Gio_R:=untTio_R.TIOer.Create(nil,dir);
//    Gio_R.AddShow('客户端启动!  ',0);
//    //打开树形图
//    cdstype.RemoteServer := DMPub.SocketConn;
//    cdstype.Close;
//    cdstype.CommandText := 'select * from ReportType';
//    cdsType.Open;
//    //DelNoCopyrightNode;
//    ReportShow;
//  finally
//    if DMPub.SocketConn.Connected then DMPub.SocketConn.Close;
//  end;
//end;

//procedure TFMCliMain.ReportShow;
//var serverTime,localTime:string;
//    ini:TIniFile;
//    toFileName,Stretch:string;
//    b:Boolean;
//    sr:TSearchRec;
//    sPath,sFile:String;
//begin
//  if DirectoryExists(ExtractFilePath(Application.ExeName)+G_userinfo.usernumber+'\RP') then
//  begin
//    sPath:=ExtractFilePath(Application.ExeName)+G_userinfo.usernumber+'\RP\';
//    //------------------------------------------------------------------
//    if FindFirst(sPath+'*.*',faAnyFile,sr)=0 then
//    begin
//      repeat
//        sFile:=Trim(sr.Name);
//        if sFile='.' then Continue;
//        if sFile='..' then Continue;
//        sFile:=sPath+sr.Name;
//        if(sr.Attr and faDirectory)<>0 then
//          DeleteFile(sFile)
//        else if(sr.Attr and faAnyFile)=sr.Attr then
//          DeleteFile(sFile);//删除文件
//      until FindNext(sr)<>0;
//      FindClose(sr);
//    end;
//    RemoveDir(sPath);
//  end;
//  if G_userinfo.usernumber<>'' then
//  CreateDir(ExtractFilePath(Application.ExeName)+G_userinfo.usernumber+'\RP');
//end;

//procedure TFMCliMain.OpenReportQuery(frmKey,title: String);
//var tabsheet : TcxTabSheet;
//    tmBaseList:TViewFrm;
//    i : Integer;
//    _FindqueryNM,resultSQL : string;
//    FormBool : Boolean;
//begin
//  if not  DMPub.openSocketConn  then Exit;
//  resultSQL := getQuerySql(frmKey, title,cdsQueryFind,_FindqueryNM); //cdsQueryFind 用于中转查询数据集
//  if   Trim(resultSQL) = '' then
//  begin
//    if DMPub.SocketConn.Connected then  DMPub.SocketConn.Close;
//    Exit;
//  end;
//  FormBool := False;
//  for i := 0 to mainPg.PageCount-1 do
//  begin
//    if mainPg.Pages[i].Name = 'ts'+ TViewFrm.ClassName+frmKey then
//    begin
//       tabsheet := mainPg.Pages[i];
//       tabsheet.ImageIndex:=3;
//       FormBool := True;
//       mainPg.ActivePage := tabsheet;
//       tmBaseList := TViewFrm(tabsheet.Controls[0]);
//       tmBaseList.resultSQL := resultSQL;
//       tmBaseList.report_id := frmKey;
//       tmBaseList.report_name := title;
//       tmBaseList.QueryReport(_FindqueryNM);
//       Break;
//    end;
//  end;
//  if FormBool then Exit;
//  tabsheet := TcxTabSheet.Create(mainPg);
//  tabsheet.Name := 'ts'+ TViewFrm.ClassName+FrmKey;
//  tabsheet.ImageIndex:=3;
//  tabsheet.PageControl := mainPg;
//  tmBaseList := TViewFrm.Create(Tabsheet);
//  tmBaseList.Caption := title;
//  tabsheet.Caption   := title;
//  tmBaseList.Name := 'Frm'+TViewFrm.ClassName+FrmKey;
//  tmBaseList.Parent := tabsheet;
//  mainPg.ActivePage := tabsheet;
//  tmBaseList.resultSQL := resultSQL;
//  tmBaseList.report_id := frmKey;
//  tmBaseList.report_name := title;
//  tmBaseList.QueryReport(_FindqueryNM);
//  tmBaseList.Show;
//
//end;
//
//procedure TFMCliMain.ReportTreeDblClick(Sender: TObject);
//var KeyFID,title,ErrMsg : string;
//begin
//  if (cdsType.IsEmpty) then Exit;
//  KeyFID := cdsType.fieldbyname('TreeID').AsString;
//  title  := cdsType.fieldbyname('REPORTTYPENAME').AsString;
//  if KeyFID <> '' then
//  ShowFrom(KeyFID,title);
//end;

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
 // _SQL:=' SELECT top 1000 FROM '
 //    +' ('
     _SQL:='SELECT top 1000 a.FSTATUS , a.FID,a.FSENDER_L2 AS 发件人, a.FSENDTIME AS 发件时间, a.FTITLE_L2 AS 标题, '
     + ' a.FBODY_L2 AS 内容 '
     +'FROM T_BAS_MESSAGE A  '
     +' WHERE isnull(a.FSENDER_L2,'' '')<>'' '' and isnull(a.FSENDER_L2,'' '')<>''后台事物'' and isnull(a.FSENDER_L2,'' '')<>''服务器'' and  FSTATUS=0 and a.FRECEIVER = '+QuotedStr(UserInfo.LoginUser_FID)
     +' order by FSENDTIME desc ' ;
 //    +' )';
  //   +' WHERE rownum<=1000 ';
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

//procedure TFMCliMain.OpenReportModel(frmKey, title: String;
//  ftype: Integer);
//var tabsheet : TcxTabSheet;
//    tmBaseList:TForm;
//    i : Integer;
//    _FindqueryNM,resultSQL : string;
//    FormBool : Boolean;
//begin
//  if not  DMPub.openSocketConn  then Exit;
//  FormBool := False;
//  for i := 0 to mainPg.PageCount-1 do
//  begin
//    if mainPg.Pages[i].Name = 'ts'+frmKey then
//    begin
//       tabsheet := mainPg.Pages[i];
//       tabsheet.ImageIndex:=3;
//       FormBool := True;
//       mainPg.ActivePage := tabsheet;
//       Break;
//    end;
//  end;
//  if FormBool then Exit;
//  tabsheet := TcxTabSheet.Create(mainPg);
//  tabsheet.Name := 'ts'+ FrmKey;
//  tabsheet.ImageIndex:=3;
//  tabsheet.PageControl := mainPg;
//  if Ftype = 1 then
//  tmBaseList := TReportEditFrm.Create(Tabsheet)
//  else
//  if Ftype = 2 then
//  tmBaseList := TRightFrm.Create(Tabsheet)
//  else
//  if Ftype = 3 then
//  tmBaseList := TRoleRightFrm.Create(Tabsheet);
//  tmBaseList.Caption := title;
//  tabsheet.Caption   := title;
//  tmBaseList.BorderStyle := bsNone;
//  tmBaseList.Align := alClient;
//  tmBaseList.Name := 'Frm'+FrmKey;
//  tmBaseList.Parent := tabsheet;
//  mainPg.ActivePage := tabsheet;
//  tmBaseList.Show;
//end;

procedure TFMCliMain.AlterOrg;
var i,pCount:Integer;
begin
  if MessageBox(Handle, PChar('切换组织将首先关闭主控台以外的页签或窗口,您确认执行此操作?(Y/N)'), 'GA集团ERP提示', MB_YESNO) = IDNO then Exit;
  CloseAllPopupWindows(Application.MainForm.Handle);
  if not IsAllClose(Application.MainForm.Handle) then
  begin
    ShowMsg(self.Handle,'请关闭所有已打开窗口再切换组织！',[]);
    Exit;
  end;
  pCount := mainPg.PageCount -1;
  for i := pCount  downto  2 do
  begin
    mainPg.Pages[i].Free;
  end;
  with Select_Branch('','',2) do
  begin
    if not IsEmpty() then
    begin
      UserInfo.Branch_ID     := fieldbyname('FID').asstring;
      UserInfo.Branch_Number := fieldbyname('fnumber').asstring;
      UserInfo.Branch_Name   := fieldbyname('fname_l2').asstring;
      UserInfo.Branch_Flag   := fieldbyname('cfbranchflag').asstring;
      dxStatusBar1.Panels[2].Text := '登录组织：' + UserInfo.Branch_Name;
    end;
  end;
end;

procedure TFMCliMain.dxStatusBar1Panels2DblClick(Sender: TObject);
begin
  inherited;
  AlterOrg;
end;
procedure TFMCliMain.Label9Click(Sender: TObject);
var
  i:Integer;
begin
  for i:=1 to 40 do
  begin
    Sleep(1);
    ScrollBox1.ScrollBy(0,-2);
    Application.ProcessMessages;
  end;
end;

procedure TFMCliMain.Label11Click(Sender: TObject);
var
  i:Integer;
begin
  for i:=1 to 41 do
  begin
    Sleep(1);
    ScrollBox1.ScrollBy(0,2);
    Application.ProcessMessages;
  end;
end;

procedure TFMCliMain.X1Click(Sender: TObject);
begin
  Self.Close;
end;

procedure TFMCliMain.R1Click(Sender: TObject);
begin
  Application.Terminate;
  shellexecute(handle,'open',pchar(Application.ExeName),nil,nil,sw_shownormal);
end;

procedure TFMCliMain.N3Click(Sender: TObject);
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

procedure TFMCliMain.T1Click(Sender: TObject);
begin
  AlterOrg;
end;

procedure TFMCliMain.RzGroup3Open(Sender: TObject);
begin
  SetLevelVisible((sender as TRzGroup).Tag);
  cxDBTreeList1.Parent := TRzGroup(Sender);
end;

initialization
 RegisterClasses([TIcon, TBitmap, TJPEGImage, TMetafile]);
end.
