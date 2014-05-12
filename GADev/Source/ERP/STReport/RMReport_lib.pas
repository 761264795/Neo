{*******************************************************************************
  单元名称：
  功能：
  说明：1、请在调用本文件内的函数前，在项目文件的Uses子句的第一行加 ShareMem，
           具体信息请参考Delphi中的动态连接库调用以字符串作为参数时的注意事项
  作者：唐佐平
  E_Mail: Tang_717@163.com
*******************************************************************************}
unit RMReport_lib;

interface

uses Forms, Windows, Dialogs, Classes, SysUtils, Graphics, DB, ADODB, StrUtils,
  Controls, Variants, FrmSelectReport;

const
  ReportLib = 'RHReport.dll';

  //数据集结构
  type
    PRptDataList = ^AList;
    AList = record
      alias: string;     //数据集别名
      DataSet: Pointer;  //数据集
    end;

type
  TProc = procedure;
  TInitDllProc = procedure(Handle:THandle);
  TDP_RptFile = procedure(RptFile:    String;   //报表文件
                          DataList:   TList;    //数据集
                          aVariables: TStrings; //变量列表
                          IsDesign:   Boolean;  //是否设计报表
                          IsGridRpt:  Boolean   //表格报表设计器
                          );
  TPrintRpt = Function(RptFile:    String;    //报表文件
                       DataList:   TList;     //数据集
                       aVariables: TStrings;  //变量列表
                       IsShowPrtDlg: Boolean; //显示打印窗口
                       IsGridRpt:  Boolean;   //表格报表设计器
                       var RM_PName:   string     //打印机名字
                       ): Boolean;
  Function LoadFrxDll: THandle; //加载 DLL 文件
  Function FreeFrxDll(DllHandle: THandle): Boolean;  //释放DLL文件

  //============================================================================
  //    在项目中使用时调用下面的函数即可
  //============================================================================

  //添加数据集别名
  function Add_DataSetInfo(alias: string; aDataSet: TDataSet): Boolean;
  //添加变量
  function Add_Variable(Variable, Value: string): Boolean;

  //从报表文件设计(预览)报表
  Procedure RMDP_RptFile(_Form: TForm;  //窗口
                         RptFile:    String;        //报表文件
                         IsDesign:   Boolean=True;  //是否设计报表
                         IsGridRpt:  Boolean=False  //表格报表设计器
                         );

  //直接打印报表文件（无预览）
  Function RM_PrintRpt(_Form: TForm;  //窗口
                       RptFile:    String;    //报表文件
                       IsShowPrtDlg: Boolean; //显示打印窗口
                       IsGridRpt:  Boolean;   //表格报表设计器
                       var RM_PName:   string     //打印机名字
                       ): Boolean;
  //从目录选择报表文件（指定目录，自动从目录中搜索报表模版，数据集自动从窗口上搜索加载到报表中）
  function Open_ReportFile(_Form: TForm;  //窗口
                           Path: string;  //报表目录
                           IsDesign:   Boolean=True  //是否设计报表
                           ): Boolean;
//=============================================================================
//I3打印方式   许志祥   2014-01-07
//-------从报表文件设计(预览)报表
  Procedure I3_RMDP_RptFile(
                       _Names: array of String;
                       _cds:   array   of TDataSet;
                       RptFile:    String;        //报表文件
                       IsDesign:   Boolean=True  //是否设计报表  True 设计  false 预览
                       );
//直接打印报表文件（无预览）
  Function I3_RM_PrintRpt(
                       _Names: array of String;
                       _cds:   array   of TDataSet;
                       RptFile:    String;    //报表文件
                       IsShowPrtDlg: Boolean; //显示打印窗口
                       var RM_PName:   string     //打印机名字
                       ): Boolean;
//============================================================================
  var
    _TmpDataList: TList;        //数据集列表
    _TmpVariables: TStrings;    //变量列表

implementation
   uses FrmCliDM;
