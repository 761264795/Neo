unit uFrm_Order_trace_report;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uReportBaseFrm, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, Menus,
  cxLookAndFeelPainters, DBClient, ActnList, ADODB, StdCtrls, cxButtons,
  jpeg, ExtCtrls, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxMaskEdit, cxButtonEdit, cxContainer, cxTextEdit, ComCtrls;

type
  TOrder_trace_reportFrm = class(TReportBaseFrm)
    Image3: TImage;
    Label2: TLabel;
    tpBegin: TDateTimePicker;
    Label3: TLabel;
    tpEnd: TDateTimePicker;
    Label4: TLabel;
    ed_SubBill: TcxTextEdit;
    Label5: TLabel;
    bt_material: TcxButtonEdit;
    lb_matinfo: TLabel;
    procedure bt_materialExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bt_materialPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure bt_materialPropertiesChange(Sender: TObject);
  private
    { Private declarations }
    FMaterialid : string;
  public
    procedure opendata;override;
    procedure setGridFieldcaption;override;
  end;

var
  Order_trace_reportFrm: TOrder_trace_reportFrm;

implementation
    uses FrmCliDM,Pub_Fun,DateUtils,uMaterialListFrm;
{$R *.dfm}

procedure TOrder_trace_reportFrm.opendata;
var
  Data: OleVariant;
  errmsg,BeginDate,EndDate:string;
  Result:Boolean;
begin
  Result := True;
  Result := CliDM.ConnectSckCon(ErrMsg);
  if not Result then exit;
  BeginDate:=FormatDateTime('yyyy-mm-dd',tpBegin.DateTime);
  EndDate:=FormatDateTime('yyyy-mm-dd',tpEnd.DateTime);
  try
    if not CliDM.Pub_ReportQuery('Order_trace_reportFrm',UserInfo.Warehouse_FID,BeginDate, EndDate,Trim(ed_SubBill.Text),'', TDataSet(cdsList),errmsg) then
    begin
      Gio.AddShow(Format('��ѯ�������ٱ��� - ����%s', [ErrMsg]));
      ShowMsg(Handle,ErrMsg,[]);
    end;
  finally
    if CliDM.SckCon.Connected then CliDM.SckCon.Close;
  end;
end;


procedure TOrder_trace_reportFrm.setGridFieldcaption;
begin
  inherited;
  with cdsList do
  begin
    if FindField('PurOrderNumber')<>nil then
    begin
      dbgList.GetColumnByFieldName('PurOrderNumber').Caption := '�ɹ��������';
      dbgList.GetColumnByFieldName('PurOrderNumber').Width := 150;
    end;

    if FindField('bizdate')<>nil then dbgList.GetColumnByFieldName('bizdate').Caption := 'ҵ������';
    if FindField('JMSCompany')<>nil then dbgList.GetColumnByFieldName('JMSCompany').Caption := '�����̲�����֯';
    if FindField('MaterialNumber')<>nil then dbgList.GetColumnByFieldName('MaterialNumber').Caption := '��Ʒ���';
    if FindField('MaterialName')<>nil then dbgList.GetColumnByFieldName('MaterialName').Caption := '��Ʒ����';
    if FindField('PurOrderQty')<>nil then dbgList.GetColumnByFieldName('PurOrderQty').Caption := '�ɹ���������';
    if FindField('OrderNumber')<>nil then dbgList.GetColumnByFieldName('OrderNumber').Caption := '�۶�������';
    if FindField('OrderAuditTime')<>nil then dbgList.GetColumnByFieldName('OrderAuditTime').Caption := '���۶����������';
    if FindField('OrderAudit')<>nil then dbgList.GetColumnByFieldName('OrderAudit').Caption := '���۶��������';
    if FindField('OrderQTY')<>nil then dbgList.GetColumnByFieldName('OrderQTY').Caption := '���۶�������';
    if FindField('ZBCompany')<>nil then dbgList.GetColumnByFieldName('ZBCompany').Caption := '�ܲ�������֯';
    if FindField('SaleNumber')<>nil then dbgList.GetColumnByFieldName('SaleNumber').Caption := '�ܲ����۳��ⵥ��';
    if FindField('SaleAuditTime')<>nil then dbgList.GetColumnByFieldName('SaleAuditTime').Caption := '���۳����������';
    if FindField('SaleAuditName')<>nil then dbgList.GetColumnByFieldName('SaleAuditName').Caption := '���۳��������';


    if FindField('OutHouseNumber')<>nil then dbgList.GetColumnByFieldName('OutHouseNumber').Caption := '�����ֿ���';
    if FindField('OutHouseName')<>nil then dbgList.GetColumnByFieldName('OutHouseName').Caption := '�����ֿ�����';
    if FindField('SaleQty')<>nil then dbgList.GetColumnByFieldName('SaleQty').Caption := '���۳�������';
    
    if FindField('PurFnumber')<>nil then dbgList.GetColumnByFieldName('PurFnumber').Caption := '�ɹ��ջ�����';
    if FindField('PurQty')<>nil then dbgList.GetColumnByFieldName('PurQty').Caption := '�ɹ��ջ�����';
    if FindField('PurAuditTime')<>nil then dbgList.GetColumnByFieldName('PurAuditTime').Caption := '�ɹ��ջ��������';
    if FindField('PurAuditName')<>nil then dbgList.GetColumnByFieldName('PurAuditName').Caption := '�ɹ��ջ������';
    if FindField('FWAREHOUSEID')<>nil then dbgList.GetColumnByFieldName('FWAREHOUSEID').Visible := False;
  end;
end;

procedure TOrder_trace_reportFrm.bt_materialExit(Sender: TObject);
var sql : string;
begin
  inherited;
  if  Trim(bt_material.Text)='' then
  begin
    Fmaterialid:='';
    lb_matinfo.Caption:='';
    Exit;
  end;
  
  if Fmaterialid='' then
  begin
    sql:= 'select a.fid,a.fnumber,a.fname_l2 from T_BD_MATERIAL a where a.fnumber='''+trim(bt_material.Text)+'''';
    with  CliDM.Client_QuerySQL(sql) do
    begin
      Fmaterialid := FieldByName('FID').AsString;
      lb_matinfo.Caption:= fieldbyname('fname_l2').AsString;
    end;
  end;
end;

procedure TOrder_trace_reportFrm.FormCreate(Sender: TObject);
begin
  inherited;
  tpBegin.Date := DateUtils.IncWeek(Now,-1);
  tpEnd.Date := Now;
end;

procedure TOrder_trace_reportFrm.bt_materialPropertiesButtonClick(
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
      FMaterialid:=rst  ;
      lb_matinfo.Caption:='';
    end;
    if trim(FMaterialid)='' then Abort;
    cds:=TClientDataSet.Create(nil);
    try
      sql:= 'select a.fnumber,a.fname_l2 from T_BD_MATERIAL a where a.fid='''+trim(FMaterialid)+'''';

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

procedure TOrder_trace_reportFrm.bt_materialPropertiesChange(
  Sender: TObject);
var sql,errmsg,showmsg:string;
begin
  inherited;
  if  Trim(bt_material.Text)='' then
  begin
    FMaterialid:='';
    lb_matinfo.Caption:='';
  end;
  
  sql:= 'select a.fid,a.fnumber,a.fname_l2 from T_BD_MATERIAL a where a.fnumber='''+trim(bt_material.Text)+'''';
  with  CliDM.Client_QuerySQL(sql) do
  begin
    FMaterialid := FieldByName('FID').AsString;
    showmsg:= fieldbyname('fname_l2').AsString;
    lb_matinfo.Caption:=showmsg;
  end;

end;

end.
