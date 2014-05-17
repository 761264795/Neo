unit VersionId;

interface
uses
  Windows, SysUtils, 
  Dialogs ,Nb30;
type
    TNBLanaResources = (lrAlloc, lrFree);
type
    PMACAddress = ^TMACAddress;
    TMACAddress = array[0..5] of Byte;
function GetHDserial:string ;
function GetVersionStr(fns:string):string;
function GetMACAddress(LanaNum: Byte; MACAddress: PMACAddress): Byte;
function GetLanaEnum(LanaEnum: PLanaEnum): Byte;
function ResetLana(LanaNum, ReqSessions, ReqNames: Byte;
  LanaRes: TNBLanaResources): Byte;

function NbGetMac():string ;
function WinVersion:Cardinal;//获得操作系统版本
Function kbGetCpuID():string;
function GetCpuInfo:string;
function BiosInfo:string;
function GetBiosInfoAsText: string;

implementation
function GetBiosInfoAsText: string;
  var
    p, q: pchar; 
  begin 
    q := nil; 
    p := PChar(Ptr($FE000)); 
    repeat 
      if q <> nil then begin 
        if not (p^ in [#10, #13, #32..#126, #169, #184]) then begin 
          if (p^ = #0) and (p - q >= 8) then begin 
            Result := Result + TrimRight(String(q)) + #13#10; 
          end; 
          q := nil; 
        end; 
      end else 
        if p^ in [#33..#126, #169, #184] then 
          q := p; 
      inc(p); 
    until p > PChar(Ptr($FFFFF)); 
    Result := TrimRight(Result); 
  end; 


function GetVersionStr(fns:string):string ;
var
    ver,v1,v2:Cardinal ;
begin
  if fileexists(fns) then
  begin
    Ver:=GetFIleVersion(fns);
    v1:=(ver and $FFFF0000) shr 16 ;
    v2:=(ver and $0000FFFF) ; ;
//    v3:=(ver and $0000FF00) shr 8 ;
//    v4:=(ver and $000000FF) ;
    result:=inttostr(v1)+'.'+inttostr(v2);//+'.'+inttostr(v3)+'.'+inttostr(v4);
  end else result:='' ;
end ;
function GetMACAddress(LanaNum: Byte; MACAddress: PMACAddress): Byte;
var
  AdapterStatus: PAdapterStatus;
  StatNCB: PNCB;
begin
 
  New(StatNCB);
  ZeroMemory(StatNCB, SizeOf(TNCB));
  StatNCB.ncb_length := SizeOf(TAdapterStatus) + 255 * SizeOf(TNameBuffer);
  GetMem(AdapterStatus, StatNCB.ncb_length);
try
    with StatNCB^ do
    begin
      ZeroMemory(MACAddress, SizeOf(TMACAddress));
      ncb_buffer := PChar(AdapterStatus);
      ncb_callname := '* ' + #0;
      ncb_lana_num := Char(LanaNum);
      ncb_command := Char(NCBASTAT);
      NetBios(StatNCB);
      Result := Byte(ncb_cmd_cplt);
      if Result = NRC_GOODRET then
      MoveMemory(MACAddress, AdapterStatus, SizeOf(TMACAddress));
    end;
finally
    FreeMem(AdapterStatus);
    Dispose(StatNCB);
end;
end;
function ResetLana(LanaNum, ReqSessions, ReqNames: Byte;
  LanaRes: TNBLanaResources): Byte;
var
  ResetNCB: PNCB;
begin
  New(ResetNCB);
  ZeroMemory(ResetNCB, SizeOf(TNCB));
  try
    with ResetNCB^ do
    begin
      ncb_lana_num := Char(LanaNum);        // Set Lana_Num
      ncb_lsn := Char(LanaRes);             // Allocation of new resources
      ncb_callname[0] := Char(ReqSessions); // Query of max sessions
      ncb_callname[1] := #0;                // Query of max NCBs (default)
      ncb_callname[2] := Char(ReqNames);    // Query of max names
      ncb_callname[3] := #0;                // Query of use NAME_NUMBER_1
      ncb_command  := Char(NCBRESET);
      NetBios(ResetNCB);
      Result := Byte(ncb_cmd_cplt);
    end;
  finally
    Dispose(ResetNCB);
  end;
end;
function GetLanaEnum(LanaEnum: PLanaEnum): Byte;
var
  LanaEnumNCB: PNCB;
begin
  New(LanaEnumNCB);
  ZeroMemory(LanaEnumNCB, SizeOf(TNCB));
  try
    with LanaEnumNCB^ do
    begin
      ncb_buffer := PChar(LanaEnum);
      ncb_length := SizeOf(TLanaEnum);
      ncb_command  := Char(NCBENUM);
      NetBios(LanaEnumNCB);
      Result := Byte(ncb_cmd_cplt);
    end;
  finally
    Dispose(LanaEnumNCB);
  end;
end;



function NbGetMac():string ;
  function hexbl(by:byte):string;
    begin
      result:=format('%x',[by]);
      if length(result)<2 then
        result:='0'+result;
    end;
var
  ncb:Tncb;
  i,j:integer;
  adapter:TAdapterstatus;
  lanaenum:TLanaEnum;
  strx:string;
begin
  zeromemory(@ncb,sizeof(ncb));
  ncb.ncb_command:=chr(ncbenum);
  netbios(@ncb);
  ncb.ncb_buffer:=@lanaenum;
  ncb.ncb_length:=sizeof(lanaenum);
  ncb.ncb_command :=chr(ncbenum);
  netbios(@ncb);
  strx:='' ;
  for i:=0 to ord(lanaenum.length)-1 do
  begin
      zeromemory(@ncb,sizeof(ncb));
      ncb.ncb_command:=chr(ncbreset);
      ncb.ncb_lana_num:=lanaenum.lana[i];
      netbios(@ncb);
      zeromemory(@ncb,sizeof(ncb));
      ncb.ncb_command:=chr(ncbastat);
      ncb.ncb_lana_num:=lanaenum.lana[i];
      strcopy(ncb.ncb_callname,'*');
      ncb.ncb_buffer :=@adapter;
      ncb.ncb_length :=sizeof(adapter);
      netbios(@ncb);
      for j:=0 to 5 do
      begin
         //if j>0 then strx:=strx+'-';
         strx:=strx+hexbl(byte(adapter.adapter_address[j]));
      end;
      strx:=strx + ';' ;
   end;
   if strx<>'' then strx:=copy(strx,1,length(strx) - 1) ;
   result:=strx;
end;

function WinVersion:Cardinal;//获得操作系统版本
var
  OSVI : OSVERSIONINFO;
begin
  ReSult := 4;//其他操作系统
  OSVI.dwOSVersionInfoSize:=SizeOf(OSVERSIONINFO);
  GetVersionEx(OSVI);
  if OSVI.dwPlatformId=2 then
    begin
      case OSVI.dwMajorVersion of
      4:Result:=2;
      5:Result:=3;
      end;
    end
  else
    Result:=OSVI.dwPlatformId;
//  返回值: 为0表示为win3x系统; 为1表示为win9x系统; 为2表示为winNT;  为3表示为win2000系统;
//if Win32Platform = VER_PLATFORM_WIN32_WINDOWS then  //VER_PLATFORM_WIN32_NT
//      Copyfile(Pchar(strSyspath + 'SMARTVSD.VXD'),Pchar(strSyspath+'iosubsys\SMARTVSD.VXD'),False);
end;

//取CPU序号
Function kbGetCpuID():string;
type
  TCPUID = array[1..4] of Longint;
var
   CPUIDinfo : TCPUID;
    function IsCPUID_Available : Boolean;
    asm
      PUSHFD       {direct access to flags no possible, only via stack}
      POP     EAX     {flags to EAX}
      MOV     EDX,EAX   {save current flags}
      XOR     EAX,$200000; {not ID bit}
      PUSH    EAX     {onto stack}
      POPFD        {from stack to flags, with not ID bit}
      PUSHFD       {back to stack}
      POP     EAX     {get back to EAX}
      XOR     EAX,EDX   {check if ID bit affected}
      JZ      @exit    {no, CPUID not availavle}
      MOV     AL,True   {Result=True}
      @exit:
    end;
    function GetCPUIDSN : TCPUID; assembler;
    asm
      PUSH    EBX         {Save affected register}
      PUSH    EDI
      MOV     EDI,EAX     {@Resukt}
      MOV     EAX,1
      DW      $A20F       {CPUID Command}
      STOSD             {CPUID[1]}
      MOV     EAX,EBX
      STOSD               {CPUID[2]}
      MOV     EAX,ECX
      STOSD               {CPUID[3]}
      MOV     EAX,EDX
      STOSD               {CPUID[4]}
      POP     EDI     {Restore registers}
      POP     EBX
    end;
begin
    if IsCPUID_Available then
       begin
         CPUIDinfo:=GetCPUIDSN;
       end
    else begin       //早期cpu无ID
       CPUIDinfo[1] := 0136;     
       CPUIDinfo[4] := 66263155;
       Result := '';
    end;
    result:=IntToHex((CPUIDinfo[1]+CPUIDinfo[2]+CPUIDinfo[3]+CPUIDinfo[4]),8);
end;

function GetCpuInfo:string;
var
   R: array[0..19] of Char;
   CpuID: Integer;
begin
  CpuID:=0 ;
  FillChar(R, 20, 0);
  asm
    mov eax, 0
    db 0fh, 0a2h               // 其实就是cpuid汇编指令
    mov dword ptr R[0],  ebx
    mov dword ptr R[4],  edx
    mov dword ptr R[8],  ecx
    mov eax, 1
    db 0fh, 0a2h               // cpuid
    mov CpuID, edx
  end;
  ShowMessage('CPU制造商为：' + R);
  ShowMessage('序列号为：' + IntToStr(CpuID));
  //result:='SerialNo:' + IntToStr(CpuID);
end;

function BiosInfo:string;
const
  Subkey: string = 'Hardware\description\system';
var
  hkSB: HKEY;
  rType: LongInt;
  ValueSize, OrigSize: Longint;
  ValueBuf: array[0..1000] of char;
  strRet:string ;
  procedure ParseValueBuf(const VersionType: string);
  var
    I, Line: Cardinal;
    S: string;
  begin
    i := 0;
    Line := 0;
    while ValueBuf[i] <> #0 do
    begin
      S := StrPas(@ValueBuf[i]); // move the Pchar into a string
      Inc(Line);
      //Memo1.Lines.Append(Format('%s Line %d = %s',[VersionType, Line, S])); // add it to a Memo
        strRet:=strRet + 'VersionType:' + Format('%s Line %d = %s',[VersionType, Line, S]) + '; ';
      inc(i, Length(S) + 1);
      // to point to next sz, or to #0 if at
    end
  end;
//end;

  begin
    strRet:='' ;
    if RegOpenKeyEx(HKEY_LOCAL_MACHINE, PChar(Subkey), 0,
                    KEY_READ, hkSB) = ERROR_SUCCESS then
    try
      OrigSize := sizeof(ValueBuf);
      ValueSize := OrigSize;
      rType := REG_MULTI_SZ;
      if RegQueryValueEx(hkSB, 'SystemBiosVersion', nil, @rType,
        @ValueBuf, @ValueSize) = ERROR_SUCCESS then
        ParseValueBuf('System BIOS Version');

      ValueSize := OrigSize;
      rType := REG_SZ;
      if RegQueryValueEx(hkSB, 'SystemBIOSDate', nil, @rType,
        @ValueBuf, @ValueSize) = ERROR_SUCCESS then
        //Memo1.Lines.Append('System BIOS Date ' + ValueBuf);
        strRet:=strRet + ValueBuf ;

        {
      ValueSize := OrigSize;
      rType := REG_MULTI_SZ;
      if RegQueryValueEx(hkSB, 'VideoBiosVersion', nil, @rType,
        @ValueBuf, @ValueSize) = ERROR_SUCCESS then
        ParseValueBuf('Video BIOS Version');

      ValueSize := OrigSize;
      rType := REG_SZ;
      if RegQueryValueEx(hkSB, 'VideoBIOSDate', nil, @rType,
        @ValueBuf, @ValueSize) = ERROR_SUCCESS then
        //Memo1.Lines.Append(''Video BIOS Date '' + ValueBuf);
        strRet:=strRet + 'Video BIOS Date:'+ValueBuf ;
       }
  finally
      RegCloseKey(hkSB);
  end;
  result:=strRet ;
end;
 


function  GetHDserial:string ;
var
  SerialNum : dword;
  a, b : dword;
  Buffer  ,fname : array [0..255] of char;
begin
  if GetVolumeInformation('c:\', Buffer, SizeOf(Buffer), @SerialNum, a, b, fname, sizeof(fname)) then
      result:= IntToStr(SerialNum) else
      result:= '' ;
end;

end.
