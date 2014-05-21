unit uOtherBillBaseEditFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uBaseEditFrm, DB, DBClient, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxDBEdit, StdCtrls, ExtCtrls, dxBar, cxClasses,
  ActnList, ImgList;
type
 TBillStatus = record
    IsNew   : Boolean;  //新单
    IsAudit : Boolean;  //审核状态
    IsEdit  : Boolean;  //修改状态
    IsChange: Boolean;  //是否修改过
end;
type TOtherEditFormPar = class
    BillFID : String;
    ListDataset:TclientDataset;
    FrmTitle : string;
end;
type
  TOtherBillBaseEditFrm = class(TSTBaseEdit)
    ImageListMainForm: TImageList;
    actlst1: TActionList;
    actNewBill: TAction;
    actSaveBill: TAction;
    actCancel: TAction;
    actDelete: TAction;
    actAudit: TAction;
    actUnAudit: TAction;
    actReportDesign: TAction;
    actReportView: TAction;
    actQuit: TAction;
    actDetailAdd: TAction;
    actDetailDel: TAction;
    actSetBillStatus: TAction;
    actGetBillStatus: TAction;
    actToExcel: TAction;
    actImportExcel: TAction;
    actFirst: TAction;
    actPrior: TAction;
    actNext: TAction;
    actlast: TAction;
    actUp: TAction;
    actDown: TAction;
    actPull: TAction;
    actPush: TAction;
    actEdit: TAction;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar2: TdxBar;
    dxBarManager1Bar1: TdxBar;
    btn_Save: TdxBarButton;
    dxBarButton3: TdxBarButton;
    btn_DelBill: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    btn_Audit: TdxBarButton;
    btn_uAudit: TdxBarButton;
    dxBarSubItem2: TdxBarSubItem;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    barbtnNew: TdxBarButton;
    dxBarSubItem3: TdxBarSubItem;
    dxBarButton11: TdxBarButton;
    dxBarButton12: TdxBarButton;
    dxBarSubItem7: TdxBarSubItem;
    dxBarSubItem8: TdxBarSubItem;
    dxBarSubItem9: TdxBarSubItem;
    dxBarButton17: TdxBarButton;
    dxBarButton19: TdxBarButton;
    dxBarButton23: TdxBarButton;
    dxBarButton24: TdxBarButton;
    dxBarButton25: TdxBarButton;
    dxBarToExcel: TdxBarButton;
    dxBarImportXls: TdxBarButton;
    bt_sendMsg: TdxBarButton;
    dxBarBtnFirst: TdxBarButton;
    dxBarBtnPrior: TdxBarButton;
    dxBarbtnNext: TdxBarButton;
    dxBarbtnlast: TdxBarButton;
    dxBarbtnUP: TdxBarButton;
    dxBarbtnDown: TdxBarButton;
    dxBarbtnPull: TdxBarButton;
    dxbarbtnPush: TdxBarButton;
    dxBarbtnEdit: TdxBarButton;
    btn_Print: TdxBarButton;
    p_bt: TPanel;
    Label1: TLabel;
    Label6: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    cxFCreatorName: TcxDBMaskEdit;
    cxFCreatorDate: TcxDBMaskEdit;
    cxFAUDITORName: TcxDBMaskEdit;
    cxFAUDITORdate: TcxDBMaskEdit;
    cxFmodifieridName: TcxDBMaskEdit;
    Fmodificationtime: TcxDBMaskEdit;
    cdsMaster: TClientDataSet;
    dsMaster: TDataSource;
    cdsDetail: TClientDataSet;
    dsDetail: TDataSource;
    procedure actFirstExecute(Sender: TObject);
    procedure actPriorExecute(Sender: TObject);
    procedure actNextExecute(Sender: TObject);
    procedure actlastExecute(Sender: TObject);
    procedure actUpExecute(Sender: TObject);
    procedure actDownExecute(Sender: TObject);
    procedure btn_PrintClick(Sender: TObject);
    procedure actQuitExecute(Sender: TObject);
    procedure bt_sendMsgClick(Sender: TObject);
    procedure dxBarButton16Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actSetBillStatusExecute(Sender: TObject);
    procedure cdsMasterBeforeEdit(DataSet: TDataSet);
    procedure cdsDetailBeforeEdit(DataSet: TDataSet);
    procedure actEditExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cdsDetailBeforeInsert(DataSet: TDataSet);
    procedure actDeleteExecute(Sender: TObject);
    procedure actNewBillExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    BillStatusFieldName,Bill_FID,Bill_Number:string;  //单据状态字段名,必须在子类构造方法内赋值
    FOpenPar : TOtherEditFormPar;
    IsChange:Boolean;//用于记录打开界面后是否修改过数据
    sBillTypeID,sBillFlag,BillEntryTable,BillTable,FocuField :string;
    BillStatus :TBillStatus;
    procedure Open_Bill(BillFID:string); virtual;      //打开单据编辑界面
    procedure InitBaseData; virtual;   //初始化数据集
    function  FindMaterial(cdsEntry:TClientDataSet): string;
    function  FindColor(cdsEntry:TClientDataSet): string;
    function FindCup(cdsEntry:TClientDataSet) :string;             //弹选内长
    function FindSize(cdsEntry:TClientDataSet) :string;           //弹选尺码
  end;
  
