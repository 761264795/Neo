unit uBillListPurRequest;

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
  TFM_BillListPurRequest = class(TFM_BillListBase)
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
  FM_BillListPurRequest: TFM_BillListPurRequest;

implementation
uses Frm_BillEditBase, uBillEditPurRequset;
{$R *.dfm}

procedure TFM_BillListPurRequest.Open_Bill(KeyFields, KeyValues: String);
var
  tmpEditForm : TEditFormPar;
begin
  inherited;
  tmpEditForm :=TEditFormPar.Create;
  tmpEditForm.BillFID := KeyValues;
  tmpEditForm.ListDataset := cdsList;
  OpenEditFrom(FM_BillEditPurRequest,TFM_BillEditPurRequest,tmpEditForm);
end;
procedure TFM_BillListPurRequest.FormCreate(Sender: TObject);
begin
  Self.Bill_Sign := 't_Sm_Purrequest';
  Self.FBillTypeFID := BillConst.BILLTYPE_PA;
  sIniBillFlag := 'PA' ;
  sSPPack :='SCM';
  inherited;
  Self.BillKeyFields := 'FID';
end;

procedure TFM_BillListPurRequest.btn_NewBillClick(Sender: TObject);
begin
  inherited;
  Open_Bill('FID','');
end;

procedure TFM_BillListPurRequest.btn_DelBillClick(Sender: TObject);
begin
  inherited;
  //
end;

procedure TFM_BillListPurRequest.spt_AuditClick(Sender: TObject);
begin
  inherited;
  //
end;

procedure TFM_BillListPurRequest.spt_uAuditClick(Sender: TObject);
begin
  inherited;
  ///
end;

end.
