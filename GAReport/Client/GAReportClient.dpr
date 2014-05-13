program GAReportClient;

uses
  Forms,
  untMain in 'untMain.pas' {frm_main},
  UntRemSql in '..\GobUnit\UntRemSql.pas',
  untASIOSvr in '..\untAsioSvr\untASIOSvr.pas',
  fmLogin in 'fmLogin.pas' {frmLogin},
  fmInitConfig in 'fmInitConfig.pas' {frmInitConfig};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tfrm_main, frm_main);
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.CreateForm(TfrmInitConfig, frmInitConfig);
  Application.Run;
end.
