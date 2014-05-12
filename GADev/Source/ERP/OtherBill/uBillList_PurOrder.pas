unit uBillList_PurOrder;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Frm_BillListBase, cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, Menus,
  cxLookAndFeelPainters, ActnList, DBClient, cxButtonEdit, cxTextEdit,
  StdCtrls, cxButtons, cxDropDownEdit, cxContainer, cxMaskEdit, cxCalendar,
  ExtCtrls, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  dxSkinsCore, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinscxPCPainter, cxHyperLinkEdit, ADODB, jpeg, Series, TeEngine,
  TeeProcs, Chart, DbChart, Buttons, cxPC,FrmCliDM;

type
  TFM_BillListPurOrder = class(TFM_BillListBase)
    procedure FormCreate(Sender: TObject);
    procedure btn_NewBillClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Open_Bill(KeyFields: String; KeyValues: String); override;
  end;

var
  FM_BillListPurOrder: TFM_BillListPurOrder;

implementation
uses uBillEditPurOrder,Frm_BillEditBase;

{$R *.dfm}

{ TFM_BillListPurOrder }

procedure TFM_BillListPurOrder.Open_Bill(KeyFields, KeyValues: String);
var
  tmpEditForm : TEditFormPar;
begin
  inherited;
  tmpEditForm :=TEditFormPar.Create;
  tmpEditForm.BillFID := KeyValues;
  tmpEditForm.ListDataset := cdsList;
  OpenEditFrom(FM_BillEditPurOrder,TFM_BillEditPurOrder,tmpEditForm);
end;

procedure TFM_BillListPurOrder.FormCreate(Sender: TObject);
begin

  Self.Bill_Sign := 'T_SM_PurOrder';
  Self.BillKeyFields := 'FID';
  Self.FBillTypeFID := BillConst.BILLTYPE_PO;
  FDefined :='PO';
  sIniBillFlag := 'PO' ;
  sSPPack :='SCM';
   inherited;
end;

procedure TFM_BillListPurOrder.btn_NewBillClick(Sender: TObject);
begin
  inherited;
  Open_Bill('FID','');
end;

end.
