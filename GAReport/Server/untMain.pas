unit untMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UntRmodbSvr, ImgList, ComCtrls, IniFiles, ExtCtrls, Menus, ShellAPI,utils;

const
   WM_TrayIcon = WM_USER + 1234;
   WM_BARICON=WM_USER+200;
   TrayMsgStr   =   'TrayNotifyIconMsg';

type
  Tfrm_main = class(TForm)
    lvLog: TListView;
    ImageListLogLevel: TImageList;
    MainMenu1: TMainMenu;
    S1: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    H1: TMenuItem;
    N5: TMenuItem;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N8: TMenuItem;
    eeerrere1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure N3Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    IconData: TNotifyIconData;
    procedure AddIconToTray;
    procedure DelIconFromTray;
    procedure TrayIconMessage(var Msg: TMessage); message WM_TrayIcon;
    procedure WMSysCommand(var Message: TMessage); message WM_SYSCOMMAND; //最小化时隐藏
    { Private declarations }
  public
     procedure WndProc(var Msg: TMessage); override;
    { Public declarations }
  end;

var
  frm_main: Tfrm_main;

implementation
uses
  UntTIO, untFunctions, DCPbase64;

var
  WM_TRAYNOTIFY:   Cardinal;
  IconFlag:   integer;
{$R *.dfm}

var
  Gio: TIOer; //日志对象 可显示和记录日志信息

procedure Tfrm_main.FormCreate(Sender: TObject);
var
  ps: string;
 ini: Tinifile;
 ServerNam,DataBaseName,UserName,password:string;
begin
  ini := Tinifile.Create(ExtractFilePath(paramstr(0)) + 'STOffice.ini');
  try
    //取配置文件
    ServerNam := Ini.ReadString('DBconfig', 'ServerName', '127.0.0.1');
    DataBaseName  := Ini.ReadString('DBconfig', 'DataBaseName', 'ga');
    UserName :=  Ini.ReadString('DBconfig', 'UserName', 'sa');
    password :=  Ini.ReadString('DBconfig', 'password ', '');
    ps := Base64DecodeStr(password);
  finally
    ini.Free;
  end;
  //创建日志对象
  Gio := TIOer.Create(lvLog, GetCurrPath + 'log\');
  //创建数据服务器对象 使用9000端口
  Gob_RmoDBsvr := TRmodbSvr.Create(9000, Gio);
  AddIconToTray;
   //此处连接exe目录下的access数据库文件 demo.mdb
   //当然可以连接任意一种数据库
//  if Gob_RmoDBsvr.ConnToDb(TDBMrg.GetAccessConnStr(GetCurrPath() + 'demo.mdb')) then
  if Gob_RmoDBsvr.ConnToDb(TDBMrg.GetMsSQLConnStr(ServerNam, UserName, ps, DataBaseName)) then
    Gio.AddShow('连接本地数据库成功，可以提供远程数据服务了!');


// TDBMrg具有很方便的类方法 可以提供生成不同数据库的连接字符串哦
//    {获取ACCESS连接字符串}
//    class function GetAccessConnStr(IDataSource: string; Ipsd: string = ''): string;
//    {获取MSSQL连接字符串}
//    class function GetMsSQLConnStr(IDataSource, IAcc, Ipsd, IDataBase: string): string;
//    {获取Oracle连接字符串}
//    class function GetOracleConnStr(IDataSource, IAcc, Ipsd: string): string;
//    {获取Excel连接字符串}
//    class function GetExcelConnStr(IFileName: string): string;
//    {获取Text连接字符串}
//    class function GetTextConnStr(IDBPath: string): string;
//    {获取Dbf连接字符串}
//    class function GetDBFConnStr(IDBPath: string): string;
//    {获取MySQl连接字符串}
//    class function GetMySqlConnStr(IDataSource, IDbName, IAcc, Ipsd: string): string;
end;

procedure Tfrm_main.FormDestroy(Sender: TObject);
begin
  DelIconFromTray;
//  saveListView(True);
//  DeleteCriticalSection(X_thread);
  Gio.AddShow('服务器退出!  ');
//记得养成有借有还的好习惯
  Gob_RmoDBsvr.Free;
  Gio.Free;
end;

procedure Tfrm_main.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Self.Visible:=False; 
  Abort;
end;

procedure Tfrm_main.N3Click(Sender: TObject);
begin
  if Messagedlg('如果你退出中间层,其他用户则无法连接数据库'+#13+'你确定要退出应用服务器吗?   Y/N',mtwarning,[mbyes,mbno],0)   =   mryes   then
  begin
    KillTrayIcons(self);
    Application.Terminate;
  end;
end;

procedure Tfrm_main.N1Click(Sender: TObject);
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

procedure Tfrm_main.AddIconToTray;
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

procedure Tfrm_main.DelIconFromTray;
begin
  Shell_NotifyIcon(NIM_DELETE, @IconData);
end;

procedure Tfrm_main.TrayIconMessage(var Msg: TMessage);
begin
  if (Msg.LParam = WM_LBUTTONDBLCLK) then
    Show();
end;

procedure Tfrm_main.WMSysCommand(var Message: TMessage);
var
  lpData:PNotifyIconData;
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
    lpData.szTip := '智能报表服务控制台';
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

procedure Tfrm_main.WndProc(var Msg: TMessage);
var
  pt:TPoint;
begin
  with Msg do
  begin
    case lParam of
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

procedure Tfrm_main.FormShow(Sender: TObject);
begin
  KillTrayIcons(self);
end;

end.

