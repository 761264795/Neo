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
  if not LoadImage(FilePath,Image1) then  Gio.AddShow('ͼƬ·�������ڣ�'+FilePath);
  inherited;
  try
    Screen.Cursor := crHourGlass;
    _cds[0] := cdsSms;
    _SQL[0] := 'select * from T_BD_I3SmsInfo';
    if not (CliDM.Get_OpenClients_E('',_cds,_SQL,ErrMsg)) then
    begin
      showmsg(self.Handle,'����������Ϣ��򿪳���:'+ErrMsg,[]);
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

    //�ύ����
    if not CHK_Data then Exit;

    _cds[0] := cdsSms;
    try
      if CliDM.Apply_Delta_E(_cds,['T_BD_I3SmsInfo'],error) then
      begin
        Gio.AddShow('����ƽ̨��Ϣ�ύ�ɹ���');
        ShowMsg(Handle, '����ƽ̨��Ϣ�ύ�ɹ���'+error,[]);
      end
      else
      begin
        Gio.AddShow('����ƽ̨��Ϣ����ʧ��!'+error);
        ShowMsg(Handle, '����ƽ̨��Ϣ����ʧ��!'+error,[]);
      end;
    except
      on E: Exception do
      begin
        Gio.AddShow('����ƽ̨��Ϣ���ύʧ�ܣ�'+e.Message);
        ShowMsg(Handle, '����ƽ̨��Ϣ�ύʧ�ܣ�'+e.Message,[]);
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
    ShowMsg(self.Handle,'����SP�ʺŲ���Ϊ��!',[]);
    txt_FSMSSPID.SetFocus;
    Result := False;
    Exit;
  end;
  if Trim(txt_FSMSLOCATION.Text) = '' then
  begin
    ShowMsg(self.Handle,'���ŵ�ַ����Ϊ��!',[]);
    txt_FSMSLOCATION.SetFocus;
    Result := False;
    Exit;
  end;
  if Trim(txt_FSMSPORT.Text) = '' then
  begin
    ShowMsg(self.Handle,'���Ŷ˿ںŲ���Ϊ��!',[]);
    txt_FSMSPORT.SetFocus;
    Result := False;
    Exit;
  end;
  if Trim(txt_FSMSSERVER.Text) = '' then
  begin
    ShowMsg(self.Handle,'���ŷ���������Ϊ��!',[]);
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
