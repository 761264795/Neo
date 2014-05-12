{*******************************************************************************
  ��Ԫ���ƣ�
  ���ܣ�
  ˵����1�����ڵ��ñ��ļ��ڵĺ���ǰ������Ŀ�ļ���Uses�Ӿ�ĵ�һ�м� ShareMem��
           ������Ϣ��ο�Delphi�еĶ�̬���ӿ�������ַ�����Ϊ����ʱ��ע������
  ���ߣ�����ƽ
  E_Mail: Tang_717@163.com
*******************************************************************************}
unit RMReport_lib;

interface

uses Forms, Windows, Dialogs, Classes, SysUtils, Graphics, DB, ADODB, StrUtils,
  Controls, Variants, FrmSelectReport;

const
  ReportLib = 'RHReport.dll';

  //���ݼ��ṹ
  type
    PRptDataList = ^AList;
    AList = record
      alias: string;     //���ݼ�����
      DataSet: Pointer;  //���ݼ�
    end;

type
  TProc = procedure;
  TInitDllProc = procedure(Handle:THandle);
  TDP_RptFile = procedure(RptFile:    String;   //�����ļ�
                          DataList:   TList;    //���ݼ�
                          aVariables: TStrings; //�����б�
                          IsDesign:   Boolean;  //�Ƿ���Ʊ���
                          IsGridRpt:  Boolean   //��񱨱������
                          );
  TPrintRpt = Function(RptFile:    String;    //�����ļ�
                       DataList:   TList;     //���ݼ�
                       aVariables: TStrings;  //�����б�
                       IsShowPrtDlg: Boolean; //��ʾ��ӡ����
                       IsGridRpt:  Boolean;   //��񱨱������
                       var RM_PName:   string     //��ӡ������
                       ): Boolean;
  Function LoadFrxDll: THandle; //���� DLL �ļ�
  Function FreeFrxDll(DllHandle: THandle): Boolean;  //�ͷ�DLL�ļ�

  //============================================================================
  //    ����Ŀ��ʹ��ʱ��������ĺ�������
  //============================================================================

  //������ݼ�����
  function Add_DataSetInfo(alias: string; aDataSet: TDataSet): Boolean;
  //��ӱ���
  function Add_Variable(Variable, Value: string): Boolean;

  //�ӱ����ļ����(Ԥ��)����
  Procedure RMDP_RptFile(_Form: TForm;  //����
                         RptFile:    String;        //�����ļ�
                         IsDesign:   Boolean=True;  //�Ƿ���Ʊ���
                         IsGridRpt:  Boolean=False  //��񱨱������
                         );

  //ֱ�Ӵ�ӡ�����ļ�����Ԥ����
  Function RM_PrintRpt(_Form: TForm;  //����
                       RptFile:    String;    //�����ļ�
                       IsShowPrtDlg: Boolean; //��ʾ��ӡ����
                       IsGridRpt:  Boolean;   //��񱨱������
                       var RM_PName:   string     //��ӡ������
                       ): Boolean;
  //��Ŀ¼ѡ�񱨱��ļ���ָ��Ŀ¼���Զ���Ŀ¼����������ģ�棬���ݼ��Զ��Ӵ������������ص������У�
  function Open_ReportFile(_Form: TForm;  //����
                           Path: string;  //����Ŀ¼
                           IsDesign:   Boolean=True  //�Ƿ���Ʊ���
                           ): Boolean;
//=============================================================================
//I3��ӡ��ʽ   ��־��   2014-01-07
//-------�ӱ����ļ����(Ԥ��)����
  Procedure I3_RMDP_RptFile(
                       _Names: array of String;
                       _cds:   array   of TDataSet;
                       RptFile:    String;        //�����ļ�
                       IsDesign:   Boolean=True  //�Ƿ���Ʊ���  True ���  false Ԥ��
                       );
//ֱ�Ӵ�ӡ�����ļ�����Ԥ����
  Function I3_RM_PrintRpt(
                       _Names: array of String;
                       _cds:   array   of TDataSet;
                       RptFile:    String;    //�����ļ�
                       IsShowPrtDlg: Boolean; //��ʾ��ӡ����
                       var RM_PName:   string     //��ӡ������
                       ): Boolean;
//============================================================================
  var
    _TmpDataList: TList;        //���ݼ��б�
    _TmpVariables: TStrings;    //�����б�

implementation
   uses FrmCliDM;
//���� DLL �ļ�
Function LoadFrxDll: THandle;
var
  DllHandle: THandle;
  aProc: TInitDllProc;
