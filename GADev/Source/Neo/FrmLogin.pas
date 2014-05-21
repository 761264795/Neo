unit FrmLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, IniFiles, 
  
  
  cxDBLookupComboBox, ActnList, DB,
  DBClient, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxControls, cxContainer,
  cxEdit, cxGraphics,uI3BaseFrm, dxSkinsCore, dxSkinOffice2007Black,
  dxSkinOffice2007Green, dxSkinOffice2007Blue, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver;

type
  TFMLotin = class(TI3BaseFrm)
    imgLogin: TImage;
    lblUserID: TLabel;
    lblPassword: TLabel;
    edtUserID: TEdit;
    edtUserPwd: TEdit;
    imgCancel1: TImage;
    imgCancel2: TImage;
    imgOk1: TImage;
    imgOk2: TImage;
    lblOK: TLabel;
    lblCancel: TLabel;
    actList: TActionList;
    actPassExit: TAction;
    cdsServerInfo: TClientDataSet;
    cdsServerInfoTypeID: TStringField;
    cdsServerInfoTypeName: TStringField;
    lbl1: TLabel;
    cdsOrgList: TClientDataSet;
    dsOrgList: TDataSource;
    cdsOrgListFID: TStringField;
    cdsOrgListFnumber: TStringField;
    cdsOrgListFname_l2: TStringField;
    procedure lblOKMouseEnter(Sender: TObject);
    procedure lblOKMouseLeave(Sender: TObject);
    procedure lblCancelMouseEnter(Sender: TObject);
    procedure lblCancelMouseLeave(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure lblOKClick(Sender: TObject);
    procedure lblCancelClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbOrgKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtUserPwdKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtUserIDKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);

  private
    IsLogin : Boolean;
    UserPwd : string;
    FreQuency_FID,WareHouse_FID  : string;
    function PassExitCheck(var ErrMsg : string) : Boolean;  
    function Chk_LoginUser(_SysOnline: Boolean; const ClientTag, UserID, UserPwd: string; var cdsUserShopList,cdsShopIntervalList: TClientDataSet; var ReturnUserFID,ErrMsg,FPERSONID: string): Shortint;
    function Ini_ShopInfo : Boolean; //初始化店铺信息


    { Private declarations }
  public
    { Public declarations }
    LoginStates : Boolean;
    Procedure GetDefUserOrg(FUserID:string);//取用户默认登陆组织
  end;

  //登陆系统
  function Login_System: Boolean;

var
  FMLotin: TFMLotin;
  LoginCount: Integer;

implementation

uses FrmCliDM, FrmCliMain, Pub_Fun, Frm_ChangePwd,uDrpHelperClase;

{$R *.dfm}

function Login_System: Boolean;
var
  strsql,strError : string;
begin
  Result := True;
  with TFMLotin.Create(nil) do
  try
    Result := ShowModal = mrOk;
    Gio.AddShow('开始执行ShowModal');
    if Result and FMCliMain.Is_SysOnline and (UserPwd = '') then
    begin  //用户密码为空，强制修改
      Change_UserPWD(FMCliMain.LoginUser_ID);
    end;
    //取消登录系统，不执行主窗口显示事件。
    if not Result then
      FMCliMain.OnShow := nil;
  finally
    Free;
  end;
end;

procedure TFMLotin.lblOKMouseEnter(Sender: TObject);
begin
  imgOk1.Visible := True;
  imgOk2.Visible := False;
end;

procedure TFMLotin.lblOKMouseLeave(Sender: TObject);
begin
  imgOk1.Visible := False;
  imgOk2.Visible := True;
end;

procedure TFMLotin.lblCancelMouseEnter(Sender: TObject);
begin
  imgCancel1.Visible := True;
  imgCancel2.Visible := False;
end;

procedure TFMLotin.lblCancelMouseLeave(Sender: TObject);
begin
  imgCancel1.Visible := False;
  imgCancel2.Visible := True;
end;

procedure TFMLotin.FormCreate(Sender: TObject);
var FilePath,ErrMsg,ORGID,UserCode : string;
    IniFile:TIniFile;
