{
  录入会员信息
}
unit uVipBase;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBaseEditFrm, ExtCtrls, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxButtonEdit, StdCtrls, DB, DBClient, cxDBEdit,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, Menus,
  cxLookAndFeelPainters, cxButtons, dxSkinOffice2007Black,
  dxGDIPlusClasses, jpeg, Buttons, cxPC, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, ADODB, cxCalendar,DateUtils,
  dxSkinsCore, dxSkinscxPCPainter;

type
  TVipBaseFrm = class(TSTBaseEdit)
    pnClient: TPanel;
    cxDBMaskEdit1: TcxDBMaskEdit;
    cds_VIPBaseData: TClientDataSet;
    cdbFNAME_L2: TcxDBMaskEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Panel1: TPanel;
    Image1: TImage;
    cxpctl: TcxPageControl;
    cxtbBase: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    btAssociatorSave: TSpeedButton;
    sbtNewCardSave: TSpeedButton;
    ds_VIPBaseData: TDataSource;
    cds_VIPBaseDataFIDCARD: TWideStringField;
    cds_VIPBaseDataFGENDER: TFloatField;
    cds_VIPBaseDataFBIRTHDAY: TDateTimeField;
    cds_VIPBaseDataFFAMILYCOUNT: TFloatField;
    cds_VIPBaseDataFTELEPHONENO: TWideStringField;
    cds_VIPBaseDataFMOBILEPHONNO: TWideStringField;
    cds_VIPBaseDataFEMAIL: TWideStringField;
    cds_VIPBaseDataFMSNNUMBER: TWideStringField;
    cds_VIPBaseDataFQQNUMBER: TWideStringField;
    cds_VIPBaseDataFACCEPTEMAIL: TFloatField;
    cds_VIPBaseDataFACCEPTSMS: TFloatField;
    cds_VIPBaseDataFCITYID: TWideStringField;
    cds_VIPBaseDataFVEHICLETYPE: TFloatField;
    cds_VIPBaseDataFVIPDEGREE: TFloatField;
    cds_VIPBaseDataFHOMETOWN: TWideStringField;
    cds_VIPBaseDataFLIVEADDRESS: TWideStringField;
    cds_VIPBaseDataFPOSTALCODE: TWideStringField;
    cds_VIPBaseDataFWORKUNIT: TWideStringField;
    cds_VIPBaseDataFREMARK: TWideStringField;
    cds_VIPBaseDataFJOBID: TWideStringField;
    cds_VIPBaseDataFEDUCATIONID: TWideStringField;
    cds_VIPBaseDataFFAMILYINCOMEID: TWideStringField;
    cds_VIPBaseDataFNATIONID: TWideStringField;
    cds_VIPBaseDataFSOWNTOWNID: TWideStringField;
    cds_VIPBaseDataFCOMMUNITYID: TWideStringField;
    cds_VIPBaseDataFWORKZIPCODE: TWideStringField;
    cds_VIPBaseDataFBASESTATUS: TFloatField;
    cds_VIPBaseDataFNAME_L1: TWideStringField;
    cds_VIPBaseDataFNAME_L2: TWideStringField;
    cds_VIPBaseDataFNAME_L3: TWideStringField;
    cds_VIPBaseDataFNUMBER: TWideStringField;
    cds_VIPBaseDataFDESCRIPTION_L1: TWideStringField;
    cds_VIPBaseDataFDESCRIPTION_L2: TWideStringField;
    cds_VIPBaseDataFDESCRIPTION_L3: TWideStringField;
    cds_VIPBaseDataFSIMPLENAME: TWideStringField;
    cds_VIPBaseDataFCREATORID: TWideStringField;
    cds_VIPBaseDataFCREATETIME: TDateTimeField;
    cds_VIPBaseDataFLASTUPDATEUSERID: TWideStringField;
    cds_VIPBaseDataFLASTUPDATETIME: TDateTimeField;
    cds_VIPBaseDataFCONTROLUNITID: TWideStringField;
    cds_VIPBaseDataFID: TWideStringField;
    cds_VIPBaseDataFCERTTYPE: TFloatField;
    cds_VIPBaseDataFCREDITQUOTA: TFloatField;
    cds_VIPBaseDataFACCEPTMAIL: TFloatField;
    cds_VIPBaseDataFUSEDCREDITQUOTA: TFloatField;
    cdbFGender: TcxDBComboBox;
    Label8: TLabel;
    cxDBMaskEdit4: TcxDBMaskEdit;
    Label9: TLabel;
    cxDBMaskEdit7: TcxDBMaskEdit;
    Label10: TLabel;
    cxDBMaskEdit8: TcxDBMaskEdit;
    Label11: TLabel;
    cxDBMaskEdit9: TcxDBMaskEdit;
    Label12: TLabel;
    cxDBMaskEdit10: TcxDBMaskEdit;
    Label14: TLabel;
    Label15: TLabel;
    cxDBMaskEdit11: TcxDBMaskEdit;
    cxDBMaskEdit12: TcxDBMaskEdit;
    Label16: TLabel;
    cxDBMaskEdit13: TcxDBMaskEdit;
    cdsTemp: TClientDataSet;
    Label7: TLabel;
    cdbFRemark: TcxDBMaskEdit;
    edFMOBILEPHONNO: TcxDBMaskEdit;
    Label1: TLabel;
    Label13: TLabel;
    deFBIRTHDAY: TcxDBDateEdit;
    Label5: TLabel;
    cdbFCERTTYPE: TcxDBComboBox;
    Label6: TLabel;
    cdbFIDCARD: TcxDBMaskEdit;
    Label19: TLabel;
    cds_VIPBaseDataCFRelName: TWideStringField;
    cds_VIPBaseDataCFRelGender: TFloatField;
    cds_VIPBaseDataCFRelBirth: TDateTimeField;
    Label20: TLabel;
    cxDBMaskEdit2: TcxDBMaskEdit;
    Label21: TLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    Label22: TLabel;
    cxDBComboBox1: TcxDBComboBox;
    cds_VIPBaseDatacfregistershopidid: TWideStringField;
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure btAssociatorSaveClick(Sender: TObject);
    procedure cds_VIPBaseDataFGENDERSetText(Sender: TField;
      const Text: String);
    procedure cds_VIPBaseDataFCERTTYPESetText(Sender: TField;
      const Text: String);
    procedure cds_VIPBaseDataFCERTTYPEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cds_VIPBaseDataFGENDERGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cds_VIPBaseDataNewRecord(DataSet: TDataSet);
    procedure cds_VipcardNewRecord(DataSet: TDataSet);
    procedure cds_VIPBaseDataAfterEdit(DataSet: TDataSet);
    procedure cdbFIDCARDExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cds_VIPBaseDataCFRelGenderGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure cds_VIPBaseDataCFRelGenderSetText(Sender: TField;
      const Text: String);
    procedure sbtNewCardSaveClick(Sender: TObject);
  private
    { Private declarations }
    procedure CreateParams(var Params: TCreateParams); override;
    function AssociatorCardEdit(VipFID:String):Boolean;
  public
    { Public declarations }
  end;

