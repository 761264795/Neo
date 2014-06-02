unit uTransferBillBaseFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient;

type
  TTransferBillBaseFrm = class(TForm)
    dsDestMaster: TDataSource;
    dsDestDetail: TDataSource;
    cdsDestDetail: TClientDataSet;
    cdsDestMaster: TClientDataSet;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }

      redBill: boolean;
  public
    { Public declarations }
      procedure Transfer(cdsSrcs: array of TClientDataSet);virtual;abstract;
      procedure OpenDestBillFrm;virtual;abstract;
      procedure SaveDest(var cdsDests: array of TClientDataSet;destTableNames: array of string);
      function IsOpenDestBill:boolean;virtual;
      function IsRedBill: boolean;
      procedure SetRedBillFlag(redBillFlag:boolean);
  end;

var
  TransferBillBaseFrm: TTransferBillBaseFrm;

implementation

uses FrmCliDM;

{$R *.dfm}


procedure TTransferBillBaseFrm.SaveDest(var cdsDests: array of TClientDataSet;destTableNames: array of string);
var
  errMsg: string;
  i:integer;
begin
  if 1=1 then
  begin
    ShowMessage('savedest');
    exit;
  end;
  for i := 0 to length(cdsDests) do
  begin
    if cdsDests[i].State in db.dsEditModes then
        cdsDests[i].Post;
  end;

  //提交数据
  try
    if CliDM.Apply_Delta_Ex(cdsDests,destTableNames,ErrMsg) then
    begin
      Gio.AddShow('转单成功');
    end
    else
    begin
      Gio.AddShow(ErrMsg);
    end;
  except
    on E: Exception do
    begin
      Gio.AddShow(ErrMsg);
    end;
  end;
end;

function TTransferBillBaseFrm.IsOpenDestBill:boolean;
begin
  Result := true;
end;

procedure TTransferBillBaseFrm.FormCreate(Sender: TObject);
begin
  self.redBill := false;
end;

function TTransferBillBaseFrm.IsRedBill: boolean;
begin
  Result := redBill;
end;
procedure TTransferBillBaseFrm.SetRedBillFlag(redBillFlag:boolean);
begin
  redBill := redBillFlag;
end;

end.
