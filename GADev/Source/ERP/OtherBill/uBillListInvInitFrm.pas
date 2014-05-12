unit uBillListInvInitFrm;

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
  TFM_BillListInvInitForm = class(TFM_BillListBase)
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
  FM_BillListInvInitForm: TFM_BillListInvInitForm;

implementation
uses Frm_BillEditBase,uBillEditInvInitfrm,FrmCliDM;
{$R *.dfm}
procedure TFM_BillListInvInitForm.Open_Bill(KeyFields: String; KeyValues: String);
var
  tmpEditForm : TEditFormPar;
begin
  inherited;
  tmpEditForm :=TEditFormPar.Create;
  tmpEditForm.BillFID := KeyValues;
  tmpEditForm.ListDataset := cdsList;
  OpenEditFrom(FM_BillEditInvInitForm,TFM_BillEditInvInitForm,tmpEditForm);

end;

procedure TFM_BillListInvInitForm.FormCreate(Sender: TObject);
begin
  Self.Bill_Sign := 't_Im_Inventoryinitbill';
  Self.BillKeyFields := 'FID';
  Self.FBillTypeFID := BillConst.BILLTYPE_SI;

  sIniBillFlag := 'SI' ;
  sSPPack :='STOCK';
  inherited;

end;

procedure TFM_BillListInvInitForm.btn_NewBillClick(Sender: TObject);
begin
  inherited;
  Open_Bill('FID','');
end;

procedure TFM_BillListInvInitForm.btn_DelBillClick(Sender: TObject);
begin
  inherited;
  //
end;

procedure TFM_BillListInvInitForm.spt_AuditClick(Sender: TObject);
begin
  inherited;
   ///
end;

procedure TFM_BillListInvInitForm.spt_uAuditClick(Sender: TObject);
begin
  inherited;
  //
end;

end.
