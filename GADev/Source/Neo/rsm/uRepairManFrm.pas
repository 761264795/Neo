unit uRepairManFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uOtherBillBaseEditFrm, DB, dxBar, cxClasses, ActnList, ImgList,
  DBClient, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDBEdit, StdCtrls, ExtCtrls, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxDBData, cxMemo, cxLabel, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid;

type
  TRepairManInfo = class
        name: string;
        tel: string;
        addr: string;
  end;

  TRepairManFrm = class(TOtherBillBaseEditFrm)
    Panel1: TPanel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxdbTxtNumber: TcxDBTextEdit;
    cxdbTxtName: TcxDBTextEdit;
    cxdbTxtTel: TcxDBTextEdit;
    cxdbTxtIDNumber: TcxDBTextEdit;
    cxdbTxtEmail: TcxDBTextEdit;
    cxdbMemoAddr: TcxDBMemo;
    cdsList: TClientDataSet;
    dsList: TDataSource;
    cdsMasterFNumber: TWideStringField;
    cdsMasterFBizDate: TDateTimeField;
    cdsMasterFID: TStringField;
    cdsMasterFCreatorID: TStringField;
    cdsMasterFCreateTime: TDateTimeField;
    cdsMasterFLastUpdateUserID: TStringField;
    cdsMasterFLastUpdateTime: TDateTimeField;
    cdsMasterFHandlerID: TStringField;
    cdsMasterFDescription: TWideStringField;
    cdsMasterFHasEffected: TIntegerField;
    cdsMasterFAuditorID: TStringField;
    cdsMasterFSourceBillID: TWideStringField;
    cdsMasterFSourceFunction: TWideStringField;
    cdsMasterFCompanyID: TStringField;
    cdsMasterFControlUnitID: TStringField;
    cdsMasterFFivouchered: TIntegerField;
    cdsMasterFBaseStatus: TIntegerField;
    cdsMasterFAuditTime: TDateTimeField;
    cdsMasterCFName: TWideStringField;
    cdsMasterCFTel: TWideStringField;
    cdsMasterCFEmail: TWideStringField;
    cdsMasterCFIdNumber: TWideStringField;
    cdsMasterCFZipCode: TWideStringField;
    cdsMasterCFAddr: TWideStringField;
    cdsMasterCFOrgUnitID: TStringField;
    cdsDetailFSeq: TIntegerField;
    cdsDetailFID: TStringField;
    cdsDetailFParentID: TStringField;
    cdsDetailFLineStatus: TIntegerField;
    cdsDetailFLineDesc: TWideStringField;
    cdsDetailCFVehicleID: TStringField;
    cdsListFNumber: TWideStringField;
    cdsListCFName: TWideStringField;
    cdsListCFTel: TWideStringField;
    cdsListCFEmail: TWideStringField;
    cdsListCFAddr: TWideStringField;
    cdsListCFIdNumber: TWideStringField;
    cdsListCFZipCode: TWideStringField;
    cxdbColNumer: TcxGridDBColumn;
    cxdbColName: TcxGridDBColumn;
    cxdbColTel: TcxGridDBColumn;
    cxdbColEMail: TcxGridDBColumn;
    cxdbColAddr: TcxGridDBColumn;
    cxdbColIDNumber: TcxGridDBColumn;
    cxdbColZipCode: TcxGridDBColumn;
    cdsListFID: TStringField;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    btn_undo: TdxBarButton;
    actUndo: TAction;
    procedure FormCreate(Sender: TObject);
    procedure actSaveBillExecute(Sender: TObject);
    procedure cxGrid1DBTableView1FocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure actEditExecute(Sender: TObject);
    procedure cdsMasterBeforeEdit(DataSet: TDataSet);
    procedure actDeleteExecute(Sender: TObject);
    procedure actNewBillExecute(Sender: TObject);
    procedure cdsMasterNewRecord(DataSet: TDataSet);
    procedure cdsDetailNewRecord(DataSet: TDataSet);
    procedure cxGrid1DBTableView1CellDblClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure actUndoExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure QueryRepairManForVehicle(var vehicleID:string);
    function getRepairManInfo: TRepairManInfo;
    function ST_Save:Boolean;override;
    function Chk_Data: Boolean;
    procedure setComponentEnabled(b: Boolean);
  end;


var
  RepairManFrm: TRepairManFrm;
  strVehicleID: string;
  bFirstLoad: boolean = true;
  repairMainInfo: TRepairManInfo;

implementation

uses FrmCliDM,Pub_Fun;

{$R *.dfm}

