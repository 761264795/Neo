{*******************************************************}
{                                                       }
{  ��Ԫ���ܣ�ϵͳ��־��Ԫ                               }
{                                                       }
{  ��Ȩ���� (C) 2011 ��˾��                             }
{                                                       }
{*******************************************************}

//    Լ����0 - Information
//          1 - Error
//          2 - Warning
//          3 - Notice
//          4 - Report

unit UntTIO;

interface

uses Classes, SysUtils, ComCtrls, StdCtrls, Forms, StrUtils,Windows;

type
  TGameLogFile = class
  private
    FFileParth: string; //·��
    FText: Cardinal;
    //�Ƿ���ÿ���������򶼴����µļ�¼�ļ� ������ǵ���ֻ����1���ļ�
    FIsCreateToNew: boolean;
    //��־�ļ�������·����
    FLogFileName: string;
  public
    {������־�ļ���ŵ�Ŀ¼λ��}
    constructor Create(Iparth: string);
    destructor Destroy; override;
    {д�����ݼ����Զ���¼}
    procedure AddLog(Icon: ansistring; const LogLevel: Integer = 0);
    procedure AddShow(ICon: ansistring; const Args: array of const; const LogLevel: Integer = 0); overload;
    procedure AddShow(ICon: ansistring; const LogLevel: Integer = 0); overload;
    //������־·��
    procedure SetFileParth(Iparth: string);
    property IsCreateToNew: boolean read FIsCreateToNew write FIsCreateToNew;
  end;

  TEventShowed = procedure(ILogCon: string) of object;
  TIOer = class(TObject)
  private
    FFileParth: string; //·��
    FIsAddTime: boolean; //�Ƿ���ÿ����־ǰ��ʱ��
    FAfterShowed: TEventShowed; //��ʾ�󴥷����¼� ������������־
    FIsNeedSplt: boolean; //�Ƿ���Ҫ�ָ��ַ�
    FSplitChar: string; //�ָ���ַ�
    FLog: TGameLogFile;
    //ɾ����ʷ��־��Ĭ�ϱ��� 30 ��
    FDelBeforeLog: Double;
    cst:TRTLCriticalSection;
    procedure SetDelBeforeLog(const Value: Double);
    procedure SetFileParth(const Value: string);

  protected
    FClearTager: Word; //��ʾ�����������һ��
    function DoAdd(Icon: string; const LogLevel: Integer = 0): Integer; virtual;

  public
    FShower: TComponent; //��־��ʾ����
    function AddShow(ICon: string; const Args: array of const; const LogLevel:
      Integer = 0): Integer; overload;
    function AddShow(ICon: string; const LogLevel: Integer = 0): Integer; overload;
    {��������¼�ļ����·���Ļ����Զ����ɼ�¼��}
    constructor Create(IShower: TComponent; IlogFIleDir: string = '');
    destructor Destroy; override;
    //��ʾ�����������һ�£�Ĭ��Ϊ1000��
    property ClearTager: Word read FClearTager write FClearTager;
    //�Ƿ���ÿ����־ǰ��ʱ�䣨Ĭ���ǣ�
    property IsAddTime: boolean read FIsAddTime write FIsAddTime;
    //�Ƿ���Ҫ�ָ��ַ���Ĭ�Ϸ�
    property IsNeedSplitChar: boolean read FIsNeedSplt write FIsNeedSplt;
    //�ָ���ַ���Ĭ��====��
    property SplitChar: string read FSplitChar write FSplitChar;
    //��ʾ�󴥷����¼� ������������־
    property AfterShowed: TEventShowed read FAfterShowed write FAfterShowed;
    //ɾ����ʷ��־��Ĭ�ϱ��� 30 ��
    property DelBeforeLog: Double read FDelBeforeLog write SetDelBeforeLog;
    //��־�ļ�·��
    property FileParth: string read FFileParth write SetFileParth;
  end;

var
  //��־����
  SysLog: TIOer;

implementation

const
  {�ָ����}
  CSplitStr = '===============================================================';
  ClogFileName = '.txt';
  { TGameLogFile }

procedure TGameLogFile.AddLog(Icon: ansistring; const LogLevel: integer = 0);
var
  ltep: string;
begin
  if RightStr(FFileParth, 1) <> '\' then
    FFileParth := FFileParth + '\';
  if not DirectoryExists(FFileParth) then
    if not ForceDirectories(FFileParth) then
      raise Exception.Create('�����·������־������ܱ�����');
  //������־�ļ�
  if FText = 0 then
  begin
    if FIsCreateToNew then
      Ltep := FormatDateTime('yyyymmddhhnnss', Now)
    else
      Ltep := FormatDateTime('yyyymmdd', Now);
    FLogFileName := FFileParth + ltep + ClogFileName;
    if not FileExists(FLogFileName) then
      FText := FileCreate(FLogFileName)
    else
      FText := FileOpen(FLogFileName, fmOpenWrite);
    FileSeek(FText, soFromEnd, soFromEnd);
  end;
  if not FIsCreateToNew then
  begin
    Ltep := FormatDateTime('yyyymmdd', Now);
    //���������µ��ļ�
    if not SameText(FLogFileName, FFileParth + ltep + ClogFileName) then
    begin
      if FText <> 0 then FileClose(FText);
      FLogFileName := FFileParth + ltep + ClogFileName;
      if not FileExists(FLogFileName) then
        FText := FileCreate(FLogFileName)
      else
        FText := FileOpen(FLogFileName, fmOpenWrite);
      FileSeek(FText, soFromEnd, soFromEnd);
    end;
  end;


  Icon := Icon + #13#10;
  FileWrite(FText, PansiChar(Icon)^, Length(ICon));
end;

