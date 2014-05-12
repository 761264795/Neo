unit uSaleGZAY;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uReportBaseFrm, 
  DB,
  DBClient, StdCtrls, 
  
  cxGridCustomTableView, cxGridDBTableView, 
  cxButtonEdit, ComCtrls, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, cxDBData, Menus, cxLookAndFeelPainters,
  cxContainer, cxTextEdit, cxMaskEdit, ADODB, cxButtons, jpeg, ExtCtrls,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGridTableView,
  cxGrid, ActnList;

type
  TSaleGZAYFrm = class(TReportBaseFrm)
    Label2: TLabel;
    tpBegin: TDateTimePicker;
    Label3: TLabel;
    tpEnd: TDateTimePicker;
    Label5: TLabel;
    bt_material: TcxButtonEdit;
    lb_matinfo: TLabel;
    Label4: TLabel;
    procedure bt_materialPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure bt_materialPropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tpBeginCloseUp(Sender: TObject);
  private
    { Private declarations }
     material_id:string;
  public
    { Public declarations }
    procedure opendata;override;
    procedure setGridFieldcaption;override;
  end;

var
  SaleGZAYFrm: TSaleGZAYFrm;

implementation
uses FrmCliDM,uMaterialListFrm,DateUtils;
{$R *.dfm}

{ TSaleGZAYFrm }

procedure TSaleGZAYFrm.opendata;
var strsql:string;
    begindate,enddate,errmsg,days:string;
begin
  inherited;
  Self.is_setsizecaption :=False;
  begindate:=FormatDateTime('yyyy-mm-dd',tpBegin.DateTime);
  enddate:= FormatDateTime('yyyy-mm-dd',tpEnd.DateTime);
  if begindate> enddate then
  begin
    ShowMessage('开始日期不能大于结束日期');
    Abort;
  end;
  days:=inttostr(DateUtils.DaysBetween(tpBegin.DateTime,tpEnd.DateTime)+1);
  dbgList.ClearItems;
  {
  strsql:=' select br.cfmaterialid as material_id,'
          +' m.fnumber as matnum ,m.fname_l2 as matname,ass.ff21 as colornum,ass.ff11 as colorNM,ass.ff22 as sizenum,ass.ff12 as sizeNM '
          +' ,ass.ff23 as cupnum,ass.ff13 as cupNM,sum(br.cfamount) as cfamount,ROUND(sum(br.cfamount) /'+days+',2) as dayrate,max(nvl(im.fbaseqty,0))-max(nvl(posqty.fqty,0)) as fbaseqty'
          +' ,case when sum(br.cfamount)=0 then 0 else ROUND(max(im.fbaseqty)/(sum(br.cfamount)/'+days+'),2) end as days'
          +'  from Ct_Bil_Retailposentry br '
          +'  left join Ct_Bil_Retailpos h on br.fparentid=h.fid '
          +'  left join T_BD_AsstAttrValue ass on br.cfassistnum=ass.fnumber'
          +'  left join T_BD_MATERIAL m on br.cfmaterialid=m.fid '
          +'  left join T_IM_Inventory im on h.cfstorageid=im.fwarehouseid and br.cfmaterialid=im.fmaterialid '
          +'            and ass.fid=im.fassistpropertyid '
          +' left join (select sum(nvl(e.Cfamount,0)) as fqty,h.cfstorageid,e.cfmaterialid,e.cfassistnum as assNum'
          +'  from Ct_Bil_Retailposentry e left join Ct_Bil_Retailpos  h on e.Fparentid=h.Fid '
          +'  where nvl(h.CFISSALEOUT,0)=0   and h.istatus=2  group by    h.cfstorageid,e.cfmaterialid,e.cfassistnum '
          +'        ) posqty on  im.fwarehouseid=posqty.cfstorageid and im.fmaterialid=posqty.cfmaterialid and upper(ass.fnumber)=upper(posqty.assNum)'

          +' where  to_char(h.fbizdate,''yyyy-mm-dd'')>='''+begindate+''' and to_char(h.fbizdate,''yyyy-mm-dd'')<='''+enddate+''''
          +' and h.cfstorageid='''+UserInfo.Warehouse_FID+'''';
          if material_id<>'' then strsql:=strsql+' and br.cfmaterialid='''+material_id+'''';
          strsql:=strsql+' group by br.cfmaterialid,m.fnumber,m.fname_l2 ,ass.ff21,ass.ff11 ,ass.ff22 ,ass.ff12 ,ass.ff23 ,ass.ff13 ';

    getReportData(cdsList,strsql);
    dbgList.DataController.CreateAllItems;
  }
  if CliDM.Pub_ReportQuery('SaleGZAYFrm',UserInfo.Warehouse_FID,begindate,enddate,days,material_id,TDataSet(cdsList),ErrMsg)   then
  begin
    dbgList.DataController.CreateAllItems;
  end;

end;

procedure TSaleGZAYFrm.setGridFieldcaption;
begin
  inherited;
  dbgList.GetColumnByFieldName('material_id').Visible:=False;
  //dbgList.GetColumnByFieldName('GPNM').Width:=80;
  //dbgList.GetColumnByFieldName('GPNM').Caption:='分类名称';
  dbgList.GetColumnByFieldName('material_id').Visible:=False;
  dbgList.GetColumnByFieldName('matnum').Caption:='商品编号';
  dbgList.GetColumnByFieldName('matName').Caption:='商品名称';
  dbgList.GetColumnByFieldName('colornum').Caption:='颜色编号';
  dbgList.GetColumnByFieldName('colorNM').Caption:='颜色名称';
  dbgList.GetColumnByFieldName('sizenum').Visible:=False;
  dbgList.GetColumnByFieldName('sizenm').Caption:='尺码';
  dbgList.GetColumnByFieldName('cupnum').Visible:=False;
  dbgList.GetColumnByFieldName('cupnm').Caption:='内长';
  dbgList.GetColumnByFieldName('cfamount').Caption:='销售数量';
  dbgList.GetColumnByFieldName('dayrate').Caption:='日平均销售量';
  dbgList.GetColumnByFieldName('fbaseqty').Caption:='库存数量';
  dbgList.GetColumnByFieldName('days').Caption:='预计可销售天数';
end;

procedure TSaleGZAYFrm.bt_materialPropertiesButtonClick(Sender: TObject;
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

procedure TSaleGZAYFrm.bt_materialPropertiesChange(Sender: TObject);
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

procedure TSaleGZAYFrm.FormShow(Sender: TObject);
begin
  inherited;
  tpBegin.DateTime:= DateUtils.Incday(Now,-6);
  tpEnd.DateTime:= Now;
end;

procedure TSaleGZAYFrm.tpBeginCloseUp(Sender: TObject);
var i:Integer;
begin
  inherited;
  i:=DateUtils.DaysBetween(tpBegin.DateTime,tpEnd.DateTime)+1 ;
  Label4.Caption:='(共计'+inttostr(i)+'天)';
end;

end.
