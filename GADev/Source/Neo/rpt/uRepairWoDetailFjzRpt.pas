unit uRepairWoDetailFjzRpt;

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
  TRepairWoDetailFjzRpt = class(TFM_ReportListBase)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RepairWoDetailFjzRpt: TRepairWoDetailFjzRpt;

implementation

{$R *.dfm}

procedure TRepairWoDetailFjzRpt.FormCreate(Sender: TObject);
begin
  Self.FBillTypeFID := '4B7DA5425B5C4535B6598D84202714F6';
  inherited;

end;

end.
