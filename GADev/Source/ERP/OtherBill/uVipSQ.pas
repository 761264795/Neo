unit uVipSQ;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBaseEditFrm, DB, DBClient, Buttons, jpeg, ExtCtrls, cxStyles,
  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
  cxDBData, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, ADODB,
  StdCtrls, cxContainer, cxTextEdit, cxMaskEdit, cxDBEdit, cxDropDownEdit,
  cxCalendar, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox;

type
  TVipSQFrm = class(TSTBaseEdit)
    Panel1: TPanel;
    Image2: TImage;
    sb_new: TSpeedButton;
    sb_save: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Panel2: TPanel;
    Splitter1: TSplitter;
    Panel3: TPanel;
    cxGrid2: TcxGrid;
    ctb_list: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    dsList: TDataSource;
    cdsList: TClientDataSet;
    ctb_listfid: TcxGridDBColumn;
    ctb_listfnumber: TcxGridDBColumn;
    ctb_listcreatename: TcxGridDBColumn;
    ctb_listcreateDate: TcxGridDBColumn;
    ctb_listauditname: TcxGridDBColumn;
    ctb_listauditdate: TcxGridDBColumn;
    ctb_listfdescription: TcxGridDBColumn;
    ctb_listcfbillstates: TcxGridDBColumn;
    cdsBillData: TClientDataSet;
    dsBillData: TDataSource;
    cdsBillDataFCREATORID: TWideStringField;
    cdsBillDataFCREATETIME: TDateTimeField;
    cdsBillDataFLASTUPDATEUSERID: TWideStringField;
    cdsBillDataFLASTUPDATETIME: TDateTimeField;
    cdsBillDataFCONTROLUNITID: TWideStringField;
    cdsBillDataFNUMBER: TWideStringField;
    cdsBillDataFBIZDATE: TDateTimeField;
    cdsBillDataFHANDLERID: TWideStringField;
    cdsBillDataFDESCRIPTION: TWideStringField;
    cdsBillDataFHASEFFECTED: TFloatField;
    cdsBillDataFAUDITORID: TWideStringField;
    cdsBillDataFSOURCEBILLID: TWideStringField;
    cdsBillDataFSOURCEFUNCTION: TWideStringField;
    cdsBillDataFID: TWideStringField;
    cdsBillDataFFIVOUCHERED: TFloatField;
    cdsBillDataCFAPPLYSHOPID: TWideStringField;
    cdsBillDataCFAPPLYCOUNT: TFloatField;
    cdsBillDataCFNUMBERSTART: TWideStringField;
    cdsBillDataCFNUMBEREND: TWideStringField;
    cdsBillDataCFGRANTTIME: TDateTimeField;
    cdsBillDataCFADUITDATE: TDateTimeField;
    cdsBillDataCFCARDCLASSESID: TWideStringField;
    cdsBillDataCFBILLSTATES: TFloatField;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    cxFNumber: TcxDBMaskEdit;
    Label1: TLabel;
    cxTextEdit1: TcxTextEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    cxDBMaskEdit1: TcxDBMaskEdit;
    cxBIZDATE: TcxDBDateEdit;
    cxDBDateEdit1: TcxDBDateEdit;
    cxDBDateEdit2: TcxDBDateEdit;
    cxDBDateEdit3: TcxDBDateEdit;
    Label14: TLabel;
    cxDBMaskEdit2: TcxDBMaskEdit;
    cxDBMaskEdit3: TcxDBMaskEdit;
    cxDBMaskEdit4: TcxDBMaskEdit;
    cxDBMaskEdit5: TcxDBMaskEdit;
    cxDBMaskEdit6: TcxDBMaskEdit;
    cdsListfid: TWideStringField;
    cdsListfnumber: TWideStringField;
    cdsListfdescription: TWideStringField;
    cdsListcreatename: TWideStringField;
    cdsListauditname: TWideStringField;
    cdsListcreateDate: TWideStringField;
    cdsListauditdate: TWideStringField;
    cdsListcfbillstates: TFloatField;
    cxTextEdit2: TcxTextEdit;
    cdsBillDataCreateName: TStringField;
    cdsBillDataauditName: TStringField;
    cdsBillDatabillstatestr: TStringField;
    cxDBMaskEdit7: TcxDBMaskEdit;
    btn_Del: TSpeedButton;
    btn_SendMsg: TSpeedButton;
    Label15: TLabel;
    btn_cancel: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cdsBillDataBeforeEdit(DataSet: TDataSet);
    procedure cdsBillDataNewRecord(DataSet: TDataSet);
    procedure sb_saveClick(Sender: TObject);
    procedure sb_newClick(Sender: TObject);
    procedure cdsBillDataCalcFields(DataSet: TDataSet);
    procedure cdsListAfterScroll(DataSet: TDataSet);
    procedure ctb_listCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure SpeedButton4Click(Sender: TObject);
    procedure cdsBillDataAfterEdit(DataSet: TDataSet);
    procedure btn_SendMsgClick(Sender: TObject);
    procedure btn_DelClick(Sender: TObject);
    procedure btn_cancelClick(Sender: TObject);
  private
    { Private declarations }
    isSave:Boolean;
  public
    { Public declarations }
    procedure openList(fid:string);
    procedure openNullData;
    procedure saveData;
    procedure openBill(FID:string);
  end;

