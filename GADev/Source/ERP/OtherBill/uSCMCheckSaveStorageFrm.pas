unit uSCMCheckSaveStorageFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBaseEditFrm, ExtCtrls, Menus, cxLookAndFeelPainters, StdCtrls,
  cxButtons, DB, DBClient, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxButtonEdit, cxLabel;

type
  TFrm_SCMCheckSaveStorage = class(TSTBaseEdit)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    btOk: TcxButton;
    btCancel: TcxButton;
    cxButton1: TcxButton;
    cdsCheckBill: TClientDataSet;
    cxSaveDate: TcxDateEdit;
    lbCheckDate: TLabel;
    cxButton2: TcxButton;
    btDelSto: TcxButton;
    cxLabel1: TcxLabel;
    cxbtnWarehouse: TcxButtonEdit;
    procedure btOkClick(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btDelStoClick(Sender: TObject);
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure cxbtnWarehousePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    { Private declarations }
    FWareHouseID : string;
  public
    { Public declarations }
  end;

var
  Frm_SCMCheckSaveStorage: TFrm_SCMCheckSaveStorage;
  procedure OpenCheckSaveStorage;
implementation
  uses Pub_Fun, FrmCliDM,uFrm_CheckBillState,uMaterDataSelectHelper;
{$R *.dfm}

procedure OpenCheckSaveStorage;
begin
  try
    Application.CreateForm(TFrm_SCMCheckSaveStorage,Frm_SCMCheckSaveStorage);
    Frm_SCMCheckSaveStorage.ShowModal;
  finally
    Frm_SCMCheckSaveStorage.Free;
  end;
end;
procedure TFrm_SCMCheckSaveStorage.btOkClick(Sender: TObject);
var ErrMsg,SaveDate : string;
begin
  if cxSaveDate.Text = '' then
  begin
    ShowMsg(Handle,'请选择盘点日期！',[]);
    cxSaveDate.SetFocus;
    Abort;
  end;
  if trim(cxbtnWarehouse.text)='' then
  begin
    ShowMsg(Handle,'请选择盘点仓库！',[]);
    cxbtnWarehouse.SetFocus;
    Abort;
  end;

  //检查单据
  SaveDate := FormatDateTime('yyyy-mm-dd', cxSaveDate.Date);
  if CliDM.E_CheckBillState(FWareHouseID,SaveDate,cdsCheckBill,ErrMsg) then //有未处理单据
  begin
     ShowCheckBillState(cdsCheckBill);
     Exit;
  end;

  //保存库存
  if not CliDM.E_CheckSaveStorage(1,UserInfo.LoginUser_FID,FWareHouseID,SaveDate,cdsCheckBill,ErrMsg) then
  begin
    ShowMsg(Handle, ErrMsg,[]);
    Abort;
  end
  else
  begin
    ShowMsg(Handle, '保存库存成功！',[]);
    btCancel.SetFocus;
  end;
end;

procedure TFrm_SCMCheckSaveStorage.cxButton2Click(Sender: TObject);
var ErrMsg,SaveCheckDate : string;
begin
  if cxSaveDate.Text = '' then
  begin
    ShowMsg(Handle,'请选择盘点日期！',[]);
    cxSaveDate.SetFocus;
    Abort;
  end;
  if trim(cxbtnWarehouse.text)='' then
  begin
    ShowMsg(Handle,'请选择盘点仓库！',[]);
    cxbtnWarehouse.SetFocus;
    Abort;
  end;
  SaveCheckDate := FormatDateTime('yyyy-mm-dd', cxSaveDate.Date);
  //检查单据
  if CliDM.E_CheckBillState(FWareHouseID,SaveCheckDate,cdsCheckBill,ErrMsg) then //有未处理单据
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

procedure TFrm_SCMCheckSaveStorage.btCancelClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TFrm_SCMCheckSaveStorage.cxButton1Click(Sender: TObject);
var ErrMsg : string;
begin
  inherited;
  if CliDM.Pub_POSOut(UserInfo.LoginUser_FID,UserInfo.Warehouse_FID,ErrMsg) then
    ShowMsg(Handle, '计算库存成功！',[])
  else
    ShowMsg(Handle, ErrMsg,[]);
end;

procedure TFrm_SCMCheckSaveStorage.FormCreate(Sender: TObject);
begin
  inherited;
  //LoadImage(UserInfo.ExePath+'\Img\POS_Edit_Top2.jpg',Image1);
  //LoadImage(UserInfo.ExePath+'\Img\POS_Edit_Top2.jpg',Image2);
end;

procedure TFrm_SCMCheckSaveStorage.btDelStoClick(Sender: TObject);
var ErrMsg,SaveCheckDate : string;
begin
  if cxSaveDate.Text = '' then
  begin
    ShowMsg(Handle,'请选择盘点日期！',[]);
    cxSaveDate.SetFocus;
    Abort;
  end;
  if trim(cxbtnWarehouse.text)='' then
  begin
    ShowMsg(Handle,'请选择盘点仓库！',[]);
    cxbtnWarehouse.SetFocus;
    Abort;
  end;  
  SaveCheckDate := FormatDateTime('yyyy-mm-dd', cxSaveDate.Date);

  //删除保存库存
  if CliDM.E_CheckSaveStorage(2,UserInfo.LoginUser_FID,FWareHouseID,SaveCheckDate,cdsCheckBill,ErrMsg) then
     ShowMsg(Handle,'删除【'+SaveCheckDate+'】保存库存成功！',[])
  else
  begin
     ShowMsg(Handle,ErrMsg,[]);
     exit;
  end;
end;

procedure TFrm_SCMCheckSaveStorage.FormCanResize(Sender: TObject;
  var NewWidth, NewHeight: Integer; var Resize: Boolean);
begin
  inherited;
  Resize:=false;
end;

procedure TFrm_SCMCheckSaveStorage.cxbtnWarehousePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);

begin
  inherited;
  FWareHouseID := '';
  with Select_Warehouse('','',1) do
  begin
    if not IsEmpty then
    begin
      FWareHouseID :=fieldbyname('FID').AsString ;
      cxbtnWarehouse.Text  := fieldbyname('Fname_l2').AsString;
    end;
  end;
end;

end.
