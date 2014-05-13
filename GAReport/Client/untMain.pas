unit untMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UntRemSql, ComCtrls, ExtCtrls, StdCtrls, Grids, DBGrids, DB, adodb,
  cxGraphics, cxCustomData, cxStyles, cxTL, cxMaskEdit,
  cxTLdxBarBuiltInMenu, dxSkinsCore, dxSkinOffice2007Black,
  dxSkinscxPCPainter, Menus, ImgList, DBClient, dxGDIPlusClasses, cxPC,
  cxInplaceContainer, cxDBTL, cxControls, cxTLData, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters,IniFiles, dxSkinsdxBarPainter, dxBar, cxClasses;

type
  Tfrm_main = class(TForm)
    plleft: TPanel;
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
    mainPg: TcxPageControl;
    maints: TcxTabSheet;
    mainImg: TImage;
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
    dsType: TDataSource;
    TreeImg: TImageList;
    TreePm: TPopupMenu;
    FindName: TMenuItem;
    N4: TMenuItem;
    N2: TMenuItem;
    ExitPM: TMenuItem;
    dxbrmngr1: TdxBarManager;
    dxbrmngr1Bar1: TdxBar;
    dxbrmngr1Bar2: TdxBar;
    dxbrlrgbtnNewBill: TdxBarLargeButton;
    dxbrlrgbtnSaveBill: TdxBarLargeButton;
    FindBillList: TdxBarLargeButton;
    dxbrlrgbtnKExport: TdxBarLargeButton;
    dxbrlrgbtnFirstBill: TdxBarLargeButton;
    dxbrlrgbtnQBill: TdxBarLargeButton;
    dxbrlrgbtnNextBill: TdxBarLargeButton;
    dxbrlrgbtnBill: TdxBarLargeButton;
    dxbrlrgbtnEduce: TdxBarLargeButton;
    dxbrlrgbtnprint: TdxBarLargeButton;
    dxbrlrgbtnPrintSet: TdxBarLargeButton;
    dxbrlrgbtnExitEdit: TdxBarLargeButton;
    dxbrlrgbtnpause: TdxBarLargeButton;
    Format: TdxBarLargeButton;
    refData: TdxBarLargeButton;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarSubItem2: TdxBarSubItem;
    dxBarSubItem3: TdxBarSubItem;
    dxBarSubItem4: TdxBarSubItem;
    dxBarSubItem5: TdxBarSubItem;
    dxBarLargeButton3: TdxBarLargeButton;
    dxBarSubItem6: TdxBarSubItem;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarButton10: TdxBarButton;
    dxBarButton11: TdxBarButton;
    dxBarButton12: TdxBarButton;
    dxBarButton13: TdxBarButton;
    dxBarButton14: TdxBarButton;
    dxBarSeparator1: TdxBarSeparator;
    RoleRight: TdxBarLargeButton;
    dxBarButton15: TdxBarButton;
    dxBarSubItem7: TdxBarSubItem;
    dxBarButton16: TdxBarButton;
    dxBarSubItem8: TdxBarSubItem;
    dxBarButton17: TdxBarButton;
    dxBarButton18: TdxBarButton;
    expStaticReport: TdxBarButton;
    dxBarButton19: TdxBarButton;
    dxBarSubItem9: TdxBarSubItem;
    dxBarButton20: TdxBarButton;
    dxBarSubItem10: TdxBarSubItem;
    dxBarButton21: TdxBarButton;
    dxbrlrgbtn1: TdxBarLargeButton;
    exportExcel: TdxBarLargeButton;
    ExportTEXT: TdxBarLargeButton;
    Printprevi: TdxBarLargeButton;
    print: TdxBarLargeButton;
    ReportSet: TdxBarLargeButton;
    FormatSet: TdxBarLargeButton;
    Blbaudit: TdxBarLargeButton;
    BlbUaudit: TdxBarLargeButton;
    ilimage: TImageList;
    Splitter1: TSplitter;
    dxbrpmn1: TdxBarPopupMenu;
    dxbrpmn2: TdxBarPopupMenu;
    dxBar3: TdxBarPopupMenu;
    dxBar4: TdxBarPopupMenu;
    DxBar5: TdxBarPopupMenu;
    qryReportType: TADOQuery;
    ImageList16: TImageList;
    procedure FormCreate(Sender: TObject);
