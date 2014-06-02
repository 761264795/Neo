unit Frm_PurInWarehsBill;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Frm_BillEditBaseNew, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxGraphics, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  dxSkinsdxBarPainter, DBClient, dxBar, cxClasses, ActnList, ImgList,
  Menus, cxGridLevel, cxControls, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxDropDownEdit,
  cxImageComboBox, cxDBEdit, ComCtrls, ToolWin, cxContainer, cxTextEdit,
  cxMaskEdit, cxCalendar, dxGDIPlusClasses, ExtCtrls, StdCtrls, cxPC, Pub_Fun,
  cxButtonEdit, cxLabel, cxMemo, DateUtils,uDrpHelperClase;

type
  TFM_PurInWarehsBill = class(TFM_BillEditBaseNew)
    dbedtbtnFSupplierName: TcxDBButtonEdit;
    lbl7: TLabel;
    bvl10: TBevel;
    dbedtbtnFBizTypeName: TcxDBButtonEdit;
    lbl8: TLabel;
    bvl11: TBevel;
    dbedtbtnFTransactionTypeName: TcxDBButtonEdit;
    lbl9: TLabel;
    bvl12: TBevel;
    dbedtbtnFStorageOrgUnitName: TcxDBButtonEdit;
    lbl10: TLabel;
    bvl13: TBevel;
    dbedtbtnFCurrencyName: TcxDBButtonEdit;
    lbl11: TLabel;
    bvl14: TBevel;
    dbedtbtnFExchangeRate: TcxDBButtonEdit;
    lbl12: TLabel;
    bvl15: TBevel;
    FDescription: TcxDBMemo;
    cxLabel2: TcxLabel;
    bvl16: TBevel;
    procedure FormCreate(Sender: TObject);
    procedure dbedtbtn1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure dbedtbtn3PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cdsMasterNewRecord(DataSet: TDataSet);
    procedure cdsMasterBeforePost(DataSet: TDataSet);
    procedure cdsDetailNewRecord(DataSet: TDataSet);
    procedure cdsDetailBeforePost(DataSet: TDataSet);
    procedure cxdbColFMaterialNumberPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxdbColFWarehouseNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    { Private declarations }
  public
    procedure Open_Bill(KeyFields: string; KeyValues: string); override;
    function ST_Save: Boolean; override;
    function Chk_Data: Boolean;
  end;

var
  FM_PurInWarehsBill: TFM_PurInWarehsBill;
function EditPurInWarehsBill_Frm(KeyValues: string): Boolean; //打开采购单开单界面
implementation

uses FrmCliDM;

{$R *.dfm}

function EditPurInWarehsBill_Frm(KeyValues: string): Boolean; //打开采购申请单开单界面
begin
  Result := True;
  if FM_PurInWarehsBill <> nil then
  begin
    Gio.AddShow('补货申请单已经存在 - 开始');
    if FM_PurInWarehsBill.Showing then
    else FM_PurInWarehsBill.Show;
    FM_PurInWarehsBill.SetFocus;
    Exit;
  end
  else
  begin
    Gio.AddShow('采购单单开始创建');
    try
      Application.CreateForm(TFM_PurInWarehsBill, FM_PurInWarehsBill);
      FM_PurInWarehsBill.Open_Bill('FID', KeyValues);
      FM_PurInWarehsBill.Show;
      if (FM_PurInWarehsBill <> nil) and (FM_PurInWarehsBill.Visible) then
        FM_PurInWarehsBill.SetFocus;
    except
      Gio.AddShow('采购单创建出错，释放窗体');
      FM_PurInWarehsBill := nil;
      FM_PurInWarehsBill.Free;
    end;
  end;
end;

{ TFM_PurInWarehsBill }

procedure TFM_PurInWarehsBill.Open_Bill(KeyFields, KeyValues: string);
var OpenTables: array[0..3] of string;
  _cds: array[0..3] of TClientDataSet;
  ErrMsg, FBIZTYPEID: string;
  strsql: string;
