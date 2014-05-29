unit uRoleEditFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBaseEditFrm, Buttons, jpeg, ExtCtrls, DB, DBClient, cxControls,
  cxSplitter, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxButtonEdit, cxCheckBox, ADODB,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, cxPC, cxTextEdit, cxDBEdit,
  cxContainer, cxLabel, dxSkinsCore, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinscxPCPainter, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinPumpkin,
  dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue;

type
  TFM_RoleEditForm = class(TSTBaseEdit)
    Panel1: TPanel;
    Image2: TImage;
    btn_Save: TSpeedButton;
    btn_NewRow: TSpeedButton;
    btn_DelRow: TSpeedButton;
    btn_Exit: TSpeedButton;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    Panel5: TPanel;
    btn_batchImp: TSpeedButton;
    btn_New: TSpeedButton;
    btn_Del: TSpeedButton;
    cxPageCtlUserPower: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxGrid1: TcxGrid;
    cxgridUserWare: TcxGridDBTableView;
    cxgridUserWareWareNumber: TcxGridDBColumn;
    cxgridUserWareWarename: TcxGridDBColumn;
    cxgridUserWareFVIEWPERMISSION: TcxGridDBColumn;
    cxgridUserWareFOPRTPERMISSION: TcxGridDBColumn;
    cxgridUserWareCFLOGINPERMISSION: TcxGridDBColumn;
    cxgridUserWareCFLOWESTDISCRATE: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxTabSheet2: TcxTabSheet;
    cxGrid2: TcxGrid;
    cxgridUserCust: TcxGridDBTableView;
    cxgridUserCustCustNumber: TcxGridDBColumn;
    cxgridUserCustCustName: TcxGridDBColumn;
    cxgridUserCustCFOPRTPERMISSION: TcxGridDBColumn;
    cxgridUserCustCFVIEWPERMISSION: TcxGridDBColumn;
    cxGrid2Level1: TcxGridLevel;
    cxTabSheet3: TcxTabSheet;
    cxGrid3: TcxGrid;
    cxgridUserSupply: TcxGridDBTableView;
    cxgridUserSupplySupplyNumber: TcxGridDBColumn;
    cxgridUserSupplySupplyName: TcxGridDBColumn;
    cxgridUserSupplyCFOPRTPERMISSION: TcxGridDBColumn;
    cxgridUserSupplyCFVIEWPERMISSION: TcxGridDBColumn;
    cxGrid3Level1: TcxGridLevel;
    cdsRole: TClientDataSet;
    dsRole: TDataSource;
    cdsRoleFNAME_L1: TWideStringField;
    cdsRoleFNAME_L2: TWideStringField;
    cdsRoleFNAME_L3: TWideStringField;
    cdsRoleFNUMBER: TWideStringField;
    cdsRoleFDESCRIPTION_L1: TWideStringField;
    cdsRoleFDESCRIPTION_L2: TWideStringField;
    cdsRoleFDESCRIPTION_L3: TWideStringField;
    cdsRoleFSIMPLENAME: TWideStringField;
    cdsRoleFID: TStringField;
    cdsRoleFCREATORID: TStringField;
    cdsRoleFCREATETIME: TDateTimeField;
    cdsRoleFLASTUPDATEUSERID: TStringField;
    cdsRoleFLASTUPDATETIME: TDateTimeField;
    cdsRoleFCONTROLUNITID: TStringField;
    cdsRoleFTYPE: TIntegerField;
    cdsRoleFISDEFROLE: TIntegerField;
    cdsUserWareHouse: TClientDataSet;
    dsUserWarehouse: TDataSource;
    cdsUserCust: TClientDataSet;
    dsUserCust: TDataSource;
    cdsUserSupply: TClientDataSet;
    dsUserSupply: TDataSource;
    cdsUserWareHouseFID: TStringField;
    cdsUserWareHouseFPARENTID: TStringField;
    cdsUserWareHouseFWAREHOUSEID: TWideStringField;
    cdsUserWareHouseFVIEWPERMISSION: TIntegerField;
    cdsUserWareHouseFOPRTPERMISSION: TIntegerField;
    cdsUserWareHouseFLOGINPERMISSION: TFloatField;
    cdsUserWareHouseFDISCOUNT: TFloatField;
    cdsUserCustFID: TStringField;
    cdsUserCustFPARENTID: TStringField;
    cdsUserCustFCUSTOMERID: TStringField;
    cdsUserCustFVIEWPERMISSION: TIntegerField;
    cdsUserCustFOPRTPERMISSION: TIntegerField;
    cdsUserCustFSEQ: TIntegerField;
    cdsUserSupplyFID: TStringField;
    cdsUserSupplyFPARENTID: TStringField;
    cdsUserSupplyFSUPPLIERID: TWideStringField;
    cdsUserSupplyFVIEWPERMISSION: TIntegerField;
    cdsUserSupplyFOPRTPERMISSION: TIntegerField;
    cdsUserSupplyFSEQ: TIntegerField;
    cdsUserWareHouseCFWareNumber: TStringField;
    cdsUserWareHouseCFWareName: TStringField;
    cdsUserCustCFWareNumber: TStringField;
    cdsUserCustCFWareName: TStringField;
    cdsUserSupplyCFSuppNumber: TStringField;
    cdsUserSupplyCFSuppName: TStringField;
    AdsTmp: TADODataSet;
    cdsUserWareHouseCFIsRole: TIntegerField;
    cdsUserCustCFIsRole: TIntegerField;
    cdsUserSupplyCFIsRole: TIntegerField;
    procedure btn_ExitClick(Sender: TObject);
    procedure cdsRoleAfterInsert(DataSet: TDataSet);
    procedure cdsRoleBeforePost(DataSet: TDataSet);
    procedure cdsUserCustAfterInsert(DataSet: TDataSet);
    procedure cdsUserWareHouseAfterInsert(DataSet: TDataSet);
    procedure cdsUserSupplyAfterInsert(DataSet: TDataSet);
    procedure btn_NewRowClick(Sender: TObject);
    procedure btn_DelRowClick(Sender: TObject);
    procedure btn_DelClick(Sender: TObject);
    procedure btn_NewClick(Sender: TObject);
    procedure btn_batchImpClick(Sender: TObject);
    procedure cxgridUserWareWareNumberPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure cxgridUserCustCustNumberPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure cxgridUserSupplySupplyNumberPropertiesButtonClick(
      Sender: TObject; AButtonIndex: Integer);
    procedure btn_SaveClick(Sender: TObject);
    procedure cdsUserWareHouseCalcFields(DataSet: TDataSet);
    procedure cdsUserCustCalcFields(DataSet: TDataSet);
    procedure cdsUserSupplyCalcFields(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    IsChange : Boolean ;
    function ST_Save : Boolean; override;
    procedure Open_Bill(KeyFields: String; KeyValues: String);
  end;

var
  FM_RoleEditForm: TFM_RoleEditForm;
  function EditRolenfo_Frm(KeyValues: string):Boolean;
implementation
  uses FrmCliDM,uSysDataSelect,Pub_Fun,uMaterDataSelectHelper;
{$R *.dfm}
function EditRolenfo_Frm(KeyValues: string):Boolean;
begin
  Result := True;
  if FM_RoleEditForm <> nil then
  begin
    Gio.AddShow('角色编辑界面FM_RoleEditForm已经存在 - 开始');
    if (FM_RoleEditForm.Visible) and (FM_RoleEditForm.Showing) then
    begin
      Gio.AddShow('角色编辑界面FM_RoleEditForm已经存在 - 显示到最前面');
      FM_RoleEditForm.SetFocus;
    end;  
     Exit;
  end;
  try
    Gio.AddShow('角色编辑界面开始创建');
    Application.CreateForm(TFM_RoleEditForm, FM_RoleEditForm);
    FM_RoleEditForm.Open_Bill('FID',KeyValues);
    FM_RoleEditForm.ShowModal;
    Result := FM_RoleEditForm.IsChange;
    //if FM_RoleEditForm <> nil then
   // if FM_RoleEditForm.Visible then FM_RoleEditForm.SetFocus;
  except
    Gio.AddShow('角色编辑界面创建出错,自动释放窗体');

    FM_RoleEditForm.Free;
    FM_RoleEditForm := nil;
  end;
end;
procedure TFM_RoleEditForm.Open_Bill(KeyFields: String; KeyValues: String);
var OpenTables: array[0..3] of string;
    _cds: array[0..3] of TClientDataSet;
    ErrMsg,strwhere : string;
begin
  if trim(KeyValues)<>'' then
    OpenTables[0] := ' select * from t_Pm_Role where FID='+quotedstr(KeyValues)
  else
    OpenTables[0] := ' select * from t_Pm_Role where 1<>1 ';
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
  _cds[0] := cdsRole;
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
       ShowError(Handle, '打开角色编辑数据报错：'+E.Message,[]);
       Abort;
    end;
  end;
  if KeyValues='' then
  begin
    with cdsRole  do
    begin
      Append;
    end;
  end;

end;
function TFM_RoleEditForm.ST_Save : Boolean;
var ErrMsg,strsql : string;
   _cds: array[0..3] of TClientDataSet;
begin
  Result := True;
  if cdsRole.State in db.dsEditModes then cdsRole.Post;
  if cdsUserWareHouse.State in db.dsEditModes then cdsUserWareHouse.Post;
  if cdsUserCust.State in db.dsEditModes then cdsUserCust.Post;
  if cdsUserSupply.State in db.dsEditModes then cdsUserSupply.Post;
  _cds[0] := cdsRole;
  _cds[1] := cdsUserWareHouse;
  _cds[2] := cdsUserCust;
  _cds[3] := cdsUserSupply;
  try
    if CliDM.Apply_Delta_Ex(_cds,['t_Pm_Role','T_PM_UserPermissionEntry','CT_PM_USERCUSTOMERENTRY','Ct_Pm_Usersupplierentry'],ErrMsg) then
    begin
      //ShowMsg(Handle, '角色提交成功!',[]);
     // Gio.AddShow('用户提交成功！');
    end
    else
    begin
      ShowMsg(Handle, '角色数据提交失败'+ErrMsg,[]);
      Gio.AddShow(ErrMsg);
      Result := False;
    end;
  except
    on E: Exception do
    begin
      ShowMsg(Handle, '角色数据提交失败：'+e.Message,[]);
      Result := False;
    end;
  end;

end;
procedure TFM_RoleEditForm.btn_ExitClick(Sender: TObject);
begin
  inherited;
  ModalResult := mrOk;
end;

procedure TFM_RoleEditForm.cdsRoleAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FID').AsString := CliDM.GetEASSID('13B6732A');
  DataSet.FieldByName('FCREATORID').AsString := UserInfo.LoginUser_FID;
  DataSet.FieldByName('FCREATETIME').AsDateTime := CliDM.Get_ServerTime;
  DataSet.FieldByName('Ftype').AsFloat := 20;
  DataSet.FieldByName('FCONTROLUNITID').AsString := UserInfo.Controlunitid;

end;

procedure TFM_RoleEditForm.cdsRoleBeforePost(DataSet: TDataSet);
var
  strsql,ErrMsg :string;
  icount : Integer;
begin
  inherited;
  if Trim(DataSet.FieldByName('FNUMBER').AsString)='' then
  begin
    //show(Handle, '打开用户编辑数据报错：'+E.Message,[]);
    ShowMsg(Handle, '角色编号不能为空!',[]);
    Abort;
  end;
  icount :=0;
  try
    strsql := ' select FID from t_Pm_Role where fnumber='+quotedstr(Trim(DataSet.FieldByName('FNUMBER').AsString));
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
      ShowMsg(Handle, '检查编号重复出错!'+ErrMsg+' '+E.Message,[]);
      Abort;
    end;
  end;
  if icount>0 then
  begin
    ShowMsg(Handle, '角色编号重复,不允许保存!',[]);
    Abort;
  end;
  DataSet.FieldByName('FLASTUPDATEUSERID').AsString := UserInfo.LoginUser_FID;
  DataSet.FieldByName('FLASTUPDATETIME').AsDateTime := CliDM.Get_ServerTime;
end;

procedure TFM_RoleEditForm.cdsUserCustAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FID').AsString := CliDM.GetEASSID('DAC5BEF2');
  DataSet.FieldByName('fparentID').AsString := cdsRole.fieldbyname('FID').AsString;
  DataSet.FieldByName('CFVIEWPERMISSION').AsFloat := 1;
  DataSet.FieldByName('CFOPRTPERMISSION').AsFloat := 1;
  DataSet.FieldByName('CFIsRole').AsFloat :=1;
end;

procedure TFM_RoleEditForm.cdsUserWareHouseAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FID').AsString := CliDM.GetEASSID('EFA8C764');
  DataSet.FieldByName('fparentID').AsString := cdsRole.fieldbyname('FID').AsString;
  DataSet.FieldByName('FVIEWPERMISSION').AsFloat := 1;
  DataSet.FieldByName('FOPRTPERMISSION').AsFloat := 1;
  DataSet.FieldByName('CFLOGINPERMISSION').AsFloat := 1;
  DataSet.FieldByName('CFIsRole').AsFloat :=1;
end;

procedure TFM_RoleEditForm.cdsUserSupplyAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FID').AsString := CliDM.GetEASSID('F9FB75C7');
  DataSet.FieldByName('fparentID').AsString := cdsRole.fieldbyname('FID').AsString;
  DataSet.FieldByName('CFVIEWPERMISSION').AsFloat := 1;
  DataSet.FieldByName('CFOPRTPERMISSION').AsFloat := 1;
  DataSet.FieldByName('CFIsRole').AsFloat :=1;
end;

procedure TFM_RoleEditForm.btn_NewRowClick(Sender: TObject);
begin
  inherited;
  if cdsRole.Active then
  begin
    cdsRole.Append;
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

procedure TFM_RoleEditForm.btn_DelRowClick(Sender: TObject);
var
  strsql, ErrMsg : string;
begin
  inherited;
  strsql := ' select 1 from t_Pm_Userroleorg where FRoleID='+quotedstr(cdsRole.fieldbyname('FID').AsString);
  Clidm.Get_OpenSQL(CliDM.cdstemp,strsql,ErrMsg);
  if  CliDM.cdstemp.RecordCount>0 then
  begin
    ShowMsg(Handle, '用户已经分配了角色权限不允许删除!',[]);
    Abort;
  end;
  if ShowYesNo(Handle, '确定删除角色?',[]) = idYes then
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
    cdsRole.Delete;
  end;
  if ST_Save then
    ShowMsg(Handle, '角色删除成功!',[]);
end;

procedure TFM_RoleEditForm.btn_DelClick(Sender: TObject);
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

procedure TFM_RoleEditForm.btn_NewClick(Sender: TObject);
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

procedure TFM_RoleEditForm.btn_batchImpClick(Sender: TObject);
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
      AdsTmp.Next();
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

procedure TFM_RoleEditForm.cxgridUserWareWareNumberPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  cdsUserWareHouse.FieldByName('FWHID').AsString := FindAllWareHouse;
end;

procedure TFM_RoleEditForm.cxgridUserCustCustNumberPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  //dsUserCust.FieldByName('CFCID').AsString := FindCust;
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

procedure TFM_RoleEditForm.cxgridUserSupplySupplyNumberPropertiesButtonClick(
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
      ///cdsMaster.FieldByName(thisFieldName).AsString := fieldbyname('fname_l2').AsString;
      cdsUserSupply.Post;
    end;
  end;
end;

procedure TFM_RoleEditForm.btn_SaveClick(Sender: TObject);
begin
  inherited;
  ST_Save;
  IsChange := True;
end;

procedure TFM_RoleEditForm.cdsUserWareHouseCalcFields(DataSet: TDataSet);
begin
  inherited;
  if DataSet.FindField('CFWareNumber') <> nil then
  with CliDM.Client_QuerySQL('Select FNumber,fname_l2 From T_DB_WAREHOUSE(nolock) Where FID collate Chinese_PRC_CS_AS_WS ='+QuotedStr(DataSet.fieldByName('FWHID').AsString)) do
  begin
    if DataSet.FindField('CFWareNumber') <> nil then
      DataSet.FieldByName('CFWareNumber').AsString := FieldByName('FNumber').AsString;
    if DataSet.FindField('CFWareName') <> nil then
      DataSet.FieldByName('CFWareName').AsString := FieldByName('fname_l2').AsString;
  end;
end;

procedure TFM_RoleEditForm.cdsUserCustCalcFields(DataSet: TDataSet);
begin
  inherited;
  if DataSet.FindField('CFCustNumber') <> nil then
  with CliDM.Client_QuerySQL('Select FNumber,fname_l2 From t_Bd_Customer(nolock) Where FID collate Chinese_PRC_CS_AS_WS ='+QuotedStr(DataSet.fieldByName('CFCID').AsString)) do
  begin
    if DataSet.FindField('CFCustNumber') <> nil then
      DataSet.FieldByName('CFCustNumber').AsString := FieldByName('FNumber').AsString;
    if DataSet.FindField('CFCustName') <> nil then
      DataSet.FieldByName('CFCustName').AsString := FieldByName('fname_l2').AsString;
  end;
end;

procedure TFM_RoleEditForm.cdsUserSupplyCalcFields(DataSet: TDataSet);
begin
  inherited;
  if DataSet.FindField('CFSuppNumber') <> nil then
  with CliDM.Client_QuerySQL('Select FNumber,fname_l2 From t_Bd_Supplier(nolock) Where FID collate Chinese_PRC_CS_AS_WS ='+QuotedStr(DataSet.fieldByName('CFSID').AsString)) do
  begin
    if DataSet.FindField('CFSuppNumber') <> nil then
      DataSet.FieldByName('CFSuppNumber').AsString := FieldByName('FNumber').AsString;
    if DataSet.FindField('CFSuppName') <> nil then
      DataSet.FieldByName('CFSuppName').AsString := FieldByName('fname_l2').AsString;
  end;
end;

procedure TFM_RoleEditForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TFM_RoleEditForm.FormDestroy(Sender: TObject);
begin
  inherited;
  FM_RoleEditForm := nil;
end;

procedure TFM_RoleEditForm.FormShow(Sender: TObject);
var FilePath : string;
begin
  FilePath := ExtractFilePath(paramstr(0))+'\Img\Tool_bk.jpg';
  if not LoadImage(FilePath,Image2) then  Gio.AddShow('图片路径不存在：'+FilePath);
  inherited;

end;

end.