//    procedure Button5Click(Sender: TObject);
//    procedure Button2Click(Sender: TObject);
//    procedure Button4Click(Sender: TObject);
//    procedure Button1Click(Sender: TObject);
//    procedure Button3Click(Sender: TObject);
//    procedure Button6Click(Sender: TObject);
    procedure mainPgCanClose(Sender: TObject; var ACanClose: Boolean);
    procedure mainPgChange(Sender: TObject);
    procedure mainPgDblClick(Sender: TObject);
    procedure dxbrlrgbtnExitEditClick(Sender: TObject);
    procedure dxBarButton6Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    QryShower, Qryopt: TADOQuery;
  end;

var
  frm_main: Tfrm_main;
implementation

uses untfunctions, fmLogin;

{$R *.dfm}

{执行文件并等待完毕}
function ExecAndWait(const Filename, Params: string; WindowState: word): Boolean;
var
  SUInfo: TStartupInfo;
  ProcInfo: TProcessInformation;
  CmdLine: string;
begin
  CmdLine := filename + ' ' + params;
  FillChar(SUInfo, SizeOf(SUInfo), #0);
  with SUInfo do begin
    cb := SizeOf(SUInfo);
    dwFlags := STARTF_USESHOWWINDOW;
    wShowWindow := WindowState;
  end;      
  Result := CreateProcess(nil, PChar(CmdLine), nil, nil, FALSE,
    CREATE_NEW_CONSOLE or NORMAL_PRIORITY_CLASS, nil,
    PChar(ExtractFilePath(Filename)), SUInfo, ProcInfo);
  if Result then begin
    //等待应用程序结束
    WaitForSingleObject(ProcInfo.hProcess, INFINITE);
    //删除句柄
    CloseHandle(ProcInfo.hProcess);
    CloseHandle(ProcInfo.hThread);
  end;
end;

function CovFileDate(Fd:_FileTime):TDateTime;
var
  Tct:_SystemTime;
  Temp:_FileTime;
begin
  FileTimeToLocalFileTime(Fd,Temp);
  FileTimeToSystemTime(Temp,Tct);
  CovFileDate:=SystemTimeToDateTime(Tct);
end;

function GetFileTime(const Tf:string):string;{ 获取文件时间，Tf表示目标文件路径和名称 }
const
Model='yyyy/mm/dd hh:mm:ss'; { 设定时间格式 }
var
  Tp:TSearchRec; { 申明Tp为一个查找记录 }
  T1,T2,T3:string;
begin
  FindFirst(Tf,faAnyFile,Tp); { 查找目标文件 }
//  T1:=FormatDateTime(Model, CovFileDate(Tp.FindData.ftCreationTime));
//  { 返回文件的创建时间 }
  T2:=FormatDateTime(Model,CovFileDate(Tp.FindData.ftLastWriteTime));
  Result:=T2;
  { 返回文件的修改时间 }
//  T3:=FormatDateTime(Model,Now);
//  { 返回文件的当前访问时间 }
  FindClose(Tp);
end;

procedure Tfrm_main.FormCreate(Sender: TObject);
//var
// ini: Tinifile;
// ServerName:string;
// ServerPort: Integer;
begin
//  ini := Tinifile.Create(ExtractFilePath(paramstr(0)) + 'STOffice.ini');
//  try
//    //取配置文件
//    ServerName := Ini.ReadString('ServerConfig', 'ServerName', '127.0.0.1');
//    ServerPort  := Ini.ReadInteger('ServerConfig', 'Port', '211');
//  finally
//    ini.Free;
//  end;
//  //因为ADO对象 不能再没有连接数据库的情况下使用，所以建立一个空的access数据库连接
//  Gob_DBMrg := TDBMrg.Create(TDBMrg.GetAccessConnStr(GetCurrPath + 'temp.mdb'));
//
//  //创建客户端对象  连接服务端9000端口
//  Gob_Rmo := TRmoHelper.Create(9000);
//  //允许post时 同时填充id字段
//  Gob_Rmo.FRmoClient.IsInserIDfield := True;
//  //连接服务端
//  if not Gob_Rmo.ReConnSvr(ServerName) then
//  begin
//    ErrorInfo('连接数据库服务程序失败，请先启动服务程序!');
//    Application.Terminate;
//  end;

  if not Login_System then
  begin
    Application.Terminate;
    Abort;
  end;

  //获取一个ADOQUERY
  Qryopt := Gob_DBMrg.GetAnQuery('Qryopt');
  //获取另外一个adoquery 作为和dbgrid连接
  QryShower := Gob_DBMrg.GetAnQuery('qry_show');
//  ds1.DataSet := QryShower;
//
//  Button5.Click;
end;

//procedure Tfrm_main.Button5Click(Sender: TObject);
//begin
//  //查询远程数据库的表 并显示到dbgrid里边
//  Gob_Rmo.OpenTable('treeinfo', QryShower);
//
//end;
//
//procedure Tfrm_main.Button2Click(Sender: TObject);
//var
//  lid: Integer;
//begin
//  //如果数据集是空的 就查询一下
//  if QryShower.IsEmpty then
//    Button5.Click;
//
//  //获取下一条记录的ID
//  QryShower.Append;
//  QryShower.FieldByName('Caption').AsString := '新增记录' + QryShower.FieldByName('id').AsString;
//  QryShower.FieldByName('parentid').AsInteger := -1;
//  QryShower.FieldByName('Flevel').AsInteger := 10;
//  QryShower.FieldByName('kind').AsInteger := 1;
//  QryShower.Post;
//  TipInfo('新增记录成功');
//
//
//end;
//
//procedure Tfrm_main.Button4Click(Sender: TObject);
//begin
//  QryShower.Delete;
//  TipInfo('删除记录成功');
//end;
//
//procedure Tfrm_main.Button1Click(Sender: TObject);
//begin
//  //执行一条语句
//  Gob_Rmo.ExecAnSql('delete from treeinfo where id=%d', [QryShower.FieldByName('id').AsInteger]);
//end;
//
//procedure Tfrm_main.Button3Click(Sender: TObject);
//begin
//  //执行一条语句
//  Gob_Rmo.OpenDataset(QryShower, 'select  * from treeinfo where id> 0', []);
//  TipInfo('共查询出%d条记录', [QryShower.RecordCount]);
//end;
//
//procedure Tfrm_main.Button6Click(Sender: TObject);
//begin
//  //如果语句错误 可以获得和本地数据库一致的错误提示，以便发现问题
//  Gob_Rmo.OpenDataset(QryShower, 'select * from treeinfo where Fid> 0', []);
//end;


procedure Tfrm_main.mainPgCanClose(Sender: TObject;
  var ACanClose: Boolean);
begin
  if (mainPg.ActivePageIndex=0) then  ACanClose:=False;
end;

procedure Tfrm_main.mainPgChange(Sender: TObject);
begin
//  if mainPg.ActivePage<>nil then
//  if mainPg.ActivePageIndex<>0 then
//  begin
//    pg_report_id:=Copy(mainPg.ActivePage.Name,3,Length(mainPg.ActivePage.Name));
//    pg_viewObj:=TViewFrm(mainPg.ActivePage.FindComponent('frm'+pg_report_id));
//  end
//  else
//  begin
//    pg_report_id:='';
//    pg_viewObj:=nil;
//  end;
end;

procedure Tfrm_main.mainPgDblClick(Sender: TObject);
begin
  if mainPg.ActivePageIndex<>0 then
    mainPg.ActivePage.Free;
end;

procedure Tfrm_main.dxbrlrgbtnExitEditClick(Sender: TObject);
begin
  Self.close;
end;

procedure Tfrm_main.dxBarButton6Click(Sender: TObject);
begin
  Self.close;
end;

procedure Tfrm_main.FormShow(Sender: TObject);
begin
  Gob_Rmo.OpenTable('ReportType', qryReportType);
end;

end.