procedure TGameLogFile.AddShow(ICon: ansistring; const Args: array of const; const
  LogLevel: Integer = 0);
begin
  AddLog(Format(ICon, args));
end;

procedure TGameLogFile.AddShow(ICon: ansistring; const LogLevel: Integer = 0);
begin
  AddLog(ICon);
end;

constructor TGameLogFile.Create(Iparth: string);
begin
  FIsCreateToNew := False;
  FFileParth := Iparth;
  if RightStr(FFileParth, 1) <> '\' then
    FFileParth := FFileParth + '\';
  if not DirectoryExists(FFileParth) then
    if not ForceDirectories(FFileParth) then
      raise Exception.Create('�����·������־������ܱ�����');
  FLogFileName := '';
  FText := 0;
end;

destructor TGameLogFile.Destroy;
var
  RosStr: string;
begin
  try
    RosStr := '-----------------------------------------------------------------' + #13#10;
    FileWrite(FText, PansiChar(RosStr)^, Length(RosStr));
    if FText <> 0 then FileClose(FText);
  except
  end;
  inherited;
end;

{ TGameIO }

function TIOer.AddShow(ICon: string; const Args: array of const; const LogLevel:
  Integer = 0): Integer;

begin
  Result := 0;
  ICon:=Trim(ICon);
  try
    EnterCriticalSection(cst);
    ICon := Format(ICon, Args);
    if FIsAddTime then
      ICon := DateTimeToStr(Now) + ' ' + Icon;
    if FIsNeedSplt then
      ICon := ICon + #13#10 + FSplitChar;
    Result := DoAdd(ICon, LogLevel);
    if assigned(FLog) then
      FLog.AddLog( ICon);
    if Assigned(FAfterShowed) then
      FAfterShowed( ICon);
  finally
    LeaveCriticalSection(cst);
  end;
end;

function TIOer.AddShow(ICon: string; const LogLevel: Integer = 0): Integer;
var qzs:string;
begin
  try
    EnterCriticalSection(cst);
    ICon:=Trim(ICon);
    if FIsAddTime then
      ICon := DateTimeToStr(Now) + ' ' + Icon;
    if FIsNeedSplt then
      ICon := ICon + #13#10 + FSplitChar;
    Result := DoAdd(ICon, LogLevel);
    if LogLevel=1 then qzs:=DateTimeToStr(Now)+' ����: '
    else qzs:=DateTimeToStr(Now)+' ��Ϣ: ';
    if assigned(FLog) then
      FLog.AddLog(qzs+ICon);
    if Assigned(FAfterShowed) then
      FAfterShowed(qzs+ICon);
  finally
    LeaveCriticalSection(cst);
  end;
end;

constructor TIOer.Create(IShower: TComponent; IlogFIleDir: string);
begin
  InitializeCriticalSection(cst);
  FClearTager := 1000;
  IsAddTime := False;
  FIsNeedSplt := False;
  FSplitChar := CSplitStr;
  FShower := IShower;
  FDelBeforeLog := 30;
  FFileParth := IlogFIleDir;
  if IlogFIleDir <> '' then
    FLog := TGameLogFile.Create(IlogFIleDir);
end;

destructor TIOer.Destroy;
begin
  DeleteCriticalSection(cst);
  if Assigned(FLog) then
    FLog.Free;
  inherited;
end;

function TIOer.DoAdd(Icon: string; const LogLevel: Integer = 0): Integer;
var
  ListItem: TListItem;
  Is_ClearLog: Boolean;
begin
  Is_ClearLog := False;
  Result := -1;
  if Application.Terminated then exit;
  if (FShower = nil) then exit;
  if (FShower is TMemo) then
  begin
    Result := TMemo(FShower).Lines.Add(Icon);
    if Result >= FClearTager then
    begin
      TMemo(FShower).Clear;
      Is_ClearLog := True;
    end;
  end
  else if (FShower is TRichEdit) then
  begin
    Result := TRichEdit(FShower).Lines.Add(Icon);
    if Result >= FClearTager then
    begin
      TRichEdit(FShower).Clear;
      Is_ClearLog := True;
    end;
  end
  else if (FShower is TListBox) then
  begin
    Result := TListBox(FShower).Items.Add(Icon);
    if Result >= FClearTager then
    begin
      TListBox(FShower).Clear;
      Is_ClearLog := True;
    end;
  end
  else if (FShower is TListView) then
  begin
    ListItem := TListView(FShower).Items.Add;
    ListItem.Caption := FormatDateTime('yyyy-mm-dd hh:nn:ss', Now);
    ListItem.ImageIndex := LogLevel;
    ListItem.SubItems.Add(Icon);
    if TListView(FShower).Items.Count >= FClearTager then
    begin
      TListView(FShower).Items.Clear;
      Is_ClearLog := True;
    end;
  end
  else
    if Pos('Ĭ����������', Icon) = 0 then
      DoAdd('Ĭ����������:' + FShower.ClassName);

end;

procedure TGameLogFile.SetFileParth(Iparth: string);
begin
  FFileParth := Iparth;
  if RightStr(FFileParth, 1) <> '\' then
    FFileParth := FFileParth + '\';
  if not DirectoryExists(FFileParth) then
    if not ForceDirectories(FFileParth) then
      raise Exception.Create('�����·������־������ܱ�����');
end;

procedure TIOer.SetDelBeforeLog(const Value: Double);
begin
  FDelBeforeLog := Value;
end;

procedure TIOer.SetFileParth(const Value: string);
begin
  FFileParth := Value;
  if Assigned(FLog) then
    FLog.SetFileParth(FFileParth)
  else
    FLog := TGameLogFile.Create(FFileParth); 
end;

initialization

finalization

end.

