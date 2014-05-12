unit uDutyCheckIn;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBaseEditFrm, ExtCtrls, dxSkinsCore, dxSkinOffice2007Black,
  Menus, cxLookAndFeelPainters, cxCurrencyEdit, cxMaskEdit, cxButtonEdit,
  cxTextEdit, StdCtrls, cxButtons, cxControls, cxContainer, cxEdit, cxLabel;

type
  TfrmDutyCheckIn = class(TSTBaseEdit)
    Panel1: TPanel;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxbtnOK: TcxButton;
    cxbtnReturn: TcxButton;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxedtCashier: TcxTextEdit;
    cxbtnPoSNum: TcxButtonEdit;
    cxbtnClass: TcxButtonEdit;
    cxCurFee: TcxCurrencyEdit;
    cxedtCurTime: TcxTextEdit;
    Bevel1: TBevel;
    procedure cxbtnOKClick(Sender: TObject);
    procedure cxbtnReturnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDutyCheckIn: TfrmDutyCheckIn;

implementation

uses FrmCliMain;

{$R *.dfm}

procedure TfrmDutyCheckIn.cxbtnOKClick(Sender: TObject);
begin
  inherited;
  ModalResult := mrok;
end;

procedure TfrmDutyCheckIn.cxbtnReturnClick(Sender: TObject);
begin
  inherited;
  close; 
end;

procedure TfrmDutyCheckIn.FormShow(Sender: TObject);
begin
  inherited;
  cxedtCashier.Text :=  FMCliMain.LoginUser_Name;
  cxedtCurTime.Text := DateTimeToStr(Now());
  cxbtnPoSNum.SetFocus;
end;

end.
