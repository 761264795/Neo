unit ureliefFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBaseEditFrm, ExtCtrls, Menus, cxLookAndFeelPainters, StdCtrls,
  cxButtons;

type
  TFrmRelief = class(TSTBaseEdit)
    pnClient: TPanel;
    Label1: TLabel;
    lbMession: TLabel;
    btOK: TcxButton;
    cxButton1: TcxButton;
    procedure btOKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelief: TFrmRelief;
  function WarehouseRelief : Boolean;  //���̻���
implementation
   uses Pub_Fun,FrmCliDM;
{$R *.dfm}
function WarehouseRelief : Boolean;  //���̻���
begin
  Result := True;
  Application.CreateForm(TFrmRelief,FrmRelief);
  FrmRelief.lbMession.Caption := '��ǰ���̡�'+UserInfo.Warehouse_NumberName+'����ǰ��Ρ�'+UserInfo.FreQuency_Name+'��';
  FrmRelief.ShowModal;
  
  FrmRelief.Free;
end;

procedure TFrmRelief.btOKClick(Sender: TObject);
var ErrMsg : string;
begin
  inherited;
  if ShowYesNo(Handle, '�Ƿ񻻰ࣿ',[])= mrYes then
  begin
    //���½��Ӱ�� CT_BD_FREQUENCY_Relief
    ErrMsg := CliDM.Client_ExecSQL('exec sp_FreQuency_Relief '+QuotedStr(UserInfo.Warehouse_FID)+','
                                     +QuotedStr(UserInfo.FreQuency_ID)+','+QuotedStr(DateToStr(CliDM.Get_ServerTime)));
    if ErrMsg = '' then
    begin
      ShowMsg(Handle, '����ɹ�,�����µ�¼��',[]);
      UserInfo.iRestart := True;
      with CliDM.qryduty do  //�°����owen 
      begin
        Close;
        SQL.Clear;
        SQL.Add(' update CT_BD_FREQUENCY_Relief set Ftype=2,Reliefdate=getdate()  where  Ftype=1 and FreQuency_FID ='''+UserInfo.FreQuency_ID+''' ');
        SQL.Add(' and Warehouse_FID='''+UserInfo.Warehouse_FID+''' and FEmployeeID='''+UserInfo.LoginUser_FID+''' and Fmachineno='''+UserInfo.MachineCode+''' ');
        ExecSQL;
      end;
      Application.Terminate;
    end
    else
      ShowError(Handle, ErrMsg,[]);
  end;
end;

end.
