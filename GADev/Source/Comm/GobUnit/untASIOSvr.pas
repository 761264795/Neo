unit untASIOSvr;
{*******************************************************************************
        ��Ԫ���ƣ�untASIOSvr.pas
        �������ڣ�2011-04-07 17:26:15
        ������	        
        ����:     ASIO ��ɶ˿ڷ�����ͨ�÷�װ
        ��ǰ�汾��v1.0.0
        ��ʷ��
        v1.0.0 2011-04-07
                  ��������Ԫ����ASIO���и�Ч�ʵķ�װ��
                  ͬʱ��װ��Ч�����ݴ���ģ��
********************************************************************************}

interface

uses
  Classes, SyncObjs, Graphics;

const
  Casio_State_Init = 0;
  Casio_State_Conned = 1;
  Casio_State_DisConn = 2;
  CdataRcv_State_head = 1;
  CdataRcv_State_len = 2;
  CdataRcv_State_Body = 3;

  Ckind_Norma = '1'; //��ͨ�ڴ�
  Ckind_Bmp176 = '2';
  Ckind_Bmp352 = '3';
  Ckind_Bmp720 = '4';
  Ckind_BmpFree = '5';
  Ckind_FreeMem = '6'; //��һ���ڴ�
  CMemPool_FreeMem = '6';

type
  {�ڴ����}
  TPoolItem = class
  public
    FisUse: boolean;
    Fkind: string;
    Fbmp: TBitmap;
    FMem: TMemoryStream;
    constructor Create();
    destructor Destroy; override;
  end;
  {�ڴ��������}
  TMemPools = class
  public
    Flock: TCriticalSection;
    FObjs: TStrings; //�������б�
    FbmpLst: TStrings; //λͼ�б�
    FmemLst: TStrings; //�ڴ��б�

    function GetTotSize: Int64;
    function CreateBuff(Ikind: string): TPoolItem;

    procedure Init(); //��ʼ��
    function GetBuff(Ikind: string): TPoolItem;
    procedure BackBuff(Iobj: TPoolItem);

    constructor Create();
    destructor Destroy; override;
  end;
  TWorkThread = class;
  TAsioSvr = class;
 {�̳߳� ���˹��������߳�}
  TAsioThreadPool = class
  private
    FLock: TCriticalSection;
    FThreadLst: TStrings; //�̶߳���
    FmissonLst: TStrings; //��������
  public
    GAsioTCP: TAsioSvr;
//------------------------------------------------------------------------------
// ����һ���ȴ��Ĺ�������  2011-04-07 10:38:29   ������
//------------------------------------------------------------------------------
    procedure AddMisson(Imisson: TObject);
//------------------------------------------------------------------------------
// ��ȡһ�������еĹ����߳�  2011-04-07 10:16:43   ������
//------------------------------------------------------------------------------
    function GetWorker: TWorkThread;
    //���ṩʹ�õĹ����߳���
    constructor Create(IThreadCount: Integer = 1);
    destructor Destroy; override;
  end;

  {�����߳� ���������ݴ���}
  TWorkThread = class(TThread)
  public
    Parent: TAsioThreadPool;
    Userdata: Pointer; //�û�����ָ��

    {���ݴ�������}
    procedure DoCase;
    procedure Execute; override;
  end;

  TAsioClient = class; //��ǰ����
  {��Ч�����ݴ���BUFFER ÿ���ͻ���ӵ��һ����buffer}
  TAsioDataBuffer = class
  private
    Fstate: Integer;
    procedure Setstate(const Value: Integer); //������
  public
    CurrPost, ReadPos: integer;
    FDataLock: TCriticalSection;
    Parent: TAsioClient;
    Casestate: integer; //���ݴ���״̬
    llen: Integer;
    headCount: integer;
    Gbuff: array[0..2048] of byte;
    Memory: TMemoryStream;
    WantData: integer;
    procedure ReLoadData; //����װ������ ���⻺��̫��
    procedure Indata(Idata: pointer; ilen: integer); //���ݽ������
//------------------------------------------------------------------------------
// ��Щ�������Ƿ����ʱ�õ�  2011-04-14 15:28:27   ������
    function ReadInteger(IrcvGob: Boolean = false; ITrans: Boolean = True): Integer;
    function ReadStr(Ilen: integer; IrcvGob: Boolean = false): AnsiString;
    function ReadBuff(Ibuffer: Pointer; Ilen: integer; IrcvGob: Boolean = false):
      Integer;
    procedure Writeinteger(Iin: Integer; Ihtn: boolean = true);
    procedure Write(IBuffer: Pointer; Ilen: Integer); overload;
    procedure Write(IStr: AnsiString); overload;
    {�Ͽ�����}
    procedure Disconnect;
