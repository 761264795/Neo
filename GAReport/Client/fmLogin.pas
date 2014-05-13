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

  //��½ϵͳ
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
    //ȡ����¼ϵͳ����ִ����������ʾ�¼���
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
      ShowMessage('��¼�����û������������')
//    else if cdsTemp.FieldByName('HaveRight').AsInteger <> 1 then
//      ShowMessage('����Ȩ�޹���ģ��Ȩ�ޣ��������Ա��ϵ��')
    else
    begin
//      frmDM.sUserID := edUserID.Text;
//      frmDM.sUserPWD := edPassWord.Text;
//      frmDM.bHaveRight := cdsTemp.FieldByName('HaveRight').AsInteger = 1;
//      //���뵱ǰ��¼���û���Ϣ   ������Ȩ����ͼ���õ�
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

//�����ƻ���ľ�����ó��򽫵��ͼƬ���¼�ת���ɵ��������
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
  //��ȡһ��ADOQUERY
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
    //ȡ�����ļ�
    ServerName := Ini.ReadString('ServerConfig', 'ServerName', '127.0.0.1');
    ServerPort  := Ini.ReadInteger('ServerConfig', 'Port', 211);
  finally
    ini.Free;
  end;
  //��ΪADO���� ������û���������ݿ�������ʹ�ã����Խ���һ���յ�access���ݿ�����
  Gob_DBMrg := TDBMrg.Create(TDBMrg.GetAccessConnStr(GetCurrPath + 'temp.mdb'));

  //�����ͻ��˶���  ���ӷ����9000�˿�
  Gob_Rmo := TRmoHelper.Create(9000);
  //����postʱ ͬʱ���id�ֶ�
  Gob_Rmo.FRmoClient.IsInserIDfield := True;
  //���ӷ����
  if not Gob_Rmo.ReConnSvr(ServerName) then
  begin
    ErrorInfo('�������ݿ�������ʧ�ܣ����������������!');
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
