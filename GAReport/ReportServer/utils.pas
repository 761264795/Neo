unit utils;

interface

uses
  Windows, Messages, SysUtils;
  const
  MAX_ADAPTER_NAME_LENGTH        = 256;
  MAX_ADAPTER_DESCRIPTION_LENGTH = 128;
  MAX_ADAPTER_ADDRESS_LENGTH     = 8;
type
    TOSVersion = (osUnknown, os95, os98, osME, osNT3, osNT4, os2K, osXP, os2K3);


    TIPAddressString = Array[0..4*4-1] of Char;

    PIPAddrString = ^TIPAddrString;
    TIPAddrString = Record
    Next      : PIPAddrString;
    IPAddress : TIPAddressString;
    IPMask    : TIPAddressString;
    Context   : Integer;
End;

    PIPAdapterInfo = ^TIPAdapterInfo;
    TIPAdapterInfo = Record { IP_ADAPTER_INFO }
    Next                : PIPAdapterInfo;
    ComboIndex          : Integer;
    AdapterName         : Array[0..MAX_ADAPTER_NAME_LENGTH+3] of Char;
    Description         : Array[0..MAX_ADAPTER_DESCRIPTION_LENGTH+3] of Char;
    AddressLength       : Integer;
    Address             : Array[1..MAX_ADAPTER_ADDRESS_LENGTH] of Byte;
    Index               : Integer;
    _Type               : Integer;
    DHCPEnabled         : Integer;
    CurrentIPAddress    : PIPAddrString;
    IPAddressList       : TIPAddrString;
    GatewayList         : TIPAddrString;
End;
 function getMacAddress:string;
 function getRegCode(macadd:string):string;
 function getpassCode(s:string):string;
 function GetOS: TOSVersion;
 procedure KillTrayIcons (Sender: TObject);
implementation
var
    gatewaystr:string;
    strlen:integer;
Function GetAdaptersInfo(AI : PIPAdapterInfo; Var BufLen : Integer) : Integer;
StdCall; External 'iphlpapi.dll' Name 'GetAdaptersInfo';

function GetOS: TOSVersion; //获得系统类型，用来取得托盘句柄
var
    OS: TOSVersionInfo;
begin
    ZeroMemory(@OS, SizeOf(OS));
    OS.dwOSVersionInfoSize := SizeOf(OS);
    GetVersionEx(OS);
    Result := osUnknown;
    if OS.dwPlatformId = VER_PLATFORM_WIN32_NT then begin
        case OS.dwMajorVersion of
            3: Result := osNT3;
            4: Result := osNT4;
            5: begin
                    case OS.dwMinorVersion of
                        0: Result := os2K;
                        1: Result := osXP;
                        2: Result := os2K3;
                    end;
                end;
        end;
    end
    else if (OS.dwMajorVersion = 4) and (OS.dwMinorVersion = 0) then
        Result := os95
    else if (OS.dwMajorVersion = 4) and (OS.dwMinorVersion = 10) then
        Result := os98
    else if (OS.dwMajorVersion = 4) and (OS.dwMinorVersion = 90) then
        Result := osME
end;


function GetSysTrayWnd(): HWND; //返回系统托盘的句柄，适合于Windows各版本
var OS: TOSVersion;
begin
    OS := GetOS;
    Result := FindWindow('Shell_TrayWnd', nil);
    Result := FindWindowEx(Result, 0, 'TrayNotifyWnd', nil);
    if (OS in [osXP, os2K3]) then
        Result := FindWindowEx(Result, 0, 'SysPager', nil);
    if (OS in [os2K, osXP, os2K3]) then
        Result := FindWindowEx(Result, 0, 'ToolbarWindow32', nil);
end;


procedure KillTrayIcons (Sender: TObject);
var
    hwndTrayToolBar: HWND;
    rTrayToolBar: tRect;
    x, y: Word;
begin
    hwndTrayToolBar := GetSysTrayWnd;
    Windows.GetClientRect(hwndTrayToolBar, rTrayToolBar);
    for x := 1 to rTrayToolBar.right - 1 do begin
        for y := 1 to rTrayToolBar.bottom - 1 do begin
            SendMessage(hwndTrayToolBar, WM_MOUSEMOVE, 0, MAKELPARAM(x, y));
        end;
    end;
end;




Function MACToStr(ByteArr : PByte; Len : Integer) : String;
Begin
Result := '';
   While (Len > 0) do Begin
      Result := Result+IntToHex(ByteArr^,2)+'-';
      ByteArr := Pointer(Integer(ByteArr)+SizeOf(Byte));
      Dec(Len);
    End;
    SetLength(Result,Length(Result)-1); { remove last dash }
End;

Function GetAddrString(Addr : PIPAddrString) : String;
  Begin
    Result := '';
    While (Addr <> nil) do Begin
      Result := Result+'A: '+Addr^.IPAddress+' M: '+Addr^.IPMask+#13;
      Addr := Addr^.Next;
    End;
End;

function getMacAddress:string;
var
  AI,Work : PIPAdapterInfo;
  Size    : Integer;
  Res     : Integer;
begin
  Size := 5120;
  GetMem(AI,Size);
  try
    work:=ai;
    Res := GetAdaptersInfo(AI,Size);
    If (Res <> ERROR_SUCCESS) Then
    Begin
      SetLastError(Res);
    End;
    //网卡地址：
    Result:=MACToStr(@Work^.Address,Work^.AddressLength);
  finally
    FreeMem(ai);
  end;
end;
function getRegCode(macadd:string):string;
var cut,ival:Integer;
begin
  if macadd='' then
  begin
    Result:='';
    Exit;
  end;
  cut:=Pos('-',macadd);
  while cut>0 do
  begin
    Delete(macadd,cut,1);
    cut:=Pos('-',macadd);
  end;
  result:=macadd;
end;
function getpassCode(s:string):string;
var ival:Integer;
    r:string;
begin
  s:=Copy(s,2,4);
  ival:=StrToInt('$'+s);
  ival:=ival*8888888;
  r:=IntToStr(ival);
  r:=Copy(r,1,6);
  result:=r;
end;
end.


