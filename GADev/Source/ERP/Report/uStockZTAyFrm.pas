unit uStockZTAyFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uReportBaseFrm, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, Menus,
  cxLookAndFeelPainters, DBClient, ActnList, ADODB, StdCtrls, cxButtons,
  jpeg, ExtCtrls, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxButtonEdit, cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox;

type
  TStockZTAyFrm = class(TReportBaseFrm)
    lblOrg: TLabel;
    cbSupplyOrg: TcxLookupComboBox;
    lbl1: TLabel;
    bt_Warehouse: TcxButtonEdit;
    lbl2: TLabel;
    bt_material: TcxButtonEdit;
    lbl_matinfo: TLabel;
    dsSupplyOrg: TDataSource;
    cdsSupplyOrg: TClientDataSet;
    Label2: TLabel;
    procedure bt_WarehouseKeyPress(Sender: TObject; var Key: Char);
    procedure cbSupplyOrgPropertiesEditValueChanged(Sender: TObject);
    procedure bt_materialPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure bt_materialPropertiesChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bt_materialExit(Sender: TObject);
    procedure bt_WarehousePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormShow(Sender: TObject);
    procedure bt_materialKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    material_id:string;
  public
    { Public declarations }
    WarehouseFID:String;
    procedure opendata;override;
    procedure setGridFieldcaption;override;
    function FindTIPWAREHOUS(StorageOrgID: string): string;
    procedure GetWarehouseInfo(wfid:string);
  end;

var
  StockZTAyFrm: TStockZTAyFrm;

implementation

uses FrmCliDM,uMaterialListFrm,Pub_Fun,uSysDataSelect;
{$R *.dfm}

{ TStockZTAyFrm }

function TStockZTAyFrm.FindTIPWAREHOUS(StorageOrgID: string): string;
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

procedure TStockZTAyFrm.GetWarehouseInfo(wfid: string);
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

