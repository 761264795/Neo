unit uBillListPurReceive;

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
  TFM_BillListPurReceive = class(TFM_BillListBase)
    procedure btn_NewBillClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Open_Bill(KeyFields: String; KeyValues: String); override;
  end;

var
  FM_BillListPurReceive: TFM_BillListPurReceive;

implementation
 uses uBillEditPurReceive,Frm_BillEditBase;
{$R *.dfm}

procedure TFM_BillListPurReceive.Open_Bill(KeyFields, KeyValues: String);
var
  tmpEditForm : TEditFormPar;
begin
  inherited;
  tmpEditForm :=TEditFormPar.Create;
  tmpEditForm.BillFID := KeyValues;
  tmpEditForm.ListDataset := cdsList;
  OpenEditFrom(FM_BillEditPurReceive,TFM_BillEditPurReceive,tmpEditForm);
end;
procedure TFM_BillListPurReceive.btn_NewBillClick(Sender: TObject);
begin
  inherited;
  Open_Bill('FID','');
end;

procedure TFM_BillListPurReceive.FormCreate(Sender: TObject);
begin
  inherited;
  Self.Bill_Sign := 't_Im_Purreceivalbill';
  Self.BillKeyFields := 'FID';
  Self.FBillTypeFID := BillConst.BILLTYPE_PT;
  sIniBillFlag := 'PT' ;
  sSPPack :='SCM';
end;

end.