var
  VipBaseFrm: TVipBaseFrm;
  function VipBaseEdit(VipFID :string) : Boolean; //新增或打开卡记录
implementation
uses FrmCliDM,Pub_Fun, uEmitAssociatorCard;
{$R *.dfm}

//获取性别
function card_id_sex(ID: string): boolean;
var I: integer;
begin
  I:= 17;
  if Length(ID) = 15 then I := 15;
  Result := StrToInt(ID[I]) mod 2 = 1;
end;
//获取生日
function card_id_birth(ID: string): TDate;
begin
  if Length(ID) = 15 then
    Result := StrtoDate(Format('19%s-%s-%s',[Copy(ID,7,2),Copy(ID,9,2),Copy(ID,11,2)]))
  else
    Result := StrtoDate(Format('%s-%s-%s',[Copy(ID,7,4),Copy(ID,11,2),Copy(ID,13,2)]));
end;

function VipBaseEdit(VipFID :string) : Boolean; //新增或打开卡记录
begin
  Result := True;
  if EmitAssociatorCard <> nil then
  begin
    VipBaseFrm.SetFocus;
    Exit;
  end;

  Application.CreateForm(TVipBaseFrm, VipBaseFrm);
  try
    VipBaseFrm.AssociatorCardEdit(VipFID);
    VipBaseFrm.Show;
    VipBaseFrm.SetFocus;
  finally

  end;
