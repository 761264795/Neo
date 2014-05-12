unit uBusinessDataC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uReportBaseFrm, 
  DB,     
  Menus, StdCtrls, 
  
  cxGridCustomTableView, cxGridDBTableView, 
  ComCtrls, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxLookAndFeelPainters, ADODB, cxButtons,
  jpeg, ExtCtrls, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridTableView, cxGrid, ActnList, DBClient;

type
  TBusinessDcFrm = class(TReportBaseFrm)
    Label2: TLabel;
    tpBegin: TDateTimePicker;
    Label3: TLabel;
    tpEnd: TDateTimePicker;
    delRow: TMenuItem;
    delAll: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure dbgListCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure delRowClick(Sender: TObject);
    procedure delAllClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
     procedure opendata;override;
     procedure setGridFieldcaption;override;
     procedure delData(fid:string);
  end;

var
  BusinessDcFrm: TBusinessDcFrm;

implementation
uses FrmCliDM,DateUtils,uBusinessDataCollection;
{$R *.dfm}

{ TBusinessDcFrm }

procedure TBusinessDcFrm.opendata;
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
  dbgList.ClearItems;
  strsql:='select w.fname_l2 as wName,u.fname_l2 as userName, '
         +' A.fid, to_char(A.fbizdate,''YYYY-MM-DD'') AS fbizdate, A.fcompany, A.fbrand, A.fcategorys, A.faddress,'
         +' A.fnumberofbusiness, A.ftraffic, A.fsales, A.fsalesamount, A.fdes,'
         +' A.fcreated, A.fcreatedwarehouse, A.fsellwellcolor, A.fsellwellmaterial, to_char(A.fcreatedate,''YYYY-MM-DD'') AS fcreatedate  '
         +' from T_Bil_BusinessDataCollection a left join T_DB_WAREHOUSE w on  a.FcreatedWarehouse=w.fid '
         +' left join T_PM_USER u on a.Fcreated=u.fid'
         +' where FcreatedWarehouse='+Quotedstr(userinfo.Warehouse_FID)
         +' and to_char(a.FBIZDate,''yyyy-mm-dd'')>='''+begindate+''' and to_char(a.FBIZDate,''yyyy-mm-dd'')<='''+enddate+'''';
  getReportData(cdsList,strsql);
  dbgList.DataController.CreateAllItems;
end;

procedure TBusinessDcFrm.setGridFieldcaption;
begin
  inherited;
  dbgList.GetColumnByFieldName('wName').Caption:='店铺名称';
  dbgList.GetColumnByFieldName('userName').Caption:='创建人';
  dbgList.GetColumnByFieldName('FBIZDate').Caption:='营业日期';
  dbgList.GetColumnByFieldName('FCompany').Caption:='销售公司';
  dbgList.GetColumnByFieldName('FBrand').Caption:='品牌';
  dbgList.GetColumnByFieldName('FCategorys').Caption:='品类';
  dbgList.GetColumnByFieldName('FSales').Caption:='成交数量';
  dbgList.GetColumnByFieldName('FSalesAmount').Caption:='成交金额';
  dbgList.GetColumnByFieldName('Fdes').Caption:='其它信息说明';
  dbgList.GetColumnByFieldName('Fcreated').Visible:=False;
  dbgList.GetColumnByFieldName('FcreatedWarehouse').Visible:=False;
  dbgList.GetColumnByFieldName('FSellwellColor').Caption:='畅销颜色';
  dbgList.GetColumnByFieldName('FSellwellmaterial').Caption:='畅销商品编号';
  dbgList.GetColumnByFieldName('FcreateDate').Caption:='创建日期';
  dbgList.GetColumnByFieldName('FAddress').Caption:='店铺地址';
  dbgList.GetColumnByFieldName('FNumberofbusiness').Caption:='营业员人数';
  dbgList.GetColumnByFieldName('FTraffic').Caption:='客流量';
end;

procedure TBusinessDcFrm.FormShow(Sender: TObject);
begin
  inherited;
  tpBegin.DateTime:= DateUtils.Incday(Now,-6);
  tpEnd.DateTime:= Now;
end;

procedure TBusinessDcFrm.dbgListCellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  if not UserInfo.Is_SysOnline then
  begin
    ShowMessage('本功能只能在线时使用！');
    Abort;
  end;
  try
    Application.CreateForm(TBusinessDataCollectionFrm,BusinessDataCollectionFrm);
    BusinessDataCollectionFrm.cdsList:=cdsList;
    BusinessDataCollectionFrm.ShowModal;
  finally
    BusinessDataCollectionFrm.Free;
  end;
end;

procedure TBusinessDcFrm.delData(fid: string);
var sql,errmsg:string;
begin
  sql:='delete from T_Bil_BusinessDataCollection where FID='+Quotedstr(Trim(FID));
  if not CliDM.Get_ExecSQL(sql,errmsg) then
  begin
    ShowMessage(PChar('数据删除失败,原因:'+errmsg+sql));
    Abort;
  end;
end;

procedure TBusinessDcFrm.delRowClick(Sender: TObject);
begin
  inherited;
  if not cdsList.IsEmpty then
  begin
    if Application.MessageBox('确认删除商业信息数据?(Y/N)','金蝶提示',MB_YESNO)=id_NO then Abort;
    delData(cdsList.fieldbyname('fid').AsString);
    cdsList.Delete;
  end;
end;

procedure TBusinessDcFrm.delAllClick(Sender: TObject);
begin
  inherited;
  if not cdsList.IsEmpty then
  begin
    if Application.MessageBox('确认删除商业信息数据?(Y/N)','金蝶提示',MB_YESNO)=id_NO then Abort;
    while not cdsList.IsEmpty do
    begin
      delData(cdsList.fieldbyname('fid').AsString);
      cdsList.Delete;
    end;
  end;
end;

end.