//------------------------------------------------------------------------------

    function GetCanUseSize: Integer;



    property state: Integer read Fstate write Setstate;

    procedure DoCase;
    constructor Create();
    destructor Destroy; override;
  end;
   {�ͻ��˶���}
  TAsioClient = class
    FisConning: Boolean;
    Parent: TAsioSvr;
    Guid: string;
    Socketptr: integer; //���ݽӿ�ָ��
    PeerIP: string;
    PeerPort: Word;
    State: Integer; //״̬
    ConnTime: Cardinal; //����ʱ��
    LiveTime: Cardinal; //����ʱ��
    ReConnTime: Cardinal; //��������
    RcvCount: Integer; //�����ֽ���
    SendCount: Integer; //�����ֽ���
    Socket: TAsioDataBuffer; //Ϊ�����ϳ��������� ����RcvDataBuffer�����ָ��
    RcvDataBuffer: TAsioDataBuffer; //����buffer
    iscasing: Boolean; //�Ƿ����ڱ�����
    isInCaseList: Boolean; //�Ƿ��Ѿ��ڵȴ�����������
    SendRef: Integer; //���ͼ��� ���Ƿ��Ѿ�����
    DeadTime: Cardinal; //����ʱ��
    MemPool: TMemPools; //���ͻ����
    lastcasetime: Cardinal; //��һ�α�������ʱ��
    ConnState: Integer; //�ͻ���״̬
    {�����ʱ�õķ��ͺ���}
    procedure SendData(Idata: TPoolItem);


    {����һ��ASIO����}
    function InitAsioClient: boolean;

    {���ӷ����}
    function ConnToSvr(Iip: ansistring; Iport: Word): Boolean;
    {������ʽ��������}
    function Writeinteger(Iint: Integer; ITrans: boolean = true): Integer;
    function Write(Ibuffer: Pointer; Ilen: Integer): Integer; overload;
    function Write(Istr: AnsiString): Integer; overload;


    function WriteString(Istr: AnsiString): Integer;
    {������ʽ��������}
    function Readinteger(Itrans: Boolean = true): integer;
    function ReadBuffer(Ibuffer: Pointer; Ilen: Integer): integer;
    function ReadStr(Ilen: Integer): AnsiString;

    //�첽��������
    function ReceiveLength: Integer;
    {�Ͽ�����}
    function CloseConn(): Boolean;
    {��������Ƿ��ж�}
    function IsConning: Boolean;

    constructor Create();
    destructor Destroy; override;
  end;

  //�ͻ����½�����
  TAsio_OnConn = procedure(Iclient: TasioClient) of object;
  //�ͻ��˶Ͽ�����
  TAsio_OnDisConn = procedure(Iclient: TasioClient) of object;
  //���յ�ĳ�ͻ��˵�����
  TAsio_Ondatarcv = procedure(IClient: TAsioClient; Ibuff: Pointer; Ilen: integer) of object;
  //���ݴ���
  TAsio_OnCaseData = procedure(IClient: TAsioClient; IwantLen: integer) of object;

  {����˶���}
  TAsioSvr = class
  protected

    FmainThread: TThread;
  public
    Fport: Integer;
    FNoliveTimeOut: Integer; //û�������ĳ�ʱ�ͻ���
    Flock: TCriticalSection;
//------------------------------------------------------------------------------
// �����ṩ���ⲿ�Ļص�����  2011-04-06 18:10:15   ������
    FOnClientConn: TAsio_OnConn;
    FOnClientDisConn: TAsio_OnDisConn;
    FOnClientRecvData: TAsio_Ondatarcv;
    FonClientSendData: TAsio_Ondatarcv;
    FOnCaseData: TAsio_OnCaseData;
//------------------------------------------------------------------------------
    workPool: TAsioThreadPool;
    FClientLst: TStrings;
    FDeadClients: tStrings;
    FlastCheckDead: Cardinal;
    function ShowBytes(Ibytes: Int64): string;

    //��ȡ�����û��ڴ�����
    function GetClientMem: Int64;

    //��ȡ�����ڴ�����
    function GetSendBuffMem: Int64;
    //����TCP����
    function StartSvr(Iport: word = 9951; IKind: string = 'tcp'): Boolean;
    //��������
    procedure StopSvr;

    //����Ƿ���Ҫ�ͷŵĶ���
    procedure CheckDeadClients;

    //�����Ͽ��ͻ�������
    function DisConn(IClient: TasioClient): boolean;
    constructor Create(WorkThreadCount: Integer = 1);
    destructor Destroy; override;
  end;

  TMainthread = class(TThread)
  public
    Parent: TAsioSvr;
    procedure Execute; override;
  end;


var
  GClientUserASIO: TAsioSvr;

implementation



uses IniFiles, SysUtils, Windows, WinSock, untfunctions;

var
  GIntAsioTCP: TAsioSvr;

