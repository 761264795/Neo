unit uBillList_T_FA_FaDispatchBillFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Frm_BillListBase, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, Menus,
  cxLookAndFeelPainters, ActnList, DBClient, StdCtrls, cxButtons,
  cxDropDownEdit, cxContainer, cxTextEdit, cxMaskEdit, cxCalendar,
  ExtCtrls, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxButtonEdit, cxHyperLinkEdit, ADODB, jpeg, Series, TeEngine, TeeProcs,
  Chart, DbChart, Buttons, cxPC;

type
  TFM_BillList_T_FA_FaDispatchBill = class(TFM_BillListBase)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FM_BillList_T_FA_FaDispatchBill: TFM_BillList_T_FA_FaDispatchBill;

implementation

{$R *.dfm}

procedure TFM_BillList_T_FA_FaDispatchBill.FormCreate(Sender: TObject);
begin
  inherited;
  Self.Bill_Sign := 'T_FA_FaDispatchBill';
  Self.BillKeyFields := 'FID';
end;

end.
