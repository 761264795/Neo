unit uBillListPurReturns;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Frm_BillListBase, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, Menus,
  cxLookAndFeelPainters, ActnList, DBClient, cxButtonEdit, cxTextEdit,
  StdCtrls, cxButtons, cxDropDownEdit, cxContainer, cxMaskEdit, cxCalendar,
  ExtCtrls, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxHyperLinkEdit, ADODB, jpeg, Series, TeEngine, TeeProcs, Chart, DbChart,
  Buttons, cxPC;

type
  TFM_BillListPurReturns = class(TFM_BillListBase)
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
  FM_BillListPurReturns: TFM_BillListPurReturns;

implementation
uses FrmCliDM,Frm_BillEditBase,uBillEditPurReturns;
{$R *.dfm}

{ TFM_BillListPurReturns }

procedure TFM_BillListPurReturns.Open_Bill(KeyFields, KeyValues: String);
var
  tmpEditForm : TEditFormPar;
begin
  inherited;
  tmpEditForm :=TEditFormPar.Create;
  tmpEditForm.BillFID := KeyValues;
  tmpEditForm.ListDataset := cdsList;
  OpenEditFrom(FM_BillEditPurRetuens,TFM_BillEditPurRetuens,tmpEditForm);
end;

procedure TFM_BillListPurReturns.FormCreate(Sender: TObject);
begin
  Self.Bill_Sign := 'T_SM_PurReturns';
  Self.FBillTypeFID := BillConst.BILLTYPE_PR;
  sIniBillFlag := 'PR' ;
  sSPPack :='SCM';
  inherited;

  Self.BillKeyFields := 'FID';
end;

procedure TFM_BillListPurReturns.btn_NewBillClick(Sender: TObject);
begin
  inherited;
  Open_Bill('FID','');
end;

procedure TFM_BillListPurReturns.btn_DelBillClick(Sender: TObject);
begin
  inherited;
  //
end;

procedure TFM_BillListPurReturns.spt_AuditClick(Sender: TObject);
begin
  inherited;
  ///
end;

procedure TFM_BillListPurReturns.spt_uAuditClick(Sender: TObject);
begin
  inherited;
  ////
end;

end.
