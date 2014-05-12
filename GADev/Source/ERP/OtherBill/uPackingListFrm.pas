unit uPackingListFrm;

interface
 //CFRowType 字段 0正常,1超数 2不在源单内
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBaseEditFrm, DB, DBClient, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxContainer,
  cxTextEdit, cxPC, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  StdCtrls, ExtCtrls, dxBar, cxCheckBox, cxLookAndFeelPainters, cxGroupBox,
  cxMaskEdit, cxDropDownEdit, cxCalc, cxDBEdit, cxLabel, cxButtonEdit,
  cxCalendar, Menus, cxButtons, cxMemo, dxGDIPlusClasses, cxProgressBar,uPrintTemplateSelectFrm;
type
 TPackingContext = record
  FbtypeName      : string;  //源单类型名称
  FBilltypeID     : string;  //源单类型FID
  CFSOURCENUMBER  : string;  //源单编号
  FSOURCEBILLID   : string;  //源单FID

  SrcMaterTable   : string;  //源单主表名称
  SrcEntryTable   : string;  //源单分录表名称

  CFWAREHOUSEID   : string;  //源单仓库FID
  FWAREHOUSEName  : string;  //源单仓库名称
  CFCUSTOMERID    : string;  //源单客户FID
  CustName        : string;  //源单客户名称
  CFSUPPLIERID    : string;  //源单供应商FID
  SUPPLIERNAME    : string;  //源单供应商名称
  IsBillOpen,                //是否从业务单据打开
  IsTop100,                  //是否只显示前100条数据
  SrcBillIsAudit  : Boolean; //源单是否已经审核
 end;
type
  TPackingListFrm = class(TSTBaseEdit)
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar2: TdxBar;
    dxBarManager1Bar1: TdxBar;
    btn_Save: TdxBarButton;
    btn_DelBill: TdxBarButton;
    btn_uAudit: TdxBarButton;
    dxBarSubItem2: TdxBarSubItem;
    btn_PrintSelect: TdxBarButton;
    btn_PrintAll: TdxBarButton;
    btn_Exit: TdxBarButton;
    btnNew: TdxBarButton;
    dxBarSubItem3: TdxBarSubItem;
    btn_MaterialInfo: TdxBarButton;
    dxBarSubItem7: TdxBarSubItem;
    dxBarSubItem8: TdxBarSubItem;
    btn_Sign: TdxBarButton;
    bt_CtrlB: TdxBarButton;
    bt_CtrlJ: TdxBarButton;
    bt_sendMsg: TdxBarButton;
    Audit: TdxBarButton;
    Left_pl: TPanel;
    Center_pl: TPanel;
    right_Pl: TPanel;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    cxGrid3: TcxGrid;
    cxBillList: TcxGridDBTableView;
    cxGridLevel4: TcxGridLevel;
    Panel2: TPanel;
    cxGrid1: TcxGrid;
    cxGridSrcInfo: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    Panel3: TPanel;
    Panel4: TPanel;
    InputPage: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    Panel5: TPanel;
    Panel6: TPanel;
    Splitter3: TSplitter;
    cxTabSheet2: TcxTabSheet;
    cxTabSheet9: TcxTabSheet;
    txt_BarCodeInput: TcxTextEdit;
    txt_BarCodeRate: TcxTextEdit;
    lb_BarCodeMsg: TLabel;
    EntryPage: TcxPageControl;
    cxTabSheet4: TcxTabSheet;
    cxTabSheet5: TcxTabSheet;
    lb_BoxCodeMsg: TLabel;
    txt_BoxCodeInput: TcxTextEdit;
    cxGrid2: TcxGrid;
    cxGridEntry: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    chk_InputNotExists: TcxCheckBox;
    cdsMaster: TClientDataSet;
    cdsDetail: TClientDataSet;
    cdsMasterFID: TWideStringField;
    cdsMasterFCREATORID: TWideStringField;
    cdsMasterFCREATETIME: TDateTimeField;
    cdsMasterFLASTUPDATEUSERID: TWideStringField;
    cdsMasterFLASTUPDATETIME: TDateTimeField;
    cdsMasterFCONTROLUNITID: TWideStringField;
    cdsMasterFNUMBER: TWideStringField;
    cdsMasterCFBOXNUMBER: TFloatField;
    cdsMasterFBIZDATE: TDateTimeField;
    cdsMasterFDESCRIPTION: TWideStringField;
    cdsMasterFAUDITORID: TWideStringField;
    cdsMasterCFSOURCETYPE: TWideStringField;
    cdsMasterFSOURCEBILLID: TWideStringField;
    cdsMasterCFSOURCENUMBER: TWideStringField;
    cdsMasterCFCAPACITY: TFloatField;
    cdsMasterCFWAREHOUSEID: TWideStringField;
    cdsMasterCFWAREHOUSELOCATIO: TWideStringField;
    cdsMasterCFSTATUS: TWideStringField;
    cdsMasterFBRANCHID: TWideStringField;
    cdsMasterCFCUSTOMERID: TWideStringField;
    cdsMasterCFSUPPLIERID: TWideStringField;
    cdsDetailFID: TWideStringField;
    cdsDetailFSEQ: TFloatField;
    cdsDetailFPARENTID: TWideStringField;
    cdsDetailCFMATERIALID: TWideStringField;
    cdsDetailCFCOLORID: TWideStringField;
    cdsDetailCFSIZEID: TWideStringField;
    cdsDetailCFCUPID: TWideStringField;
    cdsDetailCFQTY: TFloatField;
    cdsDetailCFDIFFQTY: TFloatField;
    cdsDetailCFBARCODE: TWideStringField;
    cdsDetailCFREMARK: TWideStringField;
    cdsEditDetail: TClientDataSet;
    cdsEditDetailFID: TWideStringField;
    cdsEditDetailFSEQ: TFloatField;
    cdsEditDetailFPARENTID: TWideStringField;
    cdsEditDetailCFMATERIALID: TWideStringField;
    cdsEditDetailCFCOLORID: TWideStringField;
    cdsEditDetailCFSIZEID: TWideStringField;
    cdsEditDetailCFCUPID: TWideStringField;
    cdsEditDetailCFQTY: TFloatField;
    cdsEditDetailCFDIFFQTY: TFloatField;
    cdsEditDetailCFBARCODE: TWideStringField;
    cdsEditDetailCFREMARK: TWideStringField;
    cdsEditDetailCOLORNUMBER: TWideStringField;
    cdsEditDetailCOLORNAME: TWideStringField;
    cdsEditDetailSIZENUMBER: TWideStringField;
    cdsEditDetailCUPNAME: TWideStringField;
    dsEditMaster: TDataSource;
    dsEditDetail: TDataSource;
    cdsEditDetailMaterialNumber: TWideStringField;
    cdsEditDetailMaterialName: TWideStringField;
    cxGridEntryFID: TcxGridDBColumn;
    cxGridEntryFSEQ: TcxGridDBColumn;
    cxGridEntryFPARENTID: TcxGridDBColumn;
    cxGridEntryCFMATERIALID: TcxGridDBColumn;
    cxGridEntryMaterialNumber: TcxGridDBColumn;
    cxGridEntryMaterialName: TcxGridDBColumn;
    cxGridEntryCFCOLORID: TcxGridDBColumn;
    cxGridEntryCFSIZEID: TcxGridDBColumn;
    cxGridEntryCFCUPID: TcxGridDBColumn;
    cxGridEntryCFQTY: TcxGridDBColumn;
    cxGridEntryCFDIFFQTY: TcxGridDBColumn;
    cxGridEntryCFBARCODE: TcxGridDBColumn;
    cxGridEntryCFREMARK: TcxGridDBColumn;
    cxGridEntryCOLORNUMBER: TcxGridDBColumn;
    cxGridEntryCOLORNAME: TcxGridDBColumn;
    cxGridEntrySIZENUMBER: TcxGridDBColumn;
    cxGridEntryCUPNAME: TcxGridDBColumn;
    cdsSrcBillData: TClientDataSet;
    WideStringField3: TWideStringField;
    WideStringField4: TWideStringField;
    WideStringField5: TWideStringField;
    WideStringField6: TWideStringField;
    WideStringField7: TWideStringField;
    WideStringField8: TWideStringField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    WideStringField11: TWideStringField;
    WideStringField12: TWideStringField;
    WideStringField13: TWideStringField;
    WideStringField14: TWideStringField;
    dsSrcBillData: TDataSource;
    cxGridSrcInfoCFMATERIALID: TcxGridDBColumn;
    cxGridSrcInfoMaterialNumber: TcxGridDBColumn;
    cxGridSrcInfoMaterialName: TcxGridDBColumn;
    cxGridSrcInfoCFCOLORID: TcxGridDBColumn;
    cxGridSrcInfoCFSIZEID: TcxGridDBColumn;
    cxGridSrcInfoCFCUPID: TcxGridDBColumn;
    cxGridSrcInfoCFQTY: TcxGridDBColumn;
    cxGridSrcInfoCFScanFQTY: TcxGridDBColumn;
    cxGridSrcInfoCOLORNUMBER: TcxGridDBColumn;
    cxGridSrcInfoCOLORNAME: TcxGridDBColumn;
    cxGridSrcInfoSIZEName: TcxGridDBColumn;
    cxGridSrcInfoCUPNAME: TcxGridDBColumn;
    cxGroupBox2: TcxGroupBox;
    cxLabel1: TcxLabel;
    txt_FNUMBER: TcxDBTextEdit;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    txt_CFBOXNUMBER: TcxDBCalcEdit;
    txt_CFCapacity: TcxDBCalcEdit;
    cxTabSheet6: TcxTabSheet;
    cxLabel4: TcxLabel;
    txt_FWAREHOUSEName: TcxDBButtonEdit;
    cxLabel5: TcxLabel;
    txt_CFWAREHOUSELctame: TcxDBButtonEdit;
    cxLabel6: TcxLabel;
    txt_FDESCRIPTION: TcxDBTextEdit;
    Label21: TLabel;
    Label32: TLabel;
    txt_alName: TcxDBTextEdit;
    txt_ctName: TcxDBTextEdit;
    Label31: TLabel;
    Label33: TLabel;
    txt_FLASTUPDATETIME: TcxDBDateEdit;
    txt_FCREATETIME: TcxDBDateEdit;
    cxLabel11: TcxLabel;
    txt_CFSTATUS: TcxDBTextEdit;
    cdsEditMaster: TClientDataSet;
    WideStringField1: TWideStringField;
    WideStringField2: TWideStringField;
    DateTimeField1: TDateTimeField;
    WideStringField9: TWideStringField;
    DateTimeField2: TDateTimeField;
    WideStringField10: TWideStringField;
    WideStringField15: TWideStringField;
    FloatField1: TFloatField;
    DateTimeField3: TDateTimeField;
    WideStringField16: TWideStringField;
    WideStringField17: TWideStringField;
    WideStringField18: TWideStringField;
    WideStringField19: TWideStringField;
    WideStringField20: TWideStringField;
    FloatField4: TFloatField;
    WideStringField21: TWideStringField;
    WideStringField22: TWideStringField;
    WideStringField23: TWideStringField;
    WideStringField24: TWideStringField;
    WideStringField25: TWideStringField;
    WideStringField26: TWideStringField;
    cdsEditMasterFWAREHOUSEName: TWideStringField;
    cdsEditMasterCFWAREHOUSELOCATIOName: TWideStringField;
    cdsEditMasterCustName: TWideStringField;
    cdsEditMasterSUPPLIERNAME: TWideStringField;
    cdsEditMasterctName: TWideStringField;
    cdsEditMasteralName: TWideStringField;
    cdsEditMasterbtypeName: TWideStringField;
    chk_GreaterthanSrcQty: TcxCheckBox;
    Panel7: TPanel;
    Label3: TLabel;
    cdsBoxList: TClientDataSet;
    WideStringField27: TWideStringField;
    WideStringField28: TWideStringField;
    DateTimeField4: TDateTimeField;
    WideStringField31: TWideStringField;
    FloatField5: TFloatField;
    WideStringField32: TWideStringField;
    FloatField6: TFloatField;
    WideStringField39: TWideStringField;
    cdsBoxListFWAREHOUSEName: TWideStringField;
    cdsBoxListctName: TWideStringField;
    dsBoxList: TDataSource;
    cxBillListFID: TcxGridDBColumn;
    cxBillListFCREATORID: TcxGridDBColumn;
    cxBillListFCREATETIME: TcxGridDBColumn;
    cxBillListFNUMBER: TcxGridDBColumn;
    cxBillListCFBOXNUMBER: TcxGridDBColumn;
    cxBillListFDESCRIPTION: TcxGridDBColumn;
    cxBillListCFCAPACITY: TcxGridDBColumn;
    cxBillListCFSTATUS: TcxGridDBColumn;
    cxBillListFWAREHOUSEName: TcxGridDBColumn;
    cxBillListctName: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    chk_AutoNewBill: TcxCheckBox;
    cdsMasterCFSOURCEBoxFID: TWideStringField;
    cdsEditMasterCFSOURCEBoxFID: TWideStringField;
    cxGroupBox1: TcxGroupBox;
    cxLabel7: TcxLabel;
    txt_btypeName: TcxDBTextEdit;
    cxLabel8: TcxLabel;
    txt_CFSOURCENUMBER: TcxDBTextEdit;
    cxLabel9: TcxLabel;
    txt_CustName: TcxDBButtonEdit;
    cxLabel10: TcxLabel;
    txt_SUPPLIERNAME: TcxDBButtonEdit;
    Panel8: TPanel;
    btn_RefData: TcxButton;
    btn_AllAddBox: TcxButton;
    cdsEditDetailCFRowType: TFloatField;
    cdsDetailCFRowType: TFloatField;
    cxGridEntryRowType: TcxGridDBColumn;
    m_Log: TcxMemo;
    chk_automaticRecovery: TcxCheckBox;
    Image2: TImage;
    Image1: TImage;
    cdsEditDetailFRowState: TStringField;
    cxGridEntryFRowState: TcxGridDBColumn;
    cdsMasterCFISBILLOPEN: TIntegerField;
    cdsEditMasterCFISBILLOPEN: TIntegerField;
    cdsMasterCFEntrySumQty: TFloatField;
    cdsEditMasterCFEntrySumQty: TFloatField;
    cdsBoxListCFEntrySumQty: TFloatField;
    cxBillListCFEntrySumQty: TcxGridDBColumn;
    btn_Query: TdxBarButton;
    btn_Report: TdxBarButton;
    btn_CancelPackingList: TdxBarButton;
    Btn_txtFileImport: TdxBarButton;
    btn_ExcelImport: TdxBarButton;
    cxTabSheet7: TcxTabSheet;
    Label2: TLabel;
    txt_sp: TcxTextEdit;
    Label1: TLabel;
    ed_file: TcxTextEdit;
    btOK: TcxButton;
    Image3: TImage;
    opendg: TOpenDialog;
    Label4: TLabel;
    p_bar: TcxProgressBar;
    btn_Import: TcxButton;
    Label5: TLabel;
    btn_DelAllPackingList: TdxBarButton;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_SaveClick(Sender: TObject);
    procedure btnNewClick(Sender: TObject);
    procedure WideStringField39GetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure WideStringField23GetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure cdsEditDetailNewRecord(DataSet: TDataSet);
    procedure cdsEditMasterNewRecord(DataSet: TDataSet);
    procedure cdsBoxListNewRecord(DataSet: TDataSet);
    procedure btn_ExitClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cdsEditDetailBeforePost(DataSet: TDataSet);
    procedure txt_BarCodeInputKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cdsEditMasterBeforePost(DataSet: TDataSet);
    procedure cxBillListFocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure txt_BoxCodeInputKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure InputPageChange(Sender: TObject);
    procedure txt_FWAREHOUSENameKeyPress(Sender: TObject; var Key: Char);
    procedure txt_CFWAREHOUSELctameKeyPress(Sender: TObject;
      var Key: Char);
    procedure txt_FWAREHOUSENamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure txt_CFWAREHOUSELctamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cdsEditMasterBeforeEdit(DataSet: TDataSet);
    procedure cdsEditDetailBeforeEdit(DataSet: TDataSet);
    procedure AuditClick(Sender: TObject);
    procedure btn_uAuditClick(Sender: TObject);
    procedure btn_SignClick(Sender: TObject);
    procedure bt_CtrlBClick(Sender: TObject);
    procedure bt_CtrlJClick(Sender: TObject);
    procedure btn_DelBillClick(Sender: TObject);
    procedure bt_sendMsgClick(Sender: TObject);
    procedure btn_MaterialInfoClick(Sender: TObject);
    procedure btn_RefDataClick(Sender: TObject);
    procedure cxGridEntryCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure cdsEditDetailCalcFields(DataSet: TDataSet);
    procedure cxGridSrcInfoCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure btn_AllAddBoxClick(Sender: TObject);
    procedure btn_QueryClick(Sender: TObject);
    procedure btn_ReportClick(Sender: TObject);
    procedure btn_CancelPackingListClick(Sender: TObject);
    procedure btOKClick(Sender: TObject);
    procedure btn_ImportClick(Sender: TObject);
    procedure btn_DelAllPackingListClick(Sender: TObject);
    procedure btn_PrintSelectClick(Sender: TObject);
    procedure btn_PrintAllClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    PackingContext : TPackingContext;
    FCAPACITY:Integer;
    procedure OpenBoxList;
    procedure OpenBill(mFID:string);
    function  ST_Save : Boolean; override; //保存单据
    function  CHK_Data:Boolean;   //保存前数据校验
    procedure EditDataToDetail;//把编辑数据源的数据保存到提交数据集
    function  GetSCMBillTypeName(FID:string):string;
    function  GetBox:Integer;
    function BarCodeInput(BarCode:String):Boolean;
    procedure addLog(log:string);
    procedure BoxBarCodeInput(BarCode:String);
    function  AuditBox:Boolean;
    function  UAuditBox:Boolean;
    function  DelBill:Boolean;
    Procedure GetTableName;
    Procedure GetcSrcBillData;
    procedure FindSrcBillData(materFID,ColorFID,sizeFID,cupFID:string;
                           InputQty:Integer;var DiffQty,RowType:Integer);
    procedure AlterPackingData;
    procedure AllTObillEntry;
    procedure GetUserIniPar;
    procedure SetUserInipar;
  end;

