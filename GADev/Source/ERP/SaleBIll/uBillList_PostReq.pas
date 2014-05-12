unit uBillList_PostReq;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Frm_BillListBase, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, cxHyperLinkEdit, Menus,
  cxLookAndFeelPainters, ADODB, ActnList, DBClient, jpeg, Series, TeEngine,
  TeeProcs, Chart, DbChart, StdCtrls, cxButtons, cxMaskEdit,
  cxDropDownEdit, Buttons, cxPC, cxContainer, cxTextEdit, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, ExtCtrls,FrmCliDM;

type
  TFM_BillListPostReq = class(TFM_BillListBase)
    procedure FormCreate(Sender: TObject);
    procedure btn_NewBillClick(Sender: TObject);
    procedure btn_DelBillClick(Sender: TObject);
    procedure spt_AuditClick(Sender: TObject);
    procedure spt_uAuditClick(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Open_Bill(KeyFields: String; KeyValues: String); override;
  end;

var
  FM_BillListPostReq: TFM_BillListPostReq;

implementation

uses uBillEditPostReq,Frm_BillEditBase,Pub_Fun, uSaleOrderToPostReq,
  uPostReqToIsSueFrm;

{$R *.dfm}
procedure TFM_BillListPostReq.Open_Bill(KeyFields: String; KeyValues: String);
var
  tmpEditForm : TEditFormPar;
begin
  inherited;
  tmpEditForm :=TEditFormPar.Create;
  tmpEditForm.BillFID := KeyValues;
  tmpEditForm.ListDataset := cdsList;
  OpenEditFrom(FM_BillEditPostReq,TFM_BillEditPostReq,tmpEditForm);
end;
procedure TFM_BillListPostReq.FormCreate(Sender: TObject);
begin
  inherited;
  Self.Bill_Sign := 't_Sd_Postrequisition';
  Self.BillKeyFields := 'FID';
  Self.FBillTypeFID := BillConst.BILLTYPE_AM;
  sIniBillFlag := 'AM' ;
  sSPPack :='SALE';
end;

procedure TFM_BillListPostReq.btn_NewBillClick(Sender: TObject);
begin
  inherited;
  Open_Bill('FID','');
end;

procedure TFM_BillListPostReq.btn_DelBillClick(Sender: TObject);
begin
  inherited;
  ///
end;

procedure TFM_BillListPostReq.spt_AuditClick(Sender: TObject);
begin
  inherited;
  //
end;

procedure TFM_BillListPostReq.spt_uAuditClick(Sender: TObject);
begin
  inherited;
  //
end;

procedure TFM_BillListPostReq.SpeedButton6Click(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TSaleOrderToPostReqFrm,SaleOrderToPostReqFrm);
  SaleOrderToPostReqFrm.OpenType := 2;
  SaleOrderToPostReqFrm.ShowModal;      
  SaleOrderToPostReqFrm.Free;
end;

procedure TFM_BillListPostReq.SpeedButton7Click(Sender: TObject);
begin
  inherited;
  if (cdsList.fieldbyname('FbaseStatus').AsInteger<>4) then
  begin
    ShowMsg(Handle, '当前单据不是审核状态！',[]);
    Abort;
  end;
  Application.CreateForm(TPostReqToIsSueFrm,PostReqToIsSueFrm);
  PostReqToIsSueFrm.OpenType := 1;
  PostReqToIsSueFrm.FsrcBillFID := cdsList.fieldbyname('FID').AsString;
  PostReqToIsSueFrm.ShowModal;
  PostReqToIsSueFrm.Free;
end;

end.
