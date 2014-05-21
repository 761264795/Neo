unit uServiceAttributeAllocationFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBaseEditFrm, DB, DBClient, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxContainer,
  cxTextEdit, Buttons, ExtCtrls, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, StdCtrls, Menus, cxLookAndFeelPainters,
  cxButtons, cxCheckBox, cxDropDownEdit, cxMaskEdit, cxButtonEdit;

type
  TServiceAttributeAllocationFrm = class(TSTBaseEdit)
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    cxGridMaterial: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Splitter1: TSplitter;
    cxGrid2: TcxGrid;
    cxGridBranch: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    Panel7: TPanel;
    btn_Add: TSpeedButton;
    btn_Del: TSpeedButton;
    Label3: TLabel;
    txtMaterial: TcxTextEdit;
    btn_AllSelect: TcxButton;
    btn_NotSelect: TcxButton;
    Panel8: TPanel;
    btn_Alter: TcxButton;
    btn_Exit: TcxButton;
    Label2: TLabel;
    cdsMaterial: TClientDataSet;
    dsMaterial: TDataSource;
    cdsMaterialSELECTED: TFloatField;
    cdsMaterialFID: TWideStringField;
    cdsMaterialFNUMBER: TWideStringField;
    cdsMaterialFNAME_L2: TWideStringField;
    cdsMaterialBRANDNAME: TWideStringField;
    cdsMaterialYEARSNAME: TWideStringField;
    cdsMaterialATTRNAME: TWideStringField;
    cdsMaterialSEASONNAME: TWideStringField;
    cxGridMaterialSELECTED: TcxGridDBColumn;
    cxGridMaterialFID: TcxGridDBColumn;
    cxGridMaterialFNUMBER: TcxGridDBColumn;
    cxGridMaterialFNAME_L2: TcxGridDBColumn;
    cxGridMaterialBRANDNAME: TcxGridDBColumn;
    cxGridMaterialYEARSNAME: TcxGridDBColumn;
    cxGridMaterialATTRNAME: TcxGridDBColumn;
    cxGridMaterialSEASONNAME: TcxGridDBColumn;
    cdsBranch: TClientDataSet;
    dsBranch: TDataSource;
    cdsBranchFID: TStringField;
    cdsBranchFBranchNumber: TStringField;
    cdsBranchFBranchName: TStringField;
    cxGridBranchFID: TcxGridDBColumn;
    cxGridBranchFBranchNumber: TcxGridDBColumn;
    cxGridBranchFBranchName: TcxGridDBColumn;
    Label4: TLabel;
    cdsCompany: TClientDataSet;
    cdsInventory: TClientDataSet;
    cdsPur: TClientDataSet;
    cdsCost: TClientDataSet;
    cdsSale: TClientDataSet;
    cdsCompany_save: TClientDataSet;
    cdsInventory_save: TClientDataSet;
    cdsCost_save: TClientDataSet;
    cdsPur_save: TClientDataSet;
    cdsSale_save: TClientDataSet;
    Label5: TLabel;
    Label6: TLabel;
    txt_Org: TcxButtonEdit;
    Bevel1: TBevel;
    cb_OrgType: TcxComboBox;
    btn_Find: TcxButton;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure txtMaterialPropertiesChange(Sender: TObject);
    procedure cdsMaterialFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure btn_AllSelectClick(Sender: TObject);
    procedure btn_NotSelectClick(Sender: TObject);
    procedure btn_ExitClick(Sender: TObject);
    procedure btn_AddClick(Sender: TObject);
    procedure btn_DelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn_AlterClick(Sender: TObject);
    procedure txt_OrgKeyPress(Sender: TObject; var Key: Char);
    procedure txt_OrgPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btn_FindClick(Sender: TObject);
    procedure cdsInventory_saveNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    FOrgFID:string;
    Procedure GetMaterial;
    procedure OpenData(mFID:string);
    procedure OpenSaveData(mFID:string);
    function GetBranchFIDs:string;
    function ST_Save:Boolean;
    procedure AllocationMaterial(mFID:string);
    procedure setConventionFieldValue(cds:TClientDataSet;MaterFID,unitFID,bostypeFID:string);
    procedure copyDataset(src,dec:TClientDataSet);
  end;

var
  ServiceAttributeAllocationFrm: TServiceAttributeAllocationFrm;
  procedure OpenServiceAttributeAllocation;