procedure TRepairManFrm.FormCreate(Sender: TObject);
begin
  repairMainInfo := nil;
  sBillTypeID := 'ghdAwNqbv0+zhXuyMiuLUEY+1VI=';
  sBillFlag := 'RM';
  BillEntryTable := 'CT_RS_RepairManEntry';
  BillTable := 'CT_RS_RepairMan';
  inherited;
  self.WindowState := wsNormal;
  actSaveBill.Enabled := False;
  actUndo.Enabled := false;
  

end;

procedure TRepairManFrm.QueryRepairManForVehicle(var vehicleId: string);
var OpenTables: array[0..0] of string;
    _cds: array[0..0] of TClientDataSet;
    ErrMsg : string;
    strsql : string;
    cdsTmp: TClientDataSet;
    repairMan,repairTel:string;
begin
   bFirstLoad := true;
   strVehicleID := vehicleID;
   strsql := Format('select FID,FNumber,CFName,CFTel,CFEmail,CFAddr,CFIdNumber,CFZipCode from CT_RS_RepairMan ' +
          'where fid in (select FParentID from CT_RS_RepairManEntry where CFVehicleID=%s)',
          [QuotedStr(vehicleID)]);

   OpenTables[0] := strsql;
   _cds[0] := cdsList;


  try
    if not CliDM.Get_OpenClients_E(vehicleID,_cds,OpenTables,ErrMsg) then
    begin
      ShowError(Handle, ErrMsg,[]);
      Abort;
    end;
  except
    on E : Exception do
    begin
       ShowError(Handle, '打开编辑数据报错：'+E.Message,[]);
       Abort;
    end;
  end;
    cdsTmp := TClientDataSet.Create(nil);
    
   strsql := Format('select '''' as FID,b.FNumber, b.FName_l2, b.FPhone, b.FEmail,b.FPapersNum,b.FZipCode,b.FAddress from T_ATS_Vehicle a ' +
      'left join T_ATS_Customer b on a.FCustomerID=b.FID ' +
      'where a.FID=%s',[QuotedStr(vehicleId)]);

   if not Clidm.Get_OpenSQL(cdsTmp,strsql,ErrMsg) then
   begin
      ShowMsg(Self.Handle,'打开数据出错:'+ErrMsg,[]);
      Self.Close;
   end else
   begin
     // cdsList.First;

      repairMan := cdsTmp.FieldByName('FName_l2').AsString;
      repairTel := cdsTmp.FieldByName('FPhone').AsString;

      if repairMan = '无名称' then repairMan := '现结客户';
      if repairTel = '无名称' then repairTel := '';

      cdsList.Insert;
      cdsList.FieldByName('FID').AsString := cdsTmp.FieldByName('FID').AsString;
      cdsList.FieldByName('FNumber').AsString := cdsTmp.FieldByName('FNumber').AsString;
      cdsList.FieldByName('CFName').AsString := repairMan;
      cdsList.FieldByName('CFTel').AsString := repairTel;
      cdsList.FieldByName('CFEMail').AsString := cdsTmp.FieldByName('FEmail').AsString;
      cdsList.FieldByName('CFIDNumber').AsString := cdsTmp.FieldByName('FPapersNum').AsString;
      cdsList.FieldByName('CFZipCode').AsString := cdsTmp.FieldByName('FZipCode').AsString;
      cdsList.FieldByName('CFAddr').AsString := cdsTmp.FieldByName('FAddress').AsString;
      bFirstLoad := false;
      cdsList.First;
   end;

  inherited;
end;

function TRepairManFrm.getRepairManInfo:TRepairManInfo;
begin
  result := repairMainInfo;
end;
function TRepairManFrm.ST_Save: Boolean;
var ErrMsg,BillNumber,id: string;
   _cds: array[0..1] of TClientDataSet;
begin
  Result := True;
  if cdsMaster.State in db.dsEditModes then
     cdsMaster.Post;
  if cdsDetail.State in db.dsEditModes then
     cdsDetail.Post;

  if not Chk_Data then
  begin
    Result := False;
    Exit;
  end;
  BillNumber := cdsMaster.fieldbyname('fnumber').AsString;
  id := cdsMaster.FieldByName('fid').asstring;
  //定义提交的数据集数据
  _cds[0] := cdsMaster;
  _cds[1] := cdsDetail;
  //提交数据
  try
    if CliDM.Apply_Delta_Ex(_cds,['CT_RS_RepairMan','CT_RS_RepairManEntry'],ErrMsg) then
    begin
      Gio.AddShow(Self.Caption+'【'+BillNumber+'】提交成功！');
      BillStatus.IsChange := False;
      BillStatus.IsEdit := false;
      BillStatus.IsNew := false;
      QueryRepairManForVehicle(strVehicleID);
      cdsMaster.Locate('fid',id,[]);
    end
    else
    begin
      ShowMsg(Handle, Self.Caption+'提交失败'+ErrMsg,[]);
      Gio.AddShow(ErrMsg);
      Result := False;
    end;
  except
    on E: Exception do
    begin
      ShowMsg(Handle, Self.Caption+'提交失败：'+e.Message,[]);
      Result := False;
      exit;
    end;
  end;

end;
procedure TRepairManFrm.actSaveBillExecute(Sender: TObject);
begin
  inherited;
  if ST_Save then
  begin
    ShowMsg(self.Handle,'保存成功!        ',[]);
  end;
  actNewBill.Enabled := true;
  actEdit.Enabled := true;
  actSaveBill.Enabled := false;
  actDelete.Enabled := true;
  actUndo.Enabled := false;
end;

function TRepairManFrm.Chk_Data: Boolean;
begin
  Result := True;
//  if Trim(cdsMaster.FieldByName('CFMarketID').AsString) = '' then
//  begin
//    ShowMsg(self.Handle,'商场不能为空!     ',[]);
//    txt_CFCustName.SetFocus;
//    Result := False;
//    Exit;
//  end;

end;

procedure TRepairManFrm.cxGrid1DBTableView1FocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord;
  ANewItemRecordFocusingChanged: Boolean);
var
  id: string;
  OpenTables: array[0..1] of string;
  _cds: array[0..1] of TClientDataSet;
  ErrMsg : string;
  strsql : string;
  cdsTmp: TClientDataSet;
begin
  inherited;
  if bFirstLoad then exit;
  id := cdsList.FieldByName('FID').AsString;
  if id='' then
  begin
    setComponentEnabled(False);

    cxdbTxtNumber.Text := cdsList.FieldByName('FNumber').AsString;
    cxdbTxtName.Text := cdsList.FieldByName('CFName').AsString;
    cxdbTxtTel.Text := cdsList.FieldByName('CFTel').AsString;
    cxdbTxtIDNumber.Text := cdsList.FieldByName('CFIDNumber').AsString;
    cxdbTxtEmail.Text := cdsList.FieldByName('CFEmail').AsString;
    cxdbMemoAddr.Text := cdsList.FieldByName('CFAddr').AsString;

  end else
  begin
    setComponentEnabled(True);

    strsql := Format('select * from CT_RS_RepairMan where FID=%s',[QuotedStr(id)]);
    OpenTables[0] := strsql;

    strsql := Format('select * from CT_RS_RepairManEntry where CFVehicleID=%s and FParentID=%s', [QuotedStr(strVehicleID),QuotedStr(id)]);

    OpenTables[1] := strsql;
    _cds[0] := cdsMaster;
    _cds[1] := cdsDetail;

    try
      if not CliDM.Get_OpenClients_E(id,_cds,OpenTables,ErrMsg) then
      begin
        ShowError(Handle, ErrMsg,[]);
        Abort;
      end;
    except
      on E : Exception do
      begin
         ShowError(Handle, '打开编辑数据报错：'+E.Message,[]);
         Abort;
      end;
    end;
  end;
  if  BillStatus.IsNew then
  begin
     setComponentEnabled(True);
  end;
end;

procedure TRepairManFrm.setComponentEnabled(b: Boolean);
begin
  cxdbTxtNumber.Enabled := b;
  cxdbTxtName.Enabled := b;
  cxdbTxtTel.Enabled := b;
  cxdbTxtIDNumber.Enabled := b;
  cxdbTxtEmail.Enabled := b;
  cxdbMemoAddr.Enabled := b;
end;

procedure TRepairManFrm.actEditExecute(Sender: TObject);
begin
//  inherited;
  BillStatus.IsEdit := True;
  if cdsList.FieldByName('FID').AsString = '' then
  begin
      ShowMessage('车主信息不能通过送修人修改');
      Abort();
  end;

  actNewBill.Enabled := false;
  actEdit.Enabled := true;
  actSaveBill.Enabled := true;
  actDelete.Enabled := false;
  actUndo.Enabled := True;
  
end;

procedure TRepairManFrm.cdsMasterBeforeEdit(DataSet: TDataSet);
begin
  if cdsMaster.IsEmpty then
  begin
     Abort;
  end;
  inherited;
end;

procedure TRepairManFrm.actDeleteExecute(Sender: TObject);
var
  id: string;
  sql1,sql2,ErrMsg:string;
begin
  // inherited;
   BillStatus.IsEdit := True;
   id := cdsList.FieldByName('FID').AsString;
  if id = '' then
  begin
      ShowMessage('车主信息不能通过送修人删除');
      Abort();
  end;
  sql1 := Format('delete CT_RS_RepairManEntry where CFVehicleID=%s and FParentid=%s' ,[QuotedStr(strVehicleID),QuotedStr(id)]);
  sql2 := Format('delete CT_RS_RepairMan where fid=%s '+
            'and not EXISTS (select 1 from CT_RS_RepairManEntry where fparentid=%s)',
            [QuotedStr(id),QuotedStr(strVehicleID)]);
  if not CliDM.E_ExecSQLArrays(sql1,sql2,'','','','','','',ErrMsg) then
  begin
    ShowMsg(Self.Handle,'单据删除失败'+ErrMsg,[]);
    Abort;
  end;
   QueryRepairManForVehicle(strVehicleID);

   



end;

procedure TRepairManFrm.actNewBillExecute(Sender: TObject);
var
  strsql,errmsg:string;
  _cds: array[0..1] of TClientDataSet;
  OpenTables: array[0..1] of string;
begin
 // inherited;
  if cdsMaster.Active then
  begin
     cdsMaster.Close;
  end;
  if cdsDetail.Active then
  begin
     cdsDetail.Close;
  end;
  BillStatus.IsNew := true;
  BillStatus.IsEdit := true;
  strsql := Format('select * from CT_RS_RepairMan where 1<>1',[]);
  OpenTables[0] := strsql;

  strsql := Format('select * from CT_RS_RepairManEntry where 1<>1',[]);
  OpenTables[1] := strsql;

  _cds[0] := cdsMaster;
  _cds[1] := cdsDetail;

  try
    if not CliDM.Get_OpenClients_E('ga002',_cds,OpenTables,ErrMsg) then
    begin
      ShowError(Handle, ErrMsg,[]);
      Abort;
    end;
  except
    on E : Exception do
    begin
       ShowError(Handle, '打开编辑数据报错：'+E.Message,[]);
       Abort;
    end;
  end;
  cdsMaster.Append;
  cdsDetail.Append;
  setComponentEnabled(True);
  actNewBill.Enabled := true;
  actEdit.Enabled := False;
  actSaveBill.Enabled := true;
  actDelete.Enabled := false;
  actUndo.Enabled := True;
end;

procedure TRepairManFrm.cdsMasterNewRecord(DataSet: TDataSet);
begin
  inherited;
  BillStatus.IsNew := true;
  DataSet.FieldByName('FID').AsString := CliDM.GetEASSID('40C83D22');
  DataSet.FieldByName('FCREATETIME').AsDateTime := Now;
  DataSet.FieldByName('FNUMBER').AsString := 'number001';//CliDM.GetSCMBillNum(sBillTypeID,UserInfo.Branch_Flag,sBillFlag,true,ErrMsg);
  DataSet.FieldByName('FBIZDATE').AsDateTime := CliDM.Get_ServerTime;
  DataSet.FieldByName('FCREATORID').AsString := UserInfo.LoginUser_FID;
  DataSet.FieldByName('FLASTUPDATEUSERID').AsString := UserInfo.LoginUser_FID;
  DataSet.FieldByName('FLASTUPDATETIME').AsDateTime := CliDM.Get_ServerTime;
  DataSet.FieldByName('FControlUnitID').AsString := UserInfo.FCONTROLUNITID;    //控制单元，从服务器获取
  DataSet.FieldByName('CFOrgUnitID').AsString := UserInfo.Branch_ID;


end;

procedure TRepairManFrm.cdsDetailNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('FID').AsString := CliDM.GetEASSID('51DAC070');
  DataSet.FieldByName('CFVehicleID').AsString := strVehicleID;
  DataSet.FieldByName('FParentID').AsString := cdsMaster.FieldByName('FID').AsString;


end;

procedure TRepairManFrm.cxGrid1DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  repairMainInfo := TRepairManInfo.Create;
  repairMainInfo.name := cdsList.FieldByName('CFName').AsString;
  repairMainInfo.tel := cdsList.FieldByName('CFTel').ASString;
  repairMainInfo.addr := cdsList.FieldByName('CFAddr').AsString;

  Self.Close;
end;

procedure TRepairManFrm.actUndoExecute(Sender: TObject);
begin
  inherited;
  if cdsMaster.State in db.dsEditModes then
  begin
    cdsMaster.Cancel;

    actNewBill.Enabled := true;
    actEdit.Enabled := true;
    actSaveBill.Enabled := false;
    actDelete.Enabled := true;
    actUndo.Enabled := false;
  end else
  begin
    ShowMessage('未编辑状态，无撤消内容！');

  end;

end;

end.
