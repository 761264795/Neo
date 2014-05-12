unit Pub_Fun;

interface

uses
  SysUtils, ZLib, Variants, ComObj, DB, Classes, ADODB, StrUtils, UntTIO,
  Windows, Messages, Graphics, Controls, Forms, TLHelp32, ADODB2000,ExtCtrls,
  Registry, DBClient,Math,ADODB_TLB,ADOInt,Dialogs,inifiles,ActiveX, MMSystem,DCPbase64,types,md5,winsock;
var
  HintTitle:  string = 'I3鞋服ERP提示';
  WarnTitle:  string = 'I3鞋服ERP提示';
  ErrorTitle: string = 'I3鞋服ERP提示';
  AskTitle:   string = 'I3鞋服ERP提示';
type
  TRoundToRange = -37..37;
const
  //----------对话框窗体标题分类---------

  M_Warn:  Cardinal = MB_Ok or MB_ICONWARNING;
  M_Error: Cardinal = MB_Ok or MB_ICONERROR;
  M_Hint:  Cardinal = MB_Ok or MB_ICONINFORMATION;
  M_YesNo: Cardinal = MB_YESNO or MB_ICONQUESTION;
  M_YewNoCancel: Cardinal = MB_YESNOCANCEL or MB_ICONQUESTION;

const
  FileFlag = 'MyKingdeeFZ';

  //转换OLEVariant和TMemoryStream
  function OleVariantToMemoryStream(OV: OleVariant): TMemoryStream;
  //转换OLEVariant和TMemoryStream
  function MemoryStreamToOleVariant(Strm: TMemoryStream): OleVariant;
  //压缩 OleVariant
  function Zip_OleVariant(Data: OleVariant): OleVariant;
  //解压缩 OleVariant
  function UnZip_OleVariant(Data: OleVariant): OleVariant;
  //从文件压缩到 OleVariant
  function Zip_FileToOleVariant(FileName: string): OleVariant;
  //从 OleVariant 解压缩到文件
  function UnZip_FileToOleVariant(FileStream: OleVariant; FileName: string): Boolean;
  //数据集导出到Text文件，供BCP导入用
  function ExtDataSet_To_Text(DataSet: TDataSet;  TxtFile: string; const Delimiter: string = '_#$_'): Boolean;
  //数据集导出到Text文件，供BCP导入用，按一定记录行拆分成多个文件
  function ExtDataSet_To_Text_Ex(var Gio: TIOer;
                                 DataSet: TDataSet;  //待导出的数据集
                                 FilePath: string;    //导出文件路径
                                 FileName: string;    //导出文件名，不带扩展名
                                 DataName: string;    //数据集名称
                                 var OutFileNames: WideString;  //导出的文件列表
                                 var _DataCount: integer;       //数据行数
                                 const Delimiter: string = '_#$_'  //字段分隔符
                                 ): Boolean;
  //Text文件导入到表中（SQL数据库适用）参数：AdoCon，文本文件，导入表名，导入列，主键，分隔符，错误信息，【注：文本文件格式与BCP导出格式一致】
  //这个函数仅适用于SQL数据库在本地的情况
  function Im_Text_To_Sql(_AdoCon: TADOConnection; TxtFile, TableName, Columns, KeyCol, Del_Cols, DBUserName, DBPassword: string; var ErrMsg: string; const Delimiter: string = '_#$_'): Boolean;
  //Text文件导入到表中（SQL数据库适用，可用于导入数据到其他电脑的SQL数据库
  function Im_Text_To_Sql_Ex(TxtFile,         //文本文件，格式为BCP导出格式
                             TableName,       //导入目标表
                             Columns,         //字段列（与文本文件列对应）
                             KeyCol: string;  //主键字段
                             DBSerName,       //数据库服务器名称
                             DBName,          //数据库名称
                             DBUserID,        //数据库登录用户
                             DBUserPwd: string;  //数据库密码
                             var ErrMsg: string; //错误信息
                             const Delimiter: string = '_#$_'   //数据分隔符
                             ): Boolean;


  //获取文件版本信息  20110507
  function GetVersionString(FileName: string): string;
  //取得电脑特征码（采用K/3 v12.1的加密接口文件取得）
  function Get_SoftLock(var SoftLock: string; var ErrMsg: string): Boolean;
  //按分隔符取得字符串，例如  Get_String('A,B,C,D,E,F', 0) = 'A'
  function Get_String(aStr: string; aIndex: Integer; const Delimiter: Char = ','): string;
  //取得字符的段数，例如  Get_StrCount('A,B,C,D,E,F') = 6
  function Get_StrCount(aStr: string; const Delimiter: Char = ','): Integer;
  //取得服务器GUID
  function Get_Guid: string;
  //生成TXT文件  20110512
  procedure WriteTxt(WriteStr: string);
  //取得文件的修改日期
  function Get_FileUpdTime(const FileName: string): TDateTime;
  //删除临时文件(路径，文件类型，包含子目录，删除 N 天前的)
  function Del_TemFile(Path, Filter: string; ContainSubDir: Boolean; BeforeDate: Double): Boolean;
  //判断是否存在某个进程
  function FindProcess(AFileName: string):boolean;
  //执行SQL脚本文件(SQL适用)
  function Exec_SqlFile(ServerName, DataBaseName, UserName, password, FileName: string; var ErrMsg: string): Boolean;
  //执行SQL脚本(SQL适用)
  function Exec_SqlStrs(ServerName, DataBaseName, UserName, password: string; Sql_Liststr: TStrings; var ErrMsg: string; const Use_Trans: Boolean = False): Boolean;

  procedure ShowMsg(Handle: HWnd; AMessage: string; AStr: Array of const);
  procedure ShowWarn(Handle: HWnd; AMessage: string; AStr: Array of const);
  procedure ShowError(Handle: HWnd; AMessage: string; AStr: Array of const);
  function ShowYesNo(Handle: HWnd; AMessage: string; AStr: Array of const): Cardinal;
  function ShowYewNoCancel(Handle: HWnd; AMessage: string; AStr: Array of const): Cardinal;

  function LoadImage(FilePath : string;Image:TImage):Boolean;   //加载图片
  //判断是否安装SQL或MSDE
  function HasSetupSQL: Boolean;
  //执行文件并等待完毕
  function ExecAndWait(const Filename, Params: string; WindowState: word): Boolean;

  //取得尺码在组中的序号
  function Get_SizeGroupIndex(_AdoCon: TADOConnection; StyleID, SizeID: string): Integer;
  //通过尺码组序号取得尺码ID
  function Get_SizeID_GroupIndex(_AdoCon: TADOConnection; StyleID: string; SizeIndex: Integer): string;
  //截取小数位数
  function USimpleRoundTo(const AValue: Double; const ADigit: TRoundToRange = -2): Double;
  //判断是否存在字段
  function is_fieldByName(cds:TadoDataSet;fieldName:String):Boolean; overload;
  function is_fieldByName(cds:TClientDataSet;fieldName:String):Boolean; overload;
  //string 转变体型
  function TextToOleData(const AText: string): OleVariant;
  //RECORDSET转XMLString
  function RecordsetToXMLString(const Recordset: adoint._Recordset): string;
  //变体转XMLString
  function OleDataToText(const AData: OleVariant): string;
  //XMLString转 adoint._Recordset;
  function RecordsetFromXMLString(const XML: string): adoint._Recordset;
  procedure setReportData(var adodataset:TADODataSet;data:OleVariant);
  //全角转半角 20120221
  function SbctoDbc(s:string):string;
  //播放声音文件  20120824 许志祥
  procedure playSoundFile(playfile:string);
  // 字节数组转字符串
  function ByteToString(const Value: MD5Digest): String;
  // 获取加密码后的密码
  function  GetMd5Password(PSWD:string):string;
  function  LocalIP :string; //获取本地IP
  function  FindRecord1(cdsFind: TClientDataSet;StrFieldName,strfieldVal:string;iflag : integer): Boolean;
  function  FindRecord2(cdsFind: TClientDataSet;StrFieldName,StrFieldName1,strfieldVal,strfieldVal1:string;iflag : integer): Boolean;
  function  FindRecord3(cdsFind: TClientDataSet;StrFieldName,StrFieldName1,StrFieldName2,strfieldVal,strfieldVal1,strfieldVal2 : string;iflag :integer): boolean;
  function  FindADORecord1(qryFind: TADOQuery;StrFieldName,strfieldVal:string;iflag : integer): Boolean;
  implementation

