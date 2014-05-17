{$A8,B-,C+,D+,E-,F-,G+,H+,I+,J-,K-,L+,M-,N+,O+,P+,Q-,R-,S-,T-,U-,V+,W-,X+,Y+,Z1}
{$MINSTACKSIZE $00004000}
{$MAXSTACKSIZE $00100000}
{$IMAGEBASE $00400000}
{$APPTYPE GUI}
{$WARN SYMBOL_DEPRECATED ON}
{$WARN SYMBOL_LIBRARY ON}
{$WARN SYMBOL_PLATFORM ON}
{$WARN UNIT_LIBRARY ON}
{$WARN UNIT_PLATFORM ON}
{$WARN UNIT_DEPRECATED ON}
{$WARN HRESULT_COMPAT ON}
{$WARN HIDING_MEMBER ON}
{$WARN HIDDEN_VIRTUAL ON}
{$WARN GARBAGE ON}
{$WARN BOUNDS_ERROR ON}
{$WARN ZERO_NIL_COMPAT ON}
{$WARN STRING_CONST_TRUNCED ON}
{$WARN FOR_LOOP_VAR_VARPAR ON}
{$WARN TYPED_CONST_VARPAR ON}
{$WARN ASG_TO_TYPED_CONST ON}
{$WARN CASE_LABEL_RANGE ON}
{$WARN FOR_VARIABLE ON}
{$WARN CONSTRUCTING_ABSTRACT ON}
{$WARN COMPARISON_FALSE ON}
{$WARN COMPARISON_TRUE ON}
{$WARN COMPARING_SIGNED_UNSIGNED ON}
{$WARN COMBINING_SIGNED_UNSIGNED ON}
{$WARN UNSUPPORTED_CONSTRUCT ON}
{$WARN FILE_OPEN ON}
{$WARN FILE_OPEN_UNITSRC ON}
{$WARN BAD_GLOBAL_SYMBOL ON}
{$WARN DUPLICATE_CTOR_DTOR ON}
{$WARN INVALID_DIRECTIVE ON}
{$WARN PACKAGE_NO_LINK ON}
{$WARN PACKAGED_THREADVAR ON}
{$WARN IMPLICIT_IMPORT ON}
{$WARN HPPEMIT_IGNORED ON}
{$WARN NO_RETVAL ON}
{$WARN USE_BEFORE_DEF ON}
{$WARN FOR_LOOP_VAR_UNDEF ON}
{$WARN UNIT_NAME_MISMATCH ON}
{$WARN NO_CFG_FILE_FOUND ON}
{$WARN MESSAGE_DIRECTIVE ON}
{$WARN IMPLICIT_VARIANTS ON}
{$WARN UNICODE_TO_LOCALE ON}
{$WARN LOCALE_TO_UNICODE ON}
{$WARN IMAGEBASE_MULTIPLE ON}
{$WARN SUSPICIOUS_TYPECAST ON}
{$WARN PRIVATE_PROPACCESSOR ON}
{$WARN UNSAFE_TYPE ON}
{$WARN UNSAFE_CODE ON}
{$WARN UNSAFE_CAST ON}
unit main;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs,IniFiles, StdCtrls, ExtCtrls,ShellAPI,
  Menus, ScktComp, DB, ADODB,GetDSN,VersionId, ComCtrls, ImgList,
  dxGDIPlusClasses, jpeg,ComObj,Variants,uSystemSet,UntTIO,DateUtils,Tlhelp32,
  XPMan;
const
   WM_TrayIcon = WM_USER + 1234;
   WM_BARICON=WM_USER+200;

 TrayMsgStr   =   'TrayNotifyIconMsg';
