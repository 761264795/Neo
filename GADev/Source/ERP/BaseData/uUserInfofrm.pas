unit uUserInfofrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uListFormBaseFrm, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, Buttons, jpeg, ExtCtrls, cxTL, cxMaskEdit,
  cxTLdxBarBuiltInMenu, DBClient, cxInplaceContainer, cxDBTL, cxTLData,
  StdCtrls, ADODB, cxTextEdit, cxContainer, cxDropDownEdit;

type
  TFM_UserInfoForm = class(TListFormBaseFrm)
    Panel1: TPanel;
    Image1: TImage;
    btn_Imp: TSpeedButton;
    btn_OrgMaintain: TSpeedButton;
    btn_Forbid: TSpeedButton;
    btn_NewRow: TSpeedButton;
    btn_DelRow: TSpeedButton;
    btn_AllClear: TSpeedButton;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel7: TPanel;
    TreeList: TcxDBTreeList;
    cxDBTreeList1cxDBTreeListColumn1: TcxDBTreeListColumn;
    cxDBTreeList1cxDBTreeListColumn2: TcxDBTreeListColumn;
    cxDBTreeList1cxDBTreeListColumn3: TcxDBTreeListColumn;
    cxDBTreeList1cxDBTreeListColumn6: TcxDBTreeListColumn;
    cdsMenu: TClientDataSet;
    cdsMenuFID: TStringField;
    cdsMenuFNUMBER: TWideStringField;
    cdsMenuFNAME_L1: TWideStringField;
    cdsMenuFPARENTID: TStringField;
    cdsMenuFImgageIndex: TIntegerField;
    dsMenu: TDataSource;
    dsMater: TDataSource;
    cdsmater: TClientDataSet;
    cdsmaterFID: TStringField;
    cdsmaterFNUMBER: TWideStringField;
    cdsmaterFNAME_L2: TWideStringField;
    cdsmaterPERSONNAME: TWideStringField;
    cdsmaterFEMAIL: TWideStringField;
    cdsmaterFHOMEPHONE: TWideStringField;
    cdsmaterFCELL: TWideStringField;
    cdsmaterFOFFICEPHONE: TWideStringField;
    cdsmaterCONTROLUNITNAME: TWideStringField;
    cdsmaterDEFBRANCHNAME: TWideStringField;
    cdsmaterFDESCRIPTION_L2: TWideStringField;
    btn_Start: TSpeedButton;
    Panel9: TPanel;
    Panel8: TPanel;
    Panel10: TPanel;
    cxGrid2: TcxGrid;
    cxDetail: TcxGridDBTableView;
    cxDetailFNUMBER: TcxGridDBColumn;
    cxDetailFNAME_L2: TcxGridDBColumn;
    cxDetailPERSONNAME: TcxGridDBColumn;
    cxDetailFEMAIL: TcxGridDBColumn;
    cxDetailFHOMEPHONE: TcxGridDBColumn;
    cxDetailFCELL: TcxGridDBColumn;
    cxDetailFOFFICEPHONE: TcxGridDBColumn;
    cxDetailCONTROLUNITNAME: TcxGridDBColumn;
    cxDetailDEFBRANCHNAME: TcxGridDBColumn;
    cxDetailFDESCRIPTION_L2: TcxGridDBColumn;
    cxGrid2Level1: TcxGridLevel;
    Edit1: TcxTextEdit;
    Label1: TLabel;
    cdsmaterFDEFORGUNITID: TStringField;
    spt_Edit: TSpeedButton;
    cdsmaterfforbidden: TIntegerField;
    cxDetailColumn1: TcxGridDBColumn;
    spt_pagt: TSpeedButton;
    spt_AllAdd: TSpeedButton;
    spt_AllCancel: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure btn_NewRowClick(Sender: TObject);
    procedure btn_DelRowClick(Sender: TObject);
    procedure btn_ForbidClick(Sender: TObject);
    procedure btn_StartClick(Sender: TObject);
    procedure btn_AllClearClick(Sender: TObject);
    procedure cxDetailDblClick(Sender: TObject);
    procedure btn_OrgMaintainClick(Sender: TObject);
    procedure cdsmaterFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure Edit1PropertiesChange(Sender: TObject);
    procedure TreeListClick(Sender: TObject);
    procedure spt_EditClick(Sender: TObject);
    procedure cdsmaterfforbiddenGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure spt_pagtClick(Sender: TObject);
    procedure spt_AllAddClick(Sender: TObject);
    procedure spt_AllCancelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure OpenDatalist;
  public
    { Public declarations }
    procedure GetData;
  end;

var
  FM_UserInfoForm: TFM_UserInfoForm;

implementation

uses FrmCliDM,Pub_Fun,uUserEditfrm,uUserRolefrm,uUserBranchScopefrm,PermissionAgtFrm;

{$R *.dfm}