const
  Cdllname = 'Svr_intf.dll';


procedure Asio_init(Iport: integer); cdecl; external Cdllname;
//------------------------------------------------------------------------------
//����Ϊ�ͻ��˽ӿ�   2011-04-14 15:47:05   ������

//����һ���ͻ��˶���

function Asio_Client_init(var Ipobj: integer): integer; cdecl; external Cdllname;

//�����Ͽ�����

function Asio_Client_DisConn(Ipobj: integer): integer; cdecl; external Cdllname;

//���ӷ�����

function Asio_Client_conntosvr(Ipobj: integer; ISvr: pansichar; iPort: integer; Iuserdata: integer): integer; cdecl; external Cdllname;

//�ͷŶ���

function Asio_Client_Free(Ipobj: integer): integer; cdecl; external Cdllname;

//�������� ͬ��

function Asio_Client_senddata(Ipobj: integer; Ibuff: Pointer; Ilen: integer): integer; cdecl; external Cdllname;

//��ȡ���� ͬ��

function Asio_Client_readdata(Ipobj: integer; Ibuff: Pointer; Ilen: integer): integer; cdecl; external Cdllname;

//�첽��ȡ����

function Asio_Client_Asreaddata(Ipobj: integer; Ibuff: Pointer; Ilen, Iuserdata: integer): integer; cdecl; external Cdllname;

//------------------------------------------------------------------------------



//------------------------------------------------------------------------------
//����Ϊ���������  2011-04-14 15:46:31   ������

procedure Asio_SvrRun(); cdecl; external Cdllname;

procedure Asio_Uninit(); cdecl; external Cdllname;

procedure Asio_SetCallback(ikind: Integer; ifun: Pointer); cdecl; external Cdllname;

procedure Asio_senddata(ikind: Integer; Isocker: integer; Ibuff: Pointer; Ilen: integer); cdecl; external Cdllname;

procedure Asio_closesocket(Isocker: integer); cdecl; external Cdllname;

procedure Asio_ConnedCallback(Ipsocket: integer; IPeerIP: pansichar; IpeerPort:
  integer; var IUserData: integer; var IwantRead: integer); stdcall;
var
  i: Integer;
  Lid: string;
  lcli: TAsioClient;
begin
  //asio����˽��յ�������
  Lid := StrPas(IPeerIP);
  Lid := Lid + ':' + IntToStr(IpeerPort);
  i := GIntAsioTCP.FClientLst.IndexOf(Lid);
  IwantRead := 8;
  if i > -1 then begin
    lcli := TAsioClient(GIntAsioTCP.FClientLst.Objects[i]);
    lcli.ConnTime := GetTickCount;
    lcli.State := Casio_State_Conned;
    lcli.LiveTime := GetTickCount;
    lcli.ReConnTime := 0;
    lcli.RcvCount := 0;
    lcli.SendCount := 0;
  end
  else begin
    lcli := TAsioClient.Create;
    lcli.Parent := GIntAsioTCP;
    lcli.ConnTime := GetTickCount;
    lcli.State := Casio_State_Conned;
    lcli.PeerIP := StrPas(IPeerIP);
    lcli.PeerPort := IpeerPort;
    lcli.Socketptr := Ipsocket;
    lcli.LiveTime := GetTickCount;
    lcli.Guid := Lid;
    GIntAsioTCP.FClientLst.AddObject(lcli.Guid, lcli);
  end;
  IUserData := Integer(lcli);
  if Assigned(GIntAsioTCP.FOnClientConn) then
    GIntAsioTCP.FOnClientConn(lcli);
//  {�������������}
//  GAsioTCP.CheckDeadClients;
end;

procedure Asio_readDataCallback(IData: Pointer; Ilen: Integer; Iuserdata: integer; var Ireadlen: integer); stdcall;
var
  Lci: TAsioClient;
begin
  //asio����˽��յ�����
  if Iuserdata > 0 then begin
    Lci := TAsioClient(Iuserdata);
    Lci.RcvCount := Lci.RcvCount + Ilen;
    Lci.LiveTime := GetTickCount;
    Lci.RcvDataBuffer.Indata(IData, Ilen);
    if Assigned(GIntAsioTCP.FOnClientRecvData) then
      GIntAsioTCP.FOnClientRecvData(Lci, IData, Ilen);
  end;
end;

procedure Asio_writeDataCallback(Iuserdata, iuser2: integer); stdcall;
var
  Lci: TAsioClient;
begin
  //asio����˽��յ�����
  if Iuserdata > 0 then begin
    Lci := TAsioClient(Iuserdata);
    Lci.LiveTime := GetTickCount;
    Lci.SendCount := Lci.SendCount + TPoolItem(iuser2).FMem.Position;
    Lci.MemPool.BackBuff(TPoolItem(iuser2));
    InterlockedDecrement(Lci.SendRef);
    if Assigned(GIntAsioTCP.FOnClientRecvData) then
      GIntAsioTCP.FonClientSendData(Lci, nil, TPoolItem(iuser2).FMem.Position);
  end;
