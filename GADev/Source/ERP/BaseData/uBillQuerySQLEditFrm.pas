unit uBillQuerySQLEditFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBaseEditFrm, DB, DBClient, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxMemo, ExtCtrls, Menus, cxLookAndFeelPainters, StdCtrls,
  cxButtons;

type
  TBillQuerySQLEditFrm = class(TSTBaseEdit)
    Panel1: TPanel;
    m_SQL: TcxMemo;
    btn_Save: TcxButton;
    tbn_Exit: TcxButton;
    Label1: TLabel;
    procedure btn_SaveClick(Sender: TObject);
    procedure tbn_ExitClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BillQuerySQLEditFrm: TBillQuerySQLEditFrm;
  function GetBillSQL(var _sql:string):Boolean;
implementation

{$R *.dfm}
function GetBillSQL(var _sql:string):Boolean;
begin
  Result := False;
  Application.CreateForm(TBillQuerySQLEditFrm,BillQuerySQLEditFrm);
  BillQuerySQLEditFrm.m_SQL.Text := _sql;
  if BillQuerySQLEditFrm.ShowModal =mrOK then
  begin
    _sql := BillQuerySQLEditFrm.m_SQL.Text;
    Result := True;
  end;
  BillQuerySQLEditFrm.Free;
end;
procedure TBillQuerySQLEditFrm.btn_SaveClick(Sender: TObject);
begin
  inherited;
  Self.ModalResult := mrOk;
end;

procedure TBillQuerySQLEditFrm.tbn_ExitClick(Sender: TObject);
begin
  inherited;
  self.Close;
end;

procedure TBillQuerySQLEditFrm.FormShow(Sender: TObject);
begin
  inherited;
  m_sql.SetFocus;
end;

end.
