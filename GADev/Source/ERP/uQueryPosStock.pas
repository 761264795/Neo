unit uQueryPosStock;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uReportBaseFrm,DB,
  DBClient, StdCtrls,
  cxGridCustomTableView, cxGridDBTableView,
  cxButtonEdit, cxCheckBox, cxCalc, 
  cxEdit, cxDBData, Menus,
  cxDropDownEdit, cxContainer, cxTextEdit,
  cxMaskEdit, ADODB, cxButtons, ExtCtrls, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGridTableView, cxGrid, ActnList,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxLookAndFeelPainters, jpeg;

type
  TQueryPosStockFrm = class(TReportBaseFrm)
    Label5: TLabel;
    bt_material: TcxButtonEdit;
    lb_matinfo: TLabel;
    maxVal: TcxCalcEdit;
    cxCheckBox1: TcxCheckBox;
    dsSupplyOrg: TDataSource;
    cdsSupplyOrg: TClientDataSet;
    cbSupplyOrg: TcxLookupComboBox;
    lbOrg: TLabel;
    cbOtherStora: TcxCheckBox;
    cdsList1: TClientDataSet;
    dsList1: TDataSource;
    Label2: TLabel;
    bt_Warehouse: TcxButtonEdit;
    procedure bt_materialPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure bt_materialPropertiesChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbOtherStoraPropertiesChange(Sender: TObject);
    procedure bt_materialExit(Sender: TObject);
    procedure bt_WarehousePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure bt_WarehouseKeyPress(Sender: TObject; var Key: Char);
    procedure cbSupplyOrgPropertiesEditValueChanged(Sender: TObject);
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
  QueryPosStockFrm: TQueryPosStockFrm;

implementation
uses FrmCliDM,uMaterialListFrm,Pub_Fun,uSysDataSelect;
{$R *.dfm}

{ TQueryPosStockFrm }

procedure TQueryPosStockFrm.opendata;
var strsql,SupplyOrg:string;
    errmsg,FindType,BillType:string;
    i:integer;
begin
  inherited;
  if bt_Warehouse.Text='' then WarehouseFID:='';
  if (bt_Warehouse.Text='') and (bt_material.Text='') then
  begin
    ShowMsg(Self.Handle,'���̺����ϱ���ѡ��һ��������ѯ!',[]);
    abort;
  end;
  dbgList.ClearItems;
//  if not cbOtherStora.Checked then  //��ѯ���̺Ϳ����֯����
//  begin
//    FindType := '0';  //ֻ��ѯ������
//  end
//  else
//  begin
  FindType := '1';  //��ѯ�������̿��
  SupplyOrg := VarToStr(cbSupplyOrg.EditValue);
  if SupplyOrg='' then
  begin
    ShowMsg(Self.Handle,'��ѡ������֯',[]);
    cbSupplyOrg.SetFocus;
    abort;
  end;
//  end;

  if not cxCheckBox1.Checked then  //��ѯ�����������ĳ��ֵ����
    BillType := '0'
  else
    BillType := '1';

  if dbgList.DataController.DataSource.DataSet.Active then dbgList.DataController.DataSource.DataSet.Close;

  if CliDM.Pub_ReportProc('QueryPosStockFrm',UserInfo.FSaleOrgID,SupplyOrg,WarehouseFID,material_id,'', '',cdsList,Errmsg,FindType) then
  begin
     { if not cdsList1.IsEmpty then
      begin
        cdsList1.First;
        while not cdsList1.Eof do
        begin
          if not(cdsList1.State in db.dsEditModes) then cdsList1.Edit;
          for i := 1 to 30 do
          begin
            if cdsList1.FindField('famount_'+inttostr(i)) <> nil then
            if not cdsList1.FindField('famount_'+inttostr(i)).IsNull then
            begin
              if cdsList1.FindField('famount_'+inttostr(i)).AsFloat=0 then
              begin

                cdsList1.FindField('famount_'+inttostr(i)).Value:=null;
              end;
            end;
          end;
          cdsList1.Next;
        end;
      end; }
      dbgList.DataController.CreateAllItems;
  end;
  
end;

