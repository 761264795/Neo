unit uBillList_T_IM_MoveInWarehsBillFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Frm_BillListBase, 
  cxEdit, DB, Menus,
  ActnList, DBClient, StdCtrls, cxButtons,
  cxDropDownEdit, cxContainer, cxTextEdit, cxMaskEdit, cxCalendar,
  ExtCtrls, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxButtonEdit, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxDBData, cxLookAndFeelPainters, Buttons, jpeg, cxPC,
  Series, TeEngine, TeeProcs, Chart, DbChart, cxHyperLinkEdit, ADODB;

type
  TFM_BillListT_IM_MoveInWarehsBill = class(TFM_BillListBase)
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Btn_QueryClick(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure spt_AuditClick(Sender: TObject);
    procedure btn_DelBillClick(Sender: TObject);
    procedure spt_uAuditClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Open_Bill(KeyFields: String; KeyValues: String); override;
  end;

var
  FM_BillListT_IM_MoveInWarehsBill: TFM_BillListT_IM_MoveInWarehsBill;

implementation
 uses uFrm_PurInWarehsBill,FrmCliDM,Frm_BillEditBase;
{$R *.dfm}

procedure TFM_BillListT_IM_MoveInWarehsBill.FormCreate(Sender: TObject);
begin
  Self.FBillTypeFID := BillConst.BILLTYPE_DI;
  sIniBillFlag := 'MI' ;
  sSPPack :='STOCK';
  inherited;

  Self.Bill_Sign    := 'T_IM_MoveInWarehsBill';
  Self.BillKeyFields := 'FID';
end;

procedure TFM_BillListT_IM_MoveInWarehsBill.Open_Bill(KeyFields,
  KeyValues: String);
var
  tmpEditForm : TEditFormPar;
begin
  inherited;
  tmpEditForm :=TEditFormPar.Create;
  tmpEditForm.BillFID := KeyValues;
  tmpEditForm.ListDataset := cdsList;
  OpenEditFrom(FM_BillEditMoveinwarehs,TFM_BillEditMoveinwarehs,tmpEditForm);
end;

procedure TFM_BillListT_IM_MoveInWarehsBill.SpeedButton1Click(
  Sender: TObject);
begin
  inherited;
  //
end;

procedure TFM_BillListT_IM_MoveInWarehsBill.BitBtn1Click(Sender: TObject);
begin
  inherited;
  //
end;

procedure TFM_BillListT_IM_MoveInWarehsBill.Btn_QueryClick(
  Sender: TObject);
begin
  inherited;
  //
end;

procedure TFM_BillListT_IM_MoveInWarehsBill.SpeedButton8Click(
  Sender: TObject);
begin
  inherited;
  //
end;

procedure TFM_BillListT_IM_MoveInWarehsBill.spt_AuditClick(
  Sender: TObject);
begin
  inherited;
  //
end;

procedure TFM_BillListT_IM_MoveInWarehsBill.btn_DelBillClick(
  Sender: TObject);
begin
  inherited;
  ///
end;

procedure TFM_BillListT_IM_MoveInWarehsBill.spt_uAuditClick(
  Sender: TObject);
begin
  inherited;
   ////
end;

end.
