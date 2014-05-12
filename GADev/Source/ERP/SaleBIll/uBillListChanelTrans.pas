unit uBillListChanelTrans;

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
  TFM_BillListChanelTrans = class(TFM_BillListBase)
    procedure FormCreate(Sender: TObject);
    procedure btn_NewBillClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Open_Bill(KeyFields: String; KeyValues: String); override;
  end;

var
  FM_BillListChanelTrans: TFM_BillListChanelTrans;

implementation
uses Frm_BillEditBase,FrmCliDM,uBillEditChanelTrans;
{$R *.dfm}
procedure TFM_BillListChanelTrans.Open_Bill(KeyFields: String; KeyValues: String);
var
  tmpEditForm : TEditFormPar;
begin
  inherited;
  tmpEditForm :=TEditFormPar.Create;
  tmpEditForm.BillFID := KeyValues;
  tmpEditForm.ListDataset := cdsList;
  OpenEditFrom(FM_BillEditChanelTrans,TFM_BillEditChanelTrans,tmpEditForm);
end;
procedure TFM_BillListChanelTrans.FormCreate(Sender: TObject);
begin
  Self.Bill_Sign := 'CT_SD_ChaTransferOrder';
  Self.BillKeyFields := 'FID';
  Self.FBillTypeFID := BillConst.BILLTYPE_BA;

  sIniBillFlag := 'BA' ;
  sSPPack :='SALE';
  inherited;

end;

procedure TFM_BillListChanelTrans.btn_NewBillClick(Sender: TObject);
begin
  inherited;
  Open_Bill('FID','');
end;

end.
