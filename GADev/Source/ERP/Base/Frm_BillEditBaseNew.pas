unit Frm_BillEditBaseNew;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uI3BaseFrm, Menus, ActnList, ImgList, dxSkinsCore,
  dxSkinsdxBarPainter, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxBar, cxClasses, DB, DBClient, dxSkinscxPCPainter,
  cxDBEdit, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, StdCtrls, dxGDIPlusClasses, ExtCtrls, cxPC, cxControls,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxDBData, cxButtonEdit, cxDBLookupComboBox, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridCustomView, cxGrid, ComCtrls, ToolWin, cxImageComboBox, FrmCliDM,
  uPrintTemplateSelectFrm, ShellAPI, uListFormBaseFrm, uSysDataSelect, DateUtils;
type
  TBillInfo = record
    IsNew: Boolean; //True 新单
    IsAduit: Boolean; //审核状态  True 审核  False 新单 可以修改
    IsEdit: Boolean; //修改状态
    IsClose: Boolean; //关闭
    IsSubmit: Boolean; //提交状态 用于采购退货申请单
    IsChange: Boolean; //是否修改过
  end;

type
  TFM_BillEditBaseNew = class(TListFormBaseFrm)
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
    actF11: TAction;
    actCodeSM_F12: TAction;
    Ctrl_Q_downCopy: TAction;
    actFirst: TAction;
    actPrior: TAction;
    actNext: TAction;
    actlast: TAction;
    actUp: TAction;
    actDown: TAction;
    actPull: TAction;
    actPush: TAction;
    actEdit: TAction;
    ActImpFromTxt: TAction;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar2: TdxBar;
    dxBarManager1Bar1: TdxBar;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarSubItem2: TdxBarSubItem;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    b_system: TdxBarButton;
    B_tool: TdxBarButton;
    B_Help: TdxBarButton;
    barbtnNew: TdxBarButton;
    dxBarSubItem3: TdxBarSubItem;
    dxBarButton11: TdxBarButton;
    dxBarButton12: TdxBarButton;
    dxBarBntAddRow: TdxBarButton;
    bb_exit: TdxBarButton;
    dxBarSubItem7: TdxBarSubItem;
    dxBarSubItem8: TdxBarSubItem;
    dxBarSubItem9: TdxBarSubItem;
    dxBarButton16: TdxBarButton;
    dxBarButton17: TdxBarButton;
    dxBarButton18: TdxBarButton;
    dxBarButton19: TdxBarButton;
    dxBarButton20: TdxBarButton;
    dxBarButton21: TdxBarButton;
    dxBarButton22: TdxBarButton;
    dxBarButton23: TdxBarButton;
    dxBarButton24: TdxBarButton;
    dxBarButton25: TdxBarButton;
    bbtCheck: TdxBarButton;
    dxBarToExcel: TdxBarButton;
    dxBarImportXls: TdxBarButton;
    dxBarF11Imput: TdxBarButton;
    dxBarCodeSM1: TdxBarButton;
    dxBarFindEnviron: TdxBarButton;
    dxBarCodeSM: TdxBarButton;
    bt_CtrlB: TdxBarButton;
    bt_CtrlJ: TdxBarButton;
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
    dxBarbtnImpFromTxt: TdxBarButton;
    cdsMaster: TClientDataSet;
    dsMaster: TDataSource;
    dsDetail: TDataSource;
    cdsDetail: TClientDataSet;
    pnl_top: TPanel;
    HeadPageCtrl: TcxPageControl;
    cxTabBaseInfo: TcxTabSheet;
    pnlTop: TPanel;
    lblPID: TLabel;
    lblBIZDate: TLabel;
    Image4: TImage;
    cxBIZDATE: TcxDBDateEdit;
    cxFNumber: TcxDBMaskEdit;
    ToolBar1: TToolBar;
    btnAppendLine: TToolButton;
    ToolButton5: TToolButton;
    btndelLine: TToolButton;
    dbimgcmbFBaseStatus: TcxDBImageComboBox;
    lblLBStatus: TLabel;
    cxGrid1: TcxGrid;
    dbgList2: TcxGridDBTableView;
    dbgLevel2: TcxGridLevel;
    SaveDg: TSaveDialog;
    cdsMaster_Save: TClientDataSet;
    dsMaster_Save: TDataSource;
    dsDetail_Save: TDataSource;
    cdsDetail_Save: TClientDataSet;
    cxdbColFMaterialNumber: TcxGridDBColumn;
    cxdbColFMaterialName: TcxGridDBColumn;
    cxdbColFUnitName: TcxGridDBColumn;
    cxdbColFQty: TcxGridDBColumn;
    cxdbColFWarehouseName: TcxGridDBColumn;
    cxdbColCFLocName: TcxGridDBColumn;
    cxdbColFPrice: TcxGridDBColumn;
    cxdbColFTaxPrice: TcxGridDBColumn;
    cxdbColFDiscountRate: TcxGridDBColumn;
    cxdbColFDiscountAmount: TcxGridDBColumn;
    cxdbColFActualPrice: TcxGridDBColumn;
    cxdbColFActualTaxPrice: TcxGridDBColumn;
    cxdbColFAmount: TcxGridDBColumn;
    cxdbColFTaxAmount: TcxGridDBColumn;
    cxdbColFTaxRate: TcxGridDBColumn;
    cxdbColFTax: TcxGridDBColumn;
    pnl1: TPanel;
    img1: TImage;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    cxFCreatorName: TcxDBMaskEdit;
    cxFCreatorDate: TcxDBMaskEdit;
    cxFAUDITORName: TcxDBMaskEdit;
    cxFAUDITORdate: TcxDBMaskEdit;
    cxFmodifieridName: TcxDBMaskEdit;
    Fmodificationtime: TcxDBMaskEdit;
    bvl1: TBevel;
    bvl2: TBevel;
    bvl3: TBevel;
    bvl4: TBevel;
    bvl5: TBevel;
    bvl6: TBevel;
    bvl7: TBevel;
    bvl8: TBevel;
    bvl9: TBevel;
    cxdbColFRemark: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    dsList: TDataSource;
    cdsList: TClientDataSet;
    procedure bt_sendMsgClick(Sender: TObject);
    procedure dxBarFindEnvironClick(Sender: TObject);
    procedure dxBarButton16Click(Sender: TObject);
    procedure barbtnNewClick(Sender: TObject);
    procedure actSaveBillExecute(Sender: TObject);
    procedure actCancelExecute(Sender: TObject);
    procedure actDeleteExecute(Sender: TObject);
    procedure actEditExecute(Sender: TObject);
    procedure actAuditExecute(Sender: TObject);
    procedure actUnAuditExecute(Sender: TObject);
    procedure btn_PrintClick(Sender: TObject);
    procedure actImportExcelExecute(Sender: TObject);
    procedure actToExcelExecute(Sender: TObject);
    procedure dxBarButton11Click(Sender: TObject);
    procedure dxBarButton12Click(Sender: TObject);
    procedure actFirstExecute(Sender: TObject);
    procedure actPriorExecute(Sender: TObject);
    procedure actNextExecute(Sender: TObject);
    procedure actUpExecute(Sender: TObject);
    procedure actlastExecute(Sender: TObject);
    procedure dxBarbtnDownClick(Sender: TObject);
    procedure actQuitExecute(Sender: TObject);
    procedure dxBarButton25Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btndelLineClick(Sender: TObject);
    procedure cdsDetailBeforePost(DataSet: TDataSet);
    procedure cdsDetailBeforeDelete(DataSet: TDataSet);
    procedure cdsMasterBeforePost(DataSet: TDataSet);
    procedure cdsMasterBeforeDelete(DataSet: TDataSet);
    procedure cdsMasterBeforeEdit(DataSet: TDataSet);
    procedure cxdbColFMaterialNumberPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxdbColFWarehouseNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cdsDetailNewRecord(DataSet: TDataSet);
    procedure btnAppendLineClick(Sender: TObject);
  private
    FBill_Sign, keyFieldList: string;

  public
    FOpenPar: TEditFormPar;
    FSEQ: Integer;
    BillIDValue, BillNumber, ReportDir, BillTable, BillEntryTable, InputTmpValue, FocuField: string;
    sBillTypeID, sIniBillFlag, FCalcField, FBill_FID: string;
    sSPPack: string; //单据审核时审核过程所在的包类型, SCM采购类单据,SALE销售类单据(包括销售出库和销售退货),STOCK库存类单据
    property Bill_Sign: string read FBill_Sign write FBill_Sign; //单据标识（Create时赋值）
    procedure Open_Bill(KeyFields: string; KeyValues: string); virtual; //打开单据编辑界面(主键字段, 字段值)
    function ST_Save: Boolean; virtual; //保存单据
    function ST_DELETE: Boolean; virtual; //单据delete
    function checkKeyFieldList(_KeyList: string; var ErrMsg: string): Boolean;
    function FindData(ACaption, ASql, Fields, FieldCaptions, AResultField, AResultCaption, AResulCaptionField: string): string;
    function FindSupplier: string;
    function FindTransactionType: string;
    function FindMatertial: string;
    function FindWarehouse: string;
    procedure GetCFLoc;
    procedure CalcFieldChange(Sender: TField); virtual;
    procedure SetDetailOnChangeField;
  end;