type
  TMainFrm = class(TForm)
    Image1: TImage;
    Label2: TLabel;
    PopupMenu1: TPopupMenu;
    eeerrere1: TMenuItem;
    N1: TMenuItem;
    ado_reg: TADOConnection;
    Qry: TADOQuery;
    Lb_code: TLabel;
    Edit1: TEdit;
    endDate: TLabel;
    endapptm: TTimer;
    checkLin: TTimer;
    MainMenu1: TMainMenu;
    S1: TMenuItem;
    N3: TMenuItem;
    Panel1: TPanel;
    Panel2: TPanel;
    Image2: TImage;
    ImageListLogLevel: TImageList;
    lvLog: TListView;
    Image3: TImage;
    Panel3: TPanel;
    mm_msg: TMemo;
    Splitter1: TSplitter;
    N4: TMenuItem;
    H1: TMenuItem;
    N5: TMenuItem;
    SaveDg: TSaveDialog;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    Cleardir: TTimer;
    XPManifest1: TXPManifest;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure eeerrere1Click(Sender: TObject);
    procedure asss1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure endapptmTimer(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure lvLogSelectItem(Sender: TObject; Item: TListItem;
      Selected: Boolean);
    procedure N5Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure CleardirTimer(Sender: TObject);
  private
    IconData: TNotifyIconData;
    procedure AddIconToTray;
    procedure DelIconFromTray;
    procedure TrayIconMessage(var Msg: TMessage); message WM_TrayIcon;
    procedure WMSysCommand(var Message: TMessage); message WM_SYSCOMMAND; //最小化时隐藏
    { Private declarations }
  public
    { Public declarations }
    function LinkToDataBase: string;
    procedure WndProc(var   Msg:   TMessage);   override;
    function getDbserverDate:TDate;
    procedure saveListView(isClear:Boolean;_UserName:string='');
    procedure exeDataExportExe(exepath,uuid:string);
    function  FindProcess(aFileName:String):boolean;
  end;

  //执行文件并等待完毕
  function ExecAndWait(const Filename, Params: string; WindowState: word): Boolean;

var
  MainFrm: TMainFrm;
  mac:string;
  softCode,dllsoftCode:string;
  dbType:string;
  _SysType: Integer;              //系统类型：0－EAS，1－K/3 ,2-其它
  _endDate:string;
  _MaxRowCount,_MaxDataSize:Integer;
  Gio:TIOer;
implementation
uses utils,uClientInfoFrm,DCPbase64;
var
 nd0,nd1:   NotifyIconData;
 //hs:   array[0..1]of   LongWord;
 WM_TRAYNOTIFY:   Cardinal;
 IconFlag:   integer;
 X_thread:TRTLCriticalSection;


{$R *.dfm}


//获取文件夹时,判断是否超过30分钟
function isDirectoryDel(const path : string):Boolean ;
var
   sr : TSearchRec;
   modifiedTime : TDateTime;
   betTime:Int64;
begin
  Result:=False;
  if sysUtils.FindFirst(path, faDirectory, sr) = 0 then
  begin
    try
      modifiedTime := FileDateToDateTime(sr.Time) ;
      betTime:=MinutesBetween(now,modifiedTime);
      if  betTime>30 then Result:=True;
      //ShowMessage(IntToStr(betTime));
      //ShowMessage(Format('最后修改日期时间: "%s"', [DateTimeToStr(modifiedTime)])) ;
    finally
      FindClose(sr) ;
    end
  end;
end;
// 删除整个目录
function DeleteDir(NowPath: string):Boolean;
var
  search: TSearchRec;
  ret: integer;
  key: string;
begin
  try
    if NowPath[Length(NowPath)] <> '\' then
      NowPath := NowPath + '\';
    key := NowPath + '*.*';
    ret := findFirst(key, faanyfile, search);
    while ret = 0 do
    begin
      if ((search.Attr and fadirectory) = fadirectory) then
      begin
        if (search.Name <> '.') and (search.name <> '..') then
          DeleteDir(NowPath + search.name);
      end
      else
      begin
        if ((search.Attr and fadirectory) <> fadirectory) then
        begin
          deletefile(NowPath + search.name);
        end;
      end;
      ret := FindNext(search);
    end;
    findClose(search);
    removedir(NowPath); //如果需要删除文件夹则添加
    result := True;
  except
    result := False;
  end;
end;
//获取可以删除的文件夹列表
function getDeleteListDir:TStringList;
var
  sr: TSearchRec;
  path:string;
  dir:string;
begin
  path:=ExtractFilePath(Application.ExeName);
  Result:=TStringList.Create;
  if FindFirst(path+'serTemp\*.*', faAnyFile, sr) = 0 then
  begin
    repeat
      if (sr.Attr and faDirectory)<>0 then
      if (sr.Name<>'.') and (sr.Name<>'..') then
      begin
        dir:=path+'serTemp\'+sr.Name;
        if   isDirectoryDel(dir) then
        Result.Add(dir);
      end
    until FindNext(sr) <> 0;
    FindClose(sr);
  end;
end;

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

procedure TMainFrm.AddIconToTray;
begin
  Setwindowlong(application.handle,gwl_exstyle,ws_ex_toolwindow);
  WM_TRAYNOTIFY   :=   RegisterWindowMessage(TrayMsgStr);
  ZeroMemory(@IconData, SizeOf(TNotifyIconData));
  IconData.cbSize := SizeOf(TNotifyIconData);
  IconData.Wnd := Handle;
  IconData.uID := 1;
  IconData.uFlags := NIF_MESSAGE or NIF_ICON or NIF_TIP;
  IconData.uCallbackMessage := WM_TrayIcon;
  IconData.hIcon := Application.Icon.Handle;
  IconData.szTip := '报表服务控制台';
  Shell_NotifyIcon(NIM_ADD, @IconData);
  IconFlag   :=0;
end;
procedure TMainFrm.DelIconFromTray;
begin
  Shell_NotifyIcon(NIM_DELETE, @IconData);
end;

procedure TMainFrm.TrayIconMessage(var Msg: TMessage);
begin
  if (Msg.LParam = WM_LBUTTONDBLCLK) then
    Show();
end;

function TMainFrm.LinkToDataBase: String;
begin
  //
end;
function TMainFrm.FindProcess(aFileName:String):boolean;
var
  hSnapshot:THandle;    //获取进程列表
  lppe:TProcessEntry32; //用于查找进程
  Found:boolean;        //用于判断进程是否历遍完成
begin
  Result:=false;
  hSnapshot:=CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS,0);   //获取系统进程列表
  lppe.dwSize:=SizeOf(TProcessEntry32);                        //在调用Process32First   API之前,需要初始化lppe记录的大小
  Found:=Process32First(hSnapshot,lppe);                       //将进程列表的第一个进程信息读入lppe记录中
  while   Found   do
  begin
    if (UpperCase(ExtractFileName(lppe.szExeFile))=UpperCase(aFileName)) or (UpperCase(lppe.szExeFile)=UpperCase(aFileName)) then
    begin
      Result:=true;
      break;
    end;
    Found:=Process32Next(hSnapshot, lppe);   //将进程列表的下一个进程信息读入lppe记录中
  end;
