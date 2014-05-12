unit Frm_ChangePwd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, cxControls, cxContainer, cxEdit, cxTextEdit, StdCtrls;

type
  TFM_ChangePwd = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    edtUserID: TEdit;
    edtOldPWD: TEdit;
    edtNewPWD: TEdit;
    edtNewPWD2: TEdit;
    bvl1: TBevel;
    imgOk1: TImage;
    imgOk2: TImage;
    lblOK: TLabel;
    imgCancel1: TImage;
    imgCancel2: TImage;
    lblCancel: TLabel;
    Label1: TLabel;
    edtUserName: TEdit;
    procedure lblOKMouseEnter(Sender: TObject);
    procedure lblOKMouseLeave(Sender: TObject);
    procedure lblCancelMouseEnter(Sender: TObject);
    procedure lblCancelMouseLeave(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lblCancelClick(Sender: TObject);
    procedure lblOKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  function Change_UserPWD(UserID: string): Boolean;

var
  FM_ChangePwd: TFM_ChangePwd;

implementation

uses FrmCliDM, FrmCliMain,Pub_Fun;

{$R *.dfm}

function Change_UserPWD(UserID: string): Boolean;
begin
  Result := False;
  with TFM_ChangePwd.Create(nil) do
  try
    edtUserID.Text := UserInfo.LoginUser;
    edtUserName.Text := FMCliMain.LoginUser_Name;
    Result := ShowModal = mrOk;
  finally
    Free;
  end;
end;

procedure TFM_ChangePwd.lblOKMouseEnter(Sender: TObject);
begin
  imgOk1.Visible := True;
  imgOk2.Visible := False;
end;

procedure TFM_ChangePwd.lblOKMouseLeave(Sender: TObject);
begin
  imgOk1.Visible := False;
  imgOk2.Visible := True;
end;

procedure TFM_ChangePwd.lblCancelMouseEnter(Sender: TObject);
begin
  imgCancel1.Visible := True;
  imgCancel2.Visible := False;
end;

procedure TFM_ChangePwd.lblCancelMouseLeave(Sender: TObject);
begin
  imgCancel1.Visible := False;
  imgCancel2.Visible := True;
end;

procedure TFM_ChangePwd.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_RETURN) then
  begin
    if (ActiveControl <> nil)and(SameText(ActiveControl.Name, 'edtNewPWD2')) then
      lblOKClick(lblOK)
    else
      Perform(WM_NEXTDLGCTL, 0, 0);
  end
  else if Key = VK_ESCAPE then
    lblCancelClick(lblCancel);
end;

procedure TFM_ChangePwd.lblCancelClick(Sender: TObject);
begin
  Self.ModalResult := mrOk;
end;

procedure TFM_ChangePwd.lblOKClick(Sender: TObject);
var
  ErrMsg,PSWD: string;
begin
  if (Trim(edtNewPWD.Text)='') or (Trim(edtNewPWD2.Text)='') then
  begin
    ErrMsg := '密码不能为空';
    if Trim(edtNewPWD.Text)='' then
      edtNewPWD.SetFocus
    else
      edtNewPWD2.SetFocus;
    MessageBox(Handle, PChar(ErrMsg), '金蝶提示', MB_OK OR MB_ICONINFORMATION);
    Exit;
  end;
  if Trim(edtNewPWD.Text) <> Trim(edtNewPWD2.Text) then
  begin
    ErrMsg := '新密码与确认密码不一致';
    edtNewPWD.SetFocus;
    MessageBox(Handle, PChar(ErrMsg), '金蝶提示', MB_OK OR MB_ICONINFORMATION);
    Exit;
  end;
  try
    if not CliDM.SckCon.Connected then CliDM.SckCon.Open;
  except
    on E: Exception do
    begin
      ErrMsg := '连接POS服务器错误：' + E.Message;
      MessageBox(Handle, PChar(ErrMsg), '金蝶提示', MB_OK OR MB_ICONINFORMATION);
      Exit;
    end;
  end;
  if CliDM.SckCon.AppServer.Che_UserPassWord(edtUserID.Text, Trim(edtOldPWD.Text), Trim(edtNewPWD.Text), ErrMsg) = 0 then
  begin
    if CliDM.SckCon.Connected then CliDM.SckCon.Close;
    //修改本地数据库中用户密码
    PSWD:=Trim(edtNewPWD.Text);
    if   PSWD<>'' then PSWD:=GetMd5Password(userinfo.LoginUser_FID+PSWD);
    CliDM.qryTemp.Close;
    CliDM.qryTemp.SQL.Text := 'UPDATE T_PM_User set fpassword='''+PSWD+ ''' WHERE upper(FNUMBER) = '''+uppercase(Trim(edtUserID.Text))+'''';
    CliDM.qryTemp.ExecSQL;
    CliDM.qryTemp.Close;
    MessageBox(Handle, PChar('密码修改成功，请记住新密码。'), '金蝶提示', MB_OK OR MB_ICONINFORMATION);
    Self.ModalResult := mrok;
    Exit;
  end
  else
  begin
    edtOldPWD.SetFocus;
    MessageBox(Handle, PChar('错误：'+#13#10+ErrMsg), '金蝶提示', MB_OK OR MB_ICONINFORMATION);
    Exit;
  end;
end;

end.
