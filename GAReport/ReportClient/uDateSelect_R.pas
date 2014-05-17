unit uDateSelect_R;

interface

uses
  SysUtils, Classes, Controls, Forms,
  Buttons, ComCtrls, ExtCtrls, StdCtrls;

type
  TDateSelectFrm = class(TForm)
    datetl: TMonthCalendar;
    btYes: TBitBtn;
    btCancel: TBitBtn;
    Panel1: TPanel;
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure FormShow(Sender: TObject);
    procedure btYesClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DateSelectFrm_R: TDateSelectFrm;
  function getSelectDate:string;
implementation

{$R *.dfm}

procedure TDateSelectFrm.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
  Resize:=False;
end;

procedure TDateSelectFrm.FormShow(Sender: TObject);
begin
  datetl.Date:=date();
end;
function getSelectDate:string;
begin
  result:='';
  try
    application.CreateForm(TDateSelectFrm,DateSelectFrm_R);
    if DateSelectFrm_R.ShowModal=mrok then
    result:=FormatDateTime('yyyy-MM-dd',DateSelectFrm_R.datetl.Date);
  finally
    DateSelectFrm_R.Free;
  end;
end;
procedure TDateSelectFrm.btYesClick(Sender: TObject);
begin
  self.ModalResult:=mrok;
end;

procedure TDateSelectFrm.btCancelClick(Sender: TObject);
begin
  close;
end;

end.
