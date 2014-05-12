unit uBillList_SalePerBillFrm;

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
  Buttons, cxPC;

type
  TFM_BillList_SalePerForm = class(TFM_BillListBase)
    procedure FormCreate(Sender: TObject);
    procedure dbgListDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FM_BillList_SalePerForm: TFM_BillList_SalePerForm;

implementation
 uses uShopSalesPerformanceEditBill,FrmCliDM;
{$R *.dfm}

procedure TFM_BillList_SalePerForm.FormCreate(Sender: TObject);
begin
  inherited;
  Self.Bill_Sign := 'T_SD_ShopSalesPerformance';
  Self.BillKeyFields := 'FID';
end;

procedure TFM_BillList_SalePerForm.dbgListDblClick(Sender: TObject);
var
 strsql,ErrMsg : string;
begin
 // inherited;
  strsql := 'select * from T_SD_ShopSalesPerformance where FID='+quotedstr(cdslist.fieldbyname('FID').AsString);
  CliDM.Get_OpenSQL(CliDM.cdstemp,strsql,ErrMsg);
  CliDM.cdsSalesPerformanceM.Data := CliDM.cdstemp.Data;
  strsql := 'select * from t_Sd_Shopsalesperformanceentry where fparentID='+quotedstr(cdslist.fieldbyname('FID').AsString);
  CliDM.Get_OpenSQL(CliDM.cdstemp,strsql,ErrMsg);
  CliDM.cdsSalesPerformanceD.Data := CliDM.cdstemp.Data;
  CliDM.cdstemp.Close;
  OpenShopSalesPrformanceForm;
end;

end.
