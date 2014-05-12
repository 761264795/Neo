unit Pub_Fun;

interface

uses
  SysUtils, ZLib, Variants, ComObj, DB, Classes, ADODB, StrUtils, UntTIO,
  Windows, Messages, Graphics, Controls, Forms, TLHelp32, ADODB2000,ExtCtrls,
  Registry, DBClient,Math,ADODB_TLB,ADOInt,Dialogs,inifiles,ActiveX, MMSystem,DCPbase64,types,md5,winsock;
var
  HintTitle:  string = 'I3Ь��ERP��ʾ';
  WarnTitle:  string = 'I3Ь��ERP��ʾ';
  ErrorTitle: string = 'I3Ь��ERP��ʾ';
  AskTitle:   string = 'I3Ь��ERP��ʾ';
type
  TRoundToRange = -37..37;
const
  //----------�Ի�����������---------

  M_Warn:  Cardinal = MB_Ok or MB_ICONWARNING;
  M_Error: Cardinal = MB_Ok or MB_ICONERROR;
  M_Hint:  Cardinal = MB_Ok or MB_ICONINFORMATION;
  M_YesNo: Cardinal = MB_YESNO or MB_ICONQUESTION;
  M_YewNoCancel: Cardinal = MB_YESNOCANCEL or MB_ICONQUESTION;

