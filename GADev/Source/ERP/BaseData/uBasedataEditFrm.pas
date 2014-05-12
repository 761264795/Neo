unit uBasedataEditFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBaseEditFrm, DB, DBClient, cxLookAndFeelPainters, cxTextEdit,
  ExtCtrls, cxMaskEdit, cxDropDownEdit, cxCalendar, cxDBEdit, StdCtrls,
  cxControls, cxContainer, cxEdit, cxGroupBox, Buttons, jpeg, dxSkinsCore,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver;

type
  TMap = class
    FID:String;
    MaterTable:String;
    StateFieldName:String;
    mType:String;
    listQuery : TClientDataSet;
    public
      constructor Create;
      destructor Destroy;
  end;
type
  TBasedataEditFrm = class(TSTBaseEdit)
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
    Btn_Save: TSpeedButton;
    cdsMater: TClientDataSet;
    dsMater: TDataSource;
    cdsSave: TClientDataSet;
    cxGroupBox4: TcxGroupBox;
    Label21: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label14: TLabel;
    txt_ctName: TcxDBTextEdit;
    txt_FCREATETIME: TcxDBDateEdit;
    txt_alName: TcxDBTextEdit;
    txt_FLASTUPDATETIME: TcxDBDateEdit;
    txt_FState: TcxDBTextEdit;
    TopPl: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Bevel8: TBevel;
    Label55: TLabel;
    txt_FNUMBER: TcxDBTextEdit;
    txt_FNAME_L2: TcxDBTextEdit;
    txt_lableFind: TcxTextEdit;
    Panel1: TPanel;
    procedure Btn_SaveClick(Sender: TObject);
    procedure btn_NewRowClick(Sender: TObject);
    procedure btn_CopyNewClick(Sender: TObject);
    procedure btn_DelRowClick(Sender: TObject);
    procedure btn_porClick(Sender: TObject);
    procedure btn_FisrtClick(Sender: TObject);
    procedure btn_nextClick(Sender: TObject);
    procedure btn_lastClick(Sender: TObject);
    procedure spt_AuditClick(Sender: TObject);
    procedure spt_uAuditClick(Sender: TObject);
    procedure spt_uBearClick(Sender: TObject);
    procedure spt_BearClick(Sender: TObject);
    procedure F7ButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cdsMaterBeforeEdit(DataSet: TDataSet);
    procedure cdsMaterBeforePost(DataSet: TDataSet);
    procedure cdsMaterNewRecord(DataSet: TDataSet);
    procedure txt_lableFindPropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure spt_ImportClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cdsSaveBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    MaterStatus : Integer;//  0:未审核 1:审核 2:禁用
    IsReference : Boolean;//是否被其它表引用过
    FQuerySQL,            //查询脚本
    BosType               //EASBOSTYPE ,如果不赋值将取标准GUID
    : String ;
    Map:TMap;
    IsChange:Boolean;    //用于记录打开界面后是否修改过数据
    procedure setControlState;
    procedure setlistQuery(FID:String;pType:Integer);//pType:1增加一行,2 删除一行
    //以下为虚方法,在子类实现
    function OpenData(mFID:String):Boolean; virtual;  //打开数据,mFID为空就新增一条记录
    function ST_Save : Boolean; virtual; //保存单据
    function chk_Repeat:Boolean; virtual;
    function CHK_Data:Boolean;virtual;  //保存前数据校验
    function CopyNewAdd:Boolean;virtual;
    function DelData:Boolean;virtual;
  end;
type TEditFormClass   =   class   of   TBasedataEditFrm;
var
  BasedataEditFrm: TBasedataEditFrm;
function EditBaseDataInfo(frm :TEditFormClass;_map : TMap):Boolean;
implementation
 uses FrmCliDM,Pub_Fun,uMaterDataSelectHelper,uDrpHelperClase;
{$R *.dfm}
function EditBaseDataInfo(frm :TEditFormClass;_map : TMap):Boolean;
var editfrm:TBasedataEditFrm;
begin
  try
    editfrm := frm.Create(nil);
    editfrm.Map := _map;
    editfrm.ShowModal;
    Result := editfrm.IsChange;
  finally
    editfrm.Free;
  end;
end;
{ TBasedataEditFrm }

function TBasedataEditFrm.CHK_Data: Boolean;
begin
  //
end;

function TBasedataEditFrm.chk_Repeat: Boolean;
begin
 //
end;

function TBasedataEditFrm.CopyNewAdd: Boolean;
begin
  //
end;

