unit FZReportServer_TLB;

// ************************************************************************ //
// WARNING                                                                    
// -------                                                                    
// The types declared in this file were generated from data read from a       
// Type Library. If this type library is explicitly or indirectly (via        
// another type library referring to this type library) re-imported, or the   
// 'Refresh' command of the Type Library Editor activated while editing the   
// Type Library, the contents of this file will be regenerated and all        
// manual modifications will be lost.                                         
// ************************************************************************ //

// PASTLWTR : 1.2
// File generated on 2014-05-15 14:34:08 from Type Library described below.

// ************************************************************************  //
// Type Lib: I:\F\MyERP\02_ิดย๋\01_I3ERP\Source\ReportServer\ReportServer.tlb (1)
// LIBID: {ECA706C9-DCB4-465B-AC43-8A9ACE70EA8F}
// LCID: 0
// Helpfile: 
// HelpString: FZReportServer Library
// DepndLst: 
//   (1) v1.0 Midas, (C:\Windows\SysWow64\midas.dll)
//   (2) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
interface

uses Windows, ActiveX, Classes, Graphics, Midas, StdVCL, Variants;
  

// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  FZReportServerMajorVersion = 1;
  FZReportServerMinorVersion = 0;

  LIBID_FZReportServer: TGUID = '{ECA706C9-DCB4-465B-AC43-8A9ACE70EA8F}';

  IID_IDHDM: TGUID = '{8C76B5D3-E486-4845-98CE-8B7FB65B02FA}';
  CLASS_DHDM: TGUID = '{32240006-96B6-4B0D-A99C-9B81A6D11A5C}';
type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  IDHDM = interface;
  IDHDMDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  DHDM = IDHDM;


// *********************************************************************//
// Interface: IDHDM
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {8C76B5D3-E486-4845-98CE-8B7FB65B02FA}
// *********************************************************************//
  IDHDM = interface(IAppServer)
    ['{8C76B5D3-E486-4845-98CE-8B7FB65B02FA}']
    procedure GetStrSql(const vsql: WideString; iType: Shortint); safecall;
    procedure GetStrSql_new(const vsql: WideString; const StrPara: WideString; 
                            const StrPara1: WideString; iType: Shortint); safecall;
    procedure loginInfo(const user_id: WideString; const user_name: WideString; 
                        const ip_address: WideString); safecall;
    procedure ServerLog(const Msg: WideString; msgtype: Shortint); safecall;
    procedure Get_UserName(const _UserID: WideString; var _UserName: WideString); safecall;
    function Chk_UserPassword(const _User_ID: WideString; const _User_Pwd: WideString; 
                              var _User_Name: WideString; var ErrMsg: WideString; logtype: Shortint): Shortint; safecall;
    function Upd_UserPassword(const _User_ID: WideString; const _Old_Pwd: WideString; 
                              const _New_Pwd: WideString; var ErrMsg: WideString): Shortint; safecall;
    procedure Get_Sysinfo(var _SysInfo: WideString); safecall;
    procedure openReport(const report_sql: WideString; report_type: Shortint; var data: OleVariant; 
                         var errormsg: WideString); safecall;
    procedure openReport2(const _SQL: WideString; ReportType: Shortint; var _Data: OleVariant; 
                          var error: WideString); safecall;
    procedure ImportReportScript(const _SQL: WideString; var _Error: WideString); safecall;
    procedure getServerTxtData(const _SQL: WideString; var _inistr: WideString; 
                               var _outFilename: WideString; var _Data: OleVariant; 
                               var _errormsg: WideString; const _userTag: WideString; 
                               _reporttype: Shortint); safecall;
    procedure DeleteTempDir(const _FileName: WideString); safecall;
    procedure getDBInfo(var _IP: WideString; var _ConnStr: WideString); safecall;
  end;

