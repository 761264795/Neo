unit uRegister;

interface

uses
  Windows, SysUtils, Classes, Controls, Forms,
  StdCtrls, Buttons, ExtCtrls, Mask, DBCtrls, DB, ADODB,main;

type
  TRegisterFrm = class(TForm)
    Label1: TLabel;
    ed_code: TDBEdit;
    Label2: TLabel;
    ed_mac: TDBEdit;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    QryReg: TADOQuery;
    dsReg: TDataSource;
    QryRegMACADDRESS: TStringField;
    QryRegREGCODE: TStringField;
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure ed_macKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    ispass:Boolean;
  end;

var
  RegisterFrm: TRegisterFrm;

implementation
  uses utils;
{$R *.dfm}

procedure TRegisterFrm.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
  Resize:=False;
end;

procedure TRegisterFrm.FormShow(Sender: TObject);
begin
   ispass:=False;
   with QryReg  do
   begin
     Close;
     SQL.Clear;
     SQL.Add('select macAddress,regcode from registerinfo where macAddress='''+uppercase(getRegCode(mac))+'''');
     Open;
     if IsEmpty then
     begin
       Append;
       FieldByName('macAddress').AsString:=uppercase(getRegCode(mac));
     end
   end;
end;

procedure TRegisterFrm.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure TRegisterFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if not ispass then Application.Terminate;
end;

procedure TRegisterFrm.BitBtn1Click(Sender: TObject);
begin
  //getpassCode
  if   Trim(ed_code.Text) = '' then
  begin
     Application.MessageBox('注册码不能为空!','提示',MB_OK);
     Exit;
  end;
  try
    if (UpperCase(Trim(ed_code.Text))=UpperCase(getpassCode(ed_mac.Text)))  then
    begin
      Application.MessageBox('恭喜你,注册成功!','提示',MB_OK);
      QryReg.Post;
      ispass:=True;
      close;
    end
    else
    begin
       Application.MessageBox('注册码不正确!','提示',MB_OK);
    end;
  except
    on e:Exception do
    begin
      Application.MessageBox('注册码不正确!','提示',MB_OK);
      Application.Terminate;
    end;
  end;
end;

procedure TRegisterFrm.ed_macKeyPress(Sender: TObject; var Key: Char);
begin
  Key:=#0;
end;

end.
