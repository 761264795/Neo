unit uCacthCashierfrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBaseEditFrm, Menus,
  cxCurrencyEdit, cxTextEdit, cxControls,
  cxContainer, cxEdit, cxLabel, StdCtrls, cxButtons, ExtCtrls, DB, DBClient,
  cxLookAndFeelPainters;

type
  TfrmCacthCash = class(TSTBaseEdit)
    Panel1: TPanel;
    Bevel1: TBevel;
    cxbtnOk: TcxButton;
    cxbtnreturn: TcxButton;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxedtCashier: TcxTextEdit;
    cxMemo: TcxTextEdit;
    cxCurAmt: TcxCurrencyEdit;
    procedure cxbtnreturnClick(Sender: TObject);
    procedure cxbtnOkClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCacthCash: TfrmCacthCash;

implementation

uses FrmCliMain;

{$R *.dfm}

procedure TfrmCacthCash.cxbtnreturnClick(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TfrmCacthCash.cxbtnOkClick(Sender: TObject);
begin
  inherited;
  ModalResult := mrOk;
end;

procedure TfrmCacthCash.FormShow(Sender: TObject);
begin
  inherited;
  cxedtCashier.Text :=  FMCliMain.LoginUser_Name;
  cxCurAmt.SetFocus;
end;

end.
