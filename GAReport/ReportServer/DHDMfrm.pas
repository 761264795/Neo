unit DHDMfrm;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  Windows, Messages, SysUtils, Classes, ComServ, ComObj, VCLCom, DataBkr,
  DBClient, FZReportServer_TLB, ADODB, DB, Provider,IniFiles,Dialogs,main,Forms,
  StdVcl,adoint,ZLib,Variants,ActiveX,StrUtils,ShellAPI;
const
  FileFlag = 'YXSoftReport' + #0;
type
  TMD5_Str = Function(Value: PChar): PChar;
  
type
  TDHDM = class(TRemoteDataModule, IDHDM)
    ADOConn: TADOConnection;
    qryUser: TADOQuery;
    dspUser: TDataSetProvider;
    qryType: TADOQuery;
    dspType: TDataSetProvider;
    QryReport: TADOQuery;
    dspReport: TDataSetProvider;
    QryFind: TADOQuery;
    dspFind: TDataSetProvider;
    QryFieldSet: TADOQuery;
    dspFieldSet: TDataSetProvider;
    qrySubreport: TADOQuery;
    dspSubReport: TDataSetProvider;
    qrySubFieldSet: TADOQuery;
    dspSubFieldSet: TDataSetProvider;
    qrySubReportField: TADOQuery;
    dspSubReportField: TDataSetProvider;
    QrySubFindField: TADOQuery;
    dspSubFindField: TDataSetProvider;
    qryFind1: TADOQuery;
    dspFind1: TDataSetProvider;
    qryPara: TADOQuery;
    dspPara: TDataSetProvider;
    qrySubFind: TADOQuery;
    dspSubFind: TDataSetProvider;
    qrySubReportView: TADOQuery;
    dspSubReportView: TDataSetProvider;
    QryFormat: TADOQuery;
    dspFormat: TDataSetProvider;
    qryReportFind: TADOQuery;
    dspReportFind: TDataSetProvider;
    qryReportEdit: TADOQuery;
    dspReportEdit: TDataSetProvider;
    QryReportFindField: TADOQuery;
    dspReportFindField: TDataSetProvider;
    qryReportFieldSet: TADOQuery;
    dspReportFieldSet: TDataSetProvider;
    qryTypeEdit: TADOQuery;
    dspTypeEdit: TDataSetProvider;
    qrySubFinds: TADOQuery;
    dspSubFinds: TDataSetProvider;
    db_Query: TADOQuery;
    dspdb_Query: TDataSetProvider;
    db_update: TADOQuery;
    dspdb_update: TDataSetProvider;
    qryTemp: TADOQuery;
    dspqryTemp: TDataSetProvider;
    db_Qry: TADOQuery;
    dspDb_Qry: TDataSetProvider;
    dspGetSQL: TDataSetProvider;
    QryGetSQL: TADOQuery;
    qryFindVal: TADOQuery;
    dspFindVal: TDataSetProvider;
    qryPassword: TADOQuery;
    dspPassword: TDataSetProvider;
    qryFieldPDM: TADOQuery;
    dspFieldPDM: TDataSetProvider;
    QryModule: TADOQuery;
    dspModule: TDataSetProvider;
    qryModuleList: TADOQuery;
    dspModuleList: TDataSetProvider;
    ADOCont: TADOConnection;
    F_Qry: TADOQuery;
    dspF_Qry: TDataSetProvider;
    qryDataField: TADOQuery;
    dspDataField: TDataSetProvider;
    qryQueryFieldList: TADOQuery;
    dspQueryFieldlist: TDataSetProvider;
    qryQueryGroupList: TADOQuery;
    dspQueryGroupList: TDataSetProvider;
    qryQueryOrderList: TADOQuery;
    dspQueryOrderList: TDataSetProvider;
    qryQueryStatList: TADOQuery;
    dspQueryStatList: TDataSetProvider;
    Fieldlist: TADOQuery;
    dspFieldlist: TDataSetProvider;
    R_FindQry: TADOQuery;
    SQL_Report: TADOQuery;
    ORCL_Report: TADOQuery;
    qryRpFind: TADOQuery;
    qryRoleUser: TADOQuery;
    dspRoleUser: TDataSetProvider;
    QryRoleModule: TADOQuery;
    dspRoleModule: TDataSetProvider;
    dspRoleModuleList: TDataSetProvider;
    qryRoleModuleList: TADOQuery;
    dspRoleFieldPDM: TDataSetProvider;
    qryRoleFieldPDM: TADOQuery;
    QryReportType: TADOQuery;
    dspReportType: TDataSetProvider;
    QryReportTypeID: TWideStringField;
    QryReportTypeTREEID: TWideStringField;
    QryReportTypeFNUMBER: TWideStringField;
    QryReportTypeREPORTTYPENAME: TWideStringField;
    QryReportTypeFPARENTID: TWideStringField;
    QryReportTypeFISROOT: TIntegerField;
    QryReportTypeFIMGAGEINDEX: TIntegerField;
    QryReportTypeFSELECTIMGAGEINDEX: TIntegerField;
    QryReportTypeFISSYSTEM: TIntegerField;
    QryReportTypeFLEVEL: TFloatField;
    QryReportTypeFVISIBLE: TIntegerField;
    QryReportTypeFTABLENAME: TWideStringField;
    QryReportTypeFCREATORID: TWideStringField;
    QryReportTypeFLASTUPDATEUSERID: TWideStringField;
    QryReportTypeFLONGNUMBER: TMemoField;
    qryQueryFieldListFID: TWideStringField;
    qryQueryFieldListUSER_ID: TWideStringField;
    qryQueryFieldListREPORT_ID: TWideStringField;
    qryQueryFieldListQUERYNAME: TWideStringField;
    qryQueryFieldListFIELD_ID: TWideStringField;
    qryQueryFieldListF_TYPE: TWideStringField;
    qryQueryFieldListSTAT_TYPE: TWideStringField;
    qryQueryFieldListISVISIBLE: TIntegerField;
    qryQueryFieldListSORT_TYPE: TWideStringField;
    qryQueryFieldListST_INDEX: TFloatField;
    QryFindID: TWideStringField;
    QryFindREPORT_ID: TWideStringField;
    QryFindUSER_ID: TWideStringField;
    QryFindQUERYNAME: TWideStringField;
    QryFindFIELDCHNAME: TWideStringField;
    QryFindLEFTBRACKET: TWideStringField;
    QryFindRIGHTBRACKET: TWideStringField;
    QryFindCOMPARE: TWideStringField;
    QryFindCOMPAREVALUE: TMemoField;
    QryFindLOGIC: TWideStringField;
    qryQueryStatListFID: TWideStringField;
    qryQueryStatListUSER_ID: TWideStringField;
    qryQueryStatListREPORT_ID: TWideStringField;
    qryQueryStatListQUERYNAME: TWideStringField;
    qryQueryStatListFIELD_ID: TWideStringField;
    qryQueryStatListF_TYPE: TWideStringField;
    qryQueryStatListSTAT_TYPE: TWideStringField;
    qryQueryStatListISVISIBLE: TIntegerField;
    qryQueryStatListSORT_TYPE: TWideStringField;
    qryQueryStatListST_INDEX: TFloatField;
    qryQueryOrderListFID: TWideStringField;
    qryQueryOrderListUSER_ID: TWideStringField;
    qryQueryOrderListREPORT_ID: TWideStringField;
    qryQueryOrderListQUERYNAME: TWideStringField;
    qryQueryOrderListFIELD_ID: TWideStringField;
    qryQueryOrderListF_TYPE: TWideStringField;
    qryQueryOrderListSTAT_TYPE: TWideStringField;
    qryQueryOrderListISVISIBLE: TIntegerField;
    qryQueryOrderListSORT_TYPE: TWideStringField;
    qryQueryOrderListST_INDEX: TFloatField;
    qryReportFindID: TWideStringField;
    qryReportFindREPORT_ID: TWideStringField;
    qryReportFindUSER_ID: TWideStringField;
    qryReportFindQUERYNAME: TWideStringField;
    qryReportFindFIELDCHNAME: TWideStringField;
    qryReportFindLEFTBRACKET: TWideStringField;
    qryReportFindRIGHTBRACKET: TWideStringField;
    qryReportFindCOMPARE: TWideStringField;
    qryReportFindCOMPAREVALUE: TMemoField;
    qryReportFindLOGIC: TWideStringField;
    QrySubFindFieldID: TWideStringField;
    QrySubFindFieldREPORT_ID: TWideStringField;
    QrySubFindFieldKEYFIELDNAME: TWideStringField;
    QrySubFindFieldFIELDNAME: TWideStringField;
    QrySubFindFieldPFIELDNAME: TWideStringField;
    QrySubFindFieldFIELDNAMEORTABLENAME: TWideStringField;
    QrySubFindFieldFIELDCHNAME: TWideStringField;
    QrySubFindFieldISPROCPARA: TIntegerField;
    QrySubFindFieldDATATYPE: TWideStringField;
    QrySubFindFieldAND_OR: TWideStringField;
    QrySubFindFieldFINDVALUE: TMemoField;
    QrySubFindFieldDIALOGTYPE: TWideStringField;
    QrySubFindFieldISMUTSELECT: TIntegerField;
    QrySubFindFieldISSEARCHFIELD: TIntegerField;
    qrySubFieldSetID: TWideStringField;
    qrySubFieldSetREPORT_ID: TWideStringField;
    qrySubFieldSetKEYFIELDNAME: TWideStringField;
    qrySubFieldSetFIELDNAME: TWideStringField;
    qrySubFieldSetFIELDCHNAME: TWideStringField;
    qrySubFieldSetISVISIBLE: TIntegerField;
    qrySubFieldSetDEFWIDTH: TFloatField;
    qrySubFieldSetLSH: TFloatField;
    qrySubFieldSetISFILTER: TIntegerField;
    qrySubFieldSetISSORT: TIntegerField;
    qrySubFieldSetSYSTEMPARA_NAME: TWideStringField;
    qrySubFieldSetSTATTYPE: TWideStringField;
    qrySubFieldSetPOSITION: TWideStringField;
    qrySubFieldSetISGROUP: TIntegerField;
    qrySubFieldSetISGROUPDJ: TWideStringField;
    qrySubFieldSetFORMATCOUNT: TFloatField;
    qrySubFieldSetISBARSHOW: TIntegerField;
    qrySubFieldSetISMERGE: TIntegerField;
    procedure RemoteDataModuleCreate(Sender: TObject);
    procedure ADOConnExecuteComplete(Connection: TADOConnection;
      RecordsAffected: Integer; const Error: Error;
      var EventStatus: TEventStatus; const Command: _Command;
      const Recordset: _Recordset);
    procedure dspFindUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
  private
    { Private declarations }
    user_id,User_Name,ip_address,ConnString :string;
  protected
    class procedure UpdateRegistry(Register: Boolean; const ClassID, ProgID: string); override;
    procedure GetStrSql(const vsql: WideString; iType: Shortint); safecall;
    procedure GetStrSql_new(const vsql, StrPara, StrPara1: WideString;
      iType: Shortint); safecall;
    procedure loginInfo(const user_id, user_name, ip_address: WideString);safecall;
    procedure ServerLog(const Msg: WideString; msgtype: Shortint); safecall;
    //根据用户ID得到用户名称
    procedure Get_UserName(const _UserID: WideString;
      var _UserName: WideString); safecall;
    function Chk_UserPassword(const _User_ID, _User_Pwd: WideString;
      var _User_Name, ErrMsg: WideString; logtype: Shortint): Shortint;
      safecall;
    //修改用户密码，修改成功返回 >= 0
    function Upd_UserPassword(const _User_ID, _Old_Pwd, _New_Pwd: WideString;
      var ErrMsg: WideString): Shortint; safecall;
    //取得系统的参数信息：是否超出站点，试用版/正式版，数据库类型，系统类型
    procedure Get_Sysinfo(var _SysInfo: WideString); safecall;
    procedure openReport(const report_sql: WideString; report_type: Shortint;
      var data: OleVariant; var errormsg: WideString); safecall;
    procedure openReport2(const _SQL: WideString; ReportType: Shortint;
      var _Data: OleVariant; var error: WideString); safecall;
    function ClientReg(MC,ComputerName:string;MaxclientCount:Integer):Boolean;
    procedure ImportReportScript(const _SQL: WideString;
      var _Error: WideString); safecall;
    procedure getServerTxtData(const _SQL: WideString; var _inistr,
      _outFilename: WideString; var _Data: OleVariant;
      var _errormsg: WideString; const _userTag: WideString;
      _reporttype: Shortint); safecall;
    procedure DeleteTempDir(const _FileName: WideString); safecall;
    procedure getDBInfo(var _IP, _ConnStr: WideString); safecall;

  public
    { Public declarations }
    dbIP,dbConnStr:string;
  end;

  //MD5加密字符串
  function MD5_Str(Value: string): string;
  //获取GUID
  function getGuid:string;
  function DeleteDirectory(NowPath:string):Boolean;