begin
  dbimgcmbFBaseStatus.Style.Color := cxBIZDATE.Style.Color;
  UserInfo.T_IM_PurInWarehsBill := '783061E3';
  UserInfo.T_IM_PurInWarehsEntry := '8E088616';

  if FOpenPar=nil then
  begin
    FOpenPar := TEditFormPar.Create;
    FOpenPar.BillFID := KeyFields;
    FOpenPar.ListDataset := cdsList;
    CliDM.OpenSQL(cdsList,' select * from T_IM_PurInWarehsBill where FID=' + quotedstr(KeyValues),ErrMsg);
  end;
  BillTable := 'T_IM_PurInWarehsBill';
  BillEntryTable :='T_IM_PurInWarehsEntry';
  if KeyValues = '' then
    strsql := ' select * from T_IM_PurInWarehsBill where 1=2'
  else
    strsql := ' select * from T_IM_PurInWarehsBill where FID=' + quotedstr(KeyValues);
  OpenTables[0] := strsql;

  strsql := 'select A.*,B.FName_L2 as FSupplierName,C.FName_L2 as FBizTypeName,D.FName_L2 as FTransactionTypeName,' +
    ' E.FName_L2 as FStorageOrgUnitName,G.FName_L2 as FCurrencyName,H.FName_L2 as FCreatorName,I.FName_L2 as FModifierName,J.FName_L2 as FAuditorName ' +
    ' from T_IM_PurInWarehsBill A left outer join T_BD_Supplier B on A.FSupplierID=B.FID' +
    ' left outer join T_SCM_BizType C on A.FBizTypeID=C.FID' +
    ' left outer join T_SCM_TransactionType D on A.FTransactionTypeID=D.FID' +
    ' left outer join T_ORG_Storage E on A.FStorageOrgUnitID=E.FID' +
    ' left outer join T_BD_Currency G on A.FCurrencyID=G.FID '+
    ' left outer join T_PM_User H on A.FCreatorID=H.FID '+
    ' left outer join T_PM_User I on A.FModifierID=I.FID '+
    ' left outer join T_PM_User J on A.FAuditorID=J.FID ';
  if KeyValues = '' then
    strsql := strsql + ' where 1=2'
  else
    strsql := strsql + ' where A.FID=' + quotedstr(KeyValues);
  OpenTables[1] := strsql;
  if KeyValues = '' then
  strsql := 'select * from T_IM_PurInWarehsEntry where 1=2'
  else                                                     
  strsql := 'select * from T_IM_PurInWarehsEntry where FParentID=' + quotedstr(KeyValues);
  OpenTables[2] := strsql;

  strsql := 'select A.*,B.FName_L2 as FMaterialName,B.FNumber as FMaterialNumber,' +
    'C.FName_L2 as FWarehouseName ' +
    ' from T_IM_PurInWarehsEntry A left outer join T_BD_Material B on ' +
    ' A.FMaterialID=B.FID left outer join T_DB_WAREHOUSE C on A.FWarehouseID =C.FID ';
  if KeyValues = '' then
    strsql := strsql +' where 1=2'
  else
    strsql := strsql +' where A.FParentID=' + quotedstr(KeyValues);
  OpenTables[3] := strsql;

  _cds[0] := cdsMaster_Save;
  _cds[1] := cdsMaster;
  _cds[2] := cdsDetail_Save;
  _cds[3] := cdsDetail;
  CliDM.OpenSQL(cdsMaster_Save,OpenTables[0],ErrMsg);
  CliDM.OpenSQL(cdsMaster,OpenTables[1],ErrMsg);
  CliDM.OpenSQL(cdsDetail_Save,OpenTables[2],ErrMsg);
  CliDM.OpenSQL(cdsDetail,OpenTables[3],ErrMsg);
  {
  try
    if not CliDM.Get_OpenClients(KeyValues, _cds, OpenTables, ErrMsg) then
    begin
      ShowError(Handle, ErrMsg, []);
      Abort;
    end;
  except
    on E: Exception do
    begin
      ShowError(Handle, Self.Bill_Sign + '打开编辑数据报错：' + E.Message, []);
      Abort;
    end;
  end;
  }
  if cdsMaster.FindField('FID') <> nil then
    cxFNumber.DataBinding.DataField := 'FID';
  if cdsMaster.FindField('FBIZDATE') <> nil then
    cxBIZDATE.DataBinding.DataField := 'FBIZDATE';
  if cdsMaster.FindField('FBaseStatus') <> nil then
    dbimgcmbFBaseStatus.DataBinding.DataField := 'FBaseStatus';

  //新单初始化赋值
  if KeyValues = '' then
  begin
    BillInfo.IsEdit := True;
    try
      with cdsMaster do
      begin
        Append;
      end;
    except
      on E: Exception do
      begin
        ShowError(Handle, ErrMsg + E.Message, []);
      end;
    end;
  end
  else
  begin
    BillInfo.IsEdit := True;
    if not (cdsMaster.State in db.dsEditModes) then cdsMaster.Edit;
    cdsMaster.Post;

    cdsDetail.First;
    while not cdsDetail.Eof do
    begin
      if not (cdsDetail.State in db.dsEditModes) then cdsDetail.Edit;
      cdsDetail.Post;
      cdsDetail.Next;
    end;
    cdsDetail.First;

    BillInfo.IsEdit := False;
  end;

  inherited;
