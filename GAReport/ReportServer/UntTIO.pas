{*******************************************************}
{                                                       }
{  单元功能：系统日志单元                               }
{                                                       }
{  版权所有 (C) 2011 公司名                             }
{                                                       }
{*******************************************************}

//    约定：0 - Information
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
    FFileParth: string; //路径
    FText: Cardinal;
    //是否是每次启动程序都创建新的记录文件 否则就是当天只会有1个文件
    FIsCreateToNew: boolean;
    //日志文件名（带路径）
    FLogFileName: string;
  public
    {带入日志文件存放的目录位置}
    constructor Create(Iparth: string);
    destructor Destroy; override;
    {写入内容即可自动记录}
    procedure AddLog(Icon: ansistring; const LogLevel: Integer = 0);
    procedure AddShow(ICon: ansistring; const Args: array of const; const LogLevel: Integer = 0); overload;
    procedure AddShow(ICon: ansistring; const LogLevel: Integer = 0); overload;
    //设置日志路径
    procedure SetFileParth(Iparth: string);
    property IsCreateToNew: boolean read FIsCreateToNew write FIsCreateToNew;
  end;

  TEventShowed = procedure(ILogCon: string) of object;
  TIOer = class(TObject)
  private
    FFileParth: string; //路径
    FIsAddTime: boolean; //是否在每条日志前加时间
    FAfterShowed: TEventShowed; //显示后触发的事件 可以用来做日志
    FIsNeedSplt: boolean; //是否需要分割字符
    FSplitChar: string; //分割的字符
    FLog: TGameLogFile;
    //删除历史日志，默认保留 30 天
    FDelBeforeLog: Double;
    cst:TRTLCriticalSection;
    procedure SetDelBeforeLog(const Value: Double);
    procedure SetFileParth(const Value: string);

  protected
    FClearTager: Word; //显示多少条后清空一下
    function DoAdd(Icon: string; const LogLevel: Integer = 0): Integer; virtual;

  public
    FShower: TComponent; //日志显示容器
    function AddShow(ICon: string; const Args: array of const; const LogLevel:
      Integer = 0): Integer; overload;
    function AddShow(ICon: string; const LogLevel: Integer = 0): Integer; overload;
    {如果带入记录文件存放路径的话就自动生成记录类}
    constructor Create(IShower: TComponent; IlogFIleDir: string = '');
    destructor Destroy; override;
    //显示多少条后清空一下（默认为1000）
    property ClearTager: Word read FClearTager write FClearTager;
    //是否在每条日志前加时间（默认是）
    property IsAddTime: boolean read FIsAddTime write FIsAddTime;
    //是否需要分割字符（默认否）
    property IsNeedSplitChar: boolean read FIsNeedSplt write FIsNeedSplt;
    //分割的字符（默认====）
    property SplitChar: string read FSplitChar write FSplitChar;
    //显示后触发的事件 可以用来做日志
    property AfterShowed: TEventShowed read FAfterShowed write FAfterShowed;
    //删除历史日志，默认保留 30 天
    property DelBeforeLog: Double read FDelBeforeLog write SetDelBeforeLog;
    //日志文件路径
    property FileParth: string read FFileParth write SetFileParth;
  end;

var
  //日志对象
  SysLog: TIOer;

implementation

const
  {分割符号}
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
      raise Exception.Create('错误的路径，日志类对象不能被创建');
  //创建日志文件
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
    //跨天生成新的文件
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
      raise Exception.Create('错误的路径，日志类对象不能被创建');
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
    if LogLevel=1 then qzs:=DateTimeToStr(Now)+' 错误: '
    else qzs:=DateTimeToStr(Now)+' 信息: ';
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
    if Pos('默认容器错误', Icon) = 0 then
      DoAdd('默认容器错误:' + FShower.ClassName);

end;

procedure TGameLogFile.SetFileParth(Iparth: string);
begin
  FFileParth := Iparth;
  if RightStr(FFileParth, 1) <> '\' then
    FFileParth := FFileParth + '\';
  if not DirectoryExists(FFileParth) then
    if not ForceDirectories(FFileParth) then
      raise Exception.Create('错误的路径，日志类对象不能被创建');
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

