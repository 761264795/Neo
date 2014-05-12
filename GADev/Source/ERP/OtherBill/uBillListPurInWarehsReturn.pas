unit uBillListPurInWarehsReturn;

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
  Buttons, cxPC,FrmCliDM;

type
  TFM_BillListPurInWarehsReturn = class(TFM_BillListBase)
    procedure FormCreate(Sender: TObject);
    procedure btn_NewBillClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Open_Bill(KeyFields: String; KeyValues: String); override;
  end;

var
  FM_BillListPurInWarehsReturn: TFM_BillListPurInWarehsReturn;

implementation
uses uBillEditPurInWarehsReturn,Frm_BillEditBase;
{$R *.dfm}

{ TFM_BillListPurInWarehsReturn }

procedure TFM_BillListPurInWarehsReturn.Open_Bill(KeyFields,
  KeyValues: String);
var
  tmpEditForm : TEditFormPar;
begin
  inherited;
  tmpEditForm :=TEditFormPar.Create;
  tmpEditForm.BillFID := KeyValues;
  tmpEditForm.ListDataset := cdsList;
  OpenEditFrom(FM_BillEditPurInWarehsReturn,TFM_BillEditPurInWarehsReturn,tmpEditForm);
end;

procedure TFM_BillListPurInWarehsReturn.FormCreate(Sender: TObject);
begin
  inherited;
  Self.Bill_Sign := 't_Im_Purinwarehsbill';
  Self.BillKeyFields := 'FID';
    Self.FBillTypeFID := BillConst.BILLTYPE_PI;
  FDefined :='PR';
  sIniBillFlag := 'PI' ;
  sSPPack :='SCM';
end;

procedure TFM_BillListPurInWarehsReturn.btn_NewBillClick(Sender: TObject);
begin
  inherited;
  Open_Bill('FID','');
end;

end.
