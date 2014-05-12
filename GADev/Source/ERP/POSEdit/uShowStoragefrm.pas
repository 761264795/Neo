unit uShowStoragefrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBaseEditFrm, 
  DB, ADODB, 
  cxGridLevel, cxGridCustomTableView, 
  cxGridDBBandedTableView, 
  cxGrid, StdCtrls, cxButtonEdit, 
  cxTextEdit, ExtCtrls,
  DBClient,
  cxCheckComboBox, 
  cxButtons, cxGraphics, Menus, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxGridTableView, cxGridBandedTableView, cxClasses, cxControls,
  cxGridCustomView, cxMaskEdit, cxDropDownEdit, cxContainer, jpeg,
  dxSkinsCore, dxSkinOffice2007Black, cxCheckBox, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, dxGDIPlusClasses;

type
  TdShowStorageform = class(TSTBaseEdit)
    Panel1: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    edtStyleName: TcxTextEdit;
    edtfSell_Price: TcxTextEdit;
    edtfEnd_Unit_Price: TcxTextEdit;
    edtfEnd_Sum_Price: TcxTextEdit;
    ccbColorCode: TcxCheckComboBox;
    plButton: TPanel;
    cxGrid2: TcxGrid;
    dbgMulti1: TcxGridDBBandedTableView;
    dbgMulti1SSTORAGE_CODE: TcxGridDBBandedColumn;
    dbgMulti1SSTORAGE_NAME: TcxGridDBBandedColumn;
    dbgMulti1SCOLOR_NAME: TcxGridDBBandedColumn;
    dbgMulti1UBEI_ID: TcxGridDBBandedColumn;
    dbgMulti1FTOTAL_AMOUNT: TcxGridDBBandedColumn;
    dbgMulti1FAMOUNT_1: TcxGridDBBandedColumn;
    dbgMulti1FAMOUNT_2: TcxGridDBBandedColumn;
    dbgMulti1FAMOUNT_3: TcxGridDBBandedColumn;
    dbgMulti1FAMOUNT_4: TcxGridDBBandedColumn;
    dbgMulti1FAMOUNT_5: TcxGridDBBandedColumn;
    dbgMulti1FAMOUNT_6: TcxGridDBBandedColumn;
    dbgMulti1FAMOUNT_7: TcxGridDBBandedColumn;
    dbgMulti1FAMOUNT_8: TcxGridDBBandedColumn;
    dbgMulti1FAMOUNT_9: TcxGridDBBandedColumn;
    dbgMulti1FAMOUNT_10: TcxGridDBBandedColumn;
    dbgMulti1FAMOUNT_11: TcxGridDBBandedColumn;
    dbgMulti1FAMOUNT_12: TcxGridDBBandedColumn;
    dbgMulti1FAMOUNT_13: TcxGridDBBandedColumn;
    dbgMulti1FAMOUNT_14: TcxGridDBBandedColumn;
    dbgMulti1FAMOUNT_15: TcxGridDBBandedColumn;
    dbgMulti1FAMOUNT_16: TcxGridDBBandedColumn;
    dbgMulti1FAMOUNT_17: TcxGridDBBandedColumn;
    dbgMulti1FAMOUNT_18: TcxGridDBBandedColumn;
    dbgMulti1FAMOUNT_19: TcxGridDBBandedColumn;
    dbgMulti1FAMOUNT_20: TcxGridDBBandedColumn;
    dbgMulti1FAMOUNT_21: TcxGridDBBandedColumn;
    dbgMulti1FAMOUNT_22: TcxGridDBBandedColumn;
    dbgMulti1FAMOUNT_23: TcxGridDBBandedColumn;
    dbgMulti1FAMOUNT_24: TcxGridDBBandedColumn;
    dbgMulti1FAMOUNT_25: TcxGridDBBandedColumn;
    dbgMulti1FAMOUNT_26: TcxGridDBBandedColumn;
    dbgMulti1FAMOUNT_27: TcxGridDBBandedColumn;
    dbgMulti1FAMOUNT_28: TcxGridDBBandedColumn;
    dbgMulti1FAMOUNT_29: TcxGridDBBandedColumn;
    dbgMulti1FAMOUNT_30: TcxGridDBBandedColumn;
    cxGridLevel1: TcxGridLevel;
    dsShop_Storage: TDataSource;
    cdsShop_Storage: TClientDataSet;
    btClose: TcxButton;
    QryStyleSizes: TADOQuery;
    Image1: TImage;
    edtStyleCode: TcxButtonEdit;
    cbOther: TcxCheckBox;
    cbOtherStora: TcxCheckBox;
    lbOrg: TLabel;
    cbSupplyOrg: TcxLookupComboBox;
    cdsSupplyOrg: TClientDataSet;
    dsSupplyOrg: TDataSource;
    Label8: TLabel;
    cxEdPrice: TcxTextEdit;
    btOK: TcxButton;
    Image2: TImage;
    Label6: TLabel;
    bt_Warehouse: TcxButtonEdit;
    procedure btCloseClick(Sender: TObject);
    procedure edtStyleCodePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure edtStyleCodePropertiesChange(Sender: TObject);
    procedure cbOtherClick(Sender: TObject);
    procedure cbOtherStoraPropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtStyleCodeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbOtherStoraKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btCloseKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btOKClick(Sender: TObject);
    procedure btOKKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bt_WarehouseKeyPress(Sender: TObject; var Key: Char);
    procedure bt_WarehousePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cbSupplyOrgPropertiesEditValueChanged(Sender: TObject);
    procedure dbgMulti1FAMOUNT_1GetDisplayText(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AText: String);
  private
    { Private declarations }
    fwarehouseid,fmaterialid,MaterNumber,MaterName : string;
  public
    { Public declarations }
     WarehouseFID:String;
     procedure SetMasterSizesGroup(fMaterialID : string;cxGridTV:TcxGridDBBandedTableView);//设置表格的尺码名称
     procedure GetWarehouseInfo(wfid:string);
     function FindTIPWAREHOUS(StorageOrgID: string): string;
  end;

