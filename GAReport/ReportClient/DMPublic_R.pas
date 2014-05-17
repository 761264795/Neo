Unit DMPublic_R;

interface
uses
  Forms,SysUtils, Classes, Controls, DB,
  ADODB, cxEdit, cxStyles, cxEditRepositoryItems,
  cxDBEditRepository, 
  DBClient, SConnect, ScktComp,AppEvnts, uFormatcxGrid_R,uReportPub_R,
  UntTIO_R,STPublic_R, MConnect, ImgList, DBAccess, Ora;

type
  TDMPub = class(TDataModule)
    ImageListBill: TImageList;
    erForm: TcxEditRepository;
    srStyle: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    TextReadOnlyNotFocus: TcxEditRepositoryTextItem;
    popEdit: TcxEditRepositoryPopupItem;
    cxEditRepository1LookupComboBoxItem1: TcxEditRepositoryLookupComboBoxItem;
    cxEditRepository1CurrencyItem1: TcxEditRepositoryCurrencyItem;
    ImageList32: TImageList;
    MemoReadOnly: TcxEditRepositoryMemoItem;
    CliProButtonReadOnly: TcxEditRepositoryButtonItem;
    ReadOnlyButton: TcxEditRepositoryButtonItem;
    ImageList1: TImageList;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    ImageListBaseEdit: TImageList;
    SocketConn: TSocketConnection;
    db_Query: TClientDataSet;
    db_update: TClientDataSet;
    qryTemp: TClientDataSet;
    adoconn: TADOConnection;
    db_Qry: TClientDataSet;
    db_getSQL: TClientDataSet;
    adoacc: TADOConnection;
    F_Qry: TClientDataSet;
    ApplicationEvents1: TApplicationEvents;
    AdoInner: TADOConnection;
    adoPub: TADODataSet;
    ImageList16: TImageList;
    procedure ClientSocketRead(Sender: TObject; Socket: TCustomWinSocket);
    procedure SocketConnAfterConnect(Sender: TObject);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    procedure AssignParam(ADB: TADOQuery; APrams: String);overload;
    procedure AssignParam(ADB: TADOQuery; const AParams: array of const);overload;


  public
    { Public declarations }
    function ExecuteSQL(ASQL: string; AParams: String = ''): boolean; overload;
    function ExecuteSQL(ASQL:String; const AParams: array of const): boolean; overload;

    function QuerySQL(ASQL: string; AParams: String = ''): TDataSet; overload;
    function QuerySQL(ASQL: string; const AParams: array of const): TDataSet; overload;
    function Chk_BuildCW(BILLNO: string): Boolean;
    function IsExists(lSql:string):Boolean; //add whf 检测数据存在性
    function GetBaseTableList():string;     //whf20091231,获取基本表sEnta_BaseTable_Name表列表
    procedure Set_Account_Date(cb:TComponent);//whf2010-01-06,取会计期间
    function BillToK3BaseCheck(sBill_Sign,Bill_ID : string) : Boolean;  //检查单据明细在K3基础资料中是否存在   //数据同步 wushaoshu 20100519
    function BillDelK3Check(sBill_Sign,Bill_ID : string) : Boolean;  //检查K3单据是否审核   //数据同步 wushaoshu 20100519
    function BillFZToK3(sBill_Sign, Bill_ID: string): Boolean;
    function BillFZDeleteK3(sBill_Sign, Bill_ID: string): Boolean;
    function BillFZToK3_BeforeCheck: Boolean;   //wushaoshu 20100930 检查同步到K3的参数设置是否正确
    function BillCheckStorageIsEnd(sBill_Sign, Bill_ID, sBillNo: string): Boolean; //检查单据中的仓库是否有末节点 wushaoshu 20100906
    function SetBillCost(Bill_NO,Storage:string):Boolean; //whf2010-10-08,更新业务单据单价，成本
    function GetStorageGroup(Storage:string):string; //whf2010-10-08,获取仓库的存货核算组
    function QuerySQL_tmp(ASQL: String): TDataSet;
    function openSocketConn:Boolean;
    procedure GetUserRoles;
    function GetADODataSet(ASQL: String): TDataSet;
  end;
var
  DMPub: TDMPub;
  dbType:string='oracle';
  DBServerIP,DBConnStr:string;//数据库服务器IP，数据库连接字符串
  Localnetwork:Boolean=false; //跟数据库是否是局域网
  Gio_R:TIOer;
  procedure getServerData(var ads:Tadodataset;_sql:string);
  function isMaterList:boolean;
  procedure getEasStandard;
implementation


{$R *.dfm}
procedure getEasStandard;
begin
  if _SysType=0 then 
  G_EasStandard :=  dmpub.QuerySQL('select 1 from user_tables where table_name=''CT_BAS_SIZEGROUPPACKALLOT''').IsEmpty;
end;
function isMaterList:boolean;
begin
  result:=not dmpub.QuerySQL('select 1 from user_mviews where mview_name=''V_PM_USERSUPPLIER''').IsEmpty;
end;
//从服务器上查询数据
procedure getServerData(var ads:Tadodataset;_sql:string);
var cr:OleVariant;
    data,errormsg:string;
begin
  DMPub.SocketConn.AppServer.openReport(_sql,1,cr,errormsg);   //从服务器获取数据
  if  errormsg<>'' then
  begin
    Showmsg('报表打开错误:'+errormsg);
    Abort;
  end;
  cr:=UnZip_OleVariant(cr);   //数据解压
  data:=OleDataToText(cr);    //变体转string
  ads.Recordset:=RecordsetFromXMLString(data);
end;


