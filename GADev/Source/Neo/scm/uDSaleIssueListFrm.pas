unit uDSaleIssueListFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Frm_BillListBase, cxStyles, dxSkinsCore, dxSkinBlack,
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
  TeEngine, TeeProcs, Chart, DbChart, StdCtrls, cxContainer, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, Buttons, cxPC, cxButtons, ExtCtrls,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxControls, cxGridCustomView, cxGrid;

type
  TDSaleIssueListFrm = class(TFM_BillListBase)
    procedure FormCreate(Sender: TObject);



  private
    { Private declarations }


  public
    { Public declarations }

  end;

var
  DSaleIssueListFrm: TDSaleIssueListFrm;

implementation

{$R *.dfm}

procedure TDSaleIssueListFrm.FormCreate(Sender: TObject);
begin
  Self.Bill_Sign := 'T_IM_SaleIssueBill';
  Self.BillKeyFields := 'FID';
  Self.FBillTypeFID := '50957179-0105-1000-e000-015bc0a812fd463ED552';
  sIniBillFlag := 'SO' ;
  sSPPack :='INV';
  FNotScmBill := True;
  
  inherited;

  btn_NewBill.Visible := False;
  btn_DelBill.Visible := False;
  spt_Audit.Visible := False;
  spt_uAudit.Visible := False;
  SpeedButton6.Visible := False; //拉单
  SpeedButton7.Visible := false; //推单
  

end;

end.