var
  VipSQFrm: TVipSQFrm;

implementation
  uses FrmCliDM,Pub_Fun,uSendMessage;
{$R *.dfm}

{ TVipSQFrm }

procedure TVipSQFrm.openList;
var _sql,errorMsg:string;
begin
  try
    cdsList.AfterScroll:=nil;
    _sql:='select a.fid, a.fnumber ,cu.fname_l2 as createname, '
          +' to_char(a.fcreatetime,''yyyy-mm-dd'') as createDate '
          +' ,u.fname_l2 as auditname,to_char(a.CFAduitDate,''yyyy-mm-dd'') as auditdate, '
          +' a.fdescription,a.cfbillstates '
          +' from CT_VIP_VIPApply a '
          +' left join t_pm_user u on a.fauditorid=u.fid    '
          +' left join t_pm_user cu on a.fcreatorid=cu.fid   '
          +' where a.CFApplyShopID ='+QuotedStr(UserInfo.Warehouse_FID)+' order by a.fnumber';
    CliDM.Get_OpenSQL(cdsList,_sql,errorMsg);
    if errorMsg<>'' then
    begin
      ShowMsg(Handle, '打开列表出错:'+errorMsg,[]);
    end;
  finally
    if (fid<>'') then
    begin
      cdsList.Locate('fid',fid,[]);
    end;
    if   not cdsList.IsEmpty   then
    begin
      openBill(cdsList.fieldbyname('fid').AsString) ;
    end
    else
    begin
      isSave:=True;
      sb_new.OnClick(nil);
    end;
    cdsList.AfterScroll:=cdsListAfterScroll;
  end;
end;

procedure TVipSQFrm.FormShow(Sender: TObject);
begin
  inherited;
  openList('');//打开左边列表
  cxTextEdit1.Text:=UserInfo.Warehouse_NumberName;
end;

procedure TVipSQFrm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if not isSave then
  if ShowYesNo(Handle, '数据未保存,确认退出?',[]) = idNO then  Abort;
end;

procedure TVipSQFrm.saveData;
var _cds: array[0..0] of TClientDataSet;
    error,fid:string;
begin

  if cdsBillDataCFBILLSTATES.AsInteger=4 then
  begin
    ShowMsg(Handle, '单据已审核不允许修改',[]);
    Abort;
  end;