implementation
  uses FrmCliDM,Pub_Fun,uDrpHelperClase,StringUtilClass,uMaterDataSelectHelper;
{$R *.dfm}
  procedure OpenServiceAttributeAllocation;
  begin
    Application.CreateForm(TServiceAttributeAllocationFrm,ServiceAttributeAllocationFrm);
    ServiceAttributeAllocationFrm.ShowModal;
    ServiceAttributeAllocationFrm.Free;
  end;
{ TServiceAttributeAllocationFrm }


function getSqlStr(str: string): string;
var i: Integer;
  rest: string;
  list: Tstringlist;
begin
  result := '';
  try
    list := Tstringlist.Create;
    list.Delimiter := ',';
    list.DelimitedText := str;
    rest := '';
    if List.Count = 0 then Exit;
    for i := 0 to List.Count - 1 do
    begin
      rest := rest + QuotedStr(trim(List[i])) + ',';
    end;
    rest := Copy(rest, 1, Length(trim(rest)) - 1);
    if rest <> '' then
      result := rest;
  finally
    list.Free;
  end;
end;
procedure TServiceAttributeAllocationFrm.GetMaterial;
var _SQL,ErrMsg,TableName,FieldName:string;
begin
  inherited;
  if cb_OrgType.Text = '财务资料' then
  begin
    TableName := 'T_BD_MATERIALCOMPANYINFO';FieldName := 'FCompanyID';
  end;
  if cb_OrgType.Text = '销售资料' then
  begin
    TableName := 'T_BD_MATERIALSALES'; FieldName := 'FORGUNIT';
  end;
  if cb_OrgType.Text = '采购资料' then
  begin
    TableName := 'T_BD_MATERIALPURCHASING'; FieldName := 'FORGUNIT';
  end;
  if cb_OrgType.Text = '库存资料' then
  begin
    TableName := 'T_BD_MATERIALINVENTORY';FieldName := 'FORGUNIT';
  end;
  if cb_OrgType.Text = '成本资料' then
  begin
    TableName := 'T_BD_MATERIALCOST'; FieldName := 'FORGUNIT';
  end;

  _SQL :=' select a.FSTATUS as Selected, m.fid,m.fnumber,m.fname_l2,brand.fname_l2 as BrandName,'
        +' years.fname_l2 as yearsName,attr.fname_l2 as attrName,season.fname_l2 as seasonName  '
        +' from '+TableName+' a  '
        +' left join t_bd_material m on m.fid=a.fmaterialid  '
        +' left join ct_bas_brand brand on brand.fid=m.cfbrandid '
        +' left join ct_bas_years years on years.fid=m.cfyearsid'
        +' left join ct_bd_attribute attr on attr.fid=m.cfattributeid '
        +' left join ct_bas_season season on season.fid=m.cfseasonid '
        +' where a.'+FieldName+'='+Quotedstr(self.FOrgFID);
  if not CliDM.Get_OpenSQL(cdsMaterial,_SQL,ErrMsg) then
  begin
    ShowMsg(Self.Handle,'查找物料出错！'+ErrMsg,[]);
    Exit;
  end;
  if not  cdsMaterial.IsEmpty then
  begin
    btn_AllSelect.Click;
  end;
end;

procedure TServiceAttributeAllocationFrm.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  //inherited;

end;

procedure TServiceAttributeAllocationFrm.FormShow(Sender: TObject);
begin
  inherited;
  Self.FOrgFID := UserInfo.Branch_ID;
  txt_Org.Text := UserInfo.Branch_Name;
  
end;

procedure TServiceAttributeAllocationFrm.txtMaterialPropertiesChange(
  Sender: TObject);
var inputTxt:string;
begin
  inputTxt := Trim(txtMaterial.Text);
  cdsMaterial.Filtered := False;
  if (inputTxt <> '' ) then
  cdsMaterial.Filtered := True
  else
  cdsMaterial.Filtered := False;
end;

procedure TServiceAttributeAllocationFrm.cdsMaterialFilterRecord(
  DataSet: TDataSet; var Accept: Boolean);
var inputTxt:string;
begin
  inputTxt := Trim(txtMaterial.Text);
  Accept:=((Pos(Trim(UpperCase(inputTxt)),UpperCase(DataSet.fieldbyname('fnumber').AsString))>0) or
          (Pos(Trim(UpperCase(inputTxt)),UpperCase(DataSet.fieldbyname('fname_l2').AsString))>0) or
          (Pos(Trim(UpperCase(inputTxt)),ChnToPY(UpperCase(DataSet.fieldbyname('fnumber').AsString)))>0)  or
          (Pos(Trim(UpperCase(inputTxt)),ChnToPY(UpperCase(DataSet.fieldbyname('fname_l2').AsString)))>0)
          )
