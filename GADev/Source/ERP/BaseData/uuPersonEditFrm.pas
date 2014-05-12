unit uuPersonEditFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBaseEditFrm, DB, DBClient, Buttons, jpeg, ExtCtrls, cxMaskEdit,
  cxButtonEdit, cxDBEdit, cxTextEdit, cxControls, cxContainer, cxEdit,
  StdCtrls, cxLookAndFeelPainters, cxDropDownEdit, cxCalendar, cxMemo,
  cxGroupBox, cxCalc, cxCheckBox, cxGraphics, dxSkinsCore,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver;

type
  TuPersonEditFrm = class(TSTBaseEdit)
    p_top: TPanel;
    Image1: TImage;
    spt_Bear: TSpeedButton;
    spt_uBear: TSpeedButton;
    btn_NewRow: TSpeedButton;
    btn_DelRow: TSpeedButton;
    spt_Audit: TSpeedButton;
    spt_uAudit: TSpeedButton;
    btn_CopyNew: TSpeedButton;
    btn_por: TSpeedButton;
    btn_Fisrt: TSpeedButton;
    btn_next: TSpeedButton;
    btn_last: TSpeedButton;
    spt_Import: TSpeedButton;
    TopPl: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Bevel8: TBevel;
    Label55: TLabel;
    Label4: TLabel;
    txt_FNUMBER: TcxDBTextEdit;
    txt_FNAME_L2: TcxDBTextEdit;
    txt_lableFind: TcxTextEdit;
    txt_DetpName: TcxDBButtonEdit;
    Panel3: TPanel;
    cxGroupBox1: TcxGroupBox;
    Label56: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label13: TLabel;
    txt_FOldName: TcxDBTextEdit;
    txt_FAddress: TcxDBTextEdit;
    txt_FHomePhone: TcxDBTextEdit;
    mm_QuerySQL: TcxMemo;
    cxGroupBox4: TcxGroupBox;
    Label21: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    txt_ctName: TcxDBTextEdit;
    txt_FCREATETIME: TcxDBDateEdit;
    txt_alName: TcxDBTextEdit;
    txt_FLASTUPDATETIME: TcxDBDateEdit;
    txt_baseunitName: TcxDBTextEdit;
    txt_FCell: TcxDBTextEdit;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label14: TLabel;
    txt_FState: TcxDBTextEdit;
    txt_FOfficePhone: TcxDBTextEdit;
    txt_FEMail: TcxDBTextEdit;
    Label7: TLabel;
    txt_FIDCardNO: TcxDBTextEdit;
    txt_FPassportNO: TcxDBTextEdit;
    txt_fwxnumber: TcxDBTextEdit;
    txt_fqqnumber: TcxDBTextEdit;
    txt_FBackupEMail: TcxDBTextEdit;
    txt_FRTX: TcxDBTextEdit;
    txt_FBackupCell: TcxDBTextEdit;
    txt_CFIsStore: TcxDBCheckBox;
    Label19: TLabel;
    txt_CFDepreciationRate: TcxDBCalcEdit;
    cdsMater: TClientDataSet;
    dsMater: TDataSource;
    cdsMaterFID: TWideStringField;
    cdsMaterFNUMBER: TWideStringField;
    cdsMaterFNAME_L2: TWideStringField;
    cdsMaterFGENDER: TFloatField;
    cdsMaterFBIRTHDAY: TDateTimeField;
    cdsMaterFQQNUMBER: TWideStringField;
    cdsMaterFWXNUMBER: TWideStringField;
    cdsMaterFEMAIL: TWideStringField;
    cdsMaterFADDRESS: TWideStringField;
    cdsMaterFSTATE: TFloatField;
    cdsMaterFHOMEPHONE: TWideStringField;
    cdsMaterFOFFICEPHONE: TWideStringField;
    cdsMaterFCELL: TWideStringField;
    cdsMaterFBACKUPCELL: TWideStringField;
    cdsMaterFBACKUPEMAIL: TWideStringField;
    cdsMaterFRTX: TWideStringField;
    cdsMaterFIDCARDNO: TWideStringField;
    cdsMaterFPASSPORTNO: TWideStringField;
    cdsMaterFOLDNAME: TWideStringField;
    cdsMaterFCREATORID: TWideStringField;
    cdsMaterFCREATETIME: TDateTimeField;
    cdsMaterFLASTUPDATEUSERID: TWideStringField;
    cdsMaterFLASTUPDATETIME: TDateTimeField;
    cdsMaterFCONTROLUNITID: TWideStringField;
    cdsMaterCFISSTORE: TFloatField;
    cdsMaterCFDEPRECIATIONRATE: TFloatField;
    cdsSave: TClientDataSet;
    WideStringField1: TWideStringField;
    WideStringField2: TWideStringField;
    WideStringField3: TWideStringField;
    FloatField1: TFloatField;
    DateTimeField1: TDateTimeField;
    WideStringField4: TWideStringField;
    WideStringField5: TWideStringField;
    WideStringField6: TWideStringField;
    WideStringField7: TWideStringField;
    FloatField2: TFloatField;
    WideStringField8: TWideStringField;
    WideStringField9: TWideStringField;
    WideStringField10: TWideStringField;
    WideStringField11: TWideStringField;
    WideStringField12: TWideStringField;
    WideStringField13: TWideStringField;
    WideStringField14: TWideStringField;
    WideStringField15: TWideStringField;
    WideStringField16: TWideStringField;
    WideStringField17: TWideStringField;
    DateTimeField2: TDateTimeField;
    WideStringField18: TWideStringField;
    DateTimeField3: TDateTimeField;
    WideStringField19: TWideStringField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    cdsMaterFHighestDegreeID: TWideStringField;
    cdsSaveFHighestDegreeID: TWideStringField;
    Btn_Save: TSpeedButton;
    cdsMaterDetpName: TWideStringField;
    cdsMaterbaseunitName: TWideStringField;
    cdsMaterctName: TWideStringField;
    cdsMateralName: TWideStringField;
    cdsMaterhpName: TWideStringField;
    txt_FGender: TcxDBComboBox;
    txt_FHighestDegreeID: TcxDBButtonEdit;
    cdsMaterfdepartmentid: TWideStringField;
    cdsSavefdepartmentid: TWideStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cdsMaterFSTATEGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure cdsMaterFGENDERGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure cdsMaterFGENDERSetText(Sender: TField; const Text: String);
    procedure cdsMaterBeforePost(DataSet: TDataSet);
    procedure cdsMaterNewRecord(DataSet: TDataSet);
    procedure txt_DetpNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btn_NewRowClick(Sender: TObject);
    procedure Btn_SaveClick(Sender: TObject);
    procedure spt_ImportClick(Sender: TObject);
    procedure btn_porClick(Sender: TObject);
    procedure btn_FisrtClick(Sender: TObject);
    procedure btn_nextClick(Sender: TObject);
    procedure btn_lastClick(Sender: TObject);
    procedure btn_CopyNewClick(Sender: TObject);
    procedure btn_DelRowClick(Sender: TObject);
    procedure spt_AuditClick(Sender: TObject);
    procedure spt_uAuditClick(Sender: TObject);
    procedure spt_BearClick(Sender: TObject);
    procedure spt_uBearClick(Sender: TObject);
    procedure F7ButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cdsMaterBeforeEdit(DataSet: TDataSet);
    procedure txt_lableFindPropertiesChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    MaterStatus : Integer;//  0:未审核 1:审核 2:禁用
    IsReference : Boolean;
    MaterFID,FQuerySQL,DeptID,DeptName,FBranch_ID: String ;//只用于修改打开窗口时过渡使用
    listQuery:TClientDataSet;
    IsChange:Boolean;//用于记录打开界面后是否修改过数据
    function OpenData(mFID:String):Boolean;
    procedure setControlState;
    function ST_Save : Boolean; override; //保存单据
    function chk_Repeat:Boolean;
    function CHK_Data:Boolean;  //保存前数据校验
    procedure setlistQuery(FID:String;pType:Integer);//pType:1增加一行,2 删除一行
    function CopyNewAdd:Boolean;
    function DelData:Boolean;
  end;