var
  PackingListFrm: TPackingListFrm;
  procedure CallPackingList(PKContext : TPackingContext);
implementation
   uses FrmCliDM,Pub_Fun,uMaterDataSelectHelper,uDrpHelperClase,jpeg,
   Maximage,uSendMessage,materialinfo,IniFiles,uPackingQueryFrm,uPackingListReportFrm,uBatchCancelPackingFrm;
{$R *.dfm}
procedure CallPackingList(PKContext : TPackingContext);
begin
  try
    Application.CreateForm(TPackingListFrm,PackingListFrm);
    PackingListFrm.PackingContext :=  PKContext; 
    PackingListFrm.ShowModal
  finally
    PackingListFrm.Free;
  end;
end;
{ TPackingListFrm }

procedure TPackingListFrm.OpenBoxList;
var _SQL,ErrMsg:string;
begin
  try
    cxBillList.OnFocusedRecordChanged := nil;
    _SQL :=' select a.fid,a.cfstatus,a.fcreatorid,a.fcreatetime ,a.CFBOXNUMBER, '
          +' a.fnumber,a.CFCAPACITY,a.FDESCRIPTION,  '
          +' w.fname_l2 as FWAREHOUSEName,  '
          +' ctuser.fname_l2 as ctName ,a.CFEntrySumQty'
          +' from CT_PAC_PACKING a  '
          +' left join t_db_warehouse w on a.cfwarehouseid=w.fid '
          +' left join t_pm_user ctuser on ctuser.fid=a.fcreatorid '
          +' where 1=1 ';
    if PackingContext.IsBillOpen then
    begin
      _SQL := _SQL+' and a.CFISBILLOPEN=1 and  a.FSOURCEBILLID='+Quotedstr(PackingContext.FSOURCEBILLID)+' order by CFBOXNUMBER';
    end
    else
    begin
      _SQL := _SQL+' and a.CFISBILLOPEN=0'
            +' and a.FBranchID='+Quotedstr(UserInfo.Branch_ID);

      if PackingContext.IsTop100 then
      _SQL := _SQL+' and rownum <= 100';

      _SQL := _SQL +' order by fcreatetime';
    end;
    if not CliDM.Get_OpenSQL(cdsBoxList,_SQL,ErrMsg) then
    begin
      ShowMsg(self.Handle,'打开装箱单出错:'+ErrMSg+':'+_SQL,[]);
      Gio.AddShow('打开装箱单出错:'+ErrMSg+':'+_SQL);
    end;
  finally
    cxBillList.OnFocusedRecordChanged := cxBillListFocusedRecordChanged;
  end;
end;

procedure TPackingListFrm.FormCreate(Sender: TObject);
var Path:string;
begin
  inherited;
  PackingContext.IsTop100 := True;
  self.WindowState := wsMaximized;
  FCAPACITY := 0;
  Path := ExtractFilePath(Application.ExeName)+Userinfo.LoginUser ;
  if not DirectoryExists(Path) then
  CreateDir(path);
end;

procedure TPackingListFrm.FormShow(Sender: TObject);
var mFID:string;
begin
  inherited;
  cdsSrcBillData.CreateDataSet;
  OpenBoxList;
  if not cdsBoxList.IsEmpty then
  begin
    mFID := cdsBoxList.fieldbyname('fid').AsString;
    OpenBill(mFID);
  end;
  if Self.PackingContext.IsBillOpen then
  begin
    self.PackingContext.FbtypeName := GetSCMBillTypeName(PackingContext.FBilltypeID);
    GetTableName;
  end;
  InputPage.ActivePageIndex := 0;
  EntryPage.ActivePageIndex := 0;
  GetcSrcBillData;
  if cdsBoxList.IsEmpty then OpenBill('');
  GetUserInipar;
  btn_Query.Enabled  := not PackingContext.IsBillOpen;
  btn_Report.Enabled :=  PackingContext.IsBillOpen;
  btn_CancelPackingList.Enabled := PackingContext.IsBillOpen;
  btn_DelAllPackingList.Enabled := PackingContext.IsBillOpen;
end;

procedure TPackingListFrm.OpenBill(mFID: string);
var materSQL,ErrMsg:string;
  _cds: array[0..3] of TClientDataSet;
  _SQL: array[0..3] of String;