var
  FM_BillEditBaseNew: TFM_BillEditBaseNew;
  BillInfo: TBillInfo;
function OpenEditFromNew(subFrm: TFM_BillEditBaseNew; frm: TFM_BillEditBaseNew; _OpenPar: TEditFormPar): boolean;
implementation
uses uSendMessage, uFrmEnvirTesting, Pub_Fun, materialinfo, uFrm_ImportXLS_Base, uShowStoragefrm, uBillUpDownQueryFrm,
  uSelectDataEx, uMaterialListFrm;
{$R *.dfm}

function OpenEditFromNew(subFrm: TFM_BillEditBaseNew; frm: TFM_BillEditBaseNew; _OpenPar: TEditFormPar): boolean;
var editFrm: TFM_BillEditBaseNew;
begin
  if subFrm <> nil then
  begin
    editFrm := subFrm;
    if (editFrm.Visible) and (editFrm.Showing) then
    begin
      editFrm.SetFocus;
      editFrm.OnActivate(nil);
    end;
  end
  else
  begin
    editFrm := frm.Create(Application);
    subFrm := editFrm;
    editFrm.FOpenPar := _OpenPar;
    subFrm.Open_Bill('FID', _OpenPar.BillFID);

    if _OpenPar.FrmTitle <> '' then
      editFrm.Caption := _OpenPar.FrmTitle;
    editFrm.Show;
  end;
end;

{ TFM_BillEditBaseNew }

procedure TFM_BillEditBaseNew.Open_Bill(KeyFields, KeyValues: string);
var
  ErrMsg, sBillTypeID: string;
begin
  Gio.AddShow('Open_Bill begin ');
  if cdsMaster.FindField('FNumber') <> nil then
    cxFNumber.DataBinding.DataField := 'FNumber';
  if cdsMaster.FindField('FBizDate') <> nil then
    cxBIZDATE.DataBinding.DataField := 'FBizDate';
  if cdsMaster.FindField('FBaseStatus') <> nil then
    dbimgcmbFBaseStatus.DataBinding.DataField := 'FBaseStatus';
  if cdsMaster.FindField('FAuditorName') <> nil then
    cxFAUDITORName.DataBinding.DataField := 'FAuditorName';
  if cdsMaster.FindField('CFModifierName') <> nil then
    cxFAUDITORName.DataBinding.DataField := 'CFModifierName';
  if cdsMaster.FindField('FCreatorName') <> nil then
    cxFAUDITORName.DataBinding.DataField := 'FCreatorName';

  if KeyValues = '' then
  begin
    BillInfo.IsNew := True;
    BillInfo.IsEdit := False;
    actSaveBill.Enabled := True;
    FSEQ := 1; //新单分录序号为1
  end
  else
  begin
    BillInfo.IsNew := False;
    BillInfo.IsEdit := False;
    actSaveBill.Enabled := False;
    if cdsMaster.FindField('FBILLTYPEID') <> nil then
      sBillTypeID := cdsMaster.fieldbyname('FBILLTYPEID').AsString;
    if cdsMaster.FindField('CFBILLTYPEID') <> nil then
      sBillTypeID := cdsMaster.fieldbyname('CFBILLTYPEID').AsString;
    if cdsMaster.FindField('FBASESTATUS') <> nil then
    begin
      if trim(KeyValues) <> '' then
        CliDM.AddLockToBill(cdsMaster.fieldbyname('FID').AsString, cdsMaster.fieldbyname('fnumber').AsString, sBillTypeID, UserInfo.Branch_ID, 1, ErrMsg); //加锁
      if Trim(ErrMsg) <> '' then
      begin
        ShowMsg(Handle, '单据加锁失败:' + ErrMsg, []);
      end;
    end;
    if cdsMaster.FindField('CFBASESTATUS') <> nil then
    begin
      if trim(KeyValues) <> '' then
        CliDM.AddLockToBill(cdsMaster.fieldbyname('FID').AsString, cdsMaster.fieldbyname('fnumber').AsString, sBillTypeID, UserInfo.Branch_ID, 1, ErrMsg); //加锁
      if Trim(ErrMsg) <> '' then
      begin
        ShowMsg(Handle, '单据加锁失败:' + ErrMsg, []);
      end;
    end;
    FSEQ := cdsDetail.RecordCount + 1;
  end;

  if cdsMaster.FindField('FID') <> nil then
  begin
    BillIDValue := cdsMaster.fieldByName('FID').AsString;
    FBill_FID := cdsMaster.fieldByName('FID').AsString;
  end;
  if cdsMaster.FindField('FNUMBER') <> nil then
    BillNumber := cdsMaster.fieldByName('FNUMBER').AsString;
  SetDetailOnChangeField;
  Gio.AddShow('Open_Bill end ');
end;

procedure TFM_BillEditBaseNew.bt_sendMsgClick(Sender: TObject);
begin
  if not UserInfo.Is_SysOnline then
  begin
    ShowMsg(Handle, '本功能只能在线时使用！', []);
    Abort
  end;
  SendMessage('', '', '', '', '');
end;

procedure TFM_BillEditBaseNew.dxBarFindEnvironClick(Sender: TObject);
begin
  Show_Environ(0);
end;

procedure TFM_BillEditBaseNew.dxBarButton16Click(Sender: TObject);
begin
  Close;
end;

procedure TFM_BillEditBaseNew.barbtnNewClick(Sender: TObject);
var
  I: Integer;
begin
  if BillInfo.IsNew then
  begin
    if (cdsDetail.IsEmpty) then
    begin
      ShowMsg(Handle, '当前单据已经是空白单据！', []);
      abort;
    end;
    //明细有数据提示‘是否保存’
    if (not cdsDetail.IsEmpty) then
      if (cdsDetail.State in db.dsEditModes) then
      begin
        ShowMsg(Handle, '明细有未保存的数据，请保存后再新增单据！', []);
        abort;
      end;
  end;
  BillInfo.IsNew := True;
  BillInfo.IsEdit := False;
  BillInfo.IsAduit := False;
  for I := 0 to pnlTop.ControlCount - 1 do
  begin
    if pnlTop.Controls[i] is TcxButtonEdit then
    begin
      TcxButtonEdit(pnlTop.Controls[i]).Text := '';
    end;
  end;
  Open_Bill('FID', ''); //新增补货申请单
  actSetBillStatus.Execute;
end;

