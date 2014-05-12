unit Frm_Ping;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, IdBaseComponent, IdComponent, IdRawBase, IdRawClient,
  IdIcmpClient, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxSpinEdit;

type
  TFM_Ping = class(TForm)
    lbl1: TLabel;
    edt_IPAddr: TEdit;
    btnPing: TButton;
    ICMP: TIdIcmpClient;
    ListBox1: TListBox;
    lbl2: TLabel;
    cxSpinEdit1: TcxSpinEdit;
    procedure btnPingClick(Sender: TObject);
    procedure ICMPReply(ASender: TComponent;
      const AReplyStatus: TReplyStatus);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  procedure Ping_Server(IPAddr: string);

var
  FM_Ping: TFM_Ping;

implementation

{$R *.dfm}

procedure Ping_Server(IPAddr: string);
begin
  if Trim(IPAddr) = '' then Exit;
  with TFM_Ping.Create(nil) do
  try
    edt_IPAddr.Text := IPAddr;
    ShowModal;
  finally
    Free;
  end;
end;

procedure TFM_Ping.btnPingClick(Sender: TObject);
var
  i:integer;
begin
  if Trim(edt_IPAddr.Text) = '' then Exit;
  try
    btnPing.Enabled := False;
    ICMP.Host := Trim(edt_IPAddr.Text);
    ICMP.ReceiveTimeout := 1000;
    ListBox1.Items.Clear;
    for i := 1 to cxSpinEdit1.Value do
    begin
      Application.ProcessMessages;
      try
        ICMP.Ping;
        if ICMP.ReplyStatus.BytesReceived=0 then
        begin
          MessageBox(Handle, PChar('Ping服务器发生错误，可能IP(域名)错误，或网络中断。'), '金蝶提示', MB_OK OR MB_ICONINFORMATION);
          break;
        end;
        Application.ProcessMessages;
      except
        on E: Exception do
        begin
          MessageBox(Handle, PChar('Ping服务器发生错误，可能IP(域名)错误，或网络中断。'), '金蝶提示', MB_OK OR MB_ICONINFORMATION);
          Break;
        end;
      end;
    end;
  finally
    btnPing.Enabled := True;
  end;
end;

procedure TFM_Ping.ICMPReply(ASender: TComponent;
  const AReplyStatus: TReplyStatus);
var
  sTime: string;
begin
  if(AReplyStatus.MsRoundTripTime = 0)then
    sTime := '<1'
  else
    sTime := '=';
  //在列表框中显示Ping消息
  ListBox1.Items.Add(Format('ICMP_SEQ=%d Reply from %s [%s] : Bytes=%d time%s%d ms TTL=%d',
                            [AReplyStatus.SequenceId,
                            Trim(edt_IPAddr.Text),
                            AReplyStatus.FromIpAddress,
                            AReplyStatus.BytesReceived,
                            sTime,
                            AReplyStatus.MsRoundTripTime,
                            AReplyStatus.TimeToLive]));
end;

end.
