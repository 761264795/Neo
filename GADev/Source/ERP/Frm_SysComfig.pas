unit Frm_SysComfig;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxSpinEdit, IniFiles, dxSkinsCore, dxSkinOffice2007Black, ComCtrls, SPComm,
  Menus, cxLookAndFeelPainters, cxButtons, cxMemo, cxButtonEdit,
  dxSkinOffice2007Green, dxSkinscxPCPainter, cxPC;

type
  TFM_SysComfig = class(TForm)
    imgOk1: TImage;
    imgOk2: TImage;
    lblOK: TLabel;
    imgCancel1: TImage;
    imgCancel2: TImage;
    lblCancel: TLabel;
    Panel1: TPanel;
    Comm1: TComm;
    OpenDialog1: TOpenDialog;
    Pg: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    tsopenMoneyBox: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    lblMachineCode: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    cxSpinEdit1: TcxSpinEdit;
    cbF2Print: TCheckBox;
    dbF2openMoneyBox: TCheckBox;
    cse_RefTime: TcxSpinEdit;
    bt_acc: TcxButtonEdit;
    bt_error: TcxButtonEdit;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    lb2: TLabel;
    qw: TLabel;
    ccc: TLabel;
    Label5: TLabel;
    cb_com: TComboBox;
    cb_rate: TComboBox;
    cb_add: TComboBox;
    cb_databyte: TComboBox;
    cb_stopbyte: TComboBox;
    ed_timeOut: TEdit;
    ed_code: TEdit;
    bt_test: TButton;
    GroupBox2: TGroupBox;
    rbRoundBillType1: TRadioButton;
    rbRoundBillType2: TRadioButton;
    rbRoundBillType3: TRadioButton;
    GroupBox3: TGroupBox;
    rbRount3: TRadioButton;
    rbRount1: TRadioButton;
    rbRount2: TRadioButton;
    rbRount4: TRadioButton;
    Panel2: TPanel;
    procedure lblOKMouseEnter(Sender: TObject);
    procedure lblOKMouseLeave(Sender: TObject);
    procedure lblCancelMouseEnter(Sender: TObject);
    procedure lblCancelMouseLeave(Sender: TObject);
    procedure lblOKClick(Sender: TObject);
    procedure lblCancelClick(Sender: TObject);
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure ed_timeOutKeyPress(Sender: TObject; var Key: Char);
    procedure ed_codeKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure bt_testClick(Sender: TObject);
    procedure bt_accPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure bt_errorPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
    function Get_sysConfig: Boolean;
    function Set_sysConfig: Boolean;
    procedure Save;
  end;

  function show_sysConfig: Boolean;

var
  FM_SysComfig: TFM_SysComfig;
  function openMoneyBox(comm:TComm;Code:string=''):Boolean;
implementation

uses FrmCliDM;

{$R *.dfm}
function openMoneyBox(comm:TComm;Code:string=''):Boolean;
var BoxCode,bs:string;
    buf :array [1..255] of byte;
    IniFile:TIniFile;
    lencount,i,by:Integer;
begin
  result:=False;
  comm.StopComm;
  IniFile := TINIFile.Create(ExtractFilePath(paramstr(0)) + 'POSSetup.ini');
  try
    comm.CommName:=IniFile.ReadString('Ǯ��','����','COM1');
    comm.BaudRate:=IniFile.ReadInteger('Ǯ��','������',9600);
    bs:=IniFile.ReadString('Ǯ��','����λ','_8');
    if bs='_5' then
    comm.ByteSize :=_5
    else
    if bs='_6' then
    comm.ByteSize :=_6
    else
    if bs='_7' then
    comm.ByteSize :=_7
    else
    if bs='_8' then
    comm.ByteSize :=_8;

    bs:=IniFile.ReadString('Ǯ��','ֹͣλ','_1');
    if bs='_1' then
     comm.StopBits :=_1
    else
    if bs='_1_5' then
     comm.StopBits :=_1_5
    else
    if bs='_2' then
    comm.StopBits :=_2;

    comm.ReadIntervalTimeout:=IniFile.ReadInteger('Ǯ��','��ʱ',20);
    if Trim(code)<>'' then  BoxCode:=UpperCase(Trim(code))
    else
    BoxCode:=UpperCase(Trim(IniFile.ReadString('Ǯ��','Ǯ��ָ��','')));
    if Length(BoxCode)<2 then
    begin
      ShowMessage('ָ��Ϸ�,���ٴ��ڶ�λ�ֶ�!');
      Abort;
    end;
  
    if (Length(BoxCode) mod 2) <> 0 then
    begin
      ShowMessage('ָ��Ϸ�,����Ϊż��λ!');
      Abort;
    end;
    lencount:=(Length(BoxCode) div 2);
    by:=0;
    repeat
     Inc(by);
     buf[by] :=Byte(StrToInt('$'+copy(BoxCode,1,2)));
     BoxCode:=Trim(Copy(BoxCode,3,Length(BoxCode)-2));
    until
     BoxCode='';
    //����ָ��
    try
      comm.StartComm;//������
      Sleep(100);
      comm.WriteCommData(@buf,lencount);
      Sleep(100);
      comm.StopComm;
      result:=true;
    except
      on e:exception do
      begin
        result:=False;
        ShowMessage(PChar('Ǯ���ʧ��,ԭ��:'+e.Message));
        Abort;
      end;
    end;
  finally
    IniFile.Free;
  end;