var
  dShowStorageform: TdShowStorageform;
  procedure Showstorageqry(fwarehouseid,fmaterialid,MaterNumber,MaterName :string);
implementation
   uses FrmCliDM,Pub_Fun,uMaterialListFrm,uSysDataSelect;
{$R *.dfm}
procedure Showstorageqry(fwarehouseid,fmaterialid,MaterNumber,MaterName :string);
var ErrMsg : string;
begin
    Application.CreateForm(TdShowStorageform,dShowStorageform);
    dShowStorageform.fwarehouseid := fwarehouseid;
    dShowStorageform.fmaterialid := fmaterialid;
    dShowStorageform.MaterNumber := MaterNumber;
    dShowStorageform.MaterName := MaterName;
    dShowStorageform.cbOtherStora.Checked := False;
    if fmaterialid<>'' then
    begin
      dShowStorageform.SetMasterSizesGroup(fmaterialid,dShowStorageform.dbgMulti1);
      dShowStorageform.edtStyleCode.Text := MaterNumber;
      dShowStorageform.edtStyleName.Text := MaterName;
      if not CliDM.Get_Shop_Storage(fwarehouseid,fmaterialid,'0','',dShowStorageform.cdsShop_Storage,ErrMsg) then
        ShowError(dShowStorageform.Handle, ErrMsg,[]);
    end;

    {
    if dShowStorageform.cbOther.Checked then
      dShowStorageform.cdsShop_Storage.Filtered := False
    else
    begin
      //过滤本店库存
      dShowStorageform.cdsShop_Storage.Filter := 'FWarehouseID='+QuotedStr(UserInfo.Warehouse_FID);
      dShowStorageform.cdsShop_Storage.Filtered := True;
    end;
    }
    dShowStorageform.ShowModal;
    
end;
procedure TdShowStorageform.btCloseClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TdShowStorageform.SetMasterSizesGroup(fMaterialID: string;
  cxGridTV: TcxGridDBBandedTableView);
var i :Integer;
    sqlstr,FieldName : string;
begin
  //隐藏所有尺码列 wushaoshu 20110524
  for i := 1 to 30 do
  begin
    FieldName := 'fAmount_'+inttoStr(i);
    if cxGridTV.GetColumnByFieldName(FieldName) <> nil then
    cxGridTV.GetColumnByFieldName(FieldName).Visible := False;
  end;

   sqlstr :=
      ' SELECT B.FSEQ,C.FNAME_L2 '
      +' from T_BD_Material A(nolock) '
      +' LEFT OUTER JOIN ct_bas_sizegroupentry B(nolock) ON A.cfSizeGroupID=B.fParentID '
      +' LEFT OUTER JOIN T_BD_AsstAttrValue C(nolock) on b.cfSizeID=C.FID '
      +' WHERE A.FID='+QuotedStr(fMaterialID)
      +' ORDER BY B.FSEQ ';
  with QryStyleSizes do
  begin
    Close;
    sql.Clear;
    sql.Add(sqlstr);
    Open;
    First;
    //循环显示款号对应的尺码
    while not Eof do
    begin
      FieldName := 'fAmount_'+FieldByName('FSEQ').asString;
      if cxGridTV.GetColumnByFieldName(FieldName) <> nil then
      begin
        cxGridTV.GetColumnByFieldName(FieldName).Visible := True;
        cxGridTV.GetColumnByFieldName(FieldName).Caption := FieldByName('FNAME_L2').AsString;
      end;
      Next;
    end;
  end;

