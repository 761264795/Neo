unit uRoleListfrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uListFormBaseFrm, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, jpeg, ExtCtrls, Buttons, DBClient,PermissionAgtFrm;

type
  TFM_RoleListForm = class(TListFormBaseFrm)
    Panel1: TPanel;
    btn_NewRow: TSpeedButton;
    btn_DelRow: TSpeedButton;
    Image1: TImage;
    Panel2: TPanel;
    cxgridRole: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cdsRoleList: TClientDataSet;
    dsRoleList: TDataSource;
    spt_AgtPerm: TSpeedButton;
    btn_Allocuser: TSpeedButton;
    spt_Edit: TSpeedButton;
    procedure btn_NewRowClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_DelRowClick(Sender: TObject);
    procedure btn_AllocuserClick(Sender: TObject);
    procedure cxgridRoleDblClick(Sender: TObject);
    procedure spt_EditClick(Sender: TObject);
    procedure spt_AgtPermClick(Sender: TObject);
  private
    { Private declarations }
    procedure OpenDatalist;
  public
    { Public declarations }
  end;

var
  FM_RoleListForm: TFM_RoleListForm;

implementation
uses uRoleEditFrm, FrmCliDM,Pub_Fun,uAllocUserfrm;
{$R *.dfm}

procedure TFM_RoleListForm.btn_NewRowClick(Sender: TObject);
begin
  inherited;
   if EditRolenfo_Frm('') then
   begin
     OpenDatalist;
   end;
end;

procedure TFM_RoleListForm.FormShow(Sender: TObject);
var FilePath : string;
begin
  FilePath := ExtractFilePath(paramstr(0))+'\Img\Tool_bk.jpg';
  if not LoadImage(FilePath,Image1) then  Gio.AddShow('图片路径不存在：'+FilePath);
  inherited;
  OpenDatalist;
end;
procedure TFM_RoleListForm.OpenDatalist;
var
strsql, strError :string ;
begin
  inherited;
  try
    strsql :=' select FID,Fnumber as 角色编号,Fname_l2 as 角色名称,FDESCRIPTION_L2 as 备注 from t_Pm_Role  ';
    Clidm.Get_OpenSQL(CliDM.cdstemp,strsql,strError);
    cdsRoleList.Data := CliDM.cdstemp.Data;
  except
    on   e :Exception  do
    begin
      ShowMsg(Handle, '查询数据出错！'+strError,[]);
      Abort;
    end;
  end;
  cxgridRole.ClearItems;
  cxgridRole.DataController.CreateAllItems;
  if cxgridRole.GetColumnByFieldName('FID')<>nil then
    cxgridRole.GetColumnByFieldName('FID').Visible := False;
  cxgridRole.GetColumnByFieldName('角色编号').Width := 150;
  cxgridRole.GetColumnByFieldName('角色名称').Width := 200;
  cxgridRole.GetColumnByFieldName('备注').Width := 300;
end;
procedure TFM_RoleListForm.btn_DelRowClick(Sender: TObject);
var
  strsql, ErrMsg : string;
begin
  inherited;
  strsql := ' select 1 from t_Pm_Userroleorg where FRoleID='+quotedstr(cdsRoleList.fieldbyname('FID').AsString);
  Clidm.Get_OpenSQL(CliDM.cdstemp,strsql,ErrMsg);
  if  CliDM.cdstemp.RecordCount>0 then
  begin
    ShowMsg(Handle, '用户已经分配了角色权限不允许删除',[]);
    Abort;
  end;
  if ShowYesNo(Handle, '确定删除角色?',[]) = idYes then
  begin
    strsql :=' delete from t_Pm_Rolepermissionentry where fparentID='+quotedstr(cdsRoleList.fieldbyname('FID').AsString)+'; '+
             ' delete from t_Pm_Rolecustomerentry where fparentID='+quotedstr(cdsRoleList.fieldbyname('FID').AsString)+'; '+
             ' delete from t_Pm_Rolesupplierentry where fparentID='+quotedstr(cdsRoleList.fieldbyname('FID').AsString)+'; '+
             ' delete from t_Pm_Role where FID ='+quotedstr(cdsRoleList.fieldbyname('FID').AsString)+'; ';
    CliDM.Get_ExecSQL(strsql,ErrMsg);
    if ErrMsg='' then
    begin
      ShowMsg(Handle, '删除数据成功',[]);
    end
    else
      ShowMsg(Handle, '删除数据失败',[]);
  end;
end;

procedure TFM_RoleListForm.btn_AllocuserClick(Sender: TObject);
begin
  inherited;
  with TFM_AllocUserRole.Create(self) do
  begin
    strRoleName := cdsRoleList.fieldbyname('角色名称').AsString;
    strRoleID := cdsRoleList.fieldbyname('FID').AsString;
    Open_Bill('', cdsRoleList.fieldbyname('FID').AsString);
    ShowModal;
  end;
end;

procedure TFM_RoleListForm.cxgridRoleDblClick(Sender: TObject);
begin
  inherited;
  EditRolenfo_Frm(cdsRoleList.fieldbyname('FID').AsString);
end;

procedure TFM_RoleListForm.spt_EditClick(Sender: TObject);
begin
  inherited;
  EditRolenfo_Frm(cdsRoleList.fieldbyname('FID').AsString);
end;

procedure TFM_RoleListForm.spt_AgtPermClick(Sender: TObject);
begin
  inherited;
  if cdsRoleList.IsEmpty then Exit;
  UserRolePermissionAgt(cdsRoleList.fieldbyname('FID').AsString,0,'角色权限分配>'+cdsRoleList.fieldbyname('角色编号').AsString+':'+cdsRoleList.fieldbyname('角色名称').AsString);
end;

end.