procedure TFM_UserInfoForm.GetData;
var _sql,errMsg:String;
begin
  _sql := 'select fid ,fnumber ,fname_l2,FparentID,  FImgageIndex from t_Org_Baseunit  where FID<>''11111111-1111-1111-1111-111111111111CCE7AED4''   order by FLevel,fnumber';
  if not CliDM.Get_OpenSQL(cdsMenu,_sql,errMsg) then
  begin
    ShowMsg(Handle, '打开数据出错！'+errMsg,[]);
    Abort
  end;
end;
procedure TFM_UserInfoForm.OpenDatalist;
var
  strsql,strError  : string;
begin
  inherited;
  TreeList.Images := CliDM.ImageList16;
  GetData;
  try
    strsql :='select a.fid,a.fnumber,a.fname_l2,p.fname_l2 as PersonName,a.FEMAIL,a.FHOMEPHONE,a.FCELL,a.FOFFICEPHONE,B.Fname_L2 as ControlUnitName,T.Fname_L2 as DefBranchName,a.FDESCRIPTION_L2 '+
    ',a.FDEFORGUNITID,a.fforbidden from t_Pm_User a  left join t_Org_Baseunit B on a.fcontrolunitid=b.fid  '+
             '  left join t_Bd_Person p on p.fid=a.fpersonid  '+
             ' left join  t_Org_Baseunit T on T.FID= a.FDEFORGUNITID'+
             ' where  (a.FID <>''IpyedAEWEADgAAmlwKgTMBO33n8='' and  a.FID<>''00000000-0000-0000-0000-00000000000113B7DE7F''  '+
             ' and a.FID<>''00000000-0000-0000-0000-00000000000213B7DE7F'') ';  ///  系统默认账号只保留user和administrator
    Clidm.Get_OpenSQL(CliDM.cdstemp,strsql,strError);

    cdsmater.Data := CliDM.cdstemp.Data;
  except
    on   e :Exception  do
    begin
      ShowMsg(Handle, '查询数据出错！'+strError,[]);
      Abort;
    end;
  end;

end;
procedure TFM_UserInfoForm.FormShow(Sender: TObject);
begin
  OpenDatalist;
  Edit1.SetFocus;
end;

procedure TFM_UserInfoForm.btn_NewRowClick(Sender: TObject);
begin
  inherited;
  if EditUserInfo_Frm('',cdsMenu.fieldbyname('FID').AsString) then
    OpenDatalist;
end;

procedure TFM_UserInfoForm.btn_DelRowClick(Sender: TObject);
var
   strsql ,ErrMsg: string;
begin                      
  inherited;
  if cdsmater.IsEmpty then Exit;
  strsql := ' select 1 from t_Pm_Userroleorg where FuserID='+quotedstr(cdsmater.fieldbyname('FID').AsString);
  Clidm.Get_OpenSQL(CliDM.cdstemp,strsql,ErrMsg);
  if  CliDM.cdstemp.RecordCount>0 then
  begin
    ShowMsg(Handle, '用户已经分配了角色权限不允许删除!！',[]);
    Abort;
  end;
  if ShowYesNo(Handle, '确定删除用户?',[]) = idYes then
  begin
    strsql :=' delete from CT_PM_USERCUSTOMERENTRY where fparentID='+quotedstr(cdsmater.fieldbyname('FID').AsString)+' ';
    CliDM.Get_ExecSQL(strsql,ErrMsg);
    strsql := '  delete from Ct_Pm_Usersupplierentry where fparentID='+quotedstr(cdsmater.fieldbyname('FID').AsString)+' ';
    CliDM.Get_ExecSQL(strsql,ErrMsg);
    strsql :='  delete from T_PM_UserPermissionEntry where fparentID='+quotedstr(cdsmater.fieldbyname('FID').AsString)+' ';
    CliDM.Get_ExecSQL(strsql,ErrMsg);
    strsql :='  delete from T_PM_USER where FID ='+quotedstr(cdsmater.fieldbyname('FID').AsString)+'';
    CliDM.Get_ExecSQL(strsql,ErrMsg);
    if not cdsmater.IsEmpty then
      cdsmater.Delete;
    if ErrMsg='' then
    begin
      ShowMsg(Handle, '删除数据成功',[]);
    end
    else
      ShowMsg(Handle, '删除数据失败'+ErrMsg,[]);
  end;
end;

procedure TFM_UserInfoForm.btn_ForbidClick(Sender: TObject);
var
  strsql,ErrMsg : string;
begin
  inherited;
  if cdsmater.IsEmpty then Exit;
  try
    strsql :=' update  t_Pm_User p  set p.fforbidden=1 where FID='+quotedstr(cdsmater.fieldbyname('FID').AsString);
    CliDM.Get_ExecSQL(strsql,ErrMsg);
    ShowMsg(Handle, '禁用用户数据成功',[]);
  except
    on E : Exception do
    begin
      ShowMsg(Handle, '禁用用户数据出错'+ErrMsg,[]);
      Abort;
    end;
  end;