end;



function show_sysConfig: Boolean;
begin
 // if UserInfo.Is_SysOnline then
 // CliDM.Chk_UserRight(UserInfo.RetailPOSID,'posSYSSet'); //���Ȩ��
  Result := False;
  with TFM_SysComfig.Create(nil) do
  try
    Get_sysConfig;
    Result := ShowModal = mrOk;
    if Result then
      Set_sysConfig;
  finally
    Free;
  end;
end;

procedure TFM_SysComfig.lblOKMouseEnter(Sender: TObject);
begin
  imgOk1.Visible := True;
  imgOk2.Visible := False;
end;

procedure TFM_SysComfig.lblOKMouseLeave(Sender: TObject);
begin
  imgOk1.Visible := False;
  imgOk2.Visible := True;
end;

procedure TFM_SysComfig.lblCancelMouseEnter(Sender: TObject);
begin
  imgCancel1.Visible := True;
  imgCancel2.Visible := False;
end;

procedure TFM_SysComfig.lblCancelMouseLeave(Sender: TObject);
begin
  imgCancel1.Visible := False;
  imgCancel2.Visible := True;
end;

function TFM_SysComfig.Get_sysConfig: Boolean;
var
  IniFile: TIniFile;
begin
  Result := True;
  cxSpinEdit1.Value := StrToIntDef(UserInfo.MachineCode, 1);
  IniFile := TINIFile.Create(ExtractFilePath(paramstr(0)) + 'POSSetup.ini');
  try
    cb_com.Text:=IniFile.ReadString('Ǯ��','����','COM1');
    cb_rate.Text:=IniFile.ReadString('Ǯ��','������','9600');
    cb_add.Text:=IniFile.ReadString('Ǯ��','��żУ��λ','��');
    cb_databyte.Text:=IniFile.ReadString('Ǯ��','����λ','_8');
    cb_stopbyte.Text:=IniFile.ReadString('Ǯ��','ֹͣλ','_1');
    ed_timeOut.Text:=IniFile.ReadString('Ǯ��','��ʱ','20');
    ed_code.Text:=IniFile.ReadString('Ǯ��','Ǯ��ָ��','');

    cbF2Print.Checked := IniFile.ReadBool('POSClient','F2Print',True);  //�ᵥ��ӡСƱ
    dbF2openMoneyBox.Checked := IniFile.ReadBool('POSClient','F2OpenMoneyBox',False);  //�ᵥ��Ǯ��

    UserInfo.RoundBillType := IniFile.ReadInteger('POSClient', 'RoundBillType', 1);  //1��Ʒ����С������  2��Ʒ���С������ 3�ᵥ���С������
    UserInfo.RoundType := IniFile.ReadInteger('POSClient', 'RoundType', 2);  //С������ʽ 1��ȡ2λС��   2 ��������ȡ��  3 ��С��ȥβ   4��С����1
    cse_RefTime.Value:=IniFile.ReadInteger('POSClient', 'RefTime', 5);

    rbRoundBillType1.Checked := UserInfo.RoundBillType=1;
    rbRoundBillType2.Checked := UserInfo.RoundBillType=2;
    rbRoundBillType3.Checked := UserInfo.RoundBillType=3;

    rbRount1.Checked := UserInfo.RoundType=1;
    rbRount2.Checked := UserInfo.RoundType=2;
    rbRount3.Checked := UserInfo.RoundType=3;
    rbRount4.Checked := UserInfo.RoundType=4;

    //�����ļ�
    bt_acc.Text:=IniFile.ReadString('POSClient','accFile','');
    bt_error.Text:=IniFile.ReadString('POSClient','errorFile','');
  finally
    IniFile.Free;
  end;