begin
  try
    Screen.Cursor := crHourGlass;
    cxBillList.OnFocusedRecordChanged := nil;
    _cds[0] := cdsMaster;
    _cds[1] := cdsEditMaster;
    _cds[2] := cdsDetail;
    _cds[3] := cdsEditDetail;
    if (mFID <> '') then
    begin
      materSQL := 'select * from CT_PAC_PACKING a  where a.fid='+Quotedstr(mFID);
      _SQL[0] := materSQL;
      _SQL[1] :=' select a.* ,w.fname_l2 as FWAREHOUSEName,wl.fname_l2  as CFWAREHOUSELOCATIOName, '
              +' cust.fname_l2 as CustName,supplier.fname_l2 as SUPPLIERNAME, '
              +' ctuser.fname_l2 as ctName,aluser.fname_l2 as alName,btype.fname_l2 as btypeName '
              +' from CT_PAC_PACKING a  '
              +' left join t_db_warehouse w on a.cfwarehouseid=w.fid  '
              +' left join t_db_location wl on a.cfwarehouselocatio = wl.fid '
              +' left join t_bd_customer cust on a.cfcustomerid=cust.fid'
              +' left join t_bd_supplier supplier on supplier.fid=a.cfsupplierid '
              +' left join t_pm_user ctuser on ctuser.fid=a.fcreatorid '
              +' left join t_pm_user aluser on aluser.fid=a.flastupdateuserid '
              +' left join t_scm_billtype btype on a.cfsourcetype=btype.fid '
              +' where a.fid='+Quotedstr(mFID);
      _SQL[2] := 'select * from CT_PAC_PACKINGENTRY '+' where fparentid='+Quotedstr(mFID);
      _SQL[3] :=' select a.*,m.fnumber as MaterialNumber ,m.fname_l2 as MaterialName, '
              +' color.fnumber as colorNumber,color.fname_l2 as colorName ,'
              +' sizes.fname_l2 as SIZEName,cup.fname_l2 as cupName  '
              +' from CT_PAC_PACKINGENTRY a '
              +' left join t_bd_material m on m.fid=a.cfmaterialid  '
              +' left join t_bd_asstattrvalue color on color.Ftype=''COLOR'' and color.FID=a.cfcolorid  '
              +' left join t_bd_asstattrvalue sizes on sizes.Ftype=''SIZE'' and sizes.FID=a.cfsizeid '
              +' left join t_bd_asstattrvalue cup   on cup.Ftype=''CUP'' and cup.FID=a.cfcupid'
              +' where a.fparentid=' +Quotedstr(mFID);
    end
    else
    begin
      materSQL := 'select * from CT_PAC_PACKING a  where 1=2';
      _SQL[0] := materSQL;
      _SQL[1] :=' select a.* ,w.fname_l2 as FWAREHOUSEName,wl.fname_l2  as CFWAREHOUSELOCATIOName, '
              +' cust.fname_l2 as CustName,supplier.fname_l2 as SUPPLIERNAME, '
              +' ctuser.fname_l2 as ctName,aluser.fname_l2 as alName,btype.fname_l2 as btypeName '
              +' from CT_PAC_PACKING a  '
              +' left join t_db_warehouse w on a.cfwarehouseid=w.fid  '
              +' left join t_db_location wl on a.cfwarehouselocatio = wl.fid '
              +' left join t_bd_customer cust on a.cfcustomerid=cust.fid'
              +' left join t_bd_supplier supplier on supplier.fid=a.cfsupplierid '
              +' left join t_pm_user ctuser on ctuser.fid=a.fcreatorid '
              +' left join t_pm_user aluser on aluser.fid=a.flastupdateuserid '
              +' left join t_scm_billtype btype on a.cfsourcetype=btype.fid '
              +' where 1=2';
      _SQL[2] := 'select * from CT_PAC_PACKINGENTRY '+' where 1=2';
      _SQL[3] :=' select a.*,m.fnumber as MaterialNumber ,m.fname_l2 as MaterialName, '
              +' color.fnumber as colorNumber,color.fname_l2 as colorName ,'
              +' sizes.fname_l2 as SIZEName,cup.fname_l2 as cupName  '
              +' from CT_PAC_PACKINGENTRY a '
              +' left join t_bd_material m on m.fid=a.cfmaterialid  '
              +' left join t_bd_asstattrvalue color on color.Ftype=''COLOR'' and color.FID=a.cfcolorid  '
              +' left join t_bd_asstattrvalue sizes on sizes.Ftype=''SIZE'' and sizes.FID=a.cfsizeid '
              +' left join t_bd_asstattrvalue cup   on cup.Ftype=''CUP'' and cup.FID=a.cfcupid'
              +' where 1=2'
    end;
    if not (CliDM.Get_OpenClients_E(mFID,_cds,_SQL,ErrMsg)) then
    begin
      showmsg(self.Handle,'装箱单打开出错:'+ErrMsg,[]);
      Self.Close;
      Abort;
    end;
    if mFID = '' then
    begin
      cdsEditMaster.Append;
      cdsBoxList.Append;
      if InputPage.ActivePageIndex = 0 then
      txt_BarCodeInput.SetFocus
      else
      if InputPage.ActivePageIndex = 1 then
      txt_BoxCodeInput.SetFocus;
    end;
    m_Log.Clear;
  finally
    cxBillList.OnFocusedRecordChanged := cxBillListFocusedRecordChanged;
    Screen.Cursor := crDefault;
  end;
end;

function TPackingListFrm.ST_Save: Boolean;
var _cds: array[0..1] of TClientDataSet;
    error : string;
    i,InputTatolQty:Integer;
begin
  try
    Screen.Cursor := crHourGlass;
    Result := False;
    if (cdsEditDetail.State in DB.dsEditModes) then cdsEditDetail.Post;
    if (cdsEditMaster.State in DB.dsEditModes) then cdsEditMaster.Post;
    InputTatolQty := 0;
    if cxGridEntry.DataController.Summary.FooterSummaryValues[1] <> null then
    InputTatolQty := cxGridEntry.DataController.Summary.FooterSummaryValues[1];
    if cdsMaster.IsEmpty then
    cdsMaster.Append
    else
    cdsMaster.Edit;
    for  i := 0 to cdsMaster.FieldCount -1 do
    begin
      cdsMaster.Fields[i].Value := cdsEditMaster.fieldbyname(cdsMaster.Fields[i].FieldName).Value;
    end;
    cdsMaster.FieldByName('CFEntrySumQty').AsInteger := InputTatolQty;
    cdsMaster.Post;
    EditDataToDetail;//转分录
    //提交数据
    if not CHK_Data then Exit;

    _cds[0] := cdsMaster;
    _cds[1] := cdsDetail;
    try
      if CliDM.Apply_Delta_E(_cds,['CT_PAC_PACKING','CT_PAC_PACKINGENTRY'],error) then
      begin
        Result := True;
        cdsBoxList.Edit;
        cdsBoxList.FieldByName('CFEntrySumQty').AsInteger := InputTatolQty;
        cdsBoxList.Post;
        if cdsBoxList.State in DB.dsEditModes then  cdsBoxList.Post;
        FCAPACITY := cdsMaster.fieldbyname('CFCAPACITY').AsInteger;
        Gio.AddShow('CT_PAC_PACKING表提交成功！');
      end
      else
      begin
        Gio.AddShow('装箱单保存失败!'+error);
        ShowMsg(Handle, '装箱单保存失败!'+error,[]);
      end;
    except
      on E: Exception do
      begin
        Gio.AddShow('CT_PAC_PACKING表提交失败！'+e.Message);
        ShowMsg(Handle, '装箱单提交失败！'+e.Message,[]);
        Abort;
      end;
    end;
  finally
    Screen.Cursor := crDefault;
  end;
end;

function TPackingListFrm.CHK_Data: Boolean;
begin
  Result := True;
  if cdsEditDetail.IsEmpty then
  begin
    Result := False;
    ShowMsg(self.Handle,'装箱明细不能为空!    ',[]);
    Exit;
  end;
  if cdsDetail.IsEmpty then
  begin
    Result := False;
    ShowMsg(self.Handle,'装箱明细不能为空!    ',[]);
    Exit;
  end;
  if txt_CFBOXNUMBER.Text = '' then
  begin
    Result := False;
    txt_CFBOXNUMBER.SetFocus;
    ShowMsg(self.Handle,'箱号不能为空!    ',[]);
    Exit;
  end;
  if txt_CFBOXNUMBER.EditingValue < 0 then
  begin
    Result := False;
    txt_CFBOXNUMBER.SetFocus;
    ShowMsg(self.Handle,'箱号不能为负数!    ',[]);
    Exit;
  end;
  if txt_CFCapacity.Text = '' then
  begin
    Result := False;
    txt_CFCapacity.SetFocus;
    ShowMsg(self.Handle,'容量不能为空!    ',[]);
    Exit;
  end;
  if txt_CFCapacity.EditingValue < 0 then
  begin
    Result := False;
    txt_CFCapacity.SetFocus;
    ShowMsg(self.Handle,'容量不能为负数!    ',[]);
    Exit;
  end;
end;

procedure TPackingListFrm.EditDataToDetail;
var i:Integer;
begin
  if cdsEditDetail.IsEmpty then
  begin
    cdsDetail.EmptyDataSet;
  end;
  try
    cdsEditDetail.DisableControls;
    cdsDetail.First;
    while not cdsDetail.Eof do
    begin
      if not cdsEditDetail.Locate('FID',VarArrayOf([cdsDetail.FieldByName('FID').AsString]),[]) then
      begin
        cdsDetail.Delete;
      end
      else
      cdsDetail.Next;
    end;
    cdsEditDetail.First;
    while not cdsEditDetail.Eof do
    begin
      if cdsDetail.Locate('FID',VarArrayOf([cdsEditDetail.FieldByName('FID').AsString]),[]) then
      cdsDetail.Edit
      else
      cdsDetail.Append;
      for i := 0 to  cdsDetail.FieldCount -1 do
      begin
        cdsDetail.Fields[i].Value := cdsEditDetail.fieldbyname(cdsDetail.Fields[i].FieldName).Value;
      end;
      cdsDetail.Post;
      cdsEditDetail.Next;
    end;
  finally
    cdsEditDetail.EnableControls;
  end;
end;

procedure TPackingListFrm.btn_SaveClick(Sender: TObject);
begin
  inherited;
  if (PackingContext.IsBillOpen ) and (PackingContext.SrcBillIsAudit) then
  begin
    ShowMsg(self.Handle,'源单已审核不允许修改装箱单',[]);
    Abort;
  end;
  if cdsBoxList.IsEmpty then Exit;
  if cdsEditMaster.IsEmpty then Exit;
  if cdsEditMaster.FieldByName('CFSTATUS').AsInteger = 1 then
  begin
    ShowMsg(Self.Handle,'装箱单已经审核,不能修改!  ',[]);
    Exit;
  end;
  if ST_Save then
  begin
    ShowMsg(self.Handle,'装箱单保存成功!    ',[]);
  end;
end;

procedure TPackingListFrm.btnNewClick(Sender: TObject);
begin
  inherited;
  if (PackingContext.IsBillOpen ) and (PackingContext.SrcBillIsAudit) then
  begin
    ShowMsg(self.Handle,'源单已审核不允许修改装箱单',[]);
    Abort;
  end;
  OpenBill('');
end;

