unit uUserRolefrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBaseEditFrm, DB, DBClient, Buttons, jpeg, ExtCtrls,
  cxLookAndFeelPainters, cxControls, cxContainer, cxEdit, cxGroupBox,
  cxMaskEdit, cxButtonEdit, cxTextEdit, cxLabel, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, Menus, ADODB, StdCtrls, cxButtons;

type
  TFM_UserRoleForm = class(TSTBaseEdit)
    Panel1: TPanel;
    Image2: TImage;
    btn_Save: TSpeedButton;
    btn_Exit: TSpeedButton;
    Panel2: TPanel;
    Panel4: TPanel;
    Panel3: TPanel;
    cxGrid1: TcxGrid;
    cxgridRole: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    Panel5: TPanel;
    Panel6: TPanel;
    cxGrid2: TcxGrid;
    cxGridUserRole: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxbtnBachIns: TcxButton;
    cxbtnIns: TcxButton;
    cxbtnBatchDel: TcxButton;
    cxbtnDel: TcxButton;
    dsRole: TDataSource;
    cdsRole: TClientDataSet;
    cdsUserRole: TClientDataSet;
    dsUserRole: TDataSource;
    cdsRoleFID: TWideStringField;
    cdsRoleFNUMBER: TWideStringField;
    cdsRoleFNAME_L2: TWideStringField;
    cxgridRoleFNUMBER: TcxGridDBColumn;
    cxgridRoleFNAME_L2: TcxGridDBColumn;
    cdsTmpRole: TClientDataSet;
    cdsUserRoleFUSERID: TWideStringField;
    cdsUserRoleFROLEID: TWideStringField;
    cdsUserRoleFORGID: TWideStringField;
    cdsUserRoleRoleName: TStringField;
    cxGridUserRoleRoleName: TcxGridDBColumn;
    cxgridRoleColumn1: TcxGridDBColumn;
    cdsUserRoleFID: TWideStringField;
    Panel7: TPanel;
    cxedtUser: TcxTextEdit;
    cxLabel1: TcxLabel;
    cdsUserRoleFnumber: TStringField;
    cxGridUserRoleColumn1: TcxGridDBColumn;
    procedure btn_ExitClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cdsUserRoleCalcFields(DataSet: TDataSet);
    procedure btn_SaveClick(Sender: TObject);
    procedure cxbtnBachInsClick(Sender: TObject);
    procedure cxbtnInsClick(Sender: TObject);
    procedure cxbtnBatchDelClick(Sender: TObject);
    procedure cxbtnDelClick(Sender: TObject);
    procedure cxgridRoleDblClick(Sender: TObject);
    procedure cxGridUserRoleDblClick(Sender: TObject);
  private
    { Private declarations }
    procedure AddUserRole;
    procedure DelUserRole;
  public
     sUserID,strUserName : string;
    { Public declarations }
  end;

var
  FM_UserRoleForm: TFM_UserRoleForm;

 // function EditUserRole_Frm(KeyValues,sUsername: string):Boolean;    //打开用户角色编辑界面
implementation
uses Pub_Fun,FrmCliDM;
{$R *.dfm}

procedure TFM_UserRoleForm.btn_ExitClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TFM_UserRoleForm.FormShow(Sender: TObject);
var
   strsql ,ErrMsg: string;
   OpenTables: array[0..0] of string;
    _cds: array[0..0] of TClientDataSet;
begin
  inherited;
  cxedtUser.Text := strUserName;
  strsql := ' select FID,Fnumber,Fname_l2 from t_Pm_Role ';
  try
    Clidm.Get_OpenSQL(cdsTmpRole,strsql,ErrMsg);
    cdsRole.Data := cdsTmpRole.Data;
  except
    on  E: Exception  do
    begin
      ShowMsg(Handle, '角色查询出错:'+ErrMsg,[]);
      Abort;
    end;
  end;
  try
    OpenTables[0] := 'select * from t_Pm_Userroleorg where FuserID='+quotedstr(sUserID);
    _cds[0] := cdsUserRole;
    if not CliDM.Get_OpenClients_E(sUserID,_cds,OpenTables,ErrMsg) then
    begin
      ShowError(Handle, ErrMsg,[]);
      Abort;
    end;
  except
    on E : Exception do
    begin
       ShowError(Handle, '打开数据报错：'+E.Message,[]);
       Abort;
    end;
  end;