end;

procedure TdShowStorageform.edtStyleCodePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var rst:string;
  sql,errmsg,showmsg:string;
    cds:TClientDataSet;
begin
  inherited;
  try
    edtStyleCode.Properties.OnChange:=nil;
    rst:=SelectMatertialFID(edtStyleCode.Text);
    if rst<>'' then
    begin
      fmaterialid:=rst  ;
      edtStyleName.Text:='';
    end;
    if trim(fmaterialid)='' then Abort;

    sql:= 'select a.fnumber,a.fname_l2 from T_BD_MATERIAL a where a.fid='''+trim(fmaterialid)+'''';
    with CliDM.Client_QuerySQL(sql) do
    begin
      if not IsEmpty then
      begin
        showmsg:=Trim(fieldbyname('fname_l2').AsString);
        MaterNumber:=trim(fieldbyname('fnumber').AsString);
        MaterName:=Trim(fieldbyname('fname_l2').AsString);
        edtStyleName.Text:=showmsg;
        edtStyleCode.Text:=trim(fieldbyname('fnumber').AsString);
        cxEdPrice.Text := FloatToStr(CliDM.GetStylePrice(fmaterialid,UserInfo.FSaleOrgID));
      end;
    end;
    SetMasterSizesGroup(fmaterialid,dbgMulti1);
  finally
    edtStyleCode.Properties.OnChange:=edtStyleCodePropertiesChange;
  end;

end;

procedure TdShowStorageform.edtStyleCodePropertiesChange(Sender: TObject);
var sql,errmsg,showmsg:string;
    cds:TClientDataSet;
begin
  inherited;
  if  Trim(edtStyleCode.Text)='' then
  begin
    fmaterialid:='';
    edtStyleName.Text:='';
  end;

    sql:= 'select a.fid,a.fnumber,a.fname_l2 from T_BD_MATERIAL a where a.fnumber='''+trim(edtStyleCode.Text)+'''';
    with CliDM.Client_QuerySQL(sql) do
    begin
      if not IsEmpty then
      begin
        showmsg:=Trim(fieldbyname('fname_l2').AsString);
        edtStyleName.Text:=showmsg;
        fmaterialid:=Trim(fieldbyname('fid').AsString);
        MaterNumber:=trim(fieldbyname('fnumber').AsString);
        MaterName:=Trim(fieldbyname('fname_l2').AsString);
        cxEdPrice.Text := FloatToStr(CliDM.GetStylePrice(fmaterialid,UserInfo.FSaleOrgID));
        dShowStorageform.SetMasterSizesGroup(fmaterialid,dbgMulti1);
      end
      else
      begin
        fmaterialid:='';
        edtStyleName.Text:='';
        MaterNumber:='';
        MaterName:='';
        cxEdPrice.Text :='';
      end;
    end;

end;

procedure TdShowStorageform.cbOtherClick(Sender: TObject);
begin
  inherited;
  if cbOther.Checked then
    cdsShop_Storage.Filtered := False
  else
  begin
    //过滤本店库存
    cdsShop_Storage.Filter := 'FWarehouseID='+QuotedStr(UserInfo.Warehouse_FID);
    cdsShop_Storage.Filtered := True;
  end;
end;

procedure TdShowStorageform.cbOtherStoraPropertiesChange(Sender: TObject);
begin
  inherited;
//  lbOrg.Visible := cbOtherStora.Checked;
//  cbSupplyOrg.Visible := cbOtherStora.Checked;
//  if cbOtherStora.Checked then
//  begin
//    if cdsSupplyOrg.IsEmpty then
//       CliDM.GetStorageOrgOnSaleOrg(UserInfo.FsaleOrgID,cdsSupplyOrg);
//    cbSupplyOrg.EditValue := UserInfo.FStoreOrgUnit;
//  end;
end;

procedure TdShowStorageform.FormShow(Sender: TObject);
begin
  inherited;
  dShowStorageform.edtStyleCode.SetFocus;
  if cdsSupplyOrg.IsEmpty then  CliDM.GetStorageOrgOnSaleOrg(UserInfo.FsaleOrgID,cdsSupplyOrg);
  cbSupplyOrg.EditValue:=userinfo.FStoreOrgUnit;
  WarehouseFID:=Userinfo.Warehouse_FID;
  GetWarehouseInfo(WarehouseFID);
end;

procedure TdShowStorageform.edtStyleCodeKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = 39 then   //右键
     cbOtherStora.SetFocus;
end;

procedure TdShowStorageform.cbOtherStoraKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
    if Key = 37 then   //左键
     edtStyleCode.SetFocus;
    if Key = 39 then   //右键
     btOK.SetFocus;
end;

procedure TdShowStorageform.btCloseKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
    if Key = 37 then   //左键
     btOk.SetFocus;
    if Key = 39 then   //右键
     edtStyleCode.SetFocus;
end;

procedure TdShowStorageform.btOKClick(Sender: TObject);
var ErrMsg,StorageORG,OtherWare:string;
begin
  inherited;
  if bt_Warehouse.Text='' then WarehouseFID:='';
  if (edtStyleCode.Text='') then
  begin
    ShowMsg(Self.Handle,'物料不能为空!',[]);
    edtStyleCode.SetFocus;
    abort;
  end;
  OtherWare := '1';
  StorageORG := VarToStr(cbSupplyOrg.EditValue);
  if StorageORG='' then
  begin
    ShowMsg(Handle,'请选择库存组织',[]);
    cbSupplyOrg.SetFocus;
    Abort;
  end;


  //查看当前库存组织下店铺库存（已经扣除了未更新库存的零售单）
  if not CliDM.Get_Shop_Storage(WarehouseFID,fmaterialid,OtherWare,StorageORG,dShowStorageform.cdsShop_Storage,ErrMsg) then
     ShowError(Handle, ErrMsg,[]);
  CliDM.ClientUserLog(Self.Caption,'报表查询','报表名称:'+Self.Caption);
 {
  //过滤本店库存
  if cbOther.Checked then
    cdsShop_Storage.Filtered := False
  else
  begin
    //过滤本店库存
    cdsShop_Storage.Filter := 'FWarehouseID='+QuotedStr(UserInfo.Warehouse_FID);
    cdsShop_Storage.Filtered := True;
  end;
  }
end;

procedure TdShowStorageform.btOKKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = 37 then   //左键
     cbOtherStora.SetFocus;
    if Key = 39 then   //右键
     btClose.SetFocus;
end;

procedure TdShowStorageform.bt_WarehouseKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key<>#8 then
  begin
   Key   :=   #0;
  end
  else
  begin
    bt_Warehouse.Text:='';
    WarehouseFID:='';
  end;
end;

procedure TdShowStorageform.GetWarehouseInfo(wfid: string);
var sql,errmsg,showmsg:string;
begin
  inherited;
  if  Trim(WarehouseFID)='' then
  begin
    bt_Warehouse.Text:='';
    exit;
  end;
  
  sql:= 'SELECT a.FID,a.FNUMBER,a.FNAME_L2 FROM T_DB_WAREHOUSE a where a.FID='''+trim(wfid)+'''';
  with  CliDM.Client_QuerySQL(sql) do
  begin
    bt_Warehouse.Text := FieldByName('FNAME_L2').AsString;
  end;

end;

function TdShowStorageform.FindTIPWAREHOUS(StorageOrgID: string): string;
var
  sqlstr,ReturnStr: string;
  fdEnglishList, fdChineseList, fdReturnAimList,strORgID: string;
begin
  Result := '';
  if Trim(StorageOrgID)='' then
    strORgID :=  UserInfo.FStoreOrgUnit
  else
    strORgID := StorageOrgID;
  sqlstr := 'SELECT FID,FNUMBER,FNAME_L2 FROM T_DB_WAREHOUSE(nolock) '
            +' WHERE FWHState=1 and  FSTORAGEORGID='+QuotedStr(strORgID)
            +' ORDER BY FNUMBER';

  fdEnglishList := 'Fnumber,Fname_l2';
  fdChineseList := '店铺编号,店铺名称';
  fdReturnAimList := 'FID,Fname_l2';
  ReturnStr := ShareSelectBoxCall(sqlstr, fdEnglishList, fdChineseList, fdReturnAimList, 200);
  Result := ReturnStr;
end;

procedure TdShowStorageform.bt_WarehousePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  WarehouseFID:=FindTIPWAREHOUS(cbSupplyOrg.EditValue);
  GetWarehouseInfo(WarehouseFID);
end;

procedure TdShowStorageform.cbSupplyOrgPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  WarehouseFID:='';
  bt_Warehouse.Text:='';
end;

procedure TdShowStorageform.dbgMulti1FAMOUNT_1GetDisplayText(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: String);
begin
  inherited;
  if (Trim(AText)='0') then
  AText := '';
end;

end.
