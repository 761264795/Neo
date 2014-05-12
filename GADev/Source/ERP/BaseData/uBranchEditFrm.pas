unit uBranchEditFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uTreeBaseEditFrm, Menus, cxLookAndFeelPainters, cxGraphics,
  cxCustomData, cxStyles, cxTL, cxMaskEdit, cxTLdxBarBuiltInMenu, DB,
  DBClient, StdCtrls, dximctrl, cxCheckBox, cxDBEdit, cxSpinEdit,
  cxContainer, cxEdit, cxTextEdit, cxInplaceContainer, cxDBTL, cxControls,
  cxTLData, cxButtons, ExtCtrls, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxLabel;

type
  TBranchEditFrm = class(TTreeBaseEditFrm)
    cdsMenuFISCU: TIntegerField;
    Bevel1: TBevel;
    cdsMenuFISSALEORGUNIT: TIntegerField;
    cdsMenufisadminorgunit: TIntegerField;
    cxDBCheckBox5: TcxDBCheckBox;
    btn_Bear: TcxButton;
    btn_uBear: TcxButton;
    cdsMenufisfreeze: TIntegerField;
    Label5: TLabel;
    cdsMenuCFBRanchFlag: TWideStringField;
    txt_CFBRanchFlag: TcxDBTextEdit;
    Label4: TLabel;
    cdsMenuFOrgType: TIntegerField;
    Label6: TLabel;
    txt_orgtype: TcxDBLookupComboBox;
    cdsOrgType: TClientDataSet;
    dsOrgType: TDataSource;
    cdsOrgTypeFID: TIntegerField;
    cdsOrgTypeFName: TStringField;
    cdsTest: TClientDataSet;
    cdsMenuFdisplayname_L2: TWideStringField;
    cb_OrgType: TcxComboBox;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    procedure FormCreate(Sender: TObject);
    procedure cdsMenuBeforePost(DataSet: TDataSet);
    procedure btn_uBearClick(Sender: TObject);
    procedure btn_BearClick(Sender: TObject);
    procedure cdsMenuAfterInsert(DataSet: TDataSet);
    procedure btn_NewClick(Sender: TObject);
    procedure btn_newSubItemClick(Sender: TObject);
    procedure btn_delClick(Sender: TObject);
    procedure cb_OrgTypePropertiesCloseUp(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure I3UserMessageResult(var msg:TMessage);override;
  end;

var
  BranchEditFrm: TBranchEditFrm;

implementation
uses FrmCliDM,Pub_Fun,StringUtilClass,uDrpHelperClase ;
{$R *.dfm}
function GetOrgTypeWhereStr(OrgType:Integer):string;
begin
  Result := '';
  case OrgType of
  0:Result := ' and FIsAdminOrgUnit=1';
  1:Result := ' and FIsCompanyOrgUnit=1';
  2:Result := ' and FIsSaleOrgUnit=1';
  3:Result := ' and FIsStorageOrgUnit=1';
  4:Result := ' and FIsPurchaseOrgUnit=1';
  5:Result := ' and FIsCostOrgUnit=1';
  6:Result := ' and FIsHROrgUnit=1';
  7:Result := ' and FIsProfitOrgUnit=1';
  end
end;
procedure TBranchEditFrm.FormCreate(Sender: TObject);
begin
  inherited;
  FbosType :='CCE7AED4';
  TableName :=  't_org_baseunit';
  QuerySQL  :=  'select * from t_org_baseunit where FControlUnitID='+Quotedstr(UserInfo.Controlunitid)+' and isnull(Forgtype,0)<>4 '
            +   GetOrgTypeWhereStr(cb_OrgType.ItemIndex)
            +   ' order by FLevel,fnumber';
  cdsOrgType.CreateDataSet;
  cdsOrgType.Append;
  cdsOrgType.FieldByName('FID').AsInteger := 1;
  cdsOrgType.FieldByName('FName').AsString := '总部';
  cdsOrgType.Post;
  cdsOrgType.Append;
  cdsOrgType.FieldByName('FID').AsInteger := 2;
  cdsOrgType.FieldByName('FName').AsString := '分公司';
  cdsOrgType.Post;
  cdsOrgType.Append;
  cdsOrgType.FieldByName('FID').AsInteger := 3;
  cdsOrgType.FieldByName('FName').AsString := '经销商';
  cdsOrgType.Post;
  cdsOrgType.Append;
  cdsOrgType.FieldByName('FID').AsInteger := 4;
  cdsOrgType.FieldByName('FName').AsString := '虚体机构';
  cdsOrgType.Post;
end;

procedure TBranchEditFrm.cdsMenuBeforePost(DataSet: TDataSet);
var tag:string;
begin
  inherited;
  if txt_orgtype.Text = '' then
  begin
    ShowMsg(Handle, '机构标类型不能为空!        ',[]);
    txt_orgtype.SetFocus;
    Abort;
  end;
  if Trim(DataSet.fieldbyname('CFBRanchFlag').AsString)='' then
  begin
    tag := ChnToPY(Trim(DataSet.fieldbyname('FNAME_L2').AsString));
    if Length(tag)>4 then
    begin
      tag := Copy(tag,1,4);
    end;
    DataSet.fieldbyname('CFBRanchFlag').AsString :=  tag;
  end;
  if (Length(Trim(DataSet.fieldbyname('CFBRanchFlag').AsString))>4 ) then
  begin
    ShowMsg(Handle, '机构标识不能长度不能超过4位!        ',[]);
    txt_CFBRanchFlag.SetFocus;
    Abort;
  end;

end;

procedure TBranchEditFrm.btn_uBearClick(Sender: TObject);
begin
  inherited;
  if cdsMenu.IsEmpty then Exit;
  cdsMenu.Edit;
  cdsMenu.FieldByName('fisfreeze').AsInteger := 1;
  cdsMenu.Post;
end;

procedure TBranchEditFrm.btn_BearClick(Sender: TObject);
begin
  inherited;
  if cdsMenu.IsEmpty then Exit;
  cdsMenu.Edit;
  cdsMenu.FieldByName('fisfreeze').AsInteger := 0;
  cdsMenu.Post;
end;

procedure TBranchEditFrm.cdsMenuAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FOrgType').AsInteger := 3;
  DataSet.FieldByName('fisfreeze').AsInteger := 1;
end;



procedure TBranchEditFrm.I3UserMessageResult(var msg: TMessage);
begin
  inherited;
  //
end;

procedure TBranchEditFrm.btn_NewClick(Sender: TObject);
begin
  if ParamInfo.DRP001='T' then ///启用EAS财务
  begin
    ShowMsg(Handle, '已经启用EAS财务不允许新增节点! ',[]);
    Abort;
  end;

  inherited;

end;

procedure TBranchEditFrm.btn_newSubItemClick(Sender: TObject);
begin
  inherited;
  if ParamInfo.DRP001='T' then ///启用EAS财务
  begin
    ShowMsg(Handle, '已经启用EAS财务不允许新增子节点! ',[]);
    Abort;
  end;
end;

procedure TBranchEditFrm.btn_delClick(Sender: TObject);
begin

  if ParamInfo.DRP001='T' then ///启用EAS财务
  begin
    ShowMsg(Handle, '已经启用EAS财务不允许删除节点! ',[]);
    Abort;
  end;
   inherited;
end;

procedure TBranchEditFrm.cb_OrgTypePropertiesCloseUp(Sender: TObject);
begin
  inherited;
  self.Caption := '组织单元-'+cb_OrgType.Text;
  QuerySQL  :=  'select * from t_org_baseunit where FID<>''11111111-1111-1111-1111-111111111111CCE7AED4'' and isnull(Forgtype,0)<>4 '
            +   GetOrgTypeWhereStr(cb_OrgType.ItemIndex)
            +   ' order by FLevel,fnumber';
  GetData;
end;

end.