type TOtherEditFormClass = class of TOtherBillBaseEditFrm;
var
  OtherBillBaseEditFrm: TOtherBillBaseEditFrm;
  function OpenOtherBillEditFrom( subFrm :TOtherBillBaseEditFrm; frm : TOtherEditFormClass;_OpenPar : TOtherEditFormPar): boolean ;
implementation
  uses Pub_Fun,uSysDataSelect,RMReport_lib,uShowStoragefrm,materialinfo,cxGridExportLink
,uGridStyleSet,uFrm_ImportXLS_Base,uFrm_AcrossInput_Base,uFrmEnvirTesting,uDrpHelperClase,
uSendMessage,CheckQty,uMaterDataSelectHelper,uBillUpDownQueryFrm,uPrintTemplateSelectFrm,
  FrmCliDM;
{$R *.dfm}
function OpenOtherBillEditFrom( subFrm :TOtherBillBaseEditFrm; frm : TOtherEditFormClass;_OpenPar : TOtherEditFormPar): boolean;
var  editFrm : TOtherBillBaseEditFrm;
begin
  if subFrm <> nil then
  begin
    editFrm := subFrm ;
    if (editFrm.Visible) and (editFrm.Showing) then
    begin
      editFrm.SetFocus;
      editFrm.OnActivate(nil);
    end;
  end
  else
  begin
    editFrm :=  frm.Create(Application);
    subFrm := editFrm;
    subFrm.InitBaseData;
    editFrm.FOpenPar := _OpenPar;
    subFrm.Open_Bill(_OpenPar.BillFID);
    if _OpenPar.FrmTitle <> '' then
    editFrm.Caption := _OpenPar.FrmTitle;
    editFrm.Show;
  end;
end;
{ TOtherBillBaseEditFrm }

procedure TOtherBillBaseEditFrm.Open_Bill(BillFID: string);
var ErrMsg:string;
begin
  Bill_FID   := cdsMaster.fieldbyname('FID').AsString;
  Bill_Number:= cdsMaster.fieldbyname('Fnumber').AsString;
  if BillFID <> '' then
  begin
    CliDM.AddLockToBill(Bill_FID,Bill_Number,sBillTypeID,UserInfo.Branch_ID,0,ErrMsg);
    if ErrMsg <> '' then
    begin
      ShowMsg(self.Handle,ErrMsg,[]);
      Exit;
    end;
  end;
  actSetBillStatus.Execute;
end;

procedure TOtherBillBaseEditFrm.actFirstExecute(Sender: TObject);
var ErrMsg:string;
begin
  inherited;
  if FOpenPar.ListDataset= nil then Exit;
  if not cdsMaster.IsEmpty then
  begin
    CliDM.AddLockToBill(cdsMaster.fieldbyname('FID').AsString,cdsMaster.fieldbyname('Fnumber').AsString,
    Self.sBillTypeID,UserInfo.Branch_ID,0,ErrMsg);
    if ErrMsg <> '' then
    begin
      ShowMsg(self.Handle,ErrMsg,[]);
      Exit;
    end;
  end;
  if not FOpenPar.ListDataset.Bof then
  begin
    FOpenPar.ListDataset.First;
    Open_Bill(FOpenPar.ListDataset.fieldbyname('fid').AsString);
  end;
  actSetBillStatus.Execute;