end;

procedure Asio_DisConnedCallback(iuserdata: integer); stdcall;
var
  Lci: TAsioClient;
  i: Integer;
begin
  //asio����������ж�
  if iuserdata > 0 then begin
    Lci := TAsioClient(iuserdata);
    Lci.FisConning := False;
    if Lci.DeadTime > 0 then Exit;
    GIntAsioTCP.Flock.Acquire;
    try
      Lci.DeadTime := GetTickCount;
      if Assigned(GIntAsioTCP.FOnClientDisConn) then
        GIntAsioTCP.FOnClientDisConn(Lci);
    finally
      i := GIntAsioTCP.FClientLst.IndexOf(Lci.Guid);
      if i > -1 then
        GIntAsioTCP.FClientLst.Delete(i);
      //�ŵ��Ѿ������Ŀͻ��˶����У��ȴ����ͼ���Ϊ0�� �ͷ�

      GIntAsioTCP.FDeadClients.AddObject(Lci.Guid, Lci);
      GIntAsioTCP.Flock.Release;
    end;
  end;
end;
//------------------------------------------------------------------------------

{ TAsioSvr }

procedure TAsioSvr.CheckDeadClients;
var
  i: Integer;
  lbuff: TAsioClient;
begin
  if GetTickCount - FlastCheckDead > 5000 then begin
    FlastCheckDead := GetTickCount;
    for i := FDeadClients.Count - 1 downto 0 do begin
      if (TAsioClient(FDeadClients.Objects[i]).SendRef = 0) and
        (TAsioClient(FDeadClients.Objects[i]).isInCaseList = False) and
        (TAsioClient(FDeadClients.Objects[i]).iscasing = false)
        and (GetTickCount - TAsioClient(FDeadClients.Objects[i]).DeadTime > 3000)
        then begin
        lbuff := TAsioClient(FDeadClients.Objects[i]);
        FDeadClients.Delete(i);
        try
          lbuff.Free;
        except
        end;
      end;
    end;
    //ͬʱ�����жϳ�ʱ��û������������
    for i := FClientLst.Count - 1 downto 0 do begin
      if (GetTickCount - TAsioClient(FClientLst.Objects[i]).LiveTime > FNoliveTimeOut) then begin
        try
          Asio_DisConnedCallback(integer(TAsioClient(FClientLst.Objects[i])));
        except
        end;
      end;
    end;
  end;
end;

constructor TAsioSvr.Create(WorkThreadCount: Integer = 1);
begin
  GIntAsioTCP := Self;
  workPool := TAsioThreadPool.Create(WorkThreadCount);
  workPool.GAsioTCP := Self;
  FClientLst := THashedStringList.Create;
  FDeadClients := TStringList.Create;
  Flock := TCriticalSection.Create;
  FNoliveTimeOut := 50000; //30��û�н��յ��κ�����
  Asio_SetCallback(1, @Asio_ConnedCallback);
  Asio_SetCallback(2, @Asio_DisConnedCallback);
  Asio_SetCallback(3, @Asio_readdataCallback);
  Asio_SetCallback(4, @Asio_writedataCallback);
  TThread(workPool.FThreadLst.Objects[0]).Resume;
end;

destructor TAsioSvr.Destroy;
begin
  Asio_Uninit;
  Flock.Free;
  FDeadClients.Free;
  FClientLst.Free;
  workPool.Free;
  inherited;
end;

function TAsioSvr.DisConn(IClient: TasioClient): boolean;
begin
  IClient.CloseConn;
end;

function TAsioSvr.GetClientMem: Int64;
var
  i: integer;
begin
  Result := 0;
  for i := 0 to FClientLst.Count - 1 do begin
    Inc(Result, TAsioClient(FClientLst.Objects[i]).RcvDataBuffer.Memory.Size);
  end;
end;

function TAsioSvr.GetSendBuffMem: Int64;
var
  i: integer;
begin
  Result := 0;
  for i := 0 to FClientLst.Count - 1 do begin
    Inc(Result, TAsioClient(FClientLst.Objects[i]).MemPool.GetTotSize);
  end;
end;

function TAsioSvr.ShowBytes(Ibytes: Int64): string;
begin
  if Ibytes > 10485760 then
    Result := IntToStr(Ibytes div 1024) + 'k'
  else if Ibytes > 1024 then
    Result := IntToStr(Ibytes div 1024) + 'k'
  else
    Result := IntToStr(Ibytes) + 'b';
end;