procedure TPackingListFrm.WideStringField39GetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  if Sender.AsString='' then
  begin
    Text := '未审核';
  end
  else
  case Sender.AsInteger of
  0 : Text := '未审核';
  1 : Text := '已审核';
  end;
end;

procedure TPackingListFrm.WideStringField23GetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  if Sender.AsString='' then
  begin
    Text := '未审核';
  end
  else
  case Sender.AsInteger of
  0 : Text := '未审核';
  1 : Text := '已审核';
  end;
end;

procedure TPackingListFrm.cdsEditDetailNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('FID').AsString        := Get_Guid;
  DataSet.FieldByName('Fparentid').AsString  := cdsEditMaster.fieldbyname('FID').AsString;
  DataSet.FieldByName('FSEQ').AsInteger      := DataSet.RecordCount+1;
  DataSet.FieldByName('CFRowType').AsInteger := 0;
  DataSet.FieldByName('CFDIFFQTY').AsInteger := 0;
end;

procedure TPackingListFrm.cdsEditMasterNewRecord(DataSet: TDataSet);
var sBillFlag,ErrMsg:string;
begin
  if FindRecord1(CliDM.cdsBillType,'FID',BillConst.BILLTYPE_PK,1) then
  begin
    sBillFlag :=  CliDM.cdsBillType.FieldByName('FBOSType').AsString ;
  end;
  DataSet.FieldByName('Fnumber').AsString    := CliDM.GetSCMBillNum(BillConst.BILLTYPE_PK,UserInfo.Branch_Flag,sBillFlag,true,ErrMsg);
  DataSet.FieldByName('FID').AsString            := Get_Guid;
  DataSet.FieldByName('fcreatorid').AsString     := UserInfo.LoginUser_FID;
  DataSet.FieldByName('fcreatetime').AsDateTime  := CliDM.Get_ServerTime;
  DataSet.FieldByName('fcontrolunitid').AsString := UserInfo.Controlunitid;
  DataSet.FieldByName('CFSTATUS').AsInteger      := 0;
  DataSet.FieldByName('ctName').AsString         := UserInfo.LoginUser_Name;
  DataSet.FieldByName('alName').AsString         := UserInfo.LoginUser_Name;
  DataSet.FieldByName('CFCAPACITY').AsInteger    := FCAPACITY;
  DataSet.FieldByName('CFBOXNUMBER').AsInteger   := GetBox;
  cdsEditMaster.FieldByName('FBIZDATE').AsDateTime := CliDM.Get_ServerTime;


  DataSet.FieldByName('btypeName').AsString      := PackingContext.FbtypeName;
  DataSet.FieldByName('CFSOURCENUMBER').AsString := PackingContext.CFSOURCENUMBER;
  DataSet.FieldByName('FSOURCEBILLID').AsString  := PackingContext.FSOURCEBILLID;
  DataSet.FieldByName('CFSOURCETYPE').AsString   := PackingContext.FBilltypeID;

  DataSet.FieldByName('CFWAREHOUSEID').AsString  := PackingContext.CFWAREHOUSEID;
  DataSet.FieldByName('FWAREHOUSEName').AsString := PackingContext.FWAREHOUSEName;
  DataSet.FieldByName('CFCUSTOMERID').AsString   := PackingContext.CFCUSTOMERID;
  DataSet.FieldByName('CustName').AsString       := PackingContext.CustName;
  DataSet.FieldByName('CFSUPPLIERID').AsString   := PackingContext.CFSUPPLIERID;
  DataSet.FieldByName('SUPPLIERNAME').AsString   := PackingContext.SUPPLIERNAME;
  DataSet.FieldByName('FBRANCHID').AsString      := UserInfo.Branch_ID;
  if self.PackingContext.IsBillOpen then
  DataSet.FieldByName('CFISBILLOPEN').AsInteger      := 1
  else
  DataSet.FieldByName('CFISBILLOPEN').AsInteger      := 0;
end;

function TPackingListFrm.GetSCMBillTypeName(FID: string): string;
var _SQL,ErrMsg:string;
    cds:TClientDataSet;
begin
  Result := '';
  try
    cds := TClientDataSet.Create(nil);
    _SQL := 'select fname_l2 from t_SCM_BillType where FID = '+Quotedstr(FID);
    if not CliDM.Get_OpenSQL(cds,_SQL,ErrMsg) then
    begin
      Gio.AddShow('取单据类型名称失败:'+ErrMSg);
      Exit;
    end;
    if not cds.IsEmpty then Result := cds.fieldbyname('fname_l2').AsString;
  finally
    cds.Free;
  end;
end;

function TPackingListFrm.GetBox: Integer;
var _SQL,ErrMsg:string;
    cds:TClientDataSet;
begin
  Result := 1;
  try
    cds := TClientDataSet.Create(nil);
    if  PackingContext.IsBillOpen then
    _SQL := 'select max(CFBOXNUMBER) as FNumber from CT_PAC_PACKING where nvl(FSOURCEBILLID,''#'') = '+Quotedstr(PackingContext.FSOURCEBILLID)
    else
    _SQL := 'select max(CFBOXNUMBER) as FNumber from CT_PAC_PACKING where nvl(FSOURCEBILLID,''#'') = ''#''';
    if not CliDM.Get_OpenSQL(cds,_SQL,ErrMsg) then
    begin
      Gio.AddShow('取箱号失败:'+ErrMSg);
      Exit;
    end;
    if not cds.IsEmpty then Result := cds.fieldbyname('FNumber').AsInteger+1;;
  finally
    cds.Free;
  end;
end;

procedure TPackingListFrm.cdsBoxListNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FID').Value := cdsEditMaster.fieldbyname('FID').Value;
  DataSet.FieldByName('FCREATORID').Value := cdsEditMaster.fieldbyname('FCREATORID').Value;
  DataSet.FieldByName('FCREATETIME').Value := cdsEditMaster.fieldbyname('FCREATETIME').Value;
  DataSet.FieldByName('FNUMBER').Value := cdsEditMaster.fieldbyname('FNUMBER').Value;
  DataSet.FieldByName('CFBOXNUMBER').Value := cdsEditMaster.fieldbyname('CFBOXNUMBER').Value;
  DataSet.FieldByName('FDESCRIPTION').Value := cdsEditMaster.fieldbyname('FDESCRIPTION').Value;
  DataSet.FieldByName('CFCAPACITY').Value := cdsEditMaster.fieldbyname('CFCAPACITY').Value;
  DataSet.FieldByName('CFSTATUS').Value := cdsEditMaster.fieldbyname('CFSTATUS').Value;
  DataSet.FieldByName('FWAREHOUSEName').Value := cdsEditMaster.fieldbyname('FWAREHOUSEName').Value;
  DataSet.FieldByName('ctName').Value := cdsEditMaster.fieldbyname('ctName').Value;
end;

procedure TPackingListFrm.btn_ExitClick(Sender: TObject);
begin
  inherited;
  Self.Close;
end;

procedure TPackingListFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if MessageBox(Handle, PChar('确认退出装箱单?'), 'I3提示', MB_YESNO) = IDNO then Abort;
  SetUserInipar;
end;

function TPackingListFrm.BarCodeInput(BarCode: String):Boolean;
var material_id,color_id,size_id,cup_id,CFAssistNum,cfAssistProperTyID,ErrMsg:string;
      inQty:Integer;
      bk:TBookmarkStr;
      b:Boolean;
      DiffQty,RowType,CAPACITY,InputTatolQty : Integer;
begin
  Result := False;
  if cdsEditMaster.IsEmpty then Exit;
  if cdsEditMaster.FieldByName('CFSTATUS').AsInteger = 1 then Exit;
  lb_BarCodeMsg.Caption:='';
  inQty:=StrToInt(txt_BarCodeRate.EditingValue);
  CAPACITY := StrToInt(txt_CFCapacity.text);
  InputTatolQty := 0;
  if cxGridEntry.DataController.Summary.FooterSummaryValues[1] <> null then
  InputTatolQty := cxGridEntry.DataController.Summary.FooterSummaryValues[1];
  if CliDM.GetValueFromBarCode(Trim(BarCode),material_id,color_id,size_id,cup_id,CFAssistNum,cfAssistProperTyID,ErrMsg) then
  begin
    try
      if CAPACITY > 0 then
      begin
        if InputTatolQty+ inQty >  CAPACITY then
        begin
          addLog('条码:'+BarCode+'超出容量,不能扫入...');
          lb_BarCodeMsg.Caption:='条码:'+BarCode+'超出容量,不能扫入...';
          txt_BarCodeInput.Clear;
          txt_BarCodeInput.SetFocus;
          playSoundFile(userinfo.ErrorFile);
          Exit;
        end;
      end;
      FindSrcBillData(material_id,color_id,size_id,cup_id,inQty,DiffQty,RowType);
      //可以不能扫入不在关联单据内的物料
      if not chk_InputNotExists.Checked then
      begin
        //RowType 字段 0正常,1超数 2不在源单内
        if RowType = 2 then
        begin
          addLog('条码:'+BarCode+'不在源单内...');
          lb_BarCodeMsg.Caption:='条码:'+BarCode+'不在源单内...';
          txt_BarCodeInput.Clear;
          txt_BarCodeInput.SetFocus;
          playSoundFile(userinfo.ErrorFile);
          Exit;
        end;
      end;
      //扫描时不允许超出源单数量
      if not chk_GreaterthanSrcQty.Checked then
      begin
        if RowType = 1 then
        begin
          addLog('条码:'+BarCode+'超出源单剩余装箱数...');
          lb_BarCodeMsg.Caption:='条码:'+BarCode+'超出源单剩余装箱数...';
          txt_BarCodeInput.Clear;
          txt_BarCodeInput.SetFocus;
          playSoundFile(userinfo.ErrorFile);
          Exit;
        end;
      end;
      cdsEditDetail.DisableControls;
      cdsEditDetail.First;
      b:=False;
      while not cdsEditDetail.Eof do
      begin
        if (cdsEditDetail.FieldByName('CFMATERIALID').AsString=material_id) and
           (cdsEditDetail.FieldByName('CFCOLORID').AsString=color_id) and
           (cdsEditDetail.FieldByName('CFSIZEID').AsString=size_id) and
           (cdsEditDetail.FieldByName('CFCUPID').AsString=cup_id)
        then
        begin
          b := True;
          Break;
        end;
        cdsEditDetail.Next;
      end;
      if b then
      begin
        cdsEditDetail.Edit;
        cdsEditDetail.FieldByName('CFQTY').AsInteger       := cdsEditDetail.FieldByName('CFQTY').AsInteger+inQty;
        cdsEditDetail.FieldByName('CFRowType').AsInteger   := RowType;
        cdsEditDetail.FieldByName('CFDIFFQTY').AsInteger   := DiffQty;
      end
      else
      begin
        cdsEditDetail.Append;
        cdsEditDetail.FieldByName('CFMATERIALID').AsString := material_id;
        cdsEditDetail.FieldByName('CFCOLORID').AsString    := color_id;
        cdsEditDetail.FieldByName('CFSIZEID').AsString     := size_id;
        cdsEditDetail.FieldByName('CFCUPID').AsString      := cup_id;
        cdsEditDetail.FieldByName('CFBARCODE').AsString    := BarCode;
        cdsEditDetail.FieldByName('CFQTY').AsInteger       := inQty;
        cdsEditDetail.FieldByName('CFRowType').AsInteger   := RowType;
        cdsEditDetail.FieldByName('CFDIFFQTY').AsInteger   := DiffQty;
      end;
      cdsEditDetail.Post;
      if cdsEditDetail.FieldByName('CFQTY').AsInteger <= 0 then
      cdsEditDetail.Delete;
      playSoundFile(userinfo.ErrorFile);
    finally
      cdsEditDetail.EnableControls;
    end;
    Result := True;
    txt_BarCodeInput.Clear;
    lb_BarCodeMsg.Caption := '扫描成功,请继续扫描...'   ;
    if chk_automaticRecovery.Checked then
    txt_BarCodeRate.Text := '1';
    playSoundFile(userinfo.AccFile);
    Application.ProcessMessages;
  end
  else
  begin
    addLog(errmsg+',错误条码:'+barCode);
    txt_BarCodeInput.Clear;
    lb_BarCodeMsg.Caption:=ErrMsg;
    playSoundFile(userinfo.ErrorFile);
  end;