//加载 DLL 文件
Function LoadFrxDll: THandle;
var
  DllHandle: THandle;
  aProc: TInitDllProc;
begin
  Result := 0;
  DllHandle := LoadLibrary(PAnsiChar(ExtractFilePath(Paramstr(0))+ReportLib));
  if (DllHandle = HINSTANCE_ERROR) or (DllHandle = 0) then
  begin
    MessageBox(Application.Handle,pchar('加载DLL文件失败！'),pchar('系统提示'),mb_OK+mb_iconError);
    Abort;
  end;
  @aProc := GetProcAddress(DllHandle, PAnsiChar('FR_InitAppHandle'));
  if (@aProc <> nil) then aProc(Application.Handle);
  Result := DllHandle;
end;

Function FreeFrxDll(DllHandle: THandle): Boolean;  //释放DLL文件
var
  aProc: TProc;
begin
  Result := False;
  try
    @aProc := GetProcAddress(DllHandle, PAnsiChar('FR_FreeAppHandle'));
    if (@aProc <> nil) then aProc;
    Result := True;

  finally
    FreeLibrary(DllHandle);
  end;
end;

//添加变量
function Add_Variable(Variable, Value: string): Boolean;
begin
  Result := False;
  if Trim(Variable) = '' then Exit;
  _TmpVariables.Add(Trim(Variable) + '=' + Trim(Value));
  Result := True;
end;

//添加数据集别名
function Add_DataSetInfo(alias: string; aDataSet: TDataSet): Boolean;
var
  aDataList: PRptDataList;
function indexofex(list:Tlist;classname:String):Boolean;
var i:Integer;
    tmp:PRptDataList;
begin
  Result:=False;
  for i:=0 to list.Count-1 do
  begin
    tmp:= PRptDataList(list[i]);
    if (classname=tmp^.alias) then
    begin
      Result:=True;
      Exit;
    end;
  end;
end;
begin
  Result := False;
  {
  if not(Assigned(DataList))or
     (DataList = nil)or
     (DataList.Count < 0) then
  begin
    DataList := TList.Create;
    DataList.Clear;
  end;

  New(aDataList);
  aDataList^.alias := alias;
  aDataList^.DataSet := aDataSet;
  DataList.Add(aDataList);
  }
  New(aDataList);
  aDataList^.alias := alias;
  aDataList^.DataSet := aDataSet;
  if not  indexofex(_TmpDataList,alias) then
  _TmpDataList.Add(aDataList);

  Result := True;
end;

//从报表文件设计(预览)报表
Procedure RMDP_RptFile(_Form: TForm;  //窗口
                       RptFile:    String;        //报表文件
                       IsDesign:   Boolean=True;  //是否设计报表  True 设计  false 预览
                       IsGridRpt:  Boolean=False  //表格报表设计器
                       );
var
  DllHandle: THandle;
  aProc: TDP_RptFile;
  aDataList: PRptDataList;
  i: integer;
begin
  for i := 0 to _Form.ComponentCount - 1 do
  begin
    if (_Form.Components[i].InheritsFrom(TDataSet))  then
      //and (TDataSet(_Form.Components[i]).Active)
      Add_DataSetInfo(_Form.Components[i].Name, TDataSet(_Form.Components[i]));
  end;

  Add_Variable('店铺电话',UserInfo.WareHouser_TELPHONE);
  Add_Variable('店铺地址',UserInfo.WareHouser_ADDRESS);
  Add_Variable('店铺编号',UserInfo.Warehouse_Number);
  //Add_Variable('店铺名称',UserInfo.Warehouse_Name);
  Add_Variable('店铺编号:名称',UserInfo.Warehouse_NumberName);

  Add_Variable('登陆用户编号',UserInfo.LoginUser);
  Add_Variable('登陆用户名称',UserInfo.LoginUser_Name);

  //1、加载 DLL 文件
  DllHandle := LoadFrxDll;
  try
    //2、调用设计报表函数
    @aProc := GetProcAddress(DllHandle, PAnsiChar('DP_RptFile'));
    if (@aProc <> nil) then
      aProc(RptFile, _TmpDataList, _TmpVariables, IsDesign, IsGridRpt);
  finally
    New(aDataList);
    //释放TList
    for i := 0 to _TmpDataList.Count - 1 do
    begin
      aDataList := _TmpDataList.Items[i];
      Dispose(aDataList);
    end;
    _TmpDataList.Clear;
    _TmpVariables.Clear;
    //3、释放 DLL 资源
    FreeFrxDll(DllHandle);
  end;