function TAsioSvr.StartSvr(Iport: word; IKind: string): Boolean;
begin
  Fport := Iport;
  FmainThread := TMainthread.Create(true);
  TMainthread(FmainThread).Parent := Self;
  FmainThread.Resume;
 //  Asio_init(Iport);
end;

procedure TAsioSvr.StopSvr;
begin

end;

{ TDataCase }

constructor TAsioDataBuffer.Create;
begin
  FDataLock := TCriticalSection.Create;
  Memory := TMemoryStream.Create;
  CurrPost := 0;
  State := CdataRcv_State_head;
  headCount := 0;
  WantData := 8;
end;

destructor TAsioDataBuffer.Destroy;
begin
  try
    if Parent.Socketptr > 0 then begin
     // Asio_closesocket(Parent.Socketptr);
      Parent.Socketptr := 0;
    end;
  except
  end;
  FDataLock.Free;
  Memory.Free;
  inherited;
end;

procedure TAsioDataBuffer.Disconnect;
begin
  Parent.Parent.DisConn(Parent);
end;

procedure TAsioDataBuffer.DoCase;
begin
//  FDataLock.Acquire;
//  try
  Parent.Parent.FOnCaseData(Parent, WantData);
//  finally
//    FDataLock.Release;
//  end;
  //�ж��Ƿ���Ҫ���ݽ��� �������ݹ���
  ReLoadData;
end;

function TAsioDataBuffer.GetCanUseSize: Integer;
begin
  Result := Memory.Position - CurrPost;
end;

procedure TAsioDataBuffer.Indata(Idata: pointer; ilen: integer);
var
  LWork: TWorkThread;
begin
  FDataLock.Acquire;
  try
    //д�뵽���
//    Memory.Seek(0, soFromEnd);
    Memory.WriteBuffer(idata^, ilen);
    if (Memory.Position - CurrPost >= WantData) then
      Self.Parent.isInCaseList := True;
  finally
    FDataLock.Release;
  end;
    //����������ݴ�����������
//  if (Memory.Position - CurrPost >= WantData) and (Self.Parent.iscasing = False) then begin
//    Self.Parent.isInCaseList := True;
//      LWork := Parent.Parent.workPool.GetWorker;
//      if LWork <> nil then begin
//        LWork.Userdata := Self.Parent;
//        Self.Parent.iscasing := True;
//        LWork.Resume;
//      end
//      else //����봦�������еȴ�����
//        Parent.Parent.workPool.AddMisson(Self.Parent);
 // end;
end;

function TAsioDataBuffer.ReadBuff(Ibuffer: Pointer; Ilen: integer; IrcvGob:
  Boolean = false): Integer;
begin
  Result := Ilen;
  if IrcvGob then begin
    CopyMemory(@Gbuff[ReadPos], (pansichar(Memory.Memory) + CurrPost), Ilen);
    inc(ReadPos, Ilen);
  end;
  CopyMemory(Ibuffer, (pansichar(Memory.Memory) + CurrPost), Ilen);
  Result := Ilen;
  inc(CurrPost, Ilen);
end;


function TAsioDataBuffer.ReadInteger(IrcvGob: Boolean = false; ITrans: Boolean
  = True): Integer;
begin
  CopyMemory(@result, (pansichar(Memory.Memory) + CurrPost), 4);
  if ITrans then
    Result := ntohl(Result);
  if IrcvGob then begin
    CopyMemory(@Gbuff[ReadPos], @result, 4);
    Inc(ReadPos, 4);
  end;
  inc(CurrPost, 4);
end;

function TAsioDataBuffer.ReadStr(Ilen: integer; IrcvGob: Boolean = false):
  AnsiString;
begin
  SetLength(Result, Ilen);
  if IrcvGob then begin
    CopyMemory(@Gbuff[ReadPos], (pansichar(Memory.Memory) + CurrPost), Ilen);
    Inc(ReadPos, Ilen);
  end;
  CopyMemory(@Result[1], (pansichar(Memory.Memory) + CurrPost), Ilen);
  inc(CurrPost, Ilen);
end;

procedure TAsioDataBuffer.ReLoadData;
var
  i: Integer;
  lp, lfir: pansichar;

begin
  //�����ݳ���һ���� ����װ������ 1/2M���ݺ�����ˢ��
  if (Memory.Position > 512000) then begin
    FDataLock.Acquire;
    try
      lfir := Memory.Memory;
      lp := Memory.Memory;
      inc(lp, CurrPost);
      if Memory.Position > CurrPost then
        i := Memory.Position - CurrPost
      else i := 0;
      if i > 0 then
        CopyMemory(lfir, lp, i);
      Memory.Position := i;
      CurrPost := 0;
    finally
      FDataLock.Release;
    end;
  end;
end;

{ TAsioThreadPool }