const
  FileFlag = 'MyKingdeeFZ';

  //ת��OLEVariant��TMemoryStream
  function OleVariantToMemoryStream(OV: OleVariant): TMemoryStream;
  //ת��OLEVariant��TMemoryStream
  function MemoryStreamToOleVariant(Strm: TMemoryStream): OleVariant;
  //ѹ�� OleVariant
  function Zip_OleVariant(Data: OleVariant): OleVariant;
  //��ѹ�� OleVariant
  function UnZip_OleVariant(Data: OleVariant): OleVariant;
  //���ļ�ѹ���� OleVariant
  function Zip_FileToOleVariant(FileName: string): OleVariant;
  //�� OleVariant ��ѹ�����ļ�
  function UnZip_FileToOleVariant(FileStream: OleVariant; FileName: string): Boolean;
  //���ݼ�������Text�ļ�����BCP������
  function ExtDataSet_To_Text(DataSet: TDataSet;  TxtFile: string; const Delimiter: string = '_#$_'): Boolean;
  //���ݼ�������Text�ļ�����BCP�����ã���һ����¼�в�ֳɶ���ļ�
  function ExtDataSet_To_Text_Ex(var Gio: TIOer;
                                 DataSet: TDataSet;  //�����������ݼ�
                                 FilePath: string;    //�����ļ�·��
                                 FileName: string;    //�����ļ�����������չ��
                                 DataName: string;    //���ݼ�����
                                 var OutFileNames: WideString;  //�������ļ��б�
                                 var _DataCount: integer;       //��������
                                 const Delimiter: string = '_#$_'  //�ֶηָ���
                                 ): Boolean;
  //Text�ļ����뵽���У�SQL���ݿ����ã�������AdoCon���ı��ļ�����������������У��������ָ�����������Ϣ����ע���ı��ļ���ʽ��BCP������ʽһ�¡�
  //���������������SQL���ݿ��ڱ��ص����
  function Im_Text_To_Sql(_AdoCon: TADOConnection; TxtFile, TableName, Columns, KeyCol, Del_Cols, DBUserName, DBPassword: string; var ErrMsg: string; const Delimiter: string = '_#$_'): Boolean;
  //Text�ļ����뵽���У�SQL���ݿ����ã������ڵ������ݵ��������Ե�SQL���ݿ�
  function Im_Text_To_Sql_Ex(TxtFile,         //�ı��ļ�����ʽΪBCP������ʽ
                             TableName,       //����Ŀ���
                             Columns,         //�ֶ��У����ı��ļ��ж�Ӧ��
                             KeyCol: string;  //�����ֶ�
                             DBSerName,       //���ݿ����������
                             DBName,          //���ݿ�����
                             DBUserID,        //���ݿ��¼�û�
                             DBUserPwd: string;  //���ݿ�����
                             var ErrMsg: string; //������Ϣ
                             const Delimiter: string = '_#$_'   //���ݷָ���
                             ): Boolean;


  //��ȡ�ļ��汾��Ϣ  20110507
  function GetVersionString(FileName: string): string;
  //ȡ�õ��������루����K/3 v12.1�ļ��ܽӿ��ļ�ȡ�ã�
  function Get_SoftLock(var SoftLock: string; var ErrMsg: string): Boolean;
  //���ָ���ȡ���ַ���������  Get_String('A,B,C,D,E,F', 0) = 'A'
  function Get_String(aStr: string; aIndex: Integer; const Delimiter: Char = ','): string;
  //ȡ���ַ��Ķ���������  Get_StrCount('A,B,C,D,E,F') = 6
  function Get_StrCount(aStr: string; const Delimiter: Char = ','): Integer;
  //ȡ�÷�����GUID
  function Get_Guid: string;
  //����TXT�ļ�  20110512
  procedure WriteTxt(WriteStr: string);
  //ȡ���ļ����޸�����
  function Get_FileUpdTime(const FileName: string): TDateTime;
  //ɾ����ʱ�ļ�(·�����ļ����ͣ�������Ŀ¼��ɾ�� N ��ǰ��)
  function Del_TemFile(Path, Filter: string; ContainSubDir: Boolean; BeforeDate: Double): Boolean;
  //�ж��Ƿ����ĳ������
  function FindProcess(AFileName: string):boolean;
  //ִ��SQL�ű��ļ�(SQL����)
  function Exec_SqlFile(ServerName, DataBaseName, UserName, password, FileName: string; var ErrMsg: string): Boolean;
  //ִ��SQL�ű�(SQL����)
  function Exec_SqlStrs(ServerName, DataBaseName, UserName, password: string; Sql_Liststr: TStrings; var ErrMsg: string; const Use_Trans: Boolean = False): Boolean;

  procedure ShowMsg(Handle: HWnd; AMessage: string; AStr: Array of const);
  procedure ShowWarn(Handle: HWnd; AMessage: string; AStr: Array of const);
  procedure ShowError(Handle: HWnd; AMessage: string; AStr: Array of const);
  function ShowYesNo(Handle: HWnd; AMessage: string; AStr: Array of const): Cardinal;
  function ShowYewNoCancel(Handle: HWnd; AMessage: string; AStr: Array of const): Cardinal;

  function LoadImage(FilePath : string;Image:TImage):Boolean;   //����ͼƬ
  //�ж��Ƿ�װSQL��MSDE
  function HasSetupSQL: Boolean;
  //ִ���ļ����ȴ����
  function ExecAndWait(const Filename, Params: string; WindowState: word): Boolean;

  //ȡ�ó��������е����
  function Get_SizeGroupIndex(_AdoCon: TADOConnection; StyleID, SizeID: string): Integer;
  //ͨ�����������ȡ�ó���ID
  function Get_SizeID_GroupIndex(_AdoCon: TADOConnection; StyleID: string; SizeIndex: Integer): string;
  //��ȡС��λ��
  function USimpleRoundTo(const AValue: Double; const ADigit: TRoundToRange = -2): Double;
  //�ж��Ƿ�����ֶ�
  function is_fieldByName(cds:TadoDataSet;fieldName:String):Boolean; overload;
  function is_fieldByName(cds:TClientDataSet;fieldName:String):Boolean; overload;
  //string ת������
  function TextToOleData(const AText: string): OleVariant;
  //RECORDSETתXMLString
  function RecordsetToXMLString(const Recordset: adoint._Recordset): string;
  //����תXMLString
  function OleDataToText(const AData: OleVariant): string;
  //XMLStringת adoint._Recordset;
  function RecordsetFromXMLString(const XML: string): adoint._Recordset;
  procedure setReportData(var adodataset:TADODataSet;data:OleVariant);
  //ȫ��ת��� 20120221
  function SbctoDbc(s:string):string;
  //���������ļ�  20120824 ��־��
  procedure playSoundFile(playfile:string);
  // �ֽ�����ת�ַ���
  function ByteToString(const Value: MD5Digest): String;
  // ��ȡ������������
  function  GetMd5Password(PSWD:string):string;
  function  LocalIP :string; //��ȡ����IP
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
  data:=UnZip_OleVariant(data);   //���ݽ�ѹ
  s:=OleDataToText(data);    //����תstring
  adodataset.Recordset:=RecordsetFromXMLString(s);
end;

//XMLStringת adoint._Recordset;
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
//����תstring
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
//RECORDSETתXMLString
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
//string ת������
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
//С������
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

{ִ���ļ����ȴ����}
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
    //�ȴ�Ӧ�ó������
    WaitForSingleObject(ProcInfo.hProcess, INFINITE);
    //ɾ�����
    CloseHandle(ProcInfo.hProcess);
    CloseHandle(ProcInfo.hThread);
  end;
end;

//�ж��Ƿ�װSQL��MSDE
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

function LoadImage(FilePath : string;Image:TImage):Boolean;   //����ͼƬ
begin
  Result := True;
  if FileExists(FilePath) then
    Image.Picture.LoadFromFile(FilePath)
  else
    Result := False;
end;

//�ж��Ƿ����ĳ������
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

//ɾ����ʱ�ļ�(·�����ļ����ͣ�������Ŀ¼��ɾ�� N ��ǰ��)
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

