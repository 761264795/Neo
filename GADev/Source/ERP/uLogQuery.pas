unit uLogQuery;

interface

uses
  SysUtils, Classes, Controls, Forms,
  
  ComCtrls, StdCtrls, cxPC,
  cxButtons, ExtCtrls, Menus, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinOffice2007Black, cxControls, dxGDIPlusClasses, jpeg;

type
  TLogQuery = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    btOK: TcxButton;
    LogPg: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    Image2: TImage;
    Label1: TLabel;
    dt: TDateTimePicker;
    P_log: TMemo;
    data_log: TMemo;
    procedure btOKClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LogQuery: TLogQuery;

implementation
  uses FrmCliDM;
{$R *.dfm}

procedure TLogQuery.btOKClick(Sender: TObject);
var P_logFile,data_logFile,F:string;
   txt:TextFile;
begin
  P_log.Lines.Clear;
  data_log.Lines.Clear;
  P_logFile:=UserInfo.ExePath+'Pos_CliFile\CliLog\'+ FormatDateTime('yyyymmdd',dt.DateTime)+'.txt';
  data_logFile:=UserInfo.ExePath+'Pos_CliFile\DownLog\'+ FormatDateTime('yyyymmdd',dt.DateTime)+'.txt';
  if FileExists(P_logFile) then
  begin
    // P_log.Lines.LoadFromFile(P_logFile);
    { }
    try
      AssignFile(txt,P_logFile);
      Reset(txt);
      P_log.Lines.Clear;
      while not Eof(txt) do
      begin
        Readln(txt,F);
        P_log.Lines.Add(F);
      end;
      if P_log.Lines.Count>0 then
      begin
        P_log.SelStart:=0;

      end;
    finally
      CloseFile(txt);
    end;
    
  end
  else
  begin
    P_log.Lines.Clear;
    P_log.Lines.Add('您查询的日期无日志记录');
  end;
  if FileExists(data_logFile) then
  begin
    //data_log.Lines.LoadFromFile(data_logFile);
    try
      AssignFile(txt,data_logFile);
      Reset(txt);
      data_log.Lines.Clear;
      while not Eof(txt) do
      begin
        Readln(txt,F);
        data_log.Lines.Add(F);
      end;
      if data_log.Lines.Count>0 then  data_log.SelStart:=0;
    finally
      CloseFile(txt);
    end;
  end
  else
  begin
    data_log.Lines.Clear;
    data_log.Lines.Add('您查询的日期无日志记录');
  end;
end;

procedure TLogQuery.FormShow(Sender: TObject);
begin
  dt.DateTime:=Now;
end;

end.
