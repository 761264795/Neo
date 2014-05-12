unit uI3AboutFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBaseEditFrm, DB, DBClient, jpeg, StdCtrls, dxGDIPlusClasses,
  ExtCtrls;

type
  TI3AboutFrm = class(TSTBaseEdit)
    Image1: TImage;
    Label1: TLabel;
    Image2: TImage;
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure Image2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  I3AboutFrm: TI3AboutFrm;
  procedure I3About;
implementation

{$R *.dfm}
procedure I3About;
begin
  Application.CreateForm(TI3AboutFrm,I3AboutFrm);
  I3AboutFrm.ShowModal;
  I3AboutFrm.Free;
end;
procedure TI3AboutFrm.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
  inherited;
  Resize := False;
end;

procedure TI3AboutFrm.Image2Click(Sender: TObject);
begin
  inherited;
  Self.Close;
end;

end.
