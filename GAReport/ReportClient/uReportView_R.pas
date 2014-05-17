unit uReportView_R;

interface

uses
  Windows, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxStyles, Menus, DB, ADODB,
  dxBar,



  CCubeX4_TLB, DBClient,


  dxStatusBar,
  cxPC,IniFiles,DateUtils,ShellAPI, uView_R,

  ImgList, cxClasses, cxControls,
  IdComponent,

  UntTIO_R, IdBaseComponent, IdRawBase, IdRawClient,
  IdIcmpClient, cxTL,
  cxInplaceContainer, cxDBTL, cxTLData, cxGraphics, cxCustomData,
  cxMaskEdit, cxTLdxBarBuiltInMenu, dxGDIPlusClasses, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinsdxStatusBarPainter, dxSkinscxPCPainter, dxSkinsdxBarPainter,
  cxMemo;
  //cxDBProgressBar
type
  TFormClass = class of TViewFrm;

type
  TFldCalss = class
    FieldName: string;
    DisplayName: string;
  end;
type
  TReportViewFrm = class(TForm)
    Splitter1: TSplitter;
    dxbrmngr1: TdxBarManager;
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
    dxbrlrgbtn1: TdxBarLargeButton;
    dxbrlrgbtnpause: TdxBarLargeButton;
    Format: TdxBarLargeButton;
    exportExcel: TdxBarLargeButton;
    ExportTEXT: TdxBarLargeButton;
    Printprevi: TdxBarLargeButton;
    print: TdxBarLargeButton;
    ReportSet: TdxBarLargeButton;
    FormatSet: TdxBarLargeButton;
    Blbaudit: TdxBarLargeButton;
    BlbUaudit: TdxBarLargeButton;
    refData: TdxBarLargeButton;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxbrpmn1: TdxBarPopupMenu;
    ilimage: TImageList;
    dxbrpmn2: TdxBarPopupMenu;
    DxBar5: TdxBarPopupMenu;
    dxBar3: TdxBarPopupMenu;
    dxBar4: TdxBarPopupMenu;
    TreeImg: TImageList;
    cxStyleRt: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    TreePm: TPopupMenu;
    FindName: TMenuItem;
    N2: TMenuItem;
    ExitPM: TMenuItem;
    PopupMenu1: TPopupMenu;
    Bmp1: TMenuItem;
    N1: TMenuItem;
    MenuItem1: TMenuItem;
    N3: TMenuItem;
    SaveDialog1: TSaveDialog;
    cdsChart: TClientDataSet;
    N4: TMenuItem;
    stat1: TdxStatusBar;
    dxbrmngr1Bar2: TdxBar;
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
    mainPg: TcxPageControl;
    maints: TcxTabSheet;
    mainImg: TImage;
    mainPm: TPopupMenu;
    updateImg: TMenuItem;
    Rlogin: TMenuItem;
    N7: TMenuItem;
    Pm_exit: TMenuItem;
    OpenDg: TOpenDialog;
    dxBarButton15: TdxBarButton;
    N5: TMenuItem;
    N6: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    Saveimg: TSaveDialog;
    N10: TMenuItem;
    dxBarSubItem7: TdxBarSubItem;
    dxBarButton16: TdxBarButton;
    dxBarSubItem8: TdxBarSubItem;
    dxBarButton17: TdxBarButton;
    dxBarButton18: TdxBarButton;
    expStaticReport: TdxBarButton;
    reportExportST: TSaveDialog;
    dxBarButton19: TdxBarButton;
    dxBarSubItem9: TdxBarSubItem;
    dxBarButton20: TdxBarButton;
    cdsQueryFind: TADODataSet;
    dxBarSubItem10: TdxBarSubItem;
    dxBarButton21: TdxBarButton;
    Timer1: TTimer;
    ICMP: TIdIcmpClient;
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
    dsType: TDataSource;
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
    procedure FormCreate(Sender: TObject);
    procedure dxbrlrgbtnExitEditClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure exportExcelClick(Sender: TObject);
    procedure refDataClick(Sender: TObject);
    procedure ExitPMClick(Sender: TObject);
    procedure dxBarButton5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dxBarButton6Click(Sender: TObject);
    procedure dxBarButton13Click(Sender: TObject);
    procedure mainPgCanClose(Sender: TObject; var ACanClose: Boolean);
    procedure mainPgChange(Sender: TObject);
    procedure dxbrlrgbtn1Click(Sender: TObject);
    procedure mainPgDblClick(Sender: TObject);
    procedure Pm_exitClick(Sender: TObject);
    procedure RloginClick(Sender: TObject);
    procedure updateImgClick(Sender: TObject);
    procedure expStaticReportClick(Sender: TObject);
    procedure dxBarButton19Click(Sender: TObject);
    procedure dxBarButton12Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure RoleRightClick(Sender: TObject);
    procedure dxbrlrgbtnKExportClick(Sender: TObject);
    procedure ReportTreeDblClick(Sender: TObject);
  private
    rect, bmprect: Trect;
    bmp: Tbitmap;
    SizeNameList,WarList: TStringList;
    fColIndex,G_index:Integer;
    fSubReportFlag:Boolean;
    isRefStart:Boolean;
    function CheckHasSubReport(reportid, keyfieldName: string): Boolean;
    function CreatePageList1(frmclass:TFormClass): TForm;

    { Private declarations }
  public
    { Public declarations }
    report_id,pg_report_id,G_UpdateMd5,G_FileMd5: string;
    report_Name: string;
    resultSQL: string;
    isopen: Boolean;
    SizeRank: Boolean;
    viewObj,pg_viewObj:TViewFrm;    //pg_viewObj 当前报表对象
    function getReportType(report_id: string): Integer; //获取报表类型1 普通报表 2交叉报表

    function getFieldChName(FieldName: string): string;

    function Ping_Ser: Boolean;

  end;

  //执行文件并等待完毕
  function ExecAndWait(const Filename, Params: string; WindowState: word): Boolean;

