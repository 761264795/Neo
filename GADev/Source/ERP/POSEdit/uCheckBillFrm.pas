unit uCheckBillFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons, cxControls,
  cxContainer, cxEdit, cxTextEdit, ExtCtrls, cxMaskEdit, cxDropDownEdit,
  cxCalendar, cxDBEdit;

type
  TfrmCheckBill = class(TSTBaseEdit)
    pnClient: TPanel;
    cbHang: TcxTextEdit;
    btOK: TcxButton;
    clBill: TLabel;
    Label2: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    Label1: TLabel;
    Label3: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCheckBill: TfrmCheckBill;

implementation

{$R *.dfm}

end.