function TBasedataEditFrm.DelData: Boolean;
var _sql,ErrMsg,FID:string;
begin
  try
    btn_DelRow.Enabled := False;
    Result := False;
    if IsReference then
    begin
      ShowMsg(self.Handle,'数据已被业务单据引用,不允许删除!    ',[]);
      Abort;
    end;
    if MaterStatus <> 0 then
    begin
      ShowMsg(self.Handle,'状态必须是未审核状态才能删除!    ',[]);
      Abort;
    end;
    FID := cdsMater.fieldbyname('FID').AsString;
    Result := CliDM.Get_ExecSQL('delete from '+map.MaterTable+' where fid'+Quotedstr(FID),ErrMsg);
    if not Result then
    begin
      ShowMsg(self.Handle,'数据删除失败:'+ErrMsg,[]);
      Gio.AddShow('数据删除失败:'+ErrMsg);
      Exit;
    end;
    IsChange := True;
    setlistQuery(FID,2);
    if Map.listQuery.IsEmpty then
    Self.Close
    else
    begin
      btn_DelRow.Enabled := True;
      openData(Map.listQuery.fieldbyname('FID').AsString);
    end;
  finally
    btn_DelRow.Enabled := True;
    setControlState;
  end;
end;

function TBasedataEditFrm.OpenData(mFID: String): Boolean;
begin
 //
end;

procedure TBasedataEditFrm.setControlState;
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
  if    Map.listQuery.IsEmpty then
  begin
    btn_por.Enabled   := False;
    btn_Fisrt.Enabled := False;
    btn_next.Enabled  := False;
    btn_last.Enabled  := False;
  end
  else
  begin
    btn_por.Enabled := not Map.listQuery.Bof;
    btn_Fisrt.Enabled := not Map.listQuery.Bof;
    btn_next.Enabled := not Map.listQuery.Eof;
    btn_last.Enabled := not Map.listQuery.Eof;
  end;
end;

procedure TBasedataEditFrm.setlistQuery(FID: String; pType: Integer);
begin
  if pType = 1 then
  begin
    if not Map.listQuery.Locate('fid',VarArrayOf([FID]),[]) then
    begin
      Map.listQuery.Append;
      Map.listQuery.FieldByName('fid').AsString := FID;
      Map.listQuery.Post;
    end;
  end;
  if pType = 2 then
  begin
    if Map.listQuery.IsEmpty then Exit;
    if Map.listQuery.Locate('fid',VarArrayOf([FID]),[]) then
    begin
      Map.listQuery.Delete;
    end;
  end;
end;

function TBasedataEditFrm.ST_Save: Boolean;
begin
 //
end;

procedure TBasedataEditFrm.Btn_SaveClick(Sender: TObject);
begin
  inherited;
  if ST_Save then  ShowMsg(Handle, '资料保存成功!            ',[]);
end;

procedure TBasedataEditFrm.btn_NewRowClick(Sender: TObject);
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

procedure TBasedataEditFrm.btn_CopyNewClick(Sender: TObject);
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

procedure TBasedataEditFrm.btn_DelRowClick(Sender: TObject);
begin
  inherited;
  if MaterStatus <> 0 then
  begin
    ShowMsg(Handle, '状态不是未审核状态,不能删除',[]);
    Exit;
  end;
  if  MessageBox(Handle, PChar('确认删除当前信息？'), '艾尚提示', MB_YESNO) = IDNO then
  begin
    Exit;
  end;
  DelData; 
end;

procedure TBasedataEditFrm.btn_porClick(Sender: TObject);
begin
  inherited;
  if not Map.listQuery.Bof then
  begin
    Map.listQuery.First;
    openData(Map.listQuery.fieldbyname('fid').AsString);
  end;
end;

procedure TBasedataEditFrm.btn_FisrtClick(Sender: TObject);
begin
  inherited;
  if not Map.listQuery.Bof then
  begin
    Map.listQuery.Prior;
    openData(Map.listQuery.fieldbyname('fid').AsString);
  end;
end;

procedure TBasedataEditFrm.btn_nextClick(Sender: TObject);
begin
  inherited;
  if not Map.listQuery.Eof then
  begin
    Map.listQuery.Next;
    openData(Map.listQuery.fieldbyname('fid').AsString);
  end;
end;

procedure TBasedataEditFrm.btn_lastClick(Sender: TObject);
begin
  inherited;
  if not Map.listQuery.Eof then
  begin
    Map.listQuery.Last;
    openData(Map.listQuery.fieldbyname('fid').AsString);
  end;
end;