procedure TAsioThreadPool.AddMisson(Imisson: TObject);
begin
  if TAsioClient(Imisson).isInCaseList = false then begin
    FLock.Acquire;
    TAsioClient(Imisson).isInCaseList := True;
    FmissonLst.AddObject('', Imisson);
    FLock.Release;
  end;
end;

constructor TAsioThreadPool.Create(IThreadCount: Integer = 1);
var
  i: Integer;
  lbuff: TWorkThread;
begin
  FLock := TCriticalSection.Create;
  FThreadLst := TStringList.Create;
  FmissonLst := TStringList.Create;
  for i := 1 to IThreadCount do begin
    lbuff := TWorkThread.Create(True);
    lbuff.Parent := Self;
    FThreadLst.AddObject(IntToStr(i), lbuff);
  end;
end;

destructor TAsioThreadPool.Destroy;
var
  i: Integer;
begin
  FLock.Free;
  for i := 0 to FThreadLst.Count - 1 do begin
    TWorkThread(FThreadLst.Objects[i]).Terminate;
    TWorkThread(FThreadLst.Objects[i]).Resume;
  end;
  FmissonLst.Free;
  Sleep(100);
  inherited;
end;

function TAsioThreadPool.GetWorker: TWorkThread;
var
  i: Integer;
begin
  Result := nil;
  for i := 0 to FThreadLst.Count - 1 do begin
    if TWorkThread(FThreadLst.Objects[i]).Suspended then begin
      Result := TWorkThread(FThreadLst.Objects[i]);
    end;
  end;
end;

{ TWorkThread }

procedure TWorkThread.DoCase;
var
  Lbuff: TAsioDataBuffer;
begin
 // if Userdata <> nil then begin
  Lbuff := TAsioClient(Userdata).RcvDataBuffer;
  Lbuff.Parent.iscasing := True;
  while Lbuff.Memory.Position - Lbuff.CurrPost >= Lbuff.WantData do begin
    if TAsioClient(Userdata).DeadTime > 0 then Break;
    Lbuff.DoCase;
    Lbuff.Parent.lastcasetime := GetTickCount;
  end;
  Lbuff.Parent.iscasing := false;
  Userdata := nil;
//  end;
end;

procedure TWorkThread.Execute;
var
  Lbuff: TAsioClient;
  Lindex: Integer;
begin
  FreeOnTerminate := True;
  Lindex := 0;
  while not Terminated do begin
    repeat
      if Terminated then Break;
      if Lindex < Parent.GAsioTCP.FClientLst.Count then begin
        Lbuff := TAsioClient(Parent.GAsioTCP.FClientLst.Objects[Lindex]);
        if Lbuff.isInCaseList and (Lbuff.DeadTime = 0) then begin
          Userdata := Lbuff;
          DoCase;
        end
        else begin
          if GetTickCount - Lbuff.lastcasetime > 3000 then
            if (Lbuff.RcvDataBuffer.Memory.Position - Lbuff.RcvDataBuffer.CurrPost >= Lbuff.RcvDataBuffer.WantData) then
              Lbuff.isInCaseList := True;
        end;
      end;
      Inc(Lindex);
    until Lindex + 1 >= Parent.GAsioTCP.FClientLst.Count;
    Lindex := 0;
    //���һ�� �����Ŀͻ���
    Parent.GAsioTCP.CheckDeadClients;
    Sleep(10);
  end;
end;

{ TAsioClient }

function TAsioClient.CloseConn: Boolean;
begin
  Result := Asio_Client_DisConn(Socketptr) = 1;
end;

function TAsioClient.ConnToSvr(Iip: ansistring; Iport: Word): Boolean;
begin
  if Socketptr = 0 then
    InitAsioClient;
  RcvDataBuffer.Memory.Position := 0;
  RcvDataBuffer.CurrPost := 0;
  RcvDataBuffer.ReadPos := 0;
  Result := Asio_Client_Conntosvr(Socketptr, pansichar(Iip), Iport, integer(self)) > 0;
  if Result then
    FisConning := True;
end;

constructor TAsioClient.Create;
begin
  FisConning := False;
  MemPool := TMemPools.Create;
  RcvDataBuffer := TAsioDataBuffer.Create;
  RcvDataBuffer.Parent := Self;
  RcvDataBuffer.WantData := 8;
  Socket := RcvDataBuffer;
  isInCaseList := false;
  iscasing := False;
  ConnState := Casio_State_Init;
end;

destructor TAsioClient.Destroy;
begin
  MemPool.Free;
  RcvDataBuffer.Free;
  inherited;
end;

function TAsioClient.InitAsioClient: boolean;
begin
  if GClientUserASIO = nil then begin
    if GIntAsioTCP = nil then begin
      GClientUserASIO := TAsioSvr.Create(1);
      GClientUserASIO.StartSvr(0);
    end;
  end;
  Result := False;
  Asio_Client_init(Socketptr);
  if Socketptr <> 0 then
    Result := True;