end;

procedure TOtherBillBaseEditFrm.actPriorExecute(Sender: TObject);
var ErrMsg:string;
begin
  inherited;
  if FOpenPar.ListDataset= nil then Exit;
  if not cdsMaster.IsEmpty then
  begin
    CliDM.AddLockToBill(cdsMaster.fieldbyname('FID').AsString,cdsMaster.fieldbyname('Fnumber').AsString,
    Self.sBillTypeID,UserInfo.Branch_ID,0,ErrMsg);
    if ErrMsg <> '' then
    begin
      ShowMsg(self.Handle,ErrMsg,[]);
      Exit;
    end;
  end;
  if not FOpenPar.ListDataset.Bof then
  begin
    FOpenPar.ListDataset.Prior ;
    Open_Bill(FOpenPar.ListDataset.fieldbyname('fid').AsString);
  end;
  actSetBillStatus.Execute;
end;

procedure TOtherBillBaseEditFrm.actNextExecute(Sender: TObject);
var ErrMsg:string;
begin
  inherited;
  if FOpenPar.ListDataset= nil then Exit;
  if not cdsMaster.IsEmpty then
  begin
    CliDM.AddLockToBill(cdsMaster.fieldbyname('FID').AsString,cdsMaster.fieldbyname('Fnumber').AsString,
    Self.sBillTypeID,UserInfo.Branch_ID,0,ErrMsg);
    if ErrMsg <> '' then
    begin
      ShowMsg(self.Handle,ErrMsg,[]);
      Exit;
    end;
  end;
  if not FOpenPar.ListDataset.Eof then
  begin
    FOpenPar.ListDataset.Next;
    Open_Bill(FOpenPar.ListDataset.fieldbyname('fid').AsString);
  end;
  actSetBillStatus.Execute;
end;

procedure TOtherBillBaseEditFrm.actlastExecute(Sender: TObject);
var ErrMsg:string;
begin
  inherited;
  if FOpenPar.ListDataset= nil then Exit;
  if not cdsMaster.IsEmpty then
  begin
    CliDM.AddLockToBill(cdsMaster.fieldbyname('FID').AsString,cdsMaster.fieldbyname('Fnumber').AsString,
    Self.sBillTypeID,UserInfo.Branch_ID,0,ErrMsg);
    if ErrMsg <> '' then
    begin
      ShowMsg(self.Handle,ErrMsg,[]);
      Exit;
    end;
  end;
  if not FOpenPar.ListDataset.Eof then
  begin
    FOpenPar.ListDataset.Last;
    Open_Bill(FOpenPar.ListDataset.fieldbyname('fid').AsString);
  end;
  actSetBillStatus.Execute;
end;

procedure TOtherBillBaseEditFrm.actUpExecute(Sender: TObject);
begin
  inherited;
  CallUpDownQuery(FOpenPar.ListDataset.fieldbyname('fid').AsString,self.sBillTypeID,False);
end;

procedure TOtherBillBaseEditFrm.actDownExecute(Sender: TObject);
begin
  inherited;
  CallUpDownQuery(FOpenPar.ListDataset.fieldbyname('fid').AsString,self.sBillTypeID,True);
end;

procedure TOtherBillBaseEditFrm.btn_PrintClick(Sender: TObject);
var FBillFID,MaterialFID:TStringList;
begin
  inherited;
  try
    FBillFID   := TStringList.Create;
    MaterialFID:= TStringList.Create;
    FBillFID.Add(FOpenPar.ListDataset.fieldbyname('fid').AsString);
    MaterialFID.Add('');
    I3_SCM_Print(self.sBillTypeID,FBillFID,MaterialFID);
  finally
    FBillFID.Free;
    MaterialFID.Free;
  end;
end;

procedure TOtherBillBaseEditFrm.actQuitExecute(Sender: TObject);
begin
  inherited;
  self.Close;
end;

procedure TOtherBillBaseEditFrm.bt_sendMsgClick(Sender: TObject);
begin
  inherited;
  SendMessage('','','','','');
end;

procedure TOtherBillBaseEditFrm.dxBarButton16Click(Sender: TObject);
begin
  inherited;
  Self.Close;
end;