var
  uPersonEditFrm: TuPersonEditFrm;
function EditPerson(_listQuery:TClientDataSet;_MaterFID,_DeptID,_DeptName,_FBranch_ID:string):Boolean;
implementation
  uses FrmCliDM,Pub_Fun,uMaterDataSelectHelper,uDrpHelperClase;
{$R *.dfm}
function EditPerson(_listQuery:TClientDataSet;_MaterFID,_DeptID,_DeptName,_FBranch_ID:string):Boolean;
begin
  try
    Application.CreateForm(TuPersonEditFrm,uPersonEditFrm);
    uPersonEditFrm.listQuery := TClientDataSet.Create(uPersonEditFrm);
    uPersonEditFrm.listQuery.Data := _listQuery.Data;
    uPersonEditFrm.MaterFID := Trim(_MaterFID);
    uPersonEditFrm.DeptID   := _DeptID;
    uPersonEditFrm.DeptName   := _DeptName;
    uPersonEditFrm.FBranch_ID   := _FBranch_ID;
    uPersonEditFrm.ShowModal;
    Result:=uPersonEditFrm.IsChange;
  finally
    uPersonEditFrm.Free;
  end;
end;
{ TuPersonEditFrm }

function TuPersonEditFrm.OpenData(mFID: String): Boolean;
var materSQL,ErrMsg:string;
  _cds: array[0..1] of TClientDataSet;
  _SQL: array[0..1] of String;
