unit uDayBalance;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uReportBaseFrm,
  StdCtrls,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, 
  ComCtrls, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, Menus, cxLookAndFeelPainters, ADODB,
  cxButtons, jpeg, ExtCtrls, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGrid, ActnList, DBClient;

type
  TDayBalanceFrm = class(TReportBaseFrm)
    Label2: TLabel;
    tpBegin: TDateTimePicker;
    Label3: TLabel;
    tpEnd: TDateTimePicker;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure opendata;override;
    procedure setGridFieldcaption;override;
  end;

var
  DayBalanceFrm: TDayBalanceFrm;

implementation
uses FrmCliDM,DateUtils;
{$R *.dfm}

{ TDayBalanceFrm }

procedure TDayBalanceFrm.opendata;
var strsql:string;
    begindate,enddate,errmsg:string;
begin
  inherited;
  Self.is_setsizecaption:=False;
  begindate:=FormatDateTime('yyyy-mm-dd',tpBegin.DateTime);
  enddate:= FormatDateTime('yyyy-mm-dd',tpEnd.DateTime);
  dbgList.ClearItems;
  strsql:='SELECT C.Begindate, CASE WHEN (RECEVINGTYPEID=''找零金额'') '
          +' OR (RECEVINGTYPEID=''抹零金额'') THEN RECEVINGTYPEID  ELSE D.FNAME_L2 END AS FNAME_L2,C.CF_MONEY  '
          +' FROM(SELECT A.BeginDate, B.RECEVINGTYPEID,B.CF_MONEY FROM T_POS_DayBalance A,T_POS_DayBalanceEntry B '
          +' WHERE A.FID=B.FPARENTID '
          +' AND A.FWarehouseID='+QuotedStr(UserInfo.Warehouse_FID)
          +' and to_char(A.BeginDate,''yyyy-mm-dd'')>='''+begindate+''''
          +' and to_char(A.BeginDate,''yyyy-mm-dd'')<='''+enddate+''''
          +' ) C LEFT OUTER JOIN CT_SBA_SHOPRECEIVETYPE D ON C.RECEVINGTYPEID=D.FID ';
    getReportData(cdsList,strsql);
    dbgList.DataController.CreateAllItems;
end;

procedure TDayBalanceFrm.setGridFieldcaption;
begin
  inherited;
  if dbgList.GetColumnByFieldName('Begindate')<> nil then
  begin
    dbgList.GetColumnByFieldName('Begindate').Caption:='日结日期';
    dbgList.GetColumnByFieldName('Begindate').Options.CellMerging:=True;
  end;
  if dbgList.GetColumnByFieldName('FNAME_L2') <> nil then
  dbgList.GetColumnByFieldName('FNAME_L2').Caption:='收银信息';
  if dbgList.GetColumnByFieldName('CF_MONEY') <> nil then
  dbgList.GetColumnByFieldName('CF_MONEY').Caption:='金额';
end;

procedure TDayBalanceFrm.FormShow(Sender: TObject);
begin
  inherited;
  tpBegin.DateTime:= DateUtils.Incday(Now,-6);
  tpEnd.DateTime:= Now;
end;

end.
