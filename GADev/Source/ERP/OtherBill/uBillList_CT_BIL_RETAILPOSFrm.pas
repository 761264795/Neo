unit uBillList_CT_BIL_RETAILPOSFrm;

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
  cxDataStorage, cxDBData, cxLookAndFeelPainters;

type
  TFM_BillListCheck = class(TFM_BillListBase)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Open_Bill(KeyFields: String; KeyValues: String); override;
  end;

var
  FM_BillListCheck: TFM_BillListCheck;

implementation
uses uFrm_CheckBill;

{$R *.dfm}

procedure TFM_BillListCheck.FormCreate(Sender: TObject);
begin
  inherited;
  Self.Bill_Sign := 'CT_BIL_RetailPosShopCheck';
  Self.BillKeyFields := 'FID';
end;

procedure TFM_BillListCheck.Open_Bill(KeyFields, KeyValues: String);
begin
  inherited;
 // EditCheck_Frm(KeyValues);
   EditCheckBill_Frm(KeyValues);  //20111019 修改  盘点单表头增加初盘复盘复检
end;

end.
