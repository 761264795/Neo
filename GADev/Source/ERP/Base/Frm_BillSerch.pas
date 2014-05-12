unit Frm_BillSerch;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, StdCtrls, ExtCtrls, Buttons;

type
  TFM_BillSerch = class(TForm)
    pnlDate: TPanel;
    chkBillNo: TCheckBox;
    lbl_Date2: TLabel;
    cxBegDate: TcxDateEdit;
    cxEndDate: TcxDateEdit;
    lblDate: TLabel;
    pnlBillNo: TPanel;
    Label1: TLabel;
    edtBegBillNo: TcxTextEdit;
    cxEndBillNo: TcxTextEdit;
    btnOk: TBitBtn;
    btnCancel: TBitBtn;
    procedure chkBillNoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FM_BillSerch: TFM_BillSerch;

implementation

{$R *.dfm}

procedure TFM_BillSerch.chkBillNoClick(Sender: TObject);
begin
  pnlBillNo.Enabled := chkBillNo.Checked;  
end;

end.
