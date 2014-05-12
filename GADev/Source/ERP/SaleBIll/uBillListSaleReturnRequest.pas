unit uBillListSaleReturnRequest;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Frm_BillListBase, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, cxHyperLinkEdit, Menus,
  cxLookAndFeelPainters, ADODB, ActnList, DBClient, jpeg, Series, TeEngine,
  TeeProcs, Chart, DbChart, StdCtrls, cxButtons, cxMaskEdit,
  cxDropDownEdit, Buttons, cxPC, cxContainer, cxTextEdit, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid, ExtCtrls;

type
  TFM_BillListSaleReturnRequest = class(TFM_BillListBase)
    procedure FormCreate(Sender: TObject);
    procedure btn_NewBillClick(Sender: TObject);
    procedure btn_DelBillClick(Sender: TObject);
    procedure spt_AuditClick(Sender: TObject);
    procedure spt_uAuditClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Open_Bill(KeyFields: String; KeyValues: String); override;
  end;

var
  FM_BillListSaleReturnRequest: TFM_BillListSaleReturnRequest;

implementation
uses Frm_BillEditBase,uBillEditSaleReturnRequest,FrmCliDM;
{$R *.dfm}
procedure TFM_BillListSaleReturnRequest.Open_Bill(KeyFields: String; KeyValues: String);
var
  tmpEditForm : TEditFormPar;
begin
  inherited;
  tmpEditForm :=TEditFormPar.Create;
  tmpEditForm.BillFID := KeyValues;
  tmpEditForm.ListDataset := cdsList;
  OpenEditFrom(FM_BillEditSaleReturnRequest,TFM_BillEditSaleReturnRequest,tmpEditForm);
end;

procedure TFM_BillListSaleReturnRequest.FormCreate(Sender: TObject);
begin
  Self.Bill_Sign := 'T_SD_SALERETURNS';
  Self.FBillTypeFID := BillConst.BILLTYPE_SA;
  sIniBillFlag := 'SA' ;
  sSPPack :='SALE';
  inherited;
  Self.Bill_Sign := 'T_SD_SALERETURNS';
  Self.BillKeyFields := 'FID';
end;

procedure TFM_BillListSaleReturnRequest.btn_NewBillClick(Sender: TObject);
begin
  inherited;
  Open_Bill('FID','');
end;

procedure TFM_BillListSaleReturnRequest.btn_DelBillClick(Sender: TObject);
begin
  inherited;
  //
end;

procedure TFM_BillListSaleReturnRequest.spt_AuditClick(Sender: TObject);
begin
  inherited;
  ///
end;

procedure TFM_BillListSaleReturnRequest.spt_uAuditClick(Sender: TObject);
begin
  inherited;
  ////
end;

end.