begin
  try
    Screen.Cursor := crHourGlass;
    _cds[0] := cdsMater;
    _cds[1] := cdsSave;
    if (mFID <> '') then
    begin
      IsReference := CliDM.Chk_Reference(mFID,'t_bd_person');
      materSQL := FQuerySQL;
      materSQL := materSQL+' where a.fid='+Quotedstr(mFID);
      _SQL[0] := materSQL;
      _SQL[1] := materSQL;
    end
    else
    begin
      MaterStatus := 0;
      IsReference := False;
      materSQL := FQuerySQL;
      materSQL := materSQL+' where 1<>1 ';
      _SQL[0] := materSQL;
      _SQL[1] := materSQL;
    end;
    if not (CliDM.Get_OpenClients_E(mFID,_cds,_SQL,ErrMsg)) then
    begin
      showmsg(self.Handle,'人员资料打开出错:'+ErrMsg,[]);
      Self.Close;
      Abort;
    end;
    if mFID = '' then
    begin
      cdsMater.Append;
      txt_FNUMBER.SetFocus;
    end;
    MaterStatus := cdsMater.fieldbyname('FState').AsInteger;
    setControlState;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TuPersonEditFrm.FormCreate(Sender: TObject);
begin
  inherited;
  FQuerySQL :='  select  a.fid,a.fnumber,a.fname_l2,'
             +'  a.FGender,a.FBirthday,a.fqqnumber,a.fwxnumber,a.FEMail,a.FAddress,a.FState, '
             +'  a.FHomePhone,a.FOfficePhone,a.FCell,a.FBackupCell,a.FBackupEMail,a.FRTX,a.FIDCardNO,a.FPassportNO, '
             +'  a.FOldName ,a.FCreatorID,a.FCreateTime,a.FLastUpdateUserID, '
             +'  a.FLastUpdateTime,a.FControlUnitID,a.CFIsStore,a.CFDepreciationRate,a.fdepartmentid,'
             +'  b.fname_l2 as DetpName ,baseunit.fname_l2 as baseunitName,ctuser.fname_l2 as ctName, '
             +'  alUser.Fname_L2 as alName,hp.fname_l2 as hpName ,  '
             +'  a.FHighestDegreeID  from t_bd_person a '
             +'  left join t_org_admin b on a.fdepartmentid = b.fid '                          // --部门
             +'  left join t_org_baseunit baseunit on  baseunit.fid = a.FControlUnitID'        // --创建机构
             +'  left join t_pm_user ctUser on ctuser.fid = a.fcreatorid '                     // --创建人
             +'  left join t_pm_user alUser on alUser.fid = a.flastupdateuserid'               // --最后修改人
             +'  left join T_BD_HRDiploma hp on hp.fid = a.FHighestDegreeID';                   // --最高学历
