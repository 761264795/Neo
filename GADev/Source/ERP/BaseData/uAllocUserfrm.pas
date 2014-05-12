unit uAllocUserfrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBaseEditFrm, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, Buttons, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxTextEdit, cxContainer,
  cxLabel, ExtCtrls, DBClient, ADODB;

type
  TFM_AllocUserRole = class(TSTBaseEdit)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    cxLabel1: TcxLabel;
    cxedtRole: TcxTextEdit;
    cxgridUserRole: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    btn_NewRow: TSpeedButton;
    btn_DelRow: TSpeedButton;
    btn_Exit: TSpeedButton;
    dsUserRole: TDataSource;
    cdsuserRole: TClientDataSet;
    cdsuserRoleFUSERID: TWideStringField;
    cdsuserRoleFROLEID: TWideStringField;
    cdsuserRoleFORGID: TWideStringField;
    cdsuserRoleCFRoleName: TStringField;
    cxgridUserRoleCFRoleName: TcxGridDBColumn;
    cdsTmpUser: TClientDataSet;
    cxgridUserRoleColumn1: TcxGridDBColumn;
    cdsuserRoleFID: TWideStringField;
    procedure btn_ExitClick(Sender: TObject);
    procedure btn_NewRowClick(Sender: TObject);
    procedure cdsuserRoleAfterInsert(DataSet: TDataSet);
    procedure cdsuserRoleCalcFields(DataSet: TDataSet);
    procedure btn_DelRowClick(Sender: TObject);
  private
    { Private declarations }
    procedure DelUserRole;
  public
    strRoleName,strRoleID : string;
    procedure Open_Bill(KeyFields: String; KeyValues: String);
    { Public declarations }
  end;

var
  FM_AllocUserRole: TFM_AllocUserRole;
  //function AllocUserInfo_Frm(KeyValues: string):Boolean;
implementation
uses uMaterDataSelectHelper,FrmCliDM,Pub_Fun;
{$R *.dfm}

procedure TFM_AllocUserRole.btn_ExitClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TFM_AllocUserRole.btn_NewRowClick(Sender: TObject);
var
  ErrMsg : string;
   _cds: array[0..0] of TClientDataSet;
begin
  inherited;
  STBaseEditDataSet := Select_BaseData('T_PM_User','用户','','',0);
  STBaseEditDataSet.First;
  while not STBaseEditDataSet.Eof do
  begin
    if not FindRecord1(cdsuserRole,'FUSERID',STBaseEditDataSet.fieldbyname('FID').AsString,1) then
    begin
      cdsuserRole.Append;
      cdsuserRole.FieldByName('FID').AsString := Get_Guid;
      cdsuserRole.FieldByName('FUSERID').AsString := STBaseEditDataSet.fieldbyname('FID').AsString;
      cdsuserRole.FieldByName('FROLEID').AsString := strRoleID;
      cdsuserRole.FieldByName('FORGID').AsString := UserInfo.Branch_ID;
    end;
    STBaseEditDataSet.Next();
  end;
  _cds[0] := cdsuserRole;
  if CliDM.Apply_Delta_Ex(_cds,['t_Pm_Userroleorg'],ErrMsg) then
  begin
    ShowMsg(Handle, '角色分配成功!',[]);
  end;
  if ErrMsg<>'' then
  begin
    ShowMsg(Handle, '角色分配失败:'+ErrMsg,[]);
  end;
end;

procedure TFM_AllocUserRole.cdsuserRoleAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FROLEID').AsString := strRoleID;
  DataSet.FieldByName('FORGID').AsString := UserInfo.Branch_ID;
end;
procedure TFM_AllocUserRole.Open_Bill(KeyFields: String; KeyValues: String);
var OpenTables: array[0..0] of string;
    _cds: array[0..0] of TClientDataSet;
    ErrMsg,strwhere,strsql : string;
begin
  inherited;
  cxedtRole.Text := strRoleName;
  strsql := ' select FID,Fnumber,Fname_l2 from t_Pm_User ';
  try
    Clidm.Get_OpenSQL(cdsTmpUser,strsql,ErrMsg);
  except
    on  E: Exception  do
    begin
      ShowMsg(Handle, '用户查询出错:'+ErrMsg,[]);
      Abort;
    end;
  end;

  if trim(KeyValues)<>'' then
    OpenTables[0] := ' select * from t_Pm_Userroleorg where FROLeID='+quotedstr(KeyValues)
  else
    OpenTables[0] := ' select * from t_Pm_Userroleorg where 1<>1 ';
  _cds[0] := cdsuserRole;
  try
    if not CliDM.Get_OpenClients_E(KeyValues,_cds,OpenTables,ErrMsg) then
    begin
      ShowError(Handle, ErrMsg,[]);
      Abort;
    end;
  except
    on E : Exception do
    begin
       ShowError(Handle, '分配用户角色查询报错：'+E.Message,[]);
       Abort;
    end;
  end;
end;
procedure TFM_AllocUserRole.cdsuserRoleCalcFields(DataSet: TDataSet);
begin
  inherited;
  if DataSet.FindField('CFUserName')<> nil then
  begin
    if FindRecord1(cdsTmpUser,'FID',DataSet.fieldbyname('FUserID').AsString,1) then
      DataSet.FieldByName('CFUserName').AsString := cdsTmpUser.fieldbyname('fname_l2').AsString;
  end;
end;
procedure TFM_AllocUserRole.DelUserRole;
var
  I : Integer;
  vFID :Variant;
  ErrMsg : string;
   _cds: array[0..0] of TClientDataSet;
begin
  for I := 0 to  cxgridUserRole.Controller.SelectedRowCount-1 do
  begin
    vFID := cxgridUserRole.Controller.SelectedRows[I].Values[1];
    if FindRecord1(cdsuserRole,'FUSerID',vFID,1) then
      cdsuserRole.delete;
  end;
  _cds[0] := cdsuserRole;
  if CliDM.Apply_Delta_Ex(_cds,['t_Pm_Userroleorg'],ErrMsg) then
  begin
    ShowMsg(Handle, '角色取消分配成功!',[]);
  end;
  if ErrMsg<>'' then
  begin
    ShowMsg(Handle, '角色取消分配失败:'+ErrMsg,[]);
  end;
end;
procedure TFM_AllocUserRole.btn_DelRowClick(Sender: TObject);
begin
  inherited;
  DelUserRole;
end;

end.
