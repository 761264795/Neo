unit uFrm_CheckBillState;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBaseEditFrm, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses,
  cxControls, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid,DBClient,
  cxGridDBTableView;

type
  TCheckBillStateFrm = class(TSTBaseEdit)
    cxGrid2: TcxGrid;
    cxGridLevel1: TcxGridLevel;
    DataSource1: TDataSource;
    dbgMulti1: TcxGridDBTableView;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CheckBillStateFrm: TCheckBillStateFrm;
  procedure ShowCheckBillState(cdsCheckBill : TClientDataSet);
implementation

{$R *.dfm}
procedure ShowCheckBillState(cdsCheckBill : TClientDataSet);
begin
  Application.CreateForm(TCheckBillStateFrm,CheckBillStateFrm);
  CheckBillStateFrm.DataSource1.DataSet := cdsCheckBill;
  CheckBillStateFrm.CreateDetailColumn(cdsCheckBill,CheckBillStateFrm.dbgMulti1,'CheckBillStateFrm');
  CheckBillStateFrm.ShowModal;
  CheckBillStateFrm.Free;
end;
end.