implementation
uses DCPbase64,types,md5;
{$R *.DFM}

function DeleteDirectory(NowPath: string):Boolean; // 删除整个目录
var
  search: TSearchRec;
  ret: integer;
  key: string;
begin
  if NowPath[Length(NowPath)] <> '\' then
    NowPath := NowPath + '\';
  key := NowPath + '*.*';
  ret := findFirst(key, faanyfile, search);
  while ret = 0 do
  begin
    if ((search.Attr and fadirectory) = fadirectory) then
    begin
      if (search.Name <> '.') and (search.name <> '..') then
        DeleteDirectory(NowPath + search.name);
    end
    else
    begin
      if ((search.Attr and fadirectory) <> fadirectory) then
      begin
        deletefile(NowPath + search.name);
      end;
    end;
    ret := FindNext(search);
  end;
  findClose(search);
  removedir(NowPath); //如果需要删除文件夹则添加
  result := True;
end;
function getIniFieldList(Dataset:TDataSet;reporttype:Shortint):string;
var  temList:TStringList;
     i:Integer;
     row:string;
begin
  try
    Result:='';
    temList:=TStringList.Create;
    for i:=0 to Dataset.FieldCount-1 do
    begin
      row:='col'+inttostr(i+1)+'='+Dataset.Fields[i].FieldName+' ';
      case  Dataset.Fields[i].DataType of
        ftUnknown, ftString,  ftMemo,ftWideString:
        begin
          if reporttype=2 then
            row:=row+' memo '
          else
            row:=row+' text Width '+inttostr(Dataset.Fields[i].Size);
        end;
        ftSmallint, ftInteger, ftWord:
        begin
          row:=row+' integer';
        end;
        ftBoolean:
        begin
          row:=row+' boolean';
        end;
        ftFloat, ftCurrency, ftBCD:
        begin
          row:=row+' Float';
        end;
        ftDate,ftTime,ftDateTime:
        begin
          row:=row+' DateTime';
        end;
      end;
      temList.Add(row);
    end;
    Result:= temList.Text;
  finally
    temList.Free;
  end;