end;
procedure TPackingListFrm.addLog(log: string);
begin
  m_Log.Lines.Add(FormatDateTime('yyyy-MM-dd hh:mm:ss',now)+':'+log);
  Application.ProcessMessages;
end;

procedure TPackingListFrm.cdsEditDetailBeforePost(DataSet: TDataSet);
var _SQL:string;
begin
  inherited;
  if cdsEditDetail.FieldByName('MaterialNumber').AsString = '' then
  begin
    //物料
    _SQL := 'select fnumber ,fname_l2 from t_bd_material where fid='+quotedstr(DataSet.fieldbyname('CFMATERIALID').AsString);
    with CliDM.Client_QuerySQL(_SQL) do
    begin
      if not IsEmpty then
      begin
        cdsEditDetail.FieldByName('MaterialNumber').AsString := fieldbyname('fnumber').AsString;
        cdsEditDetail.FieldByName('MaterialName').AsString   := fieldbyname('fname_l2').AsString
      end;
    end;
    //颜色
    _SQL := 'select fnumber ,fname_l2 from t_bd_asstattrvalue where fid='+quotedstr(DataSet.fieldbyname('CFCOLORID').AsString);
    with CliDM.Client_QuerySQL(_SQL) do
    begin
      if not IsEmpty then
      begin
        cdsEditDetail.FieldByName('COLORNUMBER').AsString := fieldbyname('fnumber').AsString;
        cdsEditDetail.FieldByName('COLORNAME').AsString   := fieldbyname('fname_l2').AsString
      end;
    end;
    //尺码
    _SQL := 'select fnumber ,fname_l2 from t_bd_asstattrvalue where fid='+quotedstr(DataSet.fieldbyname('CFSIZEID').AsString);
    with CliDM.Client_QuerySQL(_SQL) do
    begin
      if not IsEmpty then
      begin
        cdsEditDetail.FieldByName('SIZEName').AsString   := fieldbyname('fname_l2').AsString
      end;
    end;
    //内长
    if DataSet.fieldbyname('CFCUPID').AsString <> '' then
    begin
      _SQL := 'select fnumber ,fname_l2 from t_bd_asstattrvalue where fid='+quotedstr(DataSet.fieldbyname('CFCUPID').AsString);
      with CliDM.Client_QuerySQL(_SQL) do
      begin
        if not IsEmpty then
        begin
          cdsEditDetail.FieldByName('CUPNAME').AsString   := fieldbyname('fname_l2').AsString
        end;
      end;
    end;
  end;
end;

procedure TPackingListFrm.txt_BarCodeInputKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
  var  InputTxt:string;
begin
  inherited;
  if Key=13 then
  begin
    InputTxt := trim(txt_BarCodeInput.Text);
    if InputTxt <> '' then
    BarCodeInput(InputTxt);
  end;
end;

procedure TPackingListFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  //inherited;
end;

procedure TPackingListFrm.cdsEditMasterBeforePost(DataSet: TDataSet);
begin
  inherited;
  if DataSet.FindField('flastupdateuserid') <> nil then
  DataSet.FieldByName('flastupdateuserid').AsString   := UserInfo.LoginUser_FID;
  if DataSet.FindField('flastupdatetime') <> nil then
  DataSet.FieldByName('flastupdatetime').AsDateTime   := now;
end;

procedure TPackingListFrm.cxBillListFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
var mFID:string;
begin
  inherited;
  if not cdsBoxList.IsEmpty then
  begin
    mFID := cdsBoxList.fieldbyname('fid').AsString;
    OpenBill(mFID);
  end;
end;

procedure TPackingListFrm.BoxBarCodeInput(BarCode: String);
var _SQL,ErrMsg,material_id,color_id,size_id,cup_id:string;
    cds:TClientDataSet;
    i,inQty:Integer;
    fieldName:string;
    DiffQty,RowType,CAPACITY,InputTatolQty : Integer;
begin
  if cdsEditMaster.IsEmpty then Exit;
  if cdsEditMaster.FieldByName('CFSTATUS').AsInteger = 1 then Exit;
  lb_BoxCodeMsg.Caption:='';
  CAPACITY := txt_CFCapacity.EditingValue;
  try
    cdsEditDetail.DisableControls;
    cdsEditDetail.BeforePost := nil;
    cds := TClientDataSet.Create(nil);
    _SQL:=' select a.*,m.fnumber as MaterialNumber ,m.fname_l2 as MaterialName, '
        +' color.fnumber as colorNumber,color.fname_l2 as colorName ,'
        +' sizes.fname_l2 as SIZEName,cup.fname_l2 as cupName  '
        +' from CT_PAC_PACKINGENTRY a '
        +' left join t_bd_material m on m.fid=a.cfmaterialid  '
        +' left join t_bd_asstattrvalue color on color.Ftype=''COLOR'' and color.FID=a.cfcolorid  '
        +' left join t_bd_asstattrvalue sizes on sizes.Ftype=''SIZE'' and sizes.FID=a.cfsizeid '
        +' left join t_bd_asstattrvalue cup   on cup.Ftype=''CUP'' and cup.FID=a.cfcupid'
        +' left join CT_PAC_PACKING b on a.fparentid=b.fid'
        +' where b.fnumber=' +Quotedstr(BarCode);
    if not CliDM.Get_OpenSQL(cds,_SQL,ErrMsg) then
    begin
      addLog(ErrMsg);
      Exit;
    end;
    if not cds.IsEmpty then
    begin
      cdsEditDetail.EmptyDataSet;
      cds.First;
      while not cds.Eof do
      begin
        material_id := cds.fieldbyname('CFMATERIALID').AsString;
        color_id    := cds.fieldbyname('CFCOLORID').AsString;
        size_id     := cds.fieldbyname('CFSIZEID').AsString;
        cup_id      := cds.fieldbyname('CFCUPID').AsString;
        inQty       := cds.fieldbyname('CFQTY').AsInteger;
        FindSrcBillData(material_id,color_id,size_id,cup_id,inQty,DiffQty,RowType);
        //可以不能扫入不在关联单据内的物料
        if not chk_InputNotExists.Checked then
        begin
          //RowType 字段 0正常,1超数 2不在源单内
          if RowType = 2 then
          begin
            addLog('条码:'+BarCode+'不在源单内...');
            lb_BarCodeMsg.Caption:='条码:'+BarCode+'不在源单内...';
            txt_BarCodeInput.Clear;
            txt_BarCodeInput.SetFocus;
            playSoundFile(userinfo.ErrorFile);
            Exit;
          end;
        end;
        //扫描时不允许超出源单数量
        if not chk_GreaterthanSrcQty.Checked then
        begin
          if RowType = 1 then
          begin
            addLog('条码:'+BarCode+'超出源单剩余装箱数...');
            lb_BarCodeMsg.Caption:='条码:'+BarCode+'超出源单剩余装箱数...';
            txt_BarCodeInput.Clear;
            txt_BarCodeInput.SetFocus;
            playSoundFile(userinfo.ErrorFile);
            Exit;
          end;
        end;

        InputTatolQty := cxGridEntry.DataController.Summary.FooterSummaryValues[1];
        if CAPACITY > 0 then
        begin
          if InputTatolQty+ inQty >  CAPACITY then
          begin
            txt_BoxCodeInput.Clear;
            lb_BoxCodeMsg.Caption :='容量已满....';
            addLog( '容量已满....');
            playSoundFile(userinfo.ErrorFile);
            Application.ProcessMessages;
            Exit;
          end;
        end;
        cdsEditDetail.Append;
        for i := 0 to  cdsEditDetail.FieldCount -1 do
        begin
          if cdsEditDetail.Fields[i].FieldKind = fkData then
          begin
            fieldName := cdsEditDetail.Fields[i].FieldName;
            if (not SameText(fieldName,'FID')) and (not SameText(fieldName,'FPARENTID')) then
            cdsEditDetail.Fields[i].Value := cds.fieldbyname(fieldName).Value;
          end;
          //重设置字段值
          cdsEditDetail.FieldByName('CFQTY').AsInteger       := inQty;
          cdsEditDetail.FieldByName('CFRowType').AsInteger   := RowType;
          cdsEditDetail.FieldByName('CFDIFFQTY').AsInteger   := DiffQty;
        end;
        cdsEditDetail.Post;
        if cdsEditDetail.FieldByName('CFQTY').AsInteger <= 0 then
        cdsEditDetail.Delete;
        cds.Next;
      end;
      cdsEditMaster.Edit;
      cdsEditMaster.FieldByName('CFSOURCEBoxFID').AsString := cds.fieldbyname('FPARENTID').AsString;
      cdsEditMaster.Post;
      txt_BoxCodeInput.Clear;
      lb_BoxCodeMsg.Caption := '扫描成功,请继续扫描...'   ;
      playSoundFile(userinfo.AccFile);
      Application.ProcessMessages;
    end
    else
    begin
      txt_BoxCodeInput.Clear;
      lb_BoxCodeMsg.Caption := BarCode+'箱条码不存在!'   ;
      addLog( BarCode+'箱条码不存在!'   );
      playSoundFile(userinfo.ErrorFile);
      Application.ProcessMessages;
    end;
  finally
    cdsEditDetail.BeforePost := cdsEditDetailBeforePost;
    cds.Free;
    cdsEditDetail.EnableControls;
  end;
end;

procedure TPackingListFrm.txt_BoxCodeInputKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
  var  InputTxt:string;
begin
  inherited;
  if Key=13 then
  begin
    InputTxt := trim(txt_BoxCodeInput.Text);
    if InputTxt <> '' then
    BoxBarCodeInput(InputTxt);
  end;
end;

procedure TPackingListFrm.InputPageChange(Sender: TObject);
begin
  inherited;
  if InputPage.ActivePageIndex = 0 then
  txt_BarCodeInput.SetFocus
  else
  if InputPage.ActivePageIndex = 1 then
  txt_BoxCodeInput.SetFocus;
end;

procedure TPackingListFrm.txt_FWAREHOUSENameKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key <> #8 then  Key := #0
  else
  begin
    if cdsEditMaster.FieldByName('CFSTATUS').AsInteger = 0 then
    begin
      cdsEditMaster.Edit;
      cdsEditMaster.FieldByName('FWAREHOUSEName').AsString := '';
      cdsEditMaster.FieldByName('CFWAREHOUSEID').AsString := '';
      cdsEditMaster.Post;
    end;
  end;