end;

procedure TFM_PurInWarehsBill.FormCreate(Sender: TObject);
begin
  inherited;
  Gio.AddShow('采购单单开始创建');
  Open_Bill('FID', '');
end;

procedure TFM_PurInWarehsBill.dbedtbtn1PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  if not BillInfo.IsNew and not BillInfo.IsEdit then Exit;
  cdsMaster.FieldByName('FSupplierID').AsString := FindSupplier;
end;

procedure TFM_PurInWarehsBill.dbedtbtn3PropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  if not BillInfo.IsNew and not BillInfo.IsEdit then Exit;
  cdsMaster.FieldByName('FTransactionTypeID').AsString := FindTransactionType;
end;

procedure TFM_PurInWarehsBill.cdsMasterNewRecord(DataSet: TDataSet);
begin
  inherited;
  with DataSet do
  begin
    FieldByName('FCREATETIME').AsDateTime := CliDM.Get_ServerTime;
    FieldByName('FNUMBER').AsString := ''; //CliDM.GetBillNo('B',UserInfo.WareHouser_Sign,UserInfo.MachineCode);
    FieldByName('FBIZDATE').AsDateTime := CliDM.Get_ServerTime;
    FieldByName('FBizTypeID').AsString := 'd8e80652-0106-1000-e000-04c5c0a812202407435C';
    FieldByName('FBizTypeName').AsString := '110普通采购';

    FieldByName('FTransactionTypeID').AsString := 'DawAAAAPoACwCNyn'; //实际数据库中不是'zfcAAAADawCwCNyn';
    FieldByName('FTransactionTypeName').AsString := '普通采购入库';
    FieldByName('FStorageOrgUnitID').AsString := UserInfo.Branch_ID;
    FieldByName('FStorageOrgUnitName').AsString := UserInfo.Branch_Name;
    FieldByName('FCurrencyID').AsString := 'dfd38d11-00fd-1000-e000-1ebdc0a8100dDEB58FDC';
    FieldByName('FCurrencyName').AsString := '人民币';
    FieldByName('FExchangeRate').AsString := '1';
    FieldByName('FReceiptAmount').AsString := '0';
    FieldByName('FPaymentTypeID').AsString := '2fa35444-5a23-43fb-99ee-6d4fa5f260da6BCA0AB5'; //表T_BD_PaymentType
    FieldByName('FConvertMode').AsString := '0';
    FieldByName('FIsSysBill').AsString := '0';
    FieldByName('FIsCentralBalance').AsString := '0';
    FieldByName('FTotalLocalAmount').AsString := '0';
    FieldByName('FPurchaseType').AsString := '0';
    FieldByName('FIsInTax').AsString := '1';
    FieldByName('FIsPriceInTax').AsString := '1';
    FieldByName('FDischargeType').AsString := '0';
    FieldByName('FIsGenBizAP').AsString := '0';
    FieldByName('FSplitNumCount').AsString := '0';
    FieldByName('FBillRelationOption').AsString := '0';
    FieldByName('FAdminOrgUnitID').Value := Null;
    FieldByName('FStockerID').Value := Null;
    FieldByName('FVoucherID').Value := Null;
    FieldByName('FTotalQty').AsString := '0';
    FieldByName('FTotalAmount').AsString := '0';
    FieldByName('FFiVouchered').AsString := '0';
    FieldByName('FTotalStandardCost').AsString := '0';
    FieldByName('FTotalActualCost').AsString := '0';
    FieldByName('FIsReversed').AsString := '0';
    FieldByName('FIsInitBill').AsString := '0';
    FieldByName('FMonth').AsString := FormatDateTime('YYYYMM', FieldByName('FBIZDATE').AsDateTime);
    FieldByName('FDay').AsString := FormatDateTime('YYYYMMDD', FieldByName('FBIZDATE').AsDateTime);
    FieldByName('FCostCenterOrgUnitID').Value := Null;
    FieldByName('FBaseStatus').AsInteger := 4; //保存状态

    FieldByName('FSourceBillTypeID').Value := Null;
    FieldByName('FBillTypeID').AsString := '50957179-0105-1000-e000-015fc0a812fd463ED552'; //表T_SCM_BillType
    FieldByName('FYear').AsString := FormatDateTime('YYYY', FieldByName('FBIZDATE').AsDateTime);
    FieldByName('FPeriod').AsInteger := MonthOf(FieldByName('FBIZDATE').AsDateTime);
    FieldByName('FHandlerID').Value := Null;
    FieldByName('FHasEffected').AsString := '0';
    FieldByName('FSourceBillID').Value := Null;
    FieldByName('FSourceFunction').Value := Null;

    FieldByName('FCreatorID').AsString := UserInfo.LoginUser_FID;
    FieldByName('FCreatorName').AsString := UserInfo.LoginUser_Name;
    FieldByName('FCreateTime').AsDateTime := CliDM.Get_ServerTime;

    FieldByName('FLastUpdateUserID').AsString := UserInfo.LoginUser_FID;
    FieldByName('FLastUpdateTime').AsDateTime := CliDM.Get_ServerTime;
    FieldByName('FMODIFIERID').AsString := UserInfo.LoginUser_FID;
    FieldByName('FModifierName').AsString := UserInfo.LoginUser_Name;

    FieldByName('FMODIFICATIONTIME').AsDateTime := CliDM.Get_ServerTime;
    FieldByName('FCONTROLUNITID').AsString := UserInfo.FCONTROLUNITID; //控制单元，从服务器获取
    FBill_FID := CliDM.GetEASSID(UserInfo.T_IM_PurInWarehsBill);
    FieldByName('FID').AsString := FBill_FID;
  end;
