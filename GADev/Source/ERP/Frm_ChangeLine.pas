unit Frm_ChangeLine;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFM_ChangeLine = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    btnOk: TButton;
    btnCancel: TButton;
    procedure btnOkClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  function Change_SysLine: Boolean;

var
  FM_ChangeLine: TFM_ChangeLine;

implementation

uses FrmCliMain, Frm_TranUpDate, FrmCliDM,Pub_Fun;

{$R *.dfm}

function Change_SysLine: Boolean;
var sqlstr,ErrMsg : string;
begin
  Result := False;
  with TFM_ChangeLine.Create(nil) do
  try
    if FMCliMain.Is_SysOnline then
      lbl1.Caption := 'ϵͳ��ǰ����״̬'
    else
      lbl1.Caption := 'ϵͳ��ǰ����״̬';
    Result := ShowModal = mrOk;
    if Result then
    begin
      if FMCliMain.Is_SysOnline then
      begin  //�л�������
        if CliDM.SckCon.Connected then CliDM.SckCon.Close;
        FMCliMain.Is_SysOnline := False;
        UserInfo.Is_SysOnline := False;
      end
      else
      begin  //�л�������
        try
          if not CliDM.SckCon.Connected then CliDM.SckCon.Open;
        except
          MessageBox(Handle, PChar('���ӷ�������������,�����л�������״̬!'), '�����ʾ', MB_OK OR MB_ICONINFORMATION);
          Exit;
        end;
        //�ϴ�����
        TranUpData;
        
        //���»�ȡ������ʱ��
        //SQLSTR := 'SELECT TO_CHAR(SYSDATE,''YYYY-MM-DD HH:MI:SS'') AS SERVERTIME  FROM DUAL ';
        //UserInfo.ServerTime := VarToDateTime(CliDM.Get_QueryReturn(sqlstr,ErrMsg));
        FMCliMain.Is_SysOnline := True;
        UserInfo.Is_SysOnline := True;
        
        //�������ط�����ʱ�䣬�������ϣ����ݱ�־����Ϣ
        if not CliDM.GetShopInfo(ErrMsg) then
        begin
          ShowMsg(Handle,ErrMsg,[]);
          //if (ErrMsg='�������޸���ɣ������µ�¼') then //ֱ�ӹرճ���
          application.Terminate;
         // Exit;
        end;
      end;
      FMCliMain.Get_UserRoles; //���»�ȡȨ�� 20120223
    end;
  finally
    Free;
  end;
end;

procedure TFM_ChangeLine.btnOkClick(Sender: TObject);
var
  str: string;
begin
  if FMCliMain.Is_SysOnline then
    str := '��ȷ��Ҫ�л�������״̬��'
  else
    str := '��ȷ��Ҫ�л�������״̬��';
  if MessageBox(Handle, PChar(str), '�����ʾ', MB_YESNO or MB_ICONQUESTION) <> IDYES then Exit;
  self.ModalResult := mrOk;
end;

end.