begin
  Result := 0;
  DllHandle := LoadLibrary(PAnsiChar(ExtractFilePath(Paramstr(0))+ReportLib));
  if (DllHandle = HINSTANCE_ERROR) or (DllHandle = 0) then
  begin
    MessageBox(Application.Handle,pchar('����DLL�ļ�ʧ�ܣ�'),pchar('ϵͳ��ʾ'),mb_OK+mb_iconError);
    Abort;
  end;
  @aProc := GetProcAddress(DllHandle, PAnsiChar('FR_InitAppHandle'));
  if (@aProc <> nil) then aProc(Application.Handle);
  Result := DllHandle;
end;

Function FreeFrxDll(DllHandle: THandle): Boolean;  //�ͷ�DLL�ļ�
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

//��ӱ���
function Add_Variable(Variable, Value: string): Boolean;
begin
  Result := False;
  if Trim(Variable) = '' then Exit;
  _TmpVariables.Add(Trim(Variable) + '=' + Trim(Value));
  Result := True;
end;

//������ݼ�����
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

//�ӱ����ļ����(Ԥ��)����
Procedure RMDP_RptFile(_Form: TForm;  //����
                       RptFile:    String;        //�����ļ�
                       IsDesign:   Boolean=True;  //�Ƿ���Ʊ���  True ���  false Ԥ��
                       IsGridRpt:  Boolean=False  //��񱨱������
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

  Add_Variable('���̵绰',UserInfo.WareHouser_TELPHONE);
  Add_Variable('���̵�ַ',UserInfo.WareHouser_ADDRESS);
  Add_Variable('���̱��',UserInfo.Warehouse_Number);
  //Add_Variable('��������',UserInfo.Warehouse_Name);
  Add_Variable('���̱��:����',UserInfo.Warehouse_NumberName);

  Add_Variable('��½�û����',UserInfo.LoginUser);
  Add_Variable('��½�û�����',UserInfo.LoginUser_Name);

  //1������ DLL �ļ�
  DllHandle := LoadFrxDll;
  try
    //2��������Ʊ�����
    @aProc := GetProcAddress(DllHandle, PAnsiChar('DP_RptFile'));
    if (@aProc <> nil) then
      aProc(RptFile, _TmpDataList, _TmpVariables, IsDesign, IsGridRpt);
  finally
    New(aDataList);
    //�ͷ�TList
    for i := 0 to _TmpDataList.Count - 1 do
    begin
      aDataList := _TmpDataList.Items[i];
      Dispose(aDataList);
    end;
    _TmpDataList.Clear;
    _TmpVariables.Clear;
    //3���ͷ� DLL ��Դ
    FreeFrxDll(DllHandle);
  end;
end;

//��ӡ�����ļ�
Function RM_PrintRpt(_Form: TForm;  //����
                     RptFile:    String;    //�����ļ�
                     IsShowPrtDlg: Boolean; //��ʾ��ӡ����
                     IsGridRpt:  Boolean;   //��񱨱������
                     var RM_PName:   string     //��ӡ������
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

  Add_Variable('���̵绰',UserInfo.WareHouser_TELPHONE);
  Add_Variable('���̵�ַ',UserInfo.WareHouser_ADDRESS);
  Add_Variable('���̱��',UserInfo.Warehouse_Number);
  //Add_Variable('��������',UserInfo.Warehouse_Name);
  Add_Variable('���̱��:����',UserInfo.Warehouse_NumberName);

  Add_Variable('��½�û����',UserInfo.LoginUser);
  Add_Variable('��½�û�����',UserInfo.LoginUser_Name);

  //1������ DLL �ļ�
  DllHandle := LoadFrxDll;
  try
    //2��������Ʊ�����
    @aProc := GetProcAddress(DllHandle, PAnsiChar('RM_PrintRpt'));
    if (@aProc <> nil) then
    begin
      try
        Result := aProc(RptFile, _TmpDataList, _TmpVariables, IsShowPrtDlg, IsGridRpt,RM_PName);
      except
        on E:Exception do
        begin
          Gio.AddShow('��ӡ����'+e.Message);
          Result := False;
        end;
      end;
    end;
  finally
    New(aDataList);
    //�ͷ�TList
    for i := 0 to _TmpDataList.Count - 1 do
    begin
      aDataList := _TmpDataList.Items[i];
      Dispose(aDataList);
    end;
    _TmpDataList.Clear;
    _TmpVariables.Clear;
    //3���ͷ� DLL ��Դ
    FreeFrxDll(DllHandle);
  end;
end;

//��Ŀ¼ѡ�񱨱��ļ�
function Open_ReportFile(_Form: TForm;  //����
                         Path: string;  //����Ŀ¼
                         IsDesign:   Boolean=True  //�Ƿ���Ʊ���
                         ): Boolean;
var
  IsGridRpt:  Boolean;
  ReportFile: string;
  i: Integer;
begin
  Result := False;
  if not DirectoryExists(Path) then
  begin
    ShowMessage('����·��('+path+')������!');
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
//I3��ӡ��ʽ   ��־��   2014-01-07 
//-------�ӱ����ļ����(Ԥ��)����
Procedure I3_RMDP_RptFile(
                       _Names: array of String;
                       _cds: array   of TDataSet;
                       RptFile:    String;        //�����ļ�
                       IsDesign:   Boolean=True  //�Ƿ���Ʊ���  True ���  false Ԥ��
                       );
var
  DllHandle: THandle;
  aProc: TDP_RptFile;
  aDataList: PRptDataList;
  IsGridRpt: Boolean;  //��񱨱������
  i: integer;
begin
  for i := Low(_cds) to High(_cds) do
  begin
    Add_DataSetInfo(_Names[i], TDataSet(_cds[i]));
  end;
  IsGridRpt := SameText(ExtractFileExt(RptFile), '.rls');
  Add_Variable('��¼��֧�������',UserInfo.Branch_Number);
  Add_Variable('��¼��֧��������',UserInfo.Branch_Name);

  Add_Variable('��½�û����',UserInfo.LoginUser);
  Add_Variable('��½�û�����',UserInfo.LoginUser_Name);

  //1������ DLL �ļ�
  DllHandle := LoadFrxDll;
  try
    //2��������Ʊ�����
    @aProc := GetProcAddress(DllHandle, PAnsiChar('DP_RptFile'));
    if (@aProc <> nil) then
      aProc(RptFile, _TmpDataList, _TmpVariables, IsDesign, IsGridRpt);
  finally
    New(aDataList);
    //�ͷ�TList
    for i := 0 to _TmpDataList.Count - 1 do
    begin
      aDataList := _TmpDataList.Items[i];
      Dispose(aDataList);
    end;
    _TmpDataList.Clear;
    _TmpVariables.Clear;
    //3���ͷ� DLL ��Դ
    FreeFrxDll(DllHandle);
  end;
end;

//ֱ�Ӵ�ӡ�����ļ�����Ԥ����
Function I3_RM_PrintRpt(
                       _Names: array of String;
                       _cds:   array   of TDataSet;
                       RptFile:    String;    //�����ļ�
                       IsShowPrtDlg: Boolean; //��ʾ��ӡ����
                       var RM_PName:   string  //��ӡ������
                       ): Boolean;
var
  DllHandle: THandle;
  aProc: TPrintRpt;
  aDataList: PRptDataList;
  IsGridRpt:  Boolean;   //��񱨱������
  i: integer;
begin
  Result := False;
  for i := Low(_cds) to High(_cds) do
  begin
    Add_DataSetInfo(_Names[i], TDataSet(_cds[i]));
  end;
  IsGridRpt := SameText(ExtractFileExt(RptFile), '.rls');
  Add_Variable('��¼��֧�������',UserInfo.Branch_Number);
  Add_Variable('��¼��֧��������',UserInfo.Branch_Name);

  Add_Variable('��½�û����',UserInfo.LoginUser);
  Add_Variable('��½�û�����',UserInfo.LoginUser_Name);

  //1������ DLL �ļ�
  DllHandle := LoadFrxDll;
  try
    //2��������Ʊ�����
    @aProc := GetProcAddress(DllHandle, PAnsiChar('RM_PrintRpt'));
    if (@aProc <> nil) then
    begin
      try
        Result := aProc(RptFile, _TmpDataList, _TmpVariables, IsShowPrtDlg, IsGridRpt,RM_PName);
      except
        on E:Exception do
        begin
          Gio.AddShow('��ӡ����'+e.Message);
          Result := False;
        end;
      end;
    end;
  finally
    New(aDataList);
    //�ͷ�TList
    for i := 0 to _TmpDataList.Count - 1 do
    begin
      aDataList := _TmpDataList.Items[i];
      Dispose(aDataList);
    end;
    _TmpDataList.Clear;
    _TmpVariables.Clear;
    //3���ͷ� DLL ��Դ
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
