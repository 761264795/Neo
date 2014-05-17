unit uClientInfoFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, GridsEh, DBGridEh, Buttons, DB, ADODB,main, DHDMfrm;

type
  TClientInfoFrm = class(TForm)
    DBGridEh1: TDBGridEh;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    QryORCL: TADOQuery;
    dsClient: TDataSource;
    QryORCLFID: TWideStringField;
    QryORCLCLIENTMACHINEID: TWideStringField;
    QryORCLLASTLOGINTIME: TDateTimeField;
    QryORCLDES1: TWideStringField;
    QryORCLDES2: TWideStringField;
    QryORCLDES3: TWideStringField;
    QryORCLDES4: TWideStringField;
    QrySQL: TADOQuery;
    WideStringField1: TWideStringField;
    WideStringField2: TWideStringField;
    DateTimeField1: TDateTimeField;
    WideStringField3: TWideStringField;
    WideStringField4: TWideStringField;
    WideStringField5: TWideStringField;
    WideStringField6: TWideStringField;
    R_PL: TPanel;
    procedure QryORCLNewRecord(DataSet: TDataSet);
    procedure QrySQLNewRecord(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    dm:TDHDM;
  end;

var
  ClientInfoFrm: TClientInfoFrm;

implementation
{$R *.dfm}

procedure TClientInfoFrm.QryORCLNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('FID').AsString:=getGuid;
end;

procedure TClientInfoFrm.QrySQLNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('FID').AsString:=getGuid;
end;

procedure TClientInfoFrm.FormShow(Sender: TObject);
begin
  dm:=TDHDM.Create(nil);
  QryORCL.Connection:=dm.ADOCont;
  QrySQL.Connection:=dm.ADOConn;
  if dbType='oracle' then
  begin
    with QryORCL Do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select * from F_REPORTREGINFO');
      Open;
      dsClient.DataSet:=QryORCL;
    end;
  end
  else
  begin
    with QrySQL Do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select * from F_REPORTREGINFO');
      Open;
      dsClient.DataSet:=QrySQL;
    end;
  end;
end;

procedure TClientInfoFrm.SpeedButton1Click(Sender: TObject);
begin
  with DBGridEh1.DataSource.DataSet do
  begin
    if State in [dsinsert,dsedit] then  Post;
    try
      TADOQuery(DBGridEh1.DataSource.DataSet).UpdateBatch();
      ShowMessage('数据保存成功!       ');
    except
      on e:Exception do
      begin
        ShowMessage('数据保存失败!原因:'+e.Message);
      end;
    end;
  end;
end;

procedure TClientInfoFrm.SpeedButton2Click(Sender: TObject);
begin
  if Messagedlg('确认删除客户端注册信息?(Y/N)',mtwarning,[mbyes,mbno],0)   =   mrno   then
  begin
    Exit;
  end;
  if not TADOQuery(DBGridEh1.DataSource.DataSet).IsEmpty then
  TADOQuery(DBGridEh1.DataSource.DataSet).Delete;
end;

procedure TClientInfoFrm.SpeedButton3Click(Sender: TObject);
begin
  close;
end;

end.
