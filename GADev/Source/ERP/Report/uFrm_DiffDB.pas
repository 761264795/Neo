unit uFrm_DiffDB;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBaseEditFrm, 
  DB, cxDBData, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, DBClient,
  ActnList, Menus, StdCtrls, ExtCtrls, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, jpeg;

type
  TFrm_DiffDB = class(TSTBaseEdit)
    cxGrid1: TcxGrid;
    dbgList: TcxGridDBBandedTableView;
    dbgAmount: TcxGridDBBandedTableView;
    lvDetail: TcxGridLevel;
    cdsList: TClientDataSet;
    dsList: TDataSource;
    ActionList1: TActionList;
    PopupMenu1: TPopupMenu;
    actOpenBill: TAction;
    N1: TMenuItem;
    Panel1: TPanel;
    actOpenDetail: TAction;
    cdsDetail: TClientDataSet;
    dsDetail: TDataSource;
    cxGrid2: TcxGrid;
    dbgDetail: TcxGridDBBandedTableView;
    cxGridDBBandedTableView2: TcxGridDBBandedTableView;
    cxGridLevel1: TcxGridLevel;
    N2: TMenuItem;
    dbgDetailColumn1: TcxGridDBBandedColumn;
    dbgDetailColumn2: TcxGridDBBandedColumn;
    dbgDetailColumn3: TcxGridDBBandedColumn;
    dbgDetailColumn4: TcxGridDBBandedColumn;
    dbgDetailColumn5: TcxGridDBBandedColumn;
    dbgDetailColumn6: TcxGridDBBandedColumn;
    dbgDetailColumn7: TcxGridDBBandedColumn;
    dbgDetailColumn8: TcxGridDBBandedColumn;
    Panel3: TPanel;
    Splitter1: TSplitter;
    Image1: TImage;
    Image2: TImage;
    Label1: TLabel;
    Label2: TLabel;
    procedure FormShow(Sender: TObject);
    procedure actOpenBillExecute(Sender: TObject);
    procedure dbgListDblClick(Sender: TObject);
    procedure actOpenDetailExecute(Sender: TObject);
    procedure cdsListAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_DiffDB: TFrm_DiffDB;

implementation
   uses FrmCliDM,uFrm_MoveIssueBill;
{$R *.dfm}

procedure TFrm_DiffDB.FormShow(Sender: TObject);
var strsql,errmsg : string;
begin
  inherited;
  try
     cdsList.AfterScroll:=nil;
     dbgList.ClearItems;
     strsql:='SELECT FID,FNUMBER 调拨出库单号,FBIZDate 开单时间,FDESCRIPTION 备注 FROM T_IM_MoveIssueBill A WHERE A.FBASESTATUS=4 '
              +'AND EXISTS(SELECT 1 FROM t_Im_Moveinwarehsbill WHERE fsourcebillid=A.FID AND FBASESTATUS=4) '
              +'AND EXISTS(SELECT 1 FROM T_IM_MoveIssueBillEntry WHERE FPARENTID=A.FID AND FQTY<>ftotalinwarehsqty) '
              +'AND EXISTS(SELECT 1 FROM T_IM_MoveIssueBillEntry WHERE FPARENTID=A.FID AND FWAREHOUSEID='+QuotedStr(Userinfo.Warehouse_FID)+')';

     CliDM.Get_OpenSQL(cdsList,strsql,errmsg);
     dbgList.DataController.CreateAllItems;
     dbgList.GetColumnByFieldName('FID').Visible := False;
     dbgList.GetColumnByFieldName('调拨出库单号').Width := 120;
     dbgList.GetColumnByFieldName('开单时间').Width := 100;
     dbgList.GetColumnByFieldName('备注').Width := 180;
     if cdsList.IsEmpty then exit;
     actOpenDetail.Execute;
  finally
    cdsList.AfterScroll:=cdsListAfterScroll;
  end;
end;

procedure TFrm_DiffDB.actOpenBillExecute(Sender: TObject);
begin
  inherited;
  EditMoveIssue_Frm(cdsList.fieldbyName('FID').AsString);
end;

procedure TFrm_DiffDB.dbgListDblClick(Sender: TObject);
begin
  inherited;
  if not dbgList.DataController.DataSource.DataSet.IsEmpty    then 
  actOpenBill.Execute;
end;

procedure TFrm_DiffDB.actOpenDetailExecute(Sender: TObject);
var strsql,errmsg,BillID: string;
begin
  inherited;
  // dbgDetail.ClearItems;
   BillID := cdsList.fieldbyName('FID').AsString;
   strsql:='SELECT D.FNUMBER 入库仓库,d.FNAME_L2 as 入库仓库名称,B.FNUMBER as 商品编码,B.FNAME_L2 AS 商品名称,C.FNUMBER 辅助属性编码,C.FNAME_L2 辅助属性名称'
            +',FBASEQTY 出库数量,FTOTALINWAREHSQTY 入库数量  '
            +' FROM T_IM_MoveIssueBillEntry A '
            +' LEFT OUTER JOIN T_BD_Material B ON A.FMATERIALID=B.FID'
            +' LEFT OUTER JOIN T_BD_AsstAttrValue C ON A.fassistpropertyid=C.FID'
            +' LEFT OUTER JOIN T_DB_WAREHOUSE D ON A.CFInWarehouseID=D.FID'
            +' WHERE fparentid='+QuotedStr(BillID)
            +' ORDER BY FMATERIALID,CFCOLORID,CFSIZESID,CFCUPID ';
   CliDM.Get_OpenSQL(cdsDetail,strsql,errmsg);
  // dbgDetail.DataController.CreateAllItems;

    dbgDetail.GetColumnByFieldName('入库仓库').Width := 150;
    dbgDetail.GetColumnByFieldName('入库仓库名称').Width := 150;
    dbgDetail.GetColumnByFieldName('商品编码').Width := 150;
    dbgDetail.GetColumnByFieldName('商品名称').Width := 150;
    dbgDetail.GetColumnByFieldName('辅助属性编码').Width := 200;
    dbgDetail.GetColumnByFieldName('辅助属性名称').Width := 200;
    dbgDetail.GetColumnByFieldName('出库数量').Width := 50;
    dbgDetail.GetColumnByFieldName('入库数量').Width := 50;

end;

procedure TFrm_DiffDB.cdsListAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if cdsList.IsEmpty then exit;
  actOpenDetail.Execute;
end;

end.
