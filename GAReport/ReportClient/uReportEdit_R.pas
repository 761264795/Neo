unit uReportEdit_R;

interface

uses
  Windows, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxBar,
  ComCtrls, ExtCtrls, DB, ADODB, cxCheckBox, cxDBEdit,
  StdCtrls, cxTextEdit, 
  cxDropDownEdit, cxGridCustomTableView,
  cxGridDBTableView, cxStyles, cxGraphics,
  cxGridLevel, 
  cxGrid, Buttons, Menus, Series,
  TeEngine, TeeProcs, Chart, DbChart, DBClient,
  dxStatusBar, 
  IniFiles, uSQL_R, 
  
  
  
  cxGridCustomView, 
  
  cxEdit, 
  ImgList, cxClasses, cxGridTableView, cxControls,
  cxMemo, cxContainer, cxMaskEdit, 
  
  
  cxTL, cxInplaceContainer, cxDBTL,
  cxTLData, cxCustomData, cxTLdxBarBuiltInMenu, cxFilter, cxData,
  cxDataStorage, cxDBData, cxButtonEdit, jpeg, dxGDIPlusClasses,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinsdxStatusBarPainter, dxSkinscxPCPainter,
  dxSkinsdxBarPainter;

type
  TReportEditFrm = class(TForm)
    dxbrmngr1: TdxBarManager;
    dxbrlrgbtnNewBill: TdxBarLargeButton;
    dxbrlrgbtnSaveBill: TdxBarLargeButton;
    FindBillList: TdxBarLargeButton;
    dxEdit: TdxBarLargeButton;
    dxbrlrgbtnFirstBill: TdxBarLargeButton;
    dxbrlrgbtnQBill: TdxBarLargeButton;
    dxbrlrgbtnNextBill: TdxBarLargeButton;
    dxbrlrgbtnBill: TdxBarLargeButton;
    dxbrlrgbtnEduce: TdxBarLargeButton;
    dxbrlrgbtnprint: TdxBarLargeButton;
    dxbrlrgbtnPrintSet: TdxBarLargeButton;
    dxbrlrgbtnExitEdit: TdxBarLargeButton;
    dxbrlrgbtn1: TdxBarLargeButton;
    dxbrlrgbtnpause: TdxBarLargeButton;
    datafield: TdxBarLargeButton;
    exportExcel: TdxBarLargeButton;
    ExportTEXT: TdxBarLargeButton;
    Printprevi: TdxBarLargeButton;
    print: TdxBarLargeButton;
    ReportSet: TdxBarLargeButton;
    FormatSet: TdxBarLargeButton;
    Blbaudit: TdxBarLargeButton;
    BlbUaudit: TdxBarLargeButton;
    DelBill: TdxBarLargeButton;
    dxbrpmn1: TdxBarPopupMenu;
    ilimage: TImageList;
    dxbrpmn2: TdxBarPopupMenu;
    DxBar5: TdxBarPopupMenu;
    dxBar3: TdxBarPopupMenu;
    dxBar4: TdxBarPopupMenu;
    ClientPl: TPanel;
    Splitter1: TSplitter;
    TreeImg: TImageList;
    Image2: TImage;
    TopPl: TPanel;
    BtPl: TPanel;
    Splitter2: TSplitter;
    Splitter3: TSplitter;
    ClPl: TPanel;
    FieldPg: TPageControl;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    reportTypeCb: TcxDBComboBox;
    Label6: TLabel;
    Label7: TLabel;
    SQLPg: TPageControl;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    BaseSQlMm: TcxDBMemo;
    Panel2: TPanel;
    Panel4: TPanel;
    Label2: TLabel;
    GroupSqlMm: TcxDBMemo;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    DsReport: TDataSource;
    DsFieldSet: TDataSource;
    Image1: TImage;
    Image3: TImage;
    is_Where: TcxDBCheckBox;
    dsFindField: TDataSource;
    FieldGrid: TcxGrid;
    FieldGridTV: TcxGridDBTableView;
    FieldGridLevel: TcxGridLevel;
    FindGrid: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    Panel10: TPanel;
    InsertRow: TSpeedButton;
    DelRow: TSpeedButton;
    DelAll: TSpeedButton;
    SbUp: TSpeedButton;
    SbDown: TSpeedButton;
    sbLoadfield: TSpeedButton;
    Label8: TLabel;
    ProcText: TcxDBMaskEdit;
    proc_isPara: TcxDBCheckBox;
    DecMm: TcxDBMemo;
    is_BasePara: TcxDBCheckBox;
    Lbreport_id: TLabel;
    report_Name: TLabel;
    FieldPm: TPopupMenu;
    NewRowPm: TMenuItem;
    DelRowPm: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    LoadFieldPm: TMenuItem;
    upMovePm: TMenuItem;
    downMovePm: TMenuItem;
    N3: TMenuItem;
    ExitPm: TMenuItem;
    is_Drag: TcxDBCheckBox;
    cxStyleRt: TcxStyleRepository;
    cxStyle1: TcxStyle;
    pl: TPanel;
    SbInsertRow: TSpeedButton;
    tsChart: TTabSheet;
    Panel5: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    Label10: TLabel;
    Label11: TLabel;
    DBChart1: TDBChart;
    Panel6: TPanel;
    Label9: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Series1: TPieSeries;
    Series2: TBarSeries;
    Series3: TFastLineSeries;
    Series4: TAreaSeries;
    Series5: THorizBarSeries;
    X_Field: TcxDBComboBox;
    Y_Field: TcxDBComboBox;
    cdsChart: TClientDataSet;
    Label15: TLabel;
    SpAllSelect: TSpeedButton;
    SbUselect: TSpeedButton;
    selectAllPm: TMenuItem;
    USelectAllPm: TMenuItem;
    InsertRowPm: TMenuItem;
    cb_SizeRank: TcxDBCheckBox;
    tabInfo: TTabSheet;
    dbmInfo: TcxDBMemo;
    btnOutSelect: TdxBarButton;
    btnOutAll: TdxBarButton;
    btnInSelect: TdxBarButton;
    btnInAll: TdxBarButton;
    pmOut: TdxBarPopupMenu;
    pmIn: TdxBarPopupMenu;
    sdFile: TSaveDialog;
    ADOC: TADOConnection;
    ADOQ: TADOQuery;
    qryTmp: TADOQuery;
    odFile: TOpenDialog;
    qryProc: TADOQuery;
    stat1: TdxStatusBar;
    QryReport: TClientDataSet;
    QryFindField: TClientDataSet;
    QryFieldSet: TClientDataSet;
    FieldGridTVID: TcxGridDBColumn;
    FieldGridTVREPORT_ID: TcxGridDBColumn;
    FieldGridTVLSH: TcxGridDBColumn;
    FieldGridTVFIELDNAME: TcxGridDBColumn;
    FieldGridTVFIELDCHNAME: TcxGridDBColumn;
    FieldGridTVISVISIBLE: TcxGridDBColumn;
    FieldGridTVISSORT: TcxGridDBColumn;
    FieldGridTVSYSTEMPARA_NAME: TcxGridDBColumn;
    FieldGridTVPOSITION: TcxGridDBColumn;
    FieldGridTVISGROUP: TcxGridDBColumn;
    FieldGridTVISGROUPDJ: TcxGridDBColumn;
    FieldGridTVFORMATCOUNT: TcxGridDBColumn;
    FieldGridTVKEYFIELDNAME: TcxGridDBColumn;
    FieldGridTVISBARSHOW: TcxGridDBColumn;
    FieldGridTVISMERGE: TcxGridDBColumn;
    FieldGridTVISFILTER: TcxGridDBColumn;
    FieldGridTVSTATTYPE: TcxGridDBColumn;
    cxGridDBTableView1ID: TcxGridDBColumn;
    cxGridDBTableView1REPORT_ID: TcxGridDBColumn;
    cxGridDBTableView1FIELDNAME: TcxGridDBColumn;
    cxGridDBTableView1FIELDNAMEORTABLENAME: TcxGridDBColumn;
    cxGridDBTableView1FIELDCHNAME: TcxGridDBColumn;
    cxGridDBTableView1DATATYPE: TcxGridDBColumn;
    cxGridDBTableView1AND_OR: TcxGridDBColumn;
    cxGridDBTableView1FINDVALUE: TcxGridDBColumn;
    cxGridDBTableView1DIALOGTYPE: TcxGridDBColumn;
    cxGridDBTableView1ISMUTSELECT: TcxGridDBColumn;
    cxGridDBTableView1ISPROCPARA: TcxGridDBColumn;
    Label16: TLabel;
    cbPackage_name: TcxDBComboBox;
    Proc_Name: TcxDBComboBox;
    FieldGridTVDEFWIDTH: TcxGridDBColumn;
    plleft: TPanel;
    Panel7: TPanel;
    sbNew: TSpeedButton;
    sbEXP: TSpeedButton;
    sbFull: TSpeedButton;
    sbFind: TSpeedButton;
    is_chart_cb: TcxDBCheckBox;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    cb_is_Sizecaption: TcxDBCheckBox;
    TabSheet2: TTabSheet;
    Label18: TLabel;
    Label19: TLabel;
    dsFieldLoad: TADODataSet;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxDBCheckBox1: TcxDBCheckBox;
    Label20: TLabel;
    cxDBMaskEdit1: TcxDBMaskEdit;
    cxGridDBTableView1Column2: TcxGridDBColumn;
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
    cxStyleRepository1: TcxStyleRepository;
    cxStyle2: TcxStyle;
    Label17: TLabel;
    cdsType: TClientDataSet;
    cdsTypeID: TWideStringField;
    cdsTypeTREEID: TWideStringField;
    cdsTypeFNUMBER: TWideStringField;
    cdsTypeREPORTTYPENAME: TWideStringField;
    cdsTypeFPARENTID: TWideStringField;
    cdsTypeFISROOT: TIntegerField;
    cdsTypeFIMGAGEINDEX: TIntegerField;
    cdsTypeFSELECTIMGAGEINDEX: TIntegerField;
    cdsTypeFISSYSTEM: TIntegerField;
    cdsTypeFLEVEL: TFloatField;
    cdsTypeFVISIBLE: TIntegerField;
    cdsTypeFTABLENAME: TWideStringField;
    cdsTypeFCREATORID: TWideStringField;
    cdsTypeFLASTUPDATEUSERID: TWideStringField;
    cdsTypeFLONGNUMBER: TMemoField;
    QryReportID: TWideStringField;
    QryReportPACKAGE_NAME: TMemoField;
    QryReportREPORT_ID: TMemoField;
    QryReportREPORTTYPE: TWideStringField;
    QryReportPROCTEXT: TMemoField;
    QryReportDES: TWideStringField;
    QryReportBASESQL: TMemoField;
    QryReportGROUPSQL: TMemoField;
    QryReportISWHERE: TIntegerField;
    QryReportPROC_ISPARA: TIntegerField;
    QryReportBASE_ISPARA: TIntegerField;
    QryReportPROC_NAME: TWideStringField;
    QryReportIS_DRAG: TIntegerField;
    QryReportCHARTTYPE: TFloatField;
    QryReportX_FIELD: TWideStringField;
    QryReportY_FIELD: TWideStringField;
    QryReportSIZERANK: TIntegerField;
    QryReportREPORTINFO: TMemoField;
    QryReportIS_SIZECAPTION: TIntegerField;
    QryReportIS_CHART: TIntegerField;
    QryReportIS_MOBILEREPORT: TIntegerField;
    QryReportMOBILEREPORT_IMG: TWideStringField;
    QryFindFieldID: TWideStringField;
    QryFindFieldREPORT_ID: TWideStringField;
    QryFindFieldFIELDNAME: TWideStringField;
    QryFindFieldFIELDNAMEORTABLENAME: TWideStringField;
    QryFindFieldFIELDCHNAME: TWideStringField;
    QryFindFieldISPROCPARA: TIntegerField;
    QryFindFieldDATATYPE: TWideStringField;
    QryFindFieldAND_OR: TWideStringField;
    QryFindFieldFINDVALUE: TMemoField;
    QryFindFieldDIALOGTYPE: TWideStringField;
    QryFindFieldISMUTSELECT: TIntegerField;
    QryFindFieldISRADIOSELECT: TIntegerField;
    QryFindFieldDEFITEM: TWideStringField;
    QryFieldSetID: TWideStringField;
    QryFieldSetREPORT_ID: TWideStringField;
    QryFieldSetFIELDNAME: TWideStringField;
    QryFieldSetFIELDCHNAME: TWideStringField;
    QryFieldSetISVISIBLE: TIntegerField;
    QryFieldSetDEFWIDTH: TFloatField;
    QryFieldSetLSH: TFloatField;
    QryFieldSetISFILTER: TIntegerField;
    QryFieldSetISSORT: TIntegerField;
    QryFieldSetSYSTEMPARA_NAME: TWideStringField;
    QryFieldSetSTATTYPE: TWideStringField;
    QryFieldSetPOSITION: TWideStringField;
    QryFieldSetISGROUP: TIntegerField;
    QryFieldSetISGROUPDJ: TWideStringField;
    QryFieldSetFORMATCOUNT: TFloatField;
    QryFieldSetKEYFIELDNAME: TWideStringField;
    QryFieldSetISBARSHOW: TIntegerField;
    QryFieldSetISMERGE: TIntegerField;
    QryFieldSetUSER_ID: TWideStringField;
    procedure FormCreate(Sender: TObject);
    procedure dxbrlrgbtnNewBillClick(Sender: TObject);
    procedure ReportTreeChange(Sender: TObject; Node: TTreeNode);
    procedure QryReportNewRecord(DataSet: TDataSet);
    procedure QryFieldSetNewRecord(DataSet: TDataSet);
    procedure QryFindFieldNewRecord(DataSet: TDataSet);
    procedure dxBarLargeButton1Click(Sender: TObject);
    procedure dxBarLargeButton2Click(Sender: TObject);
    procedure dxbrlrgbtnExitEditClick(Sender: TObject);
    procedure dxbrlrgbtnSaveBillClick(Sender: TObject);
    procedure DelBillClick(Sender: TObject);
    procedure ReportTreeCustomDrawItem(Sender: TCustomTreeView;
      Node: TTreeNode; State: TCustomDrawState; var DefaultDraw: Boolean);
    procedure InsertRowClick(Sender: TObject);
    procedure DelRowClick(Sender: TObject);
    procedure DelAllClick(Sender: TObject);
    procedure FieldPgChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FieldGridTVCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure cxGridDBTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure ExitPmClick(Sender: TObject);
    procedure reportTypeCbPropertiesChange(Sender: TObject);
    procedure sbLoadfieldClick(Sender: TObject);
    procedure cxGridDBTableView1Editing(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure QryFindFieldFieldNameValidate(Sender: TField);
    procedure FindGridEnter(Sender: TObject);
    procedure ReportTreeChanging(Sender: TObject; Node: TTreeNode;
      var AllowChange: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    //procedure CreateParams(var Params: TCreateParams); override;
    procedure SbUpClick(Sender: TObject);
    procedure SbDownClick(Sender: TObject);
    procedure Proc_NamePropertiesChange(Sender: TObject);
    procedure SbInsertRowClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure X_FieldPropertiesInitPopup(Sender: TObject);
    procedure Y_FieldPropertiesInitPopup(Sender: TObject);
    procedure SpAllSelectClick(Sender: TObject);
    procedure FieldGridTVEditing(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure SbUselectClick(Sender: TObject);
    procedure ReportTreeDeletion(Sender: TObject; Node: TTreeNode);
    procedure btnOutAllClick(Sender: TObject);
    procedure btnOutSelectClick(Sender: TObject);
    procedure btnInSelectClick(Sender: TObject);
    procedure btnInAllClick(Sender: TObject);
    procedure FieldGridTVKeyFieldNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cbPackage_namePropertiesInitPopup(Sender: TObject);
    procedure Proc_NamePropertiesInitPopup(Sender: TObject);
    procedure QryFieldSetISSORTSetText(Sender: TField; const Text: String);
    procedure QryReportBeforeEdit(DataSet: TDataSet);
    procedure QryFindFieldBeforeEdit(DataSet: TDataSet);
    procedure QryFieldSetBeforeEdit(DataSet: TDataSet);
    procedure QryFieldSetBeforeInsert(DataSet: TDataSet);
    procedure QryFieldSetBeforeDelete(DataSet: TDataSet);
    procedure QryFindFieldBeforeDelete(DataSet: TDataSet);
    procedure QryFindFieldBeforeInsert(DataSet: TDataSet);
    procedure cxGridDBTableView1FINDVALUEPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure SpeedButton6Click(Sender: TObject);
    procedure QryFindFieldReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure QryReportReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure QryFieldSetReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure SpeedButton7Click(Sender: TObject);
    procedure cxDBCheckBox1Click(Sender: TObject);
    procedure ReportTreeFocusedNodeChanged(Sender: TcxCustomTreeList;
      APrevFocusedNode, AFocusedNode: TcxTreeListNode);
    procedure dxEditClick(Sender: TObject);
  private
    { Private declarations }
    function CreateAccessFile(FileNameStr: string): boolean;
    function CreateAccessFileOld(FileNameStr: string): boolean; //创建临时Access文件
    function OpenAdoc(fileStr: string): Boolean; //建立Access连接
    function CreateTbInfo(ReportId: string): Boolean; //建立表结构
    function AdoqExecSql(sqlstr: string): Boolean; //执行sql语句
    function AdoqOpenSql(sqlstr: string): Boolean; //执行sql语句
    function GetTbInfo(ReportId: string): Boolean;
    function OpenSql(qry: TClientDataSet; sqlstr: string): Boolean; //执行sql语句
    function CopyDataInfo(qrySrc:TClientDataSet; qryAim: TADOQuery): Boolean;
    procedure ExportReportData(ReportId: string);
    procedure SetReportId(var lreportid, rReportid: string); //取得树节点的生成信息
    procedure FreshTreeInfo;
    function SaveProcSqlToFile(ReportId: string): string;
    procedure ExecPorcSql(reportId: string);
    function GetSqlStr(procName: string): string;
    function CheckCanImportReport(reportId: string): Boolean;

  public
    { Public declarations }
    report_id, Focused_Field,errorMsg: string;
    spTem: TSpeedButton;
    procedure LoadReportData(report_id: string); //加载报表数据
    procedure closeQry; //关闭数据集
    procedure SaveData; //保存数据
    procedure DelReport; //删除报表数据
    procedure setChartData;
    procedure getOracleProcSQL(report_id:string);
    procedure DeleteAllForamt;
  end;

var
  ReportEditFrm: TReportEditFrm;

implementation
uses DMPublic_R, STPublic_R, uFormatcxGrid_R, uReportType_R, uReportPub_R, ComObj,//hong2010 DAO97,
  uPicView_R, StrUtils, uSubReportEdit_R,uMpsPub_R;
const code = '44444444';
     var  BillState:Integer=0;
{$R *.dfm}

procedure TReportEditFrm.FormCreate(Sender: TObject);
begin
  inherited;
  FreshTreeInfo;

end;

procedure TReportEditFrm.dxbrlrgbtnNewBillClick(Sender: TObject);
begin
  try
    application.CreateForm(TFrmReportType, FrmReportType);
    FrmReportType.ShowModal;
  finally
    FrmReportType.Free;
    cdsType.Close;
    cdsType.Open;
  end;
end;

procedure TReportEditFrm.ReportTreeChange(Sender: TObject;
  Node: TTreeNode);
begin
  if (node.Text <> '报表目录') and (not node.HasChildren) then
  begin
    report_name.Caption := node.Text;
    Lbreport_id.Caption := PTreeNode(Node.Data)^.ID;
    report_id := PTreeNode(Node.Data)^.ID;
    ClientPl.Enabled := True;
    LoadReportData(report_id);
    //dxbrlrgbtnSaveBill.Enabled := True;
    DelBill.Enabled := True;
    ClientPl.Visible := True;
    ClientPl.Ctl3D := False;
  end
  else
  begin
    report_id := '';
    Lbreport_id.Caption := '';
    report_name.Caption := '';
    ClientPl.Enabled := False;
    closeQry;
    //dxbrlrgbtnSaveBill.Enabled := False;
    DelBill.Enabled := False;
    ClientPl.Visible := False;
    ClientPl.Ctl3D := True;
  end;
end;

procedure TReportEditFrm.LoadReportData(report_id: string);
begin
  if report_id = '' then Exit;
  try
    TcxTextEditProperties(Proc_Name.Properties).OnChange := nil;
    with QryReport do
    begin
      close;
      CommandText:='select * from F_Report where  Report_ID=''' + trim(Report_ID) + '''' ;
      open;
      BillState:=1;
      if IsEmpty then QryReport.Insert;
      BillState:=0;
    end;
  finally
    TcxTextEditProperties(Proc_Name.Properties).OnChange := Proc_NamePropertiesChange;
  end;
  with QryFieldSet do
  begin
    close;
    CommandText:='select * from F_ReportFieldList where IsNull(user_id,'' '')='' '' and Report_ID=''' + trim(Report_ID) + ''' order by lsh';
    open;
  end;
  with QryFindField do
  begin
    close;
    CommandText:='select * from F_ReportFindList where Report_ID=''' + trim(Report_ID) + '''';
    open;
  end;
  if Pos(uppercase('CxGRID'), uppercase(reportTypeCb.Text)) > 0 then
  begin
    is_Drag.Visible := True;
    cb_SizeRank.Visible := True;
    FieldGridTVPosition.Visible := False;
    FieldGridTVStatType.Visible := True;
    FieldGridTVDefWidth.Visible := True;
    FieldGridTVisFilter.Visible := True;
    FieldGridTVisSort.Visible := True;
    FieldGridTVFORMATCOUNT.Visible := True;
    FieldGridTVKEYFIELDNAME.Visible:=True;
    FieldGridTVISGROUP.Visible:=True;
    FieldGridTVISMERGE.Visible:=True;
    cb_is_Sizecaption.Visible:=True;
  end
  else
  if Pos(uppercase('EhGrid'), uppercase(reportTypeCb.Text)) > 0 then
  begin
    is_Drag.Visible := False;
    cb_SizeRank.Visible := true;
    FieldGridTVPosition.Visible := False;
    FieldGridTVStatType.Visible := True;
    FieldGridTVDefWidth.Visible := True;
    FieldGridTVisFilter.Visible := True;
    FieldGridTVisSort.Visible := True;
    FieldGridTVisBarShow.Visible := True;
    FieldGridTVKEYFIELDNAME.Visible:=True;
    FieldGridTVISGROUP.Visible:=false;
    FieldGridTVISMERGE.Visible:=True;
    cb_is_Sizecaption.Visible:=True;
    FieldGridTVSTATTYPE.Visible:=True;
    FieldGridTVFORMATCOUNT.Visible := True;
  end
  else
  begin
    is_Drag.Visible := False;
    cb_SizeRank.Visible := False;
    FieldGridTVPosition.Visible := True;
    FieldGridTVStatType.Visible := False;
    FieldGridTVDefWidth.Visible := False;
    FieldGridTVisFilter.Visible := False;
    FieldGridTVisSort.Visible := False;
    FieldGridTVFORMATCOUNT.Visible := True;
    FieldGridTVKeyFieldName.Visible:=False;
    FieldGridTVISGROUP.Visible:=False;
    FieldGridTVISMERGE.Visible:=False;
    cb_is_Sizecaption.Visible:=False;
  end;
  cxGridDBTableView1Column2.Visible := cxDBCheckBox1.Checked;
  self.spTem := SpeedButton1;
  if G_EasStandard then
  begin
    cb_SizeRank.Visible := False;
    cb_is_Sizecaption.Visible := False;
  end;
  case QryReport.FieldByName('ChartType').AsInteger of
    1:
      begin
        SpeedButton1.Down := True;
        self.spTem := SpeedButton1;
      end;
    2:
      begin
        SpeedButton2.Down := True;
        self.spTem := SpeedButton2;
      end;
    3:
      begin
        SpeedButton3.Down := True;
        self.spTem := SpeedButton3;
      end;
    4:
      begin
        SpeedButton4.Down := True;
        self.spTem := SpeedButton4;
      end;
    5:
      begin
        SpeedButton5.Down := True;
        self.spTem := SpeedButton5;
      end;
  end;
  setChartData;
  if (QryReport.State in db.dsEditModes)  then
  QryReport.Post;
  if (QryFindField.State in db.dsEditModes)  then
  QryFindField.Post;
  if (QryFieldSet.State in db.dsEditModes)  then
  QryFieldSet.Post;
end;

procedure TReportEditFrm.closeQry;
begin
  QryReport.Close;
  QryFieldSet.Close;
  QryFindField.Close;
end;

procedure TReportEditFrm.QryReportNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('Report_ID').AsString := Report_ID;
  DataSet.FieldByName('ReportType').AsString := '基本报表(CxGRID控件)';
  DataSet.FieldByName('ID').Value := getity_id('F_report');
end;

procedure TReportEditFrm.QryFieldSetNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('Report_ID').AsString := Report_ID;
  DataSet.FieldByName('Lsh').AsInteger := DataSet.RecordCount + 1;
  DataSet.FieldByName('isFilter').AsInteger := 0;
  DataSet.FieldByName('isSort').AsInteger := 0;
  DataSet.FieldByName('SystemPara_Name').AsString := '';
  DataSet.FieldByName('DEFWIDTH').AsInteger :=15;
  DataSet.FieldByName('isVisible').AsInteger := 1;
  DataSet.FieldByName('ID').Value:=getFieldListSEQ
end;

procedure TReportEditFrm.QryFindFieldNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('Report_ID').AsString := Report_ID;
  DataSet.FieldByName('ID').AsString := getity_id('f_Reportfindlist');
end;

procedure TReportEditFrm.dxBarLargeButton1Click(Sender: TObject);
begin
  ReportTree.FullExpand;
end;

procedure TReportEditFrm.dxBarLargeButton2Click(Sender: TObject);
begin
  ReportTree.FullCollapse;
end;

procedure TReportEditFrm.dxbrlrgbtnExitEditClick(Sender: TObject);
begin
    {if    ReportTree.Selected.HasChildren then
     ShowMessage(ptreenode(ReportTree.Selected.getFirstChild.Data).ID+':'+ptreenode(ReportTree.Selected.GetLastChild.Data).ID);
     exit; }
  Close;
end;

procedure TReportEditFrm.SaveData;
var list: TstringList;
  i, t: Integer;
  b: Boolean;
  bk:TBookmarkStr;
begin
  if QryFindField.State in DB.dsEditModes then QryFindField.Post;
  if QryFieldSet.State in DB.dsEditModes then QryFieldSet.Post;
  if trim(reportTypeCb.Text) = '' then
  begin
    showmsg('报表类型不能为空！   ');
    reportTypeCb.SetFocus;
    Exit;
  end;
  if (cb_SizeRank.Checked) and (is_Drag.Checked) then
  begin
    ShowMsg('拖动分组与根据尺码显示列头两个参数不能同时启用!');
    Exit;
  end;
  if (cb_SizeRank.Checked) and (_SysType<>0) then
  begin
    ShowMsg('对不起"根据尺码组显示多表头"参数暂只支持EAS系统!');
    abort;
  end;
  if (cb_SizeRank.Checked) and (cb_is_Sizecaption.Checked) then
  begin
    ShowMsg('根据尺码组显示多表头与动态显示尺码列头两个参数不能同时启用!');
    abort;
  end;
  if isRepeatValue(QryFindField, 'FieldChName') then
  begin
    showmsg('查找字段配置【中文名称】字段不允许出现重复值 !  ');
    abort;
  end;
  if proc_isPara.Checked then
    if Pos(uppercase('@user_id'), uppercase(procText.Text)) = 0 then
    begin
      showmsg('您勾选了是否传入用户参数，但过程参数中未包含@user_id参数 !  ');
      abort;
    end;
  if not proc_isPara.Checked then
    if Pos(uppercase('@user_id'), uppercase(procText.Text)) > 0 then
    begin
      showmsg('您没有勾选了是否传入用户参数，但过程参数中包含了@user_id参数 !  ');
      abort;
    end;
  if is_BasePara.Checked then
    if Pos(uppercase(':user_id'), uppercase(BaseSQlMm.Text)) = 0 then
    begin
      showmsg('您勾选了基本语句是否传入用户参数，但基本语句中未包含:user_id参数 !  ');
      abort;
    end;
  if not is_BasePara.Checked then
    if Pos(uppercase(':user_id'), uppercase(BaseSQlMm.Text)) > 0 then
    begin
      showmsg('您没有勾选基本语句是否传入用户参数，但基本语句中包含:user_id参数 !  ');
      abort;
    end;
  if trim(ProcText.Text) <> '' then
  begin
    try
      QryFindField.DisableConstraints;
      list := TstringList.Create;
      list.Delimiter := ',';
      list.DelimitedText := trim(ProcText.Text);
      for i := 0 to list.Count - 1 do
      begin
        b := False;
        QryFindField.First;
        while not QryFindField.Eof do
        begin
          if uppercase(trim(list[i])) = uppercase(trim(QryFindField.FieldByName('fieldname').AsString)) then
            b := True;
          QryFindField.Next;
        end;
        if not b then
        begin
          showmsg('存储过程参数【' + trim(list[i]) + '】未在查找字段配置中出现！不允许保存！');
          exit;
        end;
      end;
    finally
      QryFindField.EnableConstraints;
    end;
  end;
  try
    QryFindField.DisableControls;
    QryFindField.First;
    while not QryFindField.Eof do
    begin
      if trim(QryFindField.FieldByName('FieldName').AsString) = '' then
      begin
        showmsg('字段名不能为空!  ');
        abort;
      end;
      if trim(QryFindField.FieldByName('FieldNameORTableName').AsString) = '' then
      begin
        showmsg('字段名带表名不能为空!  ');
        abort;
      end;
      if trim(QryFindField.FieldByName('FieldChName').AsString) = '' then
      begin
        showmsg('中文名称不能为空!  ');
        abort;
      end;
      if Pos('CubeX',reportTypeCb.Text)>0 then
      begin
        if  QryFieldSet.Locate('POSITION','',[])  then
        begin
          showmsg('交叉表位置字段不能为空!  ');
          Abort;
        end;
      end;
      QryFindField.Next;
    end;
  finally
    QryFindField.EnableControls;
  end;
  try
    t := strtoint(Copy(trim(spTem.Name), Length(trim(spTem.Name)), 1));
    QryReport.Edit;
    QryReport.FieldByName('ChartType').AsInteger := t;
    QryReport.Post;
    QryReport.ApplyUpdates(0);
    i := 1;
    try
      bk:=QryFieldSet.Bookmark;
      QryFieldSet.DisableControls;
      FieldGridTV.BeginUpdate;
      QryFieldSet.First;
      while not QryFieldSet.Eof do
      begin
        QryFieldSet.Edit;
        QryFieldSet.FieldByName('lsh').asinteger := i;
        i := i + 1;
        QryFieldSet.Post;
        QryFieldSet.Next;
      end;
    finally
      QryFieldSet.Bookmark:=bk;
      QryFieldSet.EnableControls;
      FieldGridTV.EndUpdate;
    end;
    QryFieldSet.ApplyUpdates(0);
    QryFindField.ApplyUpdates(0);
    if errorMsg<>'' then
    begin
      showmsg('数据保存失败!原因：' + errorMsg);
      errorMsg:='';
      abort;
    end
    else
    showmsg('数据保存成功!  ');
    BillState:=0;
    dxEdit.Enabled:=True;
    dxbrlrgbtnSaveBill.Enabled:=False;
    DMPub.SocketConn.AppServer.ServerLog('编辑了编号为:【'+QryReport.FieldByName('Report_ID').AsString+' 】名称为:【'+report_Name.Caption+'】的报表配置文件',0);
  except
    on e: exception do
    begin
      showmsg('数据保存失败!原因：' + e.Message);
      Abort;
    end;
  end;
end;

procedure TReportEditFrm.dxbrlrgbtnSaveBillClick(Sender: TObject);
begin
  SaveData;
end;

procedure TReportEditFrm.DelReport;
begin
  try
    try
      Screen.Cursor:=crHourGlass;
      with DMPub.db_update do
      begin
        close;
        CommandText:='delete from F_Report where report_id=''' + trim(report_ID) + '''';
        Execute;
        close;
        CommandText:='delete from F_ReportFieldList where report_id=''' + trim(report_ID) + '''';
        Execute;
        close;
        CommandText:='delete from F_ReportFindList where report_id=''' + trim(report_ID) + '''';
        Execute;
        close;
        CommandText:='delete from F_ReportSub  where  report_id=''' + trim(report_ID) + '''';
        Execute;
        close;
        CommandText:='delete from F_ReportFieldListSub  where report_id=''' + trim(report_ID) + '''';
        Execute;
        close;
        CommandText:='delete from F_ReportFindListSub  where report_id=''' + trim(report_ID) + '''';
        Execute;
        close;
        CommandText:='delete from F_ReportQuery where report_id=''' + trim(report_ID) + '''';
        Execute;
        close;
        CommandText:='delete from F_ReportQuery_list where report_id=''' + trim(report_ID) + '''';
        Execute;
        close;
        CommandText:='delete from F_MODULE where MODULE_ID=''' + trim(report_ID) + '''';
        Execute;
        close;
        CommandText:='delete from F_MODULE_LIST where MODULE_ID=''' + trim(report_ID) + '''';
        Execute;
        close;
        CommandText:='delete from F_QueryGroupDef where report_id=''' + trim(report_ID) + '''';
        Execute;
        //角色权限
        close;
        CommandText:='delete from F_ROLEMODULE where MODULE_ID=''' + trim(report_ID) + '''';
        Execute;
        close;
        CommandText:='delete from F_ROLEMODULE_List where MODULE_ID=''' + trim(report_ID) + '''';
        Execute;
      end;
      closeQry;
      showmsg('报表数据删除成功!   ');
      DMPub.SocketConn.AppServer.ServerLog('删除了编号为:【'+report_ID+' 】名称为:【'+report_Name.Caption+'】的报表配置文件',0);
    except
      on e: exception do
      begin
        showmsg('数据删除失败!原因：' + e.Message);
      end;
    end;
  finally
    Screen.Cursor:=crDefault;
  end;

end;

procedure TReportEditFrm.DelBillClick(Sender: TObject);
begin
  if dmpub.QuerySQL('select 1 from F_Report where report_id=''' + trim(report_id) + '''').IsEmpty then
  begin
    Exit;
  end;
  if application.MessageBox('确认删除此报表配置信息?Y/N  ', '提示', 32 + MB_YESNO) = id_YES then
    DelReport;
end;

procedure TReportEditFrm.ReportTreeCustomDrawItem(Sender: TCustomTreeView;
  Node: TTreeNode; State: TCustomDrawState; var DefaultDraw: Boolean);
begin
  if node.Selected then
  begin
    Sender.Canvas.Brush.Color := clBackground;
    Sender.Canvas.Font.Color := clWhite;
  end;
end;

procedure TReportEditFrm.InsertRowClick(Sender: TObject);
begin
  if FieldPg.ActivePageIndex = 0 then
  begin
    QryFieldSet.Append;
  end;
  if FieldPg.ActivePageIndex = 1 then
  begin
    QryFindField.Append;
  end;
end;

procedure TReportEditFrm.DelRowClick(Sender: TObject);
var i: Integer;
begin
  if FieldPg.ActivePageIndex = 0 then
  begin
    if not QryFieldSet.IsEmpty then
      QryFieldSet.Delete;
    if not QryFieldSet.IsEmpty then
    begin
      try
        QryFieldSet.DisableControls;
        QryFieldSet.First;
        i := 1;
        while not QryFieldSet.Eof do
        begin
          QryFieldSet.Edit;
          QryFieldSet.FieldByName('lsh').asinteger := i;
          i := i + 1;
          QryFieldSet.Post;
          QryFieldSet.Next;
        end;
      finally
        QryFieldSet.EnableControls;
      end;
    end;
  end;
  if FieldPg.ActivePageIndex = 1 then
  begin
    if not QryFindField.IsEmpty then
      QryFindField.Delete;
  end;

end;

procedure TReportEditFrm.DelAllClick(Sender: TObject);
begin
  if FieldPg.ActivePageIndex = 0 then
  begin
    while not QryFieldSet.IsEmpty do
      QryFieldSet.Delete;
  end;
  if FieldPg.ActivePageIndex = 1 then
  begin
    while not QryFindField.IsEmpty do
      QryFindField.Delete;
  end;
end;

procedure TReportEditFrm.FieldPgChange(Sender: TObject);
begin
  Focused_Field := '';
  if FieldPg.ActivePageIndex = 1 then
  begin
    SbUp.Visible := False;
    SbDown.Visible := False;
    sbLoadfield.Visible := False;
    LoadFieldPm.Visible := False;
    upMovePm.Visible := False;
    downMovePm.Visible := False;
    SpAllSelect.Visible := False;
    SbUselect.Visible := False;
    selectAllPm.Visible := False;
    USelectAllPm.Visible := False;
    N3.Visible := False;
  end
  else
  begin
    SbUp.Visible := True;
    SbDown.Visible := True;
    sbLoadfield.Visible := True;
    LoadFieldPm.Visible := True;
    upMovePm.Visible := True;
    downMovePm.Visible := True;
    SpAllSelect.Visible := True;
    SbUselect.Visible := True;
    selectAllPm.Visible := True;
    USelectAllPm.Visible := True;
    N3.Visible := True;
  end;
  if  (FieldPg.ActivePageIndex = 2) or (FieldPg.ActivePageIndex = 3) then
  Panel10.Visible :=False
  else Panel10.Visible :=True;

end;

procedure TReportEditFrm.FormShow(Sender: TObject);
var ini:TIniFile;
    toFileName,Stretch:string;
begin
  inherited;
  FieldPg.ActivePageIndex := 0;
  TcxCheckBoxProperties(is_Drag.Properties).Alignment:=taLeftJustify;
  TcxCheckBoxProperties(proc_isPara.Properties).Alignment:=taLeftJustify;
  TcxCheckBoxProperties(is_Where.Properties).Alignment:=taLeftJustify;
  TcxCheckBoxProperties(is_BasePara.Properties).Alignment:=taLeftJustify;
  TcxCheckBoxProperties(cb_SizeRank.Properties).Alignment:=taLeftJustify;
  TcxCheckBoxProperties(cb_is_Sizecaption.Properties).Alignment:=taLeftJustify;
  TcxCheckBoxProperties(is_chart_cb.Properties).Alignment:=taLeftJustify;
  stat1.Panels[1].Text := '当前用户：' + G_UserInfo.UserName;
  if dbType <>'oracle' then cbPackage_name.Enabled:=False;
  if _SysType=0 then
  with TcxComboBoxProperties(cxGridDBTableView1DIALOGTYPE.Properties) do
  begin
    Items.Add('');
    Items.Add('成品');
    Items.Add('原材料');
    Items.Add('客户');
    Items.Add('供应商');
    Items.Add('店铺');
    Items.Add('仓库');
    Items.Add('分支机构');
    Items.Add('颜色');
    Items.Add('尺码');
    Items.Add('内长');
    Items.Add('配码');
    Items.Add('规格');
  end;
end;

procedure TReportEditFrm.FieldGridTVCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if not AViewInfo.Item.Options.Editing then
  begin
    Acanvas.Brush.Color := clSkyBlue;
    if AViewInfo.GridRecord.Selected then
    begin
      Acanvas.Brush.Color := clSkyBlue; //clActiveCaption;
      Acanvas.Font.Color := clBlack; //clWindow;
    end;
  end
  else
    if AViewInfo.GridRecord.Selected then
    begin
      Acanvas.Brush.Color := $00DDFFFF; //clActiveCaption;
      Acanvas.Font.Color := clBlack;
    end;
end;

procedure TReportEditFrm.cxGridDBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if not AViewInfo.Item.Options.Editing then
  begin
    Acanvas.Brush.Color := clSkyBlue;
    if AViewInfo.GridRecord.Selected then
    begin
      Acanvas.Brush.Color := clSkyBlue; //clActiveCaption;
      Acanvas.Font.Color := clBlack; //clWindow;
    end;
  end
  else
    if AViewInfo.GridRecord.Selected then
    begin
      Acanvas.Brush.Color := $00DDFFFF; //clActiveCaption;
      Acanvas.Font.Color := clBlack;
    end;
end;

procedure TReportEditFrm.ExitPmClick(Sender: TObject);
begin
  close;
end;

procedure TReportEditFrm.reportTypeCbPropertiesChange(Sender: TObject);
begin
  if Pos(uppercase('CxGRID'), uppercase(reportTypeCb.Text)) > 0 then
  begin
    is_Drag.Visible := True;
    cb_SizeRank.Visible := True;
    cb_is_Sizecaption.Visible:=True;
    FieldGridTVPosition.Visible := False;
    FieldGridTVStatType.Visible := True;
    FieldGridTVDefWidth.Visible := True;
    FieldGridTVisFilter.Visible := True;
    FieldGridTVisSort.Visible := True;
    FieldGridTVisBarShow.Visible := True;
    FieldGridTVisBarShow.Visible := True;
    FieldGridTVKEYFIELDNAME.Visible:=True;
    FieldGridTVISGROUP.Visible:=True;
    FieldGridTVISMERGE.Visible:=True;
  end
  else
  if Pos(uppercase('EhGrid'), uppercase(reportTypeCb.Text)) > 0 then
  begin
    is_Drag.Visible := False;
    cb_SizeRank.Visible := true;
    FieldGridTVPosition.Visible := False;
    FieldGridTVStatType.Visible := True;
    FieldGridTVDefWidth.Visible := True;
    FieldGridTVisFilter.Visible := True;
    FieldGridTVisSort.Visible := True;
    FieldGridTVisBarShow.Visible := True;
    FieldGridTVKEYFIELDNAME.Visible:=True;
    FieldGridTVISGROUP.Visible:=false;
    FieldGridTVISMERGE.Visible:=True;
    cb_is_Sizecaption.Visible:=True;
    FieldGridTVSTATTYPE.Visible:=True;
    FieldGridTVFORMATCOUNT.Visible := True;
  end
  else
  begin
    is_Drag.Visible := False;
    cb_SizeRank.Visible := False;
    FieldGridTVPosition.Visible := True;
    FieldGridTVStatType.Visible := False;
    FieldGridTVDefWidth.Visible := False;
    FieldGridTVisFilter.Visible := False;
    FieldGridTVisSort.Visible := False;
    FieldGridTVisBarShow.Visible := false;
    FieldGridTVisBarShow.Visible := false;
    FieldGridTVKEYFIELDNAME.Visible:=False;
    FieldGridTVISGROUP.Visible:=false;
    FieldGridTVISMERGE.Visible:=False;
    cb_is_Sizecaption.Visible:=False;
  end;
  cxGridDBTableView1Column2.Visible := cxDBCheckBox1.Checked;
  if G_EasStandard then
  begin
    cb_SizeRank.Visible := False;
    cb_is_Sizecaption.Visible := False;
  end;
end;

procedure TReportEditFrm.sbLoadfieldClick(Sender: TObject);
var
  i: Integer;
  list: Tstringlist;
  sql: string;
  cr:OleVariant;
  data:string;
  errormsg:string;
begin
  try
    if Trim(BaseSQlMm.Text)<>'' then
    if posExp('1=2',BaseSQlMm.Text)=0 then
    begin
      ShowMsg('加载字段时基本语句里必需加"1=2"来加快加载速度,加载完成后请删除!');
      Exit;
    end;
    showWait('正在加载默认格式!    ');
    try
      with dsFieldLoad do
      begin
        if (trim(BaseSQlMm.Text) = '') and (trim(Proc_Name.Text) <> '') then
        begin
          sql := '';
          list := TstringList.Create;
          list.Delimiter := ',';
          list.DelimitedText := trim(ProcText.Text);

//          sql := '{call  ' +trim(cbPackage_name.Text)+'.'+ trim(Proc_Name.Text)+'(';
          sql := 'call ' + trim(Proc_Name.Text) + ' (';
          if list.Count > 0 then
          begin
            for i := 0 to list.Count - 1 do
            begin
              sql := sql + ' null,';
            end;
            sql := Copy(sql, 1, Length(sql) - 1);
          end;
          Close;
//          CommandText:=sql+')}';
          CommandText:=sql+')';

          saveLog(CommandText);
          DMPub.SocketConn.AppServer.openReport(CommandText,1,cr,errormsg);   //从服务器获取数据
          if  errormsg<>'' then
          begin
            ShowMsg('报表打开错误:'+errormsg);
            Abort;
          end;
          cr:=UnZip_OleVariant(cr);   //数据解压
          data:=OleDataToText(cr);    //变体转string
          Recordset:=RecordsetFromXMLString(data);
          cr:=Unassigned;
          while not QryFieldSet.IsEmpty do QryFieldSet.Delete;
          for i := 0 to FieldCount - 1 do
          begin
            QryFieldSet.Append;
            QryFieldSet.FieldByName('FieldName').AsString := Fields[i].FieldName;
            QryFieldSet.FieldByName('FieldChName').AsString := getFieldchName(Fields[i].FieldName);
            QryFieldSet.FieldByName('isVisible').AsInteger := 1;
            QryFieldSet.FieldByName('DefWidth').AsInteger := 80;
          end;
        end
        else
        begin
          Close;
          CommandText:=BaseSQlMm.Text + ' ' + GroupSqlMm.Text;
          if is_BasePara.Checked then
            for i := 0 to Parameters.Count - 1 do
              Parameters[i].Value := '';
          //ShowMessage(CommandText);
          saveLog(CommandText);
          DMPub.SocketConn.AppServer.openReport(CommandText,1,cr,errormsg);   //从服务器获取数据
          if  errormsg<>'' then
          begin
            ShowMsg('报表打开错误:'+errormsg);
            Abort;
          end;
          cr:=UnZip_OleVariant(cr);   //数据解压
          data:=OleDataToText(cr);    //变体转string
          Recordset:=RecordsetFromXMLString(data);
          cr:=Unassigned;
          while not QryFieldSet.IsEmpty do QryFieldSet.Delete;
          for i := 0 to FieldCount - 1 do
          begin
            QryFieldSet.Append;
            QryFieldSet.FieldByName('FieldName').AsString := Fields[i].FieldName;
            QryFieldSet.FieldByName('FieldChName').AsString := getFieldchName(Fields[i].FieldName);
            QryFieldSet.FieldByName('isVisible').AsInteger := 1;
            QryFieldSet.FieldByName('DefWidth').AsInteger := 80;
          end;
        end;
      end;
    except
      on e: exception do
      begin
        showmsg('加载字段失败! 原因:' + e.Message + ''#13'' + DMPub.db_Query.CommandText);
        Exit;
      end;
    end;
  finally
    HideWait;
  end;

end;

procedure TReportEditFrm.cxGridDBTableView1Editing(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  var AAllow: Boolean);

begin
  Focused_Field := TcxGridDBTableView(Sender).Columns[AItem.Index].DataBinding.FieldName;
end;

procedure TReportEditFrm.QryFindFieldFieldNameValidate(Sender: TField);
begin
  if Pos(uppercase('@'), uppercase(sender.AsString)) = 0 then
  begin
    QryFieldSet.First;
    while not QryFieldSet.Eof do
    begin
      if trim(sender.AsString) = trim(QryFieldSet.FieldByName('FieldName').AsString) then
      begin
        QryFindFieldFieldChName.AsString := trim(QryFieldSet.FieldByName('FieldChName').AsString);
        QryFindFieldisProcPara.AsBoolean := False;
      end;
      QryFieldSet.Next;
    end;
  end
  else
  begin
    QryFindFieldFieldChName.AsString := '';
    QryFindFieldFieldNameORTableName.AsString := sender.AsString;
    QryFindFieldisProcPara.AsBoolean := True;
  end;
end;

procedure TReportEditFrm.FindGridEnter(Sender: TObject);
var list: TstringList;
  i: Integer;
begin
 try
    if (FieldPg.ActivePageIndex = 1) then
    begin
      TcxComboBoxProperties(cxGridDBTableView1FieldName.Properties).Items.Clear;
      if trim(ProcText.Text) <> '' then
      begin
        List := TstringList.Create;
        list.Delimiter := ',';
        list.DelimitedText := trim(ProcText.Text);
        for i := 0 to list.Count - 1 do
        begin
          TcxComboBoxProperties(cxGridDBTableView1FieldName.Properties).Items.Add(list[i]);
        end;
      end;
      QryFieldSet.First;
      while not QryFieldSet.Eof do
      begin
        TcxComboBoxProperties(cxGridDBTableView1FieldName.Properties).Items.Add(QryFieldSet.fieldbyname('FieldName').asString);
        QryFieldSet.Next;
      end;
    end;
  finally
    list.Free;
  end;
end;

procedure TReportEditFrm.ReportTreeChanging(Sender: TObject;
  Node: TTreeNode; var AllowChange: Boolean);
begin
  if BillState=1 then
  begin
    if application.MessageBox('数据已修改是否保存?(Y/N)  ', '提示', 32 + MB_YESNO) = id_yes then
    begin
      AllowChange := False;
      SaveData;
      BillState:=0;
      dxEdit.Enabled:=true;
      Abort;
    end;
  end;
  BillState:=0;
  dxEdit.Enabled:=true;
  dxbrlrgbtnSaveBill.Enabled:=False;
end;

procedure TReportEditFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if (QryReport.State in DB.dsEditModes)
    or (QryFieldSet.State in DB.dsEditModes)
    or (QryFindField.State in DB.dsEditModes)
    then
  begin
    if application.MessageBox('数据已修改是否保存?(Y/N)  ', '提示', 32 + MB_YESNO) = id_yes then
    begin
      SaveData;
      abort;
    end;
  end;
  adoc.Connected := False;
  Action := caFree;
end;

//procedure TReportEditFrm.CreateParams(var Params: TCreateParams);
//begin
//  inherited;
//  inherited CreateParams(Params);
//  Params.WndParent := GetDesktopWindow;
//end;

procedure TReportEditFrm.SbUpClick(Sender: TObject);
var  qry:TClientDataSet;
  index, i: Integer;
begin
  if QryFieldSet.RecNo = 1 then Exit;
  qry:=TClientDataSet.Create(nil);
  index := QryFieldSet.fieldbyname('Lsh').AsInteger;
  try
    if  QryFieldSet.State in [dsinsert,dsedit] then
    QryFieldSet.Post;
    QryFieldSet.SaveToFile(ExtractFilePath(Application.ExeName) + 'cjx');
    Qry.LoadFromFile(ExtractFilePath(Application.ExeName) + 'cjx');
    if Qry.Locate('Lsh', inttostr(index - 1), []) then
    begin
      for i := 0 to QryFieldSet.FieldCount - 1 do
      begin
        if UpperCase(QryFieldSet.Fields[i].FieldName)<>'ID' then
        begin
          if UpperCase(QryFieldSet.Fields[i].FieldName)<>'ID' then
          begin
            if (QryFieldSet.Fields[i].FieldName = 'Lsh') then
            begin
              QryFieldSet.Edit;
              QryFieldSet.Fields[i].Value := index;
            end
            else
              if (QryFieldSet.Fields[i].FieldKind = fkData)  then
              begin
                QryFieldSet.Edit;
                QryFieldSet.Fields[i].Value := Qry.fieldbyname(QryFieldSet.Fields[i].FieldName).Value;
              end;
          end;
        end;
      end;
      QryFieldSet.Post;
    end;
    QryFieldSet.Prior;
    if Qry.Locate('Lsh', inttostr(index), []) then
    begin
      for i := 0 to QryFieldSet.FieldCount - 1 do
      begin
        if UpperCase(QryFieldSet.Fields[i].FieldName)<>'ID' then
        if (QryFieldSet.Fields[i].FieldName = 'Lsh') then
        begin
          QryFieldSet.Edit;
          QryFieldSet.Fields[i].Value := index - 1;
        end
        else
          if (QryFieldSet.Fields[i].FieldKind = fkData) and (QryFieldSet.Fields[i].FieldName <> 'ID') then
          begin
            QryFieldSet.Edit;
            QryFieldSet.Fields[i].Value := Qry.fieldbyname(QryFieldSet.Fields[i].FieldName).Value;
          end;
      end;
      QryFieldSet.Post;
    end;
  finally
    Qry.Free;
  end;
end;

procedure TReportEditFrm.SbDownClick(Sender: TObject);
var Qry: TClientDataSet;
  index, i: Integer;
begin
  if QryFieldSet.RecNo = QryFieldSet.RecordCount then Exit;
  Qry := TClientDataSet.create(nil);
  index := QryFieldSet.fieldbyname('Lsh').AsInteger;
  try
    if  QryFieldSet.State in [dsinsert,dsedit] then 
    QryFieldSet.Post;
    QryFieldSet.SaveToFile(ExtractFilePath(Application.ExeName) + 'cjx');
    Qry.LoadFromFile(ExtractFilePath(Application.ExeName) + 'cjx');
    if Qry.Locate('Lsh', inttostr(index + 1), []) then
    begin
      for i := 0 to QryFieldSet.FieldCount - 1 do
      begin
        if UpperCase(QryFieldSet.Fields[i].FieldName)<>'ID' then
        begin
          if (QryFieldSet.Fields[i].FieldName = 'Lsh') then
          begin
            QryFieldSet.Edit;
            QryFieldSet.Fields[i].Value := index;
          end
          else
            if (QryFieldSet.Fields[i].FieldKind = fkData) then
            begin
              QryFieldSet.Edit;
              QryFieldSet.Fields[i].Value := Qry.fieldbyname(QryFieldSet.Fields[i].FieldName).Value;
            end;
        end;
      end;
      QryFieldSet.Post;
    end;
    QryFieldSet.Next;
    if Qry.Locate('Lsh', inttostr(index), []) then
    begin
      for i := 0 to QryFieldSet.FieldCount - 1 do
      begin
        if UpperCase(QryFieldSet.Fields[i].FieldName)<>'ID' then
        begin
          if (QryFieldSet.Fields[i].FieldName = 'Lsh') then
          begin
            QryFieldSet.Edit;
            QryFieldSet.Fields[i].Value := index + 1;
          end
          else
            if (QryFieldSet.Fields[i].FieldKind = fkData)  then
            begin
              QryFieldSet.Edit;
              QryFieldSet.Fields[i].Value := Qry.fieldbyname(QryFieldSet.Fields[i].FieldName).Value;
            end;
        end;
      end;
      QryFieldSet.Post;
    end;
  finally
    Qry.Free;
  end;
end;

procedure TReportEditFrm.Proc_NamePropertiesChange(Sender: TObject);
 var  str: string;
begin
  str := '';
  try
    DMPub.db_Query.Close;
    DMPub.db_Query.CommandText:=//'SELECT argument_name  FROM all_arguments  where  IN_OUT=''IN'' and object_name='''+trim(proc_name.Text)+''' order by position';
      'Select parameter.name as argument_name from sys.procedures Pr ' +
      'left join sys.parameters parameter on Pr.object_id = parameter.object_id ' +
      'Where Pr.Type = ''P'' and Pr.Name = ''' + trim(proc_name.Text) + ''' and parameter.is_output = 0';
    DMPub.db_Query.Open;
    if not DMPub.db_Query.IsEmpty then
    begin
      while not DMPub.db_Query.Eof do
      begin
        str := str + trim(DMPub.db_Query.fieldbyname('argument_name').AsString) + ',';
        DMPub.db_Query.Next;
      end;
      str := copy(str, 1, Length(str) - 1);
      QryReport.Edit;
      QryReport.FieldByName('ProcText').asstring := str;
    end
    else
      ProcText.Text := '';
  finally
  end;
end;

procedure TReportEditFrm.SbInsertRowClick(Sender: TObject);
begin
  if FieldPg.ActivePageIndex = 0 then
  begin
    QryFieldSet.Insert;
  end;
  if FieldPg.ActivePageIndex = 1 then
  begin
    QryFindField.Insert;
  end;
end;

procedure TReportEditFrm.SpeedButton1Click(Sender: TObject);
begin
  setChartData;
  spTem := TSpeedButton(Sender);
end;

procedure TReportEditFrm.setChartData;
begin
  Series1.Active := SpeedButton1.Down;
  Series1.XLabelsSource := '';
  Series1.PieValues.ValueSource := '';
  Series1.DataSource := nil;
  Series2.Active := SpeedButton2.Down;
  Series2.XLabelsSource := '';
  Series2.YValues.ValueSource := '';
  Series2.DataSource := nil;
  Series3.Active := SpeedButton3.Down;
  Series3.XLabelsSource := '';
  Series3.YValues.ValueSource := '';
  Series3.DataSource := nil;
  Series4.Active := SpeedButton4.Down;
  Series4.XLabelsSource := '';
  Series4.YValues.ValueSource := '';
  Series4.DataSource := nil;
  Series5.Active := SpeedButton5.Down;
  Series5.XLabelsSource := '';
  Series5.XValues.ValueSource := '';
  Series5.DataSource := nil;

  with cdsChart do
  begin
    if Active then
    begin
      EmptyDataSet;
      FieldDefs.Clear;
      Active := False;
    end;
    with FieldDefs.AddFieldDef do
    begin
      DataType := ftString;
      size := 100;
      Name := 'XField';
    end;
    with FieldDefs.AddFieldDef do
    begin
      DataType := ftInteger;
      Name := 'YField';
    end;
    CreateDataSet;
  end;
  cdsChart.Append;
  cdsChart.FieldByName('XField').Value := '东门店';
  cdsChart.FieldByName('YField').Value := 25000;
  cdsChart.Post;
  cdsChart.Append;
  cdsChart.FieldByName('XField').Value := '华强店';
  cdsChart.FieldByName('YField').Value := 26900;
  cdsChart.Post;
  cdsChart.Append;
  cdsChart.FieldByName('XField').Value := '天虹店';
  cdsChart.FieldByName('YField').Value := 30900;
  cdsChart.Post;
  cdsChart.Append;
  cdsChart.FieldByName('XField').Value := '万佳店';
  cdsChart.FieldByName('YField').Value := 22900;
  cdsChart.Post;
  cdsChart.Append;
  cdsChart.FieldByName('XField').Value := '新洲店';
  cdsChart.FieldByName('YField').Value := 28900;
  cdsChart.Post;
  cdsChart.Append;
  cdsChart.FieldByName('XField').Value := '海雅店';
  cdsChart.FieldByName('YField').Value := 38900;
  cdsChart.Post;


  if SpeedButton1.Down then
  begin
    Series1.Marks.Style := smsLabelPercent;
    Series1.OtherSlice.Style := poBelowPercent;
    Series1.OtherSlice.Text := '其他';
    Series1.OtherSlice.Value := 2;
    Series1.Marks.Visible := True;
    Series1.DataSource := cdsChart;
    Series1.XLabelsSource := 'XField';
    Series1.PieValues.ValueSource := 'YField';
    DBChart1.CheckDatasource(Series1);
  end
  else if SpeedButton2.Down then
  begin
    Series2.Marks.Style := smsValue;
    Series2.ColorEachPoint := True;
    Series2.Marks.Visible := True;
    Series2.DataSource := cdsChart;
    Series2.XLabelsSource := 'XField';
    Series2.YValues.ValueSource := 'YField';
    DBChart1.CheckDatasource(Series2);
  end
  else if SpeedButton3.Down then
  begin
    Series3.Marks.Style := smsValue;
    Series3.Marks.Visible := True;
    Series3.DataSource := cdsChart;
    Series3.XLabelsSource := 'XField';
    Series3.YValues.ValueSource := 'YField';
    DBChart1.CheckDatasource(Series3);
  end
  else if SpeedButton4.Down then
  begin
    Series4.Marks.Style := smsValue;
    Series4.Marks.Visible := True;
    Series4.DataSource := cdsChart;
    Series4.XLabelsSource := 'XField';
    Series4.YValues.ValueSource := 'YField';
    DBChart1.CheckDatasource(Series4);
  end
  else if SpeedButton5.Down then
  begin
    Series5.ColorEachPoint := True;
    Series5.Marks.Style := smsValue;
    Series5.Marks.Visible := True;
    Series5.DataSource := cdsChart;
    Series5.XLabelsSource := 'XField';
    Series5.XValues.ValueSource := 'YField';
    DBChart1.CheckDatasource(Series5);
  end;
  DBChart1.Title.Visible := True;
  if not SpeedButton1.Down then
  begin
    DBChart1.Chart3DPercent := 10;
    DBChart1.View3DOptions.Orthogonal := True;
    DBChart1.View3DOptions.Elevation := 315;
    DBChart1.View3DOptions.Perspective := 0;
    DBChart1.View3DOptions.Rotation := 360;
    DBChart1.View3DWalls := False;
  end
  else DBChart1.View3DOptions.Orthogonal := False;
end;

procedure TReportEditFrm.X_FieldPropertiesInitPopup(Sender: TObject);
begin
  QryFieldSet.First;
  X_Field.Properties.Items.Clear;
  while not QryFieldSet.Eof do
  begin
    X_Field.Properties.Items.Add(QryFieldSet.fieldbyname('FieldName').AsString);
    QryFieldSet.Next;
  end;
end;

procedure TReportEditFrm.Y_FieldPropertiesInitPopup(Sender: TObject);
begin
  QryFieldSet.First;
  Y_Field.Properties.Items.Clear;
  while not QryFieldSet.Eof do
  begin
    Y_Field.Properties.Items.Add(QryFieldSet.fieldbyname('FieldName').AsString);
    QryFieldSet.Next;
  end;
end;

procedure TReportEditFrm.SpAllSelectClick(Sender: TObject);
var bookmark: TBookmarkStr;
begin
  if not QryFieldSet.Active then Exit;
  if trim(Focused_Field) = '' then Exit;
  if (Focused_Field='ISFILTER') or (Focused_Field='ISSORT') or (Focused_Field='ISGROUP' )
     or (Focused_Field='ISBARSHOW' )   or (Focused_Field='ISMERGE')
  then
    if QryFieldSet.RecordCount > 0 then
    begin
      try
        bookmark := QryFieldSet.Bookmark;
        QryFieldSet.DisableControls;
        QryFieldSet.First;
        while not QryFieldSet.Eof do
        begin
          QryFieldSet.Edit;
          QryFieldSet.FieldByName(Focused_Field).AsInteger := 1;
          QryFieldSet.Post;
          QryFieldSet.Next;
        end;
      finally
        QryFieldSet.Bookmark := bookmark;
        QryFieldSet.EnableControls;
      end;
    end;
end;

procedure TReportEditFrm.FieldGridTVEditing(Sender: TcxCustomGridTableView;
  AItem: TcxCustomGridTableItem; var AAllow: Boolean);
begin
  Focused_Field := TcxGridDBTableView(Sender).Columns[AItem.Index].DataBinding.FieldName;
end;

procedure TReportEditFrm.SbUselectClick(Sender: TObject);
var bookmark: TBookmarkStr;
begin
  if not QryFieldSet.Active then Exit;
  if trim(Focused_Field) = '' then Exit;
  if (Focused_Field='ISFILTER') or (Focused_Field='ISSORT') or (Focused_Field='ISGROUP' )
     or (Focused_Field='ISBARSHOW' )   or (Focused_Field='ISMERGE')
  then
    if QryFieldSet.RecordCount > 0 then
    begin
      try
        bookmark := QryFieldSet.Bookmark;
        QryFieldSet.DisableControls;
        QryFieldSet.First;
        while not QryFieldSet.Eof do
        begin
          QryFieldSet.Edit;
          if (QryFieldSet.FieldByName(Focused_Field).AsInteger=1)  then 
          QryFieldSet.FieldByName(Focused_Field).AsInteger := 0
          else
          QryFieldSet.FieldByName(Focused_Field).AsInteger := 1;
          QryFieldSet.Post;
          QryFieldSet.Next;
        end;
      finally
        QryFieldSet.Bookmark := bookmark;
        QryFieldSet.EnableControls;
      end;
    end;
end;

procedure TReportEditFrm.ReportTreeDeletion(Sender: TObject;
  Node: TTreeNode);
begin
  Dispose(Node.Data);
end;

function TReportEditFrm.CreateAccessFile(FileNameStr: string): boolean;
var
  CreateAccess: OleVariant;
begin
  //CreateAccess := CreateOleObject('ADOX.Catalog');
  //CreateAccess.Create('Provider=Microsoft.Jet.OLEDB.4.0;Data   Source=c:\Aceco.mdb');
  try
       CreateAccess:=CreateOleObject('ADOX.Catalog');
       CreateAccess.Create('Provider=Microsoft.Jet.OLEDB.4.0;Data Source=' + FileNameStr);
       Result:=true;
  except
       Result:=False;
  end; 
end;


function TReportEditFrm.CreateAccessFileOld(FileNameStr: string): boolean;
//var
  //Engine: DBEngine;
begin
  {result := false;
  try
    Engine := CoDBEngine.Create;
    Engine.CreateDatabase(FileNameStr, ';LANGID=0x0804;CP=936;COUNTRY=0;', dbEncrypt);
    result := True;
  except
    result := false;
  end;  }
end;

function TReportEditFrm.OpenAdoc(fileStr: string): Boolean;
var
  conStr: string;
begin
  result := false;
  conStr := 'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=' + fileStr + ';Persist Security Info=False';
  ADOC.ConnectionString := conStr;
  try
    ADOC.Connected := True;
    result := true;
  except
    result := false;
  end;
  result := ADOC.Connected;
end;

function TReportEditFrm.CreateTbInfo(ReportId: string): Boolean;
var
  sqlstr: string;
begin
  result := True;
  //2011-07-11 许志祥 增加oracle过程导出
  sqlstr := ' Create   Table   orcl_proc(ReportId text(50),pack_H memo,Pack_body memo) ';
  if not AdoqExecSql(sqlstr) then
  begin
    result := false;
    Application.MessageBox('创建表orcl_proc失败', '提示', MB_OK);
    Exit;
  end;
  //2011-07-11 许志祥 增加oracle过程导出
  sqlstr := ' Create   Table   ReportInfo(ReportId text(50),SqlFile image) ';
  if not AdoqExecSql(sqlstr) then
  begin
    result := false;
    Application.MessageBox('创建表ReportInfo失败', '提示', MB_OK);
    Exit;
  end;

  sqlstr := ' Create   Table   ReportType(SelectFd integer,Treeid  text(255),ReportTypeName text(255),id text(255),Fnumber text(255) '
           +'   ,FParentID  text(255),FImgageIndex integer,FisSystem integer,flongnumber  Memo '
           +' ) ';
  if not AdoqExecSql(sqlstr) then
  begin
    result := false;
    Application.MessageBox('创建表ReportType失败', '提示', MB_OK);
    Exit;
  end;
  sqlstr := 'CREATE TABLE F_Report (	Report_ID text(100),	ReportType text(30) ,	ProcText text (200),	des text (200) ,is_Sizecaption integer,';
  sqlstr := sqlstr + 'BaseSQL Memo ,	GroupSQL Memo ,	isWhere integer ,	Proc_isPara integer ,	Base_isPara integer ,	Proc_Name text(100),';
  sqlstr := sqlstr + 'is_Drag  integer , PACKAGE_NAME text(100),	ChartType integer,	X_Field text(80) ,	Y_Field text(80) , IS_CHART integer,	SizeRank integer ,	ReportInfo memo,IS_MOBILEREPORT integer ,MOBILEREPORT_IMG text(100) )';
  if not AdoqExecSql(sqlstr) then
  begin
    result := false;
    Application.MessageBox('创建表F_Report失败', '提示', MB_OK);
    Exit;
  end;

  sqlstr := 'CREATE TABLE F_ReportSub (	Report_ID text(100),keyFieldName text(100),	ReportType text(30) ,	ProcText text (200),	des text (200) ,';
  sqlstr := sqlstr + 'BaseSQL Memo ,	GroupSQL Memo ,	isWhere integer ,	Proc_isPara integer ,	Base_isPara integer ,	Proc_Name text(100),';
  sqlstr := sqlstr + 'is_Drag  integer ,	ChartType integer,	X_Field text(80) ,	Y_Field text(80) ,	SizeRank integer ,	ReportInfo memo )';
  if not AdoqExecSql(sqlstr) then
  begin
    result := false;
    Application.MessageBox('创建表F_ReportSub失败', '提示', MB_OK);
    Exit;
  end;

  sqlstr := 'CREATE TABLE F_Report1(Report_ID text(100),keyFieldName text(100),FieldChName text(100),Position1 text(50),FieldName text(100)   ';
  sqlstr := sqlstr + ',isVisible integer ,DefWidth integer ,Lsh integer ,isFilter integer,isSort integer ,isBarShow  integer,isMerge  integer,SystemPara_Name text(30)';
  sqlstr := sqlstr + ',StatType text(30) ,isGroup integer ,isGroupDJ text(30) ,formatCount  integer)';

  if not AdoqExecSql(sqlstr) then
  begin
    result := false;
    Application.MessageBox('创建表F_ReportFieldList失败', '提示', MB_OK);
    Exit;
  end;

    sqlstr := 'CREATE TABLE F_Report1Sub(Report_ID text(100),keyFieldName text(100),FieldChName text(100),Position1 text(50),FieldName text(100)   ';
  sqlstr := sqlstr + ',isVisible integer ,DefWidth integer ,Lsh integer ,isFilter integer,isSort integer ,isBarShow  integer,isMerge  integer,SystemPara_Name text(30)';
  sqlstr := sqlstr + ',StatType text(30) ,isGroup integer ,isGroupDJ text(30) ,formatCount  integer)';

  if not AdoqExecSql(sqlstr) then
  begin
    result := false;
    Application.MessageBox('创建表F_ReportFieldListSub失败', '提示', MB_OK);
    Exit;
  end;

  sqlstr := 'CREATE TABLE F_Report2(Report_ID text(100) ,	FieldName text(100),fieldNameOrTableName  text(100),';
  sqlstr := sqlstr + 'FieldChName text(100)  ,isProcPara integer ,DataType  text(30)  ,and_or text(20) ,';
  sqlstr := sqlstr + 'FindValue  memo  ,	DialogType text(60) ,	isMutSelect integer ,isRadioSelect integer,DEFITEM text(100))';
  if not AdoqExecSql(sqlstr) then
  begin
    result := false;
    Application.MessageBox('创建表F_ReportFindList失败', '提示', MB_OK);
    Exit;
  end;
    sqlstr := 'CREATE TABLE F_Report2Sub(Report_ID text(100),keyFieldName text(100) ,pfieldname  text(100),	FieldName text(100),fieldNameOrTableName  text(100),';
  sqlstr := sqlstr + 'FieldChName text(100)  ,isProcPara integer ,DataType  text(30)  ,and_or text(20) ,';
  sqlstr := sqlstr + 'FindValue  memo  ,	DialogType text(60) ,	isMutSelect integer,isSearchField  integer )';
  if not AdoqExecSql(sqlstr) then
  begin
    result := false;
    Application.MessageBox('创建表F_ReportFindListSub失败', '提示', MB_OK);
    Exit;
  end;

end;

function TReportEditFrm.AdoqExecSql(sqlstr: string): Boolean;
begin
  if not ADOC.Connected then Exit;
  try
    with ADOQ do
    begin
      Close;
      SQL.Clear;
      SQL.Text := sqlstr;
      ExecSQL;
    end;
    result := True;
  except
    result := false;
  end;
end;

function TReportEditFrm.AdoqOpenSql(sqlstr: string): Boolean;
begin
  if not ADOC.Connected then Exit;
  try
    with ADOQ do
    begin
      Close;
      SQL.Clear;
      SQL.Text := sqlstr;
      Open;
    end;
    result := True;
  except
    result := false;
  end;
end;

function TReportEditFrm.GetTbInfo(ReportId: string): Boolean;
var
  sqlstr, fileNameStr: string;
begin
  try
    //取得 ReportType 数据
    if ReportId = '' then sqlstr := 'select  Treeid,ReportTypeName, id ,Fnumber '
           +' ,FParentID  ,FImgageIndex ,FisSystem ,flongnumber from ReportType'
    else sqlstr := 'select  Treeid,ReportTypeName ,id ,Fnumber '
                 +' ,FParentID  ,FImgageIndex ,FisSystem ,flongnumber from ReportType  where Treeid=' + '''' + ReportId + '''';
    OpenSql(DMPub.qryTemp, sqlstr);
        //插入标示信息
    getOracleProcSQL(report_id);
    sqlstr := 'select  Treeid ,ReportTypeName,id ,Fnumber,FParentID  ,FImgageIndex ,FisSystem ,flongnumber  from  ReportType  where 1=2';
    AdoqOpenSql(sqlstr);
    CopyDataInfo(DMPub.qryTemp, ADOQ);

  //取得 F_Report 数据
    if ReportId = '' then sqlstr := 'select  report_id,reportType,proctext,des,baseSql,groupSql,iswhere,is_Sizecaption,' +
      'proc_ispara,base_ispara,proc_name,is_drag,chartType,X_field,Y_field,sizeRank,reportInfo ,is_chart,package_name ,IS_MOBILEREPORT,MOBILEREPORT_IMG from  F_Report'
    else sqlstr := 'select  report_id,reportType,proctext,des,baseSql,groupSql,iswhere,proc_ispara,base_ispara,is_Sizecaption ,' +
      'proc_name,is_drag,chartType,X_field,Y_field,sizeRank,reportInfo ,is_chart,package_name,IS_MOBILEREPORT,MOBILEREPORT_IMG from  F_Report  where report_id=' + '''' + ReportId + '''';
    OpenSql(DMPub.qryTemp, sqlstr);
    sqlstr := 'select  *  from  F_Report  where 1=2';
    AdoqOpenSql(sqlstr);
    CopyDataInfo(DMPub.qryTemp, ADOQ);

    //取得 F_ReportFieldList 数据
    if ReportId = '' then
    begin
      sqlstr := 'select report_id,keyfieldname,fieldname,fieldchname,isvisible,defwidth,lsh,isfilter,issort,isBarShow,isMerge,systemPara_name,statType,position as position1,isgroup,isgroupdj,formatcount from F_ReportFieldList where IsNull(user_id,'' '')='' '''
    end
    else
    begin
      sqlstr := 'select report_id,keyfieldname,fieldname,fieldchname,isvisible,defwidth,lsh,isfilter,issort ,isBarShow,isMerge,systemPara_name,statType,position as position1,isgroup,isgroupdj,formatcount from F_ReportFieldList  where report_id=' + '''' + ReportId + ''' and IsNull(user_id,'' '')='' '''
    end;
    OpenSql(DMPub.qryTemp, sqlstr);
    sqlstr := 'select  *  from  F_Report1  where 1=2'; //对应表  F_ReportFieldList
    AdoqOpenSql(sqlstr);
    CopyDataInfo(DMPub.qryTemp, ADOQ);

  //取得 F_ReportFindList 数据
    if ReportId = '' then sqlstr := 'select  report_id,fieldname,fieldNameOrTableName,fieldchname,isprocpara,datatype,and_or,findvalue,dialogtype,ismutselect,isRadioSelect,DEFITEM  from F_ReportFindList'
    else sqlstr := 'select  report_id,fieldname,fieldNameOrTableName,fieldchname,isprocpara,datatype,and_or,findvalue,dialogtype,ismutselect,isRadioSelect,DEFITEM  from F_ReportFindList  where report_id=' + '''' + ReportId + '''';
    OpenSql(DMPub.qryTemp, sqlstr);
    sqlstr := 'select  *  from  F_Report2  where 1=2'; //对应表  F_ReportFieldList
    AdoqOpenSql(sqlstr);
    CopyDataInfo(DMPub.qryTemp, ADOQ);

    ////////////////////////导出子报表数据

      //取得 F_ReportSub 数据
    if ReportId = '' then sqlstr := 'select  report_id,keyfieldname,reportType,proctext,des,baseSql,groupSql,iswhere,' +
      'proc_ispara,base_ispara,proc_name,is_drag,chartType,X_field,Y_field,sizeRank,reportInfo  from  F_ReportSub'
    else sqlstr := 'select  report_id,keyfieldname,reportType,proctext,des,baseSql,groupSql,iswhere,proc_ispara,base_ispara,' +
      'proc_name,is_drag,chartType,X_field,Y_field,sizeRank,reportInfo  from  F_ReportSub  where report_id=' + '''' + ReportId + '''';
    OpenSql(DMPub.qryTemp, sqlstr);
    sqlstr := 'select  *  from  F_ReportSub  where 1=2';
    AdoqOpenSql(sqlstr);
    CopyDataInfo(DMPub.qryTemp, ADOQ);

    //取得 F_ReportFieldListSub 数据
    if ReportId = '' then sqlstr := 'select report_id,keyfieldname,fieldname,fieldchname,isvisible,defwidth,lsh,isfilter,issort,isBarShow,isMerge,systemPara_name,statType,position as position1,isgroup,isgroupdj,formatcount from F_ReportFieldListSub'
    else sqlstr := 'select report_id,keyfieldname,fieldname,fieldchname,isvisible,defwidth,lsh,isfilter,issort ,isBarShow,isMerge,systemPara_name,statType,position as position1,isgroup,isgroupdj,formatcount from F_ReportFieldListSub  where report_id=' + '''' + ReportId + '''';
    OpenSql(DMPub.qryTemp, sqlstr);
    sqlstr := 'select  *  from  F_Report1Sub  where 1=2'; //对应表  F_ReportFieldListSub
    AdoqOpenSql(sqlstr);
    CopyDataInfo(DMPub.qryTemp, ADOQ);

      //取得 F_ReportFindListSub 数据
    if ReportId = '' then sqlstr := 'select  report_id,keyfieldname,pfieldname,fieldname,fieldNameOrTableName,fieldchname,isprocpara,datatype,and_or,findvalue,dialogtype,ismutselect,isSearchField  from F_ReportFindListSub'
    else sqlstr := 'select  report_id,keyfieldname,pfieldname,fieldname,fieldNameOrTableName,fieldchname,isprocpara,datatype,and_or,findvalue,dialogtype,ismutselect,isSearchField  from F_ReportFindListSub  where report_id=' + '''' + ReportId + '''';
    OpenSql(DMPub.qryTemp, sqlstr);
    sqlstr := 'select  *  from  F_Report2Sub  where 1=2'; //对应表  F_ReportFieldList
    AdoqOpenSql(sqlstr);
    CopyDataInfo(DMPub.qryTemp, ADOQ);

    result := true;
  except
    result := false;
  end;

end;

function TReportEditFrm.OpenSql(qry: TClientDataSet; sqlstr: string): Boolean;
begin
  try
    with qry do
    begin
      Close;
      CommandText := sqlstr;
      Open;
    end;
    result := True;
  except
    result := false;
  end;
end;

function TReportEditFrm.CopyDataInfo(qrySrc:TClientDataSet; qryAim: TADOQuery): Boolean;
var
  i: Integer;
begin
  if qrySrc.IsEmpty then Exit;
  with qrySrc do
  begin
    First;
    while not Eof do
    begin
      qryAim.Append;
      for i := 0 to FieldCount - 1 do
      begin
        qryAim.FieldByName(Fields[i].FieldName).Value := Fields[i].Value;
      end;
      Next;
    end;
    if qryAim.State in [dsedit, dsinsert] then qryAim.Post;
    qryAim.UpdateBatch;
  end;
end;

procedure TReportEditFrm.ExportReportData(ReportId: string);
var
  fileNameStr: string;
begin
  inherited;
  sdFile.DefaultExt:='.mdb';
  sdFile.Filter := '*.mdb|*.mdb';
  sdFile.FileName := 'ReportFile' + DateToStr(Date) + '.mdb';
  if sdFile.Execute then
  begin
    if FileExists(ExtractFilePath(sdFile.FileName)+'SQL_script.txt') then
    DeleteFile(ExtractFilePath(sdFile.FileName)+'SQL_script.txt');
    if ADOC.Connected then ADOC.Connected := False;
    fileNameStr := sdFile.FileName;
    if FileExists(fileNameStr) then DeleteFile(fileNameStr);
    if CreateAccessFile(fileNameStr) then
    begin
      if OpenAdoc(fileNameStr) then
      begin
        try
          PicViewfrm_R := TPicViewfrm.Create(nil);
          PicViewfrm_R.CallForMsg('报表数据正在导出，请稍候......', 1);
          PicViewfrm_R.FormStyle := fsStayOnTop;
          PicViewfrm_R.Show;
          PicViewfrm_R.lbMsg.Repaint;
          if CreateTbInfo(ReportId) then
          begin
            if GetTbInfo(ReportId) then
            begin
              PicViewfrm_R.FormStyle := fsNormal;
              PicViewfrm_R.Hide;
              Application.MessageBox('报表配置文件与脚本文件已成功导出! '#13'注意:系统不支持导出存储过程中引用的自定义函数或用户视图脚本!', '提示', MB_OK);
            end
            else begin
              PicViewfrm_R.FormStyle := fsNormal;
              PicViewfrm_R.Hide;
              Application.MessageBox('导出报表数据失败', '提示', MB_OK);
            end;
          end;
        finally
          PicViewfrm_R.Free;
        end;
      end else Application.MessageBox('连接Access文件失败', '提示', MB_OK);
    end else Application.MessageBox('创建临时Access文件失败', '提示', MB_OK);
    ADOC.Connected := False;
  end;

end;

procedure TReportEditFrm.btnOutAllClick(Sender: TObject);
begin
  ExportReportData('');
end;

procedure TReportEditFrm.btnOutSelectClick(Sender: TObject);
begin
  if ReportTree.FocusedNode = nil then
  begin
    Application.MessageBox('请选中要导出的报表', '提示', MB_OK);
    exit;
  end;
  if ReportTree.FocusedNode.HasChildren then
  begin
    Application.MessageBox('不能导出报表的目录，只能导出最下级报表', '提示', MB_OK);
    exit;
  end;
  if ReportTree.FocusedNode <> nil then
    ExportReportData(cdsType.fieldbyname('treeid').AsString);
end;

procedure TReportEditFrm.btnInSelectClick(Sender: TObject);
var
  lreportid, rreportid, reportId,LongNumber: string;
begin
  odFile.Filter := '*.mdb|*.mdb';
  if ReportTree.FocusedNode = nil then
  begin
    Application.MessageBox('请选择报表将导入的目录节点', '提示', MB_OK);
    Exit;
  end;
  if ReportTree.FocusedNode <> nil then
  begin
    reportId := cdsType.fieldbyname('treeid').AsString;

    if not CheckCanImportReport(reportId) then
    begin
      Application.MessageBox('不能将报表导入到报表节点下，请选择报表目录节点', '提示', MB_OK);
      Exit;   
    end;
  end;
  LongNumber := cdsType.fieldbyname('FLONGNUMBER').AsString;
  if odFile.Execute then
  begin
    if Trim(odFile.FileName) = '' then Exit;
    //SetReportId(lreportid, rreportid);
    PicViewfrm_R := TPicViewfrm.Create(nil);
    PicViewfrm_R.CallFormReport(odFile.FileName, lreportid, reportId,LongNumber, 1);
    PicViewfrm_R.ShowModal;
    PicViewfrm_R.Free;
    FreshTreeInfo;
  end;

end;

procedure TReportEditFrm.SetReportId(var lreportid, rReportid: string);
var
  reportid: string;
begin
  if ReportTree.FocusedNode = nil then
  begin
    lreportid := '';
    if ReportTree.FocusedNode.HasChildren then
      rReportid := cdsType.fieldbyname('fnumber').AsString
    else
      rReportid := '1000';
  end else
  begin
    if ReportTree.FocusedNode.HasChildren then
    begin
      reportid := cdsType.fieldbyname('fnumber').AsString;
      lreportid := LeftStr(reportid, Length(reportid) - 4);
      rreportid := rightStr(reportid, 4);
    end else
    begin
      lReportid := cdsType.fieldbyname('fnumber').AsString;
      rReportid := '0001';
    end;
  end;
end;

procedure TReportEditFrm.FreshTreeInfo;
begin
  cdsType.Close;
  cdsType.CommandText:='select *  from ReportType order by FLevel,fnumber  ' ;
  cdsType.Open;
  self.Caption := '报表配置中心';
end;

procedure TReportEditFrm.btnInAllClick(Sender: TObject);
begin
  inherited;
  odFile.DefaultExt:='.mdb';
  odFile.Filter := '*.mdb|*.mdb';
  if odFile.Execute then
  begin
    if Trim(odFile.FileName) = '' then Exit;
    PicViewfrm_R := TPicViewfrm.Create(nil);
    PicViewfrm_R.CallFormReport(odFile.FileName, '', '','', 2);
    PicViewfrm_R.ShowModal;
    PicViewfrm_R.Free;
    DeleteAllForamt; //删除格式及查询方案
    FreshTreeInfo;   //刷新报表
  end;

end;

function TReportEditFrm.SaveProcSqlToFile(ReportId: string): string;
var
  sqlList: TStringList;
  ReportIdold, ReportIdCur, sqlstr, fileNameStr: string;
begin
  result := '';
  ExecPorcSql(ReportId);
  try
    sqlList := TStringList.Create;
    with DMPub.db_getSQL do
    begin
      if IsEmpty then Exit;
      First;
      ReportIdold := '';
      while not Eof do
      begin
        ReportIdCur := fieldbyname('Report_id').AsString;
        if SameText(ReportIdCur, ReportIdold) then
        begin
          sqlstr := sqlstr + fieldbyname('text').AsString;
          sqlList.Delete(sqlList.Count - 1);
          sqlList.Add(sqlstr);
        end
        else
        begin
          sqlList.Add(' GO ');
          sqlstr := GetSqlStr(fieldbyname('proc_name').AsString);
          sqlList.Add(sqlstr);
          sqlList.Add(' GO ');
          sqlstr := fieldbyname('text').AsString;
          //sqlstr := #10#13 + '  GO  ' + #10#13 + GetSqlStr(fieldbyname('proc_name').AsString) + fieldbyname('text').AsString;
          sqlList.Add(sqlstr);
        end;
        ReportIdold := fieldbyname('Report_id').AsString;
        Next;
      end;
    end;
    if sqlList.Count > 0 then
    begin
      sqlList.Add('GO');
      fileNameStr := ExtractFilePath(Application.ExeName) + 'sql.sql';
      sqlList.SaveToFile(fileNameStr);
      sqlList.SaveToFile(ExtractFilePath(sdFile.FileName)+'SQL_script.txt');
      result := fileNameStr;
    end;
  finally
    sqlList.Free;
  end;

end;

procedure TReportEditFrm.ExecPorcSql(reportId: string);
begin
  with DMPub.db_getSQL do
  begin
    Close;
    CommandText := 'exec  dt_GetReportProcSql  :@report_id';
    Params.ParamByName('@report_id').Value := reportId;
    open;
  end;
end;

function TReportEditFrm.GetSqlStr(procName: string): string;
begin
  result := ' IF EXISTS(SELECT NAME FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N''';
  result := result + procName + ''')AND OBJECTPROPERTY(id,N''' + 'IsProcedure' + ''') = 1) DROP PROCEDURE ';
 //result := result + procName + #10#13 + '  GO  ' + #10#13;
  result := result + procName;
end;

function TReportEditFrm.CheckCanImportReport(reportId: string): Boolean;
var
  sqlstr: string;
begin
  result := True;
  sqlstr := 'select  ReportType.*  from  ReportType,F_report  where  ReportType.treeid=F_report.report_id  and  treeid=' + '''' + reportId + '''';
  with DMPub.qryTemp do
  begin
    Close;
    CommandText:= sqlstr;
    Open;
    if not IsEmpty then result := False;
  end;
end;

procedure TReportEditFrm.FieldGridTVKeyFieldNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
   keyFieldName:string;
begin
  inherited;
  if (BillState=0) then
  begin
    ShowMsg('不在编辑状态,如修改报表配置请单据【编辑】按钮!');
    Abort;
  end;
  if QryFieldSet.IsEmpty  then  Exit;
  keyFieldName:=Trim(QryFieldSet.FieldByName('FieldName').AsString);
  if keyFieldName='' then
  begin
      application.MessageBox('字段名称不能为空，请先输入！', '提示', MB_OK);
      Exit;
  end;
  SubReportEditFrm:=TSubReportEditFrm.create(nil);
  SubReportEditFrm.CallForm(report_id,keyFieldName,QryFieldSet);
  SubReportEditFrm.showmodal;
  SubReportEditFrm.free;
end;

//initialization
//  RegisterClass(TReportEditFrm);
procedure TReportEditFrm.cbPackage_namePropertiesInitPopup(
  Sender: TObject);
begin
  TcxComboBoxProperties(cbPackage_name.Properties).Items.Clear;
  with DMPub.db_Query do
  begin
    Close;
    CommandText:='SELECT   object_name   FROM   User_Procedures  where procedure_name  is  not null';
    Open;
    if (not IsEmpty)  then
    begin
      while not eof do
      begin
        TcxComboBoxProperties(cbPackage_name.Properties).Items.Add(fieldbyname('object_name').AsString);
        Next;
      end;
    end;
  end;
end;

procedure TReportEditFrm.Proc_NamePropertiesInitPopup(Sender: TObject);
begin
  TcxComboBoxProperties(proc_name.Properties).Items.Clear;
  //if cbPackage_name.Text <>'' then
  begin
    with DMPub.db_Query do
    begin
      Close;
      CommandText:='select name as procedure_name from sys.procedures where type = ''P''';
                  //'select procedure_name from User_Procedures where object_name='''+trim(cbPackage_name.Text)+'''';
      Open;
      if (not IsEmpty)  then
      begin
        while not eof do
        begin
          TcxComboBoxProperties(proc_name.Properties).Items.Add(fieldbyname('procedure_name').AsString);
          Next;
        end;
      end;
    end;
  end;
end;

procedure TReportEditFrm.QryFieldSetISSORTSetText(Sender: TField;
  const Text: String);
begin
  if text='True' then
  begin
    Sender.DataSet.FieldByName(Sender.FieldName).AsInteger:=1;
    Sender.DataSet.Post;
  end
  else
  begin
    Sender.DataSet.FieldByName(Sender.FieldName).AsInteger:=1;
    Sender.DataSet.Post;
  end;
end;

procedure TReportEditFrm.QryReportBeforeEdit(DataSet: TDataSet);
begin
  if (BillState=0) then
  begin
    ShowMsg('不在编辑状态,如修改报表配置请单据【编辑】按钮!');
    Abort;
  end;
end;

procedure TReportEditFrm.QryFindFieldBeforeEdit(DataSet: TDataSet);
begin
  if (BillState=0) then
  begin
    ShowMsg('不在编辑状态,如修改报表配置请单据【编辑】按钮!');
    Abort;
  end;
end;

procedure TReportEditFrm.QryFieldSetBeforeEdit(DataSet: TDataSet);
begin
  if (BillState=0) then
  begin
    ShowMsg('不在编辑状态,如修改报表配置请单据【编辑】按钮!');
    Abort;
  end;
end;

procedure TReportEditFrm.QryFieldSetBeforeInsert(DataSet: TDataSet);
begin
  if (BillState=0) then
  begin
    ShowMsg('不在编辑状态,如修改报表配置请单据【编辑】按钮!');
    Abort;
  end;
end;

procedure TReportEditFrm.QryFieldSetBeforeDelete(DataSet: TDataSet);
begin
  if (BillState=0) then
  begin
    ShowMsg('不在编辑状态,如修改报表配置请单据【编辑】按钮!');
    Abort;
  end;
end;

procedure TReportEditFrm.QryFindFieldBeforeDelete(DataSet: TDataSet);
begin
  if (BillState=0) then
  begin
    ShowMsg('不在编辑状态,如修改报表配置请单据【编辑】按钮!');
    Abort;
  end;
end;

procedure TReportEditFrm.QryFindFieldBeforeInsert(DataSet: TDataSet);
begin
  if (BillState=0) then
  begin
    ShowMsg('不在编辑状态,如修改报表配置请单据【编辑】按钮!');
    Abort;
  end;
end;

procedure TReportEditFrm.cxGridDBTableView1FINDVALUEPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  if (BillState=0) then
  begin
    ShowMsg('不在编辑状态,如修改报表配置请单据【编辑】按钮!');
    Abort;
  end;
  SetSQL(QryFindField);
end;

procedure TReportEditFrm.SpeedButton6Click(Sender: TObject);
begin
  if Application.MessageBox('确认清除所有用户的查询方案信息?','提示',MB_YESNO)=id_yes then
  begin
    with DMPub.db_update do
    begin
      Close;
      CommandText:='delete from F_ReportQuery where report_id='''+report_id+'''';
      Execute;
      Close;
      CommandText:='delete from F_ReportQuery_list where report_id='''+report_id+'''';
      Execute;
      Close;
      CommandText:='delete from F_QueryGroupDef where report_id='''+report_id+'''';
      Execute;
      DMPub.SocketConn.AppServer.ServerLog('清除了编号为:【'+QryReport.FieldByName('Report_ID').AsString+' 】名称为:【'+report_Name.Caption+'】报表所有用户的查询方案信息',0);
    end;
  end;
end;

procedure TReportEditFrm.QryFindFieldReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  errorMsg:=e.Message;
end;

procedure TReportEditFrm.QryReportReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
   errorMsg:=e.Message;
end;

procedure TReportEditFrm.QryFieldSetReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
   errorMsg:=e.Message;
end;

procedure TReportEditFrm.getOracleProcSQL(report_id: string);
var accQry:TADOQuery;
    e_sql:string;
begin
  accQry:=TADOQuery.Create(nil);
  accQry.Connection:=ADOC;
  accQry.Close;
  accQry.SQL.Clear;
  accQry.SQL.Add('select * from orcl_proc');
  accQry.Open;
  try
    if Trim(report_id)<>'' then
    begin
      with DMPub.db_Query do
      begin
        Close;
        CommandText:='select report_id,package_Name from F_REPORT where report_id='''+trim(report_id)+'''';
        Open;
      end;
      if DMPub.db_Query.FieldByName('package_Name').AsString<>'' then
      begin
        with DMPub.db_Qry do
        begin
          Close;
          CommandText:='select text from user_source where type=''PACKAGE'''+' and NAME='''+trim(DMPub.db_Query.FieldByName('package_Name').AsString)+'''';
          Open;
          if not IsEmpty then
          begin
            e_sql:='create or replace  ';
            while not eof do
            begin
              e_sql:=e_sql+  FieldByName('text').AsString+' ';
              Next;
            end;
          end;
          if e_sql<>'' then
          begin
            accQry.Append;
            accQry.FieldByName('ReportId').AsString:=report_id;
            accQry.FieldByName('pack_H').AsString:=e_sql;
            saveScript(e_sql,ExtractFilePath(sdFile.FileName)+'SQL_script.txt');
          end;
        end;
        with DMPub.db_Qry do
        begin
          Close;
          CommandText:='select text from user_source where type=''PACKAGE BODY'''+' and NAME='''+trim(DMPub.db_Query.FieldByName('package_Name').AsString)+'''';
          Open;
          if not IsEmpty then
          begin
            e_sql:='create or replace  ';
            while not eof do
            begin
              e_sql:=e_sql+  FieldByName('text').AsString+' ';
              Next;
            end;
          end;
          if e_sql<>'' then
          begin
            accQry.FieldByName('pack_body').AsString:=e_sql;
            saveScript(e_sql,ExtractFilePath(sdFile.FileName)+'SQL_script.txt');
            accQry.Post;
          end;
        end;
      end;
    end
    else
    begin
      with DMPub.db_Query do
      begin
        Close;
        CommandText:='select report_id, package_Name from F_REPORT';
        Open;
      end;
      if not DMPub.db_Query.IsEmpty then
      begin
        while not  DMPub.db_Query.Eof do
        begin
          if DMPub.db_Query.FieldByName('package_Name').AsString<>'' then
          begin
            with DMPub.db_Qry do
            begin
              Close;
              CommandText:='select text from user_source where type=''PACKAGE'''+' and NAME='''+trim(DMPub.db_Query.FieldByName('package_Name').AsString)+'''';
              Open;
              if not IsEmpty then
              begin
                e_sql:='create or replace  ';
                while not eof do
                begin
                  e_sql:=e_sql+  FieldByName('text').AsString+' ';
                  Next;
                end;
              end;
              if e_sql<>'' then
              begin
                accQry.Append;
                accQry.FieldByName('ReportId').AsString:=DMPub.db_Query.fieldbyname('report_id').AsString;
                accQry.FieldByName('pack_H').AsString:=e_sql;
                saveScript(e_sql,ExtractFilePath(sdFile.FileName)+'SQL_script.txt');
              end;
            end;
            with DMPub.db_Qry do
            begin
              Close;
              CommandText:='select text from user_source where type=''PACKAGE BODY'''+' and NAME='''+trim(DMPub.db_Query.FieldByName('package_Name').AsString)+'''';
              Open;
              if not IsEmpty then
              begin
                e_sql:='create or replace  ';
                while not eof do
                begin
                  e_sql:=e_sql+  FieldByName('text').AsString+' ';
                  Next;
                end;
              end;
              if e_sql<>'' then
              begin
                accQry.FieldByName('pack_body').AsString:=e_sql;
                saveScript(e_sql,ExtractFilePath(sdFile.FileName)+'SQL_script.txt');
                accQry.Post;
              end;
            end;
          end;
          DMPub.db_Query.Next;
        end;
      end;
    end;
  finally
    accQry.Free;
  end;
end;

procedure TReportEditFrm.SpeedButton7Click(Sender: TObject);
begin
  if Application.MessageBox('确认清除所有用户的个人样式设置?','提示',MB_YESNO)=id_yes then
  begin
    with DMPub.db_update do
    begin
      Close;
      CommandText:='delete from F_ReportFieldList where IsNull(user_id,'' '')<>'' '' and  report_id='''+report_id+'''';
      Execute;
      DMPub.SocketConn.AppServer.ServerLog('清除了编号为:【'+QryReport.FieldByName('Report_ID').AsString+' 】名称为:【'+report_Name.Caption+'】报表所有用户的个人样式',0);
    end;
  end;
end;

procedure TReportEditFrm.DeleteAllForamt;
begin
  with DMPub.db_update do
  begin
    Close;
    CommandText:='delete from F_ReportQuery';
    Execute;
    Close;
    CommandText:='delete from F_ReportQuery_list';
    Execute;
    Close;
    CommandText:='delete from F_QueryGroupDef ';
    Execute;
    DMPub.SocketConn.AppServer.ServerLog('覆盖导入报表清除了所有用户的查询方案信息',0);
  end;
  with DMPub.db_update do
  begin
    Close;
    CommandText:='delete from F_ReportFieldList where IsNull(user_id,'' '')<>'' ''';
    Execute;
    DMPub.SocketConn.AppServer.ServerLog('覆盖导入报表清除了所有用户的个人样式',0);
  end;
end;

procedure TReportEditFrm.cxDBCheckBox1Click(Sender: TObject);
begin
  cxGridDBTableView1Column2.Visible := cxDBCheckBox1.Checked;
end;

procedure TReportEditFrm.ReportTreeFocusedNodeChanged(
  Sender: TcxCustomTreeList; APrevFocusedNode,
  AFocusedNode: TcxTreeListNode);
begin
  if (not AFocusedNode.HasChildren) then
  begin
    report_name.Caption := cdsType.fieldbyname('REPORTTYPENAME').AsString;
    Lbreport_id.Caption := cdsType.fieldbyname('Fnumber').AsString;
    report_id := cdsType.fieldbyname('treeid').AsString;
    ClientPl.Enabled := True;
    LoadReportData(report_id);
    DelBill.Enabled := True;
    ClientPl.Visible := True;
    ClientPl.Ctl3D := False;
  end
  else
  begin
    report_id := '';
    Lbreport_id.Caption := '';
    report_name.Caption := '';
    ClientPl.Enabled := False;
    closeQry;
    DelBill.Enabled := False;
    ClientPl.Visible := False;
    ClientPl.Ctl3D := True;
  end;
end;

procedure TReportEditFrm.dxEditClick(Sender: TObject);
begin
  if ReportTree.FocusedNode = nil then Exit;
  if (not ReportTree.FocusedNode.HasChildren) then
  begin
    BillState:=1;
    dxEdit.Enabled:=False;
    dxbrlrgbtnSaveBill.Enabled:=True;
  end;
end;

end.

