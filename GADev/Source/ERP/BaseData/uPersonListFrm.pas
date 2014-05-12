unit uPersonListFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uListFormBaseFrm, cxCustomData, 
  cxEdit, DB, cxTL, cxMaskEdit,
  DBClient, cxInplaceContainer, cxDBTL, cxTLData,
  cxContainer, cxTextEdit, StdCtrls, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ExtCtrls, Buttons, cxLabel, cxButtonEdit,
  cxStyles, cxGraphics, cxFilter, cxData, cxDataStorage, cxDBData,
  cxTLdxBarBuiltInMenu, jpeg;

type
  TPersonListFrm = class(TListFormBaseFrm)
    p_top: TPanel;
    Image1: TImage;
    stp_DepartmentEdit: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    spt_uBear: TSpeedButton;
    btn_NewRow: TSpeedButton;
    btn_DelRow: TSpeedButton;
    Panel2: TPanel;
    Splitter1: TSplitter;
    Panel3: TPanel;
    cxGrid2: TcxGrid;
    cxDetail: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    Panel5: TPanel;
    Image2: TImage;
    Label1: TLabel;
    Edit1: TcxTextEdit;
    Panel4: TPanel;
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
    cdsmater: TClientDataSet;
    dsMater: TDataSource;
    Panel1: TPanel;
    txt_FBranchID: TcxButtonEdit;
    cxLabel1: TcxLabel;
    Label2: TLabel;
    cdsMenuflongNumber: TWideStringField;
    spt_Audit: TSpeedButton;
    spt_uAudit: TSpeedButton;
    spt_Edit: TSpeedButton;
    procedure txt_FBranchIDPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure stp_DepartmentEditClick(Sender: TObject);
    procedure TreeListFocusedNodeChanged(Sender: TcxCustomTreeList;
      APrevFocusedNode, AFocusedNode: TcxTreeListNode);
    procedure Edit1PropertiesChange(Sender: TObject);
    procedure btn_NewRowClick(Sender: TObject);
    procedure spt_EditClick(Sender: TObject);
    procedure spt_AuditClick(Sender: TObject);
    procedure spt_uAuditClick(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure spt_uBearClick(Sender: TObject);
    procedure btn_DelRowClick(Sender: TObject);
    procedure cxDetailCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    FBranch_ID,FBranch_Name,QuerySQL : string;
    procedure GetData;
    procedure openListdata(MgNumber:string);
  end;

var
  PersonListFrm: TPersonListFrm;

implementation
  uses FrmCliDM,Pub_Fun,uMaterDataSelectHelper,uDepartmentFrm,uuPersonEditFrm;
{$R *.dfm}

procedure TPersonListFrm.GetData;
var _sql,errMsg:String;
begin
  if not CliDM.Get_OpenSQL(cdsMenu,QuerySQL,errMsg) then
  begin
    ShowMsg(Handle, '打开数据出错！'+errMsg,[]);
    Abort
  end;
end;

procedure TPersonListFrm.txt_FBranchIDPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
  var _sql,ErrMsg:string;
begin
  inherited;
  with Select_Branch('','') do
  begin
    if not IsEmpty then
    begin
      _sql := 'select fid from t_org_baseunit where fisadminorgunit=1 and  fid='+quotedStr(fieldbyname('fid').AsString);
      if string(CliDM.Get_QueryReturn(_sql,ErrMsg))='' then
      begin
        ShowMsg(self.Handle,'必需选择实体分支机构!            ',[]);
        Abort;
      end;
      if Self.FBranch_ID  <>  fieldbyname('fid').AsString then
      begin
        Self.FBranch_ID := fieldbyname('fid').AsString;
        Self.FBranch_Name := fieldbyname('fname_l2').AsString;
        txt_FBranchID.Text := Self.FBranch_Name ;
        QuerySQL  :=  'select fid,fnumber,fname_l2,FPARENTID,FImgageIndex,flongNumber from t_Org_Admin where FBranchID ='+QuotedStr(FBranch_ID)+'order by FLevel,fnumber';
        GetData;
      end;
    end;
  end;
end;

procedure TPersonListFrm.FormCreate(Sender: TObject);
begin
  inherited;
  FBranch_ID   := UserInfo.Branch_ID ;
  FBranch_Name := UserInfo.Branch_Name;
end;

procedure TPersonListFrm.FormShow(Sender: TObject);
begin
  inherited;
  TreeList.Images := CliDM.ImageList16;
  txt_FBranchID.Text := FBranch_Name;
  QuerySQL  :=  'select fid,fnumber,fname_l2,FPARENTID,FImgageIndex,flongNumber from t_Org_Admin where FBranchID ='+QuotedStr(FBranch_ID)+'order by FLevel,fnumber';
  GetData;
  Edit1.SetFocus;
end;

procedure TPersonListFrm.stp_DepartmentEditClick(Sender: TObject);
begin
  inherited;
  try
    Application.CreateForm(TDepartmentFrm,DepartmentFrm);
    DepartmentFrm.ShowModal;
  finally
    DepartmentFrm.Free;
    GetData;
  end;
end;

procedure TPersonListFrm.openListdata(MgNumber:string);
var _sqlList,ErrMsg,FilterStr:string;
    i:Integer;
    longNumber:string;
begin
  try
    cxDetail.BeginUpdate;
    longNumber:=Trim(cdsMenu.FieldByName('flongNumber').AsString);
    Screen.Cursor:=crHourGlass;
     _sqlList:=' select case a.FState when 0 then ''未审核'' when 1 then ''已审核'' else ''禁用'' end as FState ,b.fname_l2 as deptName, a.fid,a.fnumber,a.fname_l2,'
              +' case a.FGender when 1 then ''男'' else ''女'' end as  FGender,a.FBirthday,a.fqqnumber,a.fwxnumber,a.FEMail,a.FAddress,'
              +' a.FHomePhone,a.FOfficePhone,a.FCell,a.FBackupCell,a.FBackupEMail,a.FRTX,a.FIDCardNO,a.FPassportNO,'
              +' a.FOldName from t_bd_person a left join t_org_admin b on a.fdepartmentid = b.fid  ' ;
      _sqlList:=_sqlList+' where 1 = 1 and b.fbranchid = '+quotedstr(FBranch_ID);
    if MgNumber<>'' then   _sqlList:=_sqlList+ ' and b.flongnumber like '''+longNumber+'%'''
    else
    begin
      FilterStr := Trim(Edit1.Text);
      if  FilterStr <>  '' then
      _sqlList:=_sqlList+ 'and ( a.fnumber like ''%'+FilterStr+'%'' or a.fname_l2 like ''%'
                        +FilterStr+'%'' or a.FCell like ''%'+FilterStr+'%'' or to_char(a.FBirthday,''yyyy-MM-dd'') like ''%'+FilterStr+'%'')';
    end;
    try
      CliDM.ConnectSckCon(ErrMsg);
      CliDM.Get_OpenSQL(cdsmater,_sqlList,ErrMsg);
    finally
      CliDM.CloseSckCon;
    end;
    if  cxDetail.ColumnCount=0 then
    begin
      cxDetail.ClearItems;
      cxDetail.DataController.CreateAllItems();
      if cxDetail.ColumnCount <> 0 then
      begin
        for i:=0 to  cxDetail.ColumnCount-1 do
        begin
          cxDetail.Columns[i].Width:=80;
        end;
        cxDetail.GetColumnByFieldName('fid').Visible:=False;
        cxDetail.GetColumnByFieldName('FState').Caption:='状态';
        cxDetail.GetColumnByFieldName('fnumber').Caption:='人员编号';
        cxDetail.GetColumnByFieldName('fname_l2').Caption:='名称名称';
        cxDetail.GetColumnByFieldName('deptName').Caption:='部门';
        cxDetail.GetColumnByFieldName('FGender').Caption:='性别';
        cxDetail.GetColumnByFieldName('FBirthday').Caption:='生日';
        cxDetail.GetColumnByFieldName('fqqnumber').Caption:='QQ号';
        cxDetail.GetColumnByFieldName('fwxnumber').Caption:='微信号';
        cxDetail.GetColumnByFieldName('FRTX').Caption:='RTX号';
        cxDetail.GetColumnByFieldName('FEMail').Caption:='电子邮箱';
        cxDetail.GetColumnByFieldName('FAddress').Caption:='通信地址';
        cxDetail.GetColumnByFieldName('FHomePhone').Caption:='家庭电话';
        cxDetail.GetColumnByFieldName('FOfficePhone').Caption:='办公电话';
        cxDetail.GetColumnByFieldName('FCell').Caption:='手机';
        cxDetail.GetColumnByFieldName('FOfficePhone').Caption:='办公电话';
        cxDetail.GetColumnByFieldName('FIDCardNO').Caption:='身份证号';
        cxDetail.GetColumnByFieldName('FPassportNO').Caption:='护照号';
        cxDetail.GetColumnByFieldName('FOldName').Caption:='曾用名';
        cxDetail.GetColumnByFieldName('FBackupCell').Caption:='备用用机号';
        cxDetail.GetColumnByFieldName('FBackupEMail').Caption:='备用电子邮箱';
        With cxDetail.DataController.Summary.FooterSummaryItems.Add do
        begin
          ItemLink := cxDetail.GetColumnByFieldName('FState');
          Position := spFooter;
          Kind     := skCount;
        end;
      end;
    end;
  finally
    cxDetail.EndUpdate;
    Screen.Cursor:=crDefault;
  end;
end;

procedure TPersonListFrm.TreeListFocusedNodeChanged(
  Sender: TcxCustomTreeList; APrevFocusedNode,
  AFocusedNode: TcxTreeListNode);
begin
  inherited;
  if (cdsMenu.IsEmpty) then Exit;
  openListdata(cdsMenu.fieldbyname('Fnumber').AsString);
end;

procedure TPersonListFrm.Edit1PropertiesChange(Sender: TObject);
var input:string;
begin
  inherited;
  if cdsMenu.IsEmpty then Exit;
  input := Trim(Edit1.Text);
  if input = '' then cdsmater.Close
  else
  openListdata('');
end;

procedure TPersonListFrm.btn_NewRowClick(Sender: TObject);
begin
  inherited;
  if cdsMenu.IsEmpty then Exit;
  if EditPerson(cdsmater,'',cdsMenu.fieldbyname('FID').asString,cdsMenu.fieldbyname('fname_l2').asString,FBranch_ID) then
  openListdata(cdsMenu.fieldbyname('Fnumber').AsString);
end;

procedure TPersonListFrm.spt_EditClick(Sender: TObject);
begin
  inherited;
  if cdsmater.IsEmpty then Exit;
  if EditPerson(cdsmater,cdsmater.fieldbyname('FID').asString,cdsMenu.fieldbyname('FID').asString,cdsMenu.fieldbyname('fname_l2').asString,FBranch_ID) then
  openListdata(cdsMenu.fieldbyname('Fnumber').AsString);
end;

procedure TPersonListFrm.spt_AuditClick(Sender: TObject);
var i,acCount,errCount:Integer;
    fid,fnumber,_sql,ErrMsg:string;
    StringList:TStringList;
begin
  inherited;
  StringList:=TStringList.Create;
  acCount :=0;
  errCount:=0;
  if cxDetail.DataController.GetSelectedCount =0 then
  begin
    ShowMsg(Self.Handle,'请选择要审核的行记录!       ',[]);
    Abort;
  end;
  try
    spt_Audit.Enabled := False;
    for i:=0 to cxDetail.DataController.GetSelectedCount -1 do
    begin
      cxDetail.Controller.FocusedRow := cxDetail.Controller.SelectedRows[i];
      fid := cdsmater.fieldbyname('FID').AsString;
      fnumber :=  cdsmater.fieldbyname('fnumber').AsString;
      if (cdsmater.fieldbyname('Fstate').AsString='1')then
      begin
        StringList.Add('编号: '+fnumber+' 状态为已审核,无须审核!');
        Inc(errCount);
        Continue;
      end;
      if (cdsmater.fieldbyname('Fstate').AsString='2')then
      begin
        StringList.Add('编号: '+fnumber+' 状态为已禁用,无法审核!');
        Inc(errCount);
        Continue;
      end;
      _sql := 'update t_bd_person set Fstate=1 where fid ='+QuotedStr(fid);
      if CliDM.Get_ExecSQL(_sql,ErrMsg)  then
      begin
        StringList.Add('编号: '+fnumber+' 审核成功!');
        Gio.AddShow('编号'+fnumber+'的数据被'+userinfo.LoginUser+'审核!') ;
        Inc(acCount);
        Continue;
      end
      else
      begin
        StringList.Add('编号: '+fnumber+' 审核失败!');
        Gio.AddShow('编号'+fnumber+'的审核失败!'+ErrMsg) ;
        Inc(errCount);
        Continue;
      end;
    end;
    if acCount >0 then openListData(cdsMenu.fieldbyname('fnumber').AsString);
    ShowListMsg('审核完成,成功 '+inttostr(acCount)+' 条,失败或跳过 '+inttostr(errCount)+' 条!',StringList);
  finally
    spt_Audit.Enabled := True;
  end;
end;

procedure TPersonListFrm.spt_uAuditClick(Sender: TObject);
var i,acCount,errCount:Integer;
    fid,fnumber,_sql,ErrMsg:string;
    StringList:TStringList;
begin
  inherited;
  StringList:=TStringList.Create;
  acCount :=0;
  errCount:=0;
  if cxDetail.DataController.GetSelectedCount =0 then
  begin
    ShowMsg(Self.Handle,'请选择要反审核的行记录!       ',[]);
    Abort;
  end;
  try
    spt_uAudit.Enabled := False;
    for i:=0 to cxDetail.DataController.GetSelectedCount -1 do
    begin
      cxDetail.Controller.FocusedRow := cxDetail.Controller.SelectedRows[i];
      fid := cdsmater.fieldbyname('FID').AsString;
      fnumber :=  cdsmater.fieldbyname('fnumber').AsString;
      if (cdsmater.fieldbyname('Fstate').AsString='0')then
      begin
        StringList.Add('编号: '+fnumber+' 状态为未审核,不能反审核!');
        Inc(errCount);
        Continue;
      end;
      if (cdsmater.fieldbyname('Fstate').AsString='2')then
      begin
        StringList.Add('编号: '+fnumber+' 状态为已禁用,无法反审核!');
        Inc(errCount);
        Continue;
      end;
      _sql := 'update t_bd_person set Fstate=0 where fid ='+QuotedStr(fid);
      if CliDM.Get_ExecSQL(_sql,ErrMsg)  then
      begin
        StringList.Add('编号: '+fnumber+' 反审核成功!');
        Gio.AddShow('编号'+fnumber+'的数据被'+userinfo.LoginUser+'反审核!') ;
        Inc(acCount);
        Continue;
      end
      else
      begin
        StringList.Add('编号: '+fnumber+' 反审核失败!');
        Gio.AddShow('编号'+fnumber+'的反审核失败!'+ErrMsg) ;
        Inc(errCount);
        Continue;
      end;
    end;
    if acCount >0 then openListData(cdsMenu.fieldbyname('fnumber').AsString);
    ShowListMsg('反审核完成,成功 '+inttostr(acCount)+' 条,失败或跳过 '+inttostr(errCount)+' 条!',StringList);
  finally
    spt_uAudit.Enabled := True;
  end;
end;

procedure TPersonListFrm.SpeedButton4Click(Sender: TObject);
var i,acCount,errCount:Integer;
    fid,fnumber,_sql,ErrMsg:string;
    StringList:TStringList;
begin
  inherited;
  StringList:=TStringList.Create;
  acCount :=0;
  errCount:=0;
  if cxDetail.DataController.GetSelectedCount =0 then
  begin
    ShowMsg(Self.Handle,'请选择要反禁用的行记录!       ',[]);
    Abort;
  end;
  try
    SpeedButton4.Enabled := False;
    for i:=0 to cxDetail.DataController.GetSelectedCount -1 do
    begin
      cxDetail.Controller.FocusedRow := cxDetail.Controller.SelectedRows[i];
      fid := cdsmater.fieldbyname('FID').AsString;
      fnumber :=  cdsmater.fieldbyname('fnumber').AsString;
      if (cdsmater.fieldbyname('Fstate').AsString='0')then
      begin
        StringList.Add('编号: '+fnumber+' 状态为未审核,不能反禁用!');
        Inc(errCount);
        Continue;
      end;
      if (cdsmater.fieldbyname('Fstate').AsString='1')then
      begin
        StringList.Add('编号: '+fnumber+' 状态为审核,不能反禁用!');
        Inc(errCount);
        Continue;
      end;
      _sql := 'update t_bd_person set Fstate=1 where fid ='+QuotedStr(fid);
      if CliDM.Get_ExecSQL(_sql,ErrMsg)  then
      begin
        StringList.Add('编号: '+fnumber+' 反禁用成功!');
        Gio.AddShow('编号'+fnumber+'的数据被'+userinfo.LoginUser+'反禁用!') ;
        Inc(acCount);
        Continue;
      end
      else
      begin
        StringList.Add('编号: '+fnumber+' 反禁用失败!');
        Gio.AddShow('编号'+fnumber+'的反禁用失败!'+ErrMsg) ;
        Inc(errCount);
        Continue;
      end;
    end;
    if acCount >0 then openListData(cdsMenu.fieldbyname('fnumber').AsString);
    ShowListMsg('反禁用完成,成功 '+inttostr(acCount)+' 条,失败或跳过 '+inttostr(errCount)+' 条!',StringList);
  finally
    SpeedButton4.Enabled := True;
  end;
end;

procedure TPersonListFrm.spt_uBearClick(Sender: TObject);
var i,acCount,errCount:Integer;
    fid,fnumber,_sql,ErrMsg:string;
    StringList:TStringList;
begin
  inherited;
  StringList:=TStringList.Create;
  acCount :=0;
  errCount:=0;
  if cxDetail.DataController.GetSelectedCount =0 then
  begin
    ShowMsg(Self.Handle,'请选择要禁用的行记录!       ',[]);
    Abort;
  end;
  try
    spt_uBear.Enabled := False;
    for i:=0 to cxDetail.DataController.GetSelectedCount -1 do
    begin
      cxDetail.Controller.FocusedRow := cxDetail.Controller.SelectedRows[i];
      fid := cdsmater.fieldbyname('FID').AsString;
      fnumber :=  cdsmater.fieldbyname('fnumber').AsString;
      if (cdsmater.fieldbyname('Fstate').AsString='0')then
      begin
        StringList.Add('编号: '+fnumber+' 状态为未审核,不能禁用!');
        Inc(errCount);
        Continue;
      end;
      if (cdsmater.fieldbyname('Fstate').AsString='2')then
      begin
        StringList.Add('编号: '+fnumber+' 状态为已禁用,不能禁用!');
        Inc(errCount);
        Continue;
      end;
      _sql := 'update t_bd_person set Fstate=2 where fid ='+QuotedStr(fid);
      if CliDM.Get_ExecSQL(_sql,ErrMsg)  then
      begin
        StringList.Add('编号: '+fnumber+' 禁用成功!');
        Gio.AddShow('编号'+fnumber+'的数据被'+userinfo.LoginUser+'禁用!') ;
        Inc(acCount);
        Continue;
      end
      else
      begin
        StringList.Add('编号: '+fnumber+' 禁用失败!');
        Gio.AddShow('编号'+fnumber+'的禁用失败!'+ErrMsg) ;
        Inc(errCount);
        Continue;
      end;
    end;
    if acCount >0 then openListData(cdsMenu.fieldbyname('fnumber').AsString);
    ShowListMsg('禁用完成,成功 '+inttostr(acCount)+' 条,失败或跳过 '+inttostr(errCount)+' 条!',StringList);
  finally
    spt_uBear.Enabled := True;
  end;
end;

procedure TPersonListFrm.btn_DelRowClick(Sender: TObject);
var i,acCount,errCount:Integer;
    fid,fnumber,_sql,ErrMsg:string;
    StringList:TStringList;
begin
  inherited;
  StringList:=TStringList.Create;
  acCount :=0;
  errCount:=0;
  if cxDetail.DataController.GetSelectedCount =0 then
  begin
    ShowMsg(Self.Handle,'请选择要删除的行记录!       ',[]);
    Abort;
  end;
  try
    btn_DelRow.Enabled := False;
    for i:=0 to cxDetail.DataController.GetSelectedCount -1 do
    begin
      cxDetail.Controller.FocusedRow := cxDetail.Controller.SelectedRows[i];
      fid := cdsmater.fieldbyname('FID').AsString;
      fnumber :=  cdsmater.fieldbyname('fnumber').AsString;
      if (cdsmater.fieldbyname('Fstate').AsString='1')then
      begin
        StringList.Add('编号: '+fnumber+' 状态为审核,不能删除!');
        Inc(errCount);
        Continue;
      end;
      if (cdsmater.fieldbyname('Fstate').AsString='2')then
      begin
        StringList.Add('编号: '+fnumber+' 状态为已禁用,不能删除!');
        Inc(errCount);
        Continue;
      end;
      if CliDM.Chk_Reference(fid,'t_bd_person') then
      begin
        StringList.Add('编号: '+fnumber+' 已被业务引用,不能删除!');
        Inc(errCount);
        Continue;
      end;
      _sql := 'delete from  t_bd_person  where fid ='+QuotedStr(fid);
      if CliDM.Get_ExecSQL(_sql,ErrMsg)  then
      begin
        StringList.Add('编号: '+fnumber+' 删除成功!');
        Gio.AddShow('编号'+fnumber+'的数据被'+userinfo.LoginUser+'删除!') ;
        Inc(acCount);
        Continue;
      end
      else
      begin
        StringList.Add('编号: '+fnumber+' 删除失败!');
        Gio.AddShow('编号'+fnumber+'的删除失败!'+ErrMsg) ;
        Inc(errCount);
        Continue;
      end;
    end;
    if acCount >0 then openListData(cdsMenu.fieldbyname('fnumber').AsString);
    ShowListMsg('删除完成,成功 '+inttostr(acCount)+' 条,失败或跳过 '+inttostr(errCount)+' 条!',StringList);
  finally
    btn_DelRow.Enabled := True;
  end;
end;

procedure TPersonListFrm.cxDetailCellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  if cdsmater.IsEmpty then Exit;
  if EditPerson(cdsmater,cdsmater.fieldbyname('FID').asString,cdsMenu.fieldbyname('FID').asString,cdsMenu.fieldbyname('fname_l2').asString,FBranch_ID) then
  openListdata(cdsMenu.fieldbyname('Fnumber').AsString);
end;

end.
