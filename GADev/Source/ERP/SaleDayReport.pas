unit SaleDayReport;

interface

uses
  SysUtils, Variants, Classes, Controls, Forms,
  Dialogs, uReportBaseFrm, 
  DB,
  StdCtrls, 
  
  cxGridCustomTableView, cxGridDBTableView, 
  ComCtrls, 
  
  Graphics, 
  cxDBData, Menus, ADODB,
  cxButtons, ExtCtrls, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridTableView, cxGrid, ActnList, DBClient, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
  cxLookAndFeelPainters, jpeg;

type
  TSaleDayReportFrm = class(TReportBaseFrm)
    Label2: TLabel;
    tpBegin: TDateTimePicker;
    Label3: TLabel;
    tpEnd: TDateTimePicker;
    lb_Name: TLabel;
    lb_paymentmoney: TLabel;
    seeSrcBill: TMenuItem;
    procedure btOKClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure seeSrcBillClick(Sender: TObject);
    procedure dbgListCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
    cfpaymentmoney : double;
  public
    { Public declarations }
    procedure opendata;override;
    procedure setGridFieldcaption;override;
  end;

var
  SaleDayReportFrm: TSaleDayReportFrm;

implementation
 uses FrmCliDM,DateUtils,uPOSEditFrm;
{$R *.dfm}

{ TSaleDayReportFrm }

procedure TSaleDayReportFrm.opendata;
var
  Data: OleVariant;
  errmsg,BeginDate,EndDate,billNo:string;
  Result:Boolean;
begin
  BeginDate:=FormatDateTime('yyyy-mm-dd',tpBegin.DateTime);
  EndDate:=FormatDateTime('yyyy-mm-dd',tpEnd.DateTime);
  Gio.AddShow(Format('查询销售日报表数据 - 开始：%s', ['rt_saleAyRtport']));
  if CliDM.Pub_ReportQuery('SaleDayReportFrm',UserInfo.Warehouse_FID, BeginDate, EndDate,'','',TDataSet(cdsList),errmsg,'','','ADODataSet') then
     dbgList.DataController.CreateAllItems
  else
  Gio.AddShow(Format('查询销售日报表 - 出错：%s', [ErrMsg]));

    {
    try
      Result := True;
      Result := CliDM.ConnectSckCon(ErrMsg);
      if not Result then exit;
      CliDM.SckCon.AppServer.rt_saleAyRtport(BeginDate, EndDate,UserInfo.Warehouse_FID, data,errmsg);
      if Result then
      begin
        Gio.AddShow(Format('查询销售日报表 - 完成：%s', ['rt_saleAyRtport']));
        try
          setReportData(cdslist,data);
          lb_paymentmoney.Caption := FloatToStr(cfpaymentmoney);
        except
          on e : Exception do
          begin
            ErrMsg := e.Message;
            Gio.AddShow(Format('查询销售日报表 - 出错：%s', [ErrMsg]));
            Result := False;
          end;
        end;
      end
      else
      Gio.AddShow(Format('查询销售日报表 - 出错：%s', [ErrMsg]));

      finally
      if CliDM.SckCon.Connected then CliDM.SckCon.Close;
      end;
   }
end;

procedure TSaleDayReportFrm.btOKClick(Sender: TObject);
begin
  if (tpBegin.Date=null) or (tpEnd.Date=null) then
  begin
    ShowMessage('起止日期不能为空!');
    Exit;
  end;
  inherited;

end;