end;


procedure TMainFrm.FormCreate(Sender: TObject);
var
  _DllReg_Bat,dir,scktPath: string;
  easCount:Integer;
begin
  scktPath:=ExtractFilePath(paramstr(0))+'scktsrvr.exe';
  if not FileExists(scktPath) then
  begin
    Application.MessageBox('没有找到scktsrvr.exe文件!','提示',MB_OK);
    Application.Terminate;
  end;
  if not FindProcess('scktsrvr.exe') then 
  shellexecute(handle,'open',pchar(scktPath),nil,nil,sw_shownormal);
  //注册DLL
  _DllReg_Bat := ExtractFilePath(paramstr(0)) + 'SysDll\DllReg.bat';
  if FileExists(_DllReg_Bat) then
    ExecAndWait(_DllReg_Bat, '', SW_HIDE);
  InitializeCriticalSection(X_thread);
  AddIconToTray;
  //创建日志目录
  dir:=ExtractFilePath(Application.ExeName)+'ReaportServer\log';
  if not DirectoryExists(dir) then CreateDir(dir);
  Gio:=TIOer.Create(lvLog,dir);
  Gio.AddShow('服务器启动成功...  ',0);
end;

procedure TMainFrm.FormShow(Sender: TObject);
var 
    str,s:string;
  ps: string;
begin
  Edit1.Text:= softCode;
  mac:=getMacAddress;
  KillTrayIcons(self);
end;

procedure TMainFrm.FormDestroy(Sender: TObject);
begin
  checkLin.Enabled:=False;
  endapptm.Enabled:=False;
  ClearDir.Enabled:=False;
  DelIconFromTray;
  saveListView(True);
  DeleteCriticalSection(X_thread);
  Gio.AddShow('服务器退出!  ');
  Gio.Free;
end;

procedure TMainFrm.WndProc(var Msg: TMessage);
var
  pt:TPoint;
begin
  with Msg do
  begin
    case   lParam   of
      WM_LBUTTONDOWN:
      begin
        AddIconToTray;
        if self.WindowState = wsMinimized then
        begin
          self.WindowState := wsNormal;
          self.Visible:=True;
          self.Show;
        end
        else
        begin
          self.Show;
        end;
      end;
      WM_RBUTTONDOWN:
      begin
        SetForegroundWindow(Handle);
        GetCursorPos(pt);
        PopupMenu1.Popup(Pt.X,   Pt.Y);
      end;
    end;
  end;
  inherited;
