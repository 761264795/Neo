unit uSubsidiary_trace_report;

interface

uses
  SysUtils, Classes, Controls, Forms,
  Dialogs, uReportBaseFrm, 
  DB,
  DBClient, StdCtrls, 
  
  cxGridCustomTableView, cxGridDBTableView, 
  cxTextEdit, cxButtonEdit, ComCtrls, 
  
  
  Graphics, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, Menus, cxLookAndFeelPainters,
  cxContainer, cxMaskEdit, ADODB, cxButtons, jpeg, ExtCtrls, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGridTableView, cxGrid,
  ActnList;

type
  Tsubsidiary_trace_reportFrm = class(TReportBaseFrm)
    Label2: TLabel;
    tpBegin: TDateTimePicker;
    tpEnd: TDateTimePicker;
    Label3: TLabel;
    Label5: TLabel;
    bt_material: TcxButtonEdit;
    lb_matinfo: TLabel;
    Label4: TLabel;
    ed_SubBill: TcxTextEdit;
    procedure FormShow(Sender: TObject);
    procedure bt_materialPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure bt_materialPropertiesChange(Sender: TObject);
  private
    { Private declarations }
    material_id:string;
  public
    { Public declarations }
    procedure opendata;override;
    procedure setGridFieldcaption;override;
  end;

var
  subsidiary_trace_reportFrm: Tsubsidiary_trace_reportFrm;

implementation
uses FrmCliDM,DateUtils,uMaterialListFrm;
{$R *.dfm}

{ Tsubsidiary_trace_reportFrm }

procedure Tsubsidiary_trace_reportFrm.opendata;
var strsql:string;
    begindate,enddate,errmsg:string;
begin
  inherited;
  begindate:=FormatDateTime('yyyy-mm-dd',tpBegin.DateTime);
  enddate:= FormatDateTime('yyyy-mm-dd',tpEnd.DateTime);
  Self.is_setsizecaption:=False;
  dbgList.ClearItems;
  {
  strsql:='select * from V_subsidiary_trace_report where fwarehouseid='+QuotedStr(UserInfo.Warehouse_FID)
          +'  and to_char(bizdate,''yyyy-mm-dd'')>='''+begindate+''''
          +'  and to_char(bizdate,''yyyy-mm-dd'')<='''+enddate+'''';
  if Trim(ed_SubBill.Text)<>'' then strsql:=strsql+' and upper(subnumber)='+Quotedstr(UpperCase(Trim(ed_SubBill.Text)));
  if material_id<>'' then  strsql:=strsql+' and upper(material_id)='+Quotedstr(UpperCase(Trim(material_id)));
  getReportData(cdsList,strsql);
  dbgList.DataController.CreateAllItems;
  }
  if CliDM.Pub_ReportQuery('subsidiary_trace_reportFrm',UserInfo.Warehouse_FID,begindate,enddate,Trim(ed_SubBill.Text),material_id,TDataSet(cdsList),ErrMsg)   then
  begin
    dbgList.DataController.CreateAllItems;
  end;

end;

procedure Tsubsidiary_trace_reportFrm.setGridFieldcaption;
begin
  inherited;
  //Visible
  if dbgList.GetColumnByFieldName('fwarehouseid')<>nil then
  begin
    dbgList.GetColumnByFieldName('fwarehouseid').Tag:=2;
    dbgList.GetColumnByFieldName('fwarehouseid').Visible:=False;
    dbgList.GetColumnByFieldName('material_id').Visible:=False;
  end;
  // Caption
  if dbgList.GetColumnByFieldName('subnumber')<> nil then
    dbgList.GetColumnByFieldName('subnumber').Caption:='�������뵥��';
  if dbgList.GetColumnByFieldName('bizdate')<> nil then
     dbgList.GetColumnByFieldName('bizdate').Caption:='��������';
  if dbgList.GetColumnByFieldName('auditoruser')<> nil then
    dbgList.GetColumnByFieldName('auditoruser').Caption:='�������������';
  if  dbgList.GetColumnByFieldName('remark')<> nil then
    dbgList.GetColumnByFieldName('remark').Caption:='��ע';
  if dbgList.GetColumnByFieldName('matNum') <> nil then
    dbgList.GetColumnByFieldName('matNum').Caption:='��Ʒ���';
  if dbgList.GetColumnByFieldName('matName') <> nil then
    dbgList.GetColumnByFieldName('matName').Caption:='��Ʒ����';
  if dbgList.GetColumnByFieldName('prdctcolor') <> nil  then
    dbgList.GetColumnByFieldName('prdctcolor').Caption:='��ɫ';
  if  dbgList.GetColumnByFieldName('prdctsize')<> nil then
    dbgList.GetColumnByFieldName('prdctsize').Caption:='����';
  if dbgList.GetColumnByFieldName('prdctcup')<> nil  then
    dbgList.GetColumnByFieldName('prdctcup').Caption:='�ڳ�';
  if cdsList.FindField('prdctpackname')<>nil then  dbgList.GetColumnByFieldName('prdctpackname').Caption:='����';
  if cdsList.FindField('subpacknum')<>nil then  dbgList.GetColumnByFieldName('subpacknum').Caption:='������������';
  if cdsList.FindField('subqty')<>nil then  dbgList.GetColumnByFieldName('subqty').Caption:='������������';
  if cdsList.FindField('subunit')<>nil then  dbgList.GetColumnByFieldName('subunit').Caption:='��λ';
  if cdsList.FindField('tsfnumber')<>nil then dbgList.GetColumnByFieldName('tsfnumber').Caption:='��������';
  if cdsList.FindField('tsfpacknum')<>nil then dbgList.GetColumnByFieldName('tsfpacknum').Caption:='��������';
  if cdsList.FindField('tsfqty')<>nil then dbgList.GetColumnByFieldName('tsfqty').Caption:='��������';
  if cdsList.FindField('outnumber')<>nil then dbgList.GetColumnByFieldName('outnumber').Caption:='�������ⵥ��';
  if cdsList.FindField('outpacknum')<>nil then dbgList.GetColumnByFieldName('outpacknum').Caption:='������������';
  if cdsList.FindField('outqty')<>nil then dbgList.GetColumnByFieldName('outqty').Caption:='������������';
  if cdsList.FindField('innumber')<>nil then dbgList.GetColumnByFieldName('innumber').Caption:='������ⵥ��';
  if cdsList.FindField('inpacknum')<>nil then  dbgList.GetColumnByFieldName('inpacknum').Caption:='�����������';
  if cdsList.FindField('inqty')<>nil then  dbgList.GetColumnByFieldName('inqty').Caption:='�����������';
  if cdsList.FindField('INAUDIT')<>nil then  dbgList.GetColumnByFieldName('INAUDIT').Caption:='������������';


end;

procedure Tsubsidiary_trace_reportFrm.FormShow(Sender: TObject);
begin
  inherited;
  tpBegin.DateTime:= DateUtils.Incday(Now,-6);
  tpEnd.DateTime:= Now;
end;

procedure Tsubsidiary_trace_reportFrm.bt_materialPropertiesButtonClick(
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

procedure Tsubsidiary_trace_reportFrm.bt_materialPropertiesChange(
  Sender: TObject);
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
    sql:= 'select a.fid,a.fnumber,a.fname_l2 from T_BD_MATERIAL a where upper(a.fnumber)='''+uppercase(trim(bt_material.Text))+'''';

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

end.
