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
    ShowMsg(Handle, '�����ݳ���'+errMsg,[]);
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
        ShowMsg(self.Handle,'����ѡ��ʵ���֧����!            ',[]);
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
     _sqlList:=' select case a.FState when 0 then ''δ���'' when 1 then ''�����'' else ''����'' end as FState ,b.fname_l2 as deptName, a.fid,a.fnumber,a.fname_l2,'
              +' case a.FGender when 1 then ''��'' else ''Ů'' end as  FGender,a.FBirthday,a.fqqnumber,a.fwxnumber,a.FEMail,a.FAddress,'
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
        cxDetail.GetColumnByFieldName('FState').Caption:='״̬';
        cxDetail.GetColumnByFieldName('fnumber').Caption:='��Ա���';
        cxDetail.GetColumnByFieldName('fname_l2').Caption:='��������';
        cxDetail.GetColumnByFieldName('deptName').Caption:='����';
        cxDetail.GetColumnByFieldName('FGender').Caption:='�Ա�';
        cxDetail.GetColumnByFieldName('FBirthday').Caption:='����';
        cxDetail.GetColumnByFieldName('fqqnumber').Caption:='QQ��';
        cxDetail.GetColumnByFieldName('fwxnumber').Caption:='΢�ź�';
        cxDetail.GetColumnByFieldName('FRTX').Caption:='RTX��';
        cxDetail.GetColumnByFieldName('FEMail').Caption:='��������';
        cxDetail.GetColumnByFieldName('FAddress').Caption:='ͨ�ŵ�ַ';
        cxDetail.GetColumnByFieldName('FHomePhone').Caption:='��ͥ�绰';
        cxDetail.GetColumnByFieldName('FOfficePhone').Caption:='�칫�绰';
        cxDetail.GetColumnByFieldName('FCell').Caption:='�ֻ�';
        cxDetail.GetColumnByFieldName('FOfficePhone').Caption:='�칫�绰';
        cxDetail.GetColumnByFieldName('FIDCardNO').Caption:='���֤��';
        cxDetail.GetColumnByFieldName('FPassportNO').Caption:='���պ�';
        cxDetail.GetColumnByFieldName('FOldName').Caption:='������';
        cxDetail.GetColumnByFieldName('FBackupCell').Caption:='�����û���';
        cxDetail.GetColumnByFieldName('FBackupEMail').Caption:='���õ�������';
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
    ShowMsg(Self.Handle,'��ѡ��Ҫ��˵��м�¼!       ',[]);
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
        StringList.Add('���: '+fnumber+' ״̬Ϊ�����,�������!');
        Inc(errCount);
        Continue;
      end;
      if (cdsmater.fieldbyname('Fstate').AsString='2')then
      begin
        StringList.Add('���: '+fnumber+' ״̬Ϊ�ѽ���,�޷����!');
        Inc(errCount);
        Continue;
      end;
      _sql := 'update t_bd_person set Fstate=1 where fid ='+QuotedStr(fid);
      if CliDM.Get_ExecSQL(_sql,ErrMsg)  then
      begin
        StringList.Add('���: '+fnumber+' ��˳ɹ�!');
        Gio.AddShow('���'+fnumber+'�����ݱ�'+userinfo.LoginUser+'���!') ;
        Inc(acCount);
        Continue;
      end
      else
      begin
        StringList.Add('���: '+fnumber+' ���ʧ��!');
        Gio.AddShow('���'+fnumber+'�����ʧ��!'+ErrMsg) ;
        Inc(errCount);
        Continue;
      end;
    end;
    if acCount >0 then openListData(cdsMenu.fieldbyname('fnumber').AsString);
    ShowListMsg('������,�ɹ� '+inttostr(acCount)+' ��,ʧ�ܻ����� '+inttostr(errCount)+' ��!',StringList);
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
    ShowMsg(Self.Handle,'��ѡ��Ҫ����˵��м�¼!       ',[]);
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
        StringList.Add('���: '+fnumber+' ״̬Ϊδ���,���ܷ����!');
        Inc(errCount);
        Continue;
      end;
      if (cdsmater.fieldbyname('Fstate').AsString='2')then
      begin
        StringList.Add('���: '+fnumber+' ״̬Ϊ�ѽ���,�޷������!');
        Inc(errCount);
        Continue;
      end;
      _sql := 'update t_bd_person set Fstate=0 where fid ='+QuotedStr(fid);
      if CliDM.Get_ExecSQL(_sql,ErrMsg)  then
      begin
        StringList.Add('���: '+fnumber+' ����˳ɹ�!');
        Gio.AddShow('���'+fnumber+'�����ݱ�'+userinfo.LoginUser+'�����!') ;
        Inc(acCount);
        Continue;
      end
      else
      begin
        StringList.Add('���: '+fnumber+' �����ʧ��!');
        Gio.AddShow('���'+fnumber+'�ķ����ʧ��!'+ErrMsg) ;
        Inc(errCount);
        Continue;
      end;
    end;
    if acCount >0 then openListData(cdsMenu.fieldbyname('fnumber').AsString);
    ShowListMsg('��������,�ɹ� '+inttostr(acCount)+' ��,ʧ�ܻ����� '+inttostr(errCount)+' ��!',StringList);
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
    ShowMsg(Self.Handle,'��ѡ��Ҫ�����õ��м�¼!       ',[]);
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
        StringList.Add('���: '+fnumber+' ״̬Ϊδ���,���ܷ�����!');
        Inc(errCount);
        Continue;
      end;
      if (cdsmater.fieldbyname('Fstate').AsString='1')then
      begin
        StringList.Add('���: '+fnumber+' ״̬Ϊ���,���ܷ�����!');
        Inc(errCount);
        Continue;
      end;
      _sql := 'update t_bd_person set Fstate=1 where fid ='+QuotedStr(fid);
      if CliDM.Get_ExecSQL(_sql,ErrMsg)  then
      begin
        StringList.Add('���: '+fnumber+' �����óɹ�!');
        Gio.AddShow('���'+fnumber+'�����ݱ�'+userinfo.LoginUser+'������!') ;
        Inc(acCount);
        Continue;
      end
      else
      begin
        StringList.Add('���: '+fnumber+' ������ʧ��!');
        Gio.AddShow('���'+fnumber+'�ķ�����ʧ��!'+ErrMsg) ;
        Inc(errCount);
        Continue;
      end;
    end;
    if acCount >0 then openListData(cdsMenu.fieldbyname('fnumber').AsString);
    ShowListMsg('���������,�ɹ� '+inttostr(acCount)+' ��,ʧ�ܻ����� '+inttostr(errCount)+' ��!',StringList);
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
    ShowMsg(Self.Handle,'��ѡ��Ҫ���õ��м�¼!       ',[]);
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
        StringList.Add('���: '+fnumber+' ״̬Ϊδ���,���ܽ���!');
        Inc(errCount);
        Continue;
      end;
      if (cdsmater.fieldbyname('Fstate').AsString='2')then
      begin
        StringList.Add('���: '+fnumber+' ״̬Ϊ�ѽ���,���ܽ���!');
        Inc(errCount);
        Continue;
      end;
      _sql := 'update t_bd_person set Fstate=2 where fid ='+QuotedStr(fid);
      if CliDM.Get_ExecSQL(_sql,ErrMsg)  then
      begin
        StringList.Add('���: '+fnumber+' ���óɹ�!');
        Gio.AddShow('���'+fnumber+'�����ݱ�'+userinfo.LoginUser+'����!') ;
        Inc(acCount);
        Continue;
      end
      else
      begin
        StringList.Add('���: '+fnumber+' ����ʧ��!');
        Gio.AddShow('���'+fnumber+'�Ľ���ʧ��!'+ErrMsg) ;
        Inc(errCount);
        Continue;
      end;
    end;
    if acCount >0 then openListData(cdsMenu.fieldbyname('fnumber').AsString);
    ShowListMsg('�������,�ɹ� '+inttostr(acCount)+' ��,ʧ�ܻ����� '+inttostr(errCount)+' ��!',StringList);
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
    ShowMsg(Self.Handle,'��ѡ��Ҫɾ�����м�¼!       ',[]);
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
        StringList.Add('���: '+fnumber+' ״̬Ϊ���,����ɾ��!');
        Inc(errCount);
        Continue;
      end;
      if (cdsmater.fieldbyname('Fstate').AsString='2')then
      begin
        StringList.Add('���: '+fnumber+' ״̬Ϊ�ѽ���,����ɾ��!');
        Inc(errCount);
        Continue;
      end;
      if CliDM.Chk_Reference(fid,'t_bd_person') then
      begin
        StringList.Add('���: '+fnumber+' �ѱ�ҵ������,����ɾ��!');
        Inc(errCount);
        Continue;
      end;
      _sql := 'delete from  t_bd_person  where fid ='+QuotedStr(fid);
      if CliDM.Get_ExecSQL(_sql,ErrMsg)  then
      begin
        StringList.Add('���: '+fnumber+' ɾ���ɹ�!');
        Gio.AddShow('���'+fnumber+'�����ݱ�'+userinfo.LoginUser+'ɾ��!') ;
        Inc(acCount);
        Continue;
      end
      else
      begin
        StringList.Add('���: '+fnumber+' ɾ��ʧ��!');
        Gio.AddShow('���'+fnumber+'��ɾ��ʧ��!'+ErrMsg) ;
        Inc(errCount);
        Continue;
      end;
    end;
    if acCount >0 then openListData(cdsMenu.fieldbyname('fnumber').AsString);
    ShowListMsg('ɾ�����,�ɹ� '+inttostr(acCount)+' ��,ʧ�ܻ����� '+inttostr(errCount)+' ��!',StringList);
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
