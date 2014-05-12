unit uPubThreadQuery;

interface
uses
  SysUtils, ZLib, Variants, ComObj, DB, Classes, ADODB, StrUtils, UntTIO,
  Windows, Messages,Registry,Math,SConnect,DBClient,Forms,Controls,FrmCliDM,Pub_Fun;


type
  TPubQueryThread=class(TThread)
     protected
       procedure Execute;override;
     public
       cdsPub: TClientDataSet;
       SckCon: TSocketConnection;
       PHandle: LongWord;
       SQL : String;
       ResultMsgNumber : integer;
       FType : integer;  // 0:执行查询方法 1:执行无结果返回的语句
       //构造方法
       constructor Create;virtual;
       //释放对象
       destructor Destroy; override;
       function ConnectSckCon(var ErrMsg: string): boolean;
     //------------方法列表-------------------

     //OPEN SQL
     function OpenSQL(var _cds: TClientDataSet; SqlStr: string;
       var ErrMsg: string): Boolean;
     //执行SQL
     function ExecSQL(SqlStr: string; var ErrMsg: string): Boolean;
     //查询提醒中心数据
     function QueryRemind(var _cds: TClientDataSet; var ErrMsg: string): Boolean;

end;

implementation

{ TQueryThread }

constructor TPubQueryThread.Create;
begin
  SckCon:= TSocketConnection.Create(nil);
  SckCon.ServerName := 'PosServer.KD_PosServer';
  SckCon.ServerGUID :=  '{717432D5-8CAB-422F-A1E3-913E792C50C8}';
  SckCon.SupportCallbacks := False;
  inherited Create(True);
end;

procedure TPubQueryThread.Execute;
var RstErrMsg : string;
begin
  inherited;
  if cdsPub = nil then cdsPub := TClientDataSet.Create(nil);
  if FType = 0 then
  begin
    if not OpenSQL(cdsPub,SQL,RstErrMsg) then
    begin
      RstErrMsg := RstErrMsg+#0;
      PostMessage(PHandle,WM_I3Message,ErrMsgNO,Integer(Pchar(RstErrMsg)));
    end
    else
    begin
      PostMessage(PHandle,WM_I3Message,ResultMsgNumber,0);
    end;
  end
  else
  if FType = 1 then
  begin
    if not ExecSQL(SQL,RstErrMsg) then
    begin
      RstErrMsg := RstErrMsg+#0;
      PostMessage(PHandle,WM_I3Message,ErrMsgNO,Integer(Pchar(RstErrMsg)));
    end
    else
    begin
      PostMessage(PHandle,WM_I3Message,ResultMsgNumber,0);
    end;
  end
  else
  if FType = 3 then       //提醒中心
  begin
    if not QueryRemind(cdsPub,RstErrMsg) then
    begin
      RstErrMsg := RstErrMsg+#0;
      PostMessage(PHandle,WM_I3Message,ErrMsgNO,Integer(Pchar(RstErrMsg)));
    end
    else
    begin
      PostMessage(PHandle,WM_I3Message,ResultMsgNumber,0);
    end;
  end;
end;

function TPubQueryThread.ConnectSckCon(var ErrMsg: string): boolean;
begin
  Result := True;
  try
    if not SckCon.Connected then SckCon.Open;
  except
    on E: Exception do
    begin
      ErrMsg := '线程类连接服务器失败,请检查网络！';
      Gio.AddShow('线程类连接服务器错误：' + E.Message);
      Result := False;
      Exit;
    end;
  end;
end;
function TPubQueryThread.OpenSQL(var _cds: TClientDataSet; SqlStr: string;
  var ErrMsg: string): Boolean;
var
  Data: OleVariant;
begin
  Result := True;
  Result := ConnectSckCon(ErrMsg);
  if not Result then Exit;
  try
    Gio.AddShow(Format('查询数据 - 开始：%s', [SqlStr]));
    Result := SckCon.AppServer.Pub_QuerySQL(SqlStr, Data, ErrMsg) = 0;
    if Result then
    begin
      //解压缩数据包
      Data := UnZip_OleVariant(Data);
      try
        _cds.Data := Data;
      except
        on e : Exception do
        begin
          ErrMsg := e.Message;
          Gio.AddShow(Format('查询数据 - 出错：%s', [ErrMsg]));
          Result := False;
        end;
      end;
    end
    else Gio.AddShow(Format('查询数据 - 出错：%s', [ErrMsg]));
  finally
    if SckCon.Connected then SckCon.Close;
  end;
end;

function TPubQueryThread.ExecSQL(SqlStr: string; var ErrMsg: string): Boolean;
begin
  Result := True;
  Result := ConnectSckCon(ErrMsg);
  if not Result then exit;
  try
    Gio.AddShow(Format('执行脚本 - 开始：%s', [SqlStr]));
    Result := SckCon.AppServer.Pub_ExecSql(SqlStr, ErrMsg) = 0;
    if Result then
    begin
      Gio.AddShow(Format('执行脚本 - 完成：%s', [SqlStr]));
    end
    else Gio.AddShow(Format('执行脚本 - 出错：%s', [ErrMsg]));
  finally
    if SckCon.Connected then SckCon.Close;
  end;
end;
function TPubQueryThread.QueryRemind(var _cds: TClientDataSet; var ErrMsg: string): Boolean;
var Data: OleVariant;
    Rst : Integer;
begin
  Result := True;
  Result := ConnectSckCon(ErrMsg);
  Data := _cds.Data;
  if not Result then exit;
  try
    try
      Gio.AddShow('获取提醒中心数据 - 开始...');
      { TODO : jibin_guo暂时调整 }
      rst := 0; //SckCon.AppServer.E_Get_RemindList(userinfo.LoginUser_FID, userinfo.Branch_ID,Data,ErrMsg);
      if Rst = 0 then
      begin
        _cds.Data := Data;
        Result    := True;
        Gio.AddShow('获取提醒中心数据 - 完成...');
      end
      else
      if Rst = -1 then
      begin
        Result := False;
        Gio.AddShow('获取提醒中心数据 - 出错:'+ErrMsg);
      end
      else
      if Rst = 1 then
      begin
        Result := True;
        Gio.AddShow('获取提醒中心:当前用户没有提醒项...');
      end;
    except
      on e : Exception do
      begin
        ErrMsg := e.Message;
        Gio.AddShow(Format('获取提醒中心数据 - 出错：%s', [ErrMsg]));
        Result := False;
      end;
    end;
  finally
    if SckCon.Connected then SckCon.Close;
  end;
end;
destructor TPubQueryThread.Destroy;
begin
  if SckCon.Connected then
  begin
    SckCon.Close;
  end;
  SckCon.Free;
end;

end.