end;

procedure TFM_PurInWarehsBill.cdsMasterBeforePost(DataSet: TDataSet);
begin
  with DataSet do
  begin
    FieldByName('FMonth').AsString := FormatDateTime('YYYYMM', FieldByName('FBIZDATE').AsDateTime);
    FieldByName('FDay').AsString := FormatDateTime('YYYYMMDD', FieldByName('FBIZDATE').AsDateTime);
    FieldByName('FYear').AsString := FormatDateTime('YYYY', FieldByName('FBIZDATE').AsDateTime);
    FieldByName('FPeriod').AsInteger := MonthOf(FieldByName('FBIZDATE').AsDateTime);
    FieldByName('FLastUpdateUserID').AsString := UserInfo.LoginUser_FID;
    FieldByName('FLastUpdateTime').AsDateTime := CliDM.Get_ServerTime;
    FieldByName('FMODIFIERID').AsString := UserInfo.LoginUser_FID;
    FieldByName('FMODIFICATIONTIME').AsDateTime := CliDM.Get_ServerTime;
  end;
  inherited;
end;

procedure TFM_PurInWarehsBill.cdsDetailNewRecord(DataSet: TDataSet);
begin
  inherited;
  with DataSet do
  begin
    FieldByName('FParentID').asstring := FBill_FID;
    FieldByName('FWrittenOffQty').asstring := '0';
    FieldByName('FWrittenOffAmount').asstring := '0';
    FieldByName('FReceiveAmount').asstring := '0'; //累计收款金额
    FieldByName('FPurOrderNumber').asstring := '*' + cdsMaster.FieldByName('FNumber').asstring; //核心单据号	*+采购入库单号
    FieldByName('FPurOrderEntrySeq').asstring := '0'; //核心单据行行号	序号
    FieldByName('FDrewQty').asstring := '0'; //已开票数量
    FieldByName('FImputedCost').asstring := '0'; //应计费用
    FieldByName('FWrittenOffBaseQty').asstring := '0'; //已核销基本数量
    FieldByName('FUnWriteOffBaseQty').asstring := '0'; //未核销基本数量
    FieldByName('FPurOrderID').asstring := 'Px8VDyELTE6X7WbVc+QkUzFxv60='; //核心单据ID
    FieldByName('FPurOrderEntryID').asstring := ''; //核心单据行ID
    FieldByName('FCoreBillTypeID').asstring := '510b6503-0105-1000-e000-010bc0a812fd463ED552'; //核心单据类型
    FieldByName('FOrderPrice').asstring := '0'; //订单单价
    FieldByName('FPurchaseOrgUnitID').asstring := UserInfo.Branch_ID; //采购组织	当前组织id
    FieldByName('FPurchaseGroupID').Value := null; //采购组	NULL
    FieldByName('FPurchasePersonID').Value := null; //采购员	NULL
    FieldByName('FDrewBaseQty').asstring := '0'; //已开票基本数量	0
    FieldByName('FTotalMoveQty').asstring := '0'; //累计调拨数量	0
    FieldByName('FIsRequestToReceived').asstring := '0'; //申请组织是否等于收货组织	0
    FieldByName('FIsFullWriteOff').asstring := '0'; //是否完全核销	0
    FieldByName('FCanDirectReqQty').asstring := '0'; //可直拨数量	0
    FieldByName('FCanDirectReqBaseQty').asstring := '0'; //可直拨基本数量	0
    FieldByName('FBalanceSupplierID').asstring := cdsMaster.FieldByName('FSupplierID').asstring; //结算供应商	表头供应商id
    FieldByName('FIsCenterBalance').asstring := '0'; //集中结算	0
    FieldByName('FIsBetweenCompanySend').asstring := '0'; //跨公司收货	0
    FieldByName('FHasSameCou').asstring := '0'; //申请公司是否等于收货公司	0
    FieldByName('FReceiveStorageOrgUnitID').asstring := UserInfo.Branch_ID; //收货库存组织	当前组织id
    FieldByName('FPurchaseFee').asstring := '0'; //采购费用	0
    FieldByName('FMaterialCost').asstring := '0'; //材料成本	0
    FieldByName('FUnitMaterialCost').asstring := '0'; //单位材料成本	0
    FieldByName('FSCWrittenOffQty').asstring := '0'; //委外已核销数量	0
    FieldByName('FSCWrittenOffBaseQty').asstring := '0'; //委外已核销基本数量	0
    FieldByName('FSCUnWrittenOffQty').asstring := '0'; //委外未核销数量	0
    FieldByName('FSCUnWrittenOffBaseQty').asstring := '0'; //委外未核销基本数量	0
    FieldByName('FDosingType').asstring := '3'; //投料方式	3
    FieldByName('FProductTaskNumber').Value := null; //生产任务单	NULL
    FieldByName('FSupplierLotNo').Value := null; //供应商批次号	NULL
    FieldByName('FContractNumber').Value := null; //	合同号	NULL
    FieldByName('FMotherEntryID').Value := null; //手工拆分后母单ID	NULL
    FieldByName('FCustomerID').Value := null; //客户	NULL
    FieldByName('FOutWarehouseID').Value := null; //转出仓库	NULL
    FieldByName('FOutLocationID').Value := null; //转出库位	NULL
    FieldByName('FLocationID').Value := null; //库位	NULL
    FieldByName('FStockerID').Value := null; //仓管员	NULL
    FieldByName('FLot').Value := null; //批次	NULL
    FieldByName('FAssistQty').Value := 0; //助数量	NULL sssssssss
    FieldByName('FReverseQty').asstring := '0'; //冲销数量	0
    FieldByName('FReturnsQty').asstring := '0'; //退货数量	0
    FieldByName('FUnitStandardCost').asstring := '0'; //单位标准成本	0
    FieldByName('FStandardCost').asstring := '0'; //标准成本	0
    FieldByName('FIsPresent').asstring := '0'; //是否赠品	0
    FieldByName('FMfg').Value := null; //生产日期	NULL
    FieldByName('FExp').Value := null; //到期日期	NULL
    FieldByName('FReverseBaseQty').asstring := '0'; //冲销基本数量	0
    FieldByName('FReturnBaseQty').asstring := '0'; //退货基本数量	0
    FieldByName('FProjectID').Value := null; //项目号	NULL
    FieldByName('FTrackNumberID').Value := null; //跟踪号	NULL
    FieldByName('FAssistPropertyID').Value := null; //辅助属性	NULL
    FieldByName('FSourceBillID').Value := null; //源单据Id	NULL
    FieldByName('FSourceBillNumber').Value := null; //来源单据编号	NULL
    FieldByName('FSourceBillEntryID').Value := null; //来源单据分录的Id	NULL
    FieldByName('FSourceBillEntrySeq').asstring := '0'; //来源单据分录序号	0
    FieldByName('FAssCoefficient').asstring := '0'; //辅助计量单位换算系数	0
    FieldByName('FBaseStatus').asstring := '2'; //基本状态	2
    FieldByName('CFDefaultWarehouse').Value := null;
    FieldByName('CFDefaultLocationI').Value := null;
    FieldByName('CFRqn').Value := null;
    FieldByName('FSourceBillTypeID').Value := null; //来源单据类型	NULL
    FieldByName('FAssistUnitID').Value := null; //辅助计量单位	NULL
    FieldByName('FReasonCodeID').Value := null; //原因代码	NULL
    FieldByName('FID').asstring := CliDM.GetEASSID(UserInfo.T_IM_PurInWarehsEntry);

  end;
