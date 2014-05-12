unit uTSView;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBaseEditFrm, ExtCtrls, DB, DBClient, StdCtrls, jpeg, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  Buttons;

type
  TTSViewFrm = class(TSTBaseEdit)
    Panel1: TPanel;
    Image4: TImage;
    lb_BillNo: TLabel;
    Label2: TLabel;
    cxGrid2: TcxGrid;
    ctb_Diff: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    dsDiffQty: TDataSource;
    cdsDiffQty: TClientDataSet;
    btn_excel: TSpeedButton;
    tmr1: TTimer;
    procedure FormShow(Sender: TObject);
    procedure btn_excelClick(Sender: TObject);
    procedure tmr1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    BillFID:string;
  end;

var
  TSViewFrm: TTSViewFrm;
  procedure CallViewDiff(_FID,billNo:string);
implementation
    uses FrmCliDM,Pub_Fun,uExportExcelFrm;
{$R *.dfm}
procedure CallViewDiff(_FID,billNo:string);
begin
  try
    Application.CreateForm(TTSViewFrm,TSViewFrm);
    TSViewFrm.BillFID:=_FID;
    TSViewFrm.lb_BillNo.Caption:='当前入库单号:'+billNo;
    TSViewFrm.ShowModal;
  finally
    TSViewFrm.Free;
  end;
end;
procedure TTSViewFrm.FormShow(Sender: TObject);
var _sql,ErrorMsg:string;
begin
  inherited;
  _sql:='select pf.fnumber as 途损单号,mat.fnumber as 物料编号,mat.fname_l2 as 物料名称,'
       +'  b.ff21 as 颜色编号,b.ff11 as 颜色名称,b.ff12 as 尺码, '
       +'  b.ff13 as 内长,a.cfqty as 差异数量,a.cfdescription as 差异原因'
       +'  from t_Im_Profitlossentry a  left join t_bd_asstattrvalue b  '
       +'  on a.fassistpropertyid = b.fid  left join t_bd_material mat  on a.fmaterialid = mat.fid '
       +'  left join t_Im_Profitloss pf on a.fparentid=pf.fid '
       +'  where pf.FSOURCEBILLID='+QuotedStr(BillFID)+' order by mat.fnumber ';
  CliDM.Get_OpenSQL(cdsDiffQty,_sql,ErrorMsg);
  if ErrorMsg<>'' then
  begin
    ShowMsg(Handle, '打开途损单明细出错! '+ErrorMsg,[]);
    Abort;
  end;
  if cdsDiffQty.IsEmpty then
  begin
    ShowMsg(Handle, '当前单据没有途损单! ',[]);
    tmr1.Enabled:=True;
  end
  else
  begin
    ctb_Diff.DataController.CreateAllItems();
    ctb_Diff.GetColumnByFieldName('途损单号').Width:=160;
    ctb_Diff.GetColumnByFieldName('物料编号').Width:=80;
    ctb_Diff.GetColumnByFieldName('物料名称').Width:=140;
    ctb_Diff.GetColumnByFieldName('颜色编号').Width:=60;
    ctb_Diff.GetColumnByFieldName('颜色名称').Width:=80;
    ctb_Diff.GetColumnByFieldName('尺码').Width:=40;
    ctb_Diff.GetColumnByFieldName('内长').Width:=40;
    ctb_Diff.GetColumnByFieldName('差异数量').Width:=80;
    ctb_Diff.GetColumnByFieldName('差异原因').Width:=100;
  end;
end;

procedure TTSViewFrm.btn_excelClick(Sender: TObject);
var str:string;
begin
  if ctb_Diff.DataController.DataSource.DataSet.IsEmpty then Exit;
  str:='途损明细';
  callExcelExport(nil,ctb_Diff,str);
end;

procedure TTSViewFrm.tmr1Timer(Sender: TObject);
begin
  inherited;
  Self.Hide;
  Self.Close;
end;

end.