uses untFunctions;

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
procedure playSoundFile(playfile:string);
begin
  if fileexists(playfile) then
  playSound(pchar(playfile),SND_FILENAME,SND_SYNC);
end;
procedure setReportData(var adodataset:TADODataSet;data:OleVariant);
var s:string;
begin
  data:=UnZip_OleVariant(data);   //数据解压
  s:=OleDataToText(data);    //变体转string
  adodataset.Recordset:=RecordsetFromXMLString(s);
end;

//XMLString转 adoint._Recordset;
function RecordsetFromXMLString(const XML: string): adoint._Recordset;
var
  RS: Variant;
  Stream: TStringStream;
begin
  Result := nil;
  if XML = '' then Exit;
  try
      Stream := TStringStream.Create(XML);
      Stream.Position := 0;
      RS := CreateOleObject('ADODB.Recordset');
      RS.Open(TStreamAdapter.Create(Stream) as IUnknown);
      Result := IUnknown(RS) as adoint._Recordset;
  finally
      Stream.Free;
  end;
end;
//变体转string
function OleDataToText(const AData: OleVariant): string;
var
  nSize: Integer;
  pData: Pointer;
begin
  if AData = Null then
     Result := ''
  else begin
     nSize := VarArrayHighBound(AData, 1) - VarArrayLowBound(AData, 1) + 1;
     SetLength(Result, nSize);
     pData := VarArrayLock(AData);
     try
       Move(pData^, Pchar(Result)^, nSize);
     finally
       VarArrayUnlock(AData);
     end;
  end;
end;
//RECORDSET转XMLString
function RecordsetToXMLString(const Recordset: adoint._Recordset): string;
var
  RS: Variant;
  Stream: TStringStream;
begin
  Result :='';
  if Recordset = nil then Exit;
  Stream := TStringStream.Create('');
  try
      RS := CreateOleObject('ADODB.Recordset');
      RS := Recordset;
      RS.Save(TStreamAdapter.Create(stream) as IUnknown, adPersistXML);
      Stream.Position := 0;

      result := Stream.DataString;
  finally
      Stream.Free;
  end;
end;
//string 转变体型
function TextToOleData(const AText: string): OleVariant;
var
nSize: Integer;
pData: Pointer;
begin
  nSize := Length(AText);
  if nSize = 0 then
   Result := Null
  else
  begin
    Result := VarArrayCreate([0, nSize - 1], varByte);
    pData := VarArrayLock(Result);
    try
     Move(Pchar(AText)^, pData^, nSize);
    finally
     VarArrayUnlock(Result);
    end;
  end;
end;
//小数处理
function USimpleRoundTo(const AValue: Double; const ADigit: TRoundToRange = -2): Double;
var
  LFactor: Double;
begin
  LFactor := IntPower(10, ADigit);
  if AValue > 0 then
    Result := Trunc((AValue / LFactor) + 0.5) * LFactor
  else
    Result := Trunc((AValue / LFactor) - 0.5) * LFactor;
end;

{执行文件并等待完毕}
function ExecAndWait(const Filename, Params: string; WindowState: word): Boolean;
var
  SUInfo: TStartupInfo;
  ProcInfo: TProcessInformation;
  CmdLine: string;
