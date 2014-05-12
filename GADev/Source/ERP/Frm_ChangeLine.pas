unit Frm_ChangeLine;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFM_ChangeLine = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    btnOk: TButton;
    btnCancel: TButton;
    procedure btnOkClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  function Change_SysLine: Boolean;

var
  FM_ChangeLine: TFM_ChangeLine;

implementation

uses FrmCliMain, Frm_TranUpDate, FrmCliDM,Pub_Fun;

{$R *.dfm}

function Change_SysLine: Boolean;
var sqlstr,ErrMsg : string;
begin
  Result := False;
  with TFM_ChangeLine.Create(nil) do
  try
    if FMCliMain.Is_SysOnline then
      lbl1.Caption := '系统当前联机状态'
    else
      lbl1.Caption := '系统当前离线状态';
    Result := ShowModal = mrOk;
    if Result then
    begin
      if FMCliMain.Is_SysOnline then
      begin  //切换到离线
        if CliDM.SckCon.Connected then CliDM.SckCon.Close;
        FMCliMain.Is_SysOnline := False;
        UserInfo.Is_SysOnline := False;
      end
      else
      begin  //切换到联机
        try
          if not CliDM.SckCon.Connected then CliDM.SckCon.Open;
        except
          MessageBox(Handle, PChar('连接服务器发生错误,不能切换到联机状态!'), '金蝶提示', MB_OK OR MB_ICONINFORMATION);
          Exit;
        end;
        //上传数据
        TranUpData;
        
        //重新获取服务器时间
        //SQLSTR := 'SELECT TO_CHAR(SYSDATE,''YYYY-MM-DD HH:MI:SS'') AS SERVERTIME  FROM DUAL ';
        //UserInfo.ServerTime := VarToDateTime(CliDM.Get_QueryReturn(sqlstr,ErrMsg));
        FMCliMain.Is_SysOnline := True;
        UserInfo.Is_SysOnline := True;
        
        //重新下载服务器时间，店铺资料，单据标志等信息
        if not CliDM.GetShopInfo(ErrMsg) then
        begin
          ShowMsg(Handle,ErrMsg,[]);
          //if (ErrMsg='机器码修改完成，请重新登录') then //直接关闭程序
          application.Terminate;
         // Exit;
        end;
      end;
      FMCliMain.Get_UserRoles; //重新获取权限 20120223
    end;
  finally
    Free;
  end;
end;

procedure TFM_ChangeLine.btnOkClick(Sender: TObject);
var
  str: string;
begin
  if FMCliMain.Is_SysOnline then
    str := '您确定要切换到离线状态吗？'
  else
    str := '您确定要切换到联机状态吗？';
  if MessageBox(Handle, PChar(str), '金蝶提示', MB_YESNO or MB_ICONQUESTION) <> IDYES then Exit;
  self.ModalResult := mrOk;
end;

end.
