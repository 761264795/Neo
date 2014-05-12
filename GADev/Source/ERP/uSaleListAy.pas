unit uSaleListAy;

interface

uses
  SysUtils, Variants, Classes, Controls, Forms,
  Dialogs, uReportBaseFrm, 
  DB,
  Menus, DBClient, StdCtrls, 
  
  cxGridCustomTableView, cxGridDBTableView, 
  cxButtonEdit, ComCtrls, 
  
  
  Graphics, 
  cxEdit, cxContainer,
  cxTextEdit, cxMaskEdit, ADODB, cxButtons, ExtCtrls, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGridTableView, cxGrid,
  ActnList, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxDBData, cxLookAndFeelPainters, jpeg;

type
  TSaleListAyFrm = class(TReportBaseFrm)
    Label2: TLabel;
    tpBegin: TDateTimePicker;
    Label3: TLabel;
    tpEnd: TDateTimePicker;
    cb_status: TComboBox;
    Label4: TLabel;
    bt_material: TcxButtonEdit;
    Label5: TLabel;
    ed_billNO: TEdit;
    Label6: TLabel;
    N1: TMenuItem;
    lb_matinfo: TLabel;
    seeSrcBill: TMenuItem;
    procedure bt_materialPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormShow(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure bt_materialPropertiesChange(Sender: TObject);
    procedure seeSrcBillClick(Sender: TObject);
    procedure dbgListCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
    material_id:string;
  public
    { Public declarations }
    procedure opendata;override;
    procedure setGridFieldcaption;override;
    procedure getPosBillInfo(bill_num:string);
  end;

var
  SaleListAyFrm: TSaleListAyFrm;

implementation
 uses FrmCliDM,DateUtils,uMaterialListFrm,uPOSEditFrm;
{$R *.dfm}

{ TSaleListAyFrm }

procedure TSaleListAyFrm.opendata;
var
  Data: OleVariant;
  errmsg,BeginDate,EndDate,billno:string;
  Result:Boolean;
  status: Integer;
begin
  Result := True;

  BeginDate:=FormatDateTime('yyyy-mm-dd',tpBegin.DateTime);
  EndDate:=FormatDateTime('yyyy-mm-dd',tpEnd.DateTime);
  if begindate> enddate then
  begin
    ShowMessage('开始日期不能大于结束日期');
    Abort;
  end;
  billno:=Trim(ed_billNO.Text);
  Gio.AddShow(Format('查询销售明细报表数据 - 开始：%s', ['rt_saleAyRtport']));
  if CliDM.Pub_ReportQuery('SaleListAyFrm',UserInfo.Warehouse_FID, BeginDate, EndDate,'',material_id,TDataSet(cdsList),ErrMsg,billno,'','ADODataSet') then
     dbgList.DataController.CreateAllItems
  else
  Gio.AddShow(Format('查询销售明细报表 - 出错：%s', [ErrMsg]));

  {
  if Trim(cb_status.Text)='' then  status:=0
  else
  if Trim(cb_status.Text)='审核' then status:=2 else status:=-1;

  Result := CliDM.ConnectSckCon(ErrMsg);
  if not Result then exit;
  try
    CliDM.SckCon.AppServer.rt_saleListAy(BeginDate, EndDate,billno,material_id, UserInfo.Warehouse_FID,status, data,errmsg);
    if Result then
    begin
      try
        setReportData(cdslist,data);
      except
        on e : Exception do
        begin
          ErrMsg := e.Message;
          Gio.AddShow(Format('查询销售日报表 - 出错：%s', [ErrMsg]));
          Result := False;
        end;
      end;
    end
    else Gio.AddShow(Format('查询销售日报表 - 出错：%s', [ErrMsg]));

  finally
    if CliDM.SckCon.Connected then CliDM.SckCon.Close;
  end;
  }
end;

procedure TSaleListAyFrm.setGridFieldcaption;
var I : integer;
begin
  inherited;
  for i := 0 to dbgList.ColumnCount-1 do
  begin
    if (dbgList.Columns[i].DataBinding.FieldName = '周数') or (dbgList.Columns[i].DataBinding.FieldName = '星期') then
    dbgList.Columns[i].Width := 45
    else
    if (dbgList.Columns[i].DataBinding.FieldName = '零售单号') or (dbgList.Columns[i].DataBinding.FieldName = '单据编号') then
    dbgList.Columns[i].Width := 140
    else
      dbgList.Columns[i].Width := 70;

  end;
 { dbgList.GetColumnByFieldName('yearcount').Caption:='年份';
  dbgList.GetColumnByFieldName('yearcount').Width:=40;
  //dbgList.GetColumnByFieldName('yearcount').Options.CellMerging :=True;
  dbgList.GetColumnByFieldName('MT').Caption:='月份';
  dbgList.GetColumnByFieldName('MT').Width:=40;
  //dbgList.GetColumnByFieldName('MT').Options.CellMerging :=True;
  dbgList.GetColumnByFieldName('weekcount').Caption:='周';
  dbgList.GetColumnByFieldName('weekcount').Width:=40;

 // dbgList.GetColumnByFieldName('weekcount').Options.CellMerging :=True;
  dbgList.GetColumnByFieldName('FBIZDATE').Caption:='业务日期';
  dbgList.GetColumnByFieldName('FBIZDATE').Width:=80;
 // dbgList.GetColumnByFieldName('FBIZDATE').Options.CellMerging :=True;
  dbgList.GetColumnByFieldName('weekday').Caption:='星期几';
  dbgList.GetColumnByFieldName('weekday').Width:=70;
 // dbgList.GetColumnByFieldName('weekday').Options.CellMerging :=True;
  dbgList.GetColumnByFieldName('material_id').Visible:=False;
  dbgList.GetColumnByFieldName('matNum').Caption:='商品编号';
  dbgList.GetColumnByFieldName('matName').Caption:='商品名称';
  dbgList.GetColumnByFieldName('ff11').Caption:='颜色';
  dbgList.GetColumnByFieldName('ff13').Caption:='内长';
  dbgList.GetColumnByFieldName('ff13').Width:=50;
  dbgList.GetColumnByFieldName('cfprice').Caption:='折后价';
  dbgList.GetColumnByFieldName('cfsum_price').Caption:='折后金额';
  dbgList.GetColumnByFieldName('totalQty').Caption:='合计数量';
  dbgList.GetColumnByFieldName('bill_no').Caption:='单据编号';

  dbgList.GetColumnByFieldName('PerName').Caption:='营业员';
  dbgList.GetColumnByFieldName('TYName').Caption:='年份';
  dbgList.GetColumnByFieldName('TSNAME').Caption:='季节';
  dbgList.GetColumnByFieldName('PNAME').Caption:='系列';
  dbgList.GetColumnByFieldName('INAME').Caption:='风格';
  dbgList.GetColumnByFieldName('SEXNAME').Caption:='性别';
  dbgList.GetColumnByFieldName('PGNAME').Caption:='价格段';
  dbgList.GetColumnByFieldName('PTLNAME').Caption:='产品线';
  dbgList.GetColumnByFieldName('GENRENAME').Caption:='类别';

  dbgList.GetColumnByFieldName('bill_no').Width:=120;
  dbgList.GetColumnByFieldName('istatus').Visible:=False;
  dbgList.GetColumnByFieldName('cfstorageid').Visible:=False;
   }
end;

procedure TSaleListAyFrm.bt_materialPropertiesButtonClick(Sender: TObject;
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

procedure TSaleListAyFrm.FormShow(Sender: TObject);
begin
  inherited;
  tpBegin.DateTime:= DateUtils.IncWeek(Now,-1);
  tpEnd.DateTime:= Now;
end;

procedure TSaleListAyFrm.getPosBillInfo(bill_num: string);
var sql,errmsg,showmsg:string;
    cds:TClientDataSet;
begin
  cds:=TClientDataSet.Create(nil);
  try
    sql:= 'select sum(nvl(c.cfamount,0)) as cfamount ,sum(nvl(c.cfagio_sum_price,0)) as cfagio_sum_price,'
         +' sum(nvl(c.cfzrmoney,0)) as cfzrmoney,sum(nvl(c.cfmouling_money,0)) as cfmouling_money , sum(nvl(c.CFPaymentMoney,0)) as CFPaymentMoney '
         +' from ( select max(a.CFPaymentMoney) as CFPaymentMoney  '
         +' ,sum(b.cfamount) as cfamount, '
         +' sum(b.cfagio_sum_price) as cfagio_sum_price ,   '
         +' max(a.cfmouling_money) as cfmouling_money,max(a.cfzrmoney) as cfzrmoney  '
         +' from Ct_Bil_Retailpos a left join Ct_Bil_Retailposentry b '
         +' on a.fid=b.fparentid  where 1=1 and a.fnumber='''+trim(bill_num)+''''
         +' group by a.fid)  c ';
    if  CliDM.Get_OpenSQL(cds,sql,errmsg) then
    begin
      if not cds.IsEmpty then
      begin
        showmsg:='POS零售单号:  '+ bill_num+''#13'';
        showmsg:=showmsg+'-----------------------------------------------'+''#13'' ;
        showmsg:=showmsg+'销售数量:  '+cds.fieldbyname('cfamount').AsString+ ''#13'';
        showmsg:=showmsg+'折后金额:  '+ FormatFloat('0.00',cds.fieldbyname('cfagio_sum_price').AsFloat)+''#13'';
        showmsg:=showmsg+'拆让金额:  '+ FormatFloat('0.00',cds.fieldbyname('cfzrmoney').AsFloat)+''#13'';
        showmsg:=showmsg+'抹零金额:  '+ FormatFloat('0.00',cds.fieldbyname('cfmouling_money').AsFloat)+''#13'';
        showmsg:=showmsg+'实收金额:  '+ FormatFloat('0.00',cds.fieldbyname('CFPaymentMoney').AsFloat)+''#13'';
        ShowMessage(showmsg);
      end;
    end;
  finally
    cds.Free;
  end;
end;

procedure TSaleListAyFrm.N1Click(Sender: TObject);
begin
  inherited;
  if cdsList.IsEmpty then Exit;
  getPosBillInfo(cdsList.fieldbyname('零售单号').AsString);
end;

procedure TSaleListAyFrm.bt_materialPropertiesChange(Sender: TObject);
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

procedure TSaleListAyFrm.seeSrcBillClick(Sender: TObject);
var ErrMsg,biilNum,FID:string;
begin
  inherited;
  biilNum := cdsList.fieldbyname('零售单号').AsString;
  FID:=CliDM.Get_QueryReturn('select fid from CT_BIL_RetailPos a where a.fnumber='''+biilNum+'''',ErrMsg);
  if FID='' then Exit;
  EditPOSFrm(FID);
end;

procedure TSaleListAyFrm.dbgListCellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var ErrMsg,biilNum,FID:string;
begin
  inherited;
  biilNum := cdsList.fieldbyname('零售单号').AsString;
  FID:=CliDM.Get_QueryReturn('select fid from CT_BIL_RetailPos a where a.fnumber='''+biilNum+'''',ErrMsg);
  if FID='' then Exit;
  EditPOSFrm(FID);
end;

end.
