unit uFrm_CheckAffirm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBaseEditFrm, ExtCtrls, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, StdCtrls, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, DB, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, Menus, cxLookAndFeelPainters,
  cxButtons, DBClient, cxLabel, cxButtonEdit;

type
  TFrm_CheckAffirm = class(TSTBaseEdit)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Image3: TImage;
    Label1: TLabel;
    cxGrid1: TcxGrid;
    dbgList: TcxGridDBTableView;
    dbgLevel1: TcxGridLevel;
    btCancel: TcxButton;
    cdsCheckList: TClientDataSet;
    dsCheckList: TDataSource;
    cbCheckDate: TcxComboBox;
    btFind: TcxButton;
    cdsCheckDate: TClientDataSet;
    ctCancelCheck: TcxButton;
    btOk: TcxButton;
    cxUnCheckDate: TcxDateEdit;
    Label3: TLabel;
    Label2: TLabel;
    cdsCheckBill: TClientDataSet;
    cxbtnWarehouse: TcxButtonEdit;
    cxLabel1: TcxLabel;
    procedure btFindClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btOkClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure ctCancelCheckClick(Sender: TObject);
    procedure cxbtnWarehousePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);

  private
    { Private declarations }
    FWareHouseID : string;
  public
    { Public declarations }
    function isPassCheck:boolean;
  end;

var
  Frm_CheckAffirm: TFrm_CheckAffirm;
procedure OpenCheckAffirm;
implementation
  uses FrmCliDM,Pub_Fun,uFrm_CheckBillState,uMaterDataSelectHelper;
{$R *.dfm}
function TFrm_CheckAffirm.isPassCheck:boolean;
var ErrMsg,SaveCheckDate : string;
begin
  result:=true;
  SaveCheckDate := cbCheckDate.Text;
  //检查单据
  if CliDM.E_CheckBillState(UserInfo.Warehouse_FID,SaveCheckDate,cdsCheckBill,ErrMsg) then //有未处理单据
  begin
     ShowCheckBillState(cdsCheckBill);
     result:=false;
     Exit;
  end;
end;

procedure OpenCheckAffirm;
begin
  try
    Application.CreateForm(TFrm_CheckAffirm,Frm_CheckAffirm);
    Frm_CheckAffirm.ShowModal;
  finally
    Frm_CheckAffirm.Free;
  end;
end;


procedure TFrm_CheckAffirm.btFindClick(Sender: TObject);
var ErrMsg,CheckDateStr: String;
begin
  inherited;
  CheckDateStr := Trim(cbCheckDate.Text);
  if CheckDateStr = '' then
  begin
    ShowMsg(Handle,'请选择盘点日期！',[]);
    cbCheckDate.SetFocus;
    abort;
  end;
  if trim(cxbtnWarehouse.text)='' then
  begin
    ShowMsg(Handle,'请选择盘点仓库！',[]);
    cxbtnWarehouse.SetFocus;
    Abort;
  end;  
  if not CliDM.E_CheckSaveStorage(4,UserInfo.LoginUser_FID,FWareHouseID,CheckDateStr,cdsCheckList,ErrMsg) then
  begin
    ShowError(Handle,ErrMsg,[]);
    Abort;
  end
  else
    CreateDetailColumn(cdsCheckList,dbgList,Self.Name);
end;

procedure TFrm_CheckAffirm.FormCreate(Sender: TObject);
var ErrMsg,CheckDateStr: String;
begin
  inherited;
  cbCheckDate.Properties.Items.Clear;
  //if CliDM.Pub_CheckSaveStorage(1,CheckDateStr,cdsCheckDate,ErrMsg) then
  if CliDM.E_CheckSaveStorage(6,UserInfo.LoginUser_FID,FwarehouseID,CheckDateStr,cdsCheckDate,ErrMsg) then
  if not cdsCheckDate.IsEmpty then
  begin
    cdsCheckDate.First;
    while not cdsCheckDate.Eof do
    begin
      CheckDateStr := cdsCheckDate.Fields[0].AsString;
      cbCheckDate.Properties.Items.Add(CheckDateStr);
      cdsCheckDate.Next;
    end;
      cbCheckDate.ItemIndex :=0;
  end;

 // LoadImage(UserInfo.ExePath+'\Img\POS_Edit_Top2.jpg',Image1);
 // LoadImage(UserInfo.ExePath+'\Img\POS_Edit_Top2.jpg',Image2);