//  if Trim(cxDBMaskEdit2.Text)='' then
//  begin
//    ShowMsg(Handle, 'VIP编号起始不能为空',[]);
//    cxDBMaskEdit2.SetFocus;
//    Abort;
//  end;
//  if Trim(cxDBMaskEdit4.Text)='' then
//  begin
//    ShowMsg(Handle, 'VIP编号截止不能为空',[]);
//    cxDBMaskEdit4.SetFocus;
//    Abort;
//  end;
  if Trim(cxDBMaskEdit3.Text)='' then
  begin
    ShowMsg(Handle, '申请数量不能为空',[]);
    cxDBMaskEdit3.SetFocus;
    Abort;
  end;
  if (cdsBillData.State in [dsinsert,dsedit] ) then
   cdsBillData.Post;
   fid:= cdsBillDataFID.AsString;
  //定义提交的数据集数据
  _cds[0] := cdsBillData;
  //提交数据
  try
    if CliDM.Apply_Delta_Ex(_cds,['CT_VIP_VIPApply'],error) then
    begin
      isSave:=True;
      Gio.AddShow('金蝶提示'+'【CT_VIP_VIPApply】提交成功！');
      ShowMsg(Handle, '数据保存成功!',[]);
      openList(fid);//打开左边列表
    end
    else
    begin
      ShowMsg(Handle, '金蝶提示'+'提交失败'+error,[]);
      Gio.AddShow(error);
    end;
  except
    on E: Exception do
    begin
      ShowMsg(Handle, Self.Caption+'提交失败：'+e.Message,[]);
      Abort;
    end;
  end;
end;

procedure TVipSQFrm.cdsBillDataBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if cdsBillDataCFBILLSTATES.AsInteger=4 then
  begin
    ShowMsg(Handle, '单据已审核不允许修改',[]);
    Abort;
  end;
end;

procedure TVipSQFrm.cdsBillDataNewRecord(DataSet: TDataSet);
var servertime:TDateTime;
begin
  inherited;
  servertime:=CliDM.Get_ServerTime;
  DataSet.FieldByName('fid').AsString:=CliDM.GetEASSID('29D23024');  //取主表FID
  DataSet.FieldByName('FCREATORID').AsString:=UserInfo.LoginUser_FID;
  DataSet.FieldByName('FCREATETIME').AsDateTime:=servertime;
  DataSet.FieldByName('FLASTUPDATEUSERID').AsString:=UserInfo.LoginUser_FID;
  DataSet.FieldByName('FLASTUPDATETIME').AsDateTime:=servertime;
  DataSet.FieldByName('fnumber').AsString:=CliDM.GetBillNo('VIPSQ',UserInfo.WareHouser_Sign,UserInfo.MachineCode);
  DataSet.FieldByName('FCONTROLUNITID').AsString := UserInfo.FCONTROLUNITID;//控制单元
  DataSet.FieldByName('fhandlerid').AsString :=UserInfo.LoginUser_FID;

  DataSet.FieldByName('CFApplyShopID').AsString:= UserInfo.Warehouse_FID;
  DataSet.FieldByName('CFCardClassesID').AsString:= 'p/z9I80CQkWh3nNcrHfRQjG16mM=';
  DataSet.FieldByName('cfbillstates').AsInteger:= 1;
end;

procedure TVipSQFrm.sb_saveClick(Sender: TObject);
begin
  inherited;
  saveData;
end;

procedure TVipSQFrm.sb_newClick(Sender: TObject);
begin
  inherited;
  if not isSave then
  begin
    ShowMsg(Handle, '请先保存数据再新增!',[]);
    Abort;
  end;
  cdsList.Append;
  cdsList.FieldByName('fnumber').AsString:='新单...';
  openNullData;
  cdsBillData.Append;
  isSave:=False;
end;

procedure TVipSQFrm.openNullData;
var _sql,errorMsg:string;
begin
  _sql:='select * from CT_VIP_VIPApply where 1=2 ';
  CliDM.Get_OpenSQL(cdsBillData,_sql,errorMsg);
  if errorMsg<>'' then
  begin
    ShowMsg(Handle, '打开列表出错:'+errorMsg,[]);
  end;
end;

