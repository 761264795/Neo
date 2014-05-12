unit uTransf_trace_report;

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
  Ttransf_trace_reportFrm = class(TReportBaseFrm)
    Label2: TLabel;
    tpBegin: TDateTimePicker;
    tpEnd: TDateTimePicker;
    Label3: TLabel;
    Label5: TLabel;
    bt_material: TcxButtonEdit;
    lb_matinfo: TLabel;
    Label4: TLabel;
    ed_outBill: TcxTextEdit;
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
  transf_trace_reportFrm: Ttransf_trace_reportFrm;

implementation
uses FrmCliDM,DateUtils,uMaterialListFrm;
{$R *.dfm}

{ Ttransf_trace_reportFrm }

procedure Ttransf_trace_reportFrm.opendata;
var strsql:string;
    begindate,enddate,errmsg:string;
begin
  inherited;
  Self.is_setsizecaption:=False;
  begindate:=FormatDateTime('yyyy-mm-dd',tpBegin.DateTime);
  enddate:= FormatDateTime('yyyy-mm-dd',tpEnd.DateTime);
  dbgList.ClearItems;
  {
  strsql:='select * from V_transf_trace_report where fwarehouseid='+QuotedStr(UserInfo.Warehouse_FID)
          +'  and to_char(bizdate,''yyyy-mm-dd'')>='''+begindate+''''
          +'  and to_char(bizdate,''yyyy-mm-dd'')<='''+enddate+'''' ;

  if Trim(ed_outBill.Text)<>'' then strsql:=strsql+' and upper(subnumber)='+Quotedstr(UpperCase(Trim(ed_outBill.Text)));
  if material_id<>'' then  strsql:=strsql+' and upper(material_id)='+Quotedstr(UpperCase(Trim(material_id)));
  getReportData(cdsList,strsql);
  dbgList.DataController.CreateAllItems;
  }
  if CliDM.Pub_ReportQuery('transf_trace_reportFrm',UserInfo.Warehouse_FID,begindate,enddate,Trim(ed_outBill.Text),material_id,TDataSet(cdsList),ErrMsg)   then
  begin
    dbgList.DataController.CreateAllItems;
  end;
end;

procedure Ttransf_trace_reportFrm.setGridFieldcaption;
begin
  inherited;
  //Visible
  dbgList.GetColumnByFieldName('fwarehouseid').Tag:=2;
  dbgList.GetColumnByFieldName('fwarehouseid').Visible:=False;
  dbgList.GetColumnByFieldName('material_id').Visible:=False;
  // Caption
  dbgList.GetColumnByFieldName('subnumber').Caption:='�������ⵥ��';
  dbgList.GetColumnByFieldName('bizdate').Caption:='������������';
  dbgList.GetColumnByFieldName('auditoruser').Caption:='�������������';
  dbgList.GetColumnByFieldName('remark').Caption:='��ע';
  dbgList.GetColumnByFieldName('matNum').Caption:='��Ʒ���';
  dbgList.GetColumnByFieldName('matName').Caption:='��Ʒ����';
  dbgList.GetColumnByFieldName('prdctcolor').Caption:='��ɫ';
  dbgList.GetColumnByFieldName('prdctsize').Caption:='����';
  dbgList.GetColumnByFieldName('prdctcup').Caption:='�ڳ�';
  dbgList.GetColumnByFieldName('prdctpackname').Caption:='����';
  dbgList.GetColumnByFieldName('subunit').Caption:='��λ';
  dbgList.GetColumnByFieldName('outpacknum').Caption:='������������';
  dbgList.GetColumnByFieldName('outqty').Caption:='������������';

  dbgList.GetColumnByFieldName('innumber').Caption:='������ⵥ��';
  dbgList.GetColumnByFieldName('inAudit').Caption:='������������';
  dbgList.GetColumnByFieldName('inpacknum').Caption:='�����������';
  dbgList.GetColumnByFieldName('inqty').Caption:='�����������';

  if dbgList.DataController.DataSet.FindField('OutWareNumber')<>nil then
  dbgList.GetColumnByFieldName('OutWareNumber').Caption:='����ֿ���';
  if dbgList.DataController.DataSet.FindField('OutWareName')<>nil then
  dbgList.GetColumnByFieldName('OutWareName').Caption:='����ֿ�����';
  if dbgList.DataController.DataSet.FindField('InWareNumber')<>nil then
  dbgList.GetColumnByFieldName('InWareNumber').Caption:='���ֿ���';
  if dbgList.DataController.DataSet.FindField('InWareName')<>nil then
  dbgList.GetColumnByFieldName('InWareName').Caption:='���ֿ�����';
end;

procedure Ttransf_trace_reportFrm.FormShow(Sender: TObject);
begin
  inherited;
  tpBegin.DateTime:= DateUtils.Incday(Now,-6);
  tpEnd.DateTime:= Now;
end;

procedure Ttransf_trace_reportFrm.bt_materialPropertiesButtonClick(
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

procedure Ttransf_trace_reportFrm.bt_materialPropertiesChange(
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