end;
procedure TFrm_CheckAffirm.btOkClick(Sender: TObject);
var CheckDateStr,ErrMsg,strsql: string;
begin
  inherited;
  if cbCheckDate.Text='' then
  begin
    ShowMsg(Handle,'请选择盘点日期！',[]);
    cbCheckDate.SetFocus;
    abort;
  end;
  if trim(cxbtnWarehouse.text)='' then
  begin
    ShowMsg(Handle,'请选择盘点仓库！',[]);
    cxbtnWarehouse.SetFocus;
    Abort;
  end;  
  if not isPassCheck then exit;
  /////判断当天是否保存盘点库存owen。
  strsql := 'select 1  from CT_IM_CHECKSAVESTORAGE where Rownum=1 and  FAffirmState=0 and FCHECKDATESTR='+quotedstr( Trim(cbCheckDate.Text))+' and Fwarehouseid='+quotedstr(FWareHouseID);
  CliDM.Get_OpenSQL(CliDM.cdsTemp,strsql,ErrMsg);
  if CliDM.cdsTemp.RecordCount =0 then
  begin
    if ShowYesNo(Handle, '当前盘点日期'+Trim(cbCheckDate.Text)+'没有保存盘点当天库存，单击【是】将全部盘盈入库,一般用于系统初始化,是否继续?',[]) = Idno then exit;

  end;
  if ShowYesNo(Handle, '盘点确认后会生成盈亏单据，是否确认?',[]) = Idno then exit;

  CheckDateStr := Trim(Frm_CheckAffirm.cbCheckDate.Text);
  if  Clidm.E_CheckSaveStorage(5,UserInfo.LoginUser_FID,FWareHouseID,CheckDateStr,clidm.cdstmp,ErrMsg) then
  begin
    CliDM.ClientUserLog(Self.Caption,'盘点确认','盘点单日期:'+CheckDateStr);
    ShowMsg(Frm_CheckAffirm.Handle,'盘点确认完成！',[]) ;
  end
  else
    ShowMsg(Frm_CheckAffirm.Handle,ErrMsg,[]);
end;

procedure TFrm_CheckAffirm.btCancelClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TFrm_CheckAffirm.ctCancelCheckClick(Sender: TObject);
var CheckDateStr,ErrMsg : string;
begin
  inherited;
  CheckDateStr := FormatDateTime('yyyy-mm-dd', cxUnCheckDate.Date);
  if (CheckDateStr = '') or (cxUnCheckDate.Text='') then
  begin
    ShowMsg(Handle,'请选择盘点日期！',[]);
    cxUnCheckDate.SetFocus;
    abort;
  end;
  
  //取消盘点    cdsCheckList 在当前状态下没有用
 // if not CliDM.Pub_CheckSaveStorage(9,CheckDateStr,cdsCheckList,ErrMsg) then
  if not  CliDM.Pub_BillDel(UserInfo.LoginUser_FID,'SCMCancelCheck','',CheckDateStr,ErrMsg,FWareHouseID) then
  begin
    Gio.AddShow('取消盘点出错： '+ErrMsg);
    ShowError(Handle,ErrMsg,[]);
    Abort;
  end
  else
  begin
    Gio.AddShow('取消盘点成功！ ['+CheckDateStr+']');
    CliDM.ClientUserLog(Self.Caption,'取消盘点','盘点单日期:'+CheckDateStr);
    ShowMsg(Handle,'取消盘点成功！',[]);
    
  end;
end;

procedure TFrm_CheckAffirm.cxbtnWarehousePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
  var ErrMsg,CheckDateStr: String;
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
  cbCheckDate.Properties.Items.Clear;
  //if CliDM.Pub_CheckSaveStorage(1,CheckDateStr,cdsCheckDate,ErrMsg) then
  if CliDM.E_CheckSaveStorage(6,UserInfo.LoginUser_FID,FwarehouseID,CheckDateStr,cdsCheckDate,ErrMsg) then
  if not cdsCheckDate.IsEmpty then
  begin
    cdsCheckDate.First;
    while not cdsCheckDate.Eof do
    begin
      CheckDateStr := cdsCheckDate.Fields[0].AsString;
      cbCheckDate.Properties.Items.Add(CheckDateStr);
      cdsCheckDate.Next;
    end;
      cbCheckDate.ItemIndex :=0;
  end;  
end;

end.
