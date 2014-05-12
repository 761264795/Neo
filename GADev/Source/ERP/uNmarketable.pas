unit uNmarketable;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uReportBaseFrm, 
  DB,
  DBClient, StdCtrls, 
  
  cxGridCustomTableView, cxGridDBTableView, 
  cxButtonEdit, ComCtrls,DateUtils,
  cxCheckBox, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, Menus, cxLookAndFeelPainters,
  cxContainer, cxTextEdit, cxMaskEdit, ADODB, cxButtons, jpeg, ExtCtrls,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGridTableView,
  cxGrid, ActnList;

type
  TUnmarketableFrm = class(TReportBaseFrm)
    Label2: TLabel;
    Label5: TLabel;
    bt_material: TcxButtonEdit;
    lb_matinfo: TLabel;
    tpBegin: TDateTimePicker;
    Label3: TLabel;
    tpEnd: TDateTimePicker;
    Label4: TLabel;
    cxCheckBox1: TcxCheckBox;
    Label6: TLabel;
    procedure FormShow(Sender: TObject);
    procedure bt_materialPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure bt_materialPropertiesChange(Sender: TObject);
    procedure tpBeginCloseUp(Sender: TObject);
    procedure tpEndCloseUp(Sender: TObject);
  private
    { Private declarations }
    material_id:string;
  public
    { Public declarations }
    procedure opendata;override;
    procedure setGridFieldcaption;override;
  end;

var
  UnmarketableFrm: TUnmarketableFrm;

implementation

uses FrmCliDM,uMaterialListFrm;

{$R *.dfm}

{ TUnmarketableFrm }

procedure TUnmarketableFrm.opendata;
var strsql,FindType:string;
    begindate,enddate,errmsg:string;
