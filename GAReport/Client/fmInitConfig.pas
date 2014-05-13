unit fmInitConfig;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, IniFiles;

type
  TfrmInitConfig = class(TForm)
    Panel1: TPanel;
    edt_TranServer: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    edt_Port: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmInitConfig: TfrmInitConfig;

implementation

{$R *.dfm}

procedure TfrmInitConfig.Button1Click(Sender: TObject);
var
  IniFile: TIniFile;
begin
  IniFile := TINIFile.Create(ExtractFilePath(paramstr(0)) + 'STOffice.ini');
  try
    //服务器地址端口
    IniFile.WriteString('ServerConfig', 'ServerName', Trim(edt_TranServer.Text));
    IniFile.WriteInteger('ServerConfig', 'Port', StrToIntDef(Trim(edt_Port.Text), 211));
    Self.ModalResult := mrOk;
  finally
    IniFile.Free;
  end;
end;

procedure TfrmInitConfig.FormCreate(Sender: TObject);
var
  ServerIP: string;
  SerPort: Integer;
  IniFile: TIniFile;
begin
  //系统设置
  IniFile := TINIFile.Create(ExtractFilePath(paramstr(0)) + 'STOffice.ini');
  try
    ServerIP := IniFile.ReadString('ServerConfig', 'ServerName','127.0.0.1');
    SerPort  := IniFile.ReadInteger('ServerConfig', 'port', 211);
    edt_TranServer.Text := ServerIP;
    edt_Port.Text := IntToStr(SerPort);
  finally
    IniFile.Free;
  end;
end;

end.
