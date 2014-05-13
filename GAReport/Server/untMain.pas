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
    procedure WMSysCommand(var Message: TMessage); message WM_SYSCOMMAND; //��С��ʱ����
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
  Gio: TIOer; //��־���� ����ʾ�ͼ�¼��־��Ϣ

procedure Tfrm_main.FormCreate(Sender: TObject);
var
  ps: string;
 ini: Tinifile;
 ServerNam,DataBaseName,UserName,password:string;
begin
  ini := Tinifile.Create(ExtractFilePath(paramstr(0)) + 'STOffice.ini');
  try
    //ȡ�����ļ�
    ServerNam := Ini.ReadString('DBconfig', 'ServerName', '127.0.0.1');
    DataBaseName  := Ini.ReadString('DBconfig', 'DataBaseName', 'ga');
    UserName :=  Ini.ReadString('DBconfig', 'UserName', 'sa');
    password :=  Ini.ReadString('DBconfig', 'password ', '');
    ps := Base64DecodeStr(password);
  finally
    ini.Free;
  end;
  //������־����
  Gio := TIOer.Create(lvLog, GetCurrPath + 'log\');
  //�������ݷ��������� ʹ��9000�˿�
  Gob_RmoDBsvr := TRmodbSvr.Create(9000, Gio);
  AddIconToTray;
   //�˴�����exeĿ¼�µ�access���ݿ��ļ� demo.mdb
   //��Ȼ������������һ�����ݿ�
//  if Gob_RmoDBsvr.ConnToDb(TDBMrg.GetAccessConnStr(GetCurrPath() + 'demo.mdb')) then
  if Gob_RmoDBsvr.ConnToDb(TDBMrg.GetMsSQLConnStr(ServerNam, UserName, ps, DataBaseName)) then
    Gio.AddShow('���ӱ������ݿ�ɹ��������ṩԶ�����ݷ�����!');


// TDBMrg���кܷ�����෽�� �����ṩ���ɲ�ͬ���ݿ�������ַ���Ŷ
//    {��ȡACCESS�����ַ���}
//    class function GetAccessConnStr(IDataSource: string; Ipsd: string = ''): string;
//    {��ȡMSSQL�����ַ���}
//    class function GetMsSQLConnStr(IDataSource, IAcc, Ipsd, IDataBase: string): string;
//    {��ȡOracle�����ַ���}
//    class function GetOracleConnStr(IDataSource, IAcc, Ipsd: string): string;
//    {��ȡExcel�����ַ���}
//    class function GetExcelConnStr(IFileName: string): string;
//    {��ȡText�����ַ���}
//    class function GetTextConnStr(IDBPath: string): string;
//    {��ȡDbf�����ַ���}
//    class function GetDBFConnStr(IDBPath: string): string;
//    {��ȡMySQl�����ַ���}
//    class function GetMySqlConnStr(IDataSource, IDbName, IAcc, Ipsd: string): string;
end;

procedure Tfrm_main.FormDestroy(Sender: TObject);
begin
  DelIconFromTray;
//  saveListView(True);
//  DeleteCriticalSection(X_thread);
  Gio.AddShow('�������˳�!  ');
//�ǵ������н��л��ĺ�ϰ��
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
  if Messagedlg('������˳��м��,�����û����޷��������ݿ�'+#13+'��ȷ��Ҫ�˳�Ӧ�÷�������?   Y/N',mtwarning,[mbyes,mbno],0)   =   mryes   then
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
  IconData.szTip := '����������̨';
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
    //����û���С�������򽫴���
    //���ز��������������ͼ��
    DelIconFromTray;
    lpData := new(PNotifyIconDataA);
    lpData.cbSize := 88;
    //SizeOf(PNotifyIconDataA);
    lpData.Wnd := Self.Handle;
    lpData.hIcon := Self.Icon.Handle;
    lpData.uCallbackMessage := WM_BARICON;
    lpData.uID :=0;
    lpData.szTip := '���ܱ���������̨';
    lpData.uFlags := NIF_ICON or NIF_MESSAGE or NIF_TIP;
    Shell_NotifyIcon(NIM_ADD,lpData);
    dispose(lpData);
    Self.Visible := False;
  end
  else
  begin
    //�����������SystemCommand
    //��Ϣ�����ϵͳȱʡ����������֮��
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