procedure TFM_BillEditBaseNew.actSaveBillExecute(Sender: TObject);
var ErrMsg: string;
begin
  Gio.AddShow(Self.Caption + ' 单号：【' + BillNumber + '】开始保存 ');
  actGetBillStatus.Execute; //审核前获取单据状态
  if BillInfo.IsAduit then
  begin
    ShowMsg(Handle, '当前单据已经审核！', []);
    Abort;
  end;
  if cdsDetail.State in db.dsEditModes then
    cdsDetail.Post;
  if cdsDetail.IsEmpty then
  begin
    ShowMsg(Handle, '分录为空不允许保存！', []);
    Abort;
  end;
  try
    dbgList2.BeginUpdate;
    actSaveBill.Enabled := False;
  //检查重复值  许志详 20120225
    if not checkKeyFieldList(keyFieldList, ErrMsg) then
    begin
      ShowMsg(Handle, ErrMsg, []);
      Exit;
    end;

    Screen.Cursor := crHourGlass;
    if ST_Save then //保存单据
    begin
      Gio.AddShow(Self.Caption + ' 单号：【' + BillNumber + '】保存结束！ ');
      ShowMsg(Handle, '保存成功！', []);
    end
    else
    begin
      Gio.AddShow(Self.Caption + ' 单号：【' + BillNumber + '】保存结束，保存失败！ ');
      ShowMsg(Handle, '保存失败！', []);
    end;
  finally
    actSaveBill.Enabled := True;
    actEdit.Enabled := True;
    Screen.Cursor := crDefault;
    dbgList2.EndUpdate;
  end;
end;

function addlist(list: TStringList; val: string): Boolean;
var i: Integer;
begin
  Result := True;
  if list.Count = 0 then
  begin
    list.Add(val);
    Exit;
  end;
  for i := 0 to list.Count - 1 do
  begin
    if UpperCase(Trim(list[i])) = UpperCase(Trim(val)) then
    begin
      Result := False;
      Exit;
    end;
  end;
  list.Add(val);
end;

function TFM_BillEditBaseNew.checkKeyFieldList(_KeyList: string;
  var ErrMsg: string): Boolean;
var fieldList, chkList: TStringList;
  linStr: string;
  i: Integer;
  bk: TBookmark;
begin
  Result := True;
  if cdsDetail.IsEmpty then Exit;
  if _KeyList = '' then Exit;
  fieldList := TStringList.Create;
  chkList := TStringList.Create;
  try
    bk := cdsDetail.GetBookmark;
    cdsDetail.DisableControls;
    fieldList.Delimiter := ';';
    fieldList.DelimitedText := keyFieldList;
    cdsDetail.First;
    while not cdsDetail.Eof do
    begin
      linStr := '';
      for i := 0 to fieldList.Count - 1 do
      begin
        if linStr = '' then
        begin
          if Trim(cdsDetail.fieldbyname(fieldList[i]).AsString) <> '' then
            linStr := Trim(cdsDetail.fieldbyname(fieldList[i]).AsString)
        end
        else
        begin
          if Trim(cdsDetail.fieldbyname(fieldList[i]).AsString) <> '' then
            linStr := linStr + '/' + Trim(cdsDetail.fieldbyname(fieldList[i]).AsString);
        end;
      end;
      if not addlist(chkList, linStr) then
      begin
        ErrMsg := '有重复行数据,请修正,数据: ' + linStr;
        //ShowMsg(Handle,'有重复行数据,请修正,数据: '+linStr,[]);
        Result := False;
        Exit;
      end;
      cdsDetail.Next;
    end;
  finally
    cdsDetail.GotoBookmark(bk);
    cdsDetail.EnableControls;
    fieldList.Free;
    chkList.Free;
  end;
end;

function TFM_BillEditBaseNew.ST_Save: Boolean;
var
  ErrMsg, sBillTypeID: string;
begin
  Result := True;
  if FOpenPar.ListDataset <> nil then
    if not FindRecord1(FOpenPar.ListDataset, 'FID', cdsMaster.fieldbyname('FID').AsString, 1) then
    begin
      FOpenPar.ListDataset.FieldByName('FID').ReadOnly := False;
      FOpenPar.ListDataset.Append;
      FOpenPar.ListDataset.FieldByName('FID').AsString := cdsMaster.fieldbyname('FID').AsString;
      FOpenPar.ListDataset.Post;
    end;
  //加锁
  if cdsMaster.FindField('FBILLTYPEID') <> nil then
    sBillTypeID := cdsMaster.fieldbyname('FBILLTYPEID').AsString;
  if cdsMaster.FindField('CFBILLTYPEID') <> nil then
    sBillTypeID := cdsMaster.fieldbyname('CFBILLTYPEID').AsString;
  CliDM.AddLockToBill(cdsMaster.fieldbyname('FID').AsString, cdsMaster.fieldbyname('fnumber').AsString, sBillTypeID, UserInfo.Branch_ID, 1, ErrMsg);
end;

procedure TFM_BillEditBaseNew.actCancelExecute(Sender: TObject);
begin
  actGetBillStatus.Execute; //获取单据状态
  if BillInfo.IsAduit then
  begin
    ShowMsg(Handle, '当前单据已经审核！', []);
    Abort;
  end;
end;

procedure TFM_BillEditBaseNew.actDeleteExecute(Sender: TObject);
var ErrMsg: string;
begin
  inherited;
  if FOpenPar.ListDataset <> nil then
    if FindRecord1(FOpenPar.ListDataset, 'FID', FBill_FID, 1) then
    begin
      FOpenPar.ListDataset.FieldByName('FID').ReadOnly := False;
      FOpenPar.ListDataset.Delete;
    end;
  //解锁
  CliDM.AddLockToBill(FBill_FID, BillNumber, sBillTypeID, UserInfo.Branch_ID, 0, ErrMsg);
  if ErrMsg <> '' then
  begin
    ShowMsg(self.Handle, ErrMsg, []);
    Exit;
  end;
  if FOpenPar.ListDataset <> nil then
  begin
    if not FOpenPar.ListDataset.IsEmpty then
    begin
      Open_Bill('FID', FOpenPar.ListDataset.fieldbyname('FID').AsString);
    end
    else
    begin
      Open_Bill('FID', '');
    end;
  end;
  ShowMsg(Self.Handle, '单据删除成功!    ', []);
end;

procedure TFM_BillEditBaseNew.actEditExecute(Sender: TObject);
var
  ErrMsg: string;
begin
  if cdsMaster.IsEmpty then Exit;
          //加锁
  if ST_DELETE then
  begin
    if cdsMaster.FindField('FBILLTYPEID') <> nil then
      sBillTypeID := cdsMaster.fieldbyname('FBILLTYPEID').AsString;
    if cdsMaster.FindField('CFBILLTYPEID') <> nil then
      sBillTypeID := cdsMaster.fieldbyname('CFBILLTYPEID').AsString;
    CliDM.AddLockToBill(cdsMaster.fieldbyname('FID').AsString, cdsMaster.fieldbyname('fnumber').AsString, sBillTypeID, UserInfo.Branch_ID, 1, ErrMsg);
    if Trim(ErrMsg) <> '' then
    begin
      ShowMsg(Handle, '单据加锁失败:' + ErrMsg, []);
      Abort;
    end;
    cdsMaster.Edit;
    cdsDetail.Edit;
    BillInfo.IsNew := False;
    BillInfo.IsEdit := True;
    actEdit.Enabled := False;
    actSaveBill.Enabled := True;
    actSetBillStatus.Execute;
    CliDM.ClientUserLog(Self.Caption, '单据修改', '单号:' + BillNumber);
  end;
end;