end;

function TAsioClient.IsConning: Boolean;
begin
  Result := FisConning;
end;

function TAsioClient.ReadBuffer(Ibuffer: Pointer; Ilen: Integer): integer;
begin
   //�����������������ӻ�����ȡ
  while ReceiveLength < Ilen do begin
    if FisConning = false then begin
      Result := -1;
      Exit;
    end;
    Sleep(1);
  end;
  Result := RcvDataBuffer.ReadBuff(Ibuffer, Ilen);
  RcvDataBuffer.ReLoadData;
end;

function TAsioClient.Readinteger(Itrans: Boolean): integer;
begin
  //�����������������ӻ�����ȡ
  while ReceiveLength < 4 do begin
    if FisConning = false then begin
      Result := -1;
      Exit;
    end;
    Sleep(1);
  end;
  Result := RcvDataBuffer.ReadInteger(Itrans);
  RcvDataBuffer.ReLoadData;
end;

function TAsioClient.ReadStr(Ilen: Integer): AnsiString;
begin
   //�����������������ӻ�����ȡ
  while ReceiveLength < Ilen do begin
    if FisConning = false then begin
      Result := '';
      Exit;
    end;
    Sleep(1);
  end;
  SetLength(Result, Ilen);
  RcvDataBuffer.ReadBuff(@Result[1], Ilen);
  RcvDataBuffer.ReLoadData;
end;

function TAsioClient.ReceiveLength: Integer;
var
  i: Integer;
begin
//  Asio_Client_Asreaddata(Socketptr, @i, 4, Integer(self));
  //RcvDataBuffer.Indata(@i, 4);
  if FisConning then begin
    Result := RcvDataBuffer.GetCanUseSize;
  end
  else
    Result := -1;
end;

procedure TAsioClient.SendData(Idata: TPoolItem);
begin
  Asio_senddata(integer(Idata), Socketptr, Idata.FMem.Memory, Idata.FMem.Position);
  InterlockedIncrement(SendRef);
end;


function TAsioClient.Write(Ibuffer: Pointer; Ilen: Integer): Integer;
var
  i: Integer;
begin
  i := Asio_Client_senddata(Socketptr, Ibuffer, Ilen);
  if i = 0 then begin
    Result := -1;
    FisConning := false;
  end
  else
    Result := i;
end;

function TAsioClient.Write(Istr: AnsiString): Integer;
var
  i: Integer;
begin
  i := Asio_Client_senddata(Socketptr, @Istr[1], Length(Istr));
  if i = 0 then begin
    Result := -1;
    FisConning := false;
  end
  else
    Result := i;
end;

function TAsioClient.Writeinteger(Iint: Integer; ITrans: boolean = true):
  Integer;
begin
  if ITrans then
    Iint := htonl(iint);
  if Asio_Client_senddata(Socketptr, @iint, 4) = 0 then begin
    Result := -1;
    FisConning := false;
  end
  else Result := 4;
end;

function TAsioClient.WriteString(Istr: AnsiString): Integer;
var
  i: Integer;
begin
  i := Asio_Client_senddata(Socketptr, @Istr[1], Length(Istr));
  if i = 0 then begin
    Result := -1;
    FisConning := false;
  end
  else
    Result := i;
end;

{ TMainthread }

procedure TMainthread.Execute;
begin
  Asio_init(Parent.Fport);
  try
    Asio_SvrRun;
  except
  end;
  Asio_Uninit;
  FreeOnTerminate := True;
end;

{ TPoolItem }

constructor TPoolItem.Create;
begin

end;

destructor TPoolItem.Destroy;
begin
  if Fbmp <> nil then
    FreeAndNil(Fbmp);
  if FMem <> nil then
    FreeAndNil(FMem);
  inherited;
end;

{ TMemPools }

constructor TMemPools.Create;
begin
  FObjs := TStringList.Create;
//  FbmpLst := TStringList.Create;
//  FmemLst := TStringList.Create;
//  Flock := TCriticalSection.Create;
end;

destructor TMemPools.Destroy;
var
  i: Integer;
begin
  for i := FObjs.Count - 1 downto 0 do
    FObjs.Objects[i].Free;
  FObjs.Free;
  //ClearAndFreeList(FObjs);
//  Flock.Free;
//  FbmpLst.Free;
//  FmemLst.Free;
  inherited;
end;

procedure TMemPools.BackBuff(Iobj: TPoolItem);
var
  i: integer;
begin
//  i := FObjs.IndexOfObject(Iobj);
//  if i > -1 then
  Iobj.FisUse := false;
//  else
//    ExceptTip('���ݳػع�ʱ�����в����ڵĶ���ع飡');
end;