procedure TQueryPosStockFrm.setGridFieldcaption;
var i :integer;
begin
  inherited;
  if dbgList.GetColumnByFieldName('fwarehouseid') <> nil then
  begin
    dbgList.GetColumnByFieldName('fwarehouseid').Tag:=2;
    dbgList.GetColumnByFieldName('fwarehouseid').Visible:=False;
  end;
  /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  if  dbgList.GetColumnByFieldName('FSTORAGEORGUNITID') <> nil then dbgList.GetColumnByFieldName('FSTORAGEORGUNITID').Visible:=False;
  if  cdsList.FindField('WareHouseNumber')<>nil then  dbgList.GetColumnByFieldName('WareHouseNumber').Caption:='���̱��';
  if  cdsList.FindField('WareHouseName')<>nil then dbgList.GetColumnByFieldName('WareHouseName').Caption:='��������';
  if  cdsList.FindField('matNum')<>nil then  dbgList.GetColumnByFieldName('matNum').Caption:='��Ʒ���';
  if  cdsList.FindField('matName')<>nil then dbgList.GetColumnByFieldName('matName').Caption:='��Ʒ����';
  if  cdsList.FindField('colornum')<>nil then  dbgList.GetColumnByFieldName('colornum').Caption:='��ɫ���';
  if  cdsList.FindField('colorName')<>nil then  dbgList.GetColumnByFieldName('colorName').Caption:='��ɫ����';
  if  cdsList.FindField('cupNum')<>nil then  dbgList.GetColumnByFieldName('cupNum').Visible:=False;
  if  cdsList.FindField('CFDELIVERYDATE')<>nil then  dbgList.GetColumnByFieldName('CFDELIVERYDATE').Caption:='��������';
  if  cdsList.FindField('cupName')<>nil then  dbgList.GetColumnByFieldName('cupName').Caption:='�ڳ�';
  if  cdsList.FindField('LB')<>nil then  dbgList.GetColumnByFieldName('LB').Caption:='���';
  if  cdsList.FindField('XL')<>nil then  dbgList.GetColumnByFieldName('XL').Caption:='ϵ��';
  if  cdsList.FindField('sex')<>nil then  dbgList.GetColumnByFieldName('sex').Caption:='�Ա�';
  if  cdsList.FindField('Brand')<>nil then  dbgList.GetColumnByFieldName('Brand').Caption:='Ʒ��';
  if  cdsList.FindField('YD')<>nil then dbgList.GetColumnByFieldName('YD').Caption:='�˶�����';
  if  cdsList.FindField('JJ')<>nil then dbgList.GetColumnByFieldName('JJ').Caption:='����';
  if  cdsList.FindField('FG')<>nil then dbgList.GetColumnByFieldName('FG').Caption:='���';
  if  cdsList.FindField('JGD')<>nil then dbgList.GetColumnByFieldName('JGD').Caption:='�۸��';
  if  cdsList.FindField('CZ')<>nil then dbgList.GetColumnByFieldName('CZ').Caption:='����';
  if  cdsList.FindField('totalQty')<>nil then  dbgList.GetColumnByFieldName('totalQty').Caption:='�ϼ�����';
  if  cdsList.FindField('material_id')<>nil then dbgList.GetColumnByFieldName('material_id').Visible:=False;
  if  cdsList.FindField('cfUnityPrice')<>nil then  dbgList.GetColumnByFieldName('cfUnityPrice').Caption:='���Ƽ�';
  /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  if  cdsList.FindField('sstorage_code')<>nil then  dbgList.GetColumnByFieldName('sstorage_code').Caption:='���̱��';
  if  cdsList.FindField('sstorage_name')<>nil then  dbgList.GetColumnByFieldName('sstorage_name').Caption:='��������';
  if  cdsList.FindField('sstyle_code')<>nil then  dbgList.GetColumnByFieldName('sstyle_code').Caption:='��Ʒ���';
  if  cdsList.FindField('sstyle_name')<>nil then  dbgList.GetColumnByFieldName('sstyle_name').Caption:='��Ʒ����';
  if  cdsList.FindField('scolor_code')<>nil then  dbgList.GetColumnByFieldName('scolor_code').Caption:='��ɫ���';
  if  cdsList.FindField('scolor_name')<>nil then  dbgList.GetColumnByFieldName('scolor_name').Caption:='��ɫ����';
  if  cdsList.FindField('sBei_Code')<>nil then  dbgList.GetColumnByFieldName('sBei_Code').Caption:='�ڳ�';
  if  cdsList.FindField('fTotal_Amount')<>nil then  dbgList.GetColumnByFieldName('fTotal_Amount').Caption:='�ϼ�����';
  if  cdsList.FindField('cfUnityPrice')<>nil then  dbgList.GetColumnByFieldName('cfUnityPrice').Caption:='���Ƽ�';