end;

procedure TPackingListFrm.txt_CFWAREHOUSELctameKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key <> #8 then  Key := #0
  else
  begin
    if cdsEditMaster.FieldByName('CFSTATUS').AsInteger = 0 then
    begin
      cdsEditMaster.Edit;
      cdsEditMaster.FieldByName('CFWAREHOUSELOCATIO').AsString := '';
      cdsEditMaster.FieldByName('CFWAREHOUSELOCATIOName').AsString := '';
      cdsEditMaster.Post;
    end;
  end;
end;

procedure TPackingListFrm.txt_FWAREHOUSENamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  if cdsEditMaster.FieldByName('CFSTATUS').AsInteger = 1 then
  begin
    ShowMsg(Self.Handle,'装箱已审核,不允许修改!  ',[]);
    Exit;
  end;
  with Select_Warehouse('','') do
  begin
    if  not IsEmpty then
    begin
      cdsEditMaster.Edit;
      cdsEditMaster.FieldByName('FWAREHOUSEName').AsString := fieldbyname('fname_l2').AsString;
      cdsEditMaster.FieldByName('CFWAREHOUSEID').AsString  := fieldbyname('FID').AsString;;
      cdsEditMaster.Post;
    end;
  end;
end;

procedure TPackingListFrm.txt_CFWAREHOUSELctamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  if cdsEditMaster.FieldByName('CFSTATUS').AsInteger = 1 then
  begin
    ShowMsg(Self.Handle,'装箱已审核,不允许修改!  ',[]);
    Exit;
  end;
  if cdsEditMaster.FieldByName('CFWAREHOUSEID').AsString = '' then
  begin
    ShowMsg(Self.Handle,'请先选择仓库再选择库位',[]);
    Exit;
  end;
  with Select_BaseDataEx('库位','','select fid,fnumber,fname_l2 from t_db_location where fwarehouseid='+Quotedstr(cdsEditMaster.FieldByName('CFWAREHOUSEID').AsString)) do
  begin
    if  not IsEmpty then
    begin
      cdsEditMaster.Edit;
      cdsEditMaster.FieldByName('CFWAREHOUSELOCATIOName').AsString := fieldbyname('fname_l2').AsString;
      cdsEditMaster.FieldByName('CFWAREHOUSELOCATIO').AsString  := fieldbyname('FID').AsString;;
      cdsEditMaster.Post;
    end;
  end;
end;

function TPackingListFrm.AuditBox: Boolean;
var _cds: array[0..0] of TClientDataSet;
    error : string;
begin
  Result := False;
  if cdsBoxList.IsEmpty then Exit;
  if cdsEditMaster.IsEmpty then Exit;
  if cdsEditMaster.FieldByName('CFSTATUS').AsInteger = 1 then
  begin
    ShowMsg(Self.Handle,'装箱单已审核!  ',[]);
    Exit;
  end;
  AlterPackingData;
  try
    cdsEditMaster.BeforeEdit := nil;
    cdsEditMaster.Edit;
    cdsEditMaster.FieldByName('CFSTATUS').AsInteger := 1 ;
    cdsEditMaster.FieldByName('flastupdateuserid').AsString   := UserInfo.LoginUser_FID;
    cdsEditMaster.FieldByName('flastupdatetime').AsDateTime   := now;
    cdsEditMaster.Post;
    _cds[0] :=cdsEditMaster;
    Result  :=  ST_Save;
    if Result then
    begin
      cdsBoxList.Edit;
      cdsBoxList.FieldByName('CFSTATUS').AsInteger := 1 ;
      cdsBoxList.Post;
      GetcSrcBillData;  //刷新源单数据
    end;
    if chk_AutoNewBill.Checked then OpenBill(''); //自动新增一张单
  finally
    cdsEditMaster.BeforeEdit := cdsEditMasterBeforeEdit;
  end;
end;

procedure TPackingListFrm.cdsEditMasterBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if cdsEditMaster.FieldByName('CFSTATUS').AsInteger = 1 then
  begin
    ShowMsg(Self.Handle,'装箱单已审核,不允许修改!  ',[]);
    Abort;
  end;
end;

procedure TPackingListFrm.cdsEditDetailBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if cdsEditMaster.FieldByName('CFSTATUS').AsInteger = 1 then
  begin
    ShowMsg(Self.Handle,'装箱单已审核,不允许修改!  ',[]);
    Abort;
  end;
end;

function TPackingListFrm.UAuditBox: Boolean;
var _cds: array[0..0] of TClientDataSet;
    error : string;
begin
  Result := False;
  if cdsBoxList.IsEmpty then Exit;
  if cdsEditMaster.IsEmpty then Exit;
  if cdsEditMaster.FieldByName('CFSTATUS').AsInteger = 0 then
  begin
    ShowMsg(Self.Handle,'装箱单已经是新单状态!  ',[]);
    Exit;
  end;
  try
    cdsEditMaster.BeforeEdit := nil;
    cdsEditMaster.Edit;
    cdsEditMaster.FieldByName('CFSTATUS').AsInteger := 0 ;
    cdsEditMaster.FieldByName('flastupdateuserid').AsString   := UserInfo.LoginUser_FID;
    cdsEditMaster.FieldByName('flastupdatetime').AsDateTime   := now;
    cdsEditMaster.Post;
    _cds[0] :=cdsEditMaster;
    Result  :=  ST_Save;
    if Result then
    begin
      cdsBoxList.Edit;
      cdsBoxList.FieldByName('CFSTATUS').AsInteger := 0 ;
      cdsBoxList.Post;
    end;
  finally
    cdsEditMaster.BeforeEdit := cdsEditMasterBeforeEdit;
  end;
end;

procedure TPackingListFrm.AuditClick(Sender: TObject);
begin
  inherited;
  if (PackingContext.IsBillOpen ) and (PackingContext.SrcBillIsAudit) then
  begin
    ShowMsg(self.Handle,'源单已审核不允许修改装箱单',[]);
    Abort;
  end;
  AuditBox;
end;

procedure TPackingListFrm.btn_uAuditClick(Sender: TObject);
begin
  inherited;
  if (PackingContext.IsBillOpen ) and (PackingContext.SrcBillIsAudit) then
  begin
    ShowMsg(self.Handle,'源单已审核不允许修改装箱单',[]);
    Abort;
  end;
  UAuditBox;
end;

procedure TPackingListFrm.btn_SignClick(Sender: TObject);
var tmp:Integer;
begin
  inherited;
  tmp := StrToInt(txt_BarCodeRate.Text);
  txt_BarCodeRate.Text := IntToStr(-tmp);
end;

procedure TPackingListFrm.bt_CtrlBClick(Sender: TObject);
begin
  inherited;
  if InputPage.ActivePageIndex = 0 then
  begin
    txt_BarCodeInput.Clear;
    txt_BarCodeInput.SetFocus;
  end
  else
  if InputPage.ActivePageIndex = 1 then
  begin
    txt_BoxCodeInput.Clear;
    txt_BoxCodeInput.SetFocus;
  end
end;

procedure TPackingListFrm.bt_CtrlJClick(Sender: TObject);
begin
  inherited;
  if InputPage.ActivePageIndex = 0 then
  begin
    txt_BarCodeRate.SetFocus;
  end;
end;

function TPackingListFrm.DelBill: Boolean;
var FID,BizDateStr,ErrMsg:string;
begin
  Result := False;
  if cdsBoxList.IsEmpty then Exit;
  if cdsEditMaster.IsEmpty then Exit;
  if cdsEditMaster.FieldByName('CFSTATUS').AsInteger = 1 then
  begin
    ShowMsg(Self.Handle,'装箱单已经审核,不能删除!  ',[]);
    Exit;
  end;
  FID := cdsEditMaster.FieldByName('FID').AsString;
  BizDateStr := FormatDateTime('yyyy-mm-dd', cdsEditMaster.FieldByName('FBIZDATE').AsDateTime);
  if CliDM.Pub_BillDel(UserInfo.LoginUser_FID,'PK',FID,BizDateStr,ErrMsg) then
  begin
    Result := True;
    Gio.AddShow('用户：'+UserInfo.LoginUser+'装箱单据['+FID+']删除成功');
    cdsBoxList.Delete;
    if cdsBoxList.IsEmpty then
    begin
      cdsEditMaster.Close;
      cdsEditDetail.Close;
    end;
    GetcSrcBillData;
  end
  else
  begin
    ShowMsg(Handle, '单据['+FID+']删除失败：'+ErrMsg,[]);
    Abort;
  end;
end;

procedure TPackingListFrm.btn_DelBillClick(Sender: TObject);
begin
  inherited;
  if (PackingContext.IsBillOpen ) and (PackingContext.SrcBillIsAudit) then
  begin
    ShowMsg(self.Handle,'源单已审核不允许修改装箱单',[]);
    Abort;
  end;
  if MessageBox(Handle, PChar('确认删除装箱单?'), 'I3提示', MB_YESNO) = IDNO then Abort;
  DelBill;
end;

procedure TPackingListFrm.bt_sendMsgClick(Sender: TObject);
begin
  inherited;
  SendMessage('','','','','');
end;

procedure TPackingListFrm.btn_MaterialInfoClick(Sender: TObject);
begin
  if cdsEditDetail.IsEmpty then
  begin
    ShowMsg(Handle, '没有要查询的商品！',[]);
    Abort;
  end;
  getMaterialinfo(cdsEditDetail.FieldByName('CFMATERIALID').AsString);
end;
procedure TPackingListFrm.GetTableName;
var _SQL,ErrMsg:string;
    cds:TClientDataSet;
begin
  try
    cds := TClientDataSet.Create(nil);
    _SQL := 'select a.fheadtable,a.fentrytable from t_scm_billtype a where FID = '+Quotedstr(PackingContext.FBilltypeID);
    if not CliDM.Get_OpenSQL(cds,_SQL,ErrMsg) then
    begin
      Gio.AddShow('取业务表名称失败:'+ErrMSg);
      Exit;
    end;
    if not cds.IsEmpty then
    begin
      PackingContext.SrcMaterTable := cds.fieldbyname('fheadtable').AsString;
      PackingContext.SrcEntryTable := cds.fieldbyname('fentrytable').AsString;
    end;
  finally
    cds.Free;
  end;
end;

procedure TPackingListFrm.GetcSrcBillData;
var _SQL,ErrMsg:string;
    cds:TClientDataSet;
    i:Integer;
