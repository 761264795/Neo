unit uSQL_R;

interface

uses
  SysUtils, Classes, Controls, Forms,
  StdCtrls, ExtCtrls, DB, DBClient;

type
  TSQLFrm = class(TForm)
    Panel1: TPanel;
    SqlMM: TMemo;
    Button1: TButton;
    Button2: TButton;
    Panel2: TPanel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SQLFrm: TSQLFrm;
  procedure SetSQL(Qry:TClientDataSet);

implementation

{$R *.dfm}
procedure SetSQL(Qry:TClientDataSet);
begin
  Application.CreateForm(TSQLFrm,SQLFrm);
  SQLFrm.SqlMM.Text:=Qry.fieldbyname('FINDVALUE').asstring;
  if SQLFrm.ShowModal=mrok then
  begin
    Qry.Edit;
    Qry.fieldbyname('FINDVALUE').asstring:=Trim(SQLFrm.SqlMM.Text);
    Qry.Post;
  end;
  SQLFrm.Free;
end;
procedure TSQLFrm.Button1Click(Sender: TObject);
begin
  Self.ModalResult:=mrOk;
end;

procedure TSQLFrm.Button2Click(Sender: TObject);
begin
  close;
end;

end.
