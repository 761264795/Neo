unit uProfitRpt;

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
  TProfitRpt = class(TFM_ReportListBase)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ProfitRpt: TProfitRpt;

implementation

{$R *.dfm}

procedure TProfitRpt.FormCreate(Sender: TObject);
begin
  Self.FBillTypeFID := '9BA803EF2B2B481FB5D2F949CE861E0B';
  inherited;

end;

end.
