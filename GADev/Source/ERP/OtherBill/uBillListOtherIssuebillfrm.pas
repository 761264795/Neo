unit uBillListOtherIssuebillfrm;

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
  TFM_BillListOtherIssuebill = class(TFM_BillListBase)
    procedure FormCreate(Sender: TObject);
    procedure btn_DelBillClick(Sender: TObject);
    procedure spt_AuditClick(Sender: TObject);
    procedure spt_uAuditClick(Sender: TObject);
    procedure btn_NewBillClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Open_Bill(KeyFields: String; KeyValues: String); override;
  end;

var
  FM_BillListOtherIssuebill: TFM_BillListOtherIssuebill;

implementation
 uses uBillEditOtherissuebill,FrmCliDM,Frm_BillEditBase ;
{$R *.dfm}

procedure TFM_BillListOtherIssuebill.Open_Bill(KeyFields,
  KeyValues: String);
var
  tmpEditForm : TEditFormPar;
begin
  inherited;
  tmpEditForm :=TEditFormPar.Create;
  tmpEditForm.BillFID := KeyValues;
  tmpEditForm.ListDataset := cdsList;
  OpenEditFrom(FM_BillEditOtherIssuebill,TFM_BillEditOtherIssuebill,tmpEditForm);
end;
procedure TFM_BillListOtherIssuebill.FormCreate(Sender: TObject);
begin
  Self.FBillTypeFID := BillConst.BILLTYPE_OD;
  sIniBillFlag := 'OD' ;
  sSPPack :='STOCK';
  inherited;

  Self.Bill_Sign    := 't_Im_Otherissuebill';
  Self.BillKeyFields := 'FID';

end;

procedure TFM_BillListOtherIssuebill.btn_DelBillClick(Sender: TObject);
begin
  inherited;
////
end;

procedure TFM_BillListOtherIssuebill.spt_AuditClick(Sender: TObject);
begin
  inherited;
//////
end;

procedure TFM_BillListOtherIssuebill.spt_uAuditClick(Sender: TObject);
begin
  inherited;
//////////
end;

procedure TFM_BillListOtherIssuebill.btn_NewBillClick(Sender: TObject);
begin
  inherited;
  Open_Bill('FID','');
end;

end.