//ȡ���ļ����޸�����
function Get_FileUpdTime(const FileName: string): TDateTime;
begin
  if FileExists(FileName) then
    Result := FileDateToDateTime(FileAge(FileName));
end;

//ȡ��GUID
function Get_Guid: string;
var
  sGUID: string;
begin
  sGUID := CreateClassID;
  Result := StringReplace(Copy(sGUID, 2, Length(sGUID) - 2), '-', '', [rfReplaceAll]);
end;

//ȡ���ַ��Ķ���
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

//���ָ���ȡ���ַ���������  Get_String('A,B,C,D,E,F', 2) = 'A'
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

//ȡ�õ��������루����K/3 v12.1�ļ��ܽӿ��ļ�ȡ�ã�
function Get_SoftLock(var SoftLock: string; var ErrMsg: string): Boolean;
var
  IFindValue2: Variant;
  SoftLock_Install: string;
begin
  Result := False;
  ErrMsg := '';
  //�ȿ������ӿ⵽system32
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

//Text�ļ����뵽���У�SQL���ݿ����ã������ڵ������ݵ��������Ե�SQL���ݿ�
function Im_Text_To_Sql_Ex(TxtFile,         //�ı��ļ�����ʽΪBCP������ʽ
                           TableName,       //����Ŀ���
                           Columns,         //�ֶ��У����ı��ļ��ж�Ӧ��
                           KeyCol: string;  //�����ֶ�
                           DBSerName,       //���ݿ����������
                           DBName,          //���ݿ�����
                           DBUserID,        //���ݿ��¼�û�
                           DBUserPwd: string;  //���ݿ�����
                           var ErrMsg: string; //������Ϣ
                           const Delimiter: string = '_#$_'   //���ݷָ���
                           ): Boolean;
begin
  Result := False;
  ErrMsg := '';
  if not FileExists(TxtFile) then
  begin
    ErrMsg := Format('�ļ���%s��������', [TxtFile]);
    Exit;
  end;

end;

//Text�ļ����뵽���У�SQL���ݿ����ã�������AdoCon���ı��ļ�����������������У��������ָ�����������Ϣ����ע���ı��ļ���ʽ��BCP������ʽһ�¡�
function Im_Text_To_Sql(_AdoCon: TADOConnection; TxtFile, TableName, Columns, KeyCol, Del_Cols, DBUserName, DBPassword: string; var ErrMsg: string; const Delimiter: string = '_#$_'): Boolean;
var ErrInt : Integer;
begin
  Result := True;
  //ErrMsg := '';
  if not FileExists(TxtFile) then
  begin
    ErrMsg := Format('�ļ���%s��������', [TxtFile]);
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
          ErrMsg := '�������ݳ���'+E.Message;
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

//���ݼ�������Text�ļ�����BCP�����ã���10000�в�ֳɶ���ļ�
function ExtDataSet_To_Text_Ex(var Gio: TIOer;      //��־
                               DataSet: TDataSet;   //�����������ݼ�
                               FilePath: string;    //�����ļ�·��
                               FileName: string;    //�����ļ�����������չ��
                               DataName: string;    //���ݼ�����
                               var OutFileNames: WideString;  //�������ļ��б�
                               var _DataCount: integer;       //��������
                               const Delimiter: string = '_#$_'  //�ֶηָ���
                               ): Boolean;
var
  FText: Cardinal;
  aFilePath, FldStr, RosStr, TxtFile: string;
  aIndex, i, aRow: Integer;
  Is_FileClose: Boolean;
const
  //���������ļ��ļ�¼�����������Զ����ļ�
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
  //Ŀ¼�������򴴽�
  if not DirectoryExists(aFilePath) then
    ForceDirectories(aFilePath);
  OutFileNames := '';
  aIndex := 1;
  //WriteTxt(Format('��ʼ������%s��(%d)', [DataName, aIndex]));
  try
    DataSet.DisableControls;
    //DataSet.First;
    aRow := 1;
    //�����ļ�
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
          begin  //����������0/1��ʾ
            if TBooleanField(DataSet.Fields[i]).AsBoolean then
              FldStr := '1'
            else
              FldStr := '0';
          end
          else if DataSet.Fields[i].DataType = ftDateTime then
          begin  //�����ֶ�
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
      //���ݷ��ļ�
      if (aRow mod Max_RecordCount = 0) then
      begin
        //WriteTxt(Format('��ɵ�����%s��(%d)', [DataName, aIndex-1]));
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
        //WriteTxt(Format('��ʼ������%s��(%d)', [DataName, aIndex-1]));
      end;
      Inc(aRow);
    end;
    _DataCount := aRow - 1;
    //WriteTxt(Format('��ɵ�����%s��(%d)', [DataName, aIndex-1]));
    Result := True;
  finally
    if not Is_FileClose then FileClose(FText);
    DataSet.EnableControls;
  end;