end;

procedure TQueryPosStockFrm.bt_materialPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
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
      material_id:=rst  ;
      lb_matinfo.Caption:='';
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
          lb_matinfo.Caption:=showmsg;
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

procedure TQueryPosStockFrm.bt_materialPropertiesChange(Sender: TObject);
var sql,errmsg,showmsg:string;
begin
  inherited;
  if  Trim(bt_material.Text)='' then
  begin
    material_id:='';
    lb_matinfo.Caption:='';
  end;
  
  sql:= 'select a.fid,a.fnumber,a.fname_l2 from T_BD_MATERIAL a where a.fnumber='''+trim(bt_material.Text)+'''';
  with  CliDM.Client_QuerySQL(sql) do
  begin
    material_id := FieldByName('FID').AsString;
    showmsg:= fieldbyname('fname_l2').AsString;
    lb_matinfo.Caption:=showmsg;
  end;

end;

procedure TQueryPosStockFrm.FormCreate(Sender: TObject);
begin
  inherited;
  CliDM.GetStorageOrgOnSaleOrg(UserInfo.FsaleOrgID,cdsSupplyOrg);
  cbSupplyOrg.EditValue:=userinfo.FStoreOrgUnit;
  WarehouseFID:=Userinfo.Warehouse_FID;
  GetWarehouseInfo(WarehouseFID);
end;

procedure TQueryPosStockFrm.cbOtherStoraPropertiesChange(Sender: TObject);
begin
  inherited;
//  lbOrg.Visible := cbOtherStora.Checked;
//  cbSupplyOrg.Visible := cbOtherStora.Checked;

end;

procedure TQueryPosStockFrm.bt_materialExit(Sender: TObject);
var sql,errmsg,showmsg:string;
begin
  inherited;
  if  Trim(bt_material.Text)='' then
  begin
    material_id:='';
    lb_matinfo.Caption:='';
  end;
  
  sql:= 'select a.fid,a.fnumber,a.fname_l2 from T_BD_MATERIAL a where a.fnumber='''+trim(bt_material.Text)+'''';
  with  CliDM.Client_QuerySQL(sql) do
  begin
    material_id := FieldByName('FID').AsString;
    showmsg:= fieldbyname('fname_l2').AsString;
    lb_matinfo.Caption:=showmsg;
  end;

end;
function TQueryPosStockFrm.FindTIPWAREHOUS(StorageOrgID: string): string;
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
  fdChineseList := '���̱��,��������';
  fdReturnAimList := 'FID,Fname_l2';
  ReturnStr := ShareSelectBoxCall(sqlstr, fdEnglishList, fdChineseList, fdReturnAimList, 200);
  Result := ReturnStr;
end;
procedure TQueryPosStockFrm.bt_WarehousePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  WarehouseFID:=FindTIPWAREHOUS(cbSupplyOrg.EditValue);
  GetWarehouseInfo(WarehouseFID);
end;


procedure TQueryPosStockFrm.GetWarehouseInfo(wfid:string);
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

procedure TQueryPosStockFrm.bt_WarehouseKeyPress(Sender: TObject;
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

procedure TQueryPosStockFrm.cbSupplyOrgPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  WarehouseFID:='';
  bt_Warehouse.Text:='';
end;

procedure TQueryPosStockFrm.FormShow(Sender: TObject);
begin
  inherited;
  bt_material.SetFocus;
end;

procedure TQueryPosStockFrm.bt_materialKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (Key = 13 ) then
  btOK.OnClick(nil);
end;

end.
