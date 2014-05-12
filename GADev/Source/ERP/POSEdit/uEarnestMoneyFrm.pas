unit uEarnestMoneyFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBaseEditFrm, ExtCtrls, StdCtrls, Menus, cxLookAndFeelPainters,
  cxButtons, DB, DBClient;

type
  TFrmHangOut = class(TSTBaseEdit)
    imgBack: TImage;
    tEarnestMoney: TEdit;
    lbEarnest: TLabel;
    btOK: TcxButton;
    btCancel: TcxButton;
    lbCaption: TLabel;
    TeGdbillNo: TEdit;
    Label1: TLabel;
    Bevel1: TBevel;
    procedure tEarnestMoneyKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure btOKClick(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure TeGdbillNoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tEarnestMoneyKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btOKKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure btCancelKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmHangOut: TFrmHangOut;
  function ShowEarnestMoney(var EarnestMoney : Double;var GDBillNo : string) : Boolean;  //�򿪹ҵ�����
implementation
uses FrmCliDM,Pub_Fun;
{$R *.dfm}

function ShowEarnestMoney(var EarnestMoney : Double;var GDBillNo : string) : Boolean;  //�򿪹ҵ�����
begin
  Result := False;
  Application.CreateForm(TFrmHangOut,FrmHangOut);
  if EarnestMoney<>0 then
     FrmHangOut.tEarnestMoney.Text := FloatToStr(EarnestMoney);
     
  FrmHangOut.ShowModal;
  if FrmHangOut.ModalResult = mrok then
  begin
    Result := True;
    if Trim(FrmHangOut.tEarnestMoney.text)<> '' then
      EarnestMoney := StrToFloat(FrmHangOut.tEarnestMoney.text);
    if Trim(FrmHangOut.TeGdbillNo.text)<> '' then
      GDBillNo := Trim(FrmHangOut.TeGdbillNo.text);
  end;
  FrmHangOut.Free;
end;
procedure TFrmHangOut.tEarnestMoneyKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
 //����ֻ������������
 //or (Key<>40) or (Key<>37)
  if ((Key<>#8) ) then     //BackSpace ɾ��������
  if not (Key in ['0'..'9']) then
   Key   :=   #0;
end;

procedure TFrmHangOut.FormCreate(Sender: TObject);
begin
  inherited;
  LoadImage(UserInfo.ExePath+'\Img\POS_Edit_Top2.jpg',imgBack);
end;

procedure TFrmHangOut.btOKClick(Sender: TObject);
var GDBillNo,sqlstr : string;
    ErrMsg,DateStr: string;
begin
  inherited;
    //���ҵ����Ƿ��Ѿ�����
  GDBillNo := Trim(TeGdbillNo.Text);
  if GDBillNo<>'' then
  begin
    DateStr := FormatDateTime('YYYY-MM-DD',UserInfo.ServerTime);
    if UserInfo.Is_SysOnline then
    begin
      sqlstr := 'SELECT 1 FROM CT_BIL_RetailPOS WHERE TO_CHAR(FBIZDATE,''YYYY-MM-DD'')=TO_CHAR(SYSDATE,''YYYY-MM-DD'') AND CFSTORAGEID='+QuotedStr(UserInfo.Warehouse_FID)+' AND ISTATUS=-1 AND CFGDBILLNo='+QuotedStr(GDBILLNo);
      if CliDM.Get_ExistsSQL(sqlstr,ErrMsg) then
      begin
        ShowMsg(Handle,'�ҵ���['+GDBillNo+']�Ѿ���ʹ�ã����޸Ĺҵ���',[]);
        Abort;
      end;
    end
    else   //����
    begin
      DateStr := FormatDateTime('YYYY-MM-DD',now);
      sqlstr := 'SELECT 1 FROM CT_BIL_RetailPOS WHERE CONVERT(VARCHAR(10),FBIZDATE,120)='+QuotedStr(DateStr)+' AND CFSTORAGEID='+QuotedStr(UserInfo.Warehouse_FID)+' AND ISTATUS=-1 AND CFGDBILLNo='+QuotedStr(GDBILLNo);
      if CliDM.Client_IsExists(sqlstr) then
      begin
        ShowMsg(Handle,'�ҵ���['+GDBillNo+']�Ѿ���ʹ�ã����޸Ĺҵ���',[]);
        Abort;
      end;
    end;
  end;

  Self.ModalResult := mrOk;
end;

procedure TFrmHangOut.btCancelClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TFrmHangOut.TeGdbillNoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (Key=40) then   //�Ҽ�
    tEarnestMoney.SetFocus;

  if (Key = 39)  then   //�¼�
    btOK.SetFocus;
end;

procedure TFrmHangOut.tEarnestMoneyKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (Key=39) then   //�Ҽ�
  begin
    btOK.SetFocus;
  end;
  
  if (Key =38)  then   //�ϼ�
  begin
    TeGdbillNo.SetFocus;
  end;
end;

procedure TFrmHangOut.btOKKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (Key=40) then   //�Ҽ�
    btCancel.SetFocus;
   if (Key = 37) then   //���
    tEarnestMoney.SetFocus;

end;

procedure TFrmHangOut.FormShow(Sender: TObject);
begin
  inherited;
  TeGdbillNo.SetFocus;
end;

procedure TFrmHangOut.btCancelKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (Key = 37) then   //���
    btOK.SetFocus;
end;

end.