end;

//���ݼ�������Txt�ļ�����BCP������
function ExtDataSet_To_Text(DataSet: TDataSet;  TxtFile: string; const Delimiter: string = '_#$_'): Boolean;
var
  FText: Cardinal;
  FldStr, RosStr: string;
  i: Integer;
begin
  Result := False;
  if not DataSet.Active then Exit;
  //Ŀ¼�������򴴽�
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
          begin  //����������0/1��ʾ
            if TBooleanField(DataSet.Fields[i]).AsBoolean then
              FldStr := '1'
            else
              FldStr := '0';
          end
          else if DataSet.Fields[i].DataType = ftDateTime then
          begin  //�����ֶ�
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

//���ļ�ѹ���� OleVariant
function Zip_FileToOleVariant(FileName: string): OleVariant;
var
  //Դ�ļ���
  MemReadStream: TMemoryStream;
  //ѹ������ļ���
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

//ת��OLEVariant��TMemoryStream
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

//ת��OLEVariant��TMemoryStream
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

//ѹ�� OleVariant
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

//�� OleVariant ��ѹ�����ļ�
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
    //����
    SetLength(s, 12);
    SourceFileStream.ReadBuffer(s[1], 12);
    SourceFileStream.Position := 0;
    if s = FileFlag + #0 then begin
      SourceFileStream.Position := 12;
    end
    else raise Exception.Create('������ļ���ʽ');

    //���ԭʼ����С
    SourceFileStream.ReadBuffer(ZipCount, SizeOf(ZipCount));
    GetMem(Buffer, ZipCount);
    //��ѹ
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

//��ѹ�� OleVariant
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
    //����
    SetLength(s, 12);
    SourceFileStream.ReadBuffer(s[1], 12);
    SourceFileStream.Position := 0;
    if s = FileFlag + #0 then begin
      SourceFileStream.Position := 12;
    end
    else raise Exception.Create('������ļ���ʽ');

    //���ԭʼ����С
    SourceFileStream.ReadBuffer(ZipCount, SizeOf(ZipCount));
    GetMem(Buffer, ZipCount);
    //��ѹ
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

//��ȡ�ļ��汾��Ϣ  20110507
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

//д��txt�ĵ�
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
  //sMessage := Format(AMessage, Astr);      //��������%��ʱ��ʾ����
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

//ִ��SQL�ű�(SQL����)
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
        ErrMsg := '�ű�ִ�д���' + E.Message + #13#10 + TemList.Text;
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

//ִ��SQL�ű��ļ�
function Exec_SqlFile(ServerName, DataBaseName, UserName, password, FileName: string; var ErrMsg: string): Boolean;
var
  FileListstr: TStrings;  //�ļ�����
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
    ErrMsg := Format('�ļ�%s������', [FileName]);
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
      //�����ļ�
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
        ErrMsg := '�ű�ִ�д���' + E.Message + #13#10 + TemList.Text;
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

//ȡ�ó��������е����
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

//ͨ�����������ȡ�ó���ID
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
//�ж��Ƿ�����ֶ�
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
//�ж��Ƿ�����ֶ�
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
 ��windows�У����ĺ�ȫ���ַ���ռ�����ֽڣ�
 ����ʹ����ascii��chart  2  (codes  128 - 255 )��
ȫ���ַ��ĵ�һ���ֽ����Ǳ���Ϊ163��
 ���ڶ����ֽ�������ͬ����ַ������128���������ո񣩡�
 ����aΪ65����ȫ��a����163����һ���ֽڣ��� 193 ���ڶ����ֽڣ� 128 + 65 ����
 �������������������ĵ�һ���ֽڱ���Ϊ����163����
 �� ' �� ' Ϊ: 176   162 ��,���ǿ����ڼ�⵽����ʱ������ת����
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
     if  (c1 = #163 ) then   // �����ȫ���ַ� 
     begin
      str := str + chr(ord(c2[ 1 ]) - 128 );
      inc(i, 2 );
       continue ;
    end;
     if  (c1 > #163 ) then   // ����Ǻ���
     begin
      str := str + c1;
      str := str + c2;
      inc(i, 2 );
       continue ;
    end;
     if  (c1 = #161 ) and (c2 = #161 ) then   // �����ȫ�ǿո� 
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
  if iflag=0 then  //��תΪ��д��ĸ�ٱȽ�
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
  if iflag=0 then  //��תΪ��д��ĸ�ٱȽ�
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
  if iflag=0 then  //��תΪ��д��ĸ�ٱȽ�
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
  if iflag=0 then  //��תΪ��д��ĸ�ٱȽ�
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
