unit fmLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, jpeg, ExtCtrls, DBClient, DB, RzLabel,
  dxGDIPlusClasses,UntRemSql,ADODB,IniFiles;

type
  TfrmLogin = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edUserID: TEdit;
    edUserName: TEdit;
    btnOK: TSpeedButton;
    btnCancle: TSpeedButton;
    edPassWord: TEdit;
    Image2: TImage;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    procedure btnCancleClick(Sender: TObject);
    procedure edUserIDExit(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure edPassWordKeyPress(Sender: TObject; var Key: Char);
    procedure edUserIDKeyPress(Sender: TObject; var Key: Char);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure GetUserInfo;
  public
    { Public declarations }
  end;

  //登陆系统
  function Login_System: Boolean;

var
  frmLogin: TfrmLogin;
  Qryopt: TADOQuery;

implementation
uses untfunctions, fmInitConfig;
{$R *.dfm}

function Login_System: Boolean;
begin
//  Result := False;
  with TfrmLogin.Create(nil) do
  try
    Result := ShowModal = mrOk;
    //取消登录系统，不执行主窗口显示事件。
//    if not Result then
//      Application.MainForm.OnShow := nil;
  finally
    Free;
  end;
end;

procedure TfrmLogin.btnCancleClick(Sender: TObject);
begin
  self.ModalResult := mrCancel;
end;

procedure TfrmLogin.edUserIDExit(Sender: TObject);
begin
  GetUserInfo;
end;

procedure TfrmLogin.btnOKClick(Sender: TObject);
var
  ErrMsg: string;
begin
  if Qryopt.Active and (Qryopt.RecordCount>0) then
  begin
    if Qryopt.FieldByName('ReportPSWD').AsString<> edPassWord.Text then
      ShowMessage('登录错误：用户名或密码错误！')
//    else if cdsTemp.FieldByName('HaveRight').AsInteger <> 1 then
//      ShowMessage('您无权限管理模块权限，请与管理员联系！')
    else
    begin
//      frmDM.sUserID := edUserID.Text;
//      frmDM.sUserPWD := edPassWord.Text;
//      frmDM.bHaveRight := cdsTemp.FieldByName('HaveRight').AsInteger = 1;
//      //插入当前登录的用户信息   后面做权限视图需用到
//      //Select SYS_CONTEXT('USERENV', 'IP_ADDRESS') || ' '|| SYS_CONTEXT('USERENV', 'HOST') from dual
//      frmDM.ExecSQL('Merge into T_LBI_LOGINUSER A ' +
//                    'Using (Select SYS_CONTEXT(''USERENV'', ''IP_ADDRESS'') || '' ''|| SYS_CONTEXT(''USERENV'', ''HOST'') as UserEnvInfo from dual) B On (A.UserEnvInfo=B.UserEnvInfo) ' +
//                    'When Matched then ' +
//                    '  Update Set A.UserID=' + QuotedStr(edUserID.Text) + ', LastActiveTime=(Select SysDate from dual) ' +
//                    'When not Matched then ' +
//                    '  Insert (UserEnvInfo, UserID, Lastactivetime) Values (B.UserEnvInfo,' + QuotedStr(edUserID.Text) + ',(Select SysDate from dual))', ErrMsg);
      Self.ModalResult := mrOk;
//      Self.Close;
    end;
  end;
end;

procedure TfrmLogin.edPassWordKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    btnOK.Click;
end;

procedure TfrmLogin.edUserIDKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    edPassWord.SetFocus;
end;

//采用移花接木法，让程序将点击图片的事件转换成点击标题栏
procedure TfrmLogin.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  Perform(WM_SYSCOMMAND, $F012, 0);
end;

procedure TfrmLogin.FormShow(Sender: TObject);
begin
  if (ParamCount > 0) and (Trim(ParamStr(1)) <> '') then
  begin
    edUserID.Text := Trim(ParamStr(1));
    GetUserInfo;
    if (ParamCount > 1) then
      edPassWord.Text := ParamStr(2);
    btnOK.Click;
  end;
end;

procedure TfrmLogin.GetUserInfo;
var
  sSQL: string;
begin
  //
  sSQL := 'Select A.Fname_L2 as UserName,A.ReportPSWD ' +
          'from T_Pm_User A ' +
          'Where A.Fnumber = ' + QuotedStr(edUserID.Text);
  //获取一个ADOQUERY
  Qryopt := Gob_DBMrg.GetAnQuery('Qryopt');
  Gob_Rmo.OpenDataset(Qryopt,sSQL, []);
  if Qryopt.Active and (Qryopt.RecordCount>0) then
    edUserName.Text := Qryopt.FieldByName('UserName').AsString;
end;

procedure TfrmLogin.FormCreate(Sender: TObject);
var
 ini: Tinifile;
 ServerName:string;
 ServerPort: Integer;
begin
  ini := Tinifile.Create(ExtractFilePath(paramstr(0)) + 'STOffice.ini');
  try
    //取配置文件
    ServerName := Ini.ReadString('ServerConfig', 'ServerName', '127.0.0.1');
    ServerPort  := Ini.ReadInteger('ServerConfig', 'Port', 211);
  finally
    ini.Free;
  end;
  //因为ADO对象 不能再没有连接数据库的情况下使用，所以建立一个空的access数据库连接
  Gob_DBMrg := TDBMrg.Create(TDBMrg.GetAccessConnStr(GetCurrPath + 'temp.mdb'));

  //创建客户端对象  连接服务端9000端口
  Gob_Rmo := TRmoHelper.Create(9000);
  //允许post时 同时填充id字段
  Gob_Rmo.FRmoClient.IsInserIDfield := True;
  //连接服务端
  if not Gob_Rmo.ReConnSvr(ServerName) then
  begin
    ErrorInfo('连接数据库服务程序失败，请先启动服务程序!');
    with TfrmInitConfig.Create(nil) do
    try
      if ShowModal = mrOk then
        WinExec(pchar(application.ExeName), SW_SHOWNORMAL);
      Application.Terminate;
    finally
      Free;
    end;
  end;
end;

end.