end;

procedure TServiceAttributeAllocationFrm.btn_AllSelectClick(
  Sender: TObject);
begin
  inherited;
  try
    cdsMaterial.DisableControls;
    cdsMaterial.First;
    while not cdsMaterial.Eof do
    begin
      cdsMaterial.Edit;
      cdsMaterial.FieldByName('selected').AsInteger := 1;
      cdsMaterial.Post;
      cdsMaterial.Next;
    end;
    cdsMaterial.First;
  finally
    cdsMaterial.EnableControls;
  end;
end;

procedure TServiceAttributeAllocationFrm.btn_NotSelectClick(
  Sender: TObject);
begin
  inherited;
  try
    cdsMaterial.DisableControls;
    cdsMaterial.First;
    while not cdsMaterial.Eof do
    begin
      cdsMaterial.Edit;
      if cdsMaterial.FieldByName('selected').AsInteger = 1 then
      cdsMaterial.FieldByName('selected').AsInteger := 0
      else
      cdsMaterial.FieldByName('selected').AsInteger := 1;
      cdsMaterial.Post;
      cdsMaterial.Next;
    end;
  finally
    cdsMaterial.EnableControls;
  end;
end;

procedure TServiceAttributeAllocationFrm.btn_ExitClick(Sender: TObject);
begin
  inherited;
  self.Close;
end;

procedure TServiceAttributeAllocationFrm.btn_AddClick(Sender: TObject);
var ForgType:Integer;
begin
  //1 财务组织，2 销售组织 ， 3 库存组织 ，4 采购组织 ，5 成本中心
  if cb_OrgType.Text = '财务资料' then
  ForgType := 1
  else
  if cb_OrgType.Text = '销售资料' then
  ForgType := 2
  else
  if cb_OrgType.Text = '采购资料' then
  ForgType := 4
  else
  if cb_OrgType.Text = '库存资料' then
  ForgType := 3
  else
  if cb_OrgType.Text = '成本资料' then
  ForgType := 5;
  with Select_Branch(cb_OrgType.Text+'组织','',ForgType) do
  begin
    if not IsEmpty then
    begin
      First;
      while not eof do
      begin
        if (not cdsBranch.Locate('FID',VarArrayOf([FieldByName('fid').AsString]),[]))
           and (FieldByName('fid').AsString <> self.FOrgFID)
        then
        begin
          cdsBranch.Append;
          cdsBranch.FieldByName('FID').AsString := fieldbyname('FID').AsString;
          cdsBranch.FieldByName('FBranchNumber').AsString := fieldbyname('Fnumber').AsString;
          cdsBranch.FieldByName('FBranchName').AsString := fieldbyname('Fname_l2').AsString;
          cdsBranch.Post;
        end;
        Next;
      end;
    end;
  end;
end;

procedure TServiceAttributeAllocationFrm.btn_DelClick(Sender: TObject);
begin
  inherited;
  if not  cdsBranch.IsEmpty then cdsBranch.Delete;
end;

procedure TServiceAttributeAllocationFrm.FormCreate(Sender: TObject);
begin
  inherited;
  cdsBranch.CreateDataSet;
end;

procedure TServiceAttributeAllocationFrm.OpenData(mFID: string);
var materSQL,ErrMsg:string;
  _cds: array[0..4] of TClientDataSet;
  _SQL: array[0..4] of String;