var
  ReportViewFrm_R: TReportViewFrm;
  //系统类型：0－EAS，1－K/3
  

implementation
uses DMPublic_R, STPublic_R, uFormatcxGrid_R
  , uReportPub_R, uReportEdit_R,uRight_R,uRoleRight_R;

const code = '44444444';
 var
 bmpbar : TBitMap;
 ispaint:Boolean;
 isUpdate:Boolean=False;
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


procedure TReportViewFrm.FormCreate(Sender: TObject);
var
  ini: TIniFile;
  _DllReg_Bat,FilePath,dir: string;
begin
  inherited;
  //注册DLL
  _DllReg_Bat := ExtractFilePath(paramstr(0)) + 'CCubeX4\CCubeX4_Install.bat';
  if FileExists(_DllReg_Bat) then
    ExecAndWait(_DllReg_Bat, '', SW_HIDE);
  try
    ini:=Tinifile.Create(ExtractFilePath(Application.ExeName) + '\STOffice.ini');
    with DMPub.SocketConn do
    begin
      Connected:=False;
      Host:=ini.ReadString('DBconfig','ServerName','');
      Port:=ini.ReadInteger('DBconfig','port',211);
      G_Debug:=  ini.ReadBool('DBconfig','Debug',False);
      G_NotPing:= ini.ReadBool('DBconfig','NotPing',False);
      G_UpdateMd5:=ini.ReadString('DBconfig','UpdateMD5','');
      G_FileMd5:=ini.ReadString('DBconfig','FileMD5','');
      Connected:=True;
    end;
    G_UserInfo.Server_IP:= DMPub.SocketConn.Host;
    G_UserInfo.Server_port:=IntToStr(DMPub.SocketConn.Port);
    if not cdsType.Active then cdsType.Open;
    self.Caption := softName;
    //尺码横排显示用 wushaoshu  20100414
    bmp := Tbitmap.Create;
    SizeNameList := TStringList.Create;
    G_index:=0;

  except
    on e:Exception do
    begin
      ShowMsg('连接服务器失败! 错误代码:'+e.Message);
      ErrorLogin;
    end;
  end;
  G_UserInfo.UserNumber   := 'user';//'256c221a-0106-1000-e000-10d7c0a813f413B7DE7F';
  G_UserInfo.UserName := '预设用户';
  //初始化日志类
  dir:=ExtractFilePath(Application.ExeName)+G_userinfo.UserNumber+'\log';
  if not DirectoryExists(dir) then CreateDir(dir);
  Gio_R:=UntTIO_R.TIOer.Create(nil,dir);
  Gio_R.AddShow('客户端启动!  ',0);

end;

procedure TReportViewFrm.dxbrlrgbtnExitEditClick(Sender: TObject);
begin
  close;
end;

