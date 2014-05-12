unit uVipCurrentValue;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBaseEditFrm, ExtCtrls, StdCtrls, DB, DBClient, jpeg, Menus,
  cxLookAndFeelPainters, cxButtons;

type
  TVipCurrentValue = class(TSTBaseEdit)
    lbl1: TLabel;
    edt_vipNumber: TEdit;
    pnl1: TPanel;
    pnl2: TPanel;
    bvl1: TBevel;
    lbl2: TLabel;
    lbl_vipName: TLabel;
    lbl4: TLabel;
    lbl_cuAmt: TLabel;
    lbl6: TLabel;
    lbl_sAmt: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    lbl_sF: TLabel;
    lbl_cuF: TLabel;
    lbl3: TLabel;
    edt_Amt: TEdit;
    lbl5: TLabel;
    img1: TImage;
    img2: TImage;
    btn1: TcxButton;
    cxButton2: TcxButton;
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure FormShow(Sender: TObject);
    procedure edt_vipNumberExit(Sender: TObject);
    procedure edt_vipNumberKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_AmtKeyPress(Sender: TObject; var Key: Char);
    procedure edt_vipNumberChange(Sender: TObject);
    procedure edt_AmtKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btn1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
  private
    { Private declarations }
    vipFid,vipNumber:String;
  public
    { Public declarations }
    procedure GetVipData;
    procedure ClearValue;
  end;

var
  VipCurrentValue: TVipCurrentValue;
  procedure CallVipCurrentValue;
implementation
  uses FrmCliDM,Pub_Fun,uInputVipPswdFrm;
{$R *.dfm}
procedure CallVipCurrentValue;
begin
  try
    Application.CreateForm(TVipCurrentValue,VipCurrentValue);
    VipCurrentValue.ShowModal;
  finally
    VipCurrentValue.Free;
  end;
end;
procedure TVipCurrentValue.ClearValue;
begin
  lbl_vipName.Caption := '';
  lbl_cuAmt.Caption :=  '';
  lbl_sAmt.Caption :=  '';
  lbl_cuF.Caption :=  '';
  lbl_sF.Caption :=  '';
  vipFid :='';
  vipNumber := '';
  edt_Amt.Text := '';
end;

procedure TVipCurrentValue.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
  inherited;
  Resize := False;
end;

procedure TVipCurrentValue.FormShow(Sender: TObject);
begin
  inherited;
  ClearValue;
  edt_vipNumber.Text := '';
  edt_vipNumber.SetFocus;
end;

procedure TVipCurrentValue.GetVipData;
var _sql,errmsg,inputval,pswd:string;
    cds:TClientDataSet;
begin
   inputval := Trim(edt_vipNumber.Text);
   if (inputval='') then Exit;
   _sql:='select a.fid, a.FVipCardNumber,b.fname_l2, a.FCurrentBonus,a.FCumulateBonus ,'
        +' a.FCurrentValue,a.FCumulateValue,a.cfispasswordcheck,a.cfpassword ,c.Frationtag  from t_rt_vipcard a   '
        +' left join T_RT_CardType c on a.fcardtypeid = c.fid'
        +' inner join t_rt_vipbasedata b on a.fvipnumber = b.fid'
        +' where a.FVipCardNumber ='+QuotedStr(inputval)+' or b.fmobilephonno ='+QuotedStr(inputval);

   cds := TClientDataSet.Create(nil);
   if not CliDM.Get_OpenSQL(cds,_sql,errmsg) then
   begin
     ShowMessage('查找会员数据出错:'+errmsg);
     edt_vipNumber.SetFocus;
     Exit;
   end;
   if cds.IsEmpty then
   begin
     ShowMessage('会员卡或手机号: '+edt_vipNumber.Text+' 无效！');
     edt_vipNumber.Text := '';
     edt_vipNumber.SetFocus;
     Exit;
   end;
   if cds.FieldByName('Frationtag').AsInteger=0 then
   begin
     ShowMessage('当前卡号为定额卡，不能冲值!   ');
     edt_vipNumber.Text := '';
     edt_vipNumber.SetFocus;
     Exit;
   end;
   if cds.FieldByName('cfispasswordcheck').AsInteger=1 then
   begin
     pswd :=  cds.FieldByName('cfpassword').AsString;
     if not CheckVipPassWord(pswd)  then Exit;
   end;
   ClearValue;
   vipFid := cds.fieldbyname('fid').AsString;
   vipNumber := cds.fieldbyname('FVipCardNumber').AsString;
   lbl_vipName.Caption :=  cds.fieldbyname('fname_l2').AsString;

   lbl_cuAmt.Caption :=  FormatFloat('0.00',cds.fieldbyname('FCurrentValue').AsFloat);
   lbl_sAmt.Caption :=  FormatFloat('0.00',cds.fieldbyname('FCumulateValue').AsFloat);
   lbl_cuF.Caption :=  IntToStr(cds.fieldbyname('FCurrentBonus').asInteger);
   lbl_sF.Caption :=  IntToStr(cds.fieldbyname('FCumulateBonus').asInteger);
   edt_Amt.SetFocus;
