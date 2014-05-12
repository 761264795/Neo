unit uBillList_SaleOrder;

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
  TFM_BillListSaleOrder = class(TFM_BillListBase)
    procedure FormCreate(Sender: TObject);
    procedure btn_NewBillClick(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Open_Bill(KeyFields: String; KeyValues: String); override;
  end;

var
  FM_BillListSaleOrder: TFM_BillListSaleOrder;

implementation
uses Frm_BillEditBase,uBillEditSaleOrder, uSaleOrderToPostReq,Pub_Fun;
{$R *.dfm}
procedure TFM_BillListSaleOrder.Open_Bill(KeyFields: String; KeyValues: String);
var
  tmpEditForm : TEditFormPar;
begin
  inherited;
  tmpEditForm :=TEditFormPar.Create;
  tmpEditForm.BillFID := KeyValues;
  tmpEditForm.ListDataset := cdsList;
  OpenEditFrom(FM_BillEditSaleOrder,TFM_BillEditSaleOrder,tmpEditForm);

end;
procedure TFM_BillListSaleOrder.FormCreate(Sender: TObject);
begin

  Self.Bill_Sign := 't_Sd_Saleorder';
  Self.BillKeyFields := 'FID';
  Self.FBillTypeFID := BillConst.BILLTYPE_SO;
  sIniBillFlag := 'SO' ;
  sSPPack :='SALE';
   inherited;
end;

procedure TFM_BillListSaleOrder.btn_NewBillClick(Sender: TObject);
begin
  inherited;
  Open_Bill('FID','');
end;

procedure TFM_BillListSaleOrder.SpeedButton7Click(Sender: TObject);
begin
  inherited;
  if (cdsList.fieldbyname('FbaseStatus').AsInteger<>4)  then
  begin
    ShowMsg(Handle, '当前单据不是审核状态！',[]);
    Abort;
  end;
  Application.CreateForm(TSaleOrderToPostReqFrm,SaleOrderToPostReqFrm);
  SaleOrderToPostReqFrm.OpenType := 1;
  //SaleOrderToPostReqFrm.txt_BillNumber.Text := cdsMaster.fieldbyname('Fnumber').AsString;
  SaleOrderToPostReqFrm.FsrcBillFID := cdsList.fieldbyname('FID').AsString;
  //SaleOrderToPostReqFrm.txt_WarehouseNumber.Text := cxbtnSendWareNum.Text;
  //SaleOrderToPostReqFrm.txt_WarehouseName.Text := cxbtnSendWareName.Text;
  //SaleOrderToPostReqFrm.txt_SrcDes.Text := txDescription.Text;
  //SaleOrderToPostReqFrm.WarehouseFID :=  cdsMaster.fieldbyname('CFINWAREHOUSEID').AsString;
  SaleOrderToPostReqFrm.ShowModal;
  SaleOrderToPostReqFrm.Free;
end;

end.