procedure TOtherBillBaseEditFrm.FormCreate(Sender: TObject);
begin
  inherited;
  self.WindowState := wsMaximized;
end;

procedure TOtherBillBaseEditFrm.FormShow(Sender: TObject);
begin
  inherited;
  if (sBillTypeID='') or (sBillFlag='') or (BillEntryTable='') or (BillTable='') then
  begin
    ShowMsg(self.Handle,'单据初始化失败!',[]);
    Abort;
  end;
end;

procedure TOtherBillBaseEditFrm.actSetBillStatusExecute(Sender: TObject);
begin
  inherited;
  btn_Save.Enabled     := not BillStatus.IsAudit;
  btn_DelBill.Enabled  := not BillStatus.IsAudit;
  btn_uAudit.Enabled   := BillStatus.IsAudit;
  btn_Audit.Enabled    := not BillStatus.IsAudit;
  dxBarbtnDown.Enabled := BillStatus.IsAudit;
  dxBarbtnPull.Enabled := not BillStatus.IsAudit;
  dxbarbtnPush.Enabled := BillStatus.IsAudit;


  if  BillStatus.IsEdit then
  begin
    dxBarbtnEdit.Enabled := False;
    btn_Save.Enabled     := True;
    btn_DelBill.Enabled  := True;
  end
  else
  begin
    dxBarbtnEdit.Enabled := True;
    btn_Save.Enabled     := False;
    btn_DelBill.Enabled  := False;
  end;

  
  if (FOpenPar.ListDataset = nil) or (FOpenPar.ListDataset.IsEmpty) or (FOpenPar.ListDataset.RecordCount = 1)  then
  begin
    dxBarBtnFirst.Enabled := False;
    dxBarBtnPrior.Enabled := False;
    dxBarbtnNext.Enabled  := False;
    dxBarbtnlast.Enabled  := False;
  end
  else
  begin
    dxBarBtnPrior.Enabled := not FOpenPar.ListDataset.Bof;
    dxBarBtnFirst.Enabled := not FOpenPar.ListDataset.Bof;
    dxBarbtnNext.Enabled  := not FOpenPar.ListDataset.Eof;
    dxBarbtnlast.Enabled  := not FOpenPar.ListDataset.Eof;
  end;
end;

procedure TOtherBillBaseEditFrm.InitBaseData;
begin
  //
end;

procedure TOtherBillBaseEditFrm.cdsMasterBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if BillStatus.IsAudit then
  begin
    ShowMsg(Self.Handle,'单据已审核,不允许修改!  ',[]);
    Abort;
  end;
  if not BillStatus.IsEdit then
  begin
    ShowMsg(Self.Handle,'单据不是编辑状态,请单击修改按钮!  ',[]);
    Abort;
  end;
  BillStatus.IsChange := True;
end;

procedure TOtherBillBaseEditFrm.cdsDetailBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if BillStatus.IsAudit then
  begin
    ShowMsg(Self.Handle,'单据已审核,不允许修改!  ',[]);
    Abort;
  end;
  if not BillStatus.IsEdit then
  begin
    ShowMsg(Self.Handle,'单据不是编辑状态,请单击修改按钮!  ',[]);
    Abort;
  end;
  BillStatus.IsChange := True;
end;

procedure TOtherBillBaseEditFrm.actEditExecute(Sender: TObject);
var ErrMsg:string;
begin
  inherited;
  if BillStatus.IsAudit then
  begin
    ShowMsg(self.Handle,'单据已审核,不能修改!    ',[]);
    Abort;
  end;
  CliDM.AddLockToBill(cdsMaster.fieldbyname('FID').AsString,cdsMaster.fieldbyname('Fnumber').AsString,
  Self.sBillTypeID,UserInfo.Branch_ID,1,ErrMsg);
  if ErrMsg <> '' then
  begin
    ShowMsg(self.Handle,ErrMsg,[]);
    Exit;
  end;
  BillStatus.IsEdit := True;
  actSetBillStatus.Execute;
end;

procedure TOtherBillBaseEditFrm.FormClose(Sender: TObject;
  var Action: TCloseAction);
  var ErrMsg:string;