end;

procedure TVipCurrentValue.edt_vipNumberExit(Sender: TObject);
begin
  inherited;
  //GetVipData;
end;

procedure TVipCurrentValue.edt_vipNumberKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key=13 then
  begin
    GetVipData;
  end;
end;

procedure TVipCurrentValue.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 //  inherited;
end;

procedure TVipCurrentValue.edt_AmtKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9','.','-',#8]) then key := #0;
end;

procedure TVipCurrentValue.edt_vipNumberChange(Sender: TObject);
begin
  inherited;
  ClearValue;
end;

procedure TVipCurrentValue.edt_AmtKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key=13 then
  begin
    btn1Click(nil);
  end;
end;

procedure TVipCurrentValue.btn1Click(Sender: TObject);
var PalyAm,cuAmt:Double;
    Result : Boolean;
    ErrMsg,Msg: string;
begin
  inherited;
  if (vipFid='') then
  begin
    ShowMessage('会员号无效，请重新输入按回车确认!');
    edt_vipNumber.Text := '';
    edt_vipNumber.SetFocus;
    Exit;
  end;
  if (Trim(edt_Amt.Text)='') then
  begin
    ShowMessage('充值金额不能为空!          ');
    edt_Amt.SetFocus;
    Exit;
  end;
  PalyAm := StrToFloat(Trim(edt_Amt.Text));
  cuAmt :=  StrToFloat(Trim(lbl_cuAmt.Caption));
  if PalyAm = 0 then
  begin
    ShowMessage('充值金额不能等于0!        ');
    edt_Amt.SetFocus;
    Exit;
  end;
  if (PalyAm+cuAmt) < 0 then
  begin
    ShowMessage('充值金额不能小于 -'+lbl_cuAmt.Caption+' !        ');
    edt_Amt.SetFocus;
    Exit;
  end;
  Msg := '充值确认：'+'       '+#13#10
        +'会员编号：'+vipNumber+'       '+#13#10
        +'会员名称：'+lbl_vipName.Caption+'       '+#13#10
        +'充值金额：'+edt_amt.Text+'元';
  if ShowYesNo(Handle, Msg,[]) = IDNO then abort;
  Result := True;
  Result := CliDM.ConnectSckCon(ErrMsg);
  if not Result then exit;
  try
    Result := CliDM.SckCon.AppServer.Pub_CurrentValue(vipNumber,PalyAm,UserInfo.LoginUser_FID,ErrMsg) = 0;
    if not Result then
    begin
      ShowMessage(Format('会员充值失败 - 错误原因：%s          ', [ErrMsg]));
      Gio.AddShow(Format('会员充值失败 - 错误原因：%s', [ErrMsg]));
      edt_vipNumber.Text := '';
      edt_vipNumber.SetFocus;
      Exit;
    end;
    ShowMessage('会员充值成功!         ');
    edt_vipNumber.Text := '';
    edt_vipNumber.SetFocus;
  finally
    if CliDM.SckCon.Connected then CliDM.SckCon.Close;
  end;
  ClearValue;
end;

procedure TVipCurrentValue.cxButton2Click(Sender: TObject);
begin
  inherited;
  Self.Close;
end;

end.
