unit uLockSysFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Menus, cxLookAndFeelPainters, cxButtons,
  cxControls, cxContainer, cxEdit, cxTextEdit;

type
  TFrmLockSys = class(TForm)
    pnClient: TPanel;
    Image1: TImage;
    Label1: TLabel;
    btOK: TcxButton;
    edtUserPwd: TEdit;
    Image2: TImage;
    cxButton1: TcxButton;
    Bevel1: TBevel;
    procedure btOKClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edtUserPwdKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
     procedure CreateParams(var Params: TCreateParams); override;
  public
    { Public declarations }
  end;

var
  FrmLockSys: TFrmLockSys;
  function LockSys : boolean;

implementation
uses FrmCliDM,Pub_Fun;
{$R *.dfm}

function LockSys : boolean;
begin
  Result := True;
  Application.CreateForm(TFrmLockSys,FrmLockSys);
  FrmLockSys.ShowModal;
  FrmLockSys.Free;
end;

procedure TFrmLockSys.btOKClick(Sender: TObject);
begin
   if  Trim(edtUserPwd.Text) <> UserInfo.UserPass then
   begin
     ShowMsg(Handle, '密码错误！',[]);
     edtUserPwd.SetFocus;
     edtUserPwd.SelectAll;
     Abort;
   end
   else
   Close;
end;

procedure TFrmLockSys.FormShow(Sender: TObject);
begin
 // edtUserPwd.SetFocus;
end;

procedure TFrmLockSys.FormCreate(Sender: TObject);
begin
 LoadImage(UserInfo.ExePath+'\Img\POS_Edit_Top2.jpg',Image1);
end;

procedure TFrmLockSys.edtUserPwdKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_RETURN) then
   btOK.Click;
end;

procedure TFrmLockSys.CreateParams(var Params: TCreateParams);
begin
  Inherited CreateParams(Params);
  Params.ExStyle := Params.ExStyle or WS_Ex_AppWindow;
end;

procedure TFrmLockSys.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if (shift = [ssAlt]) and (key = VK_F4) then Abort;  //ALT+F4 操作系统自带关闭窗体
end;

procedure TFrmLockSys.cxButton1Click(Sender: TObject);
begin
  if  MessageBox(Handle, PChar('您确定要退出系统吗？'), '金蝶提示', MB_YESNO or MB_ICONQUESTION) = IDYES then 
  application.Terminate;
end;

end.