end;
//主要删除小于空格的字符,防止字符串里出现回车
function   TrimX(const S:string):string;
var 
    I,L:Integer;
begin 
  I:=   1;
  Result   :=   S;
  while   (I<=Length(Result))  do
  begin
    if   Result[I]<' ' then
    begin
      Delete(Result,I,1);
      Dec(I);
    end;
    Inc(I);
  end;
end;
//数据集导出到Text文件，供BCP导入用，按10000行拆分成多个文件
function ExtDataSet_To_Text_Ex(
                               DataSet: TDataSet;   //待导出的数据集
                               FilePath: string;    //导出文件路径
                               FileName: string;    //导出文件名，不带扩展名
                               var OutFileNames: WideString;  //导出的文件列表
                               var _DataCount: integer;       //数据行数
                               var iniStr: WideString;  //导出的ini字段
                               reporttype:Shortint;     //报表类型
                               const Delimiter: string ='∽'  //字段分隔符
                               ): Boolean;
var
  FText: Cardinal;
  aFilePath, FldStr, RosStr, TxtFile,iniField: string;
  aIndex, i, aRow: Integer;
  Is_FileClose: Boolean;
  temList:TStringList;
const
  //单个导出文件的记录函数，超过自动分文件
  Max_RecordCount: Integer = 10000;
