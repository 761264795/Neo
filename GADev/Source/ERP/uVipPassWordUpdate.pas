unit uVipPassWordUpdate;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBaseEditFrm, DB, DBClient, StdCtrls, ExtCtrls;

type
  TVIPPswdupdate = class(TSTBaseEdit)
    bvl1: TBevel;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    Label1: TLabel;
    edtOldPWD: TEdit;
    edtNewPWD: TEdit;
    edtNewPWD2: TEdit;
    edtUserName: TEdit;
    edt_vipNumber: TEdit;
    Button1: TButton;
    Button2: TButton;
    procedure edt_vipNumberKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Button1Click(Sender: TObject);
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure Button2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    oldpswd:String;//������
    vipNumber:String;//������
  public
    { Public declarations }
    procedure GetVipData;
    procedure Clear;
  end;

var
  VIPPswdupdate: TVIPPswdupdate;

implementation

uses FrmCliDM;

{$R *.dfm}

procedure TVIPPswdupdate.edt_vipNumberKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key=13 then
  begin
    GetVipData;
  end;
end;
procedure TVIPPswdupdate.GetVipData;
var _sql,errmsg,inputval:string;
    cds:TClientDataSet;
begin
   vipNumber := '';
   oldpswd := '';
   edtUserName.Text := '';
   inputval := Trim(edt_vipNumber.Text);
   if (inputval='') then Exit;
   _sql:='select a.fid, a.FVipCardNumber,b.fname_l2, a.FCurrentBonus,a.FCumulateBonus ,'
        +' a.FCurrentValue,a.FCumulateValue,a.cfispasswordcheck,a.cfpassword  from t_rt_vipcard a   '
        +' inner join t_rt_vipbasedata b on a.fvipnumber = b.fid'
        +' where a.FVipCardNumber ='+QuotedStr(inputval)+' or b.fmobilephonno ='+QuotedStr(inputval);
   cds := TClientDataSet.Create(nil);
   if not CliDM.Get_OpenSQL(cds,_sql,errmsg) then
   begin
     ShowMessage('���һ�Ա���ݳ���:'+errmsg);
     edt_vipNumber.SetFocus;
     Exit;
   end;
   if cds.IsEmpty then
   begin
     ShowMessage('��Ա�����ֻ���: '+edt_vipNumber.Text+' ��Ч��');
     edt_vipNumber.Text := '';
     edt_vipNumber.SetFocus;
     Exit;
   end;
   if  cds.FieldByName('cfispasswordcheck').AsInteger<>1 then
   begin
     ShowMessage('��ǰ��Աδ���������鹦��,�����޸����룡');
     edt_vipNumber.Text := '';
     edt_vipNumber.SetFocus;
     Exit;
   end;
   vipNumber := cds.FieldByName('FVipCardNumber').AsString;
   oldpswd := cds.FieldByName('cfpassword').AsString;
   edtUserName.Text := cds.FieldByName('fname_l2').AsString;
   edtOldPWD.SetFocus;
end;
procedure TVIPPswdupdate.Button1Click(Sender: TObject);
var _sql,ErrorMsg:string;
begin
  inherited;
  if Trim(edtNewPWD2.Text)<>Trim(edtNewPWD.Text)  then
  begin
    ShowMessage('�������벻һ��,���������룡');
    Exit;
  end;
  if Trim(edtOldPWD.Text)<>Trim(oldpswd)  then
  begin
    ShowMessage('�������������,���������룡');
    edtOldPWD.SetFocus;
    Exit;
  end;
  ErrorMsg:='';
  _sql := 'update t_rt_vipcard set cfpassword='+QuotedStr(Trim(edtNewPWD.Text))+' where fvipcardnumber='+ QuotedStr(vipNumber);
  CliDM.Get_ExecSQL(_sql,ErrorMsg);
  if (ErrorMsg<>'') then
  begin
    Clear;
    edt_vipNumber.SetFocus;
    ShowMessage('�����޸�ʧ��:'+ErrorMsg);
  end
  else
  begin
    Clear;
    edt_vipNumber.SetFocus;
    ShowMessage('�����޸ĳɹ�,���μ�������!');
  end;
end;

procedure TVIPPswdupdate.Clear;
begin
  vipNumber := '';
  oldpswd := '';
  edtUserName.Text := '';
  edt_vipNumber.Text := '';
  edtUserName.Text := '';
  edtOldPWD.Text := '';
  edtNewPWD.Text := '';
  edtNewPWD2.Text := '';
end;

procedure TVIPPswdupdate.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
  inherited;
  Resize := False;
end;

procedure TVIPPswdupdate.Button2Click(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TVIPPswdupdate.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  //inherited;

end;

end.
