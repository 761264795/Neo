program GAReportServer;

uses
  Forms,
  untMain in 'untMain.pas' {frm_main},
  UntRmodbSvr in '..\GobUnit\UntRmodbSvr.pas',
  DCPbase64 in '..\GobUnit\DCPbase64.pas',
  untASIOSvr in '..\untAsioSvr\untASIOSvr.pas',
  utils in 'utils.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tfrm_main, frm_main);
  Application.Run;
end.

