unit uSmsSystemSetFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uListFormBaseFrm, Buttons, jpeg, ExtCtrls, cxTextEdit,
  cxControls, cxContainer, cxEdit, cxLabel, DB, DBClient, cxDBEdit;

type
  TSmsSystemSetFrm = class(TListFormBaseFrm)
    p_top: TPanel;
    Image1: TImage;
    btn_Save: TSpeedButton;
    cxLabel2: TcxLabel;
    cxLabel1: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    lb_Des: TcxLabel;
    cdsSms: TClientDataSet;
    dsSms: TDataSource;
    cdsSmsFID: TWideStringField;
    cdsSmsFSMSSPID: TWideStringField;
    cdsSmsFSMSSPPWD: TWideStringField;
    cdsSmsFSMSLOCATION: TWideStringField;
    cdsSmsFSMSPORT: TWideStringField;
    cdsSmsFSMSSERVER: TWideStringField;
    cdsSmsFDESCRIPTION: TWideStringField;
    txt_FSMSSPID: TcxDBTextEdit;
    txt_FSMSSPPWD: TcxDBTextEdit;
    txt_FSMSLOCATION: TcxDBTextEdit;
    txt_FSMSPORT: TcxDBTextEdit;
    txt_FSMSSERVER: TcxDBTextEdit;
    txt_FDESCRIPTION: TcxDBTextEdit;
    procedure FormShow(Sender: TObject);
    procedure btn_SaveClick(Sender: TObject);
    procedure cdsSmsNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    function CHK_Data:Boolean;
  end;

var
  SmsSystemSetFrm: TSmsSystemSetFrm;

implementation
 uses FrmCliDM,Pub_Fun,uMaterDataSelectHelper,StringUtilClass,uDrpHelperClase;
{$R *.dfm}

procedure TSmsSystemSetFrm.FormShow(Sender: TObject);
var materSQL,ErrMsg:string;
  _cds: array[0..0] of TClientDataSet;
  _SQL: array[0..0] of String;
var FilePath : string;
begin
  FilePath := ExtractFilePath(paramstr(0))+'\Img\Tool_bk.jpg';
  if not LoadImage(FilePath,Image1) then  Gio.AddShow('图片路径不存在：'+FilePath);
  inherited;
  try
    Screen.Cursor := crHourGlass;
    _cds[0] := cdsSms;
    _SQL[0] := 'select * from T_BD_I3SmsInfo';
    if not (CliDM.Get_OpenClients_E('',_cds,_SQL,ErrMsg)) then
    begin
      showmsg(self.Handle,'单据配置信息表打开出错:'+ErrMsg,[]);
      Self.Close;
      Abort;
    end;
    if cdsSms.IsEmpty then cdsSms.Append;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TSmsSystemSetFrm.btn_SaveClick(Sender: TObject);
var _cds: array[0..0] of TClientDataSet;
    error : string;
    i,t:Integer;
begin
  try
    Screen.Cursor := crHourGlass;
    if (cdsSms.State in DB.dsEditModes) then cdsSms.Post;

    //提交数据
    if not CHK_Data then Exit;

    _cds[0] := cdsSms;
    try
      if CliDM.Apply_Delta_E(_cds,['T_BD_I3SmsInfo'],error) then
      begin
        Gio.AddShow('短信平台信息提交成功！');
        ShowMsg(Handle, '短信平台信息提交成功！'+error,[]);
      end
      else
      begin
        Gio.AddShow('短信平台信息保存失败!'+error);
        ShowMsg(Handle, '短信平台信息保存失败!'+error,[]);
      end;
    except
      on E: Exception do
      begin
        Gio.AddShow('短信平台信息表提交失败！'+e.Message);
        ShowMsg(Handle, '短信平台信息提交失败！'+e.Message,[]);
        Abort;
      end;
    end;
  finally
    Screen.Cursor := crDefault;
  end;
end;

function TSmsSystemSetFrm.CHK_Data: Boolean;
begin
  Result := True;
  if Trim(txt_FSMSSPID.Text) = '' then
  begin
    ShowMsg(self.Handle,'短信SP帐号不能为空!',[]);
    txt_FSMSSPID.SetFocus;
    Result := False;
    Exit;
  end;
  if Trim(txt_FSMSLOCATION.Text) = '' then
  begin
    ShowMsg(self.Handle,'短信地址不能为空!',[]);
    txt_FSMSLOCATION.SetFocus;
    Result := False;
    Exit;
  end;
  if Trim(txt_FSMSPORT.Text) = '' then
  begin
    ShowMsg(self.Handle,'短信端口号不能为空!',[]);
    txt_FSMSPORT.SetFocus;
    Result := False;
    Exit;
  end;
  if Trim(txt_FSMSSERVER.Text) = '' then
  begin
    ShowMsg(self.Handle,'短信服务器不能为空!',[]);
    txt_FSMSSERVER.SetFocus;
    Result := False;
    Exit;
  end;
end;

procedure TSmsSystemSetFrm.cdsSmsNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FID').AsString := Get_Guid;
end;

end.