end;

procedure TuPersonEditFrm.setControlState;
begin
  if Self.MaterStatus = 0 then
  begin
    Btn_Save.Enabled  := True;
    spt_Audit.Enabled := True;
    spt_uAudit.Enabled := False;
    spt_Bear.Enabled := False;
    spt_uBear.Enabled := False;
  end;
  if Self.MaterStatus = 1 then
  begin
    Btn_Save.Enabled  := False;
    spt_Audit.Enabled := False;
    spt_uAudit.Enabled := True;
    spt_Bear.Enabled := True;
    spt_uBear.Enabled := False;
  end;
  if Self.MaterStatus = 2 then
  begin
    Btn_Save.Enabled  := False;
    spt_Audit.Enabled := False;
    spt_uAudit.Enabled := False;
    spt_Bear.Enabled := False;
    spt_uBear.Enabled := True;
  end;
  if    listQuery.IsEmpty then
  begin
    btn_por.Enabled   := False;
    btn_Fisrt.Enabled := False;
    btn_next.Enabled  := False;
    btn_last.Enabled  := False;
  end
  else
  begin
    btn_por.Enabled := not listQuery.Bof;
    btn_Fisrt.Enabled := not listQuery.Bof;
    btn_next.Enabled := not listQuery.Eof;
    btn_last.Enabled := not listQuery.Eof;
  end;
end;

procedure TuPersonEditFrm.FormShow(Sender: TObject);
begin
  inherited;
  openData(MaterFID);
end;

procedure TuPersonEditFrm.cdsMaterFSTATEGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  if Sender.AsString='' then
  begin
    Text := '未审核';
  end
  else
  case Sender.AsInteger of
  0 : Text := '未审核';
  1 : Text := '已审核';
  2 : Text := '禁用'  ;
  end;
end;

procedure TuPersonEditFrm.cdsMaterFGENDERGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
  1 : Text := '男';
  2 : Text := '女'  ;
  end;
end;

procedure TuPersonEditFrm.cdsMaterFGENDERSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  if Text ='男' then Sender.AsInteger := 1
  else
  Sender.AsInteger := 2;
end;

function TuPersonEditFrm.ST_Save: Boolean;
var _cds: array[0..0] of TClientDataSet;
    error : string;
    i:Integer;
begin
  try
    Screen.Cursor := crHourGlass;
    Result := False;
    if (cdsMater.State in DB.dsEditModes) then cdsMater.Post;
    if chk_Repeat then
    begin
      ShowMsg(Handle, '人员编号重复!       '+error,[]);
      txt_FNUMBER.SetFocus;
      Exit;
    end;
    if cdsSave.IsEmpty then
    cdsSave.Append
    else
    cdsSave.Edit;
    for  i := 0 to cdsSave.FieldCount -1 do
    begin
      cdsSave.Fields[i].Value := cdsMater.fieldbyname(cdsSave.Fields[i].FieldName).Value;
    end;
    cdsSave.Post;
    //提交数据
    if not CHK_Data then Exit;
    _cds[0] := cdsSave;
    try
      if CliDM.Apply_Delta_E(_cds,['t_bd_person'],error) then
      begin
        Result := True;
        self.IsChange := True;
        setlistQuery(cdsMater.fieldbyname('FID').AsString,1);
        Gio.AddShow('t_bd_person表提交成功！');
      end
      else
      begin
        Gio.AddShow('人员资料保存失败!'+error);
        ShowMsg(Handle, '人员资料保存失败!'+error,[]);
      end;
    except
      on E: Exception do
      begin
        Gio.AddShow('t_bd_person表提交失败！'+e.Message);
        ShowMsg(Handle, '人员资料提交失败！'+e.Message,[]);
        Abort;
      end;
    end;
  finally
    Screen.Cursor := crDefault;
  end;