function TDMPub.QuerySQL(ASQL, AParams: String): TDataSet;
begin
  if not DMPub.SocketConn.Connected  then DMPub.SocketConn.Open;
  if db_Query=nil then
  begin
    ShowMsg('NIL');
    Exit;
  end;
  with db_Query do
  begin
    Close;
    db_Query.CommandText := ASQL;
    Open;
  end;
  result := db_Query;
end;

function TDMPub.QuerySQL_tmp(ASQL:String): TDataSet;
begin
  with qryTemp do
  begin
    Close;
    CommandText := ASQL;
    Open;
  end;
  result := qryTemp;
end;

function TDMPub.QuerySQL(ASQL: String;
  const AParams: array of const): TDataSet;
begin
  if not DMPub.openSocketConn then Exit;
  with db_Query do
  begin
    Close;
    db_Query.CommandText := ASQL;
    Open;
  end;
  Result := db_Query;
end;

procedure TDMPub.AssignParam(ADB: TADOQuery; APrams: String);
begin

end;

procedure TDMPub.AssignParam(ADB: TADOQuery;
  const AParams: array of const);
begin

end;

function TDMPub.ExecuteSQL(ASQL, AParams: String): boolean;
begin
  Result := True;
  try
    qryTemp.Close;
    qryTemp.CommandText:=ASQL;
    qryTemp.Execute;
  except
    Result := False;
  end;
end;

function TDMPub.ExecuteSQL(ASQL: String;
  const AParams: array of const): boolean;
begin
  Result := False;
end;

function TDMPub.Chk_BuildCW(BILLNO: string): Boolean;
begin
//
end;

function TDMPub.IsExists(lSql: string): Boolean;
begin
  Result := False;

end;

function TDMPub.GetBaseTableList: string;
var
  TableList:string;
begin
  Result := '';
end;

procedure TDMPub.Set_Account_Date(cb: TComponent);
var
  ssAccount_Date: string;
  iIndex: integer;
begin
  //
end;

function TDMPub.BillToK3BaseCheck(sBill_Sign,Bill_ID: string): Boolean;
begin
  result := True;
end;

function TDMPub.BillDelK3Check(sBill_Sign, Bill_ID: string): Boolean;
begin
  result := True;
end;

function TDMPub.BillFZToK3(sBill_Sign, Bill_ID: string): Boolean;
begin
  result := True;
end;


function TDMPub.BillFZDeleteK3(sBill_Sign, Bill_ID: string): Boolean;
begin
  result := True;
end;

function TDMPub.BillFZToK3_BeforeCheck : Boolean;   //wushaoshu 20100930 检查同步到K3的参数设置是否正确
begin
  result := True;
end;


//检查单据中的仓库是否有末节点 wushaoshu 20100906
function TDMPub.BillCheckStorageIsEnd(sBill_Sign, Bill_ID, sBillNo: string): Boolean;
begin
  result := True;
end;


function TDMPub.GetStorageGroup(Storage: string): string;
begin
  //
end;

function TDMPub.SetBillCost(Bill_NO, Storage: string): Boolean;
begin
  //
end;

procedure TDMPub.ClientSocketRead(Sender: TObject;
  Socket: TCustomWinSocket);
var rub:string;
begin

end;

function TDMPub.openSocketConn: Boolean;
begin
  try
    Result:=True;
    if not SocketConn.Connected then
    begin
      SocketConn.Open;
      DMPub.SocketConn.AppServer.loginInfo(G_UserInfo.UserFID, G_UserInfo.UserName,G_UserInfo.G_IP);
    end;
  except
    on e:Exception do
    begin
      ShowMsg('连接服务器失败!原因:'+e.Message);
      Result:=False;
      Exit;
    end;
  end;
end;

procedure TDMPub.SocketConnAfterConnect(Sender: TObject);
begin
  //saveLog(DateTimeToStr(Now)+'打开了连接...');
end;
function getSqlStr(str: string): string;
var i: Integer;
  rest: string;
  list: Tstringlist;
begin
  result := '';
  try
      list := Tstringlist.Create;
      list.Delimiter := ',';
      list.DelimitedText := str;
      rest := '';
      if List.Count = 0 then Exit;
      for i := 0 to List.Count - 1 do
      begin
        rest := rest + '''' + trim(List[i]) + ''',';
      end;
      rest := Copy(rest, 1, Length(trim(rest)) - 1);
      if rest <> '' then
        result := rest;
  finally
      list.Free;
  end;
end;
procedure TDMPub.GetUserRoles;
begin
  userRoleArray:='';
  if _SysType<>0 then Exit;
  with db_Query do
  begin
    Close;
    CommandText:='select distinct r.fnumber  from t_Pm_Userroleorg ulg  left join T_PM_Role r  on ulg.froleid = r.fid  '
                +' left join t_Pm_User u  on ulg.fuserid=u.fid   where upper(u.fnumber)='''+uppercase(trim(G_UserInfo.UserFID))+'''';
    Open;
    if not IsEmpty then
    begin
      while not eof do
      begin
        if userRoleArray='' then
        userRoleArray:=fieldbyname('fnumber').AsString
        else
        userRoleArray:=userRoleArray+','+fieldbyname('fnumber').AsString;
        Next;
      end;
     userRoleArray:=getSqlStr(userRoleArray);
    end;
  end;
end;

function TDMPub.GetADODataSet(ASQL: String): TDataSet;
var adt:Tadodataset;
begin
  adt:=Tadodataset.Create(nil);
  getServerData(adt,ASQL);
  result:=adt;
end;

procedure TDMPub.DataModuleCreate(Sender: TObject);
begin
  GetUserRoles;
end;

end.