end;

procedure TFM_UserInfoForm.btn_StartClick(Sender: TObject);
var
  strsql,ErrMsg : string;
begin
  inherited;
  if cdsmater.IsEmpty then Exit;
  try
    strsql :=' update  t_Pm_User p  set p.fforbidden=0 where FID='+quotedstr(cdsmater.fieldbyname('FID').AsString);
    CliDM.Get_ExecSQL(strsql,ErrMsg);
    ShowMsg(Handle, '启用用户数据成功',[]);
  except
    on E : Exception do
    begin
      ShowMsg(Handle, '启用用户数据出错'+ErrMsg,[]);
      Abort;
    end;
  end;
end;

procedure TFM_UserInfoForm.btn_AllClearClick(Sender: TObject);
begin
  inherited;
  with TFM_UserRoleForm.Create(self) do
  begin
    sUserID := cdsmater.fieldbyname('FID').AsString;
    strUserName := cdsmater.fieldbyname('FNAME_L2').AsString;
    ShowModal;
  end;
   //EditUserRole_Frm(cdsmater.fieldbyname('FID').AsString,cdsmater.fieldbyname('FNAME_L2').AsString);
end;

procedure TFM_UserInfoForm.cxDetailDblClick(Sender: TObject);
begin
  inherited;
  EditUserInfo_Frm(cdsmater.fieldbyname('FID').AsString,cdsMenu.fieldbyname('FID').AsString);
end;

procedure TFM_UserInfoForm.btn_OrgMaintainClick(Sender: TObject);
begin
  inherited;
  //EditBrandScope_Frm(cdsmater.fieldbyname('FID').AsString);
  with TFM_UserBranchScopeForm.Create(self) do
  begin
    sUserID := cdsmater.fieldbyname('FID').AsString;
    ShowModal;
  end;
end;

procedure TFM_UserInfoForm.cdsmaterFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  inherited;
  Accept:=((Pos(Trim(UpperCase(Edit1.Text)),UpperCase(DataSet.fieldbyname('fnumber').AsString))>0) or
          (Pos(Trim(UpperCase(Edit1.Text)),UpperCase(DataSet.fieldbyname('fname_l2').AsString))>0)) or
          (Pos(Trim(UpperCase(Edit1.Text)),UpperCase(DataSet.fieldbyname('PERSONNAME').AsString))>0) or
          (Pos(Trim(cdsMenu.fieldbyname('FID').AsString),DataSet.fieldbyname('FDEFORGUNITID').AsString)>0 ) ;

end;

procedure TFM_UserInfoForm.Edit1PropertiesChange(Sender: TObject);
var inputTxt:string;
begin
  inputTxt := Trim(Edit1.Text);
  cdsmater.Filtered := False;
  if (inputTxt <> '' ) then
  cdsmater.Filtered := True
  else
  cdsmater.Filtered := False;
end;

procedure TFM_UserInfoForm.TreeListClick(Sender: TObject);
begin
  inherited;
  cdsmater.Filtered := False;
  cdsmater.Filtered := True
end;

procedure TFM_UserInfoForm.spt_EditClick(Sender: TObject);
begin
  inherited;
  if EditUserInfo_Frm(cdsmater.fieldbyname('FID').AsString,cdsMenu.fieldbyname('FID').AsString) then
    OpenDatalist;
end;

procedure TFM_UserInfoForm.cdsmaterfforbiddenGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  DisplayText := True;
  if Sender.AsFloat =1 then
    Text := '禁用'
  else
    Text := '启用';  
end;

procedure TFM_UserInfoForm.spt_pagtClick(Sender: TObject);
begin
  inherited;
  if cdsmater.IsEmpty then Exit;
  UserRolePermissionAgt(cdsmater.fieldbyname('FID').AsString,1,'用户权限分配>'+cdsmater.fieldbyname('Fnumber').AsString+':'+cdsmater.fieldbyname('Fname_l2').AsString);
end;

procedure TFM_UserInfoForm.spt_AllAddClick(Sender: TObject);
begin
  inherited;
  if cdsmater.IsEmpty then Exit;
  UserRolePermissionAgt(cdsmater.fieldbyname('FID').AsString,2,'批量增加用户权限>'+cdsmater.fieldbyname('Fnumber').AsString+':'+cdsmater.fieldbyname('Fname_l2').AsString);
end;

procedure TFM_UserInfoForm.spt_AllCancelClick(Sender: TObject);
begin
  inherited;
  if cdsmater.IsEmpty then Exit;
  UserRolePermissionAgt(cdsmater.fieldbyname('FID').AsString,3,'批量取消用户权限>'+cdsmater.fieldbyname('Fnumber').AsString+':'+cdsmater.fieldbyname('Fname_l2').AsString);
end;

procedure TFM_UserInfoForm.FormCreate(Sender: TObject);
begin
  inherited;
  //
end;

end.