procedure TFM_BillEditBaseNew.actAuditExecute(Sender: TObject);
var ErrMsg, sBillTypeID: string;
begin
  if BillInfo.IsAduit then
  begin
    ShowMsg(Handle, '当前单据已经审核！', []);
    Abort;
  end;
  if cdsDetail.IsEmpty then
  begin
    ShowMsg(Handle, '没有商品明细！', []);
    Abort;
  end;

  if cdsDetail.State in db.dsEditModes then
    cdsDetail.Post;

  Gio.AddShow(Self.Caption + ' 单号：【' + BillNumber + '】开始审核 ');
  try
    dbgList2.BeginUpdate;
    Screen.Cursor := crHourGlass;
    BillInfo.IsEdit := False;
    BillInfo.IsNew := False;
    //检查重复值  许志详 20120225
    if not checkKeyFieldList(keyFieldList, ErrMsg) then
    begin
      ShowMsg(Handle, ErrMsg, []);
      Exit;
    end;
    if not ST_Save then
    begin
      Gio.AddShow(Self.Caption + ' 单号：【' + BillNumber + '】审核审核前保存单据失败！ ');
      Exit; //保存提交单据
    end;
    actGetBillStatus.Execute; //审核前获取单据状态
    if CliDM.CHKPeriodClose(FormatDateTime('yyyy-mm-dd', cdsMaster.FieldByName('fbizdate').AsDateTime)) then //owen
    begin
      ShowMsg(Handle, '业务日期【' + FormatDateTime('yyyy-mm-dd', cdsMaster.FieldByName('fbizdate').AsDateTime) + '】所在的会计期间已经关账,请修改业务日期', []);
      Abort;
    end;
    /////owen判断是否结账
    if CliDM.CHKPeriodCHKOUT(FormatDateTime('yyyy-mm-dd', cdsMaster.FieldByName('fbizdate').AsDateTime)) then
    begin
      ShowMsg(Handle, '业务日期【' + FormatDateTime('yyyy-mm-dd', cdsMaster.FieldByName('fbizdate').AsDateTime) + '】所在的会计期间已经结账,请修改业务日期', []);
      Abort;
    end;

    if not CliDM.Pub_BillAudit(UserInfo.LoginUser_FID, sIniBillFlag, BillIDValue, cdsMaster.fieldbyname('fnumber').AsString, sSPPack, ErrMsg) then //审核
    begin
      ShowMsg(Handle, ErrMsg, []);
      Abort;
    end
    else //审核成功！
    begin
      BillInfo.IsAduit := True;
      if ErrMsg <> '' then ShowMsg(Handle, ErrMsg, []);
      cdsMaster.Edit;
      cdsMaster.FieldByName('FAUDITORID').AsString := UserInfo.LoginUser_FID;
      cdsMaster.FieldByName('FAUDITTIME').AsDateTime := CliDM.Get_ServerTime;
      cdsMaster.FieldByName('FBASESTATUS').AsInteger := 4;
      cdsMaster.Post;

      actSetBillStatus.Execute; //审核成功,设置单据状态
          //解锁
      if cdsMaster.FindField('FBILLTYPEID') <> nil then
        sBillTypeID := cdsMaster.fieldbyname('FBILLTYPEID').AsString;
      if cdsMaster.FindField('CFBILLTYPEID') <> nil then
        sBillTypeID := cdsMaster.fieldbyname('CFBILLTYPEID').AsString;
      CliDM.AddLockToBill(cdsMaster.fieldbyname('FID').AsString, cdsMaster.fieldbyname('fnumber').AsString, sBillTypeID, UserInfo.Branch_ID, 2, ErrMsg);
      if Trim(ErrMsg) <> '' then
      begin
        ShowMsg(Handle, '单据解锁失败:' + ErrMsg, []);
        Abort;
      end;
    end;
    CliDM.ClientUserLog(Self.Caption, '单据审核', '单号:' + BillNumber);
  finally
    Screen.Cursor := crDefault;
    dbgList2.EndUpdate;
  end;
  pnlTop.Height := pnlTop.Height - 60;
  Gio.AddShow(Self.Caption + ' 单号：【' + BillNumber + '】审核完成！ ');
end;

procedure TFM_BillEditBaseNew.actUnAuditExecute(Sender: TObject);
var ErrMsg, sBillTypeID: string;
begin
  if not BillInfo.IsAduit then
  begin
    ShowMsg(Handle, '当前单据是新单，不能反审核！', []);
    Abort;
  end;
  Gio.AddShow(Self.Caption + ' 单号：【' + BillNumber + '】开始反审核 ');
  if CliDM.CHKPeriodClose(FormatDateTime('yyyy-mm-dd', cdsMaster.FieldByName('fbizdate').AsDateTime)) then //owen 判断是否关账
  begin
    ShowMsg(Handle, '业务日期【' + FormatDateTime('yyyy-mm-dd', cdsMaster.FieldByName('fbizdate').AsDateTime) + '】所在的会计期间已经关账,不允许再反审核单据!', []);
    Abort;
  end;
  /////owen判断是否结账
  if CliDM.CHKPeriodCHKOUT(FormatDateTime('yyyy-mm-dd', cdsMaster.FieldByName('fbizdate').AsDateTime)) then
  begin
    ShowMsg(Handle, '业务日期【' + FormatDateTime('yyyy-mm-dd', cdsMaster.FieldByName('fbizdate').AsDateTime) + '】所在的会计期间已经结账,不允许再反审核单据!', []);
    Abort;
  end;

  try
    dbgList2.BeginUpdate;
    Screen.Cursor := crHourGlass;
    if not CliDM.Pub_BillUnAudit(UserInfo.LoginUser_FID, sIniBillFlag, BillIDValue, sSPPack, ErrMsg) then //反审核
    begin
      ShowMsg(Handle, ErrMsg, []);
      Abort;
    end
    else
    begin
      BillInfo.IsAduit := False;
      BillInfo.IsEdit := False;
      BillInfo.IsNew := False;
      Open_Bill('FID', BillIDValue);
      actSetBillStatus.Execute; //反审核成功,设置单据状态
      ShowMsg(Handle, '反审核成功！', []);
      if cdsMaster.FindField('FBILLTYPEID') <> nil then
        sBillTypeID := cdsMaster.fieldbyname('FBILLTYPEID').AsString;
      if cdsMaster.FindField('CFBILLTYPEID') <> nil then
        sBillTypeID := cdsMaster.fieldbyname('CFBILLTYPEID').AsString;
      CliDM.AddLockToBill(cdsMaster.fieldbyname('FID').AsString, cdsMaster.fieldbyname('fnumber').AsString, sBillTypeID, UserInfo.Branch_ID, 1, ErrMsg);
      if Trim(ErrMsg) <> '' then
      begin
        ShowMsg(Handle, '单据加锁失败:' + ErrMsg, []);
        Abort;
      end;
    end;
//    CliDM.ClientUserLog(Self.Caption, '单据反审核', '单号:' + BillNumber);
  finally
    Screen.Cursor := crDefault;
    dbgList2.EndUpdate;
  end;
  Gio.AddShow(Self.Caption + ' 单号：【' + BillNumber + '】反审核完成！ ');
end;

procedure TFM_BillEditBaseNew.btn_PrintClick(Sender: TObject);
var FBillFID, MaterialFID: TStringList;
begin
  inherited;
  try
    FBillFID := TStringList.Create;
    MaterialFID := TStringList.Create;
    FBillFID.Add(cdsMaster.fieldbyname('FID').AsString);
    MaterialFID.Add('');
    I3_SCM_Print(self.sBillTypeID, FBillFID, MaterialFID);
  finally
    FBillFID.Free;
    MaterialFID.Free;
  end;
end;

procedure TFM_BillEditBaseNew.actImportExcelExecute(Sender: TObject);
begin
  if not (BillInfo.IsNew) then
  begin
    ShowMsg(Handle, '只有新单才能导入！', []);
    abort;
  end;
  ImportXLS_Frm(Self.Bill_Sign, BillIDValue, cdsDetail); //弹出导入界面，导入数据
end;

procedure TFM_BillEditBaseNew.actToExcelExecute(Sender: TObject);
begin
  if SaveDg.Execute then
  begin
    if CliDM.ExportToExcel_cxgrid(SaveDg.FileName, cdsDetail, dbgList2) then
      ShowMsg(Handle, '导出成功！', []);
  end;
end;

procedure TFM_BillEditBaseNew.dxBarButton11Click(Sender: TObject);
var CFMATERIALID: string;
  grid: TcxGridDBTableView;