end;

//添加或修改会员信息
function TVipBaseFrm.AssociatorCardEdit(VipFID: String): Boolean;
var ErrMsg,sqlstr : string;
begin
  cds_VIPBaseData.Close;
  sqlstr := 'SELECT * FROM T_RT_VIPBaseData Where FID='+QuotedStr(VipFID);
  Result := CliDM.Get_OpenSQL(cds_VIPBaseData,sqlstr,ErrMsg);
  if not Result then
  begin
    ShowMsg(Handle, ErrMsg,[]);
    abort;
  end;

  //会员
  cds_VIPBaseData.Edit;
  if cds_VIPBaseData.RecordCount=0 then
  begin
    cds_VIPBaseData.Append;
    cds_VIPBaseData.FieldByName('FID').AsString := CliDM.GetEASSID(UserInfo.T_RT_VIPBaseData);
    cds_VIPBaseData.FieldByName('FNUMBER').AsString := Clidm.GetBillNo('VIP',UserInfo.WareHouser_Sign,UserInfo.MachineCode); //会员编号;
    cds_VIPBaseData.Post;
  end;
end;

procedure TVipBaseFrm.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
  inherited;
  Resize:=False;
  
end;

procedure TVipBaseFrm.btAssociatorSaveClick(Sender: TObject);
var  ErrMsg,VipFID,FMobilephonno,sqlstr : string;
begin
  inherited;
  if not cds_VIPBaseData.Active then
  begin
      ShowMsg(Handle, '没有需要保存的会员记录！',[]);
      Abort;
  end;
  if Trim(cdbFNAME_L2.Text) = '' then
  begin
      ShowMsg(Handle, '请输入会员名称！',[]);
      cxpctl.ActivePage := cxtbBase;
      cdbFNAME_L2.SetFocus;
      Abort;
  end;

  if Trim(edFMOBILEPHONNO.Text) = '' then
  begin
      ShowMsg(Handle, '请输入手机号码！',[]);
      cxpctl.ActivePage := cxtbBase;
      edFMOBILEPHONNO.SetFocus;
      Abort;
  end;

  if Trim(cdbFGender.Text) = '' then
  begin
      ShowMsg(Handle, '请选择性别！',[]);
      cxpctl.ActivePage := cxtbBase;
      cdbFGender.SetFocus;
      Abort;
  end;
  //检查手机号码是否存在
  VipFID := cds_VIPBaseData.fieldByName('FID').AsString;
  FMobilephonno := Trim(edFMOBILEPHONNO.Text);
  //检查手机号码是否存在
  CheckVipMobilePhono(VipFID,FMobilephonno);

  if cds_VIPBaseData.State in db.dsEditModes then cds_VIPBaseData.Post;
  //提交数据
  try
    if not CliDM.Apply_Delta(cds_VIPBaseData,'T_RT_VIPBaseData',ErrMsg) then
    begin
      ShowError(Handle, '数据提交失败：'+ErrMsg,[]);
      Gio.AddShow(ErrMsg);
    end
    else
      ShowMsg(Handle, '会员资料保存提交成功！！',[]);
  except
    on E: Exception do
    begin
      ShowError(Handle, '数据提交失败：'+e.Message,[]);
      Abort;
    end;
  end;


  
end;

procedure TVipBaseFrm.cds_VIPBaseDataFGENDERSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  if Text='男' then
  Sender.Value := 1
  else
  if Text='女' then
  Sender.Value := 2;
end;

procedure TVipBaseFrm.cds_VIPBaseDataFCERTTYPESetText(
  Sender: TField; const Text: String);
begin
  inherited;
  if Text='身份证' then
  Sender.Value :=1
  else
  if Text='军人证' then
  Sender.Value :=2
  else
  if Text='学生证' then
  Sender.Value :=3
  else
  if Text='驾驶证' then
  Sender.Value :=4
  else
  if Text='其他' then
  Sender.Value :=5;