end;

function TFM_SysComfig.Set_sysConfig: Boolean;
var
  IniFile: TIniFile;
begin
  Result := True;
  UserInfo.MachineCode := cxSpinEdit1.Value;
  IniFile := TINIFile.Create(ExtractFilePath(paramstr(0)) + 'POSSetup.ini');
  try
    IniFile.WriteString('POSClient', 'MachineCode', UserInfo.MachineCode);
    IniFile.WriteString('Ǯ��','����',cb_com.Text);
    IniFile.WriteString('Ǯ��','������',cb_rate.Text);
    IniFile.WriteString('Ǯ��','��żУ��λ',cb_add.Text);
    IniFile.WriteString('Ǯ��','����λ',cb_databyte.Text);
    IniFile.WriteString('Ǯ��','ֹͣλ',cb_stopbyte.Text);
    IniFile.WriteString('Ǯ��','��ʱ',ed_timeOut.Text);
    IniFile.WriteString('Ǯ��','Ǯ��ָ��',ed_code.Text);

    UserInfo.F2Print := cbF2Print.Checked;  //�ᵥ��ӡСƱ
    UserInfo.F2OpenMoneyBox := dbF2openMoneyBox.Checked;  //�ᵥ��Ǯ��
    IniFile.WriteBool('POSClient','F2Print',UserInfo.F2Print);
    IniFile.WriteBool('POSClient','F2OpenMoneyBox',UserInfo.F2OpenMoneyBox);

    if rbRoundBillType1.Checked then UserInfo.RoundBillType :=1;
    if rbRoundBillType2.Checked then UserInfo.RoundBillType :=2;
    if rbRoundBillType3.Checked then UserInfo.RoundBillType :=3;

    if rbRount1.Checked then UserInfo.RoundType :=1;
    if rbRount2.Checked then UserInfo.RoundType :=2;
    if rbRount3.Checked then UserInfo.RoundType :=3;
    if rbRount4.Checked then UserInfo.RoundType :=4;

    IniFile.WriteInteger('POSClient', 'RoundBillType', UserInfo.RoundBillType);
    IniFile.WriteInteger('POSClient', 'RoundType', UserInfo.RoundType);
    IniFile.WriteInteger('POSClient', 'RefTime', cse_RefTime.Value);
    //�����ļ�
    IniFile.WriteString('POSClient', 'accFile', bt_acc.Text);
    IniFile.WriteString('POSClient', 'errorFile',bt_error.Text);
  finally
    IniFile.Free;
  end;
end;

procedure TFM_SysComfig.lblOKClick(Sender: TObject);
begin
  Save;
  Self.ModalResult := mrOk;
end;

procedure TFM_SysComfig.lblCancelClick(Sender: TObject);
begin
  Self.ModalResult := mrCancel;
end;

procedure TFM_SysComfig.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
  Resize:=False;
end;

procedure TFM_SysComfig.ed_timeOutKeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in ['0'..'9',#8])  then key:=#0;
end;

procedure TFM_SysComfig.ed_codeKeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in ['0'..'9','A'..'F',#8])  then key:=#0;
end;

procedure TFM_SysComfig.FormShow(Sender: TObject);
begin
  Pg.ActivePageIndex:=0;
  cxSpinEdit1.Enabled := UserInfo.MachineCode<>UserInfo.RegistMachineCode;
end;

procedure TFM_SysComfig.Save;
var
  ErrMsg: string;
begin
  if Pg.ActivePage = tsopenMoneyBox then  //Ǯ��
  begin
    ed_code.Text:=UpperCase(Trim(ed_code.Text));
    if (Length(Trim(ed_code.Text)) mod 2)<>0 then
    begin
      ShowMessage('ָ���ַ�������ż��λ!');
      Exit;
    end;
  end;
end;

procedure TFM_SysComfig.bt_testClick(Sender: TObject);
begin
  ed_code.Text:=UpperCase(Trim(ed_code.Text));
  if (Length(Trim(ed_code.Text)) mod 2)<>0 then
  begin
    ShowMessage('ָ���ַ�������ż��λ!');
    Exit;
  end;
  Set_sysConfig;
  openMoneyBox(Comm1);
  ShowMessage('ָ��ͳɹ�!');
end;

procedure TFM_SysComfig.bt_accPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  if OpenDialog1.Execute then
  bt_acc.Text:=OpenDialog1.FileName;
end;

procedure TFM_SysComfig.bt_errorPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  if OpenDialog1.Execute then
  bt_error.Text:=OpenDialog1.FileName;
end;

end.