procedure TSaleDayReportFrm.setGridFieldcaption;
begin
  inherited;

  if dbgList.DataController.DataSource.DataSet.FindField('yearcount') <> nil then
  begin
    dbgList.GetColumnByFieldName('yearcount').Caption:='年份';
    dbgList.GetColumnByFieldName('yearcount').Width:=40;
   // dbgList.GetColumnByFieldName('yearcount').Options.CellMerging :=True;
  end;

  if dbgList.DataController.DataSource.DataSet.FindField('MT') <> nil then
  begin
    dbgList.GetColumnByFieldName('MT').Caption:='月份';
    dbgList.GetColumnByFieldName('MT').Width:=40;
    //dbgList.GetColumnByFieldName('MT').Options.CellMerging :=True;
  end;

  if dbgList.DataController.DataSource.DataSet.FindField('weekcount') <> nil then
  begin
    dbgList.GetColumnByFieldName('weekcount').Caption:='周';
    dbgList.GetColumnByFieldName('weekcount').Width:=40;
    //dbgList.GetColumnByFieldName('weekcount').Options.CellMerging :=True;
  end;

  if dbgList.DataController.DataSource.DataSet.FindField('FBIZDATE') <> nil then
  begin
    dbgList.GetColumnByFieldName('FBIZDATE').Caption:='业务日期';
    //dbgList.GetColumnByFieldName('FBIZDATE').Options.CellMerging :=True;
  end;
  if dbgList.DataController.DataSource.DataSet.FindField('weekday') <> nil then
  begin
    dbgList.GetColumnByFieldName('weekday').Caption:='星期几';
   // dbgList.GetColumnByFieldName('weekday').Options.CellMerging :=True;
  end;
  if dbgList.DataController.DataSource.DataSet.FindField('bill_no') <> nil then
  begin
    dbgList.GetColumnByFieldName('bill_no').Caption:='零售单单号';
    dbgList.GetColumnByFieldName('bill_no').Width:=120;
    //dbgList.GetColumnByFieldName('bill_no').Options.CellMerging :=True;
  end;
  if dbgList.DataController.DataSource.DataSet.FindField('cfpaymentmoney') <> nil then
  begin
    dbgList.GetColumnByFieldName('cfpaymentmoney').Caption:='整单实收金额';
    //dbgList.GetColumnByFieldName('cfpaymentmoney').Options.CellMerging :=True;
  end;
  if dbgList.DataController.DataSource.DataSet.FindField('material_id') <> nil then
    dbgList.GetColumnByFieldName('material_id').Visible:=False;
  if dbgList.DataController.DataSource.DataSet.FindField('matNum') <> nil then
    dbgList.GetColumnByFieldName('matNum').Caption:='商品编号';
  if dbgList.DataController.DataSource.DataSet.FindField('matName') <> nil then
    dbgList.GetColumnByFieldName('matName').Caption:='商品名称';
  if dbgList.DataController.DataSource.DataSet.FindField('ff11') <> nil then
    dbgList.GetColumnByFieldName('ff11').Caption:='颜色';
  if dbgList.DataController.DataSource.DataSet.FindField('ff13') <> nil then
  begin
    dbgList.GetColumnByFieldName('ff13').Caption:='内长';
    dbgList.GetColumnByFieldName('ff13').Width:=50;
  end;
  if dbgList.DataController.DataSource.DataSet.FindField('cfprice') <> nil then
  dbgList.GetColumnByFieldName('cfprice').Caption:='吊牌价';
  if dbgList.DataController.DataSource.DataSet.FindField('cfsum_price') <> nil then
  dbgList.GetColumnByFieldName('cfsum_price').Caption:='吊牌金额';
  if dbgList.DataController.DataSource.DataSet.FindField('totalQty') <> nil then
  dbgList.GetColumnByFieldName('totalQty').Caption:='合计数量';
  if dbgList.DataController.DataSource.DataSet.FindField('GenName') <> nil then
  dbgList.GetColumnByFieldName('GenName').Caption:='类别';
  if dbgList.DataController.DataSource.DataSet.FindField('SeaName') <> nil then
  dbgList.GetColumnByFieldName('SeaName').Caption:='季节';
  if dbgList.DataController.DataSource.DataSet.FindField('cfstorageid') <> nil then
  dbgList.GetColumnByFieldName('cfstorageid').Visible:=False;

  if dbgList.DataController.DataSource.DataSet.FindField('RecevName1') <> nil then
  dbgList.GetColumnByFieldName('RecevName1').Caption:='现金';
  if dbgList.DataController.DataSource.DataSet.FindField('RecevName2') <> nil then
  dbgList.GetColumnByFieldName('RecevName2').Caption:='定金';
  if dbgList.DataController.DataSource.DataSet.FindField('RecevName3') <> nil then
  dbgList.GetColumnByFieldName('RecevName3').Caption:='银联';
  if dbgList.DataController.DataSource.DataSet.FindField('RecevName4') <> nil then
  dbgList.GetColumnByFieldName('RecevName4').Caption:='代金券';
  if dbgList.DataController.DataSource.DataSet.FindField('RecevNamE5') <> nil then
  dbgList.GetColumnByFieldName('RecevNamE5').Caption:='转账';

end;

procedure TSaleDayReportFrm.FormShow(Sender: TObject);
begin
  inherited;
  tpBegin.DateTime:= DateUtils.IncWeek(Now,-1);
  tpEnd.DateTime:= Now;
end;

procedure TSaleDayReportFrm.seeSrcBillClick(Sender: TObject);
var ErrMsg,biilNum,FID:string;
begin
  inherited;
  biilNum := cdsList.fieldbyname('bill_no').AsString;
  FID:=CliDM.Get_QueryReturn('select fid from CT_BIL_RetailPos a where a.fnumber='''+biilNum+'''',ErrMsg);
  if FID='' then Exit;
  EditPOSFrm(FID);
end;

procedure TSaleDayReportFrm.dbgListCellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var ErrMsg,biilNum,FID:string;
begin
  inherited;
  biilNum := cdsList.fieldbyname('bill_no').AsString;
  FID:=CliDM.Get_QueryReturn('select fid from CT_BIL_RetailPos a where a.fnumber='''+biilNum+'''',ErrMsg);
  if FID='' then Exit;
  EditPOSFrm(FID);
end;

end.