begin
  inherited;
  Self.is_setsizecaption :=False;
  begindate:=FormatDateTime('yyyy-mm-dd',tpBegin.DateTime);
  enddate:= FormatDateTime('yyyy-mm-dd',tpEnd.DateTime);
  if begindate> enddate then
  begin
    ShowMessage('��ʼ���ڲ��ܴ��ڽ�������');
    Abort;
  end;
  dbgList.ClearItems;
  {
  strsql:='select im.FWarehouseID,mgp.fname_l2 as GPNM,im.fmaterialid as material_id,'
          +' m.fnumber as matnum ,m.fname_l2 as matName,ass.ff21 as colornum,ass.ff11 as colorNM,ass.ff22 as sizenum,ass.ff12 as sizeNM, '
          +' ass.ff23 as cupnum,ass.ff13 as cupNM ,nvl(im.FBaseQty,0)-nvl(posqty.fqty,0)  as  FBaseQty'
          +' ,1 as rate from T_IM_Inventory im'
          +' left join T_BD_MATERIAL m on im.fmaterialid=m.fid '
          +' left join T_BD_AsstAttrValue ass on im.fassistpropertyid=ass.fid '
          +' left join T_BD_MaterialGroup mgp on m.fmaterialgroupid=mgp.fid '
          +' left join (select sum(nvl(e.Cfamount,0)) as fqty,h.cfstorageid,e.cfmaterialid,e.cfassistnum as assNum'
          +'  from Ct_Bil_Retailposentry e left join Ct_Bil_Retailpos  h on e.Fparentid=h.Fid '
          +'  where nvl(h.CFISSALEOUT,0)=0   and h.istatus=2  group by    h.cfstorageid,e.cfmaterialid,e.cfassistnum '
          +'        ) posqty on  im.fwarehouseid=posqty.cfstorageid and im.fmaterialid=posqty.cfmaterialid and upper(ass.fnumber)=upper(posqty.assNum)'
          +' where im.fwarehouseid='''+UserInfo.Warehouse_FID+'''' ;
  if cxCheckBox1.Checked then  strsql:=strsql +' and nvl(im.FBaseQty,0)-nvl(posqty.fqty,0) >0';
  if material_id<>'' then  strsql:=strsql +' and im.fmaterialid='''+material_id+'''';
  strsql:=strsql +' and not exists (select 1 from Ct_Bil_Retailposentry br left join Ct_Bil_Retailpos h on br.fparentid=h.fid '
          +' where im.fwarehouseid=h.cfstorageid and br.cfmaterialid=im.fmaterialid and br.cfcolorid=ass.ff1'
          +'     and br.cfsizesid=ass.ff2 and br.cfcupid=ass.ff13'
          +'  and to_char(h.fbizdate,''yyyy-mm-dd'')>='''+begindate+''''
          +'  and to_char(h.fbizdate,''yyyy-mm-dd'')<='''+enddate+''') order by im.fmaterialid,ass.ff22';
  getReportData(cdsList,strsql);
  dbgList.DataController.CreateAllItems;
  }
  if cxCheckBox1.Checked then FindType :='1';

  if CliDM.Pub_ReportQuery('UnmarketableFrm',UserInfo.Warehouse_FID,begindate,enddate,FindType,material_id,TDataSet(cdsList),ErrMsg)   then
  begin
    dbgList.DataController.CreateAllItems;
  end
end;

procedure TUnmarketableFrm.setGridFieldcaption;
begin
  inherited;
{  dbgList.GetColumnByFieldName('FWarehouseID').Visible:=False;
  dbgList.GetColumnByFieldName('GPNM').Width:=80;
//  dbgList.GetColumnByFieldName('GPNM').Caption:='��������';
  dbgList.GetColumnByFieldName('material_id').Visible:=False;
  dbgList.GetColumnByFieldName('matnum').Caption:='��Ʒ���';
  dbgList.GetColumnByFieldName('matName').Caption:='��Ʒ����';
  dbgList.GetColumnByFieldName('colornum').Caption:='��ɫ���';
  dbgList.GetColumnByFieldName('colorNM').Caption:='��ɫ����';
  dbgList.GetColumnByFieldName('sizenum').Visible:=False;
  dbgList.GetColumnByFieldName('sizenm').Caption:='����';
  dbgList.GetColumnByFieldName('cupnum').Visible:=False;
  dbgList.GetColumnByFieldName('cupnm').Caption:='�ڳ�';
  dbgList.GetColumnByFieldName('FBaseQty').Caption:='�������';
  dbgList.GetColumnByFieldName('rate').Caption:='��������';
  }
end;

procedure TUnmarketableFrm.FormShow(Sender: TObject);
begin
  inherited;
  tpBegin.DateTime:= DateUtils.Incday(Now,-6);
  tpEnd.DateTime:= Now;
end;

procedure TUnmarketableFrm.bt_materialPropertiesButtonClick(
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
procedure TUnmarketableFrm.bt_materialPropertiesChange(Sender: TObject);
var sql,errmsg,showmsg:string;
    cds:TClientDataSet;
begin
  inherited;
  if  Trim(bt_material.Text)='' then
  begin
    material_id:='';
    lb_matinfo.Caption:='';
  end;
  cds:=TClientDataSet.Create(nil);
  try
    sql:= 'select a.fid,a.fnumber,a.fname_l2 from T_BD_MATERIAL a where a.fnumber='''+trim(bt_material.Text)+'''';

    if  CliDM.Get_OpenSQL(cds,sql,errmsg) then
    begin
      if not cds.IsEmpty then
      begin
        showmsg:=Trim(cds.fieldbyname('fname_l2').AsString);
        lb_matinfo.Caption:=showmsg;
        material_id:=Trim(cds.fieldbyname('fid').AsString);
      end
      else
      begin
        material_id:='';
        lb_matinfo.Caption:='';
      end;
    end;
  finally
    cds.Free;
  end;
end;

procedure TUnmarketableFrm.tpBeginCloseUp(Sender: TObject);
var i:Integer;
begin
  inherited;
  i:=DateUtils.DaysBetween(tpBegin.DateTime,tpEnd.DateTime)+1 ;
  Label4.Caption:='(����'+inttostr(i)+'��)';
end;

procedure TUnmarketableFrm.tpEndCloseUp(Sender: TObject);
var i:Integer;
begin
  inherited;
  i:=DateUtils.DaysBetween(tpBegin.DateTime,tpEnd.DateTime)+1 ;
  Label4.Caption:='(����'+inttostr(i)+'��)';
end;

end.