end;

//打印报表文件
Function RM_PrintRpt(_Form: TForm;  //窗口
                     RptFile:    String;    //报表文件
                     IsShowPrtDlg: Boolean; //显示打印窗口
                     IsGridRpt:  Boolean;   //表格报表设计器
                     var RM_PName:   string     //打印机名字
                     ): Boolean;
var
  DllHandle: THandle;
  aProc: TPrintRpt;
  aDataList: PRptDataList;
  i: integer;
begin
  Result := False;
  for i := 0 to _Form.ComponentCount - 1 do
  begin
    if (_Form.Components[i].InheritsFrom(TDataSet))and
       (TDataSet(_Form.Components[i]).Active) then
      Add_DataSetInfo(_Form.Components[i].Name, TDataSet(_Form.Components[i]));
  end;

  Add_Variable('店铺电话',UserInfo.WareHouser_TELPHONE);
  Add_Variable('店铺地址',UserInfo.WareHouser_ADDRESS);
  Add_Variable('店铺编号',UserInfo.Warehouse_Number);
  //Add_Variable('店铺名称',UserInfo.Warehouse_Name);
  Add_Variable('店铺编号:名称',UserInfo.Warehouse_NumberName);

  Add_Variable('登陆用户编号',UserInfo.LoginUser);
  Add_Variable('登陆用户名称',UserInfo.LoginUser_Name);

  //1、加载 DLL 文件
  DllHandle := LoadFrxDll;
  try
    //2、调用设计报表函数
    @aProc := GetProcAddress(DllHandle, PAnsiChar('RM_PrintRpt'));
    if (@aProc <> nil) then
    begin
      try
        Result := aProc(RptFile, _TmpDataList, _TmpVariables, IsShowPrtDlg, IsGridRpt,RM_PName);
      except
        on E:Exception do
        begin
          Gio.AddShow('打印出错：'+e.Message);
          Result := False;
        end;
      end;
    end;
  finally
    New(aDataList);
    //释放TList
    for i := 0 to _TmpDataList.Count - 1 do
    begin
      aDataList := _TmpDataList.Items[i];
      Dispose(aDataList);
    end;
    _TmpDataList.Clear;
    _TmpVariables.Clear;
    //3、释放 DLL 资源
    FreeFrxDll(DllHandle);
  end;
end;

//从目录选择报表文件
function Open_ReportFile(_Form: TForm;  //窗口
                         Path: string;  //报表目录
                         IsDesign:   Boolean=True  //是否设计报表
                         ): Boolean;
var
  IsGridRpt:  Boolean;
  ReportFile: string;
  i: Integer;
begin
  Result := False;
  if not DirectoryExists(Path) then
  begin
    ShowMessage('报表路径('+path+')不存在!');
    Abort;
  end;
  if (Path = '')or(not DirectoryExists(Path)) then Exit;
  if RightStr(Path, 1) <> '\' then Path := Path + '\';
  ReportFile := Select_Report(Path);
  if (Trim(ReportFile)='')or(not FileExists(Trim(ReportFile))) then Exit;
  IsGridRpt := SameText(ExtractFileExt(ReportFile), '.rls');
  RMDP_RptFile(_Form,ReportFile, IsDesign, IsGridRpt);

  Result := True;