end;
procedure TMainFrm.eeerrere1Click(Sender: TObject);
begin
  if Messagedlg('如果你退出中间层,其他用户则无法连接数据库'+#13+'你确定要退出应用服务器吗?   Y/N',mtwarning,[mbyes,mbno],0)   =   mryes   then
  begin
   endapptm.Enabled:=False;
   checkLin.Enabled:=False;
   KillTrayIcons(self);
   Application.Terminate;
  end;
end;

procedure TMainFrm.asss1Click(Sender: TObject);
begin
  Application.Minimize;
end;

procedure TMainFrm.N1Click(Sender: TObject);
begin
  if self.WindowState = wsMinimized then
  begin
    self.WindowState := wsNormal;
    self.Visible:=True;
    self.Show;
  end
  else
  begin
    self.Show;
  end;
end;

procedure TMainFrm.WMSysCommand(var Message: TMessage);
var lpData:PNotifyIconData;
begin
  if Message.WParam = SC_ICON then
  begin
    Self.Close;
    //如果用户最小化窗口则将窗口
    //隐藏并在任务栏上添加图标
    DelIconFromTray;
    lpData := new(PNotifyIconDataA);
    lpData.cbSize := 88;
    //SizeOf(PNotifyIconDataA);
    lpData.Wnd := Self.Handle;
    lpData.hIcon := Self.Icon.Handle;
    lpData.uCallbackMessage := WM_BARICON;
    lpData.uID :=0;
    lpData.szTip := '报表服务控制台';
    lpData.uFlags := NIF_ICON or NIF_MESSAGE or NIF_TIP;
    Shell_NotifyIcon(NIM_ADD,lpData);
    dispose(lpData);
    Self.Visible := False;
  end
  else
  begin
    //如果是其它的SystemCommand
    //消息则调用系统缺省处理函数处理之。
    DefWindowProc(Self.Handle,Message.Msg,Message.WParam,Message.LParam);
    KillTrayIcons(self);
  end;

end;


procedure TMainFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Self.Visible:=False;
  Abort;
end;

function TMainFrm.getDbserverDate: TDate;
begin
  Result:=now;
end;

procedure TMainFrm.endapptmTimer(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TMainFrm.N3Click(Sender: TObject);
begin
 if Messagedlg('如果你退出中间层,其他用户则无法连接数据库'+#13+'你确定要退出应用服务器吗?   Y/N',mtwarning,[mbyes,mbno],0)   =   mryes   then
 begin
   endapptm.Enabled:=False;
//   checkLin.Enabled:=False;
   KillTrayIcons(self);
   Application.Terminate;
 end;
end;

procedure TMainFrm.lvLogSelectItem(Sender: TObject; Item: TListItem;
  Selected: Boolean);
begin
  mm_msg.Lines.Clear;
  if Item<>nil then
  begin
    mm_msg.Lines.Add(item.SubItems[0]);
  end;
end;

procedure TMainFrm.saveListView(isClear:Boolean;_UserName:string='');
begin
  //
end;

procedure TMainFrm.N5Click(Sender: TObject);
var toFileName:string;
begin
  toFileName:=ExtractFilePath(Application.ExeName)+'help.chm';
  if not FileExists(toFileName)  then
  begin
    ShowMessage('没有找到帮助文件(help.chm)!');
    Exit;
  end;
  shellexecute(handle,'open',pchar(toFileName),nil,nil,sw_shownormal);
end;

procedure TMainFrm.N9Click(Sender: TObject);
begin
  N9.Checked:=not N9.Checked;  
end;

procedure TMainFrm.N10Click(Sender: TObject);
begin
  Exit;//暂时关闭些功能
  Application.CreateForm(TSystemSetFrm,SystemSetFrm);
  SystemSetFrm.ShowModal;
  SystemSetFrm.Free;
end;

procedure ClearMemory;
begin
  if Win32Platform = VER_PLATFORM_WIN32_NT then
  begin
    SetProcessWorkingSetSize(GetCurrentProcess, $FFFFFFFF, $FFFFFFFF);
    application.ProcessMessages;
  end;
end;


procedure TMainFrm.CleardirTimer(Sender: TObject);      //600000  秒删除临时文件
var list:TStringList;
    i,easCount:Integer;
begin
  list:=TStringList.Create;
  try
    list:=getDeleteListDir;
    if list.Count>0 then
    begin
      for i:=0 to list.Count-1 do
      begin
        if DirectoryExists(list[i]) then 
        if not DeleteDir(list[i]) then Gio.AddShow('临时文件夹删除失败!'+list[i],1);
      end;
    end;
  finally
    list.Free;
  end;
end;

procedure TMainFrm.exeDataExportExe(exepath, uuid: string);
begin
  ShellExecute(Self.Handle,'open',PChar(exepath),PChar(uuid),nil,SW_SHOWNORMAL);
end;

end.