procedure TBasedataEditFrm.spt_AuditClick(Sender: TObject);
begin
  inherited;
  try
    spt_Audit.Enabled := True;
    if MaterStatus <> 0 then
    begin
      ShowMsg(self.Handle,'状态必须是未审核状态才能审核',[]);
      Abort;
    end;
    MaterStatus :=  0;
    if not (cdsMater.State in DB.dsEditModes) then cdsMater.Edit;
    if cdsmater.FindField('FAUDITORID') <> nil then
    cdsMater.FieldByName('FAUDITORID').AsString := Userinfo.LoginUser_FID;
    if cdsmater.FindField('FAUDITDATE') <> nil then
    cdsMater.FieldByName('FAUDITDATE').AsDateTime := Userinfo.ServerTime;
    if cdsmater.FindField('auName') <> nil then
    cdsMater.FieldByName('auName').AsString := Userinfo.LoginUser_Name;
    cdsMater.FieldByName(Map.StateFieldName).AsInteger :=1;
    cdsMater.Post;
    if ST_Save then
    begin
      MaterStatus :=  cdsMater.FieldByName(Map.StateFieldName).AsInteger;
      ShowMsg(self.Handle,'审核成功!     ',[]);
    end
    else
    begin
      if not (cdsMater.State in DB.dsEditModes) then cdsMater.Edit;
      cdsMater.FieldByName(Map.StateFieldName).AsInteger :=0;
      cdsMater.Post;
      MaterStatus :=  cdsMater.FieldByName(Map.StateFieldName).AsInteger;
    end;
  finally
    spt_Audit.Enabled := True;
    setControlState;
  end;
end;

procedure TBasedataEditFrm.spt_uAuditClick(Sender: TObject);
begin
  inherited;
  try
    spt_uAudit.Enabled := True;
    if MaterStatus <> 1 then
    begin
      ShowMsg(self.Handle,'状态必须是审核状态才能反审核',[]);
      Abort;
    end;
    MaterStatus :=  0;
    if not (cdsMater.State in DB.dsEditModes) then cdsMater.Edit;
    cdsMater.FieldByName(Map.StateFieldName).AsInteger :=0;
    if cdsmater.FindField('FAUDITORID') <> nil then
    cdsMater.FieldByName('FAUDITORID').AsString := '';
    if cdsmater.FindField('FAUDITDATE') <> nil then
    cdsMater.FieldByName('FAUDITDATE').Value := null;
    if cdsmater.FindField('auName') <> nil then
    cdsMater.FieldByName('auName').AsString := '';
    cdsMater.Post;
    if ST_Save then
    begin
      MaterStatus :=  cdsMater.FieldByName(Map.StateFieldName).AsInteger;
      ShowMsg(self.Handle,'反审核成功!     ',[]);
    end
    else
    begin
      if not (cdsMater.State in DB.dsEditModes) then cdsMater.Edit;
      cdsMater.FieldByName(Map.StateFieldName).AsInteger :=1;
      cdsMater.Post;
      MaterStatus :=  cdsMater.FieldByName(Map.StateFieldName).AsInteger;
    end;
  finally
    spt_uAudit.Enabled := True;
    setControlState;
  end;
end;

procedure TBasedataEditFrm.spt_uBearClick(Sender: TObject);
begin
  inherited;
  try
    spt_Bear.Enabled := False;
    if MaterStatus <> 1 then
    begin
      ShowMsg(self.Handle,'状态必须是审核状态才能禁用',[]);
      Abort;
    end;
    MaterStatus :=  0;
    if not (cdsMater.State in DB.dsEditModes) then cdsMater.Edit;
    cdsMater.FieldByName(Map.StateFieldName).AsInteger := 2;
    cdsMater.Post;
    if ST_Save then
    begin
      MaterStatus :=  cdsMater.FieldByName(Map.StateFieldName).AsInteger;
      ShowMsg(self.Handle,'禁用成功!     ',[]);
    end
    else
    begin
      if not (cdsMater.State in DB.dsEditModes) then cdsMater.Edit;
      cdsMater.FieldByName(Map.StateFieldName).AsInteger :=1;
      cdsMater.Post;
      MaterStatus :=  cdsMater.FieldByName(Map.StateFieldName).AsInteger;
    end;
  finally
    spt_Bear.Enabled := True;
    setControlState;
  end;
end;