begin
  inherited;
  if  (BillStatus.IsChange) then
  begin
    if  MessageBox(Handle, PChar('数据已修改,确认退出？'), 'GA集团ERP提示', MB_YESNO) = IDNO then Abort;
  end;
  if BillStatus.IsEdit then
  begin
    CliDM.AddLockToBill(cdsMaster.fieldbyname('FID').AsString,cdsMaster.fieldbyname('Fnumber').AsString,
    Self.sBillTypeID,UserInfo.Branch_ID,2,ErrMsg);
    if ErrMsg <> '' then
    begin
      ShowMsg(self.Handle,ErrMsg,[]);
      Exit;
    end;
  end
end;

procedure TOtherBillBaseEditFrm.cdsDetailBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  if BillStatus.IsAudit then
  begin
    ShowMsg(Self.Handle,'单据已审核,不允许修改!  ',[]);
    Abort;
  end;
  if not BillStatus.IsEdit then
  begin
    ShowMsg(Self.Handle,'单据不是编辑状态,请单击修改按钮!  ',[]);
    Abort;
  end;
end;
//在子类代码最后执行
procedure TOtherBillBaseEditFrm.actDeleteExecute(Sender: TObject);
var ErrMsg : string;
begin
  inherited;
  if  FOpenPar.ListDataset<> nil then
  if FindRecord1(FOpenPar.ListDataset,'FID',Bill_FID,1)  then
  begin
     FOpenPar.ListDataset.FieldByName('FID').ReadOnly := False;
     FOpenPar.ListDataset.Delete;
  end;
  //解锁
  CliDM.AddLockToBill(Bill_FID,Bill_Number,sBillTypeID,UserInfo.Branch_ID,0,ErrMsg);
  if ErrMsg <> '' then
  begin
    ShowMsg(self.Handle,ErrMsg,[]);
    Exit;
  end;
  if  FOpenPar.ListDataset<> nil then
  begin
    if  not FOpenPar.ListDataset.IsEmpty then
    begin
      Open_Bill(FOpenPar.ListDataset.fieldbyname('FID').AsString);
    end
    else
    begin
      Open_Bill('');
    end;
  end;
  ShowMsg(Self.Handle,'单据删除成功!    ',[]);
end;

procedure TOtherBillBaseEditFrm.actNewBillExecute(Sender: TObject);
var
  I : Integer;
begin
  if BillStatus.IsNew then
  begin
    if (cdsDetail.IsEmpty) then
    begin
      ShowMsg(Handle, '当前单据已经是空白单据！',[]);
      abort;
    end;
    //明细有数据提示‘是否保存’
    if BillStatus.IsChange then
    begin
      ShowMsg(Handle, '明细有未保存的数据，请保存后再新增单据！',[]);
      abort;
    end;
  end;
  Open_Bill('');
end;

function TOtherBillBaseEditFrm.FindMaterial(
  cdsEntry: TClientDataSet): string;
var
  sqlstr,ReturnStr: string;
  fdEnglishList, fdChineseList, fdReturnAimList: string;