end;

procedure TVipBaseFrm.cds_VIPBaseDataFCERTTYPEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  if Sender.Value=1  then
  Text :='身份证'
  else
  if Sender.Value =2 then
  Text :='军人证'
  else
  if Sender.Value =3 then
  Text :='学生证'
  else
  if Sender.Value =4 then
  Text :='驾驶证'
  else
  if Sender.Value =5 then
  Text :='其他';
end;

procedure TVipBaseFrm.cds_VIPBaseDataFGENDERGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  if Sender.Value = 1 then
    Text:='男'
  else
  if Sender.Value = 2 then
    Text:='女';
end;

//发卡后删除制单表的记录,发卡表插入一条新的记录
procedure TVipBaseFrm.cds_VIPBaseDataNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FCREATORID').AsString := UserInfo.LoginUser_FID;
  DataSet.FieldByName('FCREATETIME').AsDateTime := CliDM.Get_ServerTime;
  DataSet.FieldByName('FCONTROLUNITID').AsString := UserInfo.FCONTROLUNITID;
  DataSet.FieldByName('cfregistershopidid').AsString := UserInfo.Warehouse_FID;
end;

procedure TVipBaseFrm.cds_VipcardNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FCREATORID').AsString := UserInfo.LoginUser_FID;
  DataSet.FieldByName('FCREATETIME').AsDateTime := CliDM.Get_ServerTime;
  DataSet.FieldByName('FLASTUPDATEUSERID').AsString := UserInfo.LoginUser_FID;
  DataSet.FieldByName('FLASTUPDATETIME').AsDateTime := CliDM.Get_ServerTime;
end;

procedure TVipBaseFrm.cds_VIPBaseDataAfterEdit(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FLASTUPDATEUSERID').AsString := UserInfo.LoginUser_FID;
  DataSet.FieldByName('FLASTUPDATETIME').AsDateTime := CliDM.Get_ServerTime;
end;

procedure TVipBaseFrm.cdbFIDCARDExit(Sender: TObject);
begin
  inherited;
  if Trim(cdbFIDCARD.Text) = '' then Exit;
  if cdbFCERTTYPE.Text = '身份证' then
  begin
    try
      if Card_id_sex(Trim(cdbFIDCARD.Text)) then
        cds_VIPBaseData.FieldByName('FGender').Value := 1
      else
        cds_VIPBaseData.FieldByName('FGender').Value := 0;

      cds_VIPBaseData.FieldByName('FBIRTHDAY').AsDateTime := Card_id_birth(Trim(cdbFIDCARD.Text));
    except
      ShowMsg(Handle, '身份证号码错误!',[]);
      //cdbFIDCARD.SetFocus;
    end;
  end;
end;

procedure TVipBaseFrm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  //inherited;
end;

procedure TVipBaseFrm.FormCreate(Sender: TObject);
var sqlstr : string;
begin
  inherited;
  cxpctl.ActivePage := cxtbBase;
end;

procedure TVipBaseFrm.FormDestroy(Sender: TObject);
begin
  inherited;
  EmitAssociatorCard := nil;
end;

procedure TVipBaseFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TVipBaseFrm.CreateParams(var Params: TCreateParams);
begin
  Inherited CreateParams(Params);
  //Params.WndParent := GetDesktopWindow;
  Params.ExStyle := Params.ExStyle or WS_Ex_AppWindow;
end;

procedure TVipBaseFrm.cds_VIPBaseDataCFRelGenderGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  if Sender.Value = 1 then
    Text:='男'
  else
  if Sender.Value = 2 then
    Text:='女';
end;

procedure TVipBaseFrm.cds_VIPBaseDataCFRelGenderSetText(
  Sender: TField; const Text: String);
begin
  inherited;
  if Text='男' then
  Sender.Value := 1
  else
  if Text='女' then
  Sender.Value := 2;
end;

procedure TVipBaseFrm.sbtNewCardSaveClick(Sender: TObject);
begin
  inherited;

  AssociatorCardEdit('');
end;

end.
