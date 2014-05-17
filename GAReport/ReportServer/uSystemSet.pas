unit uSystemSet;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls,IniFiles;

type
  TSystemSetFrm = class(TForm)
    Lb_code: TLabel;
    ed_maxrowCount: TEdit;
    Label1: TLabel;
    ed_maxdatasize: TEdit;
    Label2: TLabel;
    Bevel1: TBevel;
    btn_Save: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure btn_SaveClick(Sender: TObject);
    procedure ed_maxrowCountKeyPress(Sender: TObject; var Key: Char);
    procedure ed_maxdatasizeKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SystemSetFrm: TSystemSetFrm;

implementation
  uses main;
{$R *.dfm}

procedure TSystemSetFrm.FormShow(Sender: TObject);
var
  ini: TIniFile;
begin
  try
    ini := Tinifile.Create(ExtractFilePath(paramstr(0)) + 'STOffice.ini');
    ed_maxdatasize.Text:=ini.ReadString('SystemSet','MaxDataSize','250');
    ed_maxrowCount.Text:=ini.ReadString('SystemSet','MaxRowCount','1000000');
  finally
    ini.Free
  end;
end;

procedure TSystemSetFrm.btn_SaveClick(Sender: TObject);
var
  ini: TIniFile;
begin
  if Trim(ed_maxrowCount.Text)='' then
  begin
    ShowMessage('最大可查询数据行不能为空!');
    ed_maxdatasize.SetFocus;
    Abort;
  end;
  if Trim(ed_maxdatasize.Text)='' then
  begin
    ShowMessage('最大可查询数据包不能为空!');
    ed_maxdatasize.SetFocus;
    Abort;
  end;
  try
    strtoint(Trim(ed_maxrowCount.Text));
    strtoint(Trim(ed_maxdatasize.Text));
  except
    on e:Exception do
    begin
      ShowMessage('输入值不合法!  '+e.Message);
      Abort;
    end;
  end;
  try
    ini := Tinifile.Create(ExtractFilePath(paramstr(0)) + 'STOffice.ini');
    ini.WriteString('SystemSet','MaxDataSize',Trim(ed_maxdatasize.Text));
    ini.WriteString('SystemSet','MaxRowCount',Trim(ed_maxrowCount.Text));
    _MaxRowCount:=strtoint(Trim(ed_maxrowCount.Text));
    _MaxDataSize:=strtoint(Trim(ed_maxdatasize.Text));
    ShowMessage('参数设置成功!     ');
    Self.Close;
  finally
    ini.Free
  end;
end;

procedure TSystemSetFrm.ed_maxrowCountKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (key in ['0'..'9',#8]) then Key:=#0;
end;

procedure TSystemSetFrm.ed_maxdatasizeKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (key in ['0'..'9',#8]) then Key:=#0;
end;

end.
