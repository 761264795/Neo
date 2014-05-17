unit DHtest_TLB;

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
// File generated on 2011-02-23 21:14:27 from Type Library described below.

// ************************************************************************  //
// Type Lib: D:\code\report\SERVER\DHTest\FZReportServer.tlb (1)
// LIBID: {ECA706C9-DCB4-465B-AC43-8A9ACE70EA8F}
// LCID: 0
// Helpfile: 
// HelpString: DHtest Library
// DepndLst: 
//   (1) v1.0 Midas, (C:\WINDOWS\system32\midas.dll)
//   (2) v2.0 stdole, (C:\WINDOWS\system32\stdole2.tlb)
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
  DHtestMajorVersion = 1;
  DHtestMinorVersion = 0;

  LIBID_DHtest: TGUID = '{ECA706C9-DCB4-465B-AC43-8A9ACE70EA8F}';

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
