unit uBillListSCMCheck;

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
  TFM_BillListSCMCheck = class(TFM_BillListBase)
    procedure spt_AuditClick(Sender: TObject);
    procedure spt_uAuditClick(Sender: TObject);
    procedure btn_DelBillClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Open_Bill(KeyFields: String; KeyValues: String); override;
  end;

var
  FM_BillListSCMCheck: TFM_BillListSCMCheck;

implementation
uses Frm_BillEditBase,uFrm_SCMCheckBill,FrmCliDM;
{$R *.dfm}

procedure TFM_BillListSCMCheck.Open_Bill(KeyFields: String; KeyValues: String);
var
  tmpEditForm : TEditFormPar;
begin
  inherited;
  tmpEditForm :=TEditFormPar.Create;
  tmpEditForm.BillFID := KeyValues;
  tmpEditForm.ListDataset := cdsList;
  OpenEditFrom(Frm_SCMCheckBill,TFrm_SCMCheckBill,tmpEditForm);
end;
procedure TFM_BillListSCMCheck.spt_AuditClick(Sender: TObject);
begin

   inherited;
   ///
end;

procedure TFM_BillListSCMCheck.spt_uAuditClick(Sender: TObject);
begin
  inherited;
//
end;

procedure TFM_BillListSCMCheck.btn_DelBillClick(Sender: TObject);
begin
  inherited;
  ///
end;

procedure TFM_BillListSCMCheck.FormCreate(Sender: TObject);
begin
  Self.Bill_Sign := 'CT_IM_SCMCHECK';
  Self.BillKeyFields := 'FID';
  Self.FBillTypeFID := BillConst.BILLTYPE_PD;
  sIniBillFlag := 'PD' ;
  sSPPack :='STOCK';
  inherited;

end;

end.