end;

procedure TFM_UserRoleForm.cdsUserRoleCalcFields(DataSet: TDataSet);
begin
  inherited;
  if DataSet.FindField('RoleName')<> nil then
  begin
    if FindRecord1(cdsTmpRole,'FID',DataSet.fieldbyname('FROLEID').AsString,1) then
      DataSet.FieldByName('RoleName').AsString := cdsTmpRole.fieldbyname('fname_l2').AsString;
    if FindRecord1(cdsTmpRole,'FID',DataSet.fieldbyname('FROLEID').AsString,1) then
      DataSet.FieldByName('Fnumber').AsString := cdsTmpRole.fieldbyname('fnumber').AsString;
  end;
end;
procedure TFM_UserRoleForm.AddUserRole;
var
  I : Integer;
  vFID :Variant;
begin
  for I := 0 to  cxgridRole.Controller.SelectedRowCount-1 do
  begin
    vFID := cxgridRole.Controller.SelectedRows[I].Values[2];
    if not FindRecord1(cdsUserRole,'FRoleID',vFID,1) then
    begin
      cdsUserRole.Append;
      cdsUserRole.FieldByName('FID').AsString :=  Get_Guid;
      cdsUserRole.FieldByName('fuserid').AsString :=  sUserID;
      cdsUserRole.FieldByName('FORGID').AsString :=  UserInfo.Branch_ID;
      cdsUserRole.FieldByName('FRoleID').AsString := vFID;
      cdsUserRole.Post;
    end;
  end;
end;
procedure TFM_UserRoleForm.btn_SaveClick(Sender: TObject);
var ErrMsg : string;
   _cds: array[0..0] of TClientDataSet;
   OpenTables: array[0..0] of string;
begin
  inherited;
   OpenTables[0] :='t_Pm_Userroleorg';
   _cds[0]:= cdsUserRole;
   if cdsUserRole.State in DB.dsEditModes then  cdsUserRole.Post;
  //提交数据
  try
    if CliDM.Apply_Delta_Ex(_cds,['t_Pm_Userroleorg'],ErrMsg) then
    begin
       ShowMsg(Handle,'保存成功！',[]);
    end
    else
    begin
      ShowMsg(Handle, Self.Caption+'提交失败'+ErrMsg,[]);
      Gio.AddShow(ErrMsg);

    end;
  except
    on E: Exception do
    begin
      ShowMsg(Handle, Self.Caption+'提交失败：'+e.Message,[]);
      Abort;
    end;
  end;
end;

procedure TFM_UserRoleForm.cxbtnBachInsClick(Sender: TObject);
begin
  inherited;
  AddUserRole;
end;

procedure TFM_UserRoleForm.cxbtnInsClick(Sender: TObject);
begin
  inherited;
  AddUserRole;
end;
procedure TFM_UserRoleForm.DelUserRole;
var
  I : Integer;
  vFID :Variant;
begin
  for I := 0 to  cxgridRole.Controller.SelectedRowCount-1 do
  begin
    vFID := cxgridRole.Controller.SelectedRows[I].Values[2];
    if FindRecord1(cdsUserRole,'FRoleID',vFID,1) then
      cdsUserRole.delete;
  end;

end;
procedure TFM_UserRoleForm.cxbtnBatchDelClick(Sender: TObject);
begin
  inherited;
  DelUserRole;
end;

procedure TFM_UserRoleForm.cxbtnDelClick(Sender: TObject);
begin
  inherited;
  DelUserRole;
end;
procedure TFM_UserRoleForm.cxgridRoleDblClick(Sender: TObject);
begin
  inherited;
  cxbtnIns.OnClick(cxbtnIns);
end;

procedure TFM_UserRoleForm.cxGridUserRoleDblClick(Sender: TObject);
begin
  inherited;
  cxbtnDel.OnClick(cxbtnDel);
end;

end.
