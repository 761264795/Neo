unit uReportPub_R;

interface
uses
  Windows, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, 
  OleCtrls, ADODB,
  CCubeX4_TLB, 
  IniFiles, ShellAPI,
  DBClient,comobj,Variants,
  cxGridCustomTableView, cxGridDBTableView,adoint,ZLib,ADODB_TLB,uConnSystem_R
  ,shlobj, ExtCtrls, Gauges,DBGridEh, XMLIntf, 
  XMLDoc,ActiveX,DBAccess, Ora,StrUtils;


  const
  FileFlag = 'YXSoftReport';
  EhSizeFieldname='SizeGroupID';//EHGRID尺码组字段名称
  G_MaterialCode='MaterialCode';//物料字段
  var softName,exe_name:string;   //软件名称,执行文件名
      isTryout,G_Debug,G_NotPing :Boolean;      //是否是正式版本
      tempXls:string;         //导出的临时Excel
  type
  TFldCalss = Class
    FieldName:   String;
    DisplayName: String;
  end;
  type
    mf_struct_t = record
    name: string;
    title: string;
    axis: TxDimAxis;
    formatcount:Integer;
    isAmount:Boolean;
  end;
  type modify_fields =array of mf_struct_t;

  function OpendataSrc(var orclQry:TADOQuery;CubeX:TContourCubeX;RepSQl,RePortName:string;modify_field:modify_fields; ADOCnt: TADOConnection;dataset:TDataSet;report_id:string=''):Boolean;
  procedure ExportCube(CubeX:TContourCubeX;Frm:TForm;
                         FileName: string; FileFormat: TxOlapReportType; FileType: string;isopen:Boolean;_XMLDOC:TXMLDocument);
  procedure setNullValue(CubeX:TContourCubeX);//把零值去除
  function  setFieldArray(report_id:string):modify_fields;  //设置字段数组
  function  isRepeatValue(Qry:TclientDataSet;fieldName:string):Boolean;//判断字段是否有重复值
  function  CheckReportCopyright(Report_id,Bt_name:string):Boolean;//报表权限
  function getIsPara(report_id,tp:string):Boolean;//判断报表是否有传参
  function getFieldchName(fieldname:string):string;
  function getConnString:string;
  procedure altercharset(fileName:string);
  function getity_id(tb_name:string):string;
  procedure ExportToExcel(filename:string;dataset:TDataSet;cxGrid:TcxGridDBTableView);
  procedure ExportToAccess(filename:string;dataset:TadoDataSet);
  function isPass(module_id:string;module_list_id:string):Boolean;
  function isMatPass(module_id:string):Boolean; //主界面权限
  function getParaRight(para:string):Boolean;
  function getIsChart(report_id:string):Boolean;//判断报表是否启用图表
  function getIsSizeCaption(report_id: string): Boolean; //判断报表是否动态显示列头
  procedure saveLog(msg:string);
  procedure ErrorLogin;
  function getFieldListSEQ:String;    //获取F_FIeldList序列号
  function getQuerySEQ:String;
  function getPeriodCount:Integer;     //获取k/3的财务期间是否超出三期

  var GroupOrderSQL:string;
      getDatacount:Integer;
      ds:Tadodataset; //交叉报表接服务端数据
      _SysType: Integer;  //系统类型 0:EAS 1:K/3
      userRoleArray:string;//用户角色组
      ClientRegInfo:string;//客户端注册码
      G_userid,G_userPswd:string;
      G_isMaterList:boolean=false;
      G_EasStandard:Boolean=False;
  function OleDataToText(const AData: OleVariant): string;
  //解压缩 OleVariant
  function UnZip_OleVariant(Data: OleVariant): OleVariant;
  //转换OLEVariant和TMemoryStream
  function OleVariantToMemoryStream(OV: OleVariant): TMemoryStream;
  //转换OLEVariant和TMemoryStream
  function MemoryStreamToOleVariant(Strm: TMemoryStream): OleVariant;
  function RecordsetFromXMLString(const XML: string): adoint._Recordset;
  procedure DBGridEhToExcel(ADBGridEh: TDBGridEh; MyCaption: string);
  function posExp(val,souString:string):Integer; //扩展系统POS方法,不区分大小写
  procedure SetSizeCaptionToExcel(filename,reportName:string;colCount:Integer;sizeMgr:boolean=false);//DBGRIDEH导出再设置网格尺码组
  function Get_ComputerName:string;//获取本机计算机名称
  procedure alterXml(_fileName:string;XMLDocument:TXMLDocument);
  //从 OleVariant 解压缩到文件
  function UnZip_FileToOleVariant(FileStream: OleVariant; FileName: string): Boolean;
  function getServerTxtData(var orclQry:TADOQuery;var _dataset:TADODataSet;FindSql:String;_reporttype:Shortint;var FindFile:string;isGroup:Boolean=False):Boolean;
  function DeleteDirectory(NowPath: string):Boolean; // 删除整个目录
  function getGuid:string;
  function Pub_ExtDataSetToText(
                               DataSet: TDataSet;   //待导出的数据集
                               FilePath: string;    //导出文件路径
                               FileName: string;    //导出文件名，不带扩展名
                               var OutFileNames: WideString;  //导出的文件列表
                               var _DataCount: integer;       //数据行数
                               var iniStr: WideString;  //导出的ini字段
                               reporttype:Shortint;     //报表类型
                               const Delimiter: string ='∽'  //字段分隔符
                               ): Boolean;
implementation
uses DMPublic_R,STPublic_R,uFormatcxGrid_R;

function getIniFieldList(Dataset:TDataSet;reporttype:Shortint):string;
var  temList:TStringList;
     i,colindex:Integer;
     row:string;
