unit uBillList_SaleIssue;

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
  TFM_BillListSaleIssue = class(TFM_BillListBase)
    procedure FormCreate(Sender: TObject);
    procedure btn_NewBillClick(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Open_Bill(KeyFields: String; KeyValues: String); override;
  end;

var
  FM_BillListSaleIssue: TFM_BillListSaleIssue;

implementation
 uses Frm_BillEditBase,uBillEditSaleIssue,FrmCliDM, uPostReqToIsSueFrm;
{$R *.dfm}
procedure TFM_BillListSaleIssue.Open_Bill(KeyFields: String; KeyValues: String);
var
  tmpEditForm : TEditFormPar;
begin
  inherited;
  tmpEditForm :=TEditFormPar.Create;
  tmpEditForm.BillFID := KeyValues;
  tmpEditForm.ListDataset := cdsList;
  OpenEditFrom(FM_BillEditSaleIssue,TFM_BillEditSaleIssue,tmpEditForm);
end;

procedure TFM_BillListSaleIssue.FormCreate(Sender: TObject);
begin
  inherited;
  Self.Bill_Sign := 't_Im_Saleissuebill';
  Self.BillKeyFields := 'FID';
  Self.FBillTypeFID := BillConst.BILLTYPE_CS;
  FDefined :='CS';
  sIniBillFlag := 'CS' ;
  sSPPack :='SALE';
end;

procedure TFM_BillListSaleIssue.btn_NewBillClick(Sender: TObject);
begin
  inherited;
  Open_Bill('FID','');
end;

procedure TFM_BillListSaleIssue.SpeedButton6Click(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TPostReqToIsSueFrm,PostReqToIsSueFrm);
  PostReqToIsSueFrm.OpenType := 2;
  PostReqToIsSueFrm.ShowModal;
  PostReqToIsSueFrm.Free;
end;

end.