procedure TStockZTAyFrm.bt_WarehouseKeyPress(Sender: TObject;
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

procedure TStockZTAyFrm.cbSupplyOrgPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  WarehouseFID:='';
  bt_Warehouse.Text:='';
end;

procedure TStockZTAyFrm.opendata;
var strsql,SupplyOrg:string;
    errmsg,FindType,BillType:string;
    i:integer;
begin
  inherited;
  if bt_Warehouse.Text='' then WarehouseFID:='';
  if (bt_Warehouse.Text='') and (bt_material.Text='') then
  begin
    ShowMsg(Self.Handle,'店铺和物料必需选择一个条件查询!',[]);
    abort;
  end;
  dbgList.ClearItems;

  SupplyOrg := VarToStr(cbSupplyOrg.EditValue);
  if SupplyOrg='' then
  begin
    ShowMsg(Self.Handle,'请选择库存组织',[]);
    cbSupplyOrg.SetFocus;
    abort;
  end;
  if dbgList.DataController.DataSource.DataSet.Active then dbgList.DataController.DataSource.DataSet.Close;
  CliDM.Pub_ReportProc('INWAYSTOQRY',UserInfo.FSaleOrgID,UserInfo.FStoreOrgUnit,UserInfo.Warehouse_FID,material_id,'', '',cdsList,Errmsg);
  if (cdsList.Active) and (cdsList.recordcount>0) then
  dbgList.DataController.CreateAllItems;
end;

procedure TStockZTAyFrm.setGridFieldcaption;
begin
  inherited;
  with cdsList do
  begin
    if FindField('fassistpropertyid')<>nil then
    begin
      dbgList.GetColumnByFieldName('fassistpropertyid').Visible := False;
    end;
    if FindField('MaterialNum')<>nil then  dbgList.GetColumnByFieldName('MaterialNum').Caption := '商品编号';
    if FindField('MaterialName')<>nil then dbgList.GetColumnByFieldName('MaterialName').Caption := '商品名称';
    if FindField('ColorNum')<>nil then
    begin
      dbgList.GetColumnByFieldName('ColorNum').Caption := '颜色编号';
      dbgList.GetColumnByFieldName('ColorNum').Width := 70;
    end;
    if FindField('ColorName')<>nil then
    begin
      dbgList.GetColumnByFieldName('ColorName').Caption := '颜色';
      dbgList.GetColumnByFieldName('ColorName').Width := 70;
    end;
    if FindField('CupName')<>nil then
    begin
      dbgList.GetColumnByFieldName('CupName').Caption := '内长';
      dbgList.GetColumnByFieldName('CupName').Width := 40;
    end;
    if FindField('SIZEName')<>nil then
    begin
      dbgList.GetColumnByFieldName('SIZEName').Caption := '尺码';
      dbgList.GetColumnByFieldName('SIZEName').Width := 40;
    end;
    if FindField('material_id')<>nil then
    begin
      dbgList.GetColumnByFieldName('material_id').Visible := False;
    end;
    if FindField('SizeCode')<>nil then
    begin
      dbgList.GetColumnByFieldName('SizeCode').Caption := '尺码';
      dbgList.GetColumnByFieldName('SizeCode').Width := 40;
      dbgList.GetColumnByFieldName('SizeCode').Visible := false;
    end;
    if FindField('SereiesName')<>nil then
    begin
      dbgList.GetColumnByFieldName('SereiesName').Caption := '系列';
      dbgList.GetColumnByFieldName('SereiesName').Width := 60;
    end;
    if FindField('GenderName')<>nil then
    begin
      dbgList.GetColumnByFieldName('GenderName').Caption := '性别';
      dbgList.GetColumnByFieldName('GenderName').Width := 60;
    end;
    if FindField('BrandName')<>nil then
    begin
      dbgList.GetColumnByFieldName('BrandName').Caption := '品牌';
      dbgList.GetColumnByFieldName('BrandName').Width := 60;
    end;
    if FindField('SeasonName')<>nil then
    begin
      dbgList.GetColumnByFieldName('SeasonName').Caption := '季节';
      dbgList.GetColumnByFieldName('SeasonName').Width := 60;
    end;
    if FindField('StyleName')<>nil then
    begin
      dbgList.GetColumnByFieldName('StyleName').Caption := '风格';
      dbgList.GetColumnByFieldName('StyleName').Width := 60;
    end;
    if FindField('PricerangeName')<>nil then
    begin
      dbgList.GetColumnByFieldName('PricerangeName').Caption := '价格段';
      dbgList.GetColumnByFieldName('PricerangeName').Width := 60;
    end;
    if FindField('GENREName')<>nil then
    begin
      dbgList.GetColumnByFieldName('GENREName').Caption := '类别';
      dbgList.GetColumnByFieldName('GENREName').Width := 60;
    end;
    if FindField('FStockQty')<>nil then
    begin
      dbgList.GetColumnByFieldName('FStockQty').Caption := '即时库存';
      dbgList.GetColumnByFieldName('FStockQty').Width := 60;
    end;
    if FindField('FPOSQty')<>nil then
    begin
      dbgList.GetColumnByFieldName('FPOSQty').Caption := '销售数量';
      dbgList.GetColumnByFieldName('FPOSQty').Width := 60;
    end;
    if FindField('FDIQty')<>nil then
    begin
      dbgList.GetColumnByFieldName('FDIQty').Caption := '入库在途';
      dbgList.GetColumnByFieldName('FDIQty').Width := 60;
    end;
    if FindField('FDOQty')<>nil then
    begin
      dbgList.GetColumnByFieldName('FDOQty').Caption := '出库在途';
      dbgList.GetColumnByFieldName('FDOQty').Width := 60;
    end;
    if FindField('AvaibleStock')<>nil then
    begin
      dbgList.GetColumnByFieldName('AvaibleStock').Caption := '预计库存';
      dbgList.GetColumnByFieldName('AvaibleStock').Width := 60;
    end;
    if FindField('SalePerINV')<>nil then
    begin
      dbgList.GetColumnByFieldName('SalePerINV').Caption := '存销比%';
      dbgList.GetColumnByFieldName('SalePerINV').Width := 60;
    end;
    if FindField('warehousenum')<>nil then
    begin
      dbgList.GetColumnByFieldName('warehousenum').Caption := '仓库编号';
      dbgList.GetColumnByFieldName('warehousenum').Width := 70;
    end;
    if FindField('warehousename')<>nil then
    begin
      dbgList.GetColumnByFieldName('warehousename').Caption := '仓库名称';
      dbgList.GetColumnByFieldName('warehousename').Width := 70;
    end;
  end;
end;

procedure TStockZTAyFrm.bt_materialPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var rst:string;
  sql,errmsg,showmsg:string;
    cds:TClientDataSet;
begin
  inherited;
  try
    bt_material.Properties.OnChange:=nil;
    rst:=SelectMatertialFID(bt_material.Text);
    if rst<>'' then
    begin
      material_id:=rst;
      lbl_matinfo.Caption:='';
    end;
    if trim(material_id)='' then Abort;
    cds:=TClientDataSet.Create(nil);
    try
      sql:= 'select a.fnumber,a.fname_l2 from T_BD_MATERIAL a where a.fid='''+trim(material_id)+'''';

      if  CliDM.Get_OpenSQL(cds,sql,errmsg) then
      begin
        if not cds.IsEmpty then
        begin
          showmsg:=Trim(cds.fieldbyname('fname_l2').AsString);
          lbl_matinfo.Caption:=showmsg;
          bt_material.Text:=trim(cds.fieldbyname('fnumber').AsString);
        end;
      end;
    finally
      cds.Free;
    end;
  finally
    bt_material.Properties.OnChange:=bt_materialPropertiesChange;
  end;

end;

procedure TStockZTAyFrm.bt_materialPropertiesChange(Sender: TObject);
var sql,errmsg,showmsg:string;
begin
  inherited;
  if  Trim(bt_material.Text)='' then
  begin
    material_id:='';
    lbl_matinfo.Caption:='';
  end;
  
  sql:= 'select a.fid,a.fnumber,a.fname_l2 from T_BD_MATERIAL a where a.fnumber='''+trim(bt_material.Text)+'''';
  with  CliDM.Client_QuerySQL(sql) do
  begin
    material_id := FieldByName('FID').AsString;
    showmsg:= fieldbyname('fname_l2').AsString;
    lbl_matinfo.Caption:=showmsg;
  end;

end;

procedure TStockZTAyFrm.FormCreate(Sender: TObject);
begin
  inherited;
  CliDM.GetStorageOrgOnSaleOrg(UserInfo.FsaleOrgID,cdsSupplyOrg);
  cbSupplyOrg.EditValue:=userinfo.FStoreOrgUnit;
  WarehouseFID:=Userinfo.Warehouse_FID;
  GetWarehouseInfo(WarehouseFID);
end;

procedure TStockZTAyFrm.bt_materialExit(Sender: TObject);
var sql,errmsg,showmsg:string;
begin
  inherited;
  if  Trim(bt_material.Text)='' then
  begin
    material_id:='';
    lbl_matinfo.Caption:='';
  end;
  
  sql:= 'select a.fid,a.fnumber,a.fname_l2 from T_BD_MATERIAL a where a.fnumber='''+trim(bt_material.Text)+'''';
  with  CliDM.Client_QuerySQL(sql) do
  begin
    material_id := FieldByName('FID').AsString;
    showmsg:= fieldbyname('fname_l2').AsString;
    lbl_matinfo.Caption:=showmsg;
  end;

end;

procedure TStockZTAyFrm.bt_WarehousePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  WarehouseFID:=FindTIPWAREHOUS(cbSupplyOrg.EditValue);
  GetWarehouseInfo(WarehouseFID);
end;

procedure TStockZTAyFrm.FormShow(Sender: TObject);
begin
  inherited;
  bt_material.SetFocus;
end;

procedure TStockZTAyFrm.bt_materialKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = 13 then btOK.OnClick(nil);
end;

end.
