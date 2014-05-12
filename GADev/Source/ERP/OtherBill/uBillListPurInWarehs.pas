unit uBillListPurInWarehs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Frm_BillListBase, 
  cxEdit, DB, Menus,
  ActnList, DBClient, cxButtonEdit, cxTextEdit,
  StdCtrls, cxButtons, cxDropDownEdit, cxContainer, cxMaskEdit, cxCalendar,
  ExtCtrls, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxDBData, cxLookAndFeelPainters, cxHyperLinkEdit, ADODB, jpeg, Series,
  TeEngine, TeeProcs, Chart, DbChart, Buttons, cxPC,FrmCliDM;

type
  TFM_BillListPurInWarehs = class(TFM_BillListBase)
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_NewBillClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Open_Bill(KeyFields: String; KeyValues: String); override;
  end;

var
  FM_BillListPurInWarehs: TFM_BillListPurInWarehs;

implementation
uses uBillEditPurInWarehs,Frm_BillEditBase;
{$R *.dfm}

{ TFM_BillListPurInWarehs }

procedure TFM_BillListPurInWarehs.Open_Bill(KeyFields, KeyValues: String);
var
  tmpEditForm : TEditFormPar;
begin
  inherited;
  tmpEditForm :=TEditFormPar.Create;
  tmpEditForm.BillFID := KeyValues;
  tmpEditForm.ListDataset := cdsList;
  OpenEditFrom(FM_BillEditPurInWarehs,TFM_BillEditPurInWarehs,tmpEditForm);

end;

procedure TFM_BillListPurInWarehs.FormCreate(Sender: TObject);
begin
  inherited;
  Self.Bill_Sign := 'T_IM_PurInWarehsBill';
  Self.BillKeyFields := 'FID';
  Self.FBillTypeFID := BillConst.BILLTYPE_PI;
  FDefined :='PI';
 sIniBillFlag := 'PI' ;
  sSPPack :='SCM';
end;

procedure TFM_BillListPurInWarehs.FormShow(Sender: TObject);
begin
  inherited;
  if Self.mainSgin then
  begin

  end;
end;

procedure TFM_BillListPurInWarehs.btn_NewBillClick(Sender: TObject);
begin
  inherited;
  Open_Bill('FID','');
end;

end.