end;

function TFM_PurInWarehsBill.ST_Save: Boolean;
var ErrMsg, BillNumber: string;
  _cds: array[0..1] of TClientDataSet;
  AmountSum: Integer;
begin
  Result := True;
  if not Chk_Data then
  begin
    Result := False;
    Exit;
  end;
  if cdsMaster.State in db.dsEditModes then
    cdsMaster.Post;
  if cdsDetail.State in db.dsEditModes then
    cdsDetail.Post;
  if cdsMaster_Save.State in db.dsEditModes then
    cdsMaster_Save.Post;
  if cdsDetail_Save.State in db.dsEditModes then
    cdsDetail_Save.Post;
  BillNumber := cdsMaster_Save.fieldbyname('fnumber').AsString;
  //定义提交的数据集数据
  _cds[0] := cdsMaster_Save;
  _cds[1] := cdsDetail_Save;
  //提交数据
  try
    if CliDM.Apply_Delta_Ex(_cds, ['T_IM_PurInWarehsBill', 'T_IM_PurInWarehsEntry'], ErrMsg) then
    begin
      Gio.AddShow(Self.Caption + '【' + BillNumber + '】提交成功！');
      BillInfo.IsChange := False;
      if FOpenPar.ListDataset <> nil then
        if not FindRecord1(FOpenPar.ListDataset, 'FID', FBill_FID, 1) then
        begin
          FOpenPar.ListDataset.FieldByName('FID').ReadOnly := False;
          FOpenPar.ListDataset.Append;
          FOpenPar.ListDataset.FieldByName('FID').AsString := FBill_FID;
          FOpenPar.ListDataset.Post;
          self.actSetBillStatus.Execute;
        end;
    end
    else
    begin
      Gio.AddShow(ErrMsg);
      Result := False;
    end;
  except
    on E: Exception do
    begin
      ShowMsg(Handle, Self.Caption + '提交失败：' + e.Message, []);
      Result := False;
      exit;
    end;
  end;