begin
  Result := False;
  Is_FileClose := True;
  _DataCount := 0;
  if not DataSet.Active or (DataSet.IsEmpty) then Exit;
  iniField:=getIniFieldList(DataSet,reporttype);
  if RightStr(FilePath, 1) <> '\' then
    aFilePath := FilePath + '\'
  else
    aFilePath := FilePath;
  //目录不存在则创建
  if not DirectoryExists(aFilePath) then
    ForceDirectories(aFilePath);
  OutFileNames := '';
  aIndex := 1;
  try
    temList:=TStringList.Create;
    DataSet.DisableControls;
    aRow := 1;
    //创建文件
    TxtFile := aFilePath + FileName + '_' + IntToStr(aIndex) + '.txt';
    temList.Add('['+FileName + '_' + IntToStr(aIndex) + '.txt'+']');
    temList.Add('ColNameHeader=false');
    temList.Add('Format=Delimited('+Delimiter+')');
    temList.Add(iniField);
    Inc(aIndex);
    if OutFileNames = '' then
      OutFileNames := ExtractFileName(TxtFile)
    else
      OutFileNames := OutFileNames + ',' + ExtractFileName(TxtFile);
    FText := FileCreate(TxtFile);
    FileSeek(FText, 0, 0);
    Is_FileClose := False;
    while not DataSet.Eof do
    begin
      RosStr := '';
      for i := 0 to DataSet.FieldCount - 1 do
      begin
        if DataSet.Fields[i].IsNull then
          FldStr := ''
        else
        begin
          if DataSet.Fields[i].DataType = ftBoolean then
          begin  //布尔类型用0/1表示
            if TBooleanField(DataSet.Fields[i]).AsBoolean then
              FldStr := '1'
            else
              FldStr := '0';
          end
          else if DataSet.Fields[i].DataType = ftDateTime then
          begin  //日期字段
            FldStr := FormatDateTime('yyyy-mm-dd HH:NN:SS', DataSet.Fields[i].AsDateTime);
          end
          else if DataSet.Fields[i].AsString = '' then
            FldStr := ' '
          else
            FldStr := StringReplace(DataSet.Fields[i].AsString,'∽','@', [rfReplaceAll]);
        end;

        if (i = 0)and(RosStr = '') then
          RosStr := FldStr
        else
          RosStr := RosStr + Delimiter + FldStr;
      end;
      RosStr := StringReplace(RosStr, '"', ' ', [rfReplaceAll]);
      RosStr := StringReplace(RosStr, #13#10, ' ', [rfReplaceAll]);
      RosStr := StringReplace(RosStr, #13, ' ', [rfReplaceAll]);
      RosStr :=TrimX(RosStr);
      RosStr := RosStr + #13#10;
      FileWrite(FText, PansiChar(RosStr)^, Length(RosStr));
      //数据分文件
      if (aRow mod Max_RecordCount = 0) then
      begin
        FileClose(FText);
        Is_FileClose := True;
      end;
      DataSet.Next;

      if Is_FileClose and not DataSet.Eof then
      begin
        TxtFile := aFilePath + FileName + '_' + IntToStr(aIndex) + '.txt';
        temList.Add('['+FileName + '_' + IntToStr(aIndex) + '.txt'+']');
        temList.Add('ColNameHeader=false');
        temList.Add('Format=Delimited('+Delimiter+')');
        //temList.Add(iniField);
        Inc(aIndex);
        if OutFileNames = '' then
          OutFileNames := ExtractFileName(TxtFile)
        else
          OutFileNames := OutFileNames + ',' + ExtractFileName(TxtFile);
        FText := FileCreate(TxtFile);
        FileSeek(FText, 0, 0);
        Is_FileClose := False;
      end;
      Inc(aRow);
    end;
    _DataCount := aRow - 1;
    iniStr:=temList.Text;
    Result := True;
  finally
    if not Is_FileClose then FileClose(FText);
    DataSet.EnableControls;
    temList.Free;
  end;
end;

function getGuid:string;
var
  sGUID  : string;
  TmpGUID: TGUID;
begin
    if CoCreateGUID(TmpGUID) = S_OK then
      sGUID := GUIDToString(TmpGUID)
    else
      ShowMessage('Create GUID error!');
     sGUID:=StringReplace(sGUID, '{', '', [rfReplaceAll]);
     sGUID:=StringReplace(sGUID, '}', '', [rfReplaceAll]);
     sGUID:=StringReplace(sGUID, '-', '', [rfReplaceAll]);
    result:=sGUID;
end;
//MD5加密字符串
function MD5_Str(Value: string): string;
var
  DllHandle: THandle;
  aProc: TMD5_Str;
  MD5Str: string;
begin
  DllHandle := LoadLibrary(PAnsiChar(ExtractFilePath(Paramstr(0))+'K3Md5_Ex.dll'));
  try
    if (DllHandle = HINSTANCE_ERROR) or (DllHandle = 0) then
    begin
      MessageBox(Application.Handle,pchar('加载 K3Md5_Ex.dll 文件失败！'),pchar('金蝶提示'),mb_OK+mb_iconError);
      Abort;
    end;
    @aProc := GetProcAddress(DllHandle, PAnsiChar('MD5_Str'));
    if (@aProc <> nil) then
      MD5Str := aProc(PChar(Value));
    Result := MD5Str;
  finally
    if (@aProc <> nil) then
      FreeLibrary(DllHandle);
  end;
end;

class procedure TDHDM.UpdateRegistry(Register: Boolean; const ClassID, ProgID: string);
begin
  if Register then
  begin
    inherited UpdateRegistry(Register, ClassID, ProgID);
    EnableSocketTransport(ClassID);
    EnableWebTransport(ClassID);
  end else
  begin
    DisableSocketTransport(ClassID);
    DisableWebTransport(ClassID);
    inherited UpdateRegistry(Register, ClassID, ProgID);
  end;
end;

procedure TDHDM.GetStrSql(const vsql: WideString; iType: Shortint);
begin
//
end;

procedure TDHDM.GetStrSql_new(const vsql, StrPara, StrPara1: WideString;
  iType: Shortint);
begin
//
end;

procedure TDHDM.RemoteDataModuleCreate(Sender: TObject);
var
  DB_Is_EncPwd: Boolean;
  ps, str,dbName: string;
 ini: Tinifile;
 ServerNam,DataBaseName,UserName,password:string;
begin
//  ini := Tinifile.Create(ExtractFilePath(paramstr(0)) + 'POSSetup.ini');
//  try
//    //取配置文件
//    ServerNam := Ini.ReadString('POSServer', 'DataBaseName', '');
//    ServerNam :=  LeftStr(ServerNam,Pos('/',ServerNam)-1);
//    DataBaseName  := Ini.ReadString('POSServer', 'DataBaseName', '');
//    DataBaseName :=  Copy(DataBaseName,Pos('/',DataBaseName)+1,Length(DataBaseName));
//    UserName :=  Ini.ReadString('POSServer', 'UserName', '');
//    password :=  Ini.ReadString('POSServer', 'password ', '');
    ini := Tinifile.Create(ExtractFilePath(paramstr(0)) + 'STOffice.ini');
    try
      //取配置文件
      ServerNam := Ini.ReadString('DBconfig', 'ServerName', '127.0.0.1');
      DataBaseName  := Ini.ReadString('DBconfig', 'DataBaseName', 'ga');
      UserName :=  Ini.ReadString('DBconfig', 'UserName', 'sa');
      password :=  Ini.ReadString('DBconfig', 'password ', '');
      ps := Base64DecodeStr(password);
    finally
      ini.Free;
    end;
    //
    ADOConn.Connected:=False;
    ADOCont.Connected:=False;
//    ps := Base64DecodeStr(password);
//    str :='Provider=MSDAORA.1;Password=' + ps + ';User ID='
//           + UserName + ';Data Source='
//           + ServerNam+'/'+DataBaseName;
    str := Format('Provider=SQLOLEDB.1;Password=%s;Persist Security Info=' +
                  'True;User ID=%s;Initial Catalog=%s;Data Source=%s',
                  [ps, UserName, DataBaseName, ServerNam]);

    ConnString:=str;
//    格式：TEST/TEST@192.168.76.179:1521:orcl  ,用于局域网连接数据库
//    dbName:=trim(DataBaseName);
//    if Pos('.',dbName)>0 then
//    begin
//      dbName:=LeftStr(dbName,Pos('.',dbName)-1);
//    end;
//    dbConnStr:=UserName+'/'+ps+'@'+ServerNam+':1521:'+dbName;
//    dbIP:= ServerNam;
    /////用于局域网连接数据库
    try   //微软驱动连接
      ADOConn.Connected := false;
      ADOConn.LoginPrompt := false;
      ADOConn.ConnectionString := '';
      ADOConn.ConnectionString := str;
      ADOConn.LoginPrompt := false;
      ADOConn.Connected := true;
    except
      on e:exception do
      begin
        Gio.AddShow(e.Message);
      end;
    end ;
//    str :='Provider=OraOLEDB.Oracle;Password=' + ps + ';User ID='
//           + UserName + ';Data Source='
//           + ServerNam+'/'+DataBaseName ;
//    try  //OLE方式连接
//      ADOCont.Connected := false;
//      ADOCont.LoginPrompt := false;
//      ADOCont.ConnectionString := '';
//      ADOCont.ConnectionString := str;
//      ADOCont.LoginPrompt := false;
//      ADOCont.Connected := true;
//    except
//      on e:exception do
//      begin
//        Gio.AddShow(e.Message);
//      end;
//    end ;
//    str :='Provider=OraOLEDB.Oracle;Password=' + ps + ';User ID='
//           + UserName + ';Data Source='
//           + ServerNam+'/'+DataBaseName ;
    try  //OLE方式连接
      ADOCont.Connected := false;
      ADOCont.LoginPrompt := false;
      ADOCont.ConnectionString := '';
      ADOCont.ConnectionString := str;
      ADOCont.LoginPrompt := false;
      ADOCont.Connected := true;
    except
      on e:exception do
      begin
        Gio.AddShow(e.Message);
      end;
    end ;
//  finally
//    ini.Free;
//  end;

end;

procedure TDHDM.loginInfo(const user_id, user_name,ip_address: WideString);
begin
  self.user_id:=user_id;
  Self.User_Name:=user_name;
  Self.ip_address:=ip_address;
end;

procedure TDHDM.ADOConnExecuteComplete(Connection: TADOConnection;
  RecordsAffected: Integer; const Error: Error;
  var EventStatus: TEventStatus; const Command: _Command;
  const Recordset: _Recordset);
begin
  if MainFrm<>nil then 
  if MainFrm.N9.Checked then
  begin
    Gio.AddShow(' 用户:('+user_name+') IP:('+ip_address +') '+Command.CommandText,0);
  end;
end;

procedure TDHDM.dspFindUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  Gio.AddShow(' 用户:('+user_name+') IP:('+ip_address +') '+'数据集:【'+ TDataSetProvider(Sender).Name+'】提交失败! 原因:'+E.Message,1);
end;

procedure TDHDM.ServerLog(const Msg: WideString; msgtype: Shortint);
begin
   if user_name<>'' then 
   Gio.AddShow(' 用户:('+user_name+') IP:('+ip_address +') '+Msg,msgtype);
end;

procedure TDHDM.Get_UserName(const _UserID: WideString;
  var _UserName: WideString);
begin
  _UserName := '';
  if Trim(_UserID) = '' then Exit;

  try
    qryTemp.Close;
    //系统类型：0－EAS，1－K/3
    if _SysType = 1 then
      qryTemp.SQL.Text := 'SELECT Account AS UserName FROM HR_Base_User WHERE Account = :UserID'
    ELSE
      qryTemp.SQL.Text := 'select Fname_l2 AS UserName from T_PM_User where fnumber=:UserID';
    qryTemp.Parameters.ParamByName('UserID').Value := _UserID;
    qryTemp.Open;
    _UserName := qryTemp.FieldByName('UserName').AsString;
    qryTemp.Close;
  except

  end;
end;
function ByteToString(const Value: MD5Digest): String;
var
    I: integer;
    S : String;
begin
  SetLength(S,Length(Value));
  Move(Value[0],S[1],Length(Value));
  Result := S;
end;

function  GetMd5Password(PSWD:string):string;
var
    s,l:String;
begin
  s:=PSWD+''#0'';
  result:=Base64EncodeStr(ByteToString(MD5String(s)))
end;
function TDHDM.Chk_UserPassword(const _User_ID, _User_Pwd: WideString;
  var _User_Name, ErrMsg: WideString; logtype: Shortint): Shortint;
var
  SqlStr: string;
  userFID,UserMd5PSWD:string ;
begin
  Result := 0;
  ErrMsg := '';
  try
    //系统类型：0－EAS，1－K/3
    if _SysType = 0 then
    begin
      SqlStr := 'select FID,fnumber,Fname_l2 as User_Name,fpassword from T_PM_User where fnumber='''+Trim(_User_ID)+'''';
      qryTemp.Close;
      qryTemp.SQL.Text := SqlStr;
      qryTemp.Open;
      if qryTemp.IsEmpty then
      begin
        Result := -1;
        ErrMsg := '用户名不存在！';
        qryTemp.Close;
        Exit;
      end;
      userFID:=qryTemp.FieldByName('FID').AsString;
      _User_Name := qryTemp.FieldByName('User_Name').AsString;
      UserMd5PSWD:=qryTemp.FieldByName('fpassword').AsString;

      if (UserMd5PSWD='') and (_User_Pwd='') then exit;//无密码直接通过
      if (UserMd5PSWD='') and (_User_Pwd<>'') then
      begin
        Result := -1;
        ErrMsg := '用户名或密码错误！';
        Exit;
      end;
      if (UserMd5PSWD<>'') and (_User_Pwd='') then
      begin
        Result := -1;
        ErrMsg := '用户名或密码错误！';
        Exit;
      end;
      if UserMd5PSWD<>_User_Pwd then
      begin
        Result := -1;
        ErrMsg := '用户名或密码错误！';
        Exit;
      end;
      exit; //密码验证通过
    end;
  except
    on E: Exception do
    begin
      ErrMsg := E.Message;
      Result := -9;
    end;
  end;
end;

function TDHDM.Upd_UserPassword(const _User_ID, _Old_Pwd,
  _New_Pwd: WideString; var ErrMsg: WideString): Shortint;
begin
  ErrMsg := '';
  Result := 0;
end;

procedure TDHDM.Get_Sysinfo(var _SysInfo: WideString);
var list:TStringList;
begin

end;

function RecordsetToXMLString(const Recordset: adoint._Recordset): string;
var
  RS: Variant;
  Stream: TStringStream;
  flieName:string;
begin
  Result :='';
  if Recordset = nil then Exit;
  if Recordset.RecordCount>10000000 then
  begin
    raise Exception.Create('对不起!查询数据不能超出10000000行,请修改您的查询条件!');
  end
  else
  begin
    try
      Stream := TStringStream.Create('');
      RS := CreateOleObject('ADODB.Recordset');
      RS := Recordset;
      RS.Save(TStreamAdapter.Create(stream) as IUnknown, adPersistXML);
      Stream.Position := 0;
      result := Stream.DataString;
    finally
      FreeAndNil(Stream);
    end;
  end;
end;
//转换OLEVariant和TMemoryStream
function OleVariantToMemoryStream(OV: OleVariant): TMemoryStream;
var
  Data: PByteArray;
  Size: integer;
begin
  Result := TMemoryStream.Create;
  try
    Size := VarArrayHighBound(OV, 1) - VarArrayLowBound(OV, 1) + 1;
    Data := VarArrayLock(OV);
    try
      Result.Position   :=   0;
      Result.WriteBuffer(Data^,   Size);
    finally
      VarArrayUnlock(OV);
    end;
  except
    Result.Free;
    Result := nil;
  end;
end;
//转换OLEVariant和TMemoryStream
function MemoryStreamToOleVariant(Strm: TMemoryStream): OleVariant;
var
  Data: PByteArray;
begin
  Result := VarArrayCreate([0, Strm.Size - 1], varByte);
  try
    Data := VarArrayLock(Result);
    Strm.Position := 0;
    Strm.ReadBuffer(Data^, Strm.Size);
  finally
    VarArrayUnlock(Result);
  end;
end;
//压缩 OleVariant
function Zip_OleVariant(Data: OleVariant): OleVariant;
var
  MemReadStream, memDestStream: TMemoryStream;
  ZipStream: TCompressionStream;
  ZipCount: integer;
begin
  Result:=Null;
  if Data=Null then Exit;
  MemReadStream := OleVariantToMemoryStream(Data);
  memDestStream := TMemoryStream.Create;
  try
    ZipCount := memReadStream.Size;
    memDestStream.WriteBuffer(FileFlag, 12);
    memDestStream.WriteBuffer(ZipCount, SizeOf(ZipCount));
    ZipStream := TCompressionStream.Create(clMax, memDestStream);
    try
      memReadStream.SaveToStream(ZipStream);
    finally
      ZipStream.Free;
      memReadStream.Clear;
    end;
    memDestStream.WriteBuffer('DataFileEnd', 12);
    Result := MemoryStreamToOleVariant(memDestStream);
  finally
    FreeAndNil(MemReadStream);
    memDestStream.Clear;
    FreeAndNil(memDestStream);
  end;
end;
//string 转变体型
function TextToOleData(const AText: string): OleVariant;
var
nSize: LongInt;
pData: Pointer;
mb:Double;
begin
  Result := Null;
  nSize := Length(AText);
  if nSize = 0 then Exit;
  try
    Result := VarArrayCreate([0, nSize - 1], varByte);
    pData := VarArrayLock(Result);
    Move(Pchar(AText)^, pData^, nSize);
  finally
    VarArrayUnlock(Result);
  end;
end;


procedure TDHDM.openReport(const report_sql: WideString;
  report_type: Shortint; var data: OleVariant; var errormsg: WideString);
var vrit: OleVariant;
    _sql,SXML:string;
begin
  errormsg:='';
  data:=Null;
  _sql:=Trim(report_sql);
  try
    try
      with R_FindQry do
      begin
        Close;
        sql.Clear;
        Parameters.Clear;
        sql.Add(_sql);
        if (Copy(_sql,1,1)='{') or (Copy(_sql,1,7)='execute')  then
        begin
          Open;
//          ExecSQL;
        end
        else
          Open;
        //Gio.AddShow(' 用户:('+user_name+') IP:('+ip_address +') 报表打开成功!',0);
      end;
      if R_FindQry.RecordCount > 0 then
      SXML:= RecordsetToXMLString(R_FindQry.Recordset);
      //Gio.AddShow(' 用户:('+user_name+') IP:('+ip_address +') 记录体转STRING成功!',0);
      R_FindQry.Close;
      vrit:=TextToOleData(SXML);
      SXML:='';
      //Gio.AddShow(' 用户:('+user_name+') IP:('+ip_address +') String转变体成功!',0);
      vrit:=Zip_OleVariant(vrit);
      //Gio.AddShow(' 用户:('+user_name+') IP:('+ip_address +') 数据压缩成功!',0);
      data:=vrit;
    except
      on e:Exception do
      begin
        errormsg:='服务端错误 '+e.Message;
        if MainFrm<> nil then
        begin
          Gio.AddShow(' 用户:('+user_name+') IP:('+ip_address +') '+errormsg+_sql,1);
        end;
        if vrit<>null then   vrit := Unassigned;
        if R_FindQry.Active then   R_FindQry.Close;
      end;
    end;
  finally
    if vrit<>null then  vrit := Unassigned;
    if R_FindQry.Active then   R_FindQry.Close;
  end;

end;

procedure TDHDM.openReport2(const _SQL: WideString; ReportType: Shortint;
  var _Data: OleVariant; var error: WideString);
begin
  //
end;

function TDHDM.ClientReg(MC,ComputerName: string; MaxclientCount:Integer): Boolean;
var fCount:Integer;
    _dy:Boolean;
begin
  Result:=False;
  try
    if dbType='oracle' then      //检查是否大于可登陆数
    begin
      with   F_Qry do
      begin
        Close;
        SQL.Clear;
        SQL.Add('select count(FID) as countFID from F_REPORTREGINFO ');      //count(FID)
        Open;
        if IsEmpty then fCount:=0
        else
        fCount:=fieldbyname('countFID').AsInteger;
        if fCount> MaxclientCount then
        begin
          Exit;
        end;
      end;
    end
    else
    begin
      with   db_Query  do
      begin
        Close;
        SQL.Clear;
        SQL.Add('select count(ClientMachineID) as countFID from F_REPORTREGINFO ');      //count(FID)
        Open;
        if IsEmpty then fCount:=0
        else
        fCount:=fieldbyname('countFID').AsInteger;
        if fCount> MaxclientCount then
        begin
          Exit;
        end;
      end;
    end;
    if dbType<>'oracle' then
    begin
      with db_Query do
      begin
        Close;
        SQL.Clear;
        SQL.Add('select * from F_REPORTREGINFO where ClientMachineID='''+MC+'''');
        Open;
        if not IsEmpty then    
        begin
          Edit;
          FieldByName('LastLoginTime').AsDateTime:=Now;
          FieldByName('DES1').AsString:=ComputerName;
          UpdateBatch();
          Result:=True;
          Exit;
        end
      end;
    end
    else
    begin
      with F_Qry do   //检查是否存在
      begin
        Close;
        SQL.Clear;
        SQL.Add('select * from F_REPORTREGINFO where ClientMachineID='''+MC+'''');
        Open;
        if not IsEmpty then    //只有已注册过才能登陆
        begin
          Edit;
          FieldByName('LastLoginTime').AsDateTime:=Now;
          FieldByName('DES1').AsString:=ComputerName;
          UpdateBatch();
          Result:=True;
          Exit;
        end;
      end;
    end;
    if fCount+1> MaxclientCount then
    begin
      Exit;
    end;
    //注册数据
    try
      if dbType='oracle' then
      begin
        with F_Qry do
        begin
          Close;
          SQL.Clear;
          SQL.Add('insert into F_REPORTREGINFO(FID,ClientMachineID,LastLoginTime,DES1) values (:FID,:ClientMachineID,:LastLoginTime,:DES1)');
          Parameters.ParamByName('FID').Value:=getGuid;
          Parameters.ParamByName('ClientMachineID').Value:=MC;
          Parameters.ParamByName('LastLoginTime').Value:=Now;
          Parameters.ParamByName('DES1').Value:=ComputerName;
          ExecSQL;
        end;
      end
      else
      begin
        with db_update do
        begin
          Close;
          SQL.Clear;
          SQL.Add('insert into F_REPORTREGINFO(FID,ClientMachineID,LastLoginTime,DES1) values (:FID,:ClientMachineID,:LastLoginTime,:DES1)');
          Parameters.ParamByName('FID').Value:=getGuid;
          Parameters.ParamByName('ClientMachineID').Value:=MC;
          Parameters.ParamByName('LastLoginTime').Value:=Now;
          Parameters.ParamByName('DES1').Value:=ComputerName;
          ExecSQL;
        end;
      end;
      Result:=True;
    except
      on e:Exception do
      begin
         Result:=False;
         Gio.AddShow(' 用户:('+user_name+') IP:('+ip_address +') '+'注册失败! 原因:'+E.Message,1);
      end;
    end;
  finally
    db_Query.Close;
    db_update.Close;    
    F_Qry.Close;
  end;
end;

procedure TDHDM.ImportReportScript(const _SQL: WideString;
  var _Error: WideString);
begin
  try
    _Error:='';
    if dbType='oracle' then
    begin
      with ORCL_Report do
      begin
        Close;
        SQL.Clear;
        SQL.Add(_SQL);
        Parameters.Clear;
        ExecSQL;
      end;
    end
    else
    begin
      with SQL_Report do
      begin
        Close;
        SQL.Clear;
        SQL.Add(_SQL);
        Parameters.Clear;
        ExecSQL;
      end;
    end;
  except
    on e:Exception do
    begin
      _Error:=e.Message;
    end;
  end;
end;
//把文件压缩到 OleVariant
function Zip_FileToOleVariant(FileName: string): OleVariant;
var
  //源文件流
  MemReadStream: TMemoryStream;
  //压缩后的文件流
  memDestStream: TMemoryStream;
  ZipStream: TCompressionStream;
  ZipCount: integer;
begin
  Result := null;
  if not FileExists(FileName) then Exit;
  try
    MemReadStream := TMemoryStream.Create;
    memDestStream := TMemoryStream.Create;
    MemReadStream.LoadFromFile(FileName);
    ZipCount := memReadStream.Size;
    memDestStream.WriteBuffer(FileFlag, 12);
    memDestStream.WriteBuffer(ZipCount, SizeOf(ZipCount));
    ZipStream := TCompressionStream.Create(clMax, memDestStream);
    try
      memReadStream.SaveToStream(ZipStream);
    finally
      ZipStream.Free;
      memReadStream.Clear;
    end;
    memDestStream.WriteBuffer('DataFileEnd', 12);
    Result := MemoryStreamToOleVariant(memDestStream);
  finally
    FreeAndNil(MemReadStream);
    FreeAndNil(memDestStream);
  end;
end;
//按分隔符取得字符串，例如  Get_String('A,B,C,D,E,F', 2) = 'A'
function Get_String(aStr: string; aIndex: Integer; const Delimiter: Char = ','): string;
var
  TemList: TStrings;
begin
  Result := '';
  if aIndex < 0 then Exit;
  TemList := TStringList.Create;
  try
    TemList.Delimiter := Delimiter;
    TemList.DelimitedText := aStr;
    if aIndex < TemList.Count then
      Result := TemList.Strings[aIndex];
  finally
    TemList.Free;
  end;
end;
procedure TDHDM.getServerTxtData(const _SQL: WideString; var _inistr,
  _outFilename: WideString; var _Data: OleVariant;
  var _errormsg: WideString; const _userTag: WideString;
  _reporttype: Shortint);
var
    recordcout,isCT:Integer;
    ini,info,errINI:TIniFile;
    conn,_sysPath:string;
    exportexe:string;
    list:Tstringlist;
    isNULL:Integer ;
begin
  try
    qryRpFind.DisableControls;
    list:=TStringList.Create;
    try
      _sysPath:=ExtractFilePath(Application.ExeName)+'serTemp\'+_userTag+'\';
      if _outFilename='' then
      begin
        if dbType='oracle' then
        begin
           //oracle查询存储过程不能释放内存,此处利用单独EXE程序完成数据查询导出
          try
            conn:=ConnString;
            if not DirectoryExists(_sysPath) then CreateDir(_sysPath);
            ini:=TIniFile.Create(_sysPath+'conn.ini');
            ini.WriteString('PZ','CONNSTR',conn);
            //ini.WriteString('PZ','SQL',_sql);
            list.Clear;
            list.Add(_SQL);
            list.SaveToFile(_sysPath+'sql.txt');
            ini.WriteInteger('PZ','reporttype',_reporttype);
          finally
            ini.Free;
          end;
          exportexe:=ExtractFilePath(Application.ExeName)+'DataExport.exe';
          if not FileExists(exportexe) then
          begin
            Gio.AddShow('没有找到文件!'+exportexe,1);
            Exit;
          end;
          MainFrm.exeDataExportExe(exportexe,'"'+_userTag+'"');
          isCT:=0;
          //ShellExecute(0,'open',PChar(exportexe),PChar('"'+_userTag+'"'),nil,SW_SHOWNORMAL);
          while True do //等待查询完成
          begin
            Sleep(100);
            inc(isCT);
            //防止死循环
            if isCT>18000 then
            begin
              Gio.AddShow(' 用户:('+user_name+') IP:('+ip_address +') 查询超过30分钟,超时退出!',1);
              exit;
            end;
            if  (FileExists(_sysPath+'info.ini')) then
            begin
              try
                info:= TIniFile.Create(_sysPath+'info.ini');
                isNULL:=info.ReadInteger('INFO','isNULL',0);
              finally
                info.Free;
              end;
              if isNULL=1 then  Exit;   //为空直接退出
            end;
            if (FileExists(_sysPath+'info.ini')) and (FileExists(_sysPath+'inistr.txt'))  then
            begin
              try
                info:= TIniFile.Create(_sysPath+'info.ini');
                _outFilename:=info.ReadString('INFO','OutFileNames','');
                recordcout:=info.ReadInteger('INFO','_DataCount',0);
                isNULL:=info.ReadInteger('INFO','isNULL',0);
                list.Clear;
                list.LoadFromFile(_sysPath+'inistr.txt');
                _inistr  :=list.Text;
              finally
                info.Free;
              end;
              if isNULL=1 then  Exit;   //为空直接退出
              if (_outFilename<>'') and (_inistr<>'') then  //有输出文件,就中止等待
              Break;
            end;
            if FileExists(_sysPath+'errormsg.ini')  then
            begin
              try
                errINI:= TIniFile.Create(_sysPath+'errormsg.ini');
                _errormsg:=errINI.ReadString('ERROR','MSG','');
              finally
                errINI.Free;
              end;
              if _errormsg<>'' then
              begin
                Gio.AddShow(' 用户:('+user_name+') IP:('+ip_address +') '+_errormsg+' 脚本:'+_SQL,1);
                exit;
              end;
            end;
          end;
        end
        else
        begin
          with qryRpFind do
          begin
            Close;
            sql.Clear;
            Parameters.Clear;
            sql.Add(Trim(_sql));
            Open;
          end;
          if not   qryRpFind.IsEmpty then
          begin
            if not ExtDataSet_To_Text_Ex(qryRpFind,_sysPath,_userTag,_outFilename,recordcout,_inistr,_reporttype) then
            begin
              Exit;
            end
            else
            if qryRpFind.Active then   qryRpFind.Close;
          end;
        end;
      end;
      //Gio.AddShow(' 用户:('+user_name+') IP:('+ip_address +') 开始下载数据!',0);
      _data := Zip_FileToOleVariant(_sysPath + Get_String(_outFilename, 0));
     // Gio.AddShow(' 用户:('+user_name+') IP:('+ip_address +') 完成下载数据!',0);
    except
      on e:Exception do
      begin
        _errormsg:='服务端错误 '+e.Message;
        if MainFrm<> nil then
        begin
          Gio.AddShow(' 用户:('+user_name+') IP:('+ip_address +') '+_errormsg+_sql,1);
        end;
        if qryRpFind.Active then   qryRpFind.Close;
      end;
    end;
  finally
    if qryRpFind.Active then   qryRpFind.Close;
    list.Free;
    qryRpFind.EnableControls;
  end;

end;

procedure TDHDM.DeleteTempDir(const _FileName: WideString);
var _sysPath:string;
begin
  _sysPath:=ExtractFilePath(Application.ExeName)+'serTemp\'+_FileName+'\';
  DeleteDirectory(_sysPath);
end;

procedure TDHDM.getDBInfo(var _IP, _ConnStr: WideString);
begin
  _IP:=dbIP;
  _ConnStr:=dbConnStr;
end;

initialization
  TComponentFactory.Create(ComServer, TDHDM,
    Class_DHDM, ciMultiInstance, tmApartment); //tmApartment
end.