begin
  inherited;
  LoginCount := 0;
  //edtUserID.Text := UserInfo.BeforeUserID;
  FilePath := ExtractFilePath(paramstr(0))+'\Img\login.jpg';
  if not LoadImage(FilePath,imgLogin) then  Gio.AddShow('图片路径不存在：'+FilePath);
  FilePath := ExtractFilePath(paramstr(0))+'\Img\Login_imgOk1.bmp';
  LoadImage(FilePath,imgOk1);
  FilePath := ExtractFilePath(paramstr(0))+'\Img\Login_imgOk2.bmp';
  LoadImage(FilePath,imgOk2);
  FilePath := ExtractFilePath(paramstr(0))+'\Img\imgCancel1.bmp';
  LoadImage(FilePath,imgCancel1);
  FilePath := ExtractFilePath(paramstr(0))+'\Img\imgCancel2.bmp';
  LoadImage(FilePath,imgCancel2);
  LoginStates := False;
//  if not CliDM.Get_OpenSQL(cdsOrgList,'select fid,fnumber,fname_l2 from t_org_baseunit where FID<>''11111111-1111-1111-1111-111111111111CCE7AED4''  order by Flevel,fnumber',ErrMsg) then
//  begin
//    Gio.AddShow('获取组织表数据出错'+ErrMsg);
//    ShowError(Handle, '获取组织表数据出错:'+ErrMsg,[]);
//    Abort;
//  end;

end;

procedure TFMLotin.lblOKClick(Sender: TObject);
var
  ErrMsg,ReturnUserFID,FPERSONID: string;
  IniFile : TIniFile;
begin
  lbl1.Visible := True;
  lbl1.Caption := '正在登录中,请稍候...';
  try
    if not PassExitCheck(ErrMsg) then
    begin
       IsLogin := False;
       self.ActiveControl := edtUserID;
       edtUserID.SetFocus;
       ShowMsg(Handle, ErrMsg,[]);
       abort;
    end;
  except
    on E:Exception do
    begin
      lbl1.Caption := '登录系统发现错误：'+e.Message;
      Gio.AddShow('PassExitCheck出错'+e.Message);
      abort;
    end;
  end;
  lbl1.Caption := '正在为您获取登录信息...';
  lbl1.Visible:=true;
  lbl1.Caption := '登录信息获取完成,正在打开系统...';
  application.ProcessMessages;
  sleep(100);
  IniFile := TINIFile.Create(ExtractFilePath(paramstr(0)) + 'POSSetup.ini');
  try
    IniFile.WriteString('POSClient', 'LastOrgFID',Trim(UserInfo.Branch_ID));  //登录组织
    IniFile.WriteString('POSClient', 'UserID',Trim(edtUserID.text));          //记录本次登录店铺
  finally
    IniFile.Free;
  end;
  Self.ModalResult := mrOk;
  Exit;
end;

procedure TFMLotin.lblCancelClick(Sender: TObject);
begin
  self.ModalResult := mrCancel;
end;

procedure TFMLotin.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_RETURN) then
  begin
      Perform(WM_NEXTDLGCTL, 0, 0);
  end
  else if Key = VK_ESCAPE then
    lblCancelClick(lblCancel);
end;





function TFMLotin.Chk_LoginUser(_SysOnline: Boolean; const ClientTag,
  UserID, UserPwd: string; var cdsUserShopList,cdsShopIntervalList: TClientDataSet; var ReturnUserFID,ErrMsg,FPERSONID: string): Shortint;
var
  User_PWD: WideString;
  Data1,Data2 : OleVariant;
  TData1,TData2 : OleVariant;
  sqlstr,LocalRegistInfo,MachineCode : string;  //本地数据库附带服务器信息，与服务器比对
begin
  Result := 0;
  ErrMsg := '';
  //联机则与服务器连接判断用户密码
  if _SysOnline then
  begin
    if not CliDM.ConnectSckCon(ErrMsg) then  //打开连接
    begin
        ErrMsg := '连接服务器错误,请检查网络是否正常,或者和管理员联系！' ;
        Gio.AddShow('连接服务器错误：' + ErrMsg);
        Result := -1;
        Exit;
    end;
    try
      Result := CliDM.SckCon.AppServer.Chk_ERP_LoginUser(ClientTag, Trim(edtUserID.Text), Trim(edtUserPwd.Text),LocalRegistInfo,ReturnUserFID,ErrMsg, Data1,Data2,FPERSONID,MachineCode);
    except
      on E : Exception do
      begin
        ShowError(Handle, '登录出错:'+E.Message,[]);
        self.ActiveControl := edtUserID;
        edtUserID.SetFocus;
        if CliDM.SckCon.Connected then CliDM.SckCon.Close;
      end;
    end;
    if CliDM.SckCon.Connected then CliDM.SckCon.Close;
    Exit;
  end;
