unit uAddNewRpt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons,
  cxTextEdit, cxControls, cxContainer, cxEdit, cxLabel;

type
  TfrmAddNewRpt = class(TForm)
    cxLabel1: TcxLabel;
    txtRptNumber: TcxTextEdit;
    cxLabel2: TcxLabel;
    txtRptName: TcxTextEdit;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    FRptNumber, FRptName: string;
  end;

var
  frmAddNewRpt: TfrmAddNewRpt;

implementation

{$R *.dfm}

procedure TfrmAddNewRpt.cxButton1Click(Sender: TObject);
begin
  FRptNumber := txtRptNumber.Text;
  FRptName := txtRptName.Text;
end;

end.