begin
  try
    Screen.Cursor := crHourGlass;
    _cds[0] := cdsCompany;
    _cds[1] := cdsPur;
    _cds[2] := cdsInventory;
    _cds[3] := cdsSale;
    _cds[4] := cdsCost;
    _SQL[0] := 'select * from T_BD_MATERIALCOMPANYINFO a  where a.fmaterialid = '+Quotedstr(mFID)+' and a.FCompanyID='+quotedstr(Self.FOrgFID);
    _SQL[1] := 'select * from T_BD_MATERIALPURCHASING a  where a.fmaterialid = '+Quotedstr(mFID)+' and a.FOrgUnit='+quotedstr(Self.FOrgFID);
    _SQL[2] := 'select * from T_BD_MATERIALINVENTORY a  where a.fmaterialid = '+Quotedstr(mFID)+' and a.FOrgUnit='+quotedstr(Self.FOrgFID);
    _SQL[3] := 'select * from T_BD_MATERIALSALES a  where a.fmaterialid = '+Quotedstr(mFID)+' and a.FOrgUnit='+quotedstr(Self.FOrgFID);
    _SQL[4] := 'select * from T_BD_MATERIALCOST a  where a.fmaterialid = '+Quotedstr(mFID)+' and a.FORGUNIT='+quotedstr(Self.FOrgFID);
    if not (CliDM.Get_OpenClients_E(mFID,_cds,_SQL,ErrMsg)) then
    begin
      showmsg(self.Handle,'物料业务属性表打开出错:'+ErrMsg,[]);
      Self.Close;
      Abort;
    end;
  finally
    Screen.Cursor := crDefault;
  end;
end;

function TServiceAttributeAllocationFrm.GetBranchFIDs: string;
var Fids:string;
begin
  try
    cdsBranch.DisableControls;
    Fids := '';
    cdsBranch.First;
    while not cdsBranch.Eof do
    begin
      if Fids = '' then
      Fids := cdsBranch.fieldbyname('FID').AsString
      else
      Fids := Fids + ',' + cdsBranch.fieldbyname('FID').AsString;
      cdsBranch.Next;
    end;
    Result := Fids;
  finally
    cdsBranch.EnableControls;
  end;
end;

procedure TServiceAttributeAllocationFrm.OpenSaveData(mFID: string);
var materSQL,ErrMsg,bFID:string;
  _cds: array[0..0] of TClientDataSet;
  _SQL: array[0..0] of String;
begin
  try
    Screen.Cursor := crHourGlass;
    bFID := getSqlStr(GetBranchFIDs);
    if cb_OrgType.Text = '财务资料' then
    begin
      _cds[0] := cdsCompany_save;
      _SQL[0] := 'select * from T_BD_MATERIALCOMPANYINFO a  where a.fmaterialid = '+Quotedstr(mFID)+' and a.FCompanyID in ('+bFID+')';
    end
    else
    if cb_OrgType.Text = '销售资料' then
    begin
      _cds[0] := cdsSale_save;
      _SQL[0] := 'select * from T_BD_MATERIALSALES a  where a.fmaterialid = '+Quotedstr(mFID)+' and a.FOrgUnit in ('+bFID+')';
    end
    else
    if cb_OrgType.Text = '采购资料' then
    begin
      _cds[0] := cdsPur_save;
      _SQL[0] := 'select * from T_BD_MATERIALPURCHASING a  where a.fmaterialid = '+Quotedstr(mFID)+' and a.FOrgUnit in ('+bFID+')';
    end
    else
    if cb_OrgType.Text = '库存资料' then
    begin
      _cds[0] := cdsInventory_save;
      _SQL[0] := 'select * from T_BD_MATERIALINVENTORY a  where a.fmaterialid = '+Quotedstr(mFID)+' and a.FOrgUnit in ('+bFID+')';
    end
    else
    if cb_OrgType.Text = '成本资料' then
    begin
      _cds[0] := cdsCost_save;
      _SQL[0] := 'select * from T_BD_MATERIALCOST a  where a.fmaterialid = '+Quotedstr(mFID)+' and a.FORGUNIT in ('+bFID+')';
    end;
    if not (CliDM.Get_OpenClients_E(mFID,_cds,_SQL,ErrMsg)) then
    begin
      showmsg(self.Handle,'物料业务属性表打开出错:'+ErrMsg,[]);
      Abort;
    end;
  finally
    Screen.Cursor := crDefault;
  end;
end;

function TServiceAttributeAllocationFrm.ST_Save: Boolean;
var _cds: array[0..0] of TClientDataSet;
      error : string;
      i:Integer;
      cds:TClientDataSet;
      TableName,FieldName:string;