begin
  if not PackingContext.IsBillOpen then Exit;
  try
    Screen.Cursor := crHourGlass;
    cdsSrcBillData.DisableControls;
    cds := TClientDataSet.Create(nil);
    _SQL :='select m.fnumber as MaterialNumber,m.fname_l2 as MaterialName,color.fnumber as ColorNumber, '
          +' color.fname_l2 as ColorName,sizes.fname_l2 as SizeName,cup.fname_l2 as CupName, '
          +' b.fmaterialid as CFMATERIALID,b.cfcolorid,b.cfsizesid,b.cfcupid,abs(b.fqty) as CFQTY,packing.FQTY as CFScanFQTY   '
          +' from  '
          + PackingContext.SrcMaterTable+' a left join '+PackingContext.SrcEntryTable+' b  '
          +' on a.fid = b.fparentid    '
          +' left join  '
          +' (select CFMATERIALID,CFCOLORID,CFSIZEID,CFCUPID,sum(CFQTY) as FQTY '
          +' from  CT_PAC_PACKING pk left join CT_PAC_PACKINGEntry pkEntry  '
          +' on pk.fid = pkEntry.Fparentid    '
          +' where pk.fsourcebillid = '+Quotedstr(PackingContext.FSOURCEBILLID)
          +' group by CFMATERIALID,CFCOLORID,CFSIZEID,CFCUPID '
          +' ) Packing  '
          +' on b.fmaterialid = Packing.CFMATERIALID '
          +' and b.cfcolorid  = Packing.CFCOLORID '
          +' and b.cfsizesid  = Packing.CFSIZEID'
          +' and nvl(b.cfcupid,''#'')= nvl(Packing.CFCUPID,''#'')'
          +' left join t_bd_material m on m.fid=b.fmaterialid '
          +' left join t_bd_asstattrvalue color on color.Ftype=''COLOR'' and color.FID=b.cfcolorid  '
          +' left join t_bd_asstattrvalue sizes on sizes.Ftype=''SIZE'' and sizes.FID=b.cfsizesid'
          +' left join t_bd_asstattrvalue cup   on cup.Ftype=''CUP'' and cup.FID=b.cfcupid'
          +' where a.fid = '+Quotedstr(PackingContext.FSOURCEBILLID)
          +' order by b.fmaterialid ,b.cfcolorid,b.cfsizesid,b.cfcupid';
    if not CliDM.Get_OpenSQL(cds,_SQL,ErrMsg) then
    begin
      Gio.AddShow('获取源单信息失败:'+ErrMsg);
      ShowMsg(Handle, '获取源单信息失败:'+ErrMsg,[]);
      Exit;
    end;
    cdsSrcBillData.EmptyDataSet;
    if not cds.IsEmpty then
    begin
      cds.First;
      while not cds.Eof do
      begin
        cdsSrcBillData.Append;
        for i := 0 to cdsSrcBillData.FieldCount - 1 do
        begin
          if (SameText(cdsSrcBillData.Fields[i].FieldName,'CFScanFQTY')) or
             (SameText(cdsSrcBillData.Fields[i].FieldName,'CFQTY'))
          then
          begin
            cdsSrcBillData.Fields[i].AsInteger := cds.fieldbyname(cdsSrcBillData.Fields[i].FieldName).AsInteger;
          end
          else
          cdsSrcBillData.Fields[i].Value := cds.fieldbyname(cdsSrcBillData.Fields[i].FieldName).Value;
        end;
        cdsSrcBillData.Post;
        cds.Next;
      end;
    end;
  finally
    cds.Free;
    cdsSrcBillData.EnableControls;
    Screen.Cursor := crDefault;
  end;
end;

procedure TPackingListFrm.btn_RefDataClick(Sender: TObject);
var Rst : Boolean;
begin
  inherited;
  if cdsBoxList.IsEmpty then Exit;
  if cdsEditMaster.IsEmpty then Exit;
  Rst := True;
  if cdsEditMaster.FieldByName('CFSTATUS').AsInteger = 0 then
  begin
    Rst := ST_Save;
  end;
  if Rst then
  begin
    GetcSrcBillData;
  end;
end;

procedure TPackingListFrm.FindSrcBillData(materFID, ColorFID, sizeFID,
  cupFID: string; InputQty: Integer; var DiffQty, RowType: Integer);
var IsExists:Boolean;
    ScanFQTY,SrcQty:Integer;
begin
  //CFRowType 字段 0正常,1超数 2不在源单内
  if not PackingContext.IsBillOpen then
  begin
    DiffQty := 0;
    RowType := 0;
    Exit;
  end;
  try
    Screen.Cursor := crHourGlass;
    cdsSrcBillData.DisableControls;
    cdsSrcBillData.First;
    IsExists := False;
    RowType := 0;
    DiffQty := 0;
    while not cdsSrcBillData.Eof do
    begin
      if (cdsSrcBillData.FieldByName('CFMATERIALID').AsString=materFID) and
         (cdsSrcBillData.FieldByName('CFCOLORID').AsString=ColorFID) and
         (cdsSrcBillData.FieldByName('CFSIZESID').AsString=sizeFID) and
         (cdsSrcBillData.FieldByName('CFCUPID').AsString=cupFID)
      then
      begin
        IsExists := True;
        Break;
      end;
      cdsSrcBillData.Next;
    end;
    if IsExists then
    begin
      ScanFQTY := cdsSrcBillData.FieldByName('CFScanFQTY').AsInteger;
      SrcQty   := cdsSrcBillData.FieldByName('CFQTY').AsInteger;
      if (ScanFQTY+InputQty)> SrcQty then RowType := 1;   //超数
      DiffQty := (ScanFQTY+InputQty) -SrcQty;             //超出数
      if  DiffQty < 0 then DiffQty := 0;
      //扫描允许超出源单数量 或 小于源单数时,更新源单数
      if (chk_GreaterthanSrcQty.Checked) or ((ScanFQTY+InputQty) <=SrcQty) then
      begin
        cdsSrcBillData.Edit;
        cdsSrcBillData.FieldByName('CFScanFQTY').AsInteger := ScanFQTY+InputQty;
        cdsSrcBillData.Post;
      end;
    end
    else
    begin
      DiffQty := 0;
      RowType := 2;       //不在源单内
    end;
  finally
    cdsSrcBillData.EnableControls;
    Screen.Cursor := crDefault;
  end;
end;

procedure TPackingListFrm.cxGridEntryCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var CFRowType:string;
    ARec: TRect;
begin
  inherited;
  CFRowType := Trim(AViewInfo.GridRecord.DisplayTexts[cxGridEntryRowType.Index]);
  if  Trim(CFRowType) = '' then CFRowType := '0';
  {列的颜色交替
    if AViewInfo.Item.Index mod 2 = 0 then
      ACanvas.Canvas.brush.color := clInfoBk
    else
    ACanvas.Canvas.brush.color := clInactiveCaptionText;
  }
  if (UpperCase(CFRowType) = '1' )then
  begin
    ACanvas.Canvas.brush.color := clRed;       //整行变色：ACanvas.Canvas.brush.color:=clred;
  end
  else
  if (UpperCase(CFRowType) = '2' )then
  begin
    ACanvas.Canvas.brush.color := clLime;
  end;
  ACanvas.Canvas.FillRect(ARec);
end;

procedure TPackingListFrm.cdsEditDetailCalcFields(DataSet: TDataSet);
begin
  inherited;
  case DataSet.FieldByName('CFRowType').AsInteger of
  0: cdsEditDetailFRowState.AsString := '正常';
  1: cdsEditDetailFRowState.AsString := '超数';
  2: cdsEditDetailFRowState.AsString := '不在源单内';
  end;
end;

procedure TPackingListFrm.AlterPackingData;
begin
  try
    cdsEditDetail.DisableControls;
    cdsEditDetail.First;
    while not cdsEditDetail.Eof do
    begin
      if (cdsEditDetail.FieldByName('CFRowType').AsInteger = 1) then //超数
      begin
        cdsEditDetail.Edit;
        cdsEditDetail.FieldByName('CFQTY').AsInteger := cdsEditDetail.FieldByName('CFQTY').AsInteger-cdsEditDetail.FieldByName('CFDIFFQTY').AsInteger;
        cdsEditDetail.FieldByName('CFRowType').AsInteger := 0;
        cdsEditDetail.FieldByName('CFDIFFQTY').AsInteger := 0;
        cdsEditDetail.Post;
      end;
      if (cdsEditDetail.FieldByName('CFQTY').AsInteger <= 0) or (cdsEditDetail.FieldByName('CFRowType').AsInteger = 2) then
      cdsEditDetail.Delete
      else
      cdsEditDetail.Next;
    end;
  finally
    cdsEditDetail.EnableControls;
  end;
end;

procedure TPackingListFrm.cxGridSrcInfoCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var FQty,CFScanFQTY:string;
    ARec: TRect;
    Qty,ScanQTY:Integer;
begin
  inherited;
  FQty := Trim(AViewInfo.GridRecord.DisplayTexts[cxGridSrcInfoCFQTY.Index]);
  CFScanFQTY := Trim(AViewInfo.GridRecord.DisplayTexts[cxGridSrcInfoCFScanFQTY.Index]);
  if  Trim(FQty) = '' then FQty := '0';
  if  Trim(CFScanFQTY) = '' then CFScanFQTY := '0';
  Qty := StrToInt(FQty);
  ScanQTY := StrToInt(CFScanFQTY);
  {列的颜色交替
    if AViewInfo.Item.Index mod 2 = 0 then
      ACanvas.Canvas.brush.color := clInfoBk
    else
    ACanvas.Canvas.brush.color := clInactiveCaptionText;
  }
  if (ScanQTY = Qty )then
  begin
    ACanvas.Canvas.brush.color := $00FCF2E9;       //整行变色：ACanvas.Canvas.brush.color:=clred;
     ACanvas.Canvas.Font.Color := clScrollBar;
  end
  else
  if (ScanQTY >= Qty)then
  begin
    ACanvas.Canvas.brush.color := clRed;
  end
  else
  if (ScanQTY < Qty)then
  begin
    ACanvas.Canvas.brush.color := clSkyBlue;
  end;
  ACanvas.Canvas.FillRect(ARec);
end;

procedure TPackingListFrm.AllTObillEntry;
var i,Mqty:Integer;
    FieldName:string;
begin
  if not Self.PackingContext.IsBillOpen then Exit;
  if cdsBoxList.IsEmpty then Exit;
  if cdsEditMaster.IsEmpty then Exit;
  if cdsSrcBillData.IsEmpty then Exit;
  if cdsEditMaster.FieldByName('CFSTATUS').AsInteger = 1 then
  begin
    ShowMsg(Self.Handle,'装箱单已经审核,不能修改!  ',[]);
    Exit;
  end;
  try
    cdsEditDetail.DisableControls;
    cdsSrcBillData.DisableControls;
    cdsEditDetail.EmptyDataSet;
    cdsSrcBillData.First;
    while not cdsSrcBillData.Eof do
    begin
      Mqty := cdsSrcBillData.FieldByName('CFQTY').AsInteger - cdsSrcBillData.FieldByName('CFScanFQTY').AsInteger;
      if  Mqty > 0 then
      begin
        cdsEditDetail.Append;
        for i := 0 to cdsSrcBillData.FieldCount -1 do
        begin
          FieldName :=  cdsSrcBillData.Fields[i].FieldName;
          if cdsEditDetail.FindField(FieldName) <> nil then
          begin
            cdsEditDetail.FieldByName(FieldName).Value := cdsSrcBillData.Fields[i].Value;
          end;
        end;
        //重设置字段值
        cdsEditDetail.FieldByName('CFQTY').AsInteger       := Mqty;
        cdsEditDetail.FieldByName('CFRowType').AsInteger   := 0;
        cdsEditDetail.FieldByName('CFDIFFQTY').AsInteger   := 0;
        cdsEditDetail.FieldByName('CFSIZEID').Value        := cdsSrcBillData.FieldByName('CFSIZESID').Value;
        cdsEditDetail.Post;
      end;
      cdsSrcBillData.Next;
    end;
    if ST_Save then GetcSrcBillData;
  finally
    cdsEditDetail.EnableControls;
    cdsSrcBillData.EnableControls;
  end;
end;