function TMemPools.CreateBuff(Ikind: string): TPoolItem;
begin
  if Ikind = Ckind_Norma then begin
    Result := TPoolItem.Create;
    Result.Fkind := Ikind;
    Result.FMem := TMemoryStream.Create;
    Result.FMem.Size := 176 * 144;
  end
  else if Ikind = Ckind_FreeMem then begin
    Result := TPoolItem.Create;
    Result.Fkind := Ikind;
    Result.FMem := TMemoryStream.Create;
  end
  else if Ikind = Ckind_Bmp176 then begin
    Result := TPoolItem.Create;
    Result.Fkind := Ikind;
    Result.Fbmp := Graphics.TBitmap.Create;
    Result.Fbmp.Width := 176;
    Result.Fbmp.Height := 144;
    Result.Fbmp.PixelFormat := pf24bit;
  end
  else if Ikind = Ckind_Bmp352 then begin
    Result := TPoolItem.Create;
    Result.Fkind := Ikind;
    Result.Fbmp := Graphics.TBitmap.Create;
    Result.Fbmp.Width := 352;
    Result.Fbmp.Height := 288;
    Result.Fbmp.PixelFormat := pf24bit;
  end
  else if Ikind = Ckind_Bmp720 then begin
    Result := TPoolItem.Create;
    Result.Fkind := Ikind;
    Result.Fbmp := Graphics.TBitmap.Create;
    Result.Fbmp.Width := 720;
    Result.Fbmp.Height := 576;
    Result.Fbmp.PixelFormat := pf24bit;
  end
  else if Ikind = Ckind_BmpFree then begin
    Result := TPoolItem.Create;
    Result.Fkind := Ikind;
    Result.Fbmp := Graphics.TBitmap.Create;
    Result.Fbmp.PixelFormat := pf24bit;
  end;
end;

function TMemPools.GetBuff(Ikind: string): TPoolItem;
var
  i: integer;
begin
  Result := nil;
//  Flock.Acquire;
//  try
  for i := 0 to FObjs.Count - 1 do begin
    if (TPoolItem(FObjs.Objects[i]).FisUse = false) and (TPoolItem(FObjs.Objects[i]).Fkind = Ikind) then begin
      Result := TPoolItem(FObjs.Objects[i]);
      TPoolItem(FObjs.Objects[i]).FisUse := true;
      break;
    end;
  end;
  if Result = nil then begin
    Result := CreateBuff(Ikind);
    FObjs.AddObject(Ikind, Result);
  end;
//  finally
//    Flock.Release;
//  end;
end;

procedure TMemPools.Init;
var
  i: integer;
  Lbuff: TPoolItem;
begin
  //128����ͨ�ڴ�
  for i := 1 to 128 do begin
    Lbuff := CreateBuff(Ckind_FreeMem);
    FObjs.AddObject(Ckind_Norma, Lbuff);
  end;
end;



procedure TAsioDataBuffer.Setstate(const Value: Integer);
begin
  Fstate := Value;
  if Fstate = CdataRcv_State_head then
    ReadPos := 0;
end;

function TMemPools.GetTotSize: Int64;
var
  i: integer;
begin
  Result := 0;
  for i := 0 to FObjs.Count - 1 do
    Inc(Result, TPoolItem(FObjs.Objects[i]).FMem.Size);
end;

procedure TAsioDataBuffer.Write(IBuffer: Pointer; Ilen: Integer);
var
  lbuff: TPoolItem;
begin
  lbuff := Parent.MemPool.GetBuff(CMemPool_FreeMem);
  lbuff.FMem.Position := 0;
  lbuff.FMem.WriteBuffer(IBuffer^, Ilen);
  Parent.SendData(lbuff);
end;

procedure TAsioDataBuffer.Write(IStr: AnsiString);
var
  lbuff: TPoolItem;
  i: Integer;
begin
  lbuff := Parent.MemPool.GetBuff(CMemPool_FreeMem);
  lbuff.FMem.Position := 0;
  i := length(IStr);
//  i := htonl(i);
//  lbuff.FMem.WriteBuffer(i, 4);
  lbuff.FMem.WriteBuffer(IStr[1], Length(IStr));
  Parent.SendData(lbuff);
end;

procedure TAsioDataBuffer.Writeinteger(Iin: Integer; Ihtn: boolean = true);
var
  lbuff: TPoolItem;
begin
//  DeBug(Iin);
  if Ihtn then
    Iin := htonl(Iin);
//  DeBug(Iin);

  lbuff := Parent.MemPool.GetBuff(CMemPool_FreeMem);
  lbuff.FMem.Position := 0;
  lbuff.FMem.WriteBuffer(iin, 4);
  Parent.SendData(lbuff);
end;



initialization

finalization
  if GClientUserASIO <> nil then
    GClientUserASIO.Free;

end.