procedure TBasedataEditFrm.spt_BearClick(Sender: TObject);
begin
  inherited;
  try
    spt_uBear.Enabled := False;
    if MaterStatus <> 2 then
    begin
      ShowMsg(self.Handle,'状态必须是禁用状态才能反禁用',[]);
      Abort;
    end;
    MaterStatus :=  0;
    if not (cdsMater.State in DB.dsEditModes) then cdsMater.Edit;
    cdsMater.FieldByName(Map.StateFieldName).AsInteger :=1;
    cdsMater.Post;
    if ST_Save then
    begin
      MaterStatus :=  cdsMater.FieldByName(Map.StateFieldName).AsInteger;
      ShowMsg(self.Handle,'反禁用成功!     ',[]);
    end
    else
    begin
      if not (cdsMater.State in DB.dsEditModes) then cdsMater.Edit;
      cdsMater.FieldByName(Map.StateFieldName).AsInteger :=2;
      cdsMater.Post;
      MaterStatus :=  cdsMater.FieldByName(Map.StateFieldName).AsInteger;
    end;
  finally
    spt_uBear.Enabled := True;
    setControlState;
  end;
end;

procedure TBasedataEditFrm.F7ButtonClick(Sender: TObject;
  AButtonIndex: Integer);
  var btn : TcxDBButtonEdit;
      hidelist:TStringList;
      thisFieldName,fidFieldname,tableName,title,whereStr:string;
begin
  if MaterStatus <> 0 then
  begin
    ShowMsg(self.Handle,'状态不是未审核状态,不能修改!',[]);
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

procedure TBasedataEditFrm.cdsMaterBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if MaterStatus <> 0 then
  begin
    ShowMsg(self.Handle,'状态不是未审核状态,不能修改!',[]);
    Abort;
  end;
end;

procedure TBasedataEditFrm.cdsMaterBeforePost(DataSet: TDataSet);
begin
  inherited;
  if DataSet.FindField('flastupdateuserid') <> nil then
  DataSet.FieldByName('flastupdateuserid').AsString   := UserInfo.LoginUser_FID;
  if DataSet.FindField('flastupdatetime') <> nil then
  DataSet.FieldByName('flastupdatetime').AsDateTime   := CliDM.Get_ServerTime;
end;

procedure TBasedataEditFrm.cdsMaterNewRecord(DataSet: TDataSet);
begin
  inherited;
  if BosType <> '' then
    DataSet.FieldByName('FID').AsString := CliDM.GetEASSID(BosType)
  else
    DataSet.FieldByName('FID').AsString := Get_Guid;
  if DataSet.FindField('fcreatorid') <> nil then
  DataSet.FieldByName('fcreatorid').AsString   := UserInfo.LoginUser_FID;
  if DataSet.FindField('fcreatetime') <> nil then
  DataSet.FieldByName('fcreatetime').AsDateTime   := CliDM.Get_ServerTime;
  if DataSet.FindField('fcontrolunitid') <> nil then
  DataSet.FieldByName('fcontrolunitid').AsString   := UserInfo.Controlunitid;
  if DataSet.FindField(Map.StateFieldName) <> nil then
  DataSet.FieldByName(Map.StateFieldName).AsInteger   := 0;
  if DataSet.FindField('ctName') <> nil then
  DataSet.FieldByName('ctName').AsString   := UserInfo.LoginUser_Name;
  if DataSet.FindField('alName') <> nil then
  DataSet.FieldByName('alName').AsString   := UserInfo.LoginUser_Name;

end;

procedure TBasedataEditFrm.txt_lableFindPropertiesChange(Sender: TObject);
begin
  inherited;
  Findlablecaption(Self,Trim(txt_lableFind.Text),'Label55')
end;

procedure TBasedataEditFrm.FormShow(Sender: TObject);
var FilePath : string;
begin
  FilePath := ExtractFilePath(paramstr(0))+'\Img\Tool_bk.jpg';
  if not LoadImage(FilePath,Image1) then  Gio.AddShow('图片路径不存在：'+FilePath);
  inherited;
  OpenData(Map.FID)
end;

{ TMap }

constructor TMap.Create;
begin
  FID:='';
  MaterTable:='';
  StateFieldName:='';
  listQuery := TClientDataSet.Create(nil);
end;

destructor TMap.Destroy;
begin
  listQuery.Free;
end;

procedure TBasedataEditFrm.spt_ImportClick(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TBasedataEditFrm.FormClose(Sender: TObject;
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

procedure TBasedataEditFrm.cdsSaveBeforePost(DataSet: TDataSet);
begin
  inherited;
  if DataSet.FindField('flastupdateuserid') <> nil then
  DataSet.FieldByName('flastupdateuserid').AsString   := UserInfo.LoginUser_FID;
  if DataSet.FindField('flastupdatetime') <> nil then
  DataSet.FieldByName('flastupdatetime').AsDateTime   := CliDM.Get_ServerTime;
end;

procedure TBasedataEditFrm.FormCreate(Sender: TObject);
begin
  inherited;
  //
end;

end.
