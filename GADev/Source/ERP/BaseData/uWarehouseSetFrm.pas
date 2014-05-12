unit uWarehouseSetFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBaseEditFrm, DB, DBClient, Buttons, jpeg, ExtCtrls,uListFormBaseFrm,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, cxDBData, cxLabel, cxContainer, cxTextEdit, cxMaskEdit,
  cxButtonEdit, StdCtrls, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxCheckBox, cxDBLookupComboBox, dxSkinsCore,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinscxPCPainter;

type
  TWarehouseSetFrm = class(TListFormBaseFrm)
    p_top: TPanel;
    Image1: TImage;
    spt_uBear: TSpeedButton;
    spt_Bear: TSpeedButton;
    btn_DelRow: TSpeedButton;
    Btn_Save: TSpeedButton;
    spt_Audit: TSpeedButton;
    spt_uAudit: TSpeedButton;
    btn_newRow: TSpeedButton;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    cxGrid2: TcxGrid;
    cxDetail: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    Panel5: TPanel;
    Image2: TImage;
    lb_SelectTitle: TLabel;
    Panel4: TPanel;
    txt_storageorg: TcxButtonEdit;
    cxLabel1: TcxLabel;
    cxGrid1: TcxGrid;
    tv_Left: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cdsMenu: TClientDataSet;
    dsMenu: TDataSource;
    cdsmater: TClientDataSet;
    dsMater: TDataSource;
    cdsMenuFID: TWideStringField;
    cdsMenuFNUMBER: TWideStringField;
    cdsMenuFNAME_L2: TWideStringField;
    cdsMenuFHASLOCATION: TFloatField;
    cdsMenuFSTORAGEORGID: TWideStringField;
    cdsMenuFCONTROLUNITID: TWideStringField;
    cdsMenuFWHSTATE: TWideStringField;
    tv_LeftFID: TcxGridDBColumn;
    tv_Leftfnumber: TcxGridDBColumn;
    tv_LeftFNAME_L2: TcxGridDBColumn;
    tv_LeftFHASLOCATION: TcxGridDBColumn;
    tv_LeftFSTORAGEORGID: TcxGridDBColumn;
    tv_LeftFCONTROLUNITID: TcxGridDBColumn;
    tv_LeftFWHSTATE: TcxGridDBColumn;
    Splitter1: TSplitter;
    cdsmaterFCREATORID: TWideStringField;
    cdsmaterFCREATETIME: TDateTimeField;
    cdsmaterFLASTUPDATEUSERID: TWideStringField;
    cdsmaterFLASTUPDATETIME: TDateTimeField;
    cdsmaterFCONTROLUNITID: TWideStringField;
    cdsmaterFNAME_L1: TWideStringField;
    cdsmaterFNAME_L2: TWideStringField;
    cdsmaterFNAME_L3: TWideStringField;
    cdsmaterFNUMBER: TWideStringField;
    cdsmaterFDESCRIPTION_L1: TWideStringField;
    cdsmaterFDESCRIPTION_L2: TWideStringField;
    cdsmaterFDESCRIPTION_L3: TWideStringField;
    cdsmaterFSIMPLENAME: TWideStringField;
    cdsmaterFID: TWideStringField;
    cdsmaterFWAREHOUSEID: TWideStringField;
    cdsmaterFSTATE: TWideStringField;
    cdsmaterFTRANSSTATE: TWideStringField;
    cdsmaterFLOCATIONGROUPID: TWideStringField;
    cdsmaterCFSTOREUNITID: TWideStringField;
    cxDetailFCREATORID: TcxGridDBColumn;
    cxDetailFCREATETIME: TcxGridDBColumn;
    cxDetailFLASTUPDATEUSERID: TcxGridDBColumn;
    cxDetailFLASTUPDATETIME: TcxGridDBColumn;
    cxDetailFCONTROLUNITID: TcxGridDBColumn;
    cxDetailFNAME_L1: TcxGridDBColumn;
    cxDetailfname_l2: TcxGridDBColumn;
    cxDetailFNAME_L3: TcxGridDBColumn;
    cxDetailFNUMBER: TcxGridDBColumn;
    cxDetailFDESCRIPTION_L1: TcxGridDBColumn;
    cxDetailFDESCRIPTION_L2: TcxGridDBColumn;
    cxDetailFDESCRIPTION_L3: TcxGridDBColumn;
    cxDetailFSIMPLENAME: TcxGridDBColumn;
    cxDetailFID: TcxGridDBColumn;
    cxDetailFWAREHOUSEID: TcxGridDBColumn;
    cxDetailFSTATE: TcxGridDBColumn;
    cxDetailFTRANSSTATE: TcxGridDBColumn;
    cxDetailFLOCATIONGROUPID: TcxGridDBColumn;
    cxDetailCFSTOREUNITID: TcxGridDBColumn;
    cdsmaterCreateName: TStringField;
    cdsmaterAlterName: TStringField;
    cxDetailColumn1: TcxGridDBColumn;
    cxDetailColumn2: TcxGridDBColumn;
    cdsTransState: TClientDataSet;
    cdsTransStateFID: TWideStringField;
    cdsTransStateFname_l2: TWideStringField;
    dsTransState: TDataSource;
    SpeedButton1: TSpeedButton;
    cdsmaterDefLocation: TIntegerField;
    cxDefLocation: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure btn_newRowClick(Sender: TObject);
    procedure btn_DelRowClick(Sender: TObject);
    procedure tv_LeftFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure txt_storageorgPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cdsmaterFSTATEGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure cdsmaterCalcFields(DataSet: TDataSet);
    procedure cdsmaterNewRecord(DataSet: TDataSet);
    procedure cdsmaterBeforePost(DataSet: TDataSet);
    procedure Btn_SaveClick(Sender: TObject);
    procedure spt_AuditClick(Sender: TObject);
    procedure spt_uAuditClick(Sender: TObject);
    procedure spt_BearClick(Sender: TObject);
    procedure spt_uBearClick(Sender: TObject);
    procedure cxDetailEditing(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    FBranch_ID     : String ;              //分支机构ID
    FBranch_Name   : String ;              //分支机构名称
    procedure GetWarehouse;                //获取仓库列表
    procedure GetLocationList(WarehouseFID:String);//获取库位列表
    procedure GetBaseData;
    function SaveData:Boolean;    //保存
    function chk_Repeat(FID,Fnumber:String):Boolean;
  end;

var
  WarehouseSetFrm: TWarehouseSetFrm;

implementation
  uses FrmCliDM,Pub_Fun,uMaterDataSelectHelper;
{$R *.dfm}

{ TWarehouseSetFrm }

procedure TWarehouseSetFrm.GetWarehouse;
var _sql,ErrMsg:string;
begin
  try
    Screen.Cursor := crHourGlass;
    _sql := ' select w.fid,w.fnumber,w.fname_l2,w.FHasLocation,w.fstorageorgid,'
          + ' w.fcontrolunitid,w.fwhstate  from t_db_warehouse w'
          + ' where w.fwhstate=1 and CFOfficeStock = 0 and w.fstorageorgid='+quotedStr(FBranch_ID);
    if not CliDM.Get_OpenSQL(cdsMenu,_sql,ErrMsg) then
    begin
      ShowMsg(Handle,'获取仓库列表失败! '+ErrMsg,[]);
      Abort;
    end;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TWarehouseSetFrm.FormShow(Sender: TObject);
var FilePath : string;
begin
  FilePath := ExtractFilePath(paramstr(0))+'\Img\Tool_bk.jpg';
  if not LoadImage(FilePath,Image1) then  Gio.AddShow('图片路径不存在：'+FilePath);
  inherited;
  GetBaseData;
  FBranch_ID := UserInfo.Branch_ID;
  FBranch_Name := UserInfo.Branch_Name;
  txt_storageorg.Text:=FBranch_Name;
  GetWarehouse;

end;

procedure TWarehouseSetFrm.GetLocationList(WarehouseFID: String);
var _sql,ErrMsg:string;
begin
  if cdsMenu.FieldByName('FHasLocation').AsInteger = 0 then
  begin
    cdsmater.Close;
    Exit;
  end;
  try
    Screen.Cursor := crHourGlass;
    _sql := ' select * from t_db_location l'
          + ' where l.FWarehouseID='+quotedStr(WarehouseFID);
    if not CliDM.Get_OpenSQL(cdsmater,_sql,ErrMsg) then
    begin
      ShowMsg(Handle,'获取仓库库位列表失败!'+ErrMsg,[]);
      Abort;
    end;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TWarehouseSetFrm.btn_newRowClick(Sender: TObject);
begin
  inherited;
  if cdsMenu.IsEmpty then Exit;
  if cdsMenu.FieldByName('fwhstate').AsString <> '1' then
  begin
    ShowMsg(Handle,'只有审核的仓库才能维护库位信息',[]);
    Abort;
  end;
  if cdsMenu.FieldByName('FHasLocation').AsInteger <> 1 then
  begin
    ShowMsg(Handle,'只有启用了库位管理的仓库才能维护库位信息',[]);
    Abort;
  end;
  cdsmater.Append;
end;

procedure TWarehouseSetFrm.btn_DelRowClick(Sender: TObject);
begin
  inherited;
  try
    btn_DelRow.Enabled := False;
    if cdsMenu.IsEmpty then Exit;
    if cdsmater.IsEmpty then Exit;
    if cdsMenu.FieldByName('fwhstate').AsString = '2' then
    begin
      ShowMsg(Handle,'仓库已禁用,不能修改仓库的库信息',[]);
      Abort;
    end;
    if cdsmater.FieldByName('FState').AsString <> '0' then
    begin
      ShowMsg(Handle,'库位不是未审核状态,不能删除!  ',[]);
      Abort;
    end;
    //增加引用检查
    if CliDM.Chk_Reference(cdsmater.fieldbyname('fid').AsString,'t_db_location')  then
    begin
      ShowMsg(Handle,'库位已被业务单据引用,不能删除!  ',[]);
      Abort;
    end;
    cdsmater.Delete;
    if SaveData then  ShowMsg(Handle,'库位删除成功!  ',[]) else
    ShowMsg(Handle,'库位删除失败,请查看客户端日志!  ',[]) ;
  finally
    btn_DelRow.Enabled := True;
  end;
end;

procedure TWarehouseSetFrm.tv_LeftFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
begin
  inherited;
  GetLocationList(cdsMenu.fieldbyname('FID').AsString);
  lb_SelectTitle.Caption :=  '';
  if not cdsMenu.IsEmpty then
  lb_SelectTitle.Caption :=cdsMenu.fieldbyname('fname_l2').AsString
end;

procedure TWarehouseSetFrm.txt_storageorgPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
  var _sql,ErrMsg:string;
begin
  inherited;
  with Select_Branch('','') do
  begin
    if not IsEmpty then
    begin
      _sql := 'select fid from t_org_baseunit where fisadminorgunit=1 and  fid='+quotedStr(fieldbyname('fid').AsString);
      if string(CliDM.Get_QueryReturn(_sql,ErrMsg))='' then
      begin
        ShowMsg(self.Handle,'必需选择实体分支机构!            ',[]);
        Abort;
      end;
      if Self.FBranch_ID  <>  fieldbyname('fid').AsString then
      begin
        Self.FBranch_ID := fieldbyname('fid').AsString;
        Self.FBranch_Name := fieldbyname('fname_l2').AsString;
        txt_storageorg.Text := Self.FBranch_Name ;
        GetWarehouse;
      end;
    end;
  end;
end;

procedure TWarehouseSetFrm.cdsmaterFSTATEGetText(Sender: TField;
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

procedure TWarehouseSetFrm.cdsmaterCalcFields(DataSet: TDataSet);
var userFID,lFID,wFID,_sql:string;
begin
  inherited;
  userFID := DataSet.fieldbyname('FCREATORID').AsString;
  if userFID <> '' then
  begin
    _sql := ' select fname_l2 from t_pm_user where   fid collate Chinese_PRC_CS_AS_WS='+QuotedStr(userFID);
    DataSet.FieldByName('CreateName').AsString := CliDM.Client_QueryReturnVal(_sql);
  end;
  userFID := DataSet.fieldbyname('FLASTUPDATEUSERID').AsString;
  if userFID <> '' then
  begin
    _sql := ' select fname_l2 from t_pm_user where   fid collate Chinese_PRC_CS_AS_WS ='+QuotedStr(userFID);
    DataSet.FieldByName('AlterName').AsString := CliDM.Client_QueryReturnVal(_sql);
  end;
  lFID := DataSet.fieldbyname('fid').AsString;
  wFID := DataSet.fieldbyname('FWAREHOUSEID').AsString;
  _sql := ' select FID from t_db_warehouse where   fid collate Chinese_PRC_CS_AS_WS ='+QuotedStr(wFID)
       +' and   CFLocationID collate Chinese_PRC_CS_AS_WS='+QuotedStr(lFID);
  with CliDM.Client_QuerySQL(_sql) do
  begin
    if not IsEmpty then    DataSet.FieldByName('DefLocation').AsInteger := 1;
  end;
end;

procedure TWarehouseSetFrm.GetBaseData;
var _sql,ErrMsg:string;
begin
  _sql := ' select ''1'' as FID,''正常'' as FName_l2 from dual union '
        + ' select ''2'' as FID,''冻结入库'' as FName_l2 from dual union '
        + ' select ''3'' as FID,''冻结出库'' as FName_l2 from dual union '
        + ' select ''4'' as FID,''冻结出入库'' as FName_l2 from dual';
  CliDM.Get_OpenSQL(cdsTransState,_sql,ErrMsg);
end;

procedure TWarehouseSetFrm.cdsmaterNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FID').AsString := CliDM.GetEASSID('205FF86A');
  DataSet.FieldByName('fcreatorid').AsString   := UserInfo.LoginUser_FID;
  DataSet.FieldByName('fcreatetime').AsDateTime   := CliDM.Get_ServerTime;
  DataSet.FieldByName('fcontrolunitid').AsString   := UserInfo.Controlunitid;
  DataSet.FieldByName('FSTATE').AsInteger   := 0;
  DataSet.FieldByName('FTransState').AsString   := '1';
  DataSet.FieldByName('FWarehouseID').AsString   := cdsMenu.fieldbyname('fid').AsString;
end;

procedure TWarehouseSetFrm.cdsmaterBeforePost(DataSet: TDataSet);
begin
  inherited;
  if Trim(DataSet.FieldByName('fnumber').AsString) = '' then
  begin
    ShowMsg(Handle, '编号不能为空!      ',[]);
    Abort;
  end;
  if Trim(DataSet.FieldByName('fname_l2').AsString) = '' then
  begin
    ShowMsg(Handle, '名称不能为空!      ',[]);
    Abort;
  end;
  if chk_Repeat(DataSet.fieldbyname('fid').AsString,DataSet.fieldbyname('fnumber').AsString) then
  begin
    ShowMsg(Handle, '编号重复,请重新输入!      ',[]);
    Abort;
  end;
  DataSet.FieldByName('flastupdateuserid').AsString   := UserInfo.LoginUser_FID;
  DataSet.FieldByName('flastupdatetime').AsDateTime   := CliDM.Get_ServerTime;
end;

function TWarehouseSetFrm.SaveData: Boolean;
var TableName:string;
    _cds: array[0..0] of TClientDataSet;
    error : string;
begin
  inherited;
  Result := False;
  if cdsMenu.IsEmpty then Exit;
  if not cdsmater.Active then Exit;
  TableName := 't_db_location';
  try
    Screen.Cursor := crHourGlass;
    //提交数据
    if (cdsmater.State in DB.dsEditModes)    then cdsmater.Post;
    _cds[0] := cdsmater;
    try
      if CliDM.Apply_Delta_Ex(_cds,[TableName],error) then
      begin
        Gio.AddShow('提交成功！');
        Result := True;
      end
      else
      begin
        ShowMsg(Handle, '提交失败!       '+error,[]);
        Gio.AddShow(error);
      end;
    except
      on E: Exception do
      begin
        ShowMsg(Handle, '提交失败：'+e.Message,[]);
        Abort;
      end;
    end;
  finally
    Screen.Cursor := crDefault;
  end;
end;


procedure TWarehouseSetFrm.Btn_SaveClick(Sender: TObject);
begin
  inherited;
  if SaveData then ShowMsg(Handle, '保存成功!      ',[]);
end;

function TWarehouseSetFrm.chk_Repeat(FID, Fnumber: String): Boolean;
var cds:TClientDataSet;
   _sql,ErrMsg:string;
   tableName : string;
begin
  Result := False;
  tableName := 't_db_location';
  _sql := 'select FID from '+TableName+ ' where  fid<>'+QuotedStr(fid)+' and upper(fnumber)='+QuotedStr(UpperCase(Fnumber));
  try
    cds := TClientDataSet.Create(nil);
    if CliDM.Get_OpenSQL(cds,_sql,ErrMsg) then
    begin
      Result := not cds.IsEmpty;
    end
    else
    begin
      Gio.AddShow('库位设置检查重复值出错:'+TableName+':'+ErrMsg);
    end;
  finally
    cds.Free;
  end;
end;

procedure TWarehouseSetFrm.spt_AuditClick(Sender: TObject);
begin
  inherited;
  try
    spt_Audit.Enabled := False;
    if cdsMenu.IsEmpty then Exit;
    if cdsmater.IsEmpty then Exit;
    if cdsMenu.FieldByName('fwhstate').AsString = '2' then
    begin
      ShowMsg(Handle,'仓库已禁用,不能修改仓库的库信息',[]);
      Abort;
    end;
    if cdsmater.FieldByName('FState').AsString <> '0' then
    begin
      ShowMsg(Handle,'库位不是未审核状态,不能审核!  ',[]);
      Abort;
    end;
    cdsmater.Edit;
    cdsmater.FieldByName('FState').AsString := '1';
    cdsmater.Post;
    if SaveData then  ShowMsg(Handle,'库位审核成功!  ',[]) else
    ShowMsg(Handle,'库位审核失败,请查看客户端日志!  ',[]) ;
  finally
    spt_Audit.Enabled := True;
  end;
end;

procedure TWarehouseSetFrm.spt_uAuditClick(Sender: TObject);
begin
  inherited;
  try
    spt_uAudit.Enabled := False;
    if cdsMenu.IsEmpty then Exit;
    if cdsmater.IsEmpty then Exit;
    if cdsMenu.FieldByName('fwhstate').AsString = '2' then
    begin
      ShowMsg(Handle,'仓库已禁用,不能修改仓库的库信息',[]);
      Abort;
    end;
    if cdsmater.FieldByName('FState').AsString <> '1' then
    begin
      ShowMsg(Handle,'库位不是审核状态,不能反审核!  ',[]);
      Abort;
    end;
    cdsmater.Edit;
    cdsmater.FieldByName('FState').AsString := '0';
    cdsmater.Post;
    if SaveData then  ShowMsg(Handle,'库位反审核成功!  ',[]) else
    ShowMsg(Handle,'库位反审核失败,请查看客户端日志!  ',[]) ;
  finally
    spt_uAudit.Enabled := True;
  end;
end;

procedure TWarehouseSetFrm.spt_BearClick(Sender: TObject);
begin
  inherited;
  try
    spt_Bear.Enabled := False;
    if cdsMenu.IsEmpty then Exit;
    if cdsmater.IsEmpty then Exit;
    if cdsMenu.FieldByName('fwhstate').AsString = '2' then
    begin
      ShowMsg(Handle,'仓库已禁用,不能修改仓库的库信息',[]);
      Abort;
    end;
    if cdsmater.FieldByName('FState').AsString <> '1' then
    begin
      ShowMsg(Handle,'库位不是审核状态,不能禁用!  ',[]);
      Abort;
    end;
    cdsmater.Edit;
    cdsmater.FieldByName('FState').AsString := '2';
    cdsmater.Post;
    if SaveData then  ShowMsg(Handle,'库位禁用成功!  ',[]) else
    ShowMsg(Handle,'库位禁用失败,请查看客户端日志!  ',[]) ;
  finally
    spt_Bear.Enabled := True;
  end;
end;

procedure TWarehouseSetFrm.spt_uBearClick(Sender: TObject);
begin
  inherited;
  try
    spt_uBear.Enabled := False;
    if cdsMenu.IsEmpty then Exit;
    if cdsmater.IsEmpty then Exit;
    if cdsMenu.FieldByName('fwhstate').AsString = '2' then
    begin
      ShowMsg(Handle,'仓库已禁用,不能修改仓库的库信息',[]);
      Abort;
    end;
    if cdsmater.FieldByName('FState').AsString <> '2' then
    begin
      ShowMsg(Handle,'库位不是禁用状态,不能反禁用!  ',[]);
      Abort;
    end;
    cdsmater.Edit;
    cdsmater.FieldByName('FState').AsString := '1';
    cdsmater.Post;
    if SaveData then  ShowMsg(Handle,'库位反禁用成功!  ',[]) else
    ShowMsg(Handle,'库位反禁用失败,请查看客户端日志!  ',[]) ;
  finally
    spt_uBear.Enabled := True;
  end;
end;

procedure TWarehouseSetFrm.cxDetailEditing(Sender: TcxCustomGridTableView;
  AItem: TcxCustomGridTableItem; var AAllow: Boolean);
begin
  inherited;
  AAllow := (cdsmater.FieldByName('FState').AsString='0')
end;

procedure TWarehouseSetFrm.SpeedButton1Click(Sender: TObject);
var _sql,ErrMsg:string;
begin
  inherited;
  if cdsmater.IsEmpty then Exit;
  try
    Screen.Cursor := crHourGlass;
    _sql := 'update t_db_warehouse set Flastupdatetime=sysdate,CFLocationID='+QuotedStr(cdsmater.fieldbyname('fid').AsString)
          + ' where fid='+quotedstr(cdsmater.fieldbyname('FWAREHOUSEID').AsString);
    if not CliDM.Get_ExecSQL(_sql,ErrMsg) then
    begin
      ShowMsg(Handle,'设置默认库位失败!  '+ErrMsg,[]) ;
      Exit;
    end;
    _sql := 'update t_db_warehouse set CFLocationID='+QuotedStr(cdsmater.fieldbyname('fid').AsString)
          + ' where fid='+quotedstr(cdsmater.fieldbyname('FWAREHOUSEID').AsString);
    CliDM.Client_ExecSQL(_sql);
    GetLocationList(cdsMenu.fieldbyname('fid').AsString);
  finally
    Screen.Cursor := crDefault;
  end;
end;

end.
