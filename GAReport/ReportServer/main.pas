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
    procedure WMSysCommand(var Message: TMessage); message WM_SYSCOMMAND; //��С��ʱ����
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

  //ִ���ļ����ȴ����
  function ExecAndWait(const Filename, Params: string; WindowState: word): Boolean;

var
  MainFrm: TMainFrm;
  mac:string;
  softCode,dllsoftCode:string;
  dbType:string;
  _SysType: Integer;              //ϵͳ���ͣ�0��EAS��1��K/3 ,2-����
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


//��ȡ�ļ���ʱ,�ж��Ƿ񳬹�30����
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
      //ShowMessage(Format('����޸�����ʱ��: "%s"', [DateTimeToStr(modifiedTime)])) ;
    finally
      FindClose(sr) ;
    end
  end;
end;
// ɾ������Ŀ¼
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
    removedir(NowPath); //�����Ҫɾ���ļ��������
    result := True;
  except
    result := False;
  end;
end;
//��ȡ����ɾ�����ļ����б�
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

{ִ���ļ����ȴ����}
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
    //�ȴ�Ӧ�ó������
    WaitForSingleObject(ProcInfo.hProcess, INFINITE);
    //ɾ�����
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
  IconData.szTip := '����������̨';
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
  hSnapshot:THandle;    //��ȡ�����б�
  lppe:TProcessEntry32; //���ڲ��ҽ���
  Found:boolean;        //�����жϽ����Ƿ��������
begin
  Result:=false;
  hSnapshot:=CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS,0);   //��ȡϵͳ�����б�
  lppe.dwSize:=SizeOf(TProcessEntry32);                        //�ڵ���Process32First   API֮ǰ,��Ҫ��ʼ��lppe��¼�Ĵ�С
  Found:=Process32First(hSnapshot,lppe);                       //�������б�ĵ�һ��������Ϣ����lppe��¼��
  while   Found   do
  begin
    if (UpperCase(ExtractFileName(lppe.szExeFile))=UpperCase(aFileName)) or (UpperCase(lppe.szExeFile)=UpperCase(aFileName)) then
    begin
      Result:=true;
      break;
    end;
    Found:=Process32Next(hSnapshot, lppe);   //�������б����һ��������Ϣ����lppe��¼��
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
    Application.MessageBox('û���ҵ�scktsrvr.exe�ļ�!','��ʾ',MB_OK);
    Application.Terminate;
  end;
  if not FindProcess('scktsrvr.exe') then 
  shellexecute(handle,'open',pchar(scktPath),nil,nil,sw_shownormal);
  //ע��DLL
  _DllReg_Bat := ExtractFilePath(paramstr(0)) + 'SysDll\DllReg.bat';
  if FileExists(_DllReg_Bat) then
    ExecAndWait(_DllReg_Bat, '', SW_HIDE);
  InitializeCriticalSection(X_thread);
  AddIconToTray;
  //������־Ŀ¼
  dir:=ExtractFilePath(Application.ExeName)+'ReaportServer\log';
  if not DirectoryExists(dir) then CreateDir(dir);
  Gio:=TIOer.Create(lvLog,dir);
  Gio.AddShow('�����������ɹ�...  ',0);
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
  Gio.AddShow('�������˳�!  ');
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
  if Messagedlg('������˳��м��,�����û����޷��������ݿ�'+#13+'��ȷ��Ҫ�˳�Ӧ�÷�������?   Y/N',mtwarning,[mbyes,mbno],0)   =   mryes   then
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
    lpData.szTip := '����������̨';
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
 if Messagedlg('������˳��м��,�����û����޷��������ݿ�'+#13+'��ȷ��Ҫ�˳�Ӧ�÷�������?   Y/N',mtwarning,[mbyes,mbno],0)   =   mryes   then
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
    ShowMessage('û���ҵ������ļ�(help.chm)!');
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
  Exit;//��ʱ�ر�Щ����
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


procedure TMainFrm.CleardirTimer(Sender: TObject);      //600000  ��ɾ����ʱ�ļ�
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
        if not DeleteDir(list[i]) then Gio.AddShow('��ʱ�ļ���ɾ��ʧ��!'+list[i],1);
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
