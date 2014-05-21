unit uRepairWOListFrm;

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
  TRepairWOListFrm = class(TFM_BillListBase)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RepairWOListFrm: TRepairWOListFrm;

implementation

{$R *.dfm}

procedure TRepairWOListFrm.FormCreate(Sender: TObject);
begin

  Self.Bill_Sign := 'T_ATS_RepairWO';
  Self.BillKeyFields := 'FID';
  Self.FBillTypeFID := 'HM+nytJ+S7izjFHd2/madkY+1VI=';
  sIniBillFlag := 'RW' ;
  sSPPack :='SALE';
  FNotScmBill := True;

  inherited;
end;

end.