begin
  grid := dbgList2;

  if grid.DataController.DataSource.DataSet.IsEmpty then
  begin
    ShowMsg(Handle, '没有要查询的商品！', []);
    Abort;
  end;
  with grid.DataController.DataSource do
  begin
    if is_fieldByName(TClientDataSet(DataSet), 'CFMATERIALID') then
      CFMATERIALID := DataSet.FieldByName('CFMATERIALID').AsString
    else
      if is_fieldByName(TClientDataSet(DataSet), 'FMATERIALID') then
        CFMATERIALID := DataSet.FieldByName('FMATERIALID').AsString;
  end;
  getMaterialinfo(CFMATERIALID);
end;

procedure TFM_BillEditBaseNew.dxBarButton12Click(Sender: TObject);
var CFMATERIALID, MaterNumber, MaterName: string;
  grid: TcxGridDBTableView;
begin
  grid := dbgList2;

  if grid.DataController.DataSource.DataSet.IsEmpty then
  begin
    ShowMsg(Handle, '没有要查询的商品！', []);
    Abort;
  end;
  with grid.DataController.DataSource do
  begin
    if is_fieldByName(TClientDataSet(DataSet), 'CFMATERIALID') then
      CFMATERIALID := DataSet.FieldByName('CFMATERIALID').AsString
    else
      if is_fieldByName(TClientDataSet(DataSet), 'FMATERIALID') then
        CFMATERIALID := DataSet.FieldByName('FMATERIALID').AsString;

    if is_fieldByName(TClientDataSet(DataSet), 'fMaterialNumber') then
      MaterNumber := DataSet.FieldByName('fMaterialNumber').AsString
    else
      if is_fieldByName(TClientDataSet(DataSet), 'cfMaterialNumber') then
        MaterNumber := DataSet.FieldByName('cfMaterialNumber').AsString;

    if is_fieldByName(TClientDataSet(DataSet), 'fMaterialName') then
      MaterName := DataSet.FieldByName('fMaterialName').AsString
    else
      if is_fieldByName(TClientDataSet(DataSet), 'cfMaterialName') then
        MaterName := DataSet.FieldByName('cfMaterialName').AsString;
  end;
  ShowstorageQry(UserInfo.Warehouse_FID, CFMATERIALID, MaterNumber, MaterName); //查询库存
end;

procedure TFM_BillEditBaseNew.actFirstExecute(Sender: TObject);
begin
  inherited;
  if FOpenPar.ListDataset = nil then Exit;
  if not FOpenPar.ListDataset.Bof then
  begin
    FOpenPar.ListDataset.First;
    Open_Bill('FID', FOpenPar.ListDataset.fieldbyname('fid').AsString);
  end;
  actSetBillStatus.Execute;
  actGetBillStatus.Execute;
end;

procedure TFM_BillEditBaseNew.actPriorExecute(Sender: TObject);
begin
  inherited;
  if FOpenPar.ListDataset = nil then Exit;
  if not FOpenPar.ListDataset.Bof then
  begin
    FOpenPar.ListDataset.Prior;
    Open_Bill('FID', FOpenPar.ListDataset.fieldbyname('fid').AsString);
  end;
  actSetBillStatus.Execute;
  actGetBillStatus.Execute;
end;

procedure TFM_BillEditBaseNew.actNextExecute(Sender: TObject);
begin
  inherited;
  if FOpenPar.ListDataset = nil then Exit;
  if not FOpenPar.ListDataset.Eof then
  begin
    FOpenPar.ListDataset.Next;
    Open_Bill('FID', FOpenPar.ListDataset.fieldbyname('fid').AsString);
  end;
  actSetBillStatus.Execute;
  actGetBillStatus.Execute;
end;

procedure TFM_BillEditBaseNew.actUpExecute(Sender: TObject);
begin
  inherited;
  CallUpDownQuery(cdsMaster.fieldbyname('FID').AsString, self.sBillTypeID, False);
end;

procedure TFM_BillEditBaseNew.actlastExecute(Sender: TObject);
begin
  inherited;
  if FOpenPar.ListDataset = nil then Exit;
  if not FOpenPar.ListDataset.Eof then
  begin
    FOpenPar.ListDataset.Last;
    Open_Bill('FID', FOpenPar.ListDataset.fieldbyname('fid').AsString);
  end;
  actSetBillStatus.Execute;
  actGetBillStatus.Execute;
end;

procedure TFM_BillEditBaseNew.dxBarbtnDownClick(Sender: TObject);
begin
  inherited;
  if not BillInfo.IsAduit then
  begin
    ShowMsg(Handle, '未审核的单据不能下查！', []);
    Abort;
  end;
  CallUpDownQuery(cdsMaster.fieldbyname('FID').AsString, self.sBillTypeID, True);
end;

procedure TFM_BillEditBaseNew.actQuitExecute(Sender: TObject);
var ACanClose: Boolean;
begin
  inherited;
  Close;
  if Self.Parent <> nil then
  PostMessage(Application.Handle,WM_I3Message,10005,0);
end;

procedure TFM_BillEditBaseNew.dxBarButton25Click(Sender: TObject);
var toFileName: string;
begin
  toFileName := ExtractFilePath(Application.ExeName) + 'help.chm';
  if not FileExists(toFileName) then
  begin
    ShowMsg(Handle, '没有找到帮助文件(help.chm)!', []);
    Exit;
  end;
  shellexecute(handle, 'open', pchar(toFileName), nil, nil, sw_shownormal);
end;

function TFM_BillEditBaseNew.FindSupplier: string;
var
  sql: string;
  gridTitle: array[0..1] of string;
begin
  Result := '';
  sql := ' select FID,fnumber,Fname_L2 from t_Bd_Supplier where FUsedStatus=1 ';
//  sql := sql+' ORDER BY FNUMBER';
  gridTitle[0] := 'fnumber,Fname_L2';
  gridTitle[1] := '供应商编号,供应商名称';

  with getDataBaseBySQLEx('供应商', '', sql, gridTitle[0], gridTitle[1]) do
  begin
    if not IsEmpty then
    begin
      if (cdsMaster.FindField('FSupplierName') <> nil) and (cdsMaster.State in [dsinsert, dsedit]) then
        cdsMaster.FieldByName('FSupplierName').AsString := FieldByName('Fname_L2').AsString;
      Result := FieldByName('FID').AsString;
    end;
  end;
end;

function TFM_BillEditBaseNew.FindMatertial: string;
var rst: string;
  sql, errmsg, showmsg, fmaterialid: string;
  gridTitle: array[0..1] of string;