begin
  CmdLine := filename + ' ' + params;
  FillChar(SUInfo, SizeOf(SUInfo), #0);
  with SUInfo do begin
    cb := SizeOf(SUInfo);
    dwFlags := STARTF_USESHOWWINDOW;
    wShowWindow := WindowState;
  end;      
  Result := CreateProcess(nil, PChar(CmdLine), nil, nil, FALSE,
    CREATE_NEW_CONSOLE or NORMAL_PRIORITY_CLASS, nil,
    PChar(ExtractFilePath(Filename)), SUInfo, ProcInfo);
  if Result then begin
    //等待应用程序结束
    WaitForSingleObject(ProcInfo.hProcess, INFINITE);
    //删除句柄
    CloseHandle(ProcInfo.hProcess);
    CloseHandle(ProcInfo.hThread);
  end;
end;

//判断是否安装SQL或MSDE
function HasSetupSQL: Boolean;
var
  TmpReg: Tregistry;
  SQLPath: string;
begin
  Result := False;
  TmpReg := Tregistry.Create;
  try
    try
      TmpReg.RootKey := HKEY_LOCAL_MACHINE;
      if not TmpReg.OpenKey('Software\Microsoft\MSSQLServer\Setup', False) then
        exit;
      SQLPath := TmpReg.ReadString('SQLPath');

      Result := (Trim(SQLPath) <> '')and FileExists(SQLPath+'\Binn\sqlservr.exe');
      TmpReg.CloseKey;
    except
      Result := False;
    end;
  finally
    TmpReg.Free;
  end;
end;

function LoadImage(FilePath : string;Image:TImage):Boolean;   //加载图片
begin
  Result := True;
  if FileExists(FilePath) then
    Image.Picture.LoadFromFile(FilePath)
  else
    Result := False;
end;

//判断是否存在某个进程
function FindProcess(AFileName: string):boolean;
var
  hSnapshot: THandle;
  lppe: TProcessEntry32;
  Found: Boolean;
begin
  Result := False;
  hSnapshot := CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS,0);
  lppe.dwSize := SizeOf(TProcessEntry32);
  Found := Process32First(hSnapshot,lppe);
  while Found do
  begin
    if SameText(ExtractFileName(lppe.szExeFile), ExtractFileName(AFileName)) or
       SameText(lppe.szExeFile, ExtractFileName(AFileName))   then
    begin
      Result:=True;
    end;
    Found:=Process32Next(hSnapshot,lppe);
  end;
end;

//删除临时文件(路径，文件类型，包含子目录，删除 N 天前的)
function Del_TemFile(Path, Filter: string; ContainSubDir: Boolean; BeforeDate: Double): Boolean;
var
  SrRec: TSearchRec;
