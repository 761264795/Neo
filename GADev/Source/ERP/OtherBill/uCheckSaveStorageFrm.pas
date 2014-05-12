unit uCheckSaveStorageFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBaseEditFrm, ExtCtrls, Menus, cxLookAndFeelPainters, StdCtrls,
  cxButtons, DB, DBClient, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar;

type
  TFrm_CheckSaveStorage = class(TSTBaseEdit)
    Panel1: TPanel;
    Panel2: TPanel;
    Image1: TImage;
    Image2: TImage;
    Label1: TLabel;
    btOk: TcxButton;
    btCancel: TcxButton;
    cxButton1: TcxButton;
    cdsCheckBill: TClientDataSet;
    cxSaveDate: TcxDateEdit;
    lbCheckDate: TLabel;
    cxButton2: TcxButton;
    btDelSto: TcxButton;
    procedure btOkClick(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btDelStoClick(Sender: TObject);
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_CheckSaveStorage: TFrm_CheckSaveStorage;
  procedure OpenCheckSaveStorage;
implementation
  uses Pub_Fun, FrmCliDM,uFrm_CheckBillState;
{$R *.dfm}

procedure OpenCheckSaveStorage;
begin
  try
    Application.CreateForm(TFrm_CheckSaveStorage,Frm_CheckSaveStorage);
    Frm_CheckSaveStorage.ShowModal;
  finally
    Frm_CheckSaveStorage.Free;
  end;
end;
procedure TFrm_CheckSaveStorage.btOkClick(Sender: TObject);
var ErrMsg,SaveDate : string;
begin
  if cxSaveDate.Text = '' then
  begin
    ShowMsg(Handle,'��ѡ���̵����ڣ�',[]);
    cxSaveDate.SetFocus;
    Abort;
  end;
  //SaveDate := FormatDateTime('yyyy-mm-dd', UserInfo.ServerTime);
  SaveDate := FormatDateTime('yyyy-mm-dd', cxSaveDate.Date);
  if UserInfo.DayEndDay < cxSaveDate.Date then
  begin
    ShowMsg(Handle,SaveDate+' ��û�����սᣬ���ܱ����棡',[]);
    abort;
  end;

  //��鵥��
  if CliDM.Pub_CheckBillState(UserInfo.Warehouse_FID,SaveDate,cdsCheckBill,ErrMsg) then //��δ������
  begin
     ShowCheckBillState(cdsCheckBill);
     Exit;
  end;

  //������
  if not CliDM.Pub_CheckSaveStorage(3,SaveDate,cdsCheckBill,ErrMsg) then
  begin
    ShowMsg(Handle, ErrMsg,[]);
    Abort;
  end
  else
  begin
    ShowMsg(Handle, '������ɹ���',[]);
    btCancel.SetFocus;
  end;
end;

procedure TFrm_CheckSaveStorage.cxButton2Click(Sender: TObject);
var ErrMsg,SaveCheckDate : string;
begin
  if cxSaveDate.Text = '' then
  begin
    ShowMsg(Handle,'��ѡ���̵����ڣ�',[]);
    cxSaveDate.SetFocus;
    Abort;
  end;
  
  SaveCheckDate := FormatDateTime('yyyy-mm-dd', cxSaveDate.Date);
  //��鵥��
  if CliDM.Pub_CheckBillState(UserInfo.Warehouse_FID,SaveCheckDate,cdsCheckBill,ErrMsg) then //��δ������
  begin
     ShowCheckBillState(cdsCheckBill);
     Exit;
  end
  else
  begin
     ShowMsg(Handle,ErrMsg,[]);
     btOk.SetFocus;
  end;
end;

procedure TFrm_CheckSaveStorage.btCancelClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TFrm_CheckSaveStorage.cxButton1Click(Sender: TObject);
var ErrMsg : string;
begin
  inherited;
  if CliDM.Pub_POSOut(UserInfo.LoginUser_FID,UserInfo.Warehouse_FID,ErrMsg) then
    ShowMsg(Handle, '������ɹ���',[])
  else
    ShowMsg(Handle, ErrMsg,[]);
end;

procedure TFrm_CheckSaveStorage.FormCreate(Sender: TObject);
begin
  inherited;
  LoadImage(UserInfo.ExePath+'\Img\POS_Edit_Top2.jpg',Image1);
  LoadImage(UserInfo.ExePath+'\Img\POS_Edit_Top2.jpg',Image2);
end;

procedure TFrm_CheckSaveStorage.btDelStoClick(Sender: TObject);
var ErrMsg,SaveCheckDate : string;
begin
  if cxSaveDate.Text = '' then
  begin
    ShowMsg(Handle,'��ѡ���̵����ڣ�',[]);
    cxSaveDate.SetFocus;
    Abort;
  end;
  SaveCheckDate := FormatDateTime('yyyy-mm-dd', cxSaveDate.Date);

  //ɾ��������
  if CliDM.Pub_CheckSaveStorage(10,SaveCheckDate,cdsCheckBill,ErrMsg) then
     ShowMsg(Handle,'ɾ����'+SaveCheckDate+'��������ɹ���',[])
  else
  begin
     ShowMsg(Handle,ErrMsg,[]);
     exit;
  end;
end;

procedure TFrm_CheckSaveStorage.FormCanResize(Sender: TObject;
  var NewWidth, NewHeight: Integer; var Resize: Boolean);
begin
  inherited;
  Resize:=false;
end;

end.
