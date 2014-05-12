unit QueryThread;

interface
uses
  SysUtils, ZLib, Variants, ComObj, DB, Classes, ADODB, StrUtils, UntTIO,
  Windows, Messages,Registry,Math,DBClient,FrmCliMain,Forms,Controls;
type
  TQueryThread=class(TThread)
     private
       _cds,_msgCds: TClientDataSet;
     protected
       procedure Execute;override;
       procedure getMainFrmMsg;
       procedure GetAppData(var fid:string ;var QTY1,QTY2, QTY3, QTY4, QTY5, QTY6,QTY7,Qty8:integer;var DayStr:string; var Data,msgdata: OleVariant);
     public
       fid:string;
       QTY1,QTY2, QTY3, QTY4, QTY5, QTY6,QTY7,Qty8:integer;
       DayStr:string;
       Data,_msgdata: OleVariant;
       constructor Create;virtual;
end;
       
var RTL_Section:TRTLCriticalSection;

implementation
uses FrmCliDM,Pub_Fun,Graphics;
{ TQueryThread }

constructor TQueryThread.Create;
begin
  _cds    := TClientDataSet.Create(nil);
  _msgCds := TClientDataSet.Create(nil);
  inherited Create(False);
end;

procedure TQueryThread.Execute;
begin
  inherited;
  //getMainFrmMsg;
  GetAppData(UserInfo.Warehouse_FID,QTY1,QTY2, QTY3, QTY4, QTY5, QTY6,QTY7,Qty8,DayStr,Data,_msgdata);
  synchronize(getMainFrmMsg);
end;



procedure TQueryThread.GetAppData(var fid:string ;var QTY1,QTY2, QTY3, QTY4, QTY5, QTY6,QTY7,Qty8:integer;var DayStr:string; var Data,msgdata: OleVariant);
var ErrMsg:string;
begin
  CliDM.ConnectSckCon(ErrMsg);
  try
    CliDM.SckCon.AppServer.GetMainRefesh(UserInfo.Warehouse_FID,QTY1,QTY2, QTY3, QTY4, QTY5, QTY6,QTY7,Qty8,DayStr,Data,msgdata,userinfo.LoginUser_FID);
    try
        Data := UnZip_OleVariant(Data);
        TClientDataSet(_cds).Data := Data;
        msgdata := UnZip_OleVariant(msgdata);
        TClientDataSet(_msgCds).Data := msgdata;
    except
      on e : Exception do
      begin
        ErrMsg := e.Message;
        Gio.AddShow(e.Message+ErrMsg);
      end;
    end;
  finally
    if CliDM.SckCon.Connected then CliDM.SckCon.Close;
  end;
end;

procedure TQueryThread.getMainFrmMsg;
var sql,errmsg:string;
    i:Integer;
    weekstr,wk,sqlstr:string;
    qry:TADOQuery;
function locateDataset(cds:TClientDataSet;fieldName:string;val:string):Boolean;
begin
  Result:=False;
  if cds.IsEmpty then Exit;
  cds.First;
  while not cds.Eof do
  begin
    if UpperCase(Trim(cds.FieldByName(fieldName).AsString))=UpperCase(Trim(val)) then
    begin
      Result:=True;
      Exit;
    end;
    cds.Next;
  end;
end;
begin
  try
    FMCliMain.btnRefresh.Enabled:=false;
    //消息
    if FMCliMain.dsATTACHMEN.Active then FMCliMain.dsATTACHMEN.Close;  //附件列表
    FMCliMain.dsNewMessage.Data:=_msgCds.Data;
  finally
    FMCliMain.btnRefresh.Enabled:=true;
    self.Terminate;
  end;

end;

end.