end;

function TuPersonEditFrm.chk_Repeat: Boolean;
var fid,fnumber,_sql,ErrMsg:string;
begin
  Result := False;
  fid := cdsMater.fieldbyname('fid').AsString;
  fnumber := cdsMater.fieldbyname('fnumber').AsString;
  _sql := 'select fid from t_bd_person where fid<>'+QuotedStr(fid)+' and fnumber='+QuotedStr(fnumber);
  if (string(CliDM.Get_QueryReturn(_sql,ErrMsg))<>'') then
  begin
    Result := True;
  end;
end;


function TuPersonEditFrm.CHK_Data: Boolean;
begin
  Result := False ;
  if Trim(cdsMater.FieldByName('fnumber').AsString)='' then
  begin
    ShowMsg(Handle, '人员编号不能为空',[]);
    txt_FNUMBER.SetFocus;
    Exit;
  end;
  if Trim(cdsMater.FieldByName('fname_l2').AsString)='' then
  begin
    ShowMsg(Handle, '人员名称不能为空',[]);
    txt_FNAME_L2.SetFocus;
    Exit;
  end;
  if Trim(txt_DetpName.Text)='' then
  begin
    ShowMsg(Handle, '所属部门不能为空',[]);
    txt_DetpName.SetFocus;
    Exit;
  end;
  Result := True;
end;

procedure TuPersonEditFrm.setlistQuery(FID: String; pType: Integer);
begin
  if pType = 1 then
  begin
    if not listQuery.Locate('fid',VarArrayOf([FID]),[]) then
    begin
      listQuery.Append;
      listQuery.FieldByName('fid').AsString := FID;
      listQuery.Post;
    end;
  end;
  if pType = 2 then
  begin
    if listQuery.IsEmpty then Exit;
    if listQuery.Locate('fid',VarArrayOf([FID]),[]) then
    begin
      listQuery.Delete;
    end;
  end;
end;

