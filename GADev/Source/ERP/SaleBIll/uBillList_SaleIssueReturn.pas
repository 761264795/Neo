unit uBillList_SaleIssueReturn;

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
  TFM_BillListSaleIssueReturn = class(TFM_BillListBase)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Open_Bill(KeyFields: String; KeyValues: String); override;
  end;

var
  FM_BillListSaleIssueReturn: TFM_BillListSaleIssueReturn;

implementation
uses Frm_BillEditBase,uBillEditSaleIssueReturn;
{$R *.dfm}
procedure TFM_BillListSaleIssueReturn.Open_Bill(KeyFields: String; KeyValues: String);
var
  tmpEditForm : TEditFormPar;
begin
  inherited;
  tmpEditForm :=TEditFormPar.Create;
  tmpEditForm.BillFID := KeyValues;
  tmpEditForm.ListDataset := cdsList;
  OpenEditFrom(FM_BillEditSaleIssueReturn,TFM_BillEditSaleIssueReturn,tmpEditForm);
end;
procedure TFM_BillListSaleIssueReturn.FormCreate(Sender: TObject);
begin
  inherited;
  Self.Bill_Sign := 't_Im_Saleissuebill';
  Self.BillKeyFields := 'FID';
  FDefined :='SR';
  Self.FBillTypeFID := BillConst.BILLTYPE_CS;
  sIniBillFlag := 'CS' ;
  sSPPack :='SALE';
end;

end.
