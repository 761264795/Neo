unit uVIPCardInput;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBaseEditFrm, ExtCtrls, Menus, cxLookAndFeelPainters, StdCtrls,
  cxButtons, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxButtonEdit,DBClient,db, dxSkinsCore, dxSkinOffice2007Black;

type
  TFrmVIPCardInput = class(TSTBaseEdit)
    Image1: TImage;
    edt_VIPCardCode: TcxButtonEdit;
    lbl_Code: TLabel;
    btOK: TcxButton;
    Bevel1: TBevel;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btOKClick(Sender: TObject);
    procedure edt_VIPCardCodeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    VIPCardCode : string;
    FbonusRate : Double; //���ֱ���
    FDISCOUNTRATE : Double;  //�ۿ���
    FDOUBLEDISCOUNTRATE : Double; //��������
    FLOWERLIMITDISCOUNTRATE : Double; //�����ۿ���
  public
    { Public declarations }
  end;

var
  FrmVIPCardInput: TFrmVIPCardInput;
  function VIPCardInput(cdsMaster:TClientDataSet;var FbonusRate,FDISCOUNTRATE,FDOUBLEDISCOUNTRATE,FLOWERLIMITDISCOUNTRATE :Double;var strVIPInfo,strVIPBonus : string):Boolean;
implementation
uses FrmCliDM,Pub_Fun,uPOSEditFrm,uInputVipPswdFrm;
{$R *.dfm}
function VIPCardInput(cdsMaster:TClientDataSet;var FbonusRate,FDISCOUNTRATE,FDOUBLEDISCOUNTRATE,FLOWERLIMITDISCOUNTRATE :Double;var strVIPInfo,strVIPBonus : string):Boolean;
 var
   strsql,ErrMsg : string;
begin
  Result := True;
  Application.CreateForm(TFrmVIPCardInput,FrmVIPCardInput);
  Result := FrmVIPCardInput.ShowModal=mrok;
  if Result then
  begin
    if not (cdsMaster.State in db.dsEditModes) then cdsMaster.Edit;
      cdsMaster.FieldByName('CFVIPCardNumber').AsString := FrmVIPCardInput.VIPCardCode;
      cdsMaster.FieldByName('CFbonusRate').AsFloat := FrmVIPCardInput.FbonusRate;
      cdsMaster.FieldByName('fdescription').AsString := '��Ա����:'+FrmVIPCardInput.VIPCardCode+' ��Ա���ֱ���:'+FloattoStr(FrmVIPCardInput.FbonusRate);

      FbonusRate := FrmVIPCardInput.FbonusRate;                   //���ֱ���
      FDISCOUNTRATE := FrmVIPCardInput.FDISCOUNTRATE;             //�ۿ���
      FDOUBLEDISCOUNTRATE := FrmVIPCardInput.FDOUBLEDISCOUNTRATE; //��������
      FLOWERLIMITDISCOUNTRATE := FrmVIPCardInput.FLOWERLIMITDISCOUNTRATE; //�����ۿ���
      strsql :=' select Fgender,fname_l2,fnumber from T_RT_VIPBaseData where FID='+quotedstr(FrmPOSEdit.cds_Vipcard.fieldbyname('fviPnumber').AsString);
      try
        CliDM.Get_OpenSQL(CliDM.cdstemp,strsql,ErrMsg);
        if  not CliDM.cdstemp.IsEmpty   then
        begin
          if CliDM.cdstemp.FieldByName('Fgender').AsInteger =1 then
          begin
            strVIPInfo := CliDM.cdstemp.FieldByName('fname_l2').AsString+' ����' ;
            strVIPBonus:= '����: '+FormatFloat('0',FrmPOSEdit.cds_Vipcard.fieldbyname('fcurrentbonus').AsFloat)
                         +'  ��ֵ��'+FormatFloat('0.0',FrmPOSEdit.cds_Vipcard.fieldbyname('FCurrentValue').AsFloat);
          end
          else if  CliDM.cdstemp.FieldByName('Fgender').AsInteger =2 then
          begin
            strVIPInfo := CliDM.cdstemp.FieldByName('fname_l2').AsString+' Ůʿ' ;
            strVIPBonus:= '����: '+FormatFloat('0',FrmPOSEdit.cds_Vipcard.fieldbyname('fcurrentbonus').AsFloat)
                         +' ��ֵ��'+FormatFloat('0.0',FrmPOSEdit.cds_Vipcard.fieldbyname('FCurrentValue').AsFloat);
          end;
          fcurrentbonus := FrmPOSEdit.cds_Vipcard.fieldbyname('fcurrentbonus').AsFloat;
        end;
        CliDM.cdstemp.Close;
        strsql := ' select Cfexchange  from T_RT_CardGrade  where FID='+quotedstr(FrmPOSEdit.cds_Vipcard.fieldbyname('FCardGradeID').AsString);
        CliDM.Get_OpenSQL(CliDM.cdstemp,strsql,ErrMsg);
        if  not CliDM.cdstemp.IsEmpty   then
        begin
          Cfexchange :=  CliDM.cdstemp.fieldbyname('Cfexchange').AsFloat;
        end;
      except
        on E : Exception do
        begin
          //ShowMsg( Application.Handle,'��Ա���ϴ���:'+ErrMsg+e.Message,[]);
          ShowMessage('��Ա���ϴ���:'+ErrMsg);
          FrmVIPCardInput.edt_VIPCardCode.SetFocus;
        end;
      end;
  end;
  FrmVIPCardInput.Free;
end;
procedure TFrmVIPCardInput.FormCreate(Sender: TObject);
begin
  inherited;
  LoadImage(UserInfo.ExePath+'\Img\POS_Edit_Top2.jpg',Image1);
end;

procedure TFrmVIPCardInput.btOKClick(Sender: TObject);
var inputCode,pswd,ErrMsg : string;
begin
  inherited;
  btOK.Enabled := False;
  inputCode := Trim(edt_VIPCardCode.Text);

  if not Clidm.Pub_VIPCardCheck(InputCode,FrmPOSEdit.cds_Vipcard,FbonusRate,FDISCOUNTRATE,FDOUBLEDISCOUNTRATE,FLOWERLIMITDISCOUNTRATE,VIPCardCode,ErrMsg) then //��鿨���Ƿ���Ч���ӷ�������飬�����ͣ���Ч�ڣ�,��ȷʱ���ؿ��������Ӧ���ֱ��ʣ�Ԫ��
  begin
    btOK.Enabled := True;
    ShowMsg(Handle, ErrMsg,[]);
    edt_VIPCardCode.SetFocus;
    Abort;
  end;
  if FrmPOSEdit.cds_Vipcard.FieldByName('cfispasswordcheck').AsInteger=1 then
  begin
    pswd :=  FrmPOSEdit.cds_Vipcard.FieldByName('cfpassword').AsString;
    if not CheckVipPassWord(pswd)  then Exit;
  end;
  Self.ModalResult := mrOk;
end;

procedure TFrmVIPCardInput.edt_VIPCardCodeKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
    if (Key = VK_RETURN) then
   btOK.Click;
end;

procedure TFrmVIPCardInput.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  //inherited;
  if key=27 then self.Close;
end;

end.