// *********************************************************************//
// DispIntf:  IDHDMDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {8C76B5D3-E486-4845-98CE-8B7FB65B02FA}
// *********************************************************************//
  IDHDMDisp = dispinterface
    ['{8C76B5D3-E486-4845-98CE-8B7FB65B02FA}']
    procedure GetStrSql(const vsql: WideString; iType: {??Shortint}OleVariant); dispid 301;
    procedure GetStrSql_new(const vsql: WideString; const StrPara: WideString; 
                            const StrPara1: WideString; iType: {??Shortint}OleVariant); dispid 302;
    procedure loginInfo(const user_id: WideString; const user_name: WideString; 
                        const ip_address: WideString); dispid 303;
    procedure ServerLog(const Msg: WideString; msgtype: {??Shortint}OleVariant); dispid 304;
    procedure Get_UserName(const _UserID: WideString; var _UserName: WideString); dispid 305;
    function Chk_UserPassword(const _User_ID: WideString; const _User_Pwd: WideString; 
                              var _User_Name: WideString; var ErrMsg: WideString; 
                              logtype: {??Shortint}OleVariant): {??Shortint}OleVariant; dispid 306;
    function Upd_UserPassword(const _User_ID: WideString; const _Old_Pwd: WideString; 
                              const _New_Pwd: WideString; var ErrMsg: WideString): {??Shortint}OleVariant; dispid 307;
    procedure Get_Sysinfo(var _SysInfo: WideString); dispid 308;
    procedure openReport(const report_sql: WideString; report_type: {??Shortint}OleVariant; 
                         var data: OleVariant; var errormsg: WideString); dispid 309;
    procedure openReport2(const _SQL: WideString; ReportType: {??Shortint}OleVariant; 
                          var _Data: OleVariant; var error: WideString); dispid 310;
    procedure ImportReportScript(const _SQL: WideString; var _Error: WideString); dispid 311;
    procedure getServerTxtData(const _SQL: WideString; var _inistr: WideString; 
                               var _outFilename: WideString; var _Data: OleVariant; 
                               var _errormsg: WideString; const _userTag: WideString; 
                               _reporttype: {??Shortint}OleVariant); dispid 312;
    procedure DeleteTempDir(const _FileName: WideString); dispid 313;
    procedure getDBInfo(var _IP: WideString; var _ConnStr: WideString); dispid 314;
    function AS_ApplyUpdates(const ProviderName: WideString; Delta: OleVariant; MaxErrors: Integer; 
                             out ErrorCount: Integer; var OwnerData: OleVariant): OleVariant; dispid 20000000;
    function AS_GetRecords(const ProviderName: WideString; Count: Integer; out RecsOut: Integer; 
                           Options: Integer; const CommandText: WideString; var Params: OleVariant; 
                           var OwnerData: OleVariant): OleVariant; dispid 20000001;
    function AS_DataRequest(const ProviderName: WideString; Data: OleVariant): OleVariant; dispid 20000002;
    function AS_GetProviderNames: OleVariant; dispid 20000003;
    function AS_GetParams(const ProviderName: WideString; var OwnerData: OleVariant): OleVariant; dispid 20000004;
    function AS_RowRequest(const ProviderName: WideString; Row: OleVariant; RequestType: Integer; 
                           var OwnerData: OleVariant): OleVariant; dispid 20000005;
    procedure AS_Execute(const ProviderName: WideString; const CommandText: WideString; 
                         var Params: OleVariant; var OwnerData: OleVariant); dispid 20000006;
  end;

// *********************************************************************//
// The Class CoDHDM provides a Create and CreateRemote method to          
// create instances of the default interface IDHDM exposed by              
// the CoClass DHDM. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoDHDM = class
    class function Create: IDHDM;
    class function CreateRemote(const MachineName: string): IDHDM;
  end;

implementation

uses ComObj;

class function CoDHDM.Create: IDHDM;
begin
  Result := CreateComObject(CLASS_DHDM) as IDHDM;
end;

class function CoDHDM.CreateRemote(const MachineName: string): IDHDM;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_DHDM) as IDHDM;
end;

end.