function TReportViewFrm.getReportType(report_id: string): Integer;
begin
  result := 0;
  with DMPub.db_Query do
  begin
    close;
    CommandText:='select ReportType from F_Report '
    +' where report_id=''' + trim(report_id) + '''';
    open;
    if not IsEmpty then
    begin
      if uppercase(trim(Fieldbyname('ReportType').AsString)) = uppercase('基本报表(CxGRID控件)') then
        result := 1;
      if uppercase(trim(Fieldbyname('ReportType').AsString)) = uppercase('交叉报表(CubeX控件)') then
        result := 2;
      if uppercase(trim(Fieldbyname('ReportType').AsString)) = uppercase('多表头报表(EhGrid控件)') then
        result := 3;
    end;
  end;
end;



procedure TReportViewFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  begin
    if Application.MessageBox('确认退出报表平台?(Y/N))','提示',mb_YesNO)=id_no then
    Abort;
    //释放尺码横排显示重画用到的对象
    if bmp <> nil then
    begin
      bmp.Free;
      bmp:=nil;
    end;
    if SizeNameList <> nil then
    begin
      SizeNameList.Free;
      SizeNameList:=nil;
    end;
    DMPub.SocketConn.Close;
    if DMPub.adoconn.Connected then
    DMPub.adoconn.Close;
    if DMPub.adoacc.Connected then
    DMPub.adoacc.Close;
  end;
end;



procedure TReportViewFrm.exportExcelClick(Sender: TObject);
begin
  if getReportType(report_id) = 1 then
  begin
    ISys.ExportToFile(etHTML, viewObj.ReportGrid, GetGuid);
  end;
end;

procedure TReportViewFrm.refDataClick(Sender: TObject);
begin
   if pg_viewObj<>nil then 
   pg_viewObj.refData
end;

procedure TReportViewFrm.ExitPMClick(Sender: TObject);
begin
  close;
end;




function TReportViewFrm.getFieldChName(FieldName: string): string;
begin


end;



function TReportViewFrm.CheckHasSubReport(reportid,
  keyfieldName: string): Boolean;

begin

end;

procedure TReportViewFrm.dxBarButton5Click(Sender: TObject);
begin
   try
     if not DMPub.openSocketConn then Exit;
     if not isMatPass('mainFrm') then Exit;
     if not isPass('mainFrm','reportddesign')  then Exit;
     try
       Application.CreateForm(TReportEditFrm,ReportEditFrm);
       ReportEditFrm.ShowModal;
     finally
       ReportEditFrm.Free;
       cdsType.Close;
       cdsType.Open;
     end;
   finally
     DMPub.SocketConn.Close;
   end;
end;
function TReportViewFrm.Ping_Ser: Boolean;
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
procedure TReportViewFrm.FormShow(Sender: TObject);
var serverTime,localTime:string;
    ini:TIniFile;
    toFileName,Stretch:string;
    b:Boolean;
    sr:TSearchRec;
    sPath,sFile:String;
    _SysInfo: string;
    TmpList: TStrings;
begin
  try
    if not DMPub.openSocketConn then Exit;
    ini:=Tinifile.Create(ExtractFilePath(Application.ExeName) + '\STOffice.ini');
    dbType := 'oracle';
    _SysType := 0;
    //检查网络模式
    Localnetwork:=true;
//    if Ping_Ser then
//    begin
//      try
//        DMPub.OrclConn.Close;
//        DMPub.OrclConn.Options.Charset:='ZHS16GBK';
//        DMPub.OrclConn.Options.Net:=True;
//        DMPub.OrclConn.ConnectString:=DBConnStr;
//        DMPub.OrclConn.Connected:=True;
//        Localnetwork:=DMPub.OrclConn.Connected;
//      except
//        on e:Exception do
//        begin
//          Localnetwork:=False;
//        end;
//      end;
//    end
//    else
//    begin
//      Localnetwork:=False;
//    end;
    try

      if  Localnetwork   then
          stat1.Panels[0].Text := '服务器地址: ('+G_userinfo.Server_IP+'  '+G_userinfo.Server_port+')   查询模式:(局域网) '
      else
          stat1.Panels[0].Text := '服务器地址: ('+G_userinfo.Server_IP+'  '+G_userinfo.Server_port+')   查询模式:(广域网)  ';


      ini:=TIniFile.Create(ExtractFilePath(Application.ExeName)+'main.ini');
      toFileName:=ini.ReadString('mainimg','path','');
      if FileExists(toFileName) then
      mainImg.Picture.LoadFromFile(toFileName);
      Stretch:=ini.ReadString('mainimg','Stretch','');
      if Stretch='true' then
      mainImg.Stretch:=True
      else
      mainImg.Stretch:=False;
      ini.Free;
      DMPub.GetUserRoles;//用户角色
      stat1.Panels[1].Text := '当前用户：' + G_UserInfo.UserName;
    except
      on e:Exception do
      begin
        ShowMsg(e.Message);
        ErrorLogin;
      end;
    end;
    if  isTryout then stat1.Panels[2].Text:='试用版'
    else   stat1.Panels[2].Text:='正式版';
    stat1.Panels[3].Text:='数据库类型'+' MS SQL Server';
    if DirectoryExists(ExtractFilePath(Application.ExeName)+G_userinfo.UserNumber+'\RP') then
    begin
      sPath:=ExtractFilePath(Application.ExeName)+G_userinfo.UserNumber+'\RP\';
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
            DeleteFile(sFile);//删除文件
        until FindNext(sr)<>0;
        FindClose(sr);
      end;
      RemoveDir(sPath);
    end;
    if G_userinfo.UserNumber<>'' then
    CreateDir(ExtractFilePath(Application.ExeName)+G_userinfo.UserNumber+'\RP');
    RoleRight.Enabled:=_SysType =0;

    cdsType.Close;
    cdsType.CommandText:='select *  from ReportType order by FLevel,fnumber  ' ;
    cdsType.Open;
  finally
    DMPub.SocketConn.Close;
  end;

end;

procedure TReportViewFrm.dxBarButton6Click(Sender: TObject);
begin
  Self.close;
end;

procedure TReportViewFrm.dxBarButton13Click(Sender: TObject);
begin
  try
    if not DMPub.openSocketConn then Exit;
    try
      Application.CreateForm(TRightFrm,RightFrm);
      RightFrm.ShowModal;
    finally
      RightFrm.Free;
    end;
  finally
    DMPub.SocketConn.Close;
  end;
end;

procedure TReportViewFrm.mainPgCanClose(Sender: TObject;
  var ACanClose: Boolean);
  var toFileName:string;
begin
  if (mainPg.ActivePageIndex=0) then  ACanClose:=False;
end;

procedure TReportViewFrm.mainPgChange(Sender: TObject);
begin
  if mainPg.ActivePage<>nil then
  if mainPg.ActivePageIndex<>0 then
  begin
    pg_report_id:=Copy(mainPg.ActivePage.Name,3,Length(mainPg.ActivePage.Name));
    pg_viewObj:=TViewFrm(mainPg.ActivePage.FindComponent('frm'+pg_report_id));
  end
  else
  begin
    pg_report_id:='';
    pg_viewObj:=nil;
  end;
end;

procedure TReportViewFrm.dxbrlrgbtn1Click(Sender: TObject);
begin
  try
    if not DMPub.openSocketConn then Exit;
    if pg_viewObj<>nil  then
    begin
      if pg_viewObj.ReportType=2 then   //如果是交叉报表直接导出
      begin
        if not isPass(report_id,'export')  then Exit;
        ExportCube(pg_viewObj.ReportCubeX, Self, pg_viewObj.ReportCubeX.TitleSettings.Text, xolaprpt_XLS, 'xls',true,pg_viewObj.XMLDocument1);
      end
      else
       pg_viewObj.exportToFile(False);
    end;
  finally
    DMPub.SocketConn.Close;
  end;
end;

procedure TReportViewFrm.mainPgDblClick(Sender: TObject);
begin
  if mainPg.ActivePageIndex<>0 then
  mainPg.ActivePage.Free;
end;

procedure TReportViewFrm.Pm_exitClick(Sender: TObject);
begin
  close;
end;

procedure TReportViewFrm.RloginClick(Sender: TObject);
begin
  isRefStart:=True;
  self.Close;
end;

procedure TReportViewFrm.updateImgClick(Sender: TObject);
var ini:TIniFile;
    toFileName:string;
begin
  toFileName:=ExtractFilePath(Application.ExeName)+'main.ini';
  if OpenDg.Execute then
  begin
    mainImg.Picture.LoadFromFile(OpenDg.FileName);
    ini:=TIniFile.Create(toFileName);
    ini.WriteString('mainImg','path',OpenDg.FileName);
    ini.Free;
  end;
end;

procedure TReportViewFrm.expStaticReportClick(Sender: TObject);
begin
  if    pg_viewObj<>nil then
  begin
    reportExportST.FileName:=pg_viewObj.report_name;
    if reportExportST.Execute then
    begin
      try
        if not  DMPub.openSocketConn   then Exit;
        if not isPass(report_id,'export')  then Exit;
        pg_viewObj.ReportCubeX.Cube.Save(reportExportST.FileName);
        DMPub.SocketConn.AppServer.ServerLog('导出了静态报表:'+pg_report_id,0);
        Gio_R.AddShow('导出了静态报表:'+pg_report_id);
      finally
        DMPub.SocketConn.Close;
      end;
    end;
  end;

end;

procedure TReportViewFrm.dxBarButton19Click(Sender: TObject);
var ini:TIniFile;
    toFileName:string;
begin
  toFileName:=ExtractFilePath(Application.ExeName)+'StaticReport.exe';
  if not FileExists(toFileName)  then
  begin
    ShowMsg('没有找到静态报表分析器文件(StaticReport.exe)!');
    Exit;
  end;
  shellexecute(handle,'open',pchar(toFileName),nil,nil,sw_shownormal);
end;


procedure TReportViewFrm.dxBarButton12Click(Sender: TObject);
begin
  if (pg_viewObj=nil)  then
  begin
    Exit;
  end;
  try
    if not DMPub.openSocketConn then Exit;
    if not isPass(report_id,'export')  then Exit;
    if pg_viewObj.ReportType=2 then   //如果是交叉报表直接导出
    ExportCube(pg_viewObj.ReportCubeX, Self, pg_viewObj.ReportCubeX.TitleSettings.Text, xolaprpt_XLS, 'xls',true,pg_viewObj.XMLDocument1);
    if (pg_viewObj.ReportType=1)  then
    pg_viewObj.exportExcel2;
    if (pg_viewObj.ReportType=3)  then
    pg_viewObj.KD_DBGridEH;
  finally
    DMPub.SocketConn.Close;
  end;
end;

procedure TReportViewFrm.FormDestroy(Sender: TObject);
begin
  if Gio_R<>nil then
  begin
    Gio_R.AddShow('客户端退出!');
    Gio_R.Free;
  end;
end;


procedure TReportViewFrm.RoleRightClick(Sender: TObject);
begin
  try
    if not DMPub.openSocketConn then Exit;
    if not isMatPass('mainFrm') then Exit;
    if not isPass('mainFrm','RightMg')  then Exit;
    try
      Application.CreateForm(TRoleRightFrm,RoleRightFrm);
      RoleRightFrm.ShowModal;
    finally
      RoleRightFrm.Free;
    end;
  finally
    DMPub.SocketConn.Close;
  end;
end;

procedure TReportViewFrm.dxbrlrgbtnKExportClick(Sender: TObject);
begin
  try
    if not DMPub.openSocketConn then Exit;
    if pg_viewObj<>nil  then
    begin
      if pg_viewObj.ReportType=2 then   //如果是交叉报表直接导出
      begin
        if not isPass(report_id,'export')  then Exit;
        ExportCube(pg_viewObj.ReportCubeX, Self, pg_viewObj.ReportCubeX.TitleSettings.Text, xolaprpt_XLS, 'xls',true,pg_viewObj.XMLDocument1);
      end
      else
       pg_viewObj.exportToFile(True);
    end;
  finally
    DMPub.SocketConn.Close;
  end;
end;

function TReportViewFrm.CreatePageList1(frmclass:TFormClass): TForm;
var tabsheet : TcxTabSheet;
    tmViewForm:TViewFrm;
    i : Integer;
    FormBool : Boolean;
begin
  FormBool := False;
  for i := 0 to mainPg.PageCount-1 do
  begin
    if mainPg.Pages[i].Name = 'ts'+ frmclass.ClassName + ReportTree.FocusedNode.Texts[2] then
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
  tabsheet.Name := 'ts'+ frmclass.ClassName + ReportTree.FocusedNode.Texts[2];
  tabsheet.ImageIndex:=3;
  tabsheet.PageControl := mainPg;
  tmViewForm := frmclass.Create(Tabsheet);
  tmViewForm.Caption := ReportTree.FocusedNode.Texts[3];
  tabsheet.Caption   := ReportTree.FocusedNode.Texts[3];
  tmViewForm.Name := 'Frm'+frmclass.ClassName + ReportTree.FocusedNode.Texts[2];
  tmViewForm.report_id := ReportTree.FocusedNode.Texts[0];
  tmViewForm.report_name := ReportTree.FocusedNode.Texts[3];
  tmViewForm.Parent := tabsheet;
  mainPg.ActivePage := tabsheet;
  tmViewForm.Show;
  result := tmViewForm;
end;

procedure TReportViewFrm.ReportTreeDblClick(Sender: TObject);
var
  i: integer;
  v: Variant;
begin
  if not ReportTree.FocusedNode.HasChildren then
  begin
    CreatePageList1(TViewFrm);
  end;
end;

end.