begin
  try
    Result:='';
    temList:=TStringList.Create;
    colindex:=0;
    for i:=0 to Dataset.FieldCount-1 do
    begin
      colindex:=colindex+1;
      row:='col'+inttostr(colindex)+'='+Dataset.Fields[i].FieldName+' ';
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
//数据集导出到Text文件，供BCP导入用，按100000000行拆分成多个文件
function Pub_ExtDataSetToText(
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
  b:Boolean;
  bk:TBookmarkStr;
const
  //单个导出文件的记录函数，超过自动分文件
  Max_RecordCount: Integer = 100000000;
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
    bk:=DataSet.Bookmark;
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
    if not DataSet.Bof then  DataSet.First;
    while not DataSet.Eof do
    begin
      RosStr := '';
      for i := 0 to DataSet.FieldCount - 1 do
      begin
        if DataSet.Fields[i].IsNull then
          FldStr := ' '
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
            FldStr := Trim(StringReplace(DataSet.Fields[i].AsString,'∽','@', [rfReplaceAll]));
        end;

        if (RosStr = '') then
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
    DataSet.Bookmark:=bk;
    DataSet.EnableControls;
    temList.Free;
  end;
end;


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
    if s = FileFlag then begin
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
//按分隔符取得字符串，例如  Get_String('A,B,C,D,E,F', 0) = 'A'
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
//按分隔符删除字符串，例如  Delete_String('A,B,C,D,E,F', 1) = 'B,C,D,E,F'
function Delete_String(aStr: string; aIndex: Integer; const Delimiter: Char = ','): string;
var
  TemList: TStrings;
begin
  Result := '';
  if aIndex < 0 then Exit;
  TemList := TStringList.Create;
  try
    TemList.Delimiter := Delimiter;
    TemList.DelimitedText := aStr;
    TemList.Delete(0);
    Result:=TemList.DelimitedText;
  finally
    TemList.Free;
  end;
end;
//获取服务器数据
function getServerTxtData(var orclQry:TADOQuery;var _dataset:TADODataSet;FindSql:String;_reporttype:Shortint;var FindFile:string;isGroup:Boolean=False):Boolean;
var _inistr,_errormsg,_userTag,_outFilename:WideString;
    _data: OleVariant;
    Filepath,FileName,_SQL,connStr,TxtFile:string;
    temList,txtList:TStringList;
    iniList:TStrings;
    ini:TIniFile;
    i,F_DataCount:Integer;
    FText:Cardinal;
    FOutFileNames: WideString;  //导出的文件列表
    timecount: integer;       //数据行数
    FiniStr: WideString;  //导出的ini字段
begin
  Result:=True;
  connStr:='Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+ExtractFilePath(Application.ExeName)+G_userinfo.UserNumber+'\CliTemp'
  +';Mode=Share Deny None;Persist Security Info=False; '
  +'Jet OLEDB:System database="";Jet OLEDB:Registry Path="";Jet OLEDB:Database Password="";'
  +'Jet OLEDB:Engine Type=96;Jet OLEDB:Database Locking Mode=0; '
  +'Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Global Bulk Transactions=1;'
  +'Jet OLEDB:New Database Password="";Jet OLEDB:Create System Database=False; '
  +'Jet OLEDB:Encrypt Database=False;Jet OLEDB:Don''''t Copy Locale on Compact=False;'
  +'Jet OLEDB:Compact Without Replica Repair=False;Jet OLEDB:SFP=False; ';
  FilePath:=ExtractFilePath(Application.ExeName)+G_userinfo.UserNumber+'\CliTemp\';
  if not DeleteDirectory(FilePath) then
  begin
    Gio_R.AddShow('CliTemp文件夹删除失败!');
    Result:=False;
    Abort;
  end;
  if not DirectoryExists(Filepath) then CreateDir(FilePath);
  _userTag:=getGuid;
  _outFilename :='';
  FileName:='kingdee';
  if Localnetwork then       //如果是局域网就直接查询数据库
  begin
    try
      temList:=TStringList.Create;
      try
//        orclQry.Close;
//        orclQry.SQL.Clear;
////        orclQry.FetchAll:=True;
//        orclQry.SQL.Add(FindSql);
//        if Pos(':kd_lbi',FindSql)>0 then
//        begin
//          orclQry.Parameters.ParamByName('kd_lbi').Direction := pdOutput;
//          orclQry.Parameters.ParamByName('kd_lbi').DataType:=ftCursor;
//        end;
//        orclQry.Open;
        getServerData(TadoDataSet(orclQry),FindSql);
        if orclQry.IsEmpty then
        Result:=False
        else
        begin
          Result:=True;
          if (_reporttype=2) or (isGroup) then     //如果是交叉报表或有二次分组就导出到TXT文件中
          begin
            if not Pub_ExtDataSetToText(orclQry,FilePath,FileName,FOutFileNames,F_DataCount,FiniStr,_reporttype)  then Exit;
            FindFile:=' Kingdee_1.txt';
            temList.Clear;
            temList.Add(FiniStr);
            temList.SaveToFile(FilePath+'schema.ini');
            if _reporttype=2 then
            begin
              _SQL:='select * from '+FindFile;
              with _dataset do
              begin
                if Active then Close;
                ConnectionString:=connStr;
                CommandText:=_SQL;
                Open;
              end;
            end;
          end;
        end;
        Exit;
      except
        on e:exception do
        begin
          ShowMsg('报表打开出错:'+e.Message);
          Result:=False;
        end;
      end;
    finally
      temList.Free;
    end;
  end;
  if not DMPub.openSocketConn     then Exit;
  DMPub.SocketConn.AppServer.getServerTxtData(FindSql,_inistr,_outFilename,_data,_errormsg,_userTag,_reporttype);   //从服务器获取数据
  if  _errormsg<>'' then
  begin
    DMPub.SocketConn.AppServer.DeleteTempDir(_userTag); //删除服务器临时文件夹
    ShowMsg('报表打开出错:'+_errormsg);
    Result:=False;
    Abort;
  end;
  if _outFilename='' then
  begin
    Result:=False;
    DMPub.SocketConn.AppServer.DeleteTempDir(_userTag); //删除服务器临时文件夹
    Exit;
  end;
  FileName:=Filepath+Get_String(_outFilename,0);
  while _outFilename<>'' do
  begin
    UnZip_FileToOleVariant(_data,FileName);
    _outFilename:=Delete_String(_outFilename,0);
    if _outFilename='' then Break;
    DMPub.SocketConn.AppServer.getServerTxtData(FindSql,_inistr,_outFilename,_data,_errormsg,_userTag,_reporttype);   //从服务器获取数据
    FileName:=Filepath+Get_String(_outFilename,0);
  end;
  DMPub.SocketConn.AppServer.DeleteTempDir(_userTag); //删除服务器临时文件夹
  try
    temList:=TStringList.Create;
    iniList:= TStringList.Create;
    temList.Add(_inistr);
    temList.SaveToFile(FilePath+'schema.ini');
    ini:=TIniFile.Create(FilePath+'schema.ini');
    ini.ReadSections(iniList);
    _SQL:='';
    if iniList.Count>0 then
    begin
      try   //合并TXT文件
        txtList:=TStringList.Create;
        TxtFile:=FilePath+inilist[0];
        FText := FileOpen(TxtFile, fmOpenWrite);
        FileSeek(FText, soFromBeginning, soFromEnd);
        if iniList.Count>1 then   //如果有两个以上文件就合并
        for i :=1 to iniList.Count-1 do
        begin
          txtList.Clear;
          txtList.LoadFromFile(FilePath+inilist[i]);
          txtList.Text:=Trim(txtList.Text);
          FileWrite(FText, PansiChar(txtList.Text)^, Length(txtList.Text));
        end;
      finally
        txtList.Free;
        FileClose(FText);
      end;
      if isGroup then
      begin
        FindFile:=' ['+inilist[0]+']';
      end
      else
      begin
        _SQL:='select * from  ['+inilist[0]+']';
        with _dataset do
        begin
          if Active then Close;
          ConnectionString:=connStr;
          CommandText:=_SQL;
          Open;
        end;
      end;
    end
    else
    begin
      Result:=False;
      Exit;
    end;
  finally
    temList.Free;
    ini.Free;
    iniList.Free;
  end;

end;
procedure alterXml(_fileName:string;XMLDocument:TXMLDocument);
var nodelist:IXMLNodeList;
    node,stNode:IXMLNode;
    s:string;
    i:Integer;
begin
  XMLDocument.LoadFromFile(_fileName);
  XMLDocument.Active:=True;
  //删除节点
  nodelist:= XMLDocument.DocumentElement.ChildNodes;
  node:=   nodelist[1];
  node.ChildNodes[0].Attributes['ss:ExpandedRowCount']:=null;
  //修改第一个错误样式
  nodelist:= XMLDocument.DocumentElement.ChildNodes;
  node:=nodelist[1];
  nodelist:=node.ChildNodes;
  node:=nodelist[0];
  for i:=0 to node.ChildNodes.Count-1 do
  begin
    stNode:=node.ChildNodes.Nodes[i];
    if stNode.NodeName='Row' then
    begin
      if  stNode.ChildNodes.Count>0 then
      begin
        stNode:= stNode.ChildNodes.Nodes[0];
        stNode.Attributes['ss:StyleID']:='iscs0';
        stNode.Attributes['ss:MergeDown']:=Null;
        stNode.Attributes['ss:MergeAcross']:=Null;
      end;
      Break;
    end;
  end;
  //保存
  XMLDocument.SaveToFile(_fileName);
  XMLDocument.Active:=False;
  Gio_R.AddShow('修改excel成功...');
end;


function getPeriodCount:Integer;     //获取k/3的财务期间是否超出三期
var FStartPeriod ,FPeriodCount,FFirstPeriod:Integer;
begin
  Result:=0;
  FStartPeriod:=0;
  FPeriodCount:=0;
  FFirstPeriod:=0;
  with DMPub.db_Qry do
  begin
    close;
    CommandText:='select isnull(FValue,1) as FValue  from t_systemprofile where fcategory=''gl'' and FKey=''StartPeriod''';
    open;
    if not IsEmpty then
    begin
      FStartPeriod:=FieldByname('FValue').AsInteger;
    end;
    close;
    CommandText:='select isnull(Min(FYear*100 + FPeriod),0) as FValue  FROM T_Balance';
    open;
    if not IsEmpty then
    begin
      FFirstPeriod :=FieldByname('FValue').AsInteger;
    end;
    close;
    CommandText:='SELECT  COUNT(FCount) as FValue FROM (SELECT DISTINCT(FYear*100 + FPeriod) FCount FROM T_Balance ) b ';
    open;
    if not IsEmpty then
    begin
      FPeriodCount :=FieldByname('FValue').AsInteger;
    end;
    if (FStartPeriod>1) and ((FFirstPeriod mod 100)=1)  then
    Begin
        FPeriodCount := FPeriodCount -1
    End;
    Result:=FPeriodCount;
  end;
end;
function Get_ComputerName:string;
var
  arr: array[0..MAX_COMPUTERNAME_LENGTH] of char;
  d: DWORD;
begin
  d := SizeOf(arr);
  GetComputerName(arr, d);
  Result:=arr;
end;
function getFieldListSEQ:String;
begin
  result:=getity_id('');
end;
function getQuerySEQ:String;
begin
  Result:=getity_id('');
end;
function posExp(val,souString:string):Integer;
begin
  Result:=Pos(UpperCase(val),UpperCase(souString));
end;

procedure ErrorLogin;
begin
  Application.CreateForm(TConnSystem,ConnSystem_R);
  ConnSystem_R.isErrorlogin:=True;
  ConnSystem_R.ShowModal;
  ConnSystem_R.Free;
end;
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
    if s = FileFlag then begin
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

function getIsSizeCaption(report_id: string): Boolean; //判断报表是否动态显示列头
begin
  result:=False;
  try
    with DMPub.db_Query do
    begin
      close;
      CommandText:='select is_Sizecaption from F_Report '
      +' where report_id='''+trim(report_id)+'''';
      open;
      if not IsEmpty then
      begin
        result:=(FieldByname('is_Sizecaption').AsInteger=1);
      end;
    end;
  finally
    DMPub.db_Query.Close;
  end;
end;
//保存系统日志
procedure saveLog(msg:string);
begin
  Gio_R.AddShow('-------------------------'+G_UserInfo.UserNumber+'('+G_UserInfo.username+')  '+datetimetostr(now)+'-----------------------------');
  Gio_R.AddShow(msg) ;
end;
{
  是否有参数权限
}
function getParaRight(para:string):Boolean;
begin
  result:=False;
  if (G_UserInfo.UserNumber='user') or (G_UserInfo.UserNumber='administrator') or (G_UserInfo.UserNumber='administrators') then
  begin
    Result:=True;
    Exit;
  end;
  if (_SysType=0) and (userRoleArray<>'') then
  begin
    with DMPub.qryTemp do
    begin
      Close;
      CommandText:='select '+para+' from ROLEFIELDPDM where user_id in ('+userRoleArray+')';
      Open;
      if not IsEmpty then
      begin
        if FieldByName(para).AsInteger=1 then
        begin
          Result:=True;
          Exit;
        end;
      end;
    end;
  end;
  with DMPub.qryTemp do
  begin
    Close;
    CommandText:='select '+para+' from FIELDPDM where user_id='''+trim(G_userinfo.UserFID)+'''';
    Open;
    if not IsEmpty then
    begin
      if FieldByName(para).AsInteger=1 then
      begin
        Result:=True;
      end;
    end;
  end;
end;
function isMatPass(module_id:string):Boolean; //主界面权限
begin
  Result:=true;
end;
{
   报表权限控制
}
function isPass(module_id:string;module_list_id:string):Boolean;
begin
  Result:=False;
  if (UpperCase(G_UserInfo.UserNumber)=UpperCase('user')) or (UpperCase(G_UserInfo.UserNumber)=UpperCase('administrator'))
  or (UpperCase(G_UserInfo.UserNumber)=UpperCase('administrators'))
  then
  begin
    Result:=True;
    Exit;
  end;
  if (_SysType=0) and (userRoleArray<>'') then
  begin
    with DMPub.db_Query do
    begin
      Close;
      CommandText:='select 1 from F_ROLEMODULE_LIST  where   isselect=1 and upper(MODULE_ID)='''+uppercase(trim(module_id))+''' and  upper(MODULE_List_ID)='''+uppercase(trim(module_list_id))+''' and user_id in ('+userRoleArray+')';
      Open;
      if not IsEmpty then
      begin
        Result:=True;
        Exit;
      end;
    end;
  end;
  with DMPub.db_Query do
  begin
    Close;
    CommandText:='select 1 from F_MODULE_LIST  where upper(MODULE_ID)='''+uppercase(trim(module_id))+''' and  upper(MODULE_List_ID)='''+uppercase(trim(module_list_id))+''' and user_id='''+trim(G_UserInfo.UserFID)+'''  and isselect=1';
    Open;
    if IsEmpty then
    begin
      ShowMsg('您无此功能模块权限,请与管理员联系!');
      Result:=False;
      Exit;
    end
    else
    begin
      Result:=True;
    end;
  end

end;
procedure ExportToAccess(filename:string;dataset:TadoDataSet);
var CreateAccess: OleVariant;
    qry,tmp:TADOQuery;
    fieldNM:string;
    col:Integer;
    function isTb(conn:TADOConnection;tbnm:string):boolean;
    var SL: TStrings;
        index:Integer;
        b:Boolean;
    begin
      result:=False;
      SL:= TStringList.Create;
      conn.GetTableNames(SL, False);
      b:=False;
      if SL.Count>0 then
      begin
        for index:=0 to SL.Count-1 do
        begin
          if (UpperCase(tbnm)=UpperCase(SL[index])) then
          begin
            b:=True;
            Break;
          end;
        end;
      end;
      if b then
      Result:=True;
    end;
begin
  try
    dataset.DisableControls;
    CreateAccess:=CreateOleObject('ADOX.Catalog');
    CreateAccess.Create('Provider=Microsoft.Jet.OLEDB.4.0;Jet OLEDB:Database password=cjx841022;Data Source='+filename);
    DMPub.adoacc.ConnectionString:='Provider=Microsoft.Jet.OLEDB.4.0;Data Source=' + filename + ';Persist Security Info=False;Jet OLEDB:Database password=cjx841022';
    qry:=TADOQuery.Create(nil);
    tmp:=TADOQuery.Create(nil);
    qry.Connection:=DMPub.adoacc;
    tmp.Connection:=DMPub.adoacc;
    if isTb(DMPub.adoacc,'xu') then
    begin
      qry.Close;
      qry.SQL.Clear;
      qry.SQL.Add(' drop table xu');
      qry.ExecSQL;
    end;
    qry.Close;
    qry.SQL.Clear;
    qry.SQL.Add('create table xu(id number null)');
    qry.ExecSQL;
    for col:=0 to dataset.FieldCount-1 do
    begin
      fieldNM:= dataset.Fields[col].FieldName;
      case  dataset.Fields[col].DataType   of
        ftString,ftWideString,ftMemo:
        begin
          qry.Close;
          qry.SQL.Clear;
          qry.SQL.Add('alter  table xu add column  '+fieldNM+' text(255) null');
          qry.ExecSQL;
        end;
        ftDate,ftDateTime,ftTime:
        begin
          qry.Close;
          qry.SQL.Clear;
          qry.SQL.Add('alter  table xu add column  '+fieldNM+' date null');
          qry.ExecSQL;
        end;
        ftInteger,ftAutoInc,ftSmallint,ftWord:
        begin
          qry.Close;
          qry.SQL.Clear;
          qry.SQL.Add('alter  table xu add column  '+fieldNM+' Number null');
          qry.ExecSQL;
        end;
        ftCurrency:
        begin
          qry.Close;
          qry.SQL.Clear;
          qry.SQL.Add('alter  table xu add column  '+fieldNM+' Currency null');
          qry.ExecSQL;
        end;
        ftFloat:
        begin
          qry.Close;
          qry.SQL.Clear;
          qry.SQL.Add('alter  table xu add column  '+fieldNM+' Number null');
          qry.ExecSQL;
        end;
        ftBCD:
        begin
          qry.Close;
          qry.SQL.Clear;
          qry.SQL.Add('alter  table xu add column  '+fieldNM+' Number null');
          qry.ExecSQL;
        end;
        ftBoolean:
        begin
          qry.Close;
          qry.SQL.Clear;
          qry.SQL.Add('alter  table xu add column  '+fieldNM+' Number null');
          qry.ExecSQL;
        end;
      end;
    end;
    if (not dataset.IsEmpty) then
    begin
      tmp.LockType := ltBatchOptimistic;
      tmp.Close;
      tmp.SQL.Clear;
      tmp.SQL.Add('select * from xu');
      tmp.Open;
      while not dataset.Eof do
      begin
        tmp.Append;
        for col:= 0 to dataset.FieldCount-1 do
        begin
          fieldNM:= dataset.Fields[col].FieldName;
          tmp.FieldByName(fieldNM).Value:=dataset.FieldByName(fieldNM).Value;
        end;
        dataset.Next;
      end;
      if tmp.State in Db.dsEditModes then tmp.Post;
      tmp.UpdateBatch();
    end;
  finally
    DMPub.adoacc.Connected:=False;
    dataset.EnableControls;
    qry.Free;
    tmp.Free;
  end;
end;
//---------------------导出数据到EXCEL------------------------------------------
procedure ExportToExcel(filename:string;dataset:TDataSet;cxGrid:TcxGridDBTableView);
var Excelobj,sheetobj,WorkBook:variant;   //必须加入comobj单元
    FileNames:string;
    col,row,dCol:Integer;
    nm:string;
begin
  nm:='';
  try
    Excelobj:=CreateOleObject('Excel.Application');
    sheetobj:=CreateOleObject('Excel.Sheet');
  except
    showMessage('您的机器里未安装Microsoft Excel !');
    Exit;
  end;
  try
    sheetobj:=Excelobj.workBooks.Add;
    workBook:=sheetobj.worksheets[1];
    dCol:=1;
    for col:=0 to dataset.FieldCount-1 do
    begin
      if cxGrid.GetColumnByFieldName(dataset.Fields[col].FieldName)<>nil then
      if cxGrid.GetColumnByFieldName(dataset.Fields[col].FieldName).Visible then
      begin
        nm:=cxGrid.GetColumnByFieldName(dataset.Fields[col].FieldName).Caption;
        workBook.cells[1,dCol]:=nm;
        dataset.First;
        try
          if dataset is TClientDataSet then
          TClientDataSet(dataset).DisableControls
          else
          TADOQuery(dataset).DisableControls ;
          while not dataset.Eof do
          begin
            workBook.cells[dataset.RecNo+1,dCol]:=dataset.Fields[col].AsString;
            dataset.Next;
          end;
        finally
          if dataset is TClientDataSet then
            TClientDataSet(dataset).EnableControls
          else
            TADOQuery(dataset).EnableControls;
        end;
        Application.ProcessMessages;
        Inc(dCol);
      end
    end;
    workBook.Range['A1','AX4000'].Select;           //选中4000行
    Excelobj.Selection.NumberFormatLocal := '@';   //设置为文本格式  wushaoshu 20091111
    WorkBook.saveas(filename);
  finally
    Excelobj.Quit;
    Excelobj:=Unassigned;
  end;
end;
{
  获取表主键ID值
  许志祥 2011-04-26晚 23:11
   tb_name:表名
}
function getity_id(tb_name:string):string;
var maxval:Integer;
begin
  Result := getGuid ;
end;
 //修改导出文件的字符集
procedure altercharset(fileName:string);
var f:TextFile;
   list:TstringList;
   rowval:string;
begin
  system.AssignFile(f,fileName);
  system.Reset(f);
  list:=TstringList.Create;
  while  not eof(f) do
  begin
    system.Readln(f,rowval);
    rowval:=StringReplace(rowval,'windows-936','GB2312',[rfReplaceAll]);
    list.Add(rowval);
  end;
  closefile(f);
  DeleteFile(fileName);
  list.SaveToFile(fileName);
  list.Free;
end;
function getConnString:string;
var str:string;
    ini: Tinifile;
    DB_Is_EncPwd:Boolean;
    ps:string;
begin
  result:='';
  ini:=Tinifile.Create(ExtractFilePath(paramstr(0))+'STOffice.ini');
  ps := Ini.ReadString('DBconfig', 'password','');
  try
    str:='Provider=SQLOLEDB.1;commandtimeout=0;Persist Security Info=True;User ID='+Ini.ReadString('DBconfig','UserName','')+';';
    str:=str+'password='+ps+';'
         + 'Initial Catalog='+Ini.ReadString('DBconfig','DataBaseName','')
         +';Data Source='+trim(Ini.ReadString('DBconfig','ServerName',''));
    result:=str;
  except
     application.MessageBox('数据库打开失败!      ','提示',64);
  end;
end;
function getFieldchName(fieldname:string):string;
begin
  result:=fieldname;
  try
    with DMPub.qryTemp do
    begin
      close;
      CommandText:='select fieldnamech as Field_New_Name_C '
      +'from datafieldlist  where upper(FieldName) ='''+uppercase(trim(fieldname))+''''
      +' union all '
      +'select fieldchname as Field_New_Name_C from f_Reportfieldlist where upper(FieldName)='''+uppercase(trim(fieldname))+'''';
      open;
      if not IsEmpty then
      begin
        result:=fieldbyname('Field_New_Name_C').AsString;
      end;
    end;
  finally
    //
  end;
end;
function getIsPara(report_id,tp:string):Boolean;//判断报表是否有存储过程
begin
  result:=False;
  try
    with DMPub.db_Query do
    begin
      close;
      CommandText:='select Proc_isPara,Base_isPara from F_Report '
      +' where report_id='''+trim(report_id)+'''';
      open;
      if not IsEmpty then
      begin
        if trim(tp)='proc' then
        result:=(FieldByname('Proc_isPara').AsInteger=1);
        if trim(tp)='sql' then
        result:=(FieldByname('Base_isPara').AsInteger=1);
      end;
    end;
  finally
    //
  end;
end;
function getIsChart(report_id:string):Boolean;//判断报表是否启用图表
begin
  result:=False;
  try
    with DMPub.db_Query do
    begin
      close;
      CommandText:='select is_chart from F_Report '
      +' where report_id='''+trim(report_id)+'''';
      open;
      if not IsEmpty then
      begin
        result:=(FieldByname('is_chart').AsInteger=1);
      end;
    end;
  finally
    //
  end;
end;
function  CheckReportCopyright(Report_id,Bt_name:string):Boolean;//报表权限
var Qry:Tadoquery;
begin
  result:=True;
end;
//-------设置字段数组 ----------------------------------------------------------
function  setFieldArray(report_id:string):modify_fields;
var
    FieldArray:modify_fields;
    i:Integer;
    sysPara:string;
begin
  result:=nil;
  with DMPub.db_Query do
  begin
    try
      Close;
      CommandText:='select * from F_ReportFieldList where upper(IsNull(user_id,''''))='
      +quotedstr(UpperCase(G_UserInfo.UserFID))+' and  Report_ID=''' + trim(Report_ID) + ''' order by lsh';
      Open;
      if IsEmpty then
      begin
        Close;
        CommandText:='select * from F_ReportFieldList where report_id='''+ trim(report_id)+''' and IsNull(user_id,'' '')='' ''  order by Lsh';
        open;
      end;

      if not IsEmpty then
      begin
        SetLength(FieldArray,RecordCount);
        i:=0;
        while not Eof do
        begin
          FieldArray[i].name:=trim(fieldbyname('FieldName').AsString);
          FieldArray[i].title:=trim(fieldbyname('FieldCHName').AsString);
          if fieldbyname('formatCount').IsNull then FieldArray[i].formatcount:=-1
          else
          FieldArray[i].formatcount:=fieldbyname('formatCount').AsInteger;
           //左边 上方 数值  预留
           sysPara:=uppercase(trim(FieldByname('SystemPara_Name').AsString));
          if not  (fieldbyname('isVisible').AsInteger=1) then
            FieldArray[i].axis:=xda_invisible
          else
          begin                 // xda_vertical  xda_horizontal, xda_outside
            FieldArray[i].isAmount:=False;
            if trim(fieldbyname('Position').AsString)='左边' then
                FieldArray[i].axis:=xda_vertical
            else
            if trim(fieldbyname('Position').AsString)='上方' then
                FieldArray[i].axis:=xda_horizontal
            else
            if trim(fieldbyname('Position').AsString)='预留' then
                FieldArray[i].axis:= xda_outside
            else
            FieldArray[i].isAmount:=True;
            if sysPara <> '' then
            begin
              if sysPara = uppercase('查看单价') then
              if  not getParaRight('isSeePrice')   then  FieldArray[i].axis:= xda_invisible;

              if sysPara = uppercase('查看金额') then
              if  not getParaRight('isSeeMoney')   then  FieldArray[i].axis:= xda_invisible;

              if sysPara = uppercase('查看成本') then
              if  not getParaRight('isSeeA')   then  FieldArray[i].axis:= xda_invisible;

              if sysPara = uppercase('预留') then
              if  not getParaRight('isSeeB')   then  FieldArray[i].axis:= xda_invisible;

            end;
          end;
          inc(i);
          Next;
        end;
      end;
    finally
      //
    end;
  end;
  if Length(FieldArray)>0 then result:=FieldArray;
end;
//-----------------把零值去除---------------------------------------------------
procedure setNullValue(CubeX:TContourCubeX);
var cell:IGridCell;
    r,c:Integer;
    re:Trect;
    cv:TCanvas;
begin
  cv:=TCanvas.Create;
  cv.Handle:=getDc(CubeX.Handle);
  for r:=0 to  CubeX.RowCount-1 do
  for c:=0 to  CubeX.ColCount-1 do
  begin
    cell:=CubeX.GetGridCell(c,r);
    if cell.DisplayText='0.00' then
    begin
      re.Left:=cell.Rect.Left+1;
      re.Top:=cell.Rect.Top+1;
      re.Right:=cell.Rect.Right-1;
      re.Bottom:=cell.Rect.Bottom-1;
      cv.FillRect(re);
    end
  end;
end;
//--------------导到EXCEL-------------------------------------------------------
procedure ExportCube(CubeX:TContourCubeX;Frm:TForm;
                    FileName: string; FileFormat: TxOlapReportType; FileType: string;isopen:Boolean;_XMLDOC:TXMLDocument);
var
  chart_file: string;
  chart_color: TColor;
  sg:TSaveDialog;
  procedure OpenDocument(f_name: string);
  begin
    ShellExecute(Frm.Handle,'Open',PChar(f_name),nil,nil,SW_SHOWNORMAL);
  end;
begin
  try
    sg:=TSaveDialog.Create(nil);
    sg.Filter:='所有文件';
    sg.FileName:=FileName+ '.' + FileType;
    if sg.Execute then
    begin
      if pos('.' + FileType,sg.FileName)=0 then
        FileName :=sg.FileName+ '.' + FileType
      else
        FileName :=sg.FileName;
      chart_file :='';
      CubeX.ReportToFile(FileName, chart_file, FileFormat);
      Gio_R.AddShow('数据导出成功...');
      if  FileExists(FileName) then
      begin
        alterXml(FileName,_XMLDOC);
        if isopen then
        OpenDocument(FileName);
      end;
    end;
  finally
    sg.Free;
  end;
end;
{
  --------------------加载数据到报表控件中  ------------------------------------
  作者：许志祥
  时间：2010-1-30
  参数说明 ：
  CubeX：TContourCubeX控件
  SQl:查询SQL
  RePortName:报表名称
  modify_field:字段数组
  ADOCnt:ADO连接控件
}
function OpendataSrc(var orclQry:TADOQuery;CubeX:TContourCubeX;RepSQl,RePortName:string;modify_field:modify_fields; ADOCnt: TADOConnection;dataset:TDataSet;report_id:string=''):Boolean;
var i,col:Integer;
    str,fieldNM,toFileName:string;
    rs:ADODB_TLB._recordset;
    cr:OleVariant;
    data:string;
    s_sql,errormsg:string;
    r_type:Integer;
    _Field:Tfield;
    findFile:string;
  function getTitle(name:string):string;
  var i:Integer;
  begin
    result:='';
    for i:=0 to Length(modify_field)-1 do
    begin
      if modify_field[i].name=name then  result:=modify_field[i].title;
    end;
  end;
  function getVisible(name:string):Boolean;
  var i:Integer;
  begin
    result:=False;
    for i:=0 to Length(modify_field)-1 do
    begin
      if modify_field[i].name=name then
      if not  (modify_field[i].axis=xda_invisible) then result:=True;
    end;
  end;
  function getFormatCount(name:string):Integer;
  var i:Integer;
  begin
    result:=0;
    for i:=0 to Length(modify_field)-1 do
    begin
      if modify_field[i].name=name then
      result:=modify_field[i].formatcount;
    end;
  end;
  function getFot(ct:Integer):string;
  var i:Integer;
     rst:string;
  begin
    result:='0.00';
    if ct=-1 then Exit;
    if ct=0 then
    begin
      result:='';
      Exit;
    end;
    rst:='0.';
    for i:=1 to ct do
    begin
      rst:=rst+'0';
    end;
    result:=rst;
  end;
begin
  CubeX.Active := false;
  Result:=True;
  getDatacount:=0;
  with CubeX do
  begin
    with Cube do
    begin
      Facts.Clear;
      BaseFacts.Clear;
      Dims.Clear;
      DataSourceType := xcdt_Recordset;
      //DataSourceType  := xcdt_ADO;
      if ds=nil then
      begin
        ds:=Tadodataset.Create(nil);
        ds.CommandTimeout:=0;     
      end;
      r_type:=2;
      if not getServerTxtData(orclQry,ds,RepSQl,r_type,findFile) then
      begin
        Result:=False;
        exit;
      end;
      getDatacount:=ds.RecordCount;
    end;
    for i:=0 to Length(modify_field)-1 do
    begin
      if not modify_field[i].isAmount then
      begin
        CubeX.Cube.Dims.Add(modify_field[i].name, modify_field[i].name, xoft_None, modify_field[i].axis).Caption:=modify_field[i].title;
//        _field:=ds.FindField(modify_field[i].name);
//        (ftUnknown, ftString, ftSmallint, ftInteger, ftWord,
//          ftBoolean, ftFloat, ftCurrency, ftBCD, ftDate, ftTime, ftDateTime,
//          ftBytes, ftVarBytes, ftAutoInc, ftBlob, ftMemo, ftGraphic, ftFmtMemo,
//          ftParadoxOle, ftDBaseOle, ftTypedBinary, ftCursor, ftFixedChar, ftWideString,
//          ftLargeint, ftADT, ftArray, ftReference, ftDataSet, ftOraBlob, ftOraClob,
//          ftVariant, ftInterface, ftIDispatch, ftGuid, ftTimeStamp, ftFMTBcd);
//        if _field<>nil then
//        begin
//           //if _field.DataType=  ftWideString then   _field.DataType:=ftString;
//           case _field.DataType   of
//             ftString, ftMemo ,ftWideString,ftGuid  :
//                CubeX.Cube.Dims.Add(modify_field[i].name, modify_field[i].name, xoft_String, modify_field[i].axis).Caption:=modify_field[i].title;
//             ftBoolean:
//                CubeX.Cube.Dims.Add(modify_field[i].name, modify_field[i].name, xoft_Boolean, modify_field[i].axis).Caption:=modify_field[i].title;
//             ftDate:
//                CubeX.Cube.Dims.Add(modify_field[i].name, modify_field[i].name, xoft_Date, modify_field[i].axis).Caption:=modify_field[i].title;
//             ftDateTime:
//                CubeX.Cube.Dims.Add(modify_field[i].name, modify_field[i].name, xoft_DateTime, modify_field[i].axis).Caption:=modify_field[i].title;
//             ftTime:
//                CubeX.Cube.Dims.Add(modify_field[i].name, modify_field[i].name, xoft_Time, modify_field[i].axis).Caption:=modify_field[i].title;
//           end;
//        end;
      end
      else
      begin
        CubeX.Cube.BaseFacts.Add(modify_field[i].name, modify_field[i].name);
        CubeX.Cube.Facts.Add(modify_field[i].name, modify_field[i].name, xfaa_SUM);
        CubeX.Facts.Item[modify_field[i].name].Visible := true;
        CubeX.Facts.Item[modify_field[i].name].Caption:=modify_field[i].title;
      end;
    end;
    for i:=0 to CubeX.VAxis.Dims.Count-1 do
    begin
      if i<>0 then
      CubeX.VAxis.Dims.Item[i].NoTotals:=True;
    end;
    for i:=0 to CubeX.HAxis.Dims.Count-1 do
    begin
      if i<>0 then
      CubeX.HAxis.Dims.Item[i].NoTotals:=True;
    end;
    //CubeX.VAxis.Dims.Item[modify_field[CubeX.VAxis.Dims.Count].name].NoTotals:=True;
    TitleSettings.Visible:=False;
    CubeX.FactsList.AllowFilter:=False;
    with TitleSettings do
    begin
      Text:=RePortName;
      Alignment := xtaCenter;
      BkColor := clSkyBlue;
      FontColor := clRed;
    end;
    if CubeX <> nil then
    begin
      CubeX.FlatStyle := xfs_Flat;
      CubeX.UseThemes := false;
    end;
    try
      rs:= ADODB_TLB._recordset(ds.Recordset.Clone(adLockReadOnly));
      CubeX.Cube.Open(rs,True);
      //CubeX.Cube.CreateFieldsFromDS(xcfds_SplitDates) ;
    except
    end;
    
  end;
end;
//--------------判断字段是否有重复值--------------------------------------------
function  isRepeatValue(Qry:TclientDataSet;fieldName:string):Boolean;
var list:TstringList;
       i:Integer;
       b:Boolean;
begin
  Result:=False;
  try
    list:=TstringList.Create;
    Qry.DisableControls;
    Qry.First;
    while not Qry.Eof do
    begin
      b:=False;
      for i:=0 to list.Count-1 do
      begin
        if trim(Qry.FieldByName(fieldName).AsString)=list[i] then
        begin
          b:=True;
          break;
        end;
      end;
      if b then
      begin
        result:=True;
        Exit;
      end;
      list.Add(trim(Qry.FieldByName(fieldName).AsString));
      Qry.Next;
    end;
  finally
    Qry.EnableControls;
    list.Free;
  end;
end;

//-----------------------------------------------------------
//真正的DBGridEh多表头输出到Excel ,支持多表头，进度条，表脚
procedure DBGridEhToExcel(ADBGridEh: TDBGridEh; MyCaption: string);
{   uses shlobj,ComObj, StrUtils, ExtCtrls, Excel2000, Gauges,DBGridEh;
    真正的DBGridEh多表头输出到Excel,支持多表头，进度条，表脚
    许志祥 2011-11-21 21:30:24
    示例:DBGridEhToExcel(DBGridEh1,'标题名称');                    }

  function CheckColCount(ntype: integer): string; //子函数1 根据列数转化为 A1 AB1 AZ1
  begin
    if ntype<=26 then begin
      result:=chr(ord('A')+ntype -1);
      exit;
    end;
    if ntype<=52 then begin
      Result:='A'+chr(ord('A')+ntype-26 -1);
      Exit;
    end;
    if ntype<=78 then begin
      Result:='B'+chr(ord('A')+ntype-52 -1);
      Exit;
    end;
    if ntype<=104 then begin
      Result:='C'+chr(ord('A')+ntype-78 -1);
      Exit;
    end;
    if ntype<=130 then begin
      Result:='D'+chr(ord('A')+ntype-104 -1);
      Exit;
    end;
    if ntype<=156 then begin
      Result:='E'+chr(ord('A')+ntype-130 -1);
      Exit;
    end;
    if ntype<=182 then begin
      Result:='F'+chr(ord('A')+ntype-156 -1);
      Exit;
    end;
    if ntype<=208 then begin
      Result:='G'+chr(ord('A')+ntype-182 -1);
      Exit;
    end;
  end;
  function CountChar(cStr: string;cChar: Char): Word; //子函数2 含有一个 | 就是两层
  var
    i: Word;
  begin
    Result:=1;
    for i:=1 to length(cStr) do if cStr[i]=cChar then Result:=Result+1;
  end;
  //子函数3 取第几层表头的字符 比如 A|B|C 3 2 ==> B
  function GetTitleNCaption(sCaption: string; SubStr :Char; CapLine: Word): string;
  var
    i, iPos: integer;
  begin
    i:=CountChar(sCaption, SubStr);
    if i =0 then begin
      Result:=sCaption;
      Exit;
    end;
    if CapLine>i then Capline:=i;
    //删除前导
    for i:= 1 to CapLine-1 do begin
      iPos:= Pos('|', sCaption);
      Delete(sCaption, 1, IPos);
    end;
    //取串值
    iPos:= Pos('|', sCaption);
    if iPos<>0 then Result:= Copy(sCaption, 1, iPos-1) else Result:= sCaption;
  end;
  //子函数4 相同字符串出现的次数  StrSubCount( 'abcdbcd ', 'bc ')=2
  function StrSubCount(const Source, Sub: string): integer;
  var 
    Buf: string;
    i: integer;
    Len: integer; 
  begin
    Result := 0;
    Buf := Source;
    i := Pos(Sub,   Buf);
    Len := Length(Sub);
    while i <> 0 do
    begin
      Inc(Result);
      Delete(Buf, 1, i + Len -1);
      i:=Pos(Sub,Buf);
    end;
  end;
var
  odSavefile: TSaveDialog;
  sFileName: string; // Excel文件名
  i,j,k: Integer;
  temp : Widestring;
  tmp : string;
  tmp2 : string;
  ExcelApp: Variant; //Excel对象
  TitleCapLines: integer; //表头层数
  titledetail: array of array of array of string;
  Row, Col: integer;
  FBookMark: TBookmark;
  Panel: TPanel;
  FtempGauge:TGauge;
  FProgressForm: TForm;
  pitem:PITEMIDLIST;
  s:string;
begin
  if (ADBGridEh.DataSource=nil) or (ADBGridEh.DataSource.DataSet.IsEmpty) then begin
    ShowMessage('没有数据，无法导出');
    exit;
  end;
  odSavefile:= TSaveDialog.Create(nil);
  try
    odSaveFile.Filter:= 'EXCEL表格文件格式(*.XLS)|*.xls';
    odSaveFile.DefaultExt:= '.xls';
    shGetSpecialFolderLocation(Application.Handle,CSIDL_DESKTOP,pitem);
    Setlength(s,100);
    shGetPathFromIDList(pitem,pchar(s));
    odSaveFile.InitialDir:= s;
    odSaveFile.FileName:= MyCaption + '.xls';
    if odSaveFile.Execute
    then sFileName:= odSaveFile.FileName
    else Exit;
  finally
    odSaveFile.Free;
  end;
  Application.ProcessMessages;   
  try
    ExcelApp := CreateOleObject('Excel.Application');
  except
    ShowMessage('调用Excel程序失败，请确认本机是否安装Excel系统！');
    Exit;
  end;
  //创建进度条
  FProgressForm := TForm.Create(nil);
  with FProgressForm do
  begin
    try
      Font.Name := '宋体';                                  {设置字体}
      Font.Size := 10;
      BorderStyle := bsNone;
      Width := 400;
      Height := 30;
      BorderWidth := 1;
      Color := clBlack;
      Position := poScreenCenter;
      Panel := TPanel.Create(FProgressForm);
      with Panel do
      begin
        Parent := FProgressForm;
        Align := alClient;
        Caption := '正在导出Excel，请稍候......';
        Color:=$00E9E5E0;
     end;
      FtempGauge:=TGauge.Create(Panel);
      with FtempGauge do
      begin
        Parent := Panel;
        Align:=alClient;
        MinValue := 0;
        MaxValue:= ADBGridEh.DataSource.DataSet.RecordCount;
        Progress := 0;
      end;
    except
    end;
  end;
  FProgressForm.Show;
  FProgressForm.Update;
  Screen.Cursor:=crHourGlass;
  try
    ExcelApp.WorkBooks.Add;
    ExcelApp.DisplayAlerts := False ;
    ExcelApp.WorkBooks[1].WorkSheets[1].Name := MyCaption;
    TitleCapLines:=1; // 确定最大的title的行次
    tmp:=CheckColCOunt(ADBGridEh.VisibleColumns.count);
    temp:='A1'+': '+tmp+'1';
    ExcelApp.WorkBooks[1].WorkSheets[1].cells[1,1].value:=MyCaption;
    ExcelApp.WorkBooks[1].workSheets[1].range[temp].merge;
    ExcelApp.WorkBooks[1].WorkSheets[1].range[temp].verticalalignment:=2;
    ExcelApp.WorkBooks[1].WorkSheets[1].range[temp].font.size:=20 ;
    ExcelApp.WorkBooks[1].WorkSheets[1].range[temp].font.Bold:=True ;
    ExcelApp.WorkBooks[1].WorkSheets[1].range[temp].wraptext:=True;
    ExcelApp.WorkBooks[1].WorkSheets[1].range[temp].horizontalalignment:=3;

    for i:=0 to ADBGridEh.VisibleColumns.Count-1 do
    begin
      j:= CountChar(ADBGridEh.VisibleColumns[i].Title.Caption,'|');
      if TitleCapLines<j then TitleCapLines:=j;
    end;

    setLength(titledetail,ADBGridEh.VisibleColumns.Count,TitleCapLines,3);

    k:=2; //从第三行开始
    for i:=0 to ADBGridEh.VisibleColumns.Count-1 do
    begin
      for j:=0 to TitleCapLines-1 do
      begin
        titledetail[i,j,0]:=GetTitleNCaption(ADBGridEh.VisibleColumns[i].title.Caption,'|',j+1);
        titledetail[i,j,1]:='';
        titledetail[i,j,2]:='';
        ExcelApp.WorkBooks[1].WorkSheets[1].cells[k+j,i+1].value:=titledetail[i,j,0];
      end;
    end;

    for j:=0 to TitleCapLines-1 do //如果和右边的相等，就加合并标志
    for i:=0 to ADBGridEh.VisibleColumns.Count-1-1 do
    if (titledetail[i,j,0]=titledetail[i+1,j,0]) and (trim(titledetail[i,j,0])<>'') then titledetail[i,j,1]:='right'; //right 代表向右合并一列

    for i:=0 to ADBGridEh.VisibleColumns.Count-1 do //如果和下边的相等，就加合并标志
    for j:=0 to TitleCapLines-1-1 do
    if (titledetail[i,j,0]=titledetail[i,j+1,0]) and (trim(titledetail[i,j,0])<>'') then titledetail[i,j,2]:='down'; //down 代表向下合并一列

    for i:=0 to ADBGridEh.VisibleColumns.Count-1 do
    begin
      j:=2;
      for k:=0 to TitleCapLines-1 do
      begin
        tmp:=CheckColCount(i+1);
        temp:=tmp+intTostr(j)+': '+tmp+intTostr(j+1);
        if titledetail[i,k,2]='down' then ExcelApp.WorkBooks[1].WorkSheets[1].range[temp].merge; //merge;
        inc(j)
      end;
    end;

    j:=2;
    for i:=0 to TitleCapLines-1 do
    begin
      for k:=0 to ADBGridEh.VisibleColumns.Count-1 do
      begin
        tmp:=CheckColCount(k+1);
        tmp2:=CheckColCount(k+2);
        temp:=tmp+intTostr(j)+': '+tmp2+intTostr(j);
        if titledetail[k,i,1]='right' then ExcelApp.WorkBooks[1].WorkSheets[1].range[temp].merge; //merge;
      end;
      inc(j);
    end;

    for i:=2 to ExcelApp.WorkBooks[1].WorkSheets[1].usedRange.rows.count do
      for j:=1 to ExcelApp.WorkBooks[1].WorkSheets[1].usedRange.Columns.count do
      begin
        ExcelApp.WorkBooks[1].WorkSheets[1].cells[i,j].verticalalignment:=2;
        ExcelApp.WorkBooks[1].WorkSheets[1].cells[i,j].horizontalalignment:=3;
        ExcelApp.WorkBooks[1].WorkSheets[1].cells[i,j].font.size:=12 ;
        ExcelApp.WorkBooks[1].WorkSheets[1].cells[i,j].wraptext:=True;
      end;

    j:=ExcelApp.WorkBooks[1].WorkSheets[1].usedRange.Columns.count;
    tmp:=CheckColCount(j-1) ;
    temp:=chr(ord('A'))+intTostr(2)+': '+tmp+intTostr(2+TitleCapLines);

    //读取数据
    j := 1;
    for i := 0 to ADBGridEh.VisibleColumns.Count - 1 do
     if j<StrSubCount( ADBGridEh.VisibleColumns[i].title.Caption, '|')+1
      then j:=StrSubCount( ADBGridEh.VisibleColumns[i].title.Caption, '|')+1; //表头层数
    j := j+2;
    ADBGridEh.DataSource.DataSet.DisableControls;
    FBookMark := ADBGridEh.DataSource.DataSet.GetBookmark;
    ADBGridEh.DataSource.DataSet.First;
    while not ADBGridEh.DataSource.DataSet.Eof do
    begin
      //for i := 1 to ADBGridEh.Columns.Count do begin
      for i := 1 to ADBGridEh.VisibleColumns.Count do begin
        ExcelApp.WorkBooks[1].WorkSheets[1].cells[j, i].NumberFormatLocal:='@' ;
        ExcelApp.WorkBooks[1].WorkSheets[1].cells[j, i] := Trim(ADBGridEh.VisibleColumns.Items[i-1].Field.AsString);
        //ExcelApp.WorkBooks[1].WorkSheets[1].cells[j, i] := Trim(ADBGridEh.Columns.Items[i-1].Field.AsString);
      end;
      Inc(j);
      //显示进度条进度过程
      FtempGauge.Progress := ADBGridEh.DataSource.DataSet.RecNo;
      FtempGauge.Refresh;
      ADBGridEh.DataSource.DataSet.Next;
    end;
    
    if ADBGridEh.DataSource.DataSet.BookmarkValid(FBookMark) then
        ADBGridEh.DataSource.DataSet.GotoBookmark(FBookMark);
    ADBGridEh.DataSource.DataSet.EnableControls;

    //读取表脚
    if ADBGridEh.FooterRowCount > 0 then
    begin
        for Row := 0 to ADBGridEh.FooterRowCount-1 do
        begin
            for Col := 0 to ADBGridEh.VisibleColumns.Count-1 do begin
                ExcelApp.WorkBooks[1].WorkSheets[1].cells[j, Col+1].NumberFormatLocal:='@' ;
                ExcelApp.WorkBooks[1].WorkSheets[1].cells[j, Col+1] := ADBGridEh.GetFooterValue(Row,ADBGridEh.VisibleColumns[Col]);
            end;
            Inc(j);
        end;
    end;
    //调整列宽
    //for i := 1 to ADBGridEh.Columns.Count do
    //    ExcelApp.WorkBooks[1].WorkSheets[1].Columns[i].EntireColumn.AutoFit;
    FProgressForm.Free;
    ExcelApp.Workbooks[1].SaveAs(sFileName); //保存
    ShowMessage('报表数据已经成功导出！             ');
  finally
    ExcelApp.WorkBooks.Close;
    ExcelApp.Quit;
    Screen.Cursor:=crDefault;
  end;
end;
//-----------------------------------------------------------

function getListval(list:TStringList;index:Integer):string;
begin
  if  index< list.Count then Result:=list[index]
  else Result:='';
end;
function CheckColCount(ntype: integer): string; //子函数1 根据列数转化为 A1 AB1 AZ1
begin
  if ntype<=26 then begin
    result:=chr(ord('A')+ntype -1);
    exit;
  end;
  if ntype<=52 then begin
    Result:='A'+chr(ord('A')+ntype-26 -1);
    Exit;
  end;
  if ntype<=78 then begin
    Result:='B'+chr(ord('A')+ntype-52 -1);
    Exit;
  end;
  if ntype<=104 then begin
    Result:='C'+chr(ord('A')+ntype-78 -1);
    Exit;
  end;
  if ntype<=130 then begin
    Result:='D'+chr(ord('A')+ntype-104 -1);
    Exit;
  end;
  if ntype<=156 then begin
    Result:='E'+chr(ord('A')+ntype-130 -1);
    Exit;
  end;
  if ntype<=182 then begin
    Result:='F'+chr(ord('A')+ntype-156 -1);
    Exit;
  end;
  if ntype<=208 then begin
    Result:='G'+chr(ord('A')+ntype-182 -1);
    Exit;
  end;
end;
function isExistsList(list:TStringList;val:string):Boolean;
var i:Integer;
begin
  Result:=False;
  for i:=0 to list.Count-1 do
  begin
    if list[i]=val then
    begin
      Result:=True;
      Exit;
    end;
  end;
end;
{
 2011-11-22 0:07 许志祥
 用于Excel导出后再设置多表头
}
procedure SetSizeCaptionToExcel(filename,reportName:string;colCount:Integer;sizeMgr:boolean=false);
var Excelobj,sheetobj,WorkBook:variant;   //必须加入comobj单元
    FileNames,val:string;
    col,row,maxRow,up,secut,i,j,Bindex,Eindex:Integer;
    excelVal,RG,temp:string;
    list:TList;
    valList,rangeList:TStringList;
begin
  try
    Excelobj:=CreateOleObject('Excel.Application');
    sheetobj:=CreateOleObject('Excel.Sheet');
  except
    showMessage('您的机器里未安装Microsoft Excel !');
    Exit;
  end;
  try
    screen.Cursor:=crHourGlass;
    list:=TList.Create;

    try
      Excelobj:=Createoleobject('Excel.application');
      Excelobj.workbooks.open(tempXls);
      sheetobj:=Excelobj.workbooks[1].worksheets[1];     //vartostr(sheetobj.cells[row,2])


      for col:=1 to  colCount do
      begin
        valList:=TStringList.Create;
        excelVal:=vartostr(sheetobj.cells[1,col]);
        valList.Delimiter:='|';
        valList.DelimitedText:=excelVal;
        list.Add(valList);
      end;
      maxRow:=0;
      j:=0;
      i:=0;
      for i:=0 to list.Count-1 do    //求出最大行数
      begin
        if maxRow<TStringList(list[i]).Count then
        maxRow:=TStringList(list[i]).Count;
      end;
      if maxRow<=1 then
      begin
        sheetobj.rows[1].insert;
         //设置报表名称
        sheetobj.cells[1,1]:=reportName;
        RG:='A1:'+CheckColCount(colCount)+'1';
        sheetobj.range[RG].verticalalignment:=2;
        sheetobj.range[RG].font.size:=18 ;
        sheetobj.range[RG].font.Bold:=True ;
        sheetobj.Range[RG].Characters.Font.Name:='宋体';
        sheetobj.range[RG].horizontalalignment:=3;
        sheetobj.range[RG].merge; //合并单元格
        Exit;
      end;
      sheetobj.rows[1].delete; //删除一行
      maxRow:=maxRow+1;
      for i:=1 to  maxRow do   //插入行
      begin
        sheetobj.rows[1].insert;
      end;
      valList:=TStringList.Create;
      for i:=0 to list.Count-1 do
      begin
        valList:= TStringList(list[i]);
        for j:=2 to  maxRow do
        begin
          sheetobj.cells[j,i+1].NumberFormatLocal:='@' ;
          sheetobj.cells[j,i+1].HorizontalAlignment:=3;   //xlCenter(水平对齐方式)
          sheetobj.cells[j,i+1].VerticalAlignment:=2;     //xlCenter(垂直对齐方式)
          sheetobj.cells[j,i+1].Characters.Font.FontStyle:='加粗';
          sheetobj.cells[j,i+1]:=getListval(valList,j-2);
        end;
      end;
      for  i:=0 to list.Count-1 do     //合并单元格
      begin
        valList:= TStringList(list[i]);
        if vallist.Count=1 then
        begin
          temp:=CheckColCount(i+1);
          RG:=temp+inttostr(2)+':'+temp+inttostr(maxRow);
          sheetobj.range[RG].merge;
        end;
      end;
      temp:='';
      rangeList:=TStringList.Create;
      for  i:=0 to list.Count-1 do    //求出需要合并单元格列
      begin
        valList:= TStringList(list[i]);
        if vallist.Count>1 then
        begin
          temp:=valList[0];
          if rangeList.Count=0 then rangeList.Add(temp)
          else
          begin
            if not isExistsList(rangeList,temp) then
            begin
              rangeList.Add(temp);
            end;
          end;
        end;
      end;
      for  i:=0 to rangeList.Count- 1 do  //合并第二行单元格
      begin
        temp:=rangeList[i];
        Bindex:=10000;
        Eindex:=0;
        for   j:=0 to list.Count-1 do
        begin
          valList:= TStringList(list[j]);
          if valList.Count>1 then
          begin
            if temp= valList[0] then
            begin
              if Bindex>j+1 then Bindex:=j+1;   //取开始列
              if Eindex<j+1 then Eindex:=j+1;   //取结束列
            end;
          end;
        end;
        if (Bindex<>10000) and (Eindex<>0) then
        if Bindex<> Eindex then 
        begin
          RG:=CheckColCount(Bindex+1)+'2:'+CheckColCount(Eindex)+'2';
          sheetobj.Range[RG].Clear;//清除数据
          RG:=CheckColCount(Bindex)+'2:'+CheckColCount(Eindex)+'2';
          sheetobj.range[RG].merge; //合并单元格
        end;
      end;
    except
      on e:Exception do
      begin
        application.MessageBox(PChar('操作Excel失败!原因:'+e.Message),'提示',64);
        Excelobj.Quit;
        list.Free;
        valList.Free;
        rangeList.Free;
        if  FileExists(ExtractFilePath(Application.ExeName)+'Report_zhixiang_xu.xls') then
        DeleteFile(ExtractFilePath(Application.ExeName)+'Report_zhixiang_xu.xls');
        screen.Cursor:=crDefault;
        Abort;
      end;
    end;
     //Excelobj.DisplayAlerts:=False;  //屏蔽提示框
     //设置报表名称
    sheetobj.cells[1,1]:=reportName;
    RG:='A1:'+CheckColCount(colCount)+'1';
    sheetobj.range[RG].verticalalignment:=2;
    sheetobj.range[RG].font.size:=18 ;
    sheetobj.range[RG].font.Bold:=True ;
    sheetobj.Range[RG].Characters.Font.Name:='宋体';
    sheetobj.range[RG].horizontalalignment:=3;
    sheetobj.range[RG].merge; //合并单元格
  finally
    sheetobj.saveas(filename);
    Excelobj.Quit;
    list.Free;
    valList.Free;
    rangeList.Free;
    if  FileExists(ExtractFilePath(Application.ExeName)+'Report_zhixiang_xu.xls') then
    DeleteFile(ExtractFilePath(Application.ExeName)+'Report_zhixiang_xu.xls');
    screen.Cursor:=crDefault;
  end;
end;


end.