begin
  sqlstr := 'SELECT top 1000 FID ,FNUMBER,FNAME_L2,Cfattributeid,Cfbrandid,CFSizeGroupID,FBASEUNIT,'+
            ' cfunityprice,cfdistributeprice,cfpurprice FROM T_BD_Material A(nolock) '
            +' WHERE Isnull(FStatus,0)=1 and Isnull(CFType,0)=0 '
            +'       AND EXISTS(SELECT 1 FROM ct_ms_materialcolorpg(nolock) where FPARENTID collate Chinese_PRC_CS_AS_WS=A.FID collate Chinese_PRC_CS_AS_WS) '  //20111019  过滤没有颜色组和尺码明细的物料
            +' ORDER BY FNUMBER';

  fdEnglishList := 'Fnumber,Fname_l2';
  fdChineseList := '商品编号,商品名称';
  fdReturnAimList := 'FID';
  ReturnStr := CallForm(sqlstr, fdEnglishList, fdChineseList, fdReturnAimList,CliDM.cdsTemp, 200,'Mat');
  if ReturnStr <> '' then
  begin
    if not(cdsEntry.State in DB.dsEditModes) then
      cdsEntry.Edit;
      cdsEntry.FieldByName('CFSIZEGROUPID').AsString := '';
      cdsEntry.FieldByName('CFCOLORID').AsString := '';
      cdsEntry.FieldByName('FColorNumber').AsString := '';
      cdsEntry.FieldByName('FColorName').AsString := '';
      cdsEntry.FieldByName('FSizeName').AsString := '';
      cdsEntry.FieldByName('FCupName').AsString := '';
      cdsEntry.FieldByName('CFCUPID').AsString := '';
      cdsEntry.FieldByName('CFSIZESID').AsString := '';

    if cdsEntry.findField('CFSizeGroupID')<> nil then
      cdsEntry.fieldbyname('CFSizeGroupID').AsString := CliDM.cdsTemp.fieldbyname('CFSizeGroupID').AsString;
    if cdsEntry.findField('FBASEUNIT')<> nil then
      cdsEntry.fieldbyname('FBASEUNIT').AsString := CliDM.cdsTemp.fieldbyname('FBASEUNIT').AsString;
    if cdsEntry.findField('CFDPPRICE')<> nil then
      cdsEntry.fieldbyname('CFDPPRICE').AsFloat := CliDM.cdsTemp.fieldbyname('cfunityprice').AsFloat;


    if cdsEntry.FindField('FMATERIALID') <> nil then
      cdsEntry.FieldByName('FMATERIALID').AsString := CliDM.cdsTemp.Fieldbyname('FID').AsString;
    if  cdsEntry.FindField('FMaterialNumber')<> nil then
      cdsEntry.FieldByName('FMaterialNumber').AsString := CliDM.cdsTemp.Fieldbyname('FNUMBER').AsString;
    if  cdsEntry.FindField('FMaterialName')<> nil then
      cdsEntry.FieldByName('FMaterialName').AsString := CliDM.cdsTemp.Fieldbyname('fname_l2').AsString;
  end;

end;

function TOtherBillBaseEditFrm.FindColor(cdsEntry: TClientDataSet): string;
var
  sqlstr,ReturnStr,FMATERIALID: string;
  fdEnglishList, fdChineseList, fdReturnAimList: string;
begin
  if cdsEntry.FindField('CFMATERIALID') <> nil then
    FMATERIALID := cdsEntry.fieldbyName('CFMATERIALID').AsString
  else
    FMATERIALID := cdsEntry.fieldbyName('FMATERIALID').AsString;
  if FMATERIALID='' then
  begin
    ShowMsg(Handle, '请选择物料！',[]);
    exit;
  end;
  sqlstr := 'SELECT c.FID ,C.FNUMBER,C.FNAME_L2 FROM T_BD_Material A(nolock) '
            +' LEFT OUTER JOIN ct_ms_materialcolorpg B(nolock) on a.fid=b.FPARENTID '
            +' LEFT OUTER JOIN T_BD_AsstAttrValue C(nolock) on b.CFColorID=c.FID '
            +' WHERE A.FID collate Chinese_PRC_CS_AS_WS='+QuotedStr(FMATERIALID)+' AND C.FType=''COLOR'' '
            +' ORDER BY C.FNUMBER';

  fdEnglishList := 'Fnumber,Fname_l2';
  fdChineseList := '颜色编号,颜色名称';
  fdReturnAimList := 'FID';
  ReturnStr := ShareSelectBoxCall(sqlstr, fdEnglishList, fdChineseList, fdReturnAimList, 200);
  if ReturnStr <> '' then
  begin
      if not(cdsEntry.State in DB.dsEditModes) then
      cdsEntry.Edit;
      if   cdsEntry.FindField('CFCOLORID') <> nil  then
        cdsEntry.FieldByName('CFCOLORID').AsString := ReturnStr
      else
        cdsEntry.FieldByName('FCOLORID').AsString := ReturnStr;
    if cdsEntry.FindField('FColorNumber')<> nil then
    begin
      if FindADORecord1(CliDM.qryColor,'FID',cdsEntry.FieldByName('CFColorID').AsString ,1)then
      begin
        cdsEntry.FieldByName('FColorName').AsString := CliDM.qryColor.fieldbyname('Fname_l2').AsString;
        cdsEntry.FieldByName('FColorNumber').AsString := CliDM.qryColor.fieldbyname('fnumber').AsString;
      end;
    end;
  end;
end;

function TOtherBillBaseEditFrm.FindCup(cdsEntry: TClientDataSet): string;
var
  sqlstr,ReturnStr,FMATERIALID: string;
  fdEnglishList, fdChineseList, fdReturnAimList: string;
