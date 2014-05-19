unit uWaitBox_R;

interface

uses
  SysUtils, Classes, Controls, Forms,
  StdCtrls, ExtCtrls, jpeg;

type
  TFrmWaitBox = class(TForm)
    Label1: TLabel;
    LbMsg: TLabel;
    lb: TLabel;
    Panel1: TPanel;
    Image1: TImage;
    procedure FormShow(Sender: TObject);
    procedure FormPaint(Sender: TObject);
  private
    { Private declarations }
  public
    msg:string;
    { Public declarations }
  end;

var
  FrmWaitBox: TFrmWaitBox;

implementation

{$R *.dfm}



procedure TFrmWaitBox.FormShow(Sender: TObject);
begin
  lb.Caption:=trim(msg);
  FrmWaitBox.Width:=lb.Width+66;
  lbmsg.Width:=lb.Width+30;
  lbmsg.Caption:=msg;
end;

procedure TFrmWaitBox.FormPaint(Sender: TObject);
begin
  lbmsg.Caption:=msg;
end;

end.