end;


procedure TFMLotin.cbOrgKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_RETURN) then
  begin
    edtUserID.SetFocus;
  end;
  if Key=40 then
  begin
    edtUserID.SetFocus;
  end;
end;

function TFMLotin.Ini_ShopInfo: Boolean;
var IniFile: TIniFile;
  ErrMsg,sqlstr : string;
  MateRialSizeGp : string;
begin
  Result := True;
  UserInfo.ExePath := ExtractFilePath(paramstr(0));             //当前目录

  IniFile := TINIFile.Create(ExtractFilePath(paramstr(0)) + 'POSSetup.ini');
  try
    IniFile.WriteString('POSClient', 'UserCode',Trim(edtUserID.text));        //记录本次登录用户
    UserInfo.Delete_POS_Temp := IniFile.ReadBool('POSClient', 'Delete_POS_Temp',True);
  finally
    IniFile.Free;
  end;
  //初始化参数信息
  try
    Gio.AddShow('开始下载店铺信息 ');


    if not CliDM.GetShopInfo(ErrMsg) then
    begin
      ShowMsg(Handle,ErrMsg,[]);
      Result := False;
      application.Terminate;
    end;
    //初始化ERP辅助资料
    InitAssInfo(ErrMsg) ;
    Get_ClientAssInfo;
  except
    ON E:exception do
    begin
      ShowMessage(e.Message);
      Gio.AddShow('Ini_ShopInfo 初始化参数信息出错 ');
      Result := False;
      Abort;
    end;
  end;
  //系统尺码组数量
  sqlstr := 'select 1 from Ct_Bas_Sizegroup(nolock) ';
  Userinfo.SizeGroupCount := CliDM.Client_QuerySQL(sqlstr).RecordCount;

  sqlstr := 'select FPARENTID,COUNT(*) AS SizeCount from ct_bas_sizegroupentry GROUP BY FPARENTID ORDER BY COUNT(*) DESC';
  MateRialSizeGp := CliDM.Client_QuerySQL(sqlstr).FieldByName('FPARENTID').asstring;

  sqlstr := 'SELECT DISTINCT FPARENTID,CFSIZEID FROM ct_bas_sizegroupentry WHERE FPARENTID='+QuotedStr(MateRialSizeGp);
  Userinfo.MaxSizeCount := CliDM.Client_QuerySQL(sqlstr).RecordCount;
  Userinfo.Earnest_FID := CliDM.Client_QuerySQL('select FID,FNUMBER from CT_SBA_SHOPRECEIVETYPE(nolock) Where FNAME_L2='+QuotedStr('定金')).fieldbyName('FID').AsString;  //定金FID
  Userinfo.Cash_FID := CliDM.Client_QuerySQL('select FID,FNUMBER from CT_SBA_SHOPRECEIVETYPE(nolock) Where FNAME_L2='+QuotedStr('现金')).fieldbyName('FID').AsString;     //现金FID

  //加载辅助属性 20110205
  Gio.AddShow('开始加载辅助属性 ');
  sqlstr := 'Select FID,FNumber,FNAME_L1,FNAME_L2,FNAME_L3 From T_BD_AsstAttrValue(nolock) Where FBasicTypeID<>''''';
  with CliDM.Client_QuerySQL(sqlstr) do
  begin
    if not IsEmpty then
    begin
      First;
      while not Eof do
      begin
        if not CliDM.cdsAsst.Active then CliDM.cdsAsst.CreateDataSet;
        if CliDM.cdsAsst.state in DB.dsEditModes then CliDM.cdsAsst.Edit;
        CliDM.cdsAsst.Append;
        CliDM.cdsAsst.FieldByName('FID').AsString := FieldByName('FID').AsString;
        CliDM.cdsAsst.FieldByName('FNumber').AsString := FieldByName('FNumber').AsString;
        CliDM.cdsAsst.FieldByName('fname_l2').AsString := FieldByName('fname_l2').AsString;
        Next;
      end;
      CliDM.cdsAsst.Post;
    end;
    if CliDM.qryTemp.Active then CliDM.qryTemp.Close;
  end;
  Gio.AddShow('辅助属性加载完成！ ');

  UserInfo.YearStr := FormatDateTime('yyyy',UserInfo.ServerTime);  //20120409 开单获取当前年份，表分区用

  CliDM.InsertOnDutyRecord(UserInfo.LoginUser_FID,UserInfo.Warehouse_FID,UserInfo.MachineCode,UserInfo.FreQuency_ID,1);  //owen添加上班记录
  if  FMCliMain.Is_SysOnline then   //添加在线登陆日志owen
    CliDM.AddOnlineLoginRec('IN',UserInfo.Warehouse_FID,UserInfo.Warehouse_Number,UserInfo.Warehouse_Name,UserInfo.LoginUser_FID,
                                 UserInfo.LoginUser,UserInfo.LoginUser_Name,LocalIP,'');
end;

function TFMLotin.PassExitCheck(var ErrMsg : string) : Boolean;
var ReturnUserFID,FPERSONID : string;
begin
  Result := True;
  if Trim(edtUserID.Text) = '' then
  begin
    ErrMsg := '请输入用户账号!';
    Result := False;
    Exit;
  end;
  try
    screen.Cursor:=crHourGlass;
    lbl1.Caption:='正在验证用户信息...';
    lbl1.Visible:=true;
    application.ProcessMessages;
    if not CliDM.SckCon.Connected then CliDM.ConnectSckCon(ErrMsg) ;
    if CliDM.SckCon.AppServer.E_UserLogin(edtUserID.Text,edtUserPwd.Text,ReturnUserFID, ErrMsg)=0 then
    begin
      UserPwd := Trim(edtUserPwd.Text);
      FMCliMain.LoginUser_ID := Trim(edtUserID.Text);
      FMCliMain.LoginUser_Name := ErrMsg;
      UserInfo.LoginUser := Trim(edtUserID.Text);
      UserInfo.UserPass  := Trim(edtUserPwd.Text);
      UserInfo.LoginUser_FID := Trim(ReturnUserFID);
      GetDefUserOrg(UserInfo.LoginUser_FID);
      IsLogin := True;     //登录成功，可以点确定按钮
    end
    else
    begin
      IsLogin := False;  //登录失败，不允许点确定按钮
      begin
        Result := False;
        Exit;
      end;
    end;
  finally
    screen.Cursor:=crDefault;
    lbl1.Caption:='';
    lbl1.Visible:=false;
    if CliDM.SckCon.Connected then CliDM.CloseSckCon;
    application.ProcessMessages;
  end;
end;
procedure TFMLotin.edtUserPwdKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var ErrMsg : string;
begin
  if Key=38 then edtUserID.SetFocus; //向上
  if (Key=40) or (Key = VK_RETURN) then //向下键
  begin
    lblOK.OnClick(Sender);
  end;
end;

procedure TFMLotin.edtUserIDKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=40 then edtUserPwd.SetFocus;  //向下键
end;

procedure TFMLotin.FormShow(Sender: TObject);
begin
  if edtUserID.Text <> '' then edtUserPwd.SetFocus;
end;

procedure TFMLotin.GetDefUserOrg(FUserID: string);
var _SQL,ErrMsg:string;
     cds:TClientDataSet;
begin
  try
    cds := TClientDataSet.Create(nil);
    _SQL :=' select a.FID,a.fnumber,a.fName_l2,a.FControlUnitID from t_org_baseunit a '
          +' where exists(select 1 from t_pm_user u where u.FDefOrgUnitID=a.fid and u.fid='+quotedstr(FUserID)+')';
    if  CliDM.Get_OpenSQL(cds,_SQL,ErrMsg) then
    begin
      if not cds.IsEmpty then
      begin
        UserInfo.Branch_ID     := cds.fieldbyname('FID').AsString;
        UserInfo.Branch_Number := cds.fieldbyname('Fnumber').AsString;
        UserInfo.Branch_Name   := cds.fieldbyname('Fname_l2').AsString;
        //UserInfo.Branch_Flag   := cds.Fieldbyname('CFBRanchFlag').AsString;   //获取机构标识
        UserInfo.FCONTROLUNITID:= cds.fieldbyname('FControlUnitID').AsString; //管理单元
        UserInfo.Controlunitid := cds.fieldbyname('FControlUnitID').AsString;  //管理单元
      end;
    end
    else
    begin
      Gio.AddShow(ErrMsg+':'+_SQL);
    end;
  finally
    cds.Free;
  end;
end;


end.