begin
  if cb_OrgType.Text = '财务资料' then
  begin
    TableName := 'T_BD_MATERIALCOMPANYINFO';FieldName := 'FCompanyID'; cds := cdsCompany_save;
  end;
  if cb_OrgType.Text = '销售资料' then
  begin
    TableName := 'T_BD_MATERIALSALES'; FieldName := 'FORGUNIT'; cds := cdsSale_save;
  end;
  if cb_OrgType.Text = '采购资料' then
  begin
    TableName := 'T_BD_MATERIALPURCHASING'; FieldName := 'FORGUNIT';  cds := cdsPur_save;
  end;
  if cb_OrgType.Text = '库存资料' then
  begin
    TableName := 'T_BD_MATERIALINVENTORY';FieldName := 'FORGUNIT'; cds := cdsInventory_save;
  end;
  if cb_OrgType.Text = '成本资料' then
  begin
    TableName := 'T_BD_MATERIALCOST'; FieldName := 'FORGUNIT'; cds := cdsCost_save;
  end;
  try
    Screen.Cursor := crHourGlass;
    Result := False;
    _cds[0] := cds;
    try
      if CliDM.Apply_Delta_E(_cds,[TableName],error) then
      begin
        Result := True;
        Gio.AddShow(TableName+'表提交成功！');
      end
      else
      begin
        ShowMsg(Handle, '业务属性保存失败!       '+error,[]);
        Gio.AddShow('物料业务属性保存失败!'+error);
        Abort;
      end;
    except
      on E: Exception do
      begin
        Gio.AddShow(TableName+'表提交失败！'+e.Message);
        ShowMsg(Handle, '物料业务属性提交失败：'+e.Message,[]);
        Abort;
      end;
    end;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TServiceAttributeAllocationFrm.AllocationMaterial(mFID: string);
var BranchFID:string;
begin
  OpenData(mFID);
  OpenSaveData(mFID);
  try
    cdsBranch.DisableControls;
    cxGridBranch.BeginUpdate;
    cdsBranch.First;
    while not cdsBranch.Eof do
    begin
      BranchFID := cdsBranch.fieldbyname('FID').AsString;
      if cb_OrgType.Text = '财务资料' then
      begin
        //财务组织
        if cdsCompany_save.Locate('FCOMPANYID',VarArrayOf([BranchFID]),[]) then
        cdsCompany_save.Edit
        else
        cdsCompany_save.Append;
        copyDataset(cdsCompany,cdsCompany_save);
        self.setConventionFieldValue(cdsCompany_save,mFID,BranchFID,'D431F8BB');
        cdsCompany_save.Post;
      end
      else
      if cb_OrgType.Text = '销售资料' then
      begin
        //销售组织
        if cdsSale_save.Locate('FORGUNIT',VarArrayOf([BranchFID]),[]) then
        cdsSale_save.Edit
        else
        cdsSale_save.Append;
        copyDataset(cdsSale,cdsSale_save);
        self.setConventionFieldValue(cdsSale_save,mFID,BranchFID,'C84112CF');
        cdsSale_save.Post;
      end
      else
      if cb_OrgType.Text = '采购资料' then
      begin
        //采购组织
        if cdsPur_save.Locate('FORGUNIT',VarArrayOf([BranchFID]),[]) then
        cdsPur_save.Edit
        else
        cdsPur_save.Append;
        copyDataset(cdsPur,cdsPur_save);
        self.setConventionFieldValue(cdsPur_save,mFID,BranchFID,'0193BD9B');
        cdsPur_save.Post;
      end
      else
      if cb_OrgType.Text = '库存资料' then
      begin
        //库存组织
        if cdsInventory_save.Locate('FORGUNIT',VarArrayOf([BranchFID]),[]) then
        cdsInventory_save.Edit
        else
        cdsInventory_save.Append;
        copyDataset(cdsInventory,cdsInventory_save);
        self.setConventionFieldValue(cdsInventory_save,mFID,BranchFID,'557E499F');
        cdsInventory_save.Post;
      end
      else
      if cb_OrgType.Text = '成本资料' then
      begin
        //成本组织
        if cdsCost_save.Locate('FORGUNIT',VarArrayOf([BranchFID]),[]) then
        cdsCost_save.Edit
        else
        cdsCost_save.Append;
        copyDataset(cdsCost,cdsCost_save);
        self.setConventionFieldValue(cdsCost_save,mFID,BranchFID,'C45E21AA');
        cdsCost_save.Post;
      end;
      //下一条
      cdsBranch.Next;
    end;
    ST_Save;
  finally
    cdsBranch.EnableControls;
    cxGridBranch.EndUpdate;
  end;
end;

