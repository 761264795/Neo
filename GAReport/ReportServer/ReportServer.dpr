program ReportServer;

uses
  ShareMem,
  Forms,
  main in 'main.pas' {MainFrm},
  FZReportServer_TLB in 'FZReportServer_TLB.pas',
  DHDMfrm in 'DHDMfrm.pas' {DHDM: TRemoteDataModule} {DHDM: CoClass},
  KD_EncFun in 'KD_EncFun.pas',
  utils in 'utils.pas',
  uRegister in 'uRegister.pas' {RegisterFrm},
  uClientInfoFrm in 'uClientInfoFrm.pas' {ClientInfoFrm},
  uSystemSet in 'uSystemSet.pas' {SystemSetFrm},
  UntTIO in 'UntTIO.pas',
  DCPbase64 in 'DCPbase64.pas',
  md5 in 'md5.pas';

{$R *.TLB}
procedure Halt0;
begin
  Halt;
end;
{$R *.res}
begin
  Application.Initialize;
  Application.Title := '���ܱ������������̨';
  Application.CreateForm(TMainFrm, MainFrm);
  Application.Run;
  asm    //����dephi������ʱ����,������ʹ�õ������ؼ�ʹ�õ���
    xor edx, edx
    push ebp
    push OFFSET @@safecode
    push dword ptr fs:[edx]
    mov fs:[edx],esp

    call Halt0
    jmp @@exit;

    @@safecode:
    call Halt0;

    @@exit:
  end;
end.
