unit uUserEditfrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBaseEditFrm, Buttons, jpeg, ExtCtrls, DB, DBClient, cxControls,
  cxContainer, cxEdit, cxLabel, cxPC, cxMaskEdit, cxButtonEdit, cxDBEdit,
  cxCheckBox, cxTextEdit, ADODB, cxSplitter, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, dxSkinsCore, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinscxPCPainter, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinPumpkin,
  dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue;

type
  TFM_UserEditForm = class(TSTBaseEdit)
    Panel5: TPanel;
    Image2: TImage;
    btn_Save: TSpeedButton;
    btn_NewRow: TSpeedButton;
    btn_DelRow: TSpeedButton;
    btn_Exit: TSpeedButton;
    Panel1: TPanel;
    cxLabel1: TcxLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxLabel2: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    Panel2: TPanel;
    Panel3: TPanel;
    cxPageCtlUserPower: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    cxbtnPersonName: TcxDBButtonEdit;
    cxbtnBranch: TcxDBButtonEdit;
    cxbtnDefBranch: TcxDBButtonEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    Panel4: TPanel;
    btn_batchImp: TSpeedButton;
    btn_New: TSpeedButton;
    btn_Del: TSpeedButton;
    cdsUserEdit: TClientDataSet;
    dsUserEdit: TDataSource;
    cxLabel3: TcxLabel;
    cxDBTextEdit7: TcxDBTextEdit;
    cdsUserWareHouse: TClientDataSet;
    dsUserWarehouse: TDataSource;
    cdsUserCust: TClientDataSet;
    dsUserCust: TDataSource;
    cdsUserSupply: TClientDataSet;
    dsUserSupply: TDataSource;
    cxgridUserWare: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxgridUserCust: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxgridUserSupply: TcxGridDBTableView;
    cxGrid3Level1: TcxGridLevel;
    cxGrid3: TcxGrid;
    cxgridUserWareFVIEWPERMISSION: TcxGridDBColumn;
    cxgridUserWareFOPRTPERMISSION: TcxGridDBColumn;
    cxgridUserWareCFLOWESTDISCRATE: TcxGridDBColumn;
    cxgridUserWareCFLOGINPERMISSION: TcxGridDBColumn;
    cxgridUserWareWareNumber: TcxGridDBColumn;
    cxgridUserWareWarename: TcxGridDBColumn;
    cxgridUserCustCFVIEWPERMISSION: TcxGridDBColumn;
    cxgridUserCustCFOPRTPERMISSION: TcxGridDBColumn;
    cxgridUserCustCustNumber: TcxGridDBColumn;
    cxgridUserCustCustName: TcxGridDBColumn;
    cxgridUserSupplyCFVIEWPERMISSION: TcxGridDBColumn;
    cxgridUserSupplyCFOPRTPERMISSION: TcxGridDBColumn;
    cxgridUserSupplySupplyNumber: TcxGridDBColumn;
    cxgridUserSupplySupplyName: TcxGridDBColumn;
    AdsTmp: TADODataSet;
    cdsBRangeTmp: TClientDataSet;
    txt_PSW: TcxTextEdit;
    cdsUserEditFID: TStringField;
    cdsUserEditFNumber: TWideStringField;
    cdsUserEditFName_L1: TWideStringField;
    cdsUserEditFName_L2: TWideStringField;
    cdsUserEditFName_L3: TWideStringField;
    cdsUserEditFType: TIntegerField;
    cdsUserEditFDescription_L1: TWideStringField;
    cdsUserEditFDescription_L2: TWideStringField;
    cdsUserEditFDescription_L3: TWideStringField;
    cdsUserEditFPassword: TWideStringField;
    cdsUserEditFIsDelete: TIntegerField;
    cdsUserEditFIsLocked: TIntegerField;
    cdsUserEditFForbidden: TIntegerField;
    cdsUserEditFEffectiveDate: TDateTimeField;
    cdsUserEditFInvalidationDate: TDateTimeField;
    cdsUserEditFDefaultLocale: TStringField;
    cdsUserEditFIsRegister: TIntegerField;
    cdsUserEditFErrCount: TIntegerField;
    cdsUserEditFGroupID: TStringField;
    cdsUserEditFPersonId: TStringField;
    cdsUserEditFSecurityId: TStringField;
    cdsUserEditFPWEffectiveDate: TDateTimeField;
    cdsUserEditFLockedTime: TDateTimeField;
    cdsUserEditFIsBizAdmin: TIntegerField;
    cdsUserEditFIsChangedPW: TIntegerField;
    cdsUserEditFDefOrgUnitID: TStringField;
    cdsUserEditFControlUnitID: TStringField;
    cdsUserEditFCreatorID: TStringField;
    cdsUserEditFCreateTime: TDateTimeField;
    cdsUserEditFLastUpdateUserID: TStringField;
    cdsUserEditFLastUpdateTime: TDateTimeField;
    cdsUserEditFCustomerID: TStringField;
    cdsUserEditFSupplierID: TStringField;
    cdsUserEditFMainRoleID: TStringField;
    cdsUserEditFagentUser: TIntegerField;
    cdsUserEditFLoginAuthorWay: TIntegerField;
    cdsUserEditFPwdHisStr: TStringField;
    cdsUserEditFReferId: TStringField;
    cdsUserEditFCell: TWideStringField;
    cdsUserEditFBackupEMail: TWideStringField;
    cdsUserEditFHomePhone: TWideStringField;
    cdsUserEditFOfficePhone: TWideStringField;
    cdsUserEditFEMail: TWideStringField;
    cdsUserEditFAdNumber: TStringField;
    cdsUserEditCFUserType: TStringField;
    cdsUserEditCFMaxRepairDiscountRate: TFloatField;
    cdsUserEditCFMaxRetailDiscountRate: TFloatField;
    cdsUserEditCFBranchName: TStringField;
    cdsUserEditCFDefualBranch: TStringField;
    cdsUserEditCFPersonName: TStringField;
    cdsUserWareHouseFID: TStringField;
    cdsUserWareHouseFWHID: TWideStringField;
    cdsUserWareHouseFVIEWPERMISSION: TIntegerField;
    cdsUserWareHouseFOPRTPERMISSION: TIntegerField;
    cdsUserWareHouseFPARENTID: TStringField;
    cdsUserWareHouseCFLOWESTDISCRATE: TFloatField;
    cdsUserWareHouseCFLOGINPERMISSION: TFloatField;
    cdsUserWareHouseFNAME: TStringField;
    cdsUserWareHouseFnumeric: TStringField;
    cdsUserWareHouseCFIsRole: TIntegerField;
    cdsUserCustFID: TStringField;
    cdsUserCustFSEQ: TIntegerField;
    cdsUserCustFPARENTID: TStringField;
    cdsUserCustCFVIEWPERMISSION: TIntegerField;
    cdsUserCustCFOPRTPERMISSION: TIntegerField;
    cdsUserCustCFCID: TStringField;
    cdsUserCustCFNUMBER: TStringField;
    cdsUserCustCFNAME: TWideStringField;
    cdsUserCustCFIsRole: TIntegerField;
    cdsUserSupplyFID: TStringField;
    cdsUserSupplyFSEQ: TIntegerField;
    cdsUserSupplyFPARENTID: TStringField;
    cdsUserSupplyCFSEQ: TIntegerField;
    cdsUserSupplyCFSID: TWideStringField;
    cdsUserSupplyCFVIEWPERMISSION: TIntegerField;
    cdsUserSupplyCFOPRTPERMISSION: TIntegerField;
    cdsUserSupplyCFIsRole: TIntegerField;
    procedure cdsUserEditAfterInsert(DataSet: TDataSet);
    procedure cdsUserWareHouseAfterInsert(DataSet: TDataSet);
    procedure cdsUserCustAfterInsert(DataSet: TDataSet);
    procedure cdsUserSupplyAfterInsert(DataSet: TDataSet);
    procedure btn_ExitClick(Sender: TObject);
    procedure btn_DelRowClick(Sender: TObject);
    procedure btn_NewRowClick(Sender: TObject);
    procedure cdsUserEditBeforePost(DataSet: TDataSet);
    procedure cxbtnDefBranchPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxbtnPersonNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxbtnBranchPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxgridUserWareWareNumberPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure btn_NewClick(Sender: TObject);
    procedure btn_DelClick(Sender: TObject);
    procedure cxgridUserCustCustNumberPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure cxgridUserSupplySupplyNumberPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure cdsUserEditCalcFields(DataSet: TDataSet);
    procedure cdsUserWareHouseCalcFields(DataSet: TDataSet);
    procedure cdsUserCustCalcFields(DataSet: TDataSet);
    procedure cdsUserSupplyCalcFields(DataSet: TDataSet);
    procedure btn_SaveClick(Sender: TObject);
    procedure btn_batchImpClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cdsUserWareHouseBeforePost(DataSet: TDataSet);
    procedure cdsUserCustBeforePost(DataSet: TDataSet);
    procedure cdsUserSupplyBeforePost(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    Ischange : Boolean;
    strOrgID : string;  //分支机构
     function ST_Save : Boolean; override;
     procedure Open_Bill(KeyFields: String; KeyValues: String);
  end;

var
  FM_UserEditForm: TFM_UserEditForm;
  strOrgID : string;  //分支机构
  function EditUserInfo_Frm(KeyValues,sOrgID : string):Boolean;    //打开用户编辑界面
implementation
 uses FrmCliDM,uSysDataSelect,Pub_Fun,uMaterDataSelectHelper;
{$R *.dfm}

function EditUserInfo_Frm(KeyValues,sOrgID : string):Boolean;
begin
  Result := True;
  strOrgID := sOrgID;
  if FM_UserEditForm <> nil then
  begin
    Gio.AddShow('用户编辑界面FM_UserEditForm已经存在 - 开始');
    if (FM_UserEditForm.Visible) and (FM_UserEditForm.Showing) then
    begin
      Gio.AddShow('用户编辑界面FM_UserEditForm已经存在 - 显示到最前面');
      FM_UserEditForm.SetFocus;
    end;  
     Exit;
  end;
  try
    Gio.AddShow('用户编辑界面开始创建');
    Application.CreateForm(TFM_UserEditForm, FM_UserEditForm);
    FM_UserEditForm.Open_Bill('FID',KeyValues);
    FM_UserEditForm.ShowModal;
    Result := FM_UserEditForm.Ischange;
   // if FM_UserEditForm <> nil then
   // if FM_UserEditForm.Visible then FM_UserEditForm.SetFocus;
  except
    Gio.AddShow('用户编辑界面创建出错,自动释放窗体');

    FM_UserEditForm.Free;
    FM_UserEditForm := nil;
  end;
end;  
procedure TFM_UserEditForm.cxbtnDefBranchPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  if not (cdsUserEdit.State in DB.dsEditModes) then cdsUserEdit.Edit;
  with Select_Branch(cdsUserEdit.fieldbyname('FDEFORGUNITID').AsString,'',0) do
  begin
    if not IsEmpty then
      cdsUserEdit.FieldByName('FDEFORGUNITID').AsString := fieldbyname('fid').AsString;
  end;
end;

procedure TFM_UserEditForm.cxbtnPersonNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  if not (cdsUserEdit.State in DB.dsEditModes) then cdsUserEdit.Edit;
    cdsUserEdit.FieldByName('FPERSONID').AsString := FindPerson;
end;

procedure TFM_UserEditForm.Open_Bill(KeyFields: String; KeyValues: String);
var OpenTables: array[0..3] of string;
    _cds: array[0..3] of TClientDataSet;
    ErrMsg,strwhere : string;
begin
  if trim(KeyValues)<>'' then
    OpenTables[0] := ' select * from T_PM_USER where FID='+quotedstr(KeyValues)
  else
    OpenTables[0] := ' select * from T_PM_USER where 1<>1 ';
  if trim(KeyValues)<>'' then
    OpenTables[1] := ' select * from T_PM_UserPermissionEntry where FparentID='+quotedstr(KeyValues)
  else
    OpenTables[1] := ' select * from T_PM_UserPermissionEntry where 1<>1 ';

  if trim(KeyValues)<>'' then
    OpenTables[2] := ' select * from CT_PM_USERCUSTOMERENTRY where FparentID='+quotedstr(KeyValues)
  else
    OpenTables[2] := ' select * from  CT_PM_USERCUSTOMERENTRY where 1<>1 ';
  if trim(KeyValues)<>'' then
    OpenTables[3] := ' select * from Ct_Pm_Usersupplierentry where FparentID='+quotedstr(KeyValues)
  else
    OpenTables[3] := ' select * from Ct_Pm_Usersupplierentry where 1<>1 ';
  _cds[0] := cdsUserEdit;
  _cds[1] := cdsUserWareHouse;
  _cds[2] := cdsUserCust;
  _cds[3] := cdsUserSupply;
  try
    if not CliDM.Get_OpenClients_E(KeyValues,_cds,OpenTables,ErrMsg) then
    begin
      ShowError(Handle, ErrMsg,[]);
      Abort;
    end;
  except
    on E : Exception do
    begin
       ShowError(Handle, '打开用户编辑数据报错：'+E.Message,[]);
       Abort;
    end;
  end;
  if UpperCase(trim(cdsUserEdit.FieldByName('FNUMBER').AsString))='USER' then
  begin
    cxDBTextEdit1.Enabled := False;
    cxbtnPersonName.Enabled := False;
  end;
  if KeyValues='' then
  begin
    with cdsUserEdit  do
    begin
      Append;
    end;
  end;

end;
procedure TFM_UserEditForm.cdsUserEditAfterInsert(DataSet: TDataSet);
begin
  inherited;

  if strOrgID<>'' then
  begin
    DataSet.FieldByName('FDEFORGUNITID').AsString := Trim(strOrgID) ;
    DataSet.FieldByName('FCONTROLUNITID').AsString := Trim(strOrgID) ;
  end
  else
  begin
    DataSet.FieldByName('FDEFORGUNITID').AsString := UserInfo.Branch_ID;
    DataSet.FieldByName('FCONTROLUNITID').AsString := UserInfo.Controlunitid;
  end;
  DataSet.FieldByName('FCreatorID').AsString := UserInfo.LoginUser_FID;

  DataSet.FieldByName('FID').AsString := CliDM.GetEASSID('13B7DE7F');
  DataSet.FieldByName('FCreateTime').AsDateTime := CliDM.Get_ServerTime;
  DataSet.FieldByName('FFORBIDDEN').AsFloat := 0;
  DataSet.FieldByName('FISREGISTER').AsFloat := 1;
  DataSet.FieldByName('FType').AsFloat := 20;
  DataSet.FieldByName('FISBIZADMIN').AsFloat := 0;
  DataSet.FieldByName('FISCHANGEDPW').AsFloat := 0;
  cxDBTextEdit1.Enabled := True;
  cxbtnPersonName.Enabled := True;
  /////cust DAC5BEF2
  ///sup F9FB75C7
  //wre EFA8C764
end;

procedure TFM_UserEditForm.cdsUserWareHouseAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FPARENTID').AsString := cdsUserEdit.fieldbyname('FID').AsString;
  DataSet.FieldByName('FID').AsString := CliDM.GetEASSID('EFA8C764');
  DataSet.FieldByName('FVIEWPERMISSION').AsFloat :=1;
  DataSet.FieldByName('FOPRTPERMISSION').AsFloat :=1;
  DataSet.FieldByName('CFLOGINPERMISSION').AsFloat :=1;
end;

procedure TFM_UserEditForm.cdsUserCustAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FPARENTID').AsString := cdsUserEdit.fieldbyname('FID').AsString;
  DataSet.FieldByName('FID').AsString := CliDM.GetEASSID('DAC5BEF2');
  DataSet.FieldByName('CFVIEWPERMISSION').AsFloat :=1;
  DataSet.FieldByName('CFOPRTPERMISSION').AsFloat :=1;
end;

procedure TFM_UserEditForm.cdsUserSupplyAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FPARENTID').AsString := cdsUserEdit.fieldbyname('FID').AsString;
  DataSet.FieldByName('FID').AsString := CliDM.GetEASSID('F9FB75C7');
  DataSet.FieldByName('CFVIEWPERMISSION').AsFloat :=1;
  DataSet.FieldByName('CFOPRTPERMISSION').AsFloat :=1;
end;

procedure TFM_UserEditForm.btn_ExitClick(Sender: TObject);
begin
  inherited;
  ModalResult := mrOk;
end;

procedure TFM_UserEditForm.btn_DelRowClick(Sender: TObject);
var
   strsql ,ErrMsg: string;
begin
  inherited;
  if not cdsUserEdit.IsEmpty then
  begin
    if ShowYesNo(Handle, '确定删除用户?',[]) = idYes then
    begin
      while not cdsUserWareHouse.Eof do
      begin
        cdsUserWareHouse.Delete;
      end;
      while not cdsUserCust.Eof do
      begin
        cdsUserCust.Delete;
      end;
      while not cdsUserSupply.Eof do
      begin
        cdsUserSupply.Delete;
      end;
      cdsUserEdit.Delete;
    end;

  end;
  ST_Save;
end;

procedure TFM_UserEditForm.btn_NewRowClick(Sender: TObject);
begin
  inherited;
  if cdsUserEdit.Active then
  begin
    cdsUserEdit.Append;
    cdsUserWareHouse.Close;
    cdsUserWareHouse.Close;
    cdsUserWareHouse.CreateDataSet;
    cdsUserWareHouse.EmptyDataSet;
    cdsUserCust.Close;
    cdsUserCust.CreateDataSet;
    cdsUserCust.EmptyDataSet;
    cdsUserSupply.Close;
    cdsUserSupply.CreateDataSet;
    cdsUserSupply.EmptyDataSet;
  end;
end;

procedure TFM_UserEditForm.cdsUserEditBeforePost(DataSet: TDataSet);
var
  strsql,ErrMsg :string;
  icount : Integer;
begin
  inherited;
  if Trim(DataSet.FieldByName('FNUMBER').AsString)='' then
  begin
    //show(Handle, '打开用户编辑数据报错：'+E.Message,[]);
    ShowMsg(Handle, '用户账号不能为空!',[]);
    Abort;
  end;
  if Trim(DataSet.FieldByName('CFPersonName').AsString)='' then
  begin
    ShowMsg(Handle, '用户实名不能为空!',[]);
    //ShowMessage('用户实名不能为空');
    Abort;
  end;
  if Trim(DataSet.FieldByName('FDEFORGUNITID').AsString)='' then
  begin
    ShowMsg(Handle, '缺省机构不能为空!',[]);
    Abort;
  end;
  if Trim(DataSet.FieldByName('FCONTROLUNITID').AsString)='' then
  begin
    ShowMsg(Handle, '所属机构不能为空!',[]);
    Abort;
  end;
  icount := 0;
  try
    strsql := ' select FID from T_PM_User where fnumber='+quotedstr(Trim(DataSet.FieldByName('FNUMBER').AsString));
    Clidm.Get_OpenSQL(CliDM.cdstemp,strsql,ErrMsg);
    CliDM.cdstemp.First;
    while not CliDM.cdstemp.Eof do
    begin
      if  CliDM.cdstemp.FieldByName('FID').AsString <>DataSet.FieldByName('FID').AsString then
        icount := icount+1;
      CliDM.cdstemp.Next;
    end;
  except
    on E : Exception do
    begin
      ShowMsg(Handle, '检查账号重复出错!'+ErrMsg+' '+E.Message,[]);
      Abort;
    end;
  end;
  if icount>0 then
  begin
    ShowMsg(Handle, '用户账号重复,不允许保存!',[]);
    Abort;
  end;  
  DataSet.FieldByName('FLastUpdateUserID').AsString := UserInfo.LoginUser_FID;
  DataSet.FieldByName('FLastUpdateTime').AsDateTime := CliDM.Get_ServerTime;
  if triM(cdsUserEdit.fieldbyname('CFPersonName').AsString) <>'' then
    DataSet.FieldByName('fname_l2').AsString := cdsUserEdit.fieldbyname('CFPersonName').AsString;
  if Trim(txt_PSW.Text)<>'' then
    DataSet.FieldByName('FPASSWORD').AsString := GetMd5Password(Trim(txt_PSW.Text))
  else
    DataSet.FieldByName('FPASSWORD').AsString := '';
end;
procedure TFM_UserEditForm.cxbtnBranchPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
  var
  strUserId : string;
begin
  inherited;
  with Select_Branch(cdsUserEdit.fieldbyname('FCONTROLUNITID').AsString,'',0) do
  begin
    strUserId :=  fieldbyname('fid').AsString ;
    if not IsEmpty then
    cdsUserEdit.FieldByName('FCONTROLUNITID').AsString := strUserId;
  end;

end;

procedure TFM_UserEditForm.cxgridUserWareWareNumberPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  cdsUserWareHouse.FieldByName('FWHID').AsString := FindAllWareHouse;
end;

function TFM_UserEditForm.ST_Save : Boolean;
var ErrMsg,strsql : string;
   _cds: array[0..3] of TClientDataSet;
begin
  Result := True;
  if cdsUserEdit.State in db.dsEditModes then cdsUserEdit.Post;
  if cdsUserWareHouse.State in db.dsEditModes then cdsUserWareHouse.Post;
  if cdsUserCust.State in db.dsEditModes then cdsUserCust.Post;
  if cdsUserSupply.State in db.dsEditModes then cdsUserSupply.Post;
  _cds[0] := cdsUserEdit;
  _cds[1] := cdsUserWareHouse;
  _cds[2] := cdsUserCust;
  _cds[3] := cdsUserSupply;
  try
    if CliDM.Apply_Delta_Ex(_cds,['T_PM_USER','T_PM_UserPermissionEntry','CT_PM_USERCUSTOMERENTRY','Ct_Pm_Usersupplierentry'],ErrMsg) then
    begin
      //ShowMsg(Handle, '用户保存成功!',[]);
     // Gio.AddShow('用户提交成功！');
    end
    else
    begin
      ShowMsg(Handle, '用户数据保存失败'+ErrMsg,[]);
      Gio.AddShow(ErrMsg);
      Result := False;
    end;
  except
    on E: Exception do
    begin
      ShowMsg(Handle, '用户数据保存失败：'+e.Message,[]);
      Result := False;
    end;
  end;
  Ischange := True;
end;
procedure TFM_UserEditForm.btn_NewClick(Sender: TObject);
begin
  inherited;
  if cxPageCtlUserPower.ActivePageIndex=0 then
  begin
    cdsUserWareHouse.Append;
  end
  else if cxPageCtlUserPower.ActivePageIndex=1 then
  begin
    cdsUserCust.Append;
  end
  else if cxPageCtlUserPower.ActivePageIndex=2 then
  begin
    cdsUserSupply.Append;
  end;
end;

procedure TFM_UserEditForm.btn_DelClick(Sender: TObject);
begin
  inherited;
  if cxPageCtlUserPower.ActivePageIndex=0 then
  begin
    if not  cdsUserWareHouse.IsEmpty then
      cdsUserWareHouse.Delete;
  end
  else if cxPageCtlUserPower.ActivePageIndex=1 then
  begin
    if not  cdsUserCust.IsEmpty then
      cdsUserCust.Delete;
  end
  else if cxPageCtlUserPower.ActivePageIndex=2 then
  begin
    if not cdsUserSupply.IsEmpty  then
      cdsUserSupply.Delete;
  end;
end;

procedure TFM_UserEditForm.cxgridUserCustCustNumberPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  //cdsUserCust.FieldByName('CFCID').AsString := FindCust;
  with Select_BaseData('T_BD_customer','选择客户','','') do
  begin
    if not IsEmpty then
    begin
      cdsUserCust.Edit;
      cdsUserCust.FieldByName('CFCID').AsString := fieldbyname('fid').AsString;
      ///cdsMaster.FieldByName(thisFieldName).AsString := fieldbyname('fname_l2').AsString;
      cdsUserCust.Post;
    end;
  end;
end;

procedure TFM_UserEditForm.cxgridUserSupplySupplyNumberPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  //cdsUserCust.FieldByName('CFSID').AsString := FindSupplier;
  with Select_BaseData('T_BD_Supplier','选择供应商','','') do
  begin
    if not IsEmpty then
    begin
      cdsUserSupply.Edit;
      cdsUserSupply.FieldByName('CFSID').AsString := fieldbyname('fid').AsString;
      cdsUserSupply.Post;
    end;
  end;
end;

procedure TFM_UserEditForm.cdsUserEditCalcFields(DataSet: TDataSet);
begin
  inherited;
  if DataSet.FindField('CFBranchName')<> nil then
  begin

    if FindRecord1(cdsBRangeTmp,'FID',DataSet.fieldbyname('FCONTROLUNITID').AsString,1) then
       DataSet.FieldByName('CFBranchName').AsString := cdsBRangeTmp.FieldByName('fname_l2').AsString;
  end;
  if DataSet.FindField('CFDefualBranch')<> nil then
  begin
    if FindRecord1(cdsBRangeTmp,'FID',DataSet.fieldbyname('FDEFORGUNITID').AsString,1) then
       DataSet.FieldByName('CFDefualBranch').AsString := cdsBRangeTmp.FieldByName('fname_l2').AsString;
  end;
  if DataSet.FindField('CFPersonName') <> nil then
  begin
    with CliDM.Client_QuerySQL('Select FNumber,fname_l2 From t_Bd_Person (nolock) Where FID collate Chinese_PRC_CS_AS_WS ='+QuotedStr(DataSet.fieldbyname('FPERSONID').AsString)) do
    begin
      DataSet.FieldByName('CFPersonName').AsString := FieldByName('fname_l2').AsString;
    end;
  end;
end;

procedure TFM_UserEditForm.cdsUserWareHouseCalcFields(DataSet: TDataSet);
begin
  inherited;
  if DataSet.FindField('WareNumber') <> nil then
  with CliDM.Client_QuerySQL('Select FNumber,fname_l2 From T_DB_WAREHOUSE(nolock) Where FID collate Chinese_PRC_CS_AS_WS ='+QuotedStr(DataSet.fieldByName('FWHID').AsString)) do
  begin
    if DataSet.FindField('WareNumber') <> nil then
      DataSet.FieldByName('WareNumber').AsString := FieldByName('FNumber').AsString;
    if DataSet.FindField('Warename') <> nil then
      DataSet.FieldByName('Warename').AsString := FieldByName('fname_l2').AsString;
  end;
end;

procedure TFM_UserEditForm.cdsUserCustCalcFields(DataSet: TDataSet);
begin
  inherited;
  if DataSet.FindField('CustNumber') <> nil then
  with CliDM.Client_QuerySQL('Select FNumber,fname_l2 From t_Bd_Customer(nolock) Where FID collate Chinese_PRC_CS_AS_WS ='+QuotedStr(DataSet.fieldByName('CFCID').AsString)) do
  begin
    if DataSet.FindField('CustNumber') <> nil then
      DataSet.FieldByName('CustNumber').AsString := FieldByName('FNumber').AsString;
    if DataSet.FindField('CustName') <> nil then
      DataSet.FieldByName('CustName').AsString := FieldByName('fname_l2').AsString;
  end;
end;

procedure TFM_UserEditForm.cdsUserSupplyCalcFields(DataSet: TDataSet);
begin
  inherited;
  if DataSet.FindField('SupplyNumber') <> nil then
  with CliDM.Client_QuerySQL('Select FNumber,fname_l2 From t_Bd_Supplier(nolock) Where FID collate Chinese_PRC_CS_AS_WS ='+QuotedStr(DataSet.fieldByName('CFSID').AsString)) do
  begin
    if DataSet.FindField('SupplyNumber') <> nil then
      DataSet.FieldByName('SupplyNumber').AsString := FieldByName('FNumber').AsString;
    if DataSet.FindField('SupplyName') <> nil then
      DataSet.FieldByName('SupplyName').AsString := FieldByName('fname_l2').AsString;
  end;
end;

procedure TFM_UserEditForm.btn_SaveClick(Sender: TObject);
begin
  inherited;
  if ST_Save then
  begin
    ShowMsg(Handle, '用户保存成功!',[]);
  end;
end;

procedure TFM_UserEditForm.btn_batchImpClick(Sender: TObject);
begin
  inherited;
  if cxPageCtlUserPower.ActivePageIndex=0 then
  begin
    AdsTmp := Select_Warehouse('','',0);
    AdsTmp.First;
    while not AdsTmp.Eof do
    begin
      if not FindRecord1(cdsUserWareHouse,'FWHID',AdsTmp.fieldbyname('FID').AsString,1) then
      begin
        cdsUserWareHouse.Append;
        cdsUserWareHouse.FieldByName('FWHID').AsString := AdsTmp.fieldbyname('FID').AsString;
      end;
      AdsTmp.Next;
    end;
  end
  else if cxPageCtlUserPower.ActivePageIndex=1 then
  begin
    AdsTmp := Select_Customer('','','',0) ;
    AdsTmp.First;
    while not AdsTmp.Eof do
    begin
      if not FindRecord1(cdsUserCust,'CFCID',AdsTmp.fieldbyname('FID').AsString,1) then
      begin
        cdsUserCust.Append;
        cdsUserCust.FieldByName('CFCID').AsString := AdsTmp.fieldbyname('FID').AsString;
      end;
      AdsTmp.Next;
    end;
  end
  else if cxPageCtlUserPower.ActivePageIndex=2 then
  begin
    AdsTmp := Select_Suppliers('','','',0);
    AdsTmp.First;
    while not AdsTmp.Eof do
    begin
      if not FindRecord1(cdsUserSupply,'CFSID',AdsTmp.fieldbyname('FID').AsString,1) then
      begin
        cdsUserSupply.Append;
        cdsUserSupply.FieldByName('CFSID').AsString := AdsTmp.fieldbyname('FID').AsString;
      end;
      AdsTmp.Next;
    end;
  end;

end;

procedure TFM_UserEditForm.FormCreate(Sender: TObject);
var
  strsql,ErrMsg : string;
begin
  inherited;
  strsql := ' select FID,Fnumber,Fname_l2 from t_Org_Baseunit ';
  try
    Clidm.Get_OpenSQL(cdsBRangeTmp,strsql,ErrMsg);
  except
    on  E: Exception  do
    begin
      ShowMsg(Handle, '机构查询出错:'+ErrMsg,[]);
      Abort;
    end;
  end;
end;

procedure TFM_UserEditForm.cdsUserWareHouseBeforePost(DataSet: TDataSet);
begin
  inherited;
  if Trim(DataSet.FieldByName('FWHID').AsString)='' then
  begin
    ShowMsg(Handle, '仓库不能为空!',[]);
    Abort;
  end;
end;

procedure TFM_UserEditForm.cdsUserCustBeforePost(DataSet: TDataSet);
begin
  inherited;
  if Trim(DataSet.FieldByName('CFCID').AsString)='' then
  begin
    ShowMsg(Handle, '客户不能为空!',[]);
    Abort;
  end;
end;

procedure TFM_UserEditForm.cdsUserSupplyBeforePost(DataSet: TDataSet);
begin
  inherited;
  if Trim(DataSet.FieldByName('CFSID').AsString)='' then
  begin
    ShowMsg(Handle, '供应商不能为空!',[]);
    Abort;
  end;
end;

procedure TFM_UserEditForm.FormActivate(Sender: TObject);
begin
  inherited;
  //cxDBTextEdit1.SetFocus;
  if cxDBTextEdit1.CanFocus then 
    cxDBTextEdit1.SetFocus;  
end;

procedure TFM_UserEditForm.FormDestroy(Sender: TObject);
begin
  inherited;
  FM_UserEditForm := nil;
end;

procedure TFM_UserEditForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := cafree;
end;

end.
