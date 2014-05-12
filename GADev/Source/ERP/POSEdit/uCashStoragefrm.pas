unit uCashStoragefrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBaseEditFrm, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinOffice2007Black, cxCurrencyEdit, cxTextEdit, cxControls,
  cxContainer, cxEdit, cxLabel, StdCtrls, cxButtons, ExtCtrls;

type
  TfrmCashStorage = class(TSTBaseEdit)
    Panel1: TPanel;
    cxbtnOk: TcxButton;
    cxbtnReturn: TcxButton;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxedtCashier: TcxTextEdit;
    cxMemo: TcxTextEdit;
    cxCurAmt: TcxCurrencyEdit;
    Bevel1: TBevel;
    procedure cxbtnOkClick(Sender: TObject);
    procedure cxbtnReturnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCashStorage: TfrmCashStorage;

implementation
  uses FrmCliDM, FrmCliMain;
{$R *.dfm}

procedure TfrmCashStorage.cxbtnOkClick(Sender: TObject);
begin
  inherited;
  ModalResult := mrOk;
end;

procedure TfrmCashStorage.cxbtnReturnClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmCashStorage.FormShow(Sender: TObject);
begin
  inherited;
  cxedtCashier.Text :=  FMCliMain.LoginUser_Name;
  cxCurAmt.setfocus;
end;

end.