begin
  if (Path[Length(Path)]<>'\') then
    Path := Path + '\';
  try
    if SysUtils.FindFirst(Path + Filter,faAnyFile and (not faDirectory),SrRec) = 0 then
    begin
      Application.ProcessMessages;
      if Get_FileUpdTime(Path + SrRec.Name) < Now() - BeforeDate then
        DeleteFile(PChar(Path + SrRec.Name));
      while (SysUtils.FindNext(SrRec)=0) do
        if Get_FileUpdTime(Path + SrRec.Name) < Now() - BeforeDate then
          DeleteFile(PChar(Path + SrRec.Name));
    end;
  finally
    SysUtils.FindClose(SrRec);
  end;
  try
    if (ContainSubDir)and(SysUtils.FindFirst(Path + '*', faDirectory, SrRec) = 0) then
    begin
      Application.ProcessMessages;
      if (SrRec.Name <> '.')and(SrRec.Name <> '..') then
        Del_TemFile(Path + SrRec.Name, Filter, ContainSubDir, BeforeDate);
      while (SysUtils.FindNext(SrRec)=0) do
        if (SrRec.Name<>'.')and(SrRec.Name<>'..') then
          Del_TemFile(Path + SrRec.Name, Filter, ContainSubDir, BeforeDate);
    end;
  finally
    SysUtils.FindClose(SrRec);
  end;
  Result := True;
end;

//取得文件的修改日期
function Get_FileUpdTime(const FileName: string): TDateTime;
begin
  if FileExists(FileName) then
    Result := FileDateToDateTime(FileAge(FileName));
end;

//取得GUID
function Get_Guid: string;
var
  sGUID: string;
begin
  sGUID := CreateClassID;
  Result := StringReplace(Copy(sGUID, 2, Length(sGUID) - 2), '-', '', [rfReplaceAll]);
end;

//取得字符的段数
function Get_StrCount(aStr: string; const Delimiter: Char = ','): Integer;
var
  TemList: TStrings;
begin
  Result := 0;
  TemList := TStringList.Create;
  try
    TemList.Delimiter := Delimiter;
    TemList.DelimitedText := aStr;
    Result := TemList.Count;
  finally
    TemList.Free;
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

//取得电脑特征码（采用K/3 v12.1的加密接口文件取得）
function Get_SoftLock(var SoftLock: string; var ErrMsg: string): Boolean;
var
  IFindValue2: Variant;
  SoftLock_Install: string;
begin
  Result := False;
  ErrMsg := '';
  //先拷贝链接库到system32
  SoftLock_Install := ExtractFilePath(paramstr(0)) + 'SoftLock\SoftLock_Install.bat';
  if FileExists(SoftLock_Install) then
    ExecAndWait(SoftLock_Install, '', SW_HIDE);
  try
    IFindValue2 := CreateOleObject('IFindValue2.SoftLock');
    SoftLock := IFindValue2.SoftwareCode;
    Result := True;
  except
    on E: Exception do
    begin
      ErrMsg := E.Message;
      Exit;
    end;
  end;
end;

//Text文件导入到表中（SQL数据库适用，可用于导入数据到其他电脑的SQL数据库
function Im_Text_To_Sql_Ex(TxtFile,         //文本文件，格式为BCP导出格式
                           TableName,       //导入目标表
                           Columns,         //字段列（与文本文件列对应）
                           KeyCol: string;  //主键字段
                           DBSerName,       //数据库服务器名称
                           DBName,          //数据库名称
                           DBUserID,        //数据库登录用户
                           DBUserPwd: string;  //数据库密码
                           var ErrMsg: string; //错误信息
                           const Delimiter: string = '_#$_'   //数据分隔符
                           ): Boolean;
begin
  Result := False;
  ErrMsg := '';
  if not FileExists(TxtFile) then
  begin
    ErrMsg := Format('文件（%s）不存在', [TxtFile]);
    Exit;
  end;

end;

//Text文件导入到表中（SQL数据库适用）参数：AdoCon，文本文件，导入表名，导入列，主键，分隔符，错误信息，【注：文本文件格式与BCP导出格式一致】
function Im_Text_To_Sql(_AdoCon: TADOConnection; TxtFile, TableName, Columns, KeyCol, Del_Cols, DBUserName, DBPassword: string; var ErrMsg: string; const Delimiter: string = '_#$_'): Boolean;
var ErrInt : Integer;
begin
  Result := True;
  //ErrMsg := '';
  if not FileExists(TxtFile) then
  begin
    ErrMsg := Format('文件（%s）不存在', [TxtFile]);
    Result := False;
    Exit;
  end;
  try
    {
    with TADOQuery.Create(nil) do
    try
      Connection := _AdoCon;
      CommandTimeout := 0;
      SQL.Text := 'EXEC sp_Text_To_Sql :TxtFile, :TableName, :TColumns, :KeyCol, :Del_Cols, :Delimiter, :UserName, :PassWord';
      //20111028
      //SQL.Text := 'EXEC sp_Text_To_Sql_Bulk :TxtFile, :TableName, :TColumns, :KeyCol, :Del_Cols, :Delimiter, :UserName, :PassWord';
      Parameters.ParamByName('TxtFile').Value := TxtFile;
      Parameters.ParamByName('TableName').Value := TableName;
      Parameters.ParamByName('TColumns').Value := Columns;
      Parameters.ParamByName('KeyCol').Value := Trim(KeyCol);
      Parameters.ParamByName('Del_Cols').Value := Trim(Del_Cols);
      Parameters.ParamByName('Delimiter').Value := Delimiter;
      Parameters.ParamByName('UserName').Value := Trim(DBUserName);
      Parameters.ParamByName('PassWord').Value := Trim(DBPassword);
      ExecSQL;
      Close;
      Result := True;
    finally
      Free;
    end;
    }

     with TADOStoredProc.Create(nil) do
     try
       Connection := _AdoCon;
       CommandTimeout := 0;
       ProcedureName := 'sp_Text_To_Sql_Bulk;1';
       Parameters.CreateParameter('@RETURN_VALUE', ftString, pdReturnValue, 50, 0);
       Parameters.CreateParameter('@TxtFile',ftString,pdInput,500,TxtFile);
       Parameters.CreateParameter('@TableName',ftString,pdInput,200,TableName);
       Parameters.CreateParameter('@TColumns',ftString,pdInput,8000,Columns);
       Parameters.CreateParameter('@KeyCol',ftString,pdInput,200,Trim(KeyCol));
       Parameters.CreateParameter('@Del_Cols',ftString,pdInput,200,Trim(Del_Cols));
       Parameters.CreateParameter('@Delimiter',ftString,pdInput,20,Delimiter);
       Parameters.CreateParameter('@UserName',ftString,pdInput,50,Trim(DBUserName));
       Parameters.CreateParameter('@PassWord',ftString,pdInput,50,Trim(DBPassword));
       Parameters.CreateParameter('@ErrMsg', ftstring, pdOutput, 8000, ErrMsg);
       try
         ExecProc;
       except
         ON E:Exception do
         begin
          ErrMsg := '导入数据出错：'+E.Message;
          Result := False;
         end;
       end;
       if Parameters.ParamByName('@RETURN_VALUE').Value >0 then
       begin
         ErrMsg := VarToStr(Parameters.ParamByName('@ErrMsg').Value);
         Result := False;
       end;
     finally
       Free;
     end;

  except
    on E: Exception do
    begin
      ErrMsg := E.Message;
      Result := False;
      Exit;
    end;
  end;
end;

//数据集导出到Text文件，供BCP导入用，按10000行拆分成多个文件
function ExtDataSet_To_Text_Ex(var Gio: TIOer;      //日志
                               DataSet: TDataSet;   //待导出的数据集
                               FilePath: string;    //导出文件路径
                               FileName: string;    //导出文件名，不带扩展名
                               DataName: string;    //数据集名称
                               var OutFileNames: WideString;  //导出的文件列表
                               var _DataCount: integer;       //数据行数
                               const Delimiter: string = '_#$_'  //字段分隔符
                               ): Boolean;
var
  FText: Cardinal;
  aFilePath, FldStr, RosStr, TxtFile: string;
  aIndex, i, aRow: Integer;
  Is_FileClose: Boolean;
const
  //单个导出文件的记录函数，超过自动分文件
  Max_RecordCount: Integer = 30000;
begin
  Result := False;
  Is_FileClose := True;
  _DataCount := 0;
  if not DataSet.Active or (DataSet.IsEmpty) then Exit;
  if RightStr(FilePath, 1) <> '\' then
    aFilePath := FilePath + '\'
  else
    aFilePath := FilePath;
  //目录不存在则创建
  if not DirectoryExists(aFilePath) then
    ForceDirectories(aFilePath);
  OutFileNames := '';
  aIndex := 1;
  //WriteTxt(Format('开始导出“%s”(%d)', [DataName, aIndex]));
  try
    DataSet.DisableControls;
    //DataSet.First;
    aRow := 1;
    //创建文件
    TxtFile := aFilePath + FileName + '_' + IntToStr(aIndex) + '.kdf';
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
            FldStr := DataSet.Fields[i].AsString;
        end;

        if (i = 0)and(RosStr = '') then
          RosStr := FldStr
        else
          RosStr := RosStr + Delimiter + FldStr;
      end;
      RosStr := StringReplace(RosStr, #13#10, ' ', [rfReplaceAll]);
      RosStr := StringReplace(RosStr, #13, ' ', [rfReplaceAll]);
      RosStr := RosStr + #13#10;
    
      FileWrite(FText, PansiChar(RosStr)^, Length(RosStr));
      //数据分文件
      if (aRow mod Max_RecordCount = 0) then
      begin
        //WriteTxt(Format('完成导出“%s”(%d)', [DataName, aIndex-1]));
        FileClose(FText);
        Is_FileClose := True;
      end;
      DataSet.Next;

      if Is_FileClose and not DataSet.Eof then
      begin
        TxtFile := aFilePath + FileName + '_' + IntToStr(aIndex) + '.kdf';
        Inc(aIndex);
        if OutFileNames = '' then
          OutFileNames := ExtractFileName(TxtFile)
        else
          OutFileNames := OutFileNames + ',' + ExtractFileName(TxtFile);
        FText := FileCreate(TxtFile);
        FileSeek(FText, 0, 0);
        Is_FileClose := False;
        //WriteTxt(Format('开始导出“%s”(%d)', [DataName, aIndex-1]));
      end;
      Inc(aRow);
    end;
    _DataCount := aRow - 1;
    //WriteTxt(Format('完成导出“%s”(%d)', [DataName, aIndex-1]));
    Result := True;
  finally
    if not Is_FileClose then FileClose(FText);
    DataSet.EnableControls;
  end;
end;

//数据集导出到Txt文件，供BCP导入用
function ExtDataSet_To_Text(DataSet: TDataSet;  TxtFile: string; const Delimiter: string = '_#$_'): Boolean;
var
  FText: Cardinal;
  FldStr, RosStr: string;
  i: Integer;
begin
  Result := False;
  if not DataSet.Active then Exit;
  //目录不存在则创建
  if not DirectoryExists(ExtractFilePath(TxtFile)) then
    ForceDirectories(ExtractFilePath(TxtFile));
  FText := FileCreate(TxtFile);
  FileSeek(FText, 0, 0);
  try
    DataSet.DisableControls;
    DataSet.First;
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
            FldStr := DataSet.Fields[i].AsString;
        end;

        if RosStr = '' then
          RosStr := FldStr
        else
          RosStr := RosStr + Delimiter + FldStr;
      end;
      RosStr := RosStr + #13#10;
      FileWrite(FText, PansiChar(RosStr)^, Length(RosStr));
      DataSet.Next;
    end;
    Result := True;
  finally
    DataSet.EnableControls;
    FileClose(FText);
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
  MemReadStream := TMemoryStream.Create;
  memDestStream := TMemoryStream.Create;
  try
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
    MemReadStream.Free;
    memDestStream.Free;
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
  Data := VarArrayLock(Result);
  try
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
    MemReadStream.Free;
    memDestStream.Free;
  end;
end;

//从 OleVariant 解压缩到文件
function UnZip_FileToOleVariant(FileStream: OleVariant; FileName: string): Boolean;
var
  MemDestStream, SourceFileStream: TMemoryStream;
  UnZipStream: TDecompressionStream;
  ZipCount: integer;
  Buffer: PChar;
  S: string;
begin 
  SourceFileStream := TMemoryStream.Create;
  memDestStream := TMemoryStream.Create;
  try
    SourceFileStream := OleVariantToMemoryStream(FileStream);
    SourceFileStream.Position := 0;
    //解密
    SetLength(s, 12);
    SourceFileStream.ReadBuffer(s[1], 12);
    SourceFileStream.Position := 0;
    if s = FileFlag + #0 then begin
      SourceFileStream.Position := 12;
    end
    else raise Exception.Create('错误的文件格式');

    //获得原始流大小
    SourceFileStream.ReadBuffer(ZipCount, SizeOf(ZipCount));
    GetMem(Buffer, ZipCount);
    //解压
    UnZipStream := TDecompressionStream.Create(SourceFileStream);
    try
      UnZipStream.ReadBuffer(Buffer^, ZipCount);
      memDestStream.WriteBuffer(Buffer^, ZipCount);
      MemDestStream.SaveToFile(FileName);
    finally
      FreeMem(Buffer);
      UnZipStream.Free;
    end;
  finally
    memDestStream.Free;
    SourceFileStream.Free;
  end;
end;

//解压缩 OleVariant
function UnZip_OleVariant(Data: OleVariant): OleVariant;
var
  MemDestStream, SourceFileStream: TMemoryStream;
  UnZipStream: TDecompressionStream;
  ZipCount: integer;
  Buffer: PChar;
  S: string;
begin
  SourceFileStream := TMemoryStream.Create;
  memDestStream := TMemoryStream.Create;
  try
    SourceFileStream := OleVariantToMemoryStream(Data);
    SourceFileStream.Position := 0;
    //解密
    SetLength(s, 12);
    SourceFileStream.ReadBuffer(s[1], 12);
    SourceFileStream.Position := 0;
    if s = FileFlag + #0 then begin
      SourceFileStream.Position := 12;
    end
    else raise Exception.Create('错误的文件格式');

    //获得原始流大小
    SourceFileStream.ReadBuffer(ZipCount, SizeOf(ZipCount));
    GetMem(Buffer, ZipCount);
    //解压
    UnZipStream := TDecompressionStream.Create(SourceFileStream);
    try
      UnZipStream.ReadBuffer(Buffer^, ZipCount);
      memDestStream.WriteBuffer(Buffer^, ZipCount);
      Result := MemoryStreamToOleVariant(MemDestStream);
    finally
      FreeMem(Buffer);
      UnZipStream.Free;
    end;
  finally
    memDestStream.Free;
    SourceFileStream.Free;
  end;
end;

//获取文件版本信息  20110507
function GetVersionString(FileName: string): string;
var
    VerInfoSize: DWORD;
    VerInfo: Pointer;
    VerValueSize: DWORD;
    Dummy: DWORD;
    VerValue: PVSFixedFileInfo;
begin
    Result := '';
    VerInfoSize := GetFileVersionInfoSize(PChar(FileName), Dummy);
    if VerInfoSize = 0 then Exit;
    GetMem(VerInfo, VerInfoSize);
    GetFileVersionInfo(PChar(FileName), 0, VerInfoSize, VerInfo);
    VerQueryValue(VerInfo, '\', Pointer(VerValue), VerValueSize);
    Result := IntToStr(VerValue^.dwFileVersionMS shr 16) + '.' +
    IntToStr(VerValue^.dwFileVersionMS and $FFFF) + '.' +
    IntToStr(VerValue^.dwFileVersionLS shr 16) + '.' +
    IntToStr(VerValue^.dwFileVersionLS and $FFFF);
    FreeMem(VerInfo);
end;

//写入txt文档
procedure WriteTxt(WriteStr: string);
  procedure NewTxt(FileName:String);
  var
  F : Textfile;
  Begin
    try
      if fileExists(FileName) then exit;
      AssignFile(F, FileName);
      ReWrite(F);
      Writeln(F, '>');
    finally
      Closefile(F);
    end;
  end;
  procedure AppendTxt(Str:String;FileName:String); 
  var
  F:Textfile;
  Begin
    try
      AssignFile(F, FileName);
      Append(F);
      Str := DatetimeToStr(Now())+' : '+Str;
      Writeln(F, Str);
    finally
      Closefile(F);
    end;
  End;

var FilePath,DirectoryPath,DirectoryPath2 : string;
begin
  DirectoryPath := ExTractFilePath(Application.ExeName)+'Pos_CliFile\';
  DirectoryPath2 := ExTractFilePath(Application.ExeName)+'Pos_CliFile\CliLog\';
  if not DirectoryExists(ExTractFilePath(DirectoryPath)) then
    CreateDir(DirectoryPath);
  if not DirectoryExists(ExTractFilePath(DirectoryPath2)) then
    CreateDir(DirectoryPath2);

  FilePath := DirectoryPath+DateToStr(Now())+'.txt';
  if not FileExists(FilePath) then NewTxt(FilePath);
  if  FileExists(FilePath) then AppendTxt(WriteStr,FilePath);
end;


procedure ShowMsg(Handle: HWnd; AMessage: string;
  AStr: array of const);
var
  sMessage: string;
   windowList:Pointer;
begin
  //sMessage := Format(AMessage, Astr);      //避免输入%号时提示出错
  //G_Runinfo.FErrorStr := sMessage;
  //Beep;
  sMessage := AMessage;
  MessageBeep(900);
  WindowList := DisableTaskWindows(0);
  MessageBox(Handle, PChar(sMessage) , pchar(HintTitle), M_Hint);
  EnableTaskWindows(Windowlist);  
end;

procedure ShowError(Handle: HWnd; AMessage: string;
  AStr: array of const);
var
  sMessage: string;
    windowList:Pointer;
begin
  sMessage := Format(AMessage, Astr);
  MessageBeep(800);
  WindowList := DisableTaskWindows(0);
  MessageBox(Handle, PChar(sMessage), pchar(ErrorTitle), M_Error);
  EnableTaskWindows(Windowlist);
end;

function ShowYesNo(Handle: HWnd; AMessage: string;
  AStr: array of const): Cardinal;
var
  sMessage: string;
  windowList:Pointer;
begin
  sMessage := Format(AMessage, Astr);
  //G_Runinfo.FErrorStr := sMessage;
  //20090204 Tang
  //if G_ParInfo.chk_Use_NEC_POS then
 // begin
  //  Result := QS_MessageYesNo(sMessage, G_ParInfo.chk_Use_NEC_POS);
  //  Exit;
  //end;

  //Beep;
  MessageBeep(700);
  WindowList := DisableTaskWindows(0);
  Result := MessageBox(Handle, PChar(sMessage), pchar(AskTitle), M_YesNo or MB_DEFBUTTON1 or MB_ICONQUESTION);
  EnableTaskWindows(Windowlist);  
end;

function ShowYewNoCancel(Handle: HWnd; AMessage: string;
  AStr: array of const): Cardinal;
var
  sMessage: string;
  windowList:Pointer;
begin
  sMessage := Format(AMessage, Astr);
 // G_Runinfo.FErrorStr := sMessage;
  //20090204 Tang
  //if G_ParInfo.chk_Use_NEC_POS then
  //begin
  //  Result := QS_MessageYesNoCancel(sMessage, G_ParInfo.chk_Use_NEC_POS);
  //  Exit;
  //end;
  //Beep;
  MessageBeep(600);
  WindowList := DisableTaskWindows(0);
  Result := MessageBox(Handle, PChar(sMessage), pchar(AskTitle), M_YewNoCancel or MB_ICONQUESTION);
  EnableTaskWindows(Windowlist);
end;

procedure ShowWarn(Handle: HWnd; AMessage: string;
  AStr: array of const);
//var
//  sMessage: string;
//  windowList:Pointer;
begin
 { sMessage := Format(AMessage, Astr);
  //G_Runinfo.FErrorStr := sMessage;
 // Beep;
  MessageBeep(500);

  if not storage_b then
  begin
     WindowList := DisableTaskWindows(0);
     MessageBox(Handle, PChar(sMessage), pchar(WarnTitle), M_Warn);
     EnableTaskWindows(Windowlist);
  end
  else
  begin
    try
      application.CreateForm(tformwarn,formwarn);
      formwarn.Caption := warntitle;
      formwarn.Label1.Caption := sMessage;
      formwarn.showmodal;
    finally
      formwarn.free;
    end;
  end;}
end;

//执行SQL脚本(SQL适用)
function Exec_SqlStrs(ServerName, DataBaseName, UserName, password: string; Sql_Liststr: TStrings; var ErrMsg: string; const Use_Trans: Boolean = False): Boolean;
var
  TemList: TStrings;
  i: Integer;
  _Connection: OleVariant;
  _DataSet: OleVariant;
begin
  Result := False;
  TemList := TStringList.Create;
  try
    _Connection := CreateOleObject('ADODB.Connection');
    _Connection.CursorLocation := adUseServer;
    _Connection.IsolationLevel := adXactCursorStability;
    _Connection.Mode := adModeReadWrite;
    _Connection.CommandTimeout := 0;
    _Connection.Provider := 'SQLOLEDB.1';
    _Connection.ConnectionString := 'Provider=SQLOLEDB.1;Persist Security Info=False'
      + ';Data Source='+ ServerName
      + ';Initial Catalog=' + DataBaseName
      + ';User ID=' + UserName
      + ';Password=' + password;
    _Connection.open;
    _DataSet := CreateOleObject('ADODB.Command');
    _DataSet.CommandType := adCmdText;
    _DataSet.CommandTimeout := 0;
    _DataSet.ActiveConnection := _Connection;
    try
      if Use_Trans then
        _Connection.BeginTrans;
      TemList.Clear;
      for i := 0 to Sql_Liststr.Count - 1 do
      begin
        if SameText('GO', Trim(Sql_Liststr[i])) then
        begin
          if (TemList.Count > 0)and(Trim(TemList.Text) <> '') then
          begin
            //_DataSet.Close;
            _DataSet.commandtext := TemList.Text;
            _DataSet.Execute;
          end;
          TemList.Clear;
          Continue;
        end;
        TemList.Add(Sql_Liststr[i]);
      end;
      if (TemList.Count > 0)and(Trim(TemList.Text) <> '') then
      begin
        //_DataSet.Close;
        _DataSet.commandtext := TemList.Text;
        _DataSet.Execute;
        TemList.Clear;
      end;
      if Use_Trans then
        _Connection.CommitTrans;
      Result := True;
    except
      on E: Exception do
      begin
        if Use_Trans then
          _Connection.RollbackTrans;
        ErrMsg := '脚本执行错误：' + E.Message + #13#10 + TemList.Text;
        Result := False;
        Exit;
      end;
    end;
  finally
    if not VarIsEmpty(_DataSet) then _DataSet := Unassigned;
    if not VarIsEmpty(_Connection) then
    begin
      if _Connection.State <> adStateClosed then _Connection.Close;
      _Connection := Unassigned;
    end;
    TemList.Free;
  end;
end;

//执行SQL脚本文件
function Exec_SqlFile(ServerName, DataBaseName, UserName, password, FileName: string; var ErrMsg: string): Boolean;
var
  FileListstr: TStrings;  //文件内容
  TemList: TStrings;
  i,LoginType: Integer;
  _Connection: OleVariant;
  _DataSet: OleVariant;
  ConnStr :string;
  IniFile: TIniFile;
begin
  Result := False;
  if not FileExists(FileName) then
  begin
    ErrMsg := Format('文件%s不存在', [FileName]);
    Exit;
  end;
  IniFile:= TINIFile.Create(ExtractFilePath(paramstr(0)) + 'POSSetup.ini');
  try
    LoginType := IniFile.ReadInteger('POSClient', 'LoginType',0);
  finally
    IniFile.Free;
  end;
  FileListstr := TStringList.Create;
  TemList := TStringList.Create;
  try
    _Connection := CreateOleObject('ADODB.Connection');
    _Connection.CursorLocation := adUseServer;
    _Connection.IsolationLevel := adXactCursorStability;
    _Connection.Mode := adModeReadWrite;
    _Connection.CommandTimeout := 0;
    _Connection.Provider := 'SQLOLEDB.1';
    if LoginType=0 then
     ConnStr := 'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security Info=False;Data Source= '+ ServerName
                  + ';Initial Catalog=' + DataBaseName
    else
      _Connection.ConnectionString := 'Provider=SQLOLEDB.1;Persist Security Info=False'
      + ';Data Source='+ ServerName
      + ';Initial Catalog=' + DataBaseName
      + ';User ID=' + UserName
      + ';Password=' + password;
    _Connection.ConnectionString := ConnStr;

    _Connection.open;
    _DataSet := CreateOleObject('ADODB.Command');
    _DataSet.CommandType := adCmdText;
    _DataSet.CommandTimeout := 0;
    _DataSet.ActiveConnection := _Connection;
    try
      _Connection.BeginTrans;
      //加载文件
      FileListstr.LoadFromFile(FileName);
      TemList.Clear;
      for i := 0 to FileListstr.Count - 1 do
      begin
        if SameText('GO', Trim(FileListstr[i])) then
        begin
          if (TemList.Count > 0)and(Trim(TemList.Text) <> '') then
          begin
            //_DataSet.Close;
            _DataSet.commandtext := TemList.Text;
            _DataSet.Execute;
          end;
          TemList.Clear;
          Continue;
        end;
        TemList.Add(FileListstr[i]);
      end;
      if (TemList.Count > 0)and(Trim(TemList.Text) <> '') then
      begin
        //_DataSet.Close;
        _DataSet.commandtext := TemList.Text;
        _DataSet.Execute;
        TemList.Clear;
      end;
      _Connection.CommitTrans;
      Result := True;
    except
      on E: Exception do
      begin
        _Connection.RollbackTrans;
        ErrMsg := '脚本执行错误：' + E.Message + #13#10 + TemList.Text;
        Result := False;
        Exit;
      end;
    end;
  finally
    if not VarIsEmpty(_DataSet) then _DataSet := Unassigned;
    if not VarIsEmpty(_Connection) then
    begin
      if _Connection.State <> adStateClosed then _Connection.Close;
      _Connection := Unassigned;
    end;
    FileListstr.Free;
    TemList.Free;
  end;
end;

//取得尺码在组中的序号
function Get_SizeGroupIndex(_AdoCon: TADOConnection; StyleID, SizeID: string): Integer;
var
  _TmpQuery: TADOQuery;
begin
  _TmpQuery := TADOQuery.Create(nil);
  try
    _TmpQuery.Connection := _AdoCon;
    _TmpQuery.CommandTimeout := 0;
    Result := -1;
    _TmpQuery.Close;
    _TmpQuery.SQL.Text := 'SELECT A.FSEQ '#13#10 +
      'FROM ct_bas_sizegroupentry A(NOLOCK) '#13#10 +
      '  JOIN T_BD_Material B(NOLOCK) ON B.CFSIZEGROUPID = A.FPARENTID '#13#10 +
      'WHERE B.FID = :StyleID '#13#10 +
      '  AND A.CFSIZEID = :SizeID';
    _TmpQuery.Parameters.ParamByName('StyleID').Value := StyleID;
    _TmpQuery.Parameters.ParamByName('SizeID').Value  := SizeID;
    _TmpQuery.Open;
    if not _TmpQuery.IsEmpty then
      Result := _TmpQuery.FieldByName('FSEQ').AsInteger;
  finally
    if _TmpQuery.Active then _TmpQuery.Close;
    _TmpQuery.Free;
  end;
end;

//通过尺码组序号取得尺码ID
function Get_SizeID_GroupIndex(_AdoCon: TADOConnection; StyleID: string; SizeIndex: Integer): string;
var
  _TmpQuery: TADOQuery;
begin
  _TmpQuery := TADOQuery.Create(nil);
  try
    _TmpQuery.Connection := _AdoCon;
    _TmpQuery.CommandTimeout := 0;
    Result := '';
    _TmpQuery.Close;
    _TmpQuery.SQL.Text := 'SELECT A.CFSIZEID '#13#10 +
      'FROM ct_bas_sizegroupentry A(NOLOCK) '#13#10 +
      '  JOIN T_BD_Material B(NOLOCK) ON B.CFSIZEGROUPID = A.FPARENTID '#13#10 +
      'WHERE B.FID = :StyleID '#13#10 +
      '  AND A.FSEQ = :SizeIndex';
    _TmpQuery.Parameters.ParamByName('StyleID').Value := StyleID;
    _TmpQuery.Parameters.ParamByName('SizeIndex').Value := SizeIndex;
    _TmpQuery.Open;
    if not _TmpQuery.IsEmpty then
      Result := _TmpQuery.FieldByName('CFSIZEID').AsString;
  finally
    if _TmpQuery.Active then _TmpQuery.Close;
    _TmpQuery.Free;
  end;
end;
//判断是否存在字段
function is_fieldByName(cds:TadoDataSet;fieldName:String):Boolean;
var i:Integer;
begin
  Result:=False;
  if cds.FieldList.Count=0 then Exit;
  for i:=0 to cds.FieldList.Count-1 do
  begin
    if UpperCase(Trim(fieldName)) = UpperCase(Trim(cds.FieldList[i].FieldName)) then
    begin
      Result:=True;
      Exit;
    end;
  end;

end;
//判断是否存在字段
function is_fieldByName(cds:TClientDataSet;fieldName:String):Boolean;
var i:Integer;
begin
  Result:=False;
  if cds.FieldList.Count=0 then Exit;
  for i:=0 to cds.FieldList.Count-1 do
  begin
    if UpperCase(Trim(fieldName)) = UpperCase(Trim(cds.FieldList[i].FieldName)) then
    begin
      Result:=True;
      Exit;
    end;
  end;
end;

function SbctoDbc(s:string):string;
var
  nlength,i:integer;
  str,ctmp,c1,c2:string;
  {
 在windows中，中文和全角字符都占两个字节，
 并且使用了ascii　chart  2  (codes  128 - 255 )。
全角字符的第一个字节总是被置为163，
 而第二个字节则是相同半角字符码加上128（不包括空格）。
 如半角a为65，则全角a则是163（第一个字节）、 193 （第二个字节， 128 + 65 ）。
 而对于中文来讲，它的第一个字节被置为大于163，（
 如 ' 阿 ' 为: 176   162 ）,我们可以在检测到中文时不进行转换。
} 
begin
  nlength := length(s);
   if  (nlength = 0 ) then
    exit;
  str := '' ;
  setlength(ctmp,nlength + 1 );
  ctmp := s;
  i := 1 ;
   while  (i <= nlength)  do 
  begin
    c1 := ctmp[i];
    c2 := ctmp[i + 1 ];
     if  (c1 = #163 ) then   // 如果是全角字符 
     begin
      str := str + chr(ord(c2[ 1 ]) - 128 );
      inc(i, 2 );
       continue ;
    end;
     if  (c1 > #163 ) then   // 如果是汉字
     begin
      str := str + c1;
      str := str + c2;
      inc(i, 2 );
       continue ;
    end;
     if  (c1 = #161 ) and (c2 = #161 ) then   // 如果是全角空格 
     begin
      str := str + '   ' ;
      inc(i, 2 );
       continue ;
    end; 
    str := str + c1;
    inc(i);
  end;
  result := str;
end;
function LocalIP :string;
type
  TaPInAddr   =   array   [0..10]   of   PInAddr;
  PaPInAddr   =   ^TaPInAddr;
var
  phe : PHostEnt;
  pptr : PaPInAddr;
  Buffer :array   [0..63]   of   char;
  I :Integer;
  GInitData : TWSADATA;
begin
    WSAStartup($101,   GInitData);
    Result   :=   ' ';
    GetHostName(Buffer,   SizeOf(Buffer));
    phe   :=GetHostByName(buffer);
    if   phe   =   nil   then   Exit;
    pptr   :=   PaPInAddr(Phe^.h_addr_list);
    I   :=   0;
    while   pptr^[I]   <>   nil   do   begin
        if   i=0
        then   result:=StrPas(inet_ntoa(pptr^[I]^))
        else   result:=result+ ', '+StrPas(inet_ntoa(pptr^[I]^));
        Inc(I);
    end;
    WSACleanup;
end;
function FindRecord3(cdsFind: TClientDataSet;StrFieldName,StrFieldName1,StrFieldName2,strfieldVal,strfieldVal1,strfieldVal2 : string;iflag :integer): boolean;
begin
  result := false;
  cdsFind.First;
  if iflag=0 then  //先转为大写字母再比较
  begin
    while not cdsFind.Eof do
    begin
     if  (uppercase(cdsFind.FieldByName(StrFieldName).AsString) =uppercase(strfieldVal))
       and (uppercase(cdsFind.FieldByName(StrFieldName1).AsString) =uppercase(strfieldVal1))
       and (uppercase(cdsFind.FieldByName(StrFieldName2).AsString) =uppercase(strfieldVal2)) then
     begin
       Result := true;
       break;
     end;
      cdsFind.Next;
    end;
  end;
  if iflag=1 then
  begin
    while not cdsFind.Eof do
    begin
     if  ((cdsFind.FieldByName(StrFieldName).AsString) =(strfieldVal))
       and ((cdsFind.FieldByName(StrFieldName1).AsString) =(strfieldVal1))
       and ((cdsFind.FieldByName(StrFieldName2).AsString) =(strfieldVal2)) then
     begin
       Result := true;
       break;
     end;
      cdsFind.Next;
    end;
  end;
end;
function  FindRecord1(cdsFind: TClientDataSet;StrFieldName,strfieldVal:string;iflag : integer): Boolean;
begin
  result := false;
  cdsFind.First;
  if iflag=0 then  //先转为大写字母再比较
  begin
    while not cdsFind.Eof do
    begin
     if  (uppercase(cdsFind.FieldByName(StrFieldName).AsString) =uppercase(strfieldVal)) then
     begin
       Result := true;
       break;
     end;
      cdsFind.Next;
    end;
  end;
  if iflag=1 then
  begin
    while not cdsFind.Eof do
    begin
     if  (cdsFind.FieldByName(StrFieldName).AsString =strfieldVal)then
     begin
       Result := true;
       break;
     end;
      cdsFind.Next;
    end;
  end;

end;
function  FindRecord2(cdsFind: TClientDataSet;StrFieldName,StrFieldName1,strfieldVal,strfieldVal1:string;iflag : integer): Boolean;
begin
  result := false;
  cdsFind.First;
  if iflag=0 then  //先转为大写字母再比较
  begin
    while not cdsFind.Eof do
    begin
     if  (uppercase(cdsFind.FieldByName(StrFieldName).AsString) =uppercase(strfieldVal))
       and (uppercase(cdsFind.FieldByName(StrFieldName1).AsString) =uppercase(strfieldVal1)) then
     begin
       Result := true;
       break;
     end;
      cdsFind.Next;
    end;
  end;
  if iflag=1 then
  begin
    while not cdsFind.Eof do
    begin
     if  ((cdsFind.FieldByName(StrFieldName).AsString) =(strfieldVal))
       and ((cdsFind.FieldByName(StrFieldName1).AsString) =(strfieldVal1)) then
     begin
       Result := true;
       break;
     end;
      cdsFind.Next;
    end;
  end;
end;
function  FindADORecord1(qryFind: TADOQuery;StrFieldName,strfieldVal:string;iflag : integer): Boolean;
begin
  result := false;
  qryFind.First;
  if iflag=0 then  //先转为大写字母再比较
  begin
    while not qryFind.Eof do
    begin
     if  (uppercase(qryFind.FieldByName(StrFieldName).AsString) =uppercase(strfieldVal)) then
     begin
       Result := true;
       break;
     end;
      qryFind.Next;
    end;
  end;
  if iflag=1 then
  begin
    while not qryFind.Eof do
    begin
     if  (qryFind.FieldByName(StrFieldName).AsString =strfieldVal)then
     begin
       Result := true;
       break;
     end;
      qryFind.Next;
    end;
  end;
end;
end.
