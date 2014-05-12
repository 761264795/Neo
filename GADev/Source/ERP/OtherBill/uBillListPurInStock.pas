unit uBillListPurInStock;

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
  TFM_BillListPurInStock = class(TFM_BillListBase)
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
  FM_BillListPurInStock: TFM_BillListPurInStock;

implementation
uses Frm_BillEditBase,uBillEditPurInStock;
{$R *.dfm}
procedure TFM_BillListPurInStock.Open_Bill(KeyFields, KeyValues: String);
var
  tmpEditForm : TEditFormPar;
begin
  inherited;
  tmpEditForm :=TEditFormPar.Create;
  tmpEditForm.BillFID := KeyValues;
  tmpEditForm.ListDataset := cdsList;
  OpenEditFrom(FM_BillEditPurInStock,TFM_BillEditPurInStock,tmpEditForm);
end;
procedure TFM_BillListPurInStock.FormCreate(Sender: TObject);
begin

  Self.Bill_Sign := 't_Im_Purinwarehsbill';
  Self.BillKeyFields := 'FID';
  Self.FBillTypeFID := BillConst.BILLTYPE_PI;
  FDefined :='PI';
  sIniBillFlag := 'PI' ;
  sSPPack :='SCM';
  inherited;
end;

procedure TFM_BillListPurInStock.btn_NewBillClick(Sender: TObject);
begin
  inherited;
  Open_Bill('FID','');
end;

procedure TFM_BillListPurInStock.btn_DelBillClick(Sender: TObject);
begin
  inherited;
 //
end;

procedure TFM_BillListPurInStock.spt_AuditClick(Sender: TObject);
begin
  inherited;
  ///
end;

procedure TFM_BillListPurInStock.spt_uAuditClick(Sender: TObject);
begin
  inherited;
    ///
end;

end.