end;
//I3打印方式   许志祥   2014-01-07 
//-------从报表文件设计(预览)报表
Procedure I3_RMDP_RptFile(
                       _Names: array of String;
                       _cds: array   of TDataSet;
                       RptFile:    String;        //报表文件
                       IsDesign:   Boolean=True  //是否设计报表  True 设计  false 预览
                       );
var
  DllHandle: THandle;
  aProc: TDP_RptFile;
  aDataList: PRptDataList;
  IsGridRpt: Boolean;  //表格报表设计器
  i: integer;
begin
  for i := Low(_cds) to High(_cds) do
  begin
    Add_DataSetInfo(_Names[i], TDataSet(_cds[i]));
  end;
  IsGridRpt := SameText(ExtractFileExt(RptFile), '.rls');
  Add_Variable('登录分支机构编号',UserInfo.Branch_Number);
  Add_Variable('登录分支机构名称',UserInfo.Branch_Name);

  Add_Variable('登陆用户编号',UserInfo.LoginUser);
  Add_Variable('登陆用户名称',UserInfo.LoginUser_Name);

  //1、加载 DLL 文件
  DllHandle := LoadFrxDll;
  try
    //2、调用设计报表函数
    @aProc := GetProcAddress(DllHandle, PAnsiChar('DP_RptFile'));
    if (@aProc <> nil) then
      aProc(RptFile, _TmpDataList, _TmpVariables, IsDesign, IsGridRpt);
  finally
    New(aDataList);
    //释放TList
    for i := 0 to _TmpDataList.Count - 1 do
    begin
      aDataList := _TmpDataList.Items[i];
      Dispose(aDataList);
    end;
    _TmpDataList.Clear;
    _TmpVariables.Clear;
    //3、释放 DLL 资源
    FreeFrxDll(DllHandle);
  end;
end;

//直接打印报表文件（无预览）
Function I3_RM_PrintRpt(
                       _Names: array of String;
                       _cds:   array   of TDataSet;
                       RptFile:    String;    //报表文件
                       IsShowPrtDlg: Boolean; //显示打印窗口
                       var RM_PName:   string  //打印机名字
                       ): Boolean;
var
  DllHandle: THandle;
  aProc: TPrintRpt;
  aDataList: PRptDataList;
  IsGridRpt:  Boolean;   //表格报表设计器
  i: integer;
begin
  Result := False;
  for i := Low(_cds) to High(_cds) do
  begin
    Add_DataSetInfo(_Names[i], TDataSet(_cds[i]));
  end;
  IsGridRpt := SameText(ExtractFileExt(RptFile), '.rls');
  Add_Variable('登录分支机构编号',UserInfo.Branch_Number);
  Add_Variable('登录分支机构名称',UserInfo.Branch_Name);

  Add_Variable('登陆用户编号',UserInfo.LoginUser);
  Add_Variable('登陆用户名称',UserInfo.LoginUser_Name);

  //1、加载 DLL 文件
  DllHandle := LoadFrxDll;
  try
    //2、调用设计报表函数
    @aProc := GetProcAddress(DllHandle, PAnsiChar('RM_PrintRpt'));
    if (@aProc <> nil) then
    begin
      try
        Result := aProc(RptFile, _TmpDataList, _TmpVariables, IsShowPrtDlg, IsGridRpt,RM_PName);
      except
        on E:Exception do
        begin
          Gio.AddShow('打印出错：'+e.Message);
          Result := False;
        end;
      end;
    end;
  finally
    New(aDataList);
    //释放TList
    for i := 0 to _TmpDataList.Count - 1 do
    begin
      aDataList := _TmpDataList.Items[i];
      Dispose(aDataList);
    end;
    _TmpDataList.Clear;
    _TmpVariables.Clear;
    //3、释放 DLL 资源
    FreeFrxDll(DllHandle);
  end;
end;


initialization
  _TmpDataList := TList.Create;
  _TmpDataList.Clear;
  _TmpVariables := TStringList.Create;
  _TmpVariables.Clear;

finalization
  _TmpDataList.Free;
  _TmpVariables.Free;
  
end.