end;

function TFM_PurInWarehsBill.Chk_Data: Boolean;
begin
  Result := True;
  if Trim(cdsMaster.FieldByName('FBizDate').AsString) = '' then
  begin
    ShowMsg(self.Handle, '业务日期 不能为空!     ', []);
    Result := False;
    Exit;
  end;
  if Trim(cdsMaster.FieldByName('FSupplierID').AsString) = '' then
  begin
    ShowMsg(self.Handle, '供应商 不能为空!     ', []);
    Result := False;
    Exit;
  end;
  if Trim(cdsMaster.FieldByName('FTransactionTypeID').AsString) = '' then
  begin
    ShowMsg(self.Handle, '事务类型 不能为空!     ', []);
    Result := False;
    Exit;
  end;
end;

procedure TFM_PurInWarehsBill.cdsDetailBeforePost(DataSet: TDataSet);
begin
  with DataSet do
  begin
    FieldByName('FBaseUnitID').Value := FieldByName('FUnitID').Value;
    FieldByName('FLocalTaxAmount').Value := FieldByName('FTaxAmount').Value;
    FieldByName('FBizDate').Value := cdsMaster.FieldByName('FBizDate').Value;
    FieldByName('FBaseUnitID').AsString := UserInfo.Branch_ID;
    FieldByName('FCompanyOrgUnitID').AsString := UserInfo.Branch_ID;
    FieldByName('FBaseQty').Value := FieldByName('FQty').Value; //基本单位数量	数量
    FieldByName('FUnitActualCost').Value := FieldByName('FActualPrice').Value; //单位实际成本	实际单价
    FieldByName('FActualCost').Value := FieldByName('FAmount').Value; //实际成本	金额
    FieldByName('FAssociateQty').Value := FieldByName('FQty').Value; //未关联数量	=数量
    FieldByName('FUnWriteOffQty').Value := FieldByName('FQty').Value; //未核销数量	数量
    FieldByName('FUnWriteOffAmount').Value := FieldByName('FAmount').Value; //未核销金额	金额
    FieldByName('FLocalTax').Value := FieldByName('FTax').Value; //本位币税额	税额
    FieldByName('FLocalPrice').Value := FieldByName('FPrice').Value; //	本位币单价	单价
    FieldByName('FLocalAmount').Value := FieldByName('FAmount').Value; //	本位币金额	金额
    FieldByName('FUnReturnedBaseQty').Value := FieldByName('FQty').Value; //可退货基本数量	数量
    FieldByName('FPurchaseCost').Value := FieldByName('FAmount').Value; //采购成本	金额
    FieldByName('FUnitPurchaseCost').Value := FieldByName('FPrice').Value; //单位采购成本	单价
  end;
  inherited;
end;

procedure TFM_PurInWarehsBill.cxdbColFMaterialNumberPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
//
end;

procedure TFM_PurInWarehsBill.cxdbColFWarehouseNamePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
//
end;

end.

