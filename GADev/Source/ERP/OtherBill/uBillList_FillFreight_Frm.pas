unit uBillList_FillFreight_Frm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Frm_BillListBase, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, DBClient, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, Menus, cxLookAndFeelPainters,
  ActnList, StdCtrls, cxButtons, cxDropDownEdit, cxContainer, cxTextEdit,
  cxMaskEdit, cxCalendar, ExtCtrls, dxSkinsCore, dxSkinOffice2007Black,
  cxButtonEdit, cxHyperLinkEdit, ADODB, jpeg, Series, TeEngine, TeeProcs,
  Chart, DbChart, Buttons, cxPC;

type
  TFrmBillList_FillFreight = class(TFM_BillListBase)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Open_Bill(KeyFields: String; KeyValues: String); override;
  end;

var
  FrmBillList_FillFreight: TFrmBillList_FillFreight;

implementation
  uses uFrmFillFreightFrm;
{$R *.dfm}

procedure TFrmBillList_FillFreight.FormCreate(Sender: TObject);
begin
  inherited;
  Self.Bill_Sign := 't_sd_subsidyapplybill';
  Self.BillKeyFields := 'FID';
end;

procedure TFrmBillList_FillFreight.Open_Bill(KeyFields, KeyValues: String);
begin
  inherited;
  EditFillFreight_Frm(KeyValues);
end;

end.