begin
  if cdsEntry.FindField('CFMATERIALID') <> nil then
    FMATERIALID := cdsEntry.fieldbyName('CFMATERIALID').AsString
  else
    FMATERIALID := cdsEntry.fieldbyName('FMATERIALID').AsString;
  if FMATERIALID='' then
  begin
    ShowMsg(Handle, '请选择物料！',[]);
    exit;
  end;
  sqlstr := 'SELECT c.FID ,C.FNUMBER,C.FNAME_L2 FROM T_BD_Material A(nolock) '
            +' LEFT OUTER JOIN ct_ms_materialcuppg B(nolock) on a.fid=b.FPARENTID '
            +' LEFT OUTER JOIN T_BD_AsstAttrValue C(nolock) on b.CFCupID=c.FID '
            +' WHERE A.FID collate Chinese_PRC_CS_AS_WS='+QuotedStr(FMATERIALID)+' AND C.FType=''CUP'''
            +' ORDER BY C.FNUMBER';

  fdEnglishList := 'Fnumber,Fname_l2';
  fdChineseList := '内长编号,内长名称';
  fdReturnAimList := 'FID';
  ReturnStr := ShareSelectBoxCall(sqlstr, fdEnglishList, fdChineseList, fdReturnAimList, 200);
  if ReturnStr <> '' then
  begin
    if not(cdsEntry.State in DB.dsEditModes) then
    cdsEntry.Edit;
    if   cdsEntry.FindField('CFCUPID') <> nil  then
      cdsEntry.FieldByName('CFCUPID').AsString := ReturnStr
    else
      cdsEntry.FieldByName('FCUPID').AsString := ReturnStr ;
    if cdsEntry.FindField('FCupName')<> nil then
    begin
      if FindADORecord1(CliDM.qryCup,'FID',cdsEntry.FieldByName('CFCupID').AsString ,1)then
        cdsEntry.FieldByName('FCupName').AsString := CliDM.qryCup.fieldbyname('Fname_l2').AsString;
    end;
  end;
end;

function TOtherBillBaseEditFrm.FindSize(cdsEntry: TClientDataSet): string;
var
  sqlstr,ReturnStr,FMATERIALID: string;
  fdEnglishList, fdChineseList, fdReturnAimList: string;
begin
  if cdsEntry.FindField('FMATERIALID') <> nil then
    FMATERIALID := cdsEntry.fieldbyName('FMATERIALID').AsString;
  if FMATERIALID='' then
  begin
    ShowMsg(Handle, '请选择物料！',[]);
    exit;
  end;
  sqlstr := 'SELECT c.FID ,C.FNUMBER,C.FNAME_L2 FROM T_BD_Material A(nolock) '
            +' LEFT OUTER JOIN ct_bas_sizegroupentry B(nolock) on a.CFSIZEGROUPID collate Chinese_PRC_CS_AS_WS=b.FParentID collate Chinese_PRC_CS_AS_WS'
            +' LEFT OUTER JOIN T_BD_AsstAttrValue C(nolock) on b.CFSIZEID collate Chinese_PRC_CS_AS_WS=C.FID collate Chinese_PRC_CS_AS_WS'
            +' WHERE A.FID collate Chinese_PRC_CS_AS_WS='+QuotedStr(FMATERIALID)
            +' ORDER BY C.FNUMBER';

  fdEnglishList := 'Fnumber,Fname_l2';
  fdChineseList := '尺码编号,尺码名称';
  fdReturnAimList := 'FID';
  ReturnStr := ShareSelectBoxCall(sqlstr, fdEnglishList, fdChineseList, fdReturnAimList, 200);
  if ReturnStr <> '' then
  begin
    if not(cdsEntry.State in DB.dsEditModes) then
    cdsEntry.Edit;
    cdsEntry.FieldByName('CFSIZESID').AsString := ReturnStr;
    if cdsEntry.FindField('FSizeName')<> nil then
    begin
      if FindADORecord1(CliDM.qrySize,'FID',cdsEntry.FieldByName('CFSIZESID').AsString ,1)then
      begin
        cdsEntry.FieldByName('FSizeName').AsString := CliDM.qrySize.fieldbyname('Fname_l2').AsString;
      end;
    end;
  end;
end;

end.
