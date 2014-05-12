unit uLeaveCheckInfrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBaseEditFrm, Menus, cxLookAndFeelPainters, dxSkinsCore,
  cxCurrencyEdit, cxTextEdit, cxControls,
  cxContainer, cxEdit, cxLabel, StdCtrls, cxButtons, ExtCtrls,
  dxSkinOffice2007Black;

type
  TfrmLeaveCheckIn = class(TSTBaseEdit)
    Panel1: TPanel;
    Bevel1: TBevel;
    cxbtnOk: TcxButton;
    cxbtnreturn: TcxButton;
    cxLabel1: TcxLabel;
    cxLabel3: TcxLabel;
    cxedtCashier: TcxTextEdit;
    cxCurrTime: TcxTextEdit;
    procedure cxbtnOkClick(Sender: TObject);
    procedure cxbtnreturnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLeaveCheckIn: TfrmLeaveCheckIn;

implementation
 uses  FrmCliMain;
{$R *.dfm}

procedure TfrmLeaveCheckIn.cxbtnOkClick(Sender: TObject);
begin
  inherited;
  ModalResult := mrOk;
end;

procedure TfrmLeaveCheckIn.cxbtnreturnClick(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TfrmLeaveCheckIn.FormShow(Sender: TObject);
begin
  inherited;
  cxCurrTime.Text := DateTimeToStr(Now());
  cxedtCashier.Text :=  FMCliMain.LoginUser_Name;
end;

end.