procedure TServiceAttributeAllocationFrm.btn_AlterClick(Sender: TObject);
var mFID:string;
begin
  inherited;
  if cdsMaterial.IsEmpty then
  begin
    ShowMsg(self.Handle,'没有可以分配的物料,当前机构没有对物料设置业务属性！',[]);
    Exit;
  end;
  if cdsBranch.IsEmpty then
  begin
    ShowMsg(self.Handle,'请选择要分配到的机构！   ',[]);
    Exit;
  end;
  if cdsBranch.RecordCount > 1000 then
  begin
    ShowMsg(self.Handle,'一次性分配不能超过1000个机构！   ',[]);
    Exit;
  end;
  if MessageBox(Handle, PChar('确认开始分配业务属性(Y/N)?'), 'GA集团ERP提示', MB_YESNO) = IDNO then Exit;
  try
    if cdsMaterial.State in DB.dsEditModes then cdsMaterial.Post;
    cdsMaterial.DisableControls;
    cdsMaterial.First;
    while not cdsMaterial.Eof do
    begin
      mFID := cdsMaterial.fieldbyname('FID').AsString;
      if cdsMaterial.FieldByName('selected').AsInteger = 1 then
      begin
        AllocationMaterial(mFID);
      end;
      cdsMaterial.Next;
    end;
    ShowMsg(self.Handle,'分配业务属性成功！         ',[]);
  finally
    cdsMaterial.EnableControls;
  end;
end;

procedure TServiceAttributeAllocationFrm.setConventionFieldValue(
  cds: TClientDataSet;MaterFID,unitFID,bostypeFID:string);
begin
  cds.FieldByName('FID').AsString:=CliDM.GetEASSID(bostypeFID);
  cds.FieldByName('FCREATORID').AsString:=UserInfo.LoginUser_FID;
  cds.FieldByName('FCREATETIME').AsDateTime:=CliDM.Get_ServerTime;
  cds.FieldByName('FLASTUPDATEUSERID').AsString:=UserInfo.LoginUser_FID;
  cds.FieldByName('FLASTUPDATETIME').AsDateTime:=cds.FieldByName('FCREATETIME').AsDateTime;
  //
  cds.FieldByName('FControlUnitID').AsString :=UserInfo.Controlunitid;
  if cds.FindField('FOrgUnit') <> nil then
  cds.FieldByName('FOrgUnit').AsString := unitFID;

  if cds.FindField('FCOMPANYID') <> nil then
  cds.FieldByName('FCOMPANYID').AsString := unitFID;

  cds.FieldByName('FMATERIALID').AsString:=MaterFID;
end;

procedure TServiceAttributeAllocationFrm.copyDataset(src,
  dec: TClientDataSet);
var i:Integer;
    fieldname:string;
begin
  for i := 0 to dec.FieldCount -1  do
  begin
    fieldname := dec.Fields[i].FieldName;
    if src.FindField(fieldname) <> nil then
    dec.Fields[i].Value := src.fieldbyname(fieldname).Value;
  end;
end;

procedure TServiceAttributeAllocationFrm.txt_OrgKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key <> #8 then  Key := #0
  else
  begin
    self.FOrgFID := '';
    txt_Org.Text := '';
  end;
end;

procedure TServiceAttributeAllocationFrm.txt_OrgPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var ForgType:Integer;
begin
  inherited;
//  财务资料
//  销售资料
//  采购资料
//  库存资料
//  成本资料
//1 财务组织，2 销售组织 ， 3 库存组织 ，4 采购组织 ，5 成本中心
  if cb_OrgType.Text = '财务资料' then
  ForgType := 1
  else
  if cb_OrgType.Text = '销售资料' then
  ForgType := 2
  else
  if cb_OrgType.Text = '采购资料' then
  ForgType := 4
  else
  if cb_OrgType.Text = '库存资料' then
  ForgType := 3
  else
  if cb_OrgType.Text = '成本资料' then
  ForgType := 5;
  with Select_Branch('','',ForgType) do
  begin
    if not IsEmpty then
    begin
      self.FOrgFID := fieldbyname('FID').AsString;
      txt_Org.Text := fieldbyname('fname_l2').AsString;
    end;
  end;
end;

procedure TServiceAttributeAllocationFrm.btn_FindClick(Sender: TObject);
begin
  inherited;
  if self.FOrgFID = '' then
  begin
    ShowMsg(self.Handle,'请选择业务组织!',[]);
    txt_Org.SetFocus;
    Exit;
  end;
  GetMaterial;
end;

procedure TServiceAttributeAllocationFrm.cdsInventory_saveNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FEffectedStatus').AsInteger :=2;  //保存或暂存
end;

end.
