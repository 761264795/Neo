unit uBillList_T_IM_MoveIssueBillFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Frm_BillListBase, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, Menus,
  cxLookAndFeelPainters, ActnList, DBClient, StdCtrls, cxButtons,
  cxDropDownEdit, cxContainer, cxTextEdit, cxMaskEdit, cxCalendar,
  ExtCtrls, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxButtonEdit, Buttons, jpeg, cxPC, Series, TeEngine, TeeProcs, Chart,
  DbChart, cxHyperLinkEdit, ADODB;

type
  TFM_BillListT_IM_MoveIssueBill = class(TFM_BillListBase)
    procedure FormCreate(Sender: TObject);
    procedure btn_NewBillClick(Sender: TObject);
    procedure Btn_QueryClick(Sender: TObject);
    procedure spt_AuditClick(Sender: TObject);
    procedure btn_DelBillClick(Sender: TObject);
    procedure spt_uAuditClick(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Open_Bill(KeyFields: String; KeyValues: String); override;
  end;

var
  FM_BillListT_IM_MoveIssueBill: TFM_BillListT_IM_MoveIssueBill;

implementation
 uses uFrm_MoveIssueBill,FrmCliDM,Frm_BillEditBase, uPostReqToIsSueFrm;
{$R *.dfm}

procedure TFM_BillListT_IM_MoveIssueBill.FormCreate(Sender: TObject);
begin

  Self.Bill_Sign := 'T_IM_MoveIssueBill';
  Self.BillKeyFields := 'FID';
  Self.FBillTypeFID := BillConst.BILLTYPE_DT;

  sIniBillFlag := 'MO' ;
  sSPPack :='STOCK';
  inherited;
end;

procedure TFM_BillListT_IM_MoveIssueBill.Open_Bill(KeyFields,
  KeyValues: String);
var
  tmpEditForm : TEditFormPar;
begin
  inherited;
  tmpEditForm :=TEditFormPar.Create;
  tmpEditForm.BillFID := KeyValues;
  tmpEditForm.ListDataset := cdsList;
  OpenEditFrom(FM_BillEditMoveIssue,TFM_BillEditMoveIssue,tmpEditForm);
end;

procedure TFM_BillListT_IM_MoveIssueBill.btn_NewBillClick(Sender: TObject);
begin
  inherited;
  Open_Bill('FID','');
end;

procedure TFM_BillListT_IM_MoveIssueBill.Btn_QueryClick(Sender: TObject);
begin
  inherited;
  //
end;

procedure TFM_BillListT_IM_MoveIssueBill.spt_AuditClick(Sender: TObject);
begin
  inherited;
   //
end;

procedure TFM_BillListT_IM_MoveIssueBill.btn_DelBillClick(Sender: TObject);
begin
  inherited;
   //
end;

procedure TFM_BillListT_IM_MoveIssueBill.spt_uAuditClick(Sender: TObject);
begin
  inherited;
   ////
end;

procedure TFM_BillListT_IM_MoveIssueBill.SpeedButton6Click(
  Sender: TObject);
begin
  inherited;
  Application.CreateForm(TPostReqToIsSueFrm,PostReqToIsSueFrm);
  PostReqToIsSueFrm.OpenType := 2;
  PostReqToIsSueFrm.ShowModal;
  PostReqToIsSueFrm.Free;
end;

end.