begin
  Result := '';
  sql := ' select FID,fnumber,Fname_L2 from T_BD_Material where 1=1 ';
  gridTitle[0] := 'fnumber,Fname_L2';
  gridTitle[1] := '物料编号,物料名称';

  with getDataBaseBySQLEx('物料', '', sql, gridTitle[0], gridTitle[1]) do
  begin
    if not IsEmpty then
    begin
      rst := FieldByName('FID').AsString;
    end;
  end;
  try
    if rst <> '' then
    begin
      fmaterialid := rst;
    end;
    if trim(fmaterialid) = '' then Abort;

    sql := 'select a.fnumber,a.fname_l2,a.FBaseUnit,b.fname_l2 as FBaseUnitName from T_BD_MATERIAL a ' +
      'left outer join T_BD_MeasureUnit b on a.FBaseUnit=b.Fid where a.fid=''' + trim(fmaterialid) + '''';
    with CliDM.Client_QuerySQL(sql) do
    begin
      if not IsEmpty then
      begin
        if cdsDetail.FindField('FMaterialNumber') <> nil then
          cdsDetail.FieldByName('FMaterialNumber').AsString := trim(fieldbyname('fnumber').AsString);
        if cdsDetail.FindField('FMaterialName') <> nil then
          cdsDetail.FieldByName('FMaterialName').AsString := trim(fieldbyname('fname_l2').AsString);
        if cdsDetail.FindField('FUnitID') <> nil then
          cdsDetail.FieldByName('FUnitID').AsString := trim(fieldbyname('FBaseUnit').AsString);
        if cdsDetail.FindField('FUnitName') <> nil then
          cdsDetail.FieldByName('FUnitName').AsString := trim(fieldbyname('FBaseUnitName').AsString);
      end;
    end;
    GetCFLoc;
  finally
  end;
  Result := rst;
end;

procedure TFM_BillEditBaseNew.CalcFieldChange(Sender: TField);
begin
  if FCalcField <> '' then Exit;
  if (TField(Sender).FieldName = 'FQty') and (FCalcField = '') then //数量 变更
  begin
    FCalcField := 'FQty';
    with cdsDetail do
    begin
      //实际单价(不含税)=(100-折扣率%)/100*单价(不含税)
      FieldByName('FActualPrice').AsCurrency := (100 - FieldByName('FDiscountRate').AsCurrency) / 100.0 * FieldByName('FPrice').AsCurrency;
      //实际含税单价=(100-折扣率%)/100*含税单价
      FieldByName('FActualTaxPrice').AsCurrency := (100 - FieldByName('FDiscountRate').AsCurrency) / 100.0 * FieldByName('FTaxPrice').AsCurrency;
    //折扣额=含税单价*折扣率%/100*数量
      FieldByName('FDiscountAmount').AsCurrency := FieldByName('FTaxPrice').AsCurrency * FieldByName('FDiscountRate').AsCurrency / 100.0 *
        FieldByName('FQty').AsCurrency;
      //金额(不含税)=实际单价(不含税)*数量
      FieldByName('FAmount').AsCurrency := FieldByName('FActualPrice').AsCurrency * FieldByName('FQty').AsCurrency;
      //价税合计=实际含税单价*数量
      FieldByName('FTaxAmount').AsCurrency := FieldByName('FActualTaxPrice').AsCurrency * FieldByName('FQty').AsCurrency;
      //税额=价税合计-金额(不含税)
      FieldByName('FTax').AsCurrency := FieldByName('FTaxAmount').AsCurrency - FieldByName('FAmount').AsCurrency;
    end;
    FCalcField := '';
  end;

  if (TField(Sender).FieldName = 'FPrice') and (FCalcField = '') then //单价(不含税) 变更
  begin
    FCalcField := 'FPrice';
    with cdsDetail do
    begin
      //含税单价=（1+税率%/100)*单价(不含税)
      FieldByName('FTaxPrice').AsCurrency := (1 + FieldByName('FTaxRate').AsCurrency / 100.0) * FieldByName('FPrice').AsCurrency;
      //实际单价(不含税)=(100-折扣率%)/100*单价(不含税)
      FieldByName('FActualPrice').AsCurrency := (100 - FieldByName('FDiscountRate').AsCurrency) / 100.0 * FieldByName('FPrice').AsCurrency;
      //实际含税单价=(100-折扣率%)/100*含税单价
      FieldByName('FActualTaxPrice').AsCurrency := (100 - FieldByName('FDiscountRate').AsCurrency) / 100.0 * FieldByName('FTaxPrice').AsCurrency;
    //折扣额=含税单价*折扣率%/100*数量
      FieldByName('FDiscountAmount').AsCurrency := FieldByName('FTaxPrice').AsCurrency * FieldByName('FDiscountRate').AsCurrency / 100.0 *
        FieldByName('FQty').AsCurrency;
      //金额(不含税)=实际单价(不含税)*数量
      FieldByName('FAmount').AsCurrency := FieldByName('FActualPrice').AsCurrency * FieldByName('FQty').AsCurrency;
      //价税合计=实际含税单价*数量
      FieldByName('FTaxAmount').AsCurrency := FieldByName('FActualTaxPrice').AsCurrency * FieldByName('FQty').AsCurrency;
      //税额=价税合计-金额(不含税)
      FieldByName('FTax').AsCurrency := FieldByName('FTaxAmount').AsCurrency - FieldByName('FAmount').AsCurrency;
    end;
    FCalcField := '';
  end;

  if (TField(Sender).FieldName = 'FTaxPrice') and (FCalcField = '') then //含税单价 变更
  begin
    FCalcField := 'FTaxPrice';
    with cdsDetail do
    begin
      //单价(不含税)=含税单价/(1+税率%/100)
      FieldByName('FPrice').AsCurrency := FieldByName('FTaxPrice').AsCurrency / (1 + FieldByName('FTaxRate').AsCurrency / 100.0);
      //实际单价(不含税)=(100-折扣率%)/100*单价(不含税)
      FieldByName('FActualPrice').AsCurrency := (100 - FieldByName('FDiscountRate').AsCurrency) / 100.0 * FieldByName('FPrice').AsCurrency;
      //实际含税单价=(100-折扣率%)/100*含税单价
      FieldByName('FActualTaxPrice').AsCurrency := (100 - FieldByName('FDiscountRate').AsCurrency) / 100.0 * FieldByName('FTaxPrice').AsCurrency;
    //折扣额=含税单价*折扣率%/100*数量
      FieldByName('FDiscountAmount').AsCurrency := FieldByName('FTaxPrice').AsCurrency * FieldByName('FDiscountRate').AsCurrency / 100.0 *
        FieldByName('FQty').AsCurrency;
      //金额(不含税)=实际单价(不含税)*数量
      FieldByName('FAmount').AsCurrency := FieldByName('FActualPrice').AsCurrency * FieldByName('FQty').AsCurrency;
      //价税合计=实际含税单价*数量
      FieldByName('FTaxAmount').AsCurrency := FieldByName('FActualTaxPrice').AsCurrency * FieldByName('FQty').AsCurrency;
      //税额=价税合计-金额(不含税)
      FieldByName('FTax').AsCurrency := FieldByName('FTaxAmount').AsCurrency - FieldByName('FAmount').AsCurrency;
    end;
    FCalcField := '';
  end;
  if (TField(Sender).FieldName = 'FDiscountRate') and (FCalcField = '') then //折扣率% 变更
  begin
    FCalcField := 'FDiscountRate';
    with cdsDetail do
    begin
      //单价(不含税)=含税单价/(1+税率%/100)
      //FieldByName('FPrice').AsCurrency = FieldByName('FTaxPrice').AsCurrency/(1 + FieldByName('FTaxRate').AsCurrency / 100.0);
      //实际单价(不含税)=(100-折扣率%)/100*单价(不含税)
      FieldByName('FActualPrice').AsCurrency := (100 - FieldByName('FDiscountRate').AsCurrency) / 100.0 * FieldByName('FPrice').AsCurrency;
      //实际含税单价=(100-折扣率%)/100*含税单价
      FieldByName('FActualTaxPrice').AsCurrency := (100 - FieldByName('FDiscountRate').AsCurrency) / 100.0 * FieldByName('FTaxPrice').AsCurrency;
    //折扣额=含税单价*折扣率%/100*数量
      FieldByName('FDiscountAmount').AsCurrency := FieldByName('FTaxPrice').AsCurrency * FieldByName('FDiscountRate').AsCurrency / 100.0 *
        FieldByName('FQty').AsCurrency;
      //金额(不含税)=实际单价(不含税)*数量
      FieldByName('FAmount').AsCurrency := FieldByName('FActualPrice').AsCurrency * FieldByName('FQty').AsCurrency;
      //价税合计=实际含税单价*数量
      FieldByName('FTaxAmount').AsCurrency := FieldByName('FActualTaxPrice').AsCurrency * FieldByName('FQty').AsCurrency;
      //税额=价税合计-金额(不含税)
      FieldByName('FTax').AsCurrency := FieldByName('FTaxAmount').AsCurrency - FieldByName('FAmount').AsCurrency;
    end;
    FCalcField := '';
  end;
  if (TField(Sender).FieldName = 'FDiscountAmount') and (FCalcField = '') then //折扣额 变更
  begin
    FCalcField := 'FDiscountAmount';
    with cdsDetail do
    begin
      //折扣率%=折扣额/(含税单价*数量)*100
      FieldByName('FDiscountRate').AsCurrency := FieldByName('FDiscountAmount').AsCurrency / (FieldByName('FTaxPrice').AsCurrency *
        FieldByName('FQty').AsCurrency) * 100;
      //实际单价(不含税)=(100-折扣率%)/100*单价(不含税)
      FieldByName('FActualPrice').AsCurrency := (100 - FieldByName('FDiscountRate').AsCurrency) / 100.0 * FieldByName('FPrice').AsCurrency;
      //实际含税单价=(100-折扣率%)/100*含税单价
      FieldByName('FActualTaxPrice').AsCurrency := (100 - FieldByName('FDiscountRate').AsCurrency) / 100.0 * FieldByName('FTaxPrice').AsCurrency;
      //金额(不含税)=实际单价(不含税)*数量
      FieldByName('FAmount').AsCurrency := FieldByName('FActualPrice').AsCurrency * FieldByName('FQty').AsCurrency;
      //价税合计=实际含税单价*数量
      FieldByName('FTaxAmount').AsCurrency := FieldByName('FActualTaxPrice').AsCurrency * FieldByName('FQty').AsCurrency;
      //税额=价税合计-金额(不含税)
      FieldByName('FTax').AsCurrency := FieldByName('FTaxAmount').AsCurrency - FieldByName('FAmount').AsCurrency;
    end;
    FCalcField := '';
  end;

  if (TField(Sender).FieldName = 'FAmount') and (FCalcField = '') then //金额(不含税) 变更
  begin
    FCalcField := 'FAmount';
    with cdsDetail do
    begin
      //单价(不含税)=金额(不含税)/数量*100/(100-折扣率%)
      if FieldByName('FQty').AsCurrency <> 0 then
        FieldByName('FPrice').AsCurrency := FieldByName('FAmount').AsCurrency / FieldByName('FQty').AsCurrency * 100 / (100 - FieldByName('FDiscountRate').AsCurrency);
      //含税单价=（1+税率%/100)*单价(不含税)
      FieldByName('FTaxPrice').AsCurrency := (1 + FieldByName('FTaxRate').AsCurrency / 100.0) * FieldByName('FPrice').AsCurrency;
      //实际单价(不含税)=(100-折扣率%)/100*单价(不含税)
      FieldByName('FActualPrice').AsCurrency := (100 - FieldByName('FDiscountRate').AsCurrency) / 100.0 * FieldByName('FPrice').AsCurrency;
      //实际含税单价=(100-折扣率%)/100*含税单价
      FieldByName('FActualTaxPrice').AsCurrency := (100 - FieldByName('FDiscountRate').AsCurrency) / 100.0 * FieldByName('FTaxPrice').AsCurrency;
    //折扣额=含税单价*折扣率%/100*数量
      FieldByName('FDiscountAmount').AsCurrency := FieldByName('FTaxPrice').AsCurrency * FieldByName('FDiscountRate').AsCurrency / 100.0 *
        FieldByName('FQty').AsCurrency;
      //金额(不含税)=实际单价(不含税)*数量
      FieldByName('FAmount').AsCurrency := FieldByName('FActualPrice').AsCurrency * FieldByName('FQty').AsCurrency;
      //价税合计=实际含税单价*数量
      FieldByName('FTaxAmount').AsCurrency := FieldByName('FActualTaxPrice').AsCurrency * FieldByName('FQty').AsCurrency;
      //税额=价税合计-金额(不含税)
      FieldByName('FTax').AsCurrency := FieldByName('FTaxAmount').AsCurrency - FieldByName('FAmount').AsCurrency;
    end;
    FCalcField := '';
  end;

  if (TField(Sender).FieldName = 'FTaxRate') and (FCalcField = '') then //税率% 变更
  begin
    FCalcField := 'FTaxRate';
    with cdsDetail do
    begin
      //含税单价=（1+税率%/100)*单价(不含税)
      FieldByName('FTaxPrice').AsCurrency := (1 + FieldByName('FTaxRate').AsCurrency / 100.0) * FieldByName('FPrice').AsCurrency;
      //实际单价(不含税)=(100-折扣率%)/100*单价(不含税)
      FieldByName('FActualPrice').AsCurrency := (100 - FieldByName('FDiscountRate').AsCurrency) / 100.0 * FieldByName('FPrice').AsCurrency;
      //实际含税单价=(100-折扣率%)/100*含税单价
      FieldByName('FActualTaxPrice').AsCurrency := (100 - FieldByName('FDiscountRate').AsCurrency) / 100.0 * FieldByName('FTaxPrice').AsCurrency;
    //折扣额=含税单价*折扣率%/100*数量
      FieldByName('FDiscountAmount').AsCurrency := FieldByName('FTaxPrice').AsCurrency * FieldByName('FDiscountRate').AsCurrency / 100.0 *
        FieldByName('FQty').AsCurrency;
      //金额(不含税)=实际单价(不含税)*数量
      FieldByName('FAmount').AsCurrency := FieldByName('FActualPrice').AsCurrency * FieldByName('FQty').AsCurrency;
      //价税合计=实际含税单价*数量
      FieldByName('FTaxAmount').AsCurrency := FieldByName('FActualTaxPrice').AsCurrency * FieldByName('FQty').AsCurrency;
      //税额=价税合计-金额(不含税)
      FieldByName('FTax').AsCurrency := FieldByName('FTaxAmount').AsCurrency - FieldByName('FAmount').AsCurrency;
    end;
    FCalcField := '';
  end;
end;

procedure TFM_BillEditBaseNew.FormCreate(Sender: TObject);
begin
  FCalcField := '';
  keyFieldList := 'FID;FSeq';
  inherited;

end;

procedure TFM_BillEditBaseNew.SetDetailOnChangeField;
begin
  if cdsDetail.FindField('FQty') <> nil then
    cdsDetail.FindField('FQty').OnChange := CalcFieldChange;
  if cdsDetail.FindField('FPrice') <> nil then
    cdsDetail.FindField('FPrice').OnChange := CalcFieldChange;
  if cdsDetail.FindField('FTaxPrice') <> nil then
    cdsDetail.FindField('FTaxPrice').OnChange := CalcFieldChange;
  if cdsDetail.FindField('FDiscountRate') <> nil then
    cdsDetail.FindField('FDiscountRate').OnChange := CalcFieldChange;
  if cdsDetail.FindField('FDiscountAmount') <> nil then
    cdsDetail.FindField('FDiscountAmount').OnChange := CalcFieldChange;
  if cdsDetail.FindField('FAmount') <> nil then
    cdsDetail.FindField('FAmount').OnChange := CalcFieldChange;
  if cdsDetail.FindField('FTaxRate') <> nil then
    cdsDetail.FindField('FTaxRate').OnChange := CalcFieldChange;

end;

function TFM_BillEditBaseNew.FindTransactionType: string;
var
  sql: string;
  gridTitle: array[0..1] of string;
begin
  sql := ' select FID,FNumber,FName_L2 from T_SCM_TransactionType ' +
    'where fbilltypeid=''50957179-0105-1000-e000-015fc0a812fd463ED552'' and FRIType=10 and FStatus=1 ' +
    ' and FControlUnitID=''00000000-0000-0000-0000-000000000000CCE7AED4'' ';
  gridTitle[0] := 'fnumber,Fname_L2';
  gridTitle[1] := '事务编号,事务名称';
  Result := FindData('事务类型', sql, gridTitle[0], gridTitle[1], 'FID', 'FTransactionTypeName', 'Fname_L2');
end;

function TFM_BillEditBaseNew.FindData(ACaption, ASql, Fields,
  FieldCaptions, AResultField, AResultCaption,
  AResulCaptionField: string): string;
begin
  Result := '';
  with getDataBaseBySQLEx(ACaption, '', ASql, Fields, FieldCaptions) do
  begin
    if not IsEmpty then
    begin
      if (cdsMaster.FindField(AResultCaption) <> nil) and (cdsMaster.State in [dsinsert, dsedit]) then
        cdsMaster.FieldByName(AResultCaption).AsString := FieldByName(AResulCaptionField).AsString;
      if (cdsDetail.FindField(AResultCaption) <> nil) and (cdsDetail.State in [dsinsert, dsedit]) then
        cdsDetail.FieldByName(AResultCaption).AsString := FieldByName(AResulCaptionField).AsString;
      Result := FieldByName(AResultField).AsString;
    end;
  end;
end;

procedure TFM_BillEditBaseNew.btndelLineClick(Sender: TObject);
var
  entryId: string;
  i: integer;
begin
  inherited;
  if not BillInfo.IsNew and not BillInfo.IsEdit then Exit;
  if not cdsDetail.IsEmpty then
  begin
    cdsDetail.Edit;
    entryId := cdsDetail.FieldByName('FID').AsString;
    cdsDetail.Delete;
    while cdsDetail.Locate('FID', entryId, []) do
    begin
      dsDetail.Edit;
      cdsDetail.Delete;
    end;
  end;
  cdsDetail.First;
  i := 1;
  while not cdsDetail.Eof do
  begin
    if not (cdsDetail.State in db.dsEditModes) then
      cdsDetail.Edit;
    cdsDetail.FieldByName('FSeq').AsInteger := i;
    inc(i);
    cdsDetail.Next;
  end;
  cdsDetail.First;
end;

procedure TFM_BillEditBaseNew.cdsDetailBeforePost(DataSet: TDataSet);
var i: Integer;
  fieldName: string;
begin
  inherited;
  if cdsDetail_Save.Locate('FID', VarArrayOf([DataSet.FieldByName('FID').AsString]), []) then
    cdsDetail_Save.Edit
  else
    cdsDetail_Save.Append;
  for i := 0 to DataSet.FieldCount - 1 do
  begin
    fieldName := DataSet.Fields[i].FieldName;
    if cdsDetail_Save.FindField(fieldName) <> nil then
    begin
      cdsDetail_Save.FieldByName(fieldName).Value := DataSet.Fields[i].Value;
    end;
  end;
end;

procedure TFM_BillEditBaseNew.cdsDetailBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if not cdsDetail_Save.IsEmpty then
  begin
    if cdsDetail_Save.Locate('FID', VarArrayOf([DataSet.FieldByName('FID').AsString]), []) then
      cdsDetail_Save.Delete;
  end;
end;

procedure TFM_BillEditBaseNew.cdsMasterBeforePost(DataSet: TDataSet);
var i: Integer;
  fieldName: string;
begin
  inherited;
  if cdsMaster_Save.Locate('FID', VarArrayOf([DataSet.FieldByName('FID').AsString]), []) then
    cdsMaster_Save.Edit
  else
    cdsMaster_Save.Append;
  for i := 0 to DataSet.FieldCount - 1 do
  begin
    fieldName := DataSet.Fields[i].FieldName;
    if cdsMaster_Save.FindField(fieldName) <> nil then
    begin
      cdsMaster_Save.FieldByName(fieldName).Value := DataSet.Fields[i].Value;
    end;
  end;
end;

procedure TFM_BillEditBaseNew.cdsMasterBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if not cdsMaster_Save.IsEmpty then
  begin
    if cdsMaster_Save.Locate('FID', VarArrayOf([DataSet.FieldByName('FID').AsString]), []) then
      cdsMaster_Save.Delete;
  end;
end;

procedure TFM_BillEditBaseNew.cdsMasterBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  if BillInfo.IsAduit then
  begin
    ShowMsg(Self.Handle, '单据已审核,不允许修改!  ', []);
    Abort;
  end;
  BillInfo.IsChange := True;
end;

function TFM_BillEditBaseNew.FindWarehouse: string;
var
  sql: string;
  gridTitle: array[0..1] of string;
begin
  sql := ' select FID,FNumber,FName_L2 from T_DB_WAREHOUSE';
  gridTitle[0] := 'fnumber,Fname_L2';
  gridTitle[1] := '仓库编号,仓库名称';
  Result := FindData('仓库资料', sql, gridTitle[0], gridTitle[1], 'FID', 'FWarehouseName', 'Fname_L2');
  GetCFLoc;
end;

procedure TFM_BillEditBaseNew.cxdbColFMaterialNumberPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  if BillInfo.IsAduit then
  begin
    ShowMsg(Self.Handle, '单据已审核,不允许修改!  ', []);
    Abort;
  end;
  if not BillInfo.IsEdit and not BillInfo.IsNew then
  begin
    ShowMsg(Self.Handle, '单据不是编辑状态,请单击修改按钮!  ', []);
    Abort;
  end;
  if not (cdsDetail.State in [dsinsert, dsedit]) then
    cdsDetail.Edit;
  cdsDetail.FieldByName('FMaterialID').AsString := FindMatertial;
end;

procedure TFM_BillEditBaseNew.cxdbColFWarehouseNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  if BillInfo.IsAduit then
  begin
    ShowMsg(Self.Handle, '单据已审核,不允许修改!  ', []);
    Abort;
  end;
  if not BillInfo.IsEdit and not BillInfo.IsNew then
  begin
    ShowMsg(Self.Handle, '单据不是编辑状态,请单击修改按钮!  ', []);
    Abort;
  end;
  if not (cdsDetail.State in [dsinsert, dsedit]) then
    cdsDetail.Edit;
  cdsDetail.FieldByName('FWarehouseID').AsString := FindWarehouse;
end;

procedure TFM_BillEditBaseNew.GetCFLoc;
var sql: string;
begin
  if (cdsDetail.FindField('FMaterialID') <> nil) and (cdsDetail.FindField('FWarehouseID') <> nil) then
  begin
    if (cdsDetail.FieldByName('FMaterialID').asstring <> '') and (cdsDetail.FieldByName('FWarehouseID').asstring <> '') then
    begin
      sql := 'select CFLoc from CT_MS_MaterialLoc a ' +
        ' left join T_BD_MaterialInventory b on b.fid=a.FParentID ' +
        ' where b.FMaterialID=' + QuotedStr(cdsDetail.FieldByName('FMaterialID').asstring) +
        ' and b.FOrgUnit=' + QuotedStr(UserInfo.Branch_ID) +
        ' and CFBmwLoc=(select FNumber from  T_DB_WAREHOUSE c where c.FID=' + QuotedStr(cdsDetail.FieldByName('FWarehouseID').asstring) + ')';
      with CliDM.Client_QuerySQL(sql) do
      begin
        if not IsEmpty then
          if cdsDetail.FindField('CFLoc') <> nil then
            cdsDetail.FieldByName('CFLoc').AsString := trim(fieldbyname('CFLoc').AsString);
      end;
    end;
  end;
end;

procedure TFM_BillEditBaseNew.cdsDetailNewRecord(DataSet: TDataSet);
begin
  inherited;
  if DataSet.FindField('FSEQ') <> nil then
    DataSet.FieldByName('FSEQ').AsInteger := DataSet.RecordCount + 1;
end;

procedure TFM_BillEditBaseNew.btnAppendLineClick(Sender: TObject);
begin
  inherited;
  if not BillInfo.IsNew and not BillInfo.IsEdit then Exit;
  if not (cdsDetail.State in [dsinsert, dsedit]) then
    cdsDetail.Append;
end;

function TFM_BillEditBaseNew.ST_DELETE: Boolean;
var SQL_1, SQL_2, SQL_3, ErrMsg, FID: string;
begin
  Result := True;
  if BillInfo.IsAduit then
  begin
    ShowMsg(Self.Handle, '单据已审核,不能删除', []);
    Result := False;
    Abort;
  end;
  if MessageBox(Handle, PChar('确认删除当前单据数据吗？'), '提示', MB_YESNO) = IDNO then
  begin
    Result := False;
    Abort;
  end;
  FID := cdsMaster.fieldbyname('FID').AsString;
  SQL_1 := 'delete from ' + BillTable + ' where fid=' + Quotedstr(FID);
  SQL_2 := 'delete from ' + BillEntryTable + ' where FPARENTID=' + Quotedstr(FID);
  if not CliDM.E_ExecSQLArrays(SQL_1, SQL_2, '', '', '', '', '', '', ErrMsg) then
  begin
    ShowMsg(Self.Handle, '单据删除失败' + ErrMsg, []);
    Abort;
  end;
end;

end.

