unit uBillListPurReturnWarehs;

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
  TFM_BillListPurReturWarehs = class(TFM_BillListBase)
    procedure FormCreate(Sender: TObject);
    procedure btn_NewBillClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Open_Bill(KeyFields: String; KeyValues: String); override;
  end;

var
  FM_BillListPurReturWarehs: TFM_BillListPurReturWarehs;

implementation
uses uBillEditPurReturnWarehs,Frm_BillEditBase;
{$R *.dfm}

procedure TFM_BillListPurReturWarehs.Open_Bill(KeyFields: String; KeyValues: String);
var
  tmpEditForm : TEditFormPar;
begin
  inherited;
  tmpEditForm :=TEditFormPar.Create;
  tmpEditForm.BillFID := KeyValues;
  tmpEditForm.ListDataset := cdsList;
  OpenEditFrom(FM_BillEditPurReturnWarehs,TFM_BillEditPurReturnWarehs,tmpEditForm);

end;
procedure TFM_BillListPurReturWarehs.FormCreate(Sender: TObject);
begin
  inherited;
  Self.Bill_Sign := 't_Im_Purinwarehsbill';
  Self.BillKeyFields := 'FID';
  Self.FBillTypeFID := BillConst.BILLTYPE_PI;
  FDefined :='QR';
  sIniBillFlag := 'PI' ;
  sSPPack :='SCM';
end;

procedure TFM_BillListPurReturWarehs.btn_NewBillClick(Sender: TObject);
begin
  inherited;
  Open_Bill('FID','');
end;

end.