procedure TPackingListFrm.btn_AllAddBoxClick(Sender: TObject);
begin
  inherited;
  AllTObillEntry;
end;

procedure TPackingListFrm.GetUserIniPar;
var Path:string;
    ini:TIniFile;
begin
  Path := ExtractFilePath(Application.ExeName)+Userinfo.LoginUser+'\PackingList.ini' ;
  try
    ini := TIniFile.Create(Path);
    chk_InputNotExists.Checked := ini.ReadBool('装箱单','InputNotExists',True);
    chk_GreaterthanSrcQty.Checked := ini.ReadBool('装箱单','GreaterthanSrcQty',True);
    chk_automaticRecovery.Checked := ini.ReadBool('装箱单','automaticRecovery',True);
    chk_AutoNewBill.Checked := ini.ReadBool('装箱单','AutoNewBill',False);
  finally
    ini.Free;
  end;
end;

procedure TPackingListFrm.SetUserInipar;
var Path:string;
    ini:TIniFile;
begin
  Path := ExtractFilePath(Application.ExeName)+Userinfo.LoginUser+'\PackingList.ini' ;
  try
    ini := TIniFile.Create(Path);
    ini.WriteBool('装箱单','InputNotExists',chk_InputNotExists.Checked);
    ini.WriteBool('装箱单','GreaterthanSrcQty',chk_GreaterthanSrcQty.Checked);
    ini.WriteBool('装箱单','automaticRecovery',chk_automaticRecovery.Checked);
    ini.WriteBool('装箱单','AutoNewBill',chk_AutoNewBill.Checked);
  finally
    ini.Free;
  end;
end;

procedure TPackingListFrm.btn_QueryClick(Sender: TObject);
var whereStr,mFID:string;
   _SQL,ErrMsg:string;
begin
  inherited;
  if GetPackingQuerySQL(whereStr) then
  begin
    try
      PackingContext.IsTop100 := False;
      cxBillList.OnFocusedRecordChanged := nil;
      _SQL :=' select a.fid,a.cfstatus,a.fcreatorid,a.fcreatetime ,a.CFBOXNUMBER, '
            +' a.fnumber,a.CFCAPACITY,a.FDESCRIPTION,  '
            +' w.fname_l2 as FWAREHOUSEName,  '
            +' ctuser.fname_l2 as ctName ,a.CFEntrySumQty'
            +' from CT_PAC_PACKING a  '
            +' left join t_db_warehouse w on a.cfwarehouseid=w.fid '
            +' left join t_pm_user ctuser on ctuser.fid=a.fcreatorid '
            +' where 1=1 ';
      _SQL := _SQL+' and a.CFISBILLOPEN=0 and a.FBranchID='+Quotedstr(UserInfo.Branch_ID);
      _SQL := _SQL+' '+whereStr;
      _SQL := _SQL +' order by fcreatetime';
      if not CliDM.Get_OpenSQL(cdsBoxList,_SQL,ErrMsg) then
      begin
        ShowMsg(self.Handle,'打开装箱单出错:'+ErrMSg+':'+_SQL,[]);
        Gio.AddShow('打开装箱单出错:'+ErrMSg+':'+_SQL);
      end;
      if not cdsBoxList.IsEmpty then
      begin
        mFID := cdsBoxList.fieldbyname('fid').AsString;
        OpenBill(mFID);
      end;
    finally
      cxBillList.OnFocusedRecordChanged := cxBillListFocusedRecordChanged;
    end;
  end;
end;

procedure TPackingListFrm.btn_ReportClick(Sender: TObject);
begin
  inherited;
  OpenPackingListReport(self.PackingContext);
end;

procedure TPackingListFrm.btn_CancelPackingListClick(Sender: TObject);
var mFID:string;
begin
  inherited;
  if cdsBoxList.IsEmpty then Exit;
  if CallBatchCancelPacking(self.PackingContext.FSOURCEBILLID) then
  begin
    OpenBoxList;
    if not cdsBoxList.IsEmpty then
    begin
      mFID := cdsBoxList.fieldbyname('fid').AsString;
      OpenBill(mFID);
    end;
    GetcSrcBillData;
  end;
end;

procedure TPackingListFrm.btOKClick(Sender: TObject);
begin
  inherited;
  if opendg.Execute then
  ed_file.Text:=opendg.FileName;
end;

procedure TPackingListFrm.btn_ImportClick(Sender: TObject);
var FileList,rowlist:TStringList;
  sp_str,barcode:string;
  impCount,barCount,InQty,i,BarCodeIndex,AmountIndex:Integer;
  sp:Char;
begin
  if not  FileExists(Trim(ed_file.Text)) then
  begin
    ShowMessage('文件不存在!');
    Abort;
  end;
  if Pos('.txt',Trim(ed_file.Text))=0 then
  begin
    ShowMessage('不是文本文件,不能导入!');
    Abort;
  end;
  if Trim(txt_sp.Text)='' then
  begin
    ShowMessage('分隔符1不能为空!');
    txt_sp.SetFocus;
    Abort;
  end;
  if Length(Trim(txt_sp.Text))>1 then
  begin
    ShowMessage('只支持一位分隔符,请重新设置分隔符!');
    txt_sp.SetFocus;
    Abort;
  end;
  if Application.MessageBox('确认开始导入条码文件?(Y/N)','I3提示',MB_YESNO)=id_no then Abort;
  try
    FileList:=TStringList.Create;
    rowlist:=TStringList.Create;
    Screen.Cursor:=crHourGlass;
    cdsEditDetail.DisableControls;
    btOK.Enabled:=False;
    Btn_txtFileImport.Enabled:=False;
    FileList.LoadFromFile(Trim(ed_file.Text));
    if FileList.Count=0 then
    begin
      ShowMessage('文件中没有可以导入的数据!');
      Abort;
    end;
    p_bar.Position:=0;
    p_bar.Properties.Min:=0;
    p_bar.Properties.Max:=FileList.Count;
    Application.ProcessMessages;
    sp_str:= Trim(txt_sp.text);
    sp:=sp_str[1];
    InQty:=0;
    rowlist.Delimiter:=sp;
    rowlist.DelimitedText:=FileList[0];

    //默认第一列为条码，第二列为数量
    BarCodeIndex := 0;
    AmountIndex  := 1;
    for  barCount:=1 to FileList.Count-1 do
    begin
      if Trim(FileList[barCount])='' then
      begin
        p_bar.Position:=barCount+1;
        Application.ProcessMessages;
        Addlog('第'+inttostr(barCount)+'行条码【'+barcode+'】已跳过,原因:空行!');
        Continue ;
      end;
      rowlist.Delimiter:=sp;
      rowlist.DelimitedText:=FileList[barCount];

      barcode:=rowlist[BarCodeIndex];
      if (Trim(barcode)='') or (Trim(rowlist[AmountIndex])='') then   //如果条码为空或者数量为空 跳过空行
      begin
        p_bar.Position:=barCount+1;
        Application.ProcessMessages;
        Addlog('第'+inttostr(barCount)+'行条码【'+barcode+'】已跳过,原因:条码为空或者数量为空!');
        Continue;
      end;
      inQty:=StrToInt(rowlist[AmountIndex]);  //AmountIndex 数量对应列位置
      txt_BarCodeRate.Text := IntToStr(inQty);
      if not BarCodeInput(Trim(barcode)) then
      begin
        Addlog('第'+inttostr(barCount)+'行条码【'+barcode+'】扫描失败...');
      end
      else
        Addlog('第'+inttostr(barCount)+'行条码【'+barcode+'】扫描成功...');
      p_bar.Position:=barCount+1;
      Application.ProcessMessages;
    end;
  finally
    FileList.Free;
    rowlist.Free;
    cdsEditDetail.EnableControls;
    Screen.Cursor:=crDefault;
    btOK.Enabled:=true;
    btn_Import.Enabled:=true;
  end;
end;

procedure TPackingListFrm.btn_DelAllPackingListClick(Sender: TObject);
var _SQL,ErrMsg,mFID:string;
begin
  inherited;
  if Application.MessageBox('确认删除所有装箱单(警告：不区分单据类型)(Y/N)','I3提示',MB_YESNO)=id_no then Abort;
  try
    if not  CliDM.ConnectSckCon(ErrMsg)    then Exit;
    _SQL := ' delete from CT_PAC_PACKINGENTRY a where exists (select 1 from CT_PAC_PACKING b '
          + ' where a.fparentid=b.fid and b.cfisbillopen=1  and b.fsourcebillid='+Quotedstr(PackingContext.FSOURCEBILLID)+')' ;
    if not CliDM.Get_ExecSQL(_SQL,ErrMsg,False) then
    begin
      Gio.AddShow('删除分录失败:'+ErrMsg+':'+_SQL);
      ShowMsg(self.Handle,'删除分录失败:'+ErrMsg+':'+_SQL,[]);
      Exit;
    end;
    _SQL :=' delete from CT_PAC_PACKING a where a.cfisbillopen=1 and  a.fsourcebillid='+Quotedstr(PackingContext.FSOURCEBILLID);
    if not CliDM.Get_ExecSQL(_SQL,ErrMsg,False) then
    begin
      Gio.AddShow('删除表头失败:'+ErrMsg+':'+_SQL);
      ShowMsg(self.Handle,'删除表头失败:'+ErrMsg+':'+_SQL,[]);
      Exit;
    end;
    OpenBoxList;
    if not cdsBoxList.IsEmpty then
    begin
      mFID := cdsBoxList.fieldbyname('fid').AsString;
      OpenBill(mFID);
    end;
    GetcSrcBillData;
    ShowMsg(Self.Handle,'删除所有装箱单成功!    ',[]);
  finally
    CliDM.CloseSckCon;
  end;
end;

procedure TPackingListFrm.btn_PrintSelectClick(Sender: TObject);
var FBillFID,MaterialFID:TStringList;
begin
  inherited;
  if cdsBoxList.IsEmpty then Exit;
  try
    FBillFID   := TStringList.Create;
    MaterialFID:= TStringList.Create;
    FBillFID.Add(cdsBoxList.fieldbyname('FID').AsString);
    MaterialFID.Add('');
    I3_SCM_Print(BillConst.BILLTYPE_PK,FBillFID,MaterialFID);
  finally
    FBillFID.Free;
    MaterialFID.Free;
  end;
end;

procedure TPackingListFrm.btn_PrintAllClick(Sender: TObject);
var FBillFID,MaterialFID:TStringList;
    bk:string;
begin
  inherited;
  if cdsBoxList.IsEmpty then Exit;
  try
    FBillFID   := TStringList.Create;
    MaterialFID:= TStringList.Create;
    cxBillList.OnFocusedRecordChanged := nil;
    cdsBoxList.DisableControls;
    bk := cdsBoxList.Bookmark;
    cdsBoxList.First;
    while not cdsBoxList.Eof do
    begin
      FBillFID.Add(cdsBoxList.fieldbyname('FID').AsString);
      MaterialFID.Add('');
      cdsBoxList.Next;
    end;
    I3_SCM_Print(BillConst.BILLTYPE_PK,FBillFID,MaterialFID);
  finally
    FBillFID.Free;
    MaterialFID.Free;
    cdsBoxList.Bookmark := bk;
    cdsBoxList.EnableControls;
    cxBillList.OnFocusedRecordChanged := cxBillListFocusedRecordChanged;
  end;
end;

end.                                                                            .
