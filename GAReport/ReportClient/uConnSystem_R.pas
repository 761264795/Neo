unit uConnSystem_R;

interface

uses
  Windows, SysUtils, Classes, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls,IniFiles,ShellAPI;

type
  TConnSystem = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    ed_IP: TEdit;
    ed_port: TEdit;
    Bevel1: TBevel;
    Button1: TButton;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    ini: TIniFile;
  public
    isErrorlogin:Boolean;
    isRlogin:Boolean;
    { Public declarations }
  end;

var
  ConnSystem_R: TConnSystem;

implementation

{$R *.dfm}

procedure TConnSystem.FormShow(Sender: TObject);
begin
   ini:=Tinifile.Create(ExtractFilePath(Application.ExeName) + '\STOffice.ini');
   ed_ip.Text:=ini.ReadString('DBconfig','ServerName','');
   ed_port.Text:=ini.ReadString('DBconfig','port','211');
end;

procedure TConnSystem.Button1Click(Sender: TObject);
begin
  ini.WriteString('DBconfig','ServerName',ed_ip.Text);
  ini.WriteString('DBconfig','port',ed_port.Text);
  ShowMessage('±£´æ³É¹¦!    ');
  if isErrorlogin then
  isRlogin:=True;
  close;
end;

procedure TConnSystem.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if isErrorlogin then Application.Terminate;
  if isRlogin then shellexecute(handle,'open',pchar(Application.ExeName),nil,nil,SW_SHOW);
end;

end.
