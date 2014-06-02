unit uRepairWoDetailTcRpt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Frm_ReportListBase, cxStyles, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxHyperLinkEdit,
  Menus, cxLookAndFeelPainters, ADODB, ActnList, DBClient, jpeg, Series,
  TeEngine, TeeProcs, Chart, DbChart, StdCtrls, Buttons, cxPC, cxContainer,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxButtons, ExtCtrls, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxControls, cxGridCustomView, cxGrid;

type
  TRepairWoDetailTcRpt = class(TFM_ReportListBase)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RepairWoDetailTcRpt: TRepairWoDetailTcRpt;

implementation

{$R *.dfm}

procedure TRepairWoDetailTcRpt.FormCreate(Sender: TObject);
begin
  Self.FBillTypeFID := '8404EBCF38484E2F9B2A46F7A2B8CB2A';
  inherited;

end;

end.
