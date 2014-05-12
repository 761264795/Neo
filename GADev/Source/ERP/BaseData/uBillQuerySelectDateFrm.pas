unit uBillQuerySelectDateFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBaseEditFrm, DB, DBClient, ComCtrls, Menus,
  cxLookAndFeelPainters, StdCtrls, cxButtons, ExtCtrls;

type
  TBillQuerySelectDateFrm = class(TSTBaseEdit)
    Panel1: TPanel;
    datetl: TMonthCalendar;
    btYes: TcxButton;
    btCancel: TcxButton;
    procedure btCancelClick(Sender: TObject);
    procedure btYesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BillQuerySelectDateFrm: TBillQuerySelectDateFrm;
  function BillQuerySelectDate(OldDate:string):TDateTime;
implementation

{$R *.dfm}
  function BillQuerySelectDate(OldDate:string):TDateTime;
  begin
    Result := 0;
    Application.CreateForm(TBillQuerySelectDateFrm,BillQuerySelectDateFrm);
    if Trim(OldDate) <> '' then
    BillQuerySelectDateFrm.datetl.Date := StrToDate(OldDate)
    else
    BillQuerySelectDateFrm.datetl.Date := Date;
    if BillQuerySelectDateFrm.ShowModal = mrok then
    Result := BillQuerySelectDateFrm.datetl.Date;
    BillQuerySelectDateFrm.Free;
  end;
procedure TBillQuerySelectDateFrm.btCancelClick(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TBillQuerySelectDateFrm.btYesClick(Sender: TObject);
begin
  inherited;
  Self.ModalResult := mrOk;
end;

end.
