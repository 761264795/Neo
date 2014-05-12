library FillFreight;

{ Important note about DLL memory management: ShareMem must be the
  first unit in your library's USES clause AND your project's (select
  Project-View Source) USES clause if your DLL exports any procedures or
  functions that pass strings as parameters or function results. This
  applies to all strings passed to and from your DLL--even those that
  are nested in records and classes. ShareMem is the interface unit to
  the BORLNDMM.DLL shared memory manager, which must be deployed along
  with your DLL. To avoid using BORLNDMM.DLL, pass string information
  using PChar or ShortString parameters. }

uses
  SysUtils,
  windows,
  Classes,
  Controls,
  Forms,
  DllForm in 'DllForm.pas' {frmDll},
  uDM in '..\uDM.pas' {DM: TDataModule};
  //uBaseEditFrm in '..\..\Base\uBaseEditFrm.pas' {STBaseEdit};

{$R *.res}

function test1(a,b:integer):Integer;
begin
  Result := a+b;
end;

function showDllForm(AHandle: THandle; ACaption: String) : Boolean;
var tmpFrm : TfrmDll;
begin
  Application.Handle := AHandle;
  tmpFrm := TfrmDll.Create(application);
  try
    tmpFrm.Caption := ACaption;
    tmpFrm.ShowModal;
    Result := True;
  finally
    tmpFrm.Free;
  end;
end;

exports
Test1 index 1,  //º¯ÊýË÷ÒýºÅ
showDllForm;
begin
end.