procedure TuPersonEditFrm.cdsMaterBeforePost(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('flastupdateuserid').AsString   := UserInfo.LoginUser_FID;
  DataSet.FieldByName('flastupdatetime').AsDateTime   := CliDM.Get_ServerTime;
end;

procedure TuPersonEditFrm.cdsMaterNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FID').AsString := CliDM.GetEASSID('80EF7DED');
  DataSet.FieldByName('fcreatorid').AsString   := UserInfo.LoginUser_FID;
  DataSet.FieldByName('fcreatetime').AsDateTime   := CliDM.Get_ServerTime;
  DataSet.FieldByName('fcontrolunitid').AsString   := UserInfo.Controlunitid;
  DataSet.FieldByName('FState').AsInteger   := 0;
  DataSet.FieldByName('FGender').AsString   := '1';
  DataSet.FieldByName('ctName').AsString   := UserInfo.LoginUser_Name;
  DataSet.FieldByName('alName').AsString   := UserInfo.LoginUser_Name;
  DataSet.FieldByName('baseunitName').AsString   := UserInfo.Branch_Name;
  DataSet.FieldByName('fdepartmentid').AsString   := DeptID;
  DataSet.FieldByName('DetpName').AsString   := DeptName;
end;

procedure TuPersonEditFrm.txt_DetpNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
  var _sql,ErrMsg:string;
begin
  inherited;
  if MaterStatus <> 0 then
  begin
    ShowMsg(Handle, '人员状态不是未审核状态,不能修改',[]);
    Exit;
  end;
  with Select_TreeBaseData('t_org_admin','部门','',' where fbranchid='+QuotedStr(FBranch_ID) ) do
  begin
    if not IsEmpty then
    begin
      if Self.DeptID  <>  fieldbyname('fid').AsString then
      begin
        Self.DeptID := fieldbyname('fid').AsString;
        Self.DeptName := fieldbyname('fname_l2').AsString;
        txt_DetpName.Text := Self.DeptName ;
        cdsMater.Edit;
        cdsMater.FieldByName('fdepartmentid').AsString := DeptID;
        cdsMater.FieldByName('DetpName').AsString := DeptName
      end;
    end;
  end;
end;

procedure TuPersonEditFrm.btn_NewRowClick(Sender: TObject);
begin
  inherited;
  if cdsMater.State in DB.dsEditModes then
  if  MessageBox(Handle, PChar('数据已修改,是否保存？'), '艾尚提示', MB_YESNO) = IDYES then
  begin
    ST_Save;
    Abort;
  end;
  Self.OpenData('');
end;

procedure TuPersonEditFrm.Btn_SaveClick(Sender: TObject);
begin
  inherited;
  if ST_Save then  ShowMsg(Handle, '人员资料保存成功!            ',[]);
end;

procedure TuPersonEditFrm.spt_ImportClick(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TuPersonEditFrm.btn_porClick(Sender: TObject);
begin
  inherited;
  if not listQuery.Bof then
  begin
    listQuery.First;
    openData(listQuery.fieldbyname('fid').AsString);
  end;
end;

procedure TuPersonEditFrm.btn_FisrtClick(Sender: TObject);
begin
  inherited;
  if not listQuery.Bof then
  begin
    listQuery.Prior;
    openData(listQuery.fieldbyname('fid').AsString);
  end;
end;

procedure TuPersonEditFrm.btn_nextClick(Sender: TObject);
begin
  inherited;
  if not listQuery.Eof then
  begin
    listQuery.Next;
    openData(listQuery.fieldbyname('fid').AsString);
  end;
end;

procedure TuPersonEditFrm.btn_lastClick(Sender: TObject);
begin
  inherited;
  if not listQuery.Eof then 
  begin
    listQuery.Last;
    openData(listQuery.fieldbyname('fid').AsString);
  end;
end;

function TuPersonEditFrm.CopyNewAdd: Boolean;
var _Cdsmater:TClientDataSet;
    row,col:Integer;
    _fieldName:string;
begin
  Result := False;
  try
    try
      _Cdsmater := TClientDataSet.Create(nil);
      _Cdsmater.Data := Cdsmater.Data;
      openData('');
      for col := 0 to cdsMater.FieldCount -1 do
      begin
        if cdsMater.Fields[col].FieldKind =  fkData then
        begin
          _fieldName := cdsMater.Fields[col].FieldName;
          if (UpperCase(_fieldName) <> uppercase('FID')) and (UpperCase(_fieldName) <> uppercase('FState'))
             and (UpperCase(_fieldName) <> uppercase('FControlUnitID')) and   (UpperCase(_fieldName) <> uppercase('fcreatorid'))
             and   (UpperCase(_fieldName) <> uppercase('flastupdateuserid'))
          then
          begin
            if (UpperCase(_fieldName) = uppercase('Fnumber')) then
              cdsMater.Fields[col].AsString := _Cdsmater.fieldbyname(_fieldName).AsString+'_COPY'
            else
              cdsMater.Fields[col].Value := _Cdsmater.fieldbyname(_fieldName).Value;
          end;
        end;
      end;
      Result := True;
      txt_FNUMBER.SetFocus;
    except
      on e:Exception do
      begin
        Result := False;
        ShowMsg(self.Handle,'复制新增失败!'+e.Message,[]);
      end;
    end;
  finally
    _Cdsmater.Free;
  end;
end;

procedure TuPersonEditFrm.btn_CopyNewClick(Sender: TObject);
begin
  inherited;
  try
    btn_CopyNew.Enabled := False;
    if cdsMater.State in DB.dsEditModes then
    if  MessageBox(Handle, PChar('数据已修改,是否保存？'), '艾尚提示', MB_YESNO) = IDYES then
    begin
      ST_Save;
      Abort;
    end;
    CopyNewAdd;
  finally
    btn_CopyNew.Enabled := True;
  end;
end;

procedure TuPersonEditFrm.btn_DelRowClick(Sender: TObject);
begin
  inherited;
  if MaterStatus <> 0 then
  begin
    ShowMsg(Handle, '人员状态不是未审核状态,不能删除',[]);
    Exit;
  end;
  if  MessageBox(Handle, PChar('确认删除当前人员信息？'), '艾尚提示', MB_YESNO) = IDNO then
  begin
    Exit;
  end;
  DelData; 
  
end;

function TuPersonEditFrm.DelData: Boolean;
var _sql,ErrMsg,FID:string;
begin
  try
    btn_DelRow.Enabled := False;
    Result := False;
    if IsReference then
    begin
      ShowMsg(self.Handle,'人员数据已被业务单据引用,不允许删除!    ',[]);
      Abort;
    end;
    if MaterStatus <> 0 then
    begin
      ShowMsg(self.Handle,'人员状态必须是未审核状态才能删除!    ',[]);
      Abort;
    end;
    FID := cdsMater.fieldbyname('FID').AsString;
    Result := CliDM.Get_ExecSQL('delete from t_bd_person where fid'+Quotedstr(FID),ErrMsg);
    if not Result then
    begin
      ShowMsg(self.Handle,'人员数据删除失败:'+ErrMsg,[]);
      Gio.AddShow('人员数据删除失败:'+ErrMsg);
      Exit;
    end;
    IsChange := True;
    setlistQuery(FID,2);
    if listQuery.IsEmpty then
    Self.Close
    else
    begin
      btn_DelRow.Enabled := True;
      openData(listQuery.fieldbyname('FID').AsString);
    end;
  finally
    btn_DelRow.Enabled := True;
    setControlState;
  end;
end;

procedure TuPersonEditFrm.spt_AuditClick(Sender: TObject);
begin
  inherited;
  try
    spt_Audit.Enabled := True;
    if MaterStatus <> 0 then
    begin
      ShowMsg(self.Handle,'人员状态必须是未审核状态才能审核',[]);
      Abort;
    end;
    MaterStatus :=  0;
    if not (cdsMater.State in DB.dsEditModes) then cdsMater.Edit;
    cdsMater.FieldByName('FState').AsInteger :=1;
    cdsMater.Post;
    if ST_Save then
    begin
      MaterStatus :=  cdsMater.FieldByName('FState').AsInteger;
      ShowMsg(self.Handle,'人员审核成功!     ',[]);
    end
    else
    begin
      if not (cdsMater.State in DB.dsEditModes) then cdsMater.Edit;
      cdsMater.FieldByName('FState').AsInteger :=0;
      cdsMater.Post;
      MaterStatus :=  cdsMater.FieldByName('FState').AsInteger;
    end;
  finally
    spt_Audit.Enabled := True;
    setControlState;
  end;
end;

procedure TuPersonEditFrm.spt_uAuditClick(Sender: TObject);
begin
  inherited;
  try
    spt_uAudit.Enabled := True;
    if MaterStatus <> 1 then
    begin
      ShowMsg(self.Handle,'人员状态必须是审核状态才能反审核',[]);
      Abort;
    end;
    MaterStatus :=  0;
    if not (cdsMater.State in DB.dsEditModes) then cdsMater.Edit;
    cdsMater.FieldByName('FState').AsInteger :=0;
    cdsMater.Post;
    if ST_Save then
    begin
      MaterStatus :=  cdsMater.FieldByName('FState').AsInteger;
      ShowMsg(self.Handle,'人员反审核成功!     ',[]);
    end
    else
    begin
      if not (cdsMater.State in DB.dsEditModes) then cdsMater.Edit;
      cdsMater.FieldByName('FState').AsInteger :=1;
      cdsMater.Post;
      MaterStatus :=  cdsMater.FieldByName('FState').AsInteger;
    end;
  finally
    spt_uAudit.Enabled := True;
    setControlState;
  end;
end;

procedure TuPersonEditFrm.spt_BearClick(Sender: TObject);
begin
  inherited;
  try
    spt_uBear.Enabled := False;
    if MaterStatus <> 2 then
    begin
      ShowMsg(self.Handle,'人员状态必须是禁用状态才能反禁用',[]);
      Abort;
    end;
    MaterStatus :=  0;
    if not (cdsMater.State in DB.dsEditModes) then cdsMater.Edit;
    cdsMater.FieldByName('FState').AsInteger :=1;
    cdsMater.Post;
    if ST_Save then
    begin
      MaterStatus :=  cdsMater.FieldByName('FState').AsInteger;
      ShowMsg(self.Handle,'人员反禁用成功!     ',[]);
    end
    else
    begin
      if not (cdsMater.State in DB.dsEditModes) then cdsMater.Edit;
      cdsMater.FieldByName('FState').AsInteger :=2;
      cdsMater.Post;
      MaterStatus :=  cdsMater.FieldByName('FState').AsInteger;
    end;
  finally
    spt_uBear.Enabled := True;
    setControlState;
  end;
end;

procedure TuPersonEditFrm.spt_uBearClick(Sender: TObject);
begin
  inherited;
  try
    spt_Bear.Enabled := False;
    if MaterStatus <> 1 then
    begin
      ShowMsg(self.Handle,'人员状态必须是审核状态才能禁用',[]);
      Abort;
    end;
    MaterStatus :=  0;
    if not (cdsMater.State in DB.dsEditModes) then cdsMater.Edit;
    cdsMater.FieldByName('FState').AsInteger := 2;
    cdsMater.Post;
    if ST_Save then
    begin
      MaterStatus :=  cdsMater.FieldByName('FState').AsInteger;
      ShowMsg(self.Handle,'人员禁用成功!     ',[]);
    end
    else
    begin
      if not (cdsMater.State in DB.dsEditModes) then cdsMater.Edit;
      cdsMater.FieldByName('FState').AsInteger :=1;
      cdsMater.Post;
      MaterStatus :=  cdsMater.FieldByName('FState').AsInteger;
    end;
  finally
    spt_Bear.Enabled := True;
    setControlState;
  end;
end;

procedure TuPersonEditFrm.F7ButtonClick(Sender: TObject;
  AButtonIndex: Integer);
  var btn : TcxDBButtonEdit;
      hidelist:TStringList;
      thisFieldName,fidFieldname,tableName,title,whereStr:string;
begin
  if MaterStatus <> 0 then
  begin
    ShowMsg(self.Handle,'仓库状态不是未审核状态,不能修改!',[]);
    Exit;
  end;
  try
    hidelist := TStringList.Create;
    btn := TcxDBButtonEdit(Sender);
    hidelist.DelimitedText := btn.Hint;
    if hidelist.Count <> 3 then Exit;
    thisFieldName := btn.DataBinding.Field.FieldName;
    tableName     := hidelist[0];
    fidFieldname  := hidelist[1];
    title         := hidelist[2];
    whereStr := '' ;
    with Select_BaseData(tableName,title,'',whereStr) do
    begin
      if not IsEmpty then
      begin
        cdsMater.Edit;
        cdsMater.FieldByName(fidFieldname).AsString := fieldbyname('fid').AsString;
        cdsMater.FieldByName(thisFieldName).AsString := fieldbyname('fname_l2').AsString;
        cdsMater.Post;
      end;
    end;
  finally
    hidelist.Free;
  end;
end;

procedure TuPersonEditFrm.cdsMaterBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if MaterStatus <> 0 then
  begin
    ShowMsg(self.Handle,'状态不是未审核状态,不能修改!',[]);
    Abort;
  end;
end;

procedure TuPersonEditFrm.txt_lableFindPropertiesChange(Sender: TObject);
begin
  inherited;
  Findlablecaption(Self,Trim(txt_lableFind.Text),'Label55')
end;

procedure TuPersonEditFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if cdsMater.State in DB.dsEditModes then
  if  MessageBox(Handle, PChar('数据已修改,是否保存？'), '艾尚提示', MB_YESNO) = IDYES then
  begin
    ST_Save;
    Abort;
  end;
end;

end.