procedure TVipSQFrm.cdsBillDataCalcFields(DataSet: TDataSet);
var sqlstr:string;
begin
  inherited;
  if DataSet.FindField('CreateName') <> nil then
  begin
    sqlstr := 'select FName_L2 from T_PM_USER where FID collate Chinese_PRC_CS_AS_WS ='+QuotedStr(DataSet.fieldbyName('FCREATORID').AsString);
    DataSet.FieldByName('CreateName').AsString := CliDM.Client_QuerySQL(sqlstr).FieldByName('FName_L2').AsString;
  end;
  if DataSet.FindField('auditName') <> nil then
  begin
    sqlstr := 'select FName_L2 from T_PM_USER where FID collate Chinese_PRC_CS_AS_WS ='+QuotedStr(DataSet.fieldbyName('FAUDITORID').AsString);
    DataSet.FieldByName('auditName').AsString := CliDM.Client_QuerySQL(sqlstr).FieldByName('FName_L2').AsString;
  end;
  if  DataSet.FieldByName('cfbillstates').AsInteger=1 then
  DataSet.FieldByName('billstatestr').AsString:=  '保存'
  else
  DataSet.FieldByName('billstatestr').AsString:=  '审核'
end;

procedure TVipSQFrm.openBill(FID: string);
var _sql,errorMsg:string;
begin
  _sql:='select * from CT_VIP_VIPApply where FID= '+QuotedStr(FID);
  CliDM.Get_OpenSQL(cdsBillData,_sql,errorMsg);
  if errorMsg<>'' then
  begin
    ShowMsg(Handle, '打开列表出错:'+errorMsg,[]);
  end;
  isSave:=True;
end;

procedure TVipSQFrm.cdsListAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if   not DataSet.IsEmpty   then
  openBill(DataSet.fieldbyname('fid').AsString);
end;

procedure TVipSQFrm.ctb_listCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
var  CheckValue:String;
     CxColumn:TcxGridDBColumn;
begin
  CxColumn:=(Sender as TcxGridDBTableView).GetColumnByFieldName('cfbillstates');
  if CxColumn=nil then Exit;
  if AViewInfo.GridRecord.Values[CxColumn.Index] <>null then
  begin
    CheckValue:=AViewInfo.GridRecord.Values[CxColumn.Index];
    if (CheckValue='4')   then
    begin
      AViewInfo.Focused;
      ACanvas.Brush.Color:=clSkyBlue;
    end;
  end;
end;

procedure TVipSQFrm.SpeedButton4Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TVipSQFrm.cdsBillDataAfterEdit(DataSet: TDataSet);
begin
  inherited;
  isSave:=False;
end;

procedure TVipSQFrm.btn_SendMsgClick(Sender: TObject);
begin
  inherited;
  SendMessage('','','','','');
end;

procedure TVipSQFrm.btn_DelClick(Sender: TObject);
var _sql,errormsg:string;
begin
  inherited;
  if not cdsBillData.Active then Exit;
  if cdsBillData.IsEmpty then Exit;
  if (not isSave) then
  begin
    ShowMsg(Handle, '新增状态不允许删除!',[]);
    Exit;
  end;
  if (cdsBillDataCFBILLSTATES.AsInteger=4) then
  begin
    ShowMsg(Handle, '单据审核状态下不允许删除,若要删除,请通知上级反审核!',[]);
    Exit;
  end;
  _sql:='delete from CT_VIP_VIPApply where fid='+QuotedStr(cdsBillDataFID.AsString);
  if not CliDM.Get_ExecSQL(_sql,errormsg) then
  begin
    ShowMsg(Handle, '单据删除失败!'+errorMsg,[]);
    Exit;
  end;
  openList('');//打开左边列表
  ShowMsg(Handle, '单据删除成功!',[]);
end;

procedure TVipSQFrm.btn_cancelClick(Sender: TObject);
begin
  inherited;
  if (not isSave) then
  begin
    isSave:=True;
    openList('');//打开左边列表
  end;
end;

end.
