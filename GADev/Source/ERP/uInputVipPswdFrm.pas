unit uInputVipPswdFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBaseEditFrm, DB, DBClient, StdCtrls, ExtCtrls;

type
  TInputVipPswdFrm = class(TSTBaseEdit)
    edtPWD: TEdit;
    Label1: TLabel;
    Image1: TImage;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtPWDKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }

  public
    PassWord:String;
    { Public declarations }
  end;

var
  InputVipPswdFrm: TInputVipPswdFrm;
  function CheckVipPassWord (pswd:String):Boolean;
implementation

uses FrmCliDM,Pub_Fun,uPOSEditFrm,uVipPassWordUpdate;

{$R *.dfm}
function CheckVipPassWord (pswd:String):Boolean;
begin
  Application.CreateForm(TInputVipPswdFrm,InputVipPswdFrm);
  InputVipPswdFrm.PassWord := pswd;
  Result :=InputVipPswdFrm.ShowModal=mrok;
  InputVipPswdFrm.Free;
end;
procedure TInputVipPswdFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  //inherited;
end;

procedure TInputVipPswdFrm.edtPWDKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key=13 then
  begin
    if Trim(edtPWD.Text) <> PassWord then
    begin
      ShowMessage('对不起，你输入的密码不正确！');
      edtPWD.Clear;
      edtPWD.SetFocus;
      Exit;
    end
    else
    begin
      Self.ModalResult := mrOk;
    end;
  end;
  if (Key=27) then  Self.ModalResult := mrCancel;
end;

procedure TInputVipPswdFrm.FormCreate(Sender: TObject);
begin
  inherited;
  LoadImage(UserInfo.ExePath+'\Img\POS_Edit_Top2.jpg',Image1);
end;

end.
