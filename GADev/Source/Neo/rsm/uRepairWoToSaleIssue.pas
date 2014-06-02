unit uRepairWoToSaleIssue;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uTransferBillBaseFrm, DB, DBClient;

type
  TRepairWoToSaleIssueFrm = class(TTransferBillBaseFrm)
    cdsDestMasterFID: TStringField;
    cdsDestMasterFCreatorID: TStringField;
    cdsDestMasterFCreateTime: TDateTimeField;
    cdsDestMasterFLastUpdateUserID: TStringField;
    cdsDestMasterFLastUpdateTime: TDateTimeField;
    cdsDestMasterFControlUnitID: TStringField;
    cdsDestMasterFNumber: TWideStringField;
    cdsDestMasterFBizDate: TDateTimeField;
    cdsDestMasterFHandlerID: TStringField;
    cdsDestMasterFDescription: TWideStringField;
    cdsDestMasterFHasEffected: TIntegerField;
    cdsDestMasterFAuditorID: TStringField;
    cdsDestMasterFSourceBillID: TWideStringField;
    cdsDestMasterFSourceFunction: TWideStringField;
    cdsDestMasterFAuditTime: TDateTimeField;
    cdsDestMasterFBaseStatus: TIntegerField;
    cdsDestMasterFBizTypeID: TStringField;
    cdsDestMasterFSourceBillTypeID: TStringField;
    cdsDestMasterFBillTypeID: TStringField;
    cdsDestMasterFYear: TIntegerField;
    cdsDestMasterFPeriod: TIntegerField;
    cdsDestMasterFStorageOrgUnitID: TStringField;
    cdsDestMasterFAdminOrgUnitID: TStringField;
    cdsDestMasterFStockerID: TStringField;
    cdsDestMasterFVoucherID: TStringField;
    cdsDestMasterFTotalQty: TFloatField;
    cdsDestMasterFTotalAmount: TFloatField;
    cdsDestMasterFFiVouchered: TIntegerField;
    cdsDestMasterFTotalStandardCost: TFloatField;
    cdsDestMasterFTotalActualCost: TFloatField;
    cdsDestMasterFIsReversed: TIntegerField;
    cdsDestMasterFTransactionTypeID: TStringField;
    cdsDestMasterFIsInitBill: TIntegerField;
    cdsDestMasterFCustomerID: TStringField;
    cdsDestMasterFCurrencyID: TStringField;
    cdsDestMasterFExchangeRate: TFloatField;
    cdsDestMasterFModifierID: TStringField;
    cdsDestMasterFModificationTime: TDateTimeField;
    cdsDestMasterFPaymentTypeID: TStringField;
    cdsDestMasterFConvertMode: TIntegerField;
    cdsDestMasterFIsSysBill: TIntegerField;
    cdsDestMasterFTotalLocalAmount: TFloatField;
    cdsDestMasterFActBizDate: TDateTimeField;
    cdsDestMasterFIsGenBizAR: TIntegerField;
    cdsDestMasterFIsInTax: TIntegerField;
    cdsDestMasterfmonth: TIntegerField;
    cdsDestMasterfday: TIntegerField;
    cdsDestMasterFBillRelationOption: TIntegerField;
    cdsDestMasterFCostCenterOrgUnitID: TStringField;
    cdsDestMasterCFSettlementStatus: TStringField;
    cdsDestMasterCFReceivingStatus: TStringField;
    cdsDestMasterCFSettlementDate: TDateTimeField;
    cdsDestMasterCFReceivingDate: TDateTimeField;
    cdsDestMasterFPriceSource: TIntegerField;
    cdsDestMasterCFRepairWOIDID: TStringField;
    cdsDestMasterCFVehicleIDID: TStringField;
    cdsDestDetailFID: TStringField;
    cdsDestDetailFSeq: TIntegerField;
    cdsDestDetailFSourceBillId: TWideStringField;
    cdsDestDetailFSourceBillNumber: TWideStringField;
    cdsDestDetailFSourceBillTypeID: TStringField;
    cdsDestDetailFSourceBillEntryId: TWideStringField;
    cdsDestDetailFSourceBillEntrySeq: TIntegerField;
    cdsDestDetailFAssCoefficient: TFloatField;
    cdsDestDetailFBaseStatus: TIntegerField;
    cdsDestDetailFMaterialID: TStringField;
    cdsDestDetailFUnitID: TStringField;
    cdsDestDetailFBaseUnitID: TStringField;
    cdsDestDetailFAssistUnitID: TStringField;
    cdsDestDetailFReasonCodeID: TStringField;
    cdsDestDetailFAssociateQty: TFloatField;
    cdsDestDetailFStorageOrgUnitID: TStringField;
    cdsDestDetailFCompanyOrgUnitID: TStringField;
    cdsDestDetailFWarehouseID: TStringField;
    cdsDestDetailFLocationID: TStringField;
    cdsDestDetailFStockerID: TStringField;
    cdsDestDetailFLot: TWideStringField;
    cdsDestDetailFQty: TFloatField;
    cdsDestDetailFAssistQty: TFloatField;
    cdsDestDetailFBaseQty: TFloatField;
    cdsDestDetailFReverseQty: TFloatField;
    cdsDestDetailFReturnsQty: TFloatField;
    cdsDestDetailFPrice: TFloatField;
    cdsDestDetailFAmount: TFloatField;
    cdsDestDetailFUnitStandardCost: TFloatField;
    cdsDestDetailFStandardCost: TFloatField;
    cdsDestDetailFUnitActualCost: TFloatField;
    cdsDestDetailFActualCost: TFloatField;
    cdsDestDetailFIsPresent: TIntegerField;
    cdsDestDetailFParentID: TStringField;
    cdsDestDetailFSaleOrderID: TStringField;
    cdsDestDetailFSaleOrderEntryID: TStringField;
    cdsDestDetailFWrittenOffQty: TFloatField;
    cdsDestDetailFWrittenOffAmount: TFloatField;
    cdsDestDetailFUnWriteOffQty: TFloatField;
    cdsDestDetailFUnWriteOffAmount: TFloatField;
    cdsDestDetailFOrderNumber: TWideStringField;
    cdsDestDetailFSaleOrderNumber: TWideStringField;
    cdsDestDetailFSaleOrderEntrySeq: TIntegerField;
    cdsDestDetailFTaxRate: TFloatField;
    cdsDestDetailFTax: TFloatField;
    cdsDestDetailFLocalTax: TFloatField;
    cdsDestDetailFLocalPrice: TFloatField;
    cdsDestDetailFLocalAmount: TFloatField;
    cdsDestDetailFNonTaxAmount: TFloatField;
    cdsDestDetailFLocalNonTaxAmount: TFloatField;
    cdsDestDetailFDrewQty: TFloatField;
    cdsDestDetailFAssistPropertyID: TStringField;
    cdsDestDetailFMfg: TDateTimeField;
    cdsDestDetailFExp: TDateTimeField;
    cdsDestDetailFRemark: TWideStringField;
    cdsDestDetailFReverseBaseQty: TFloatField;
    cdsDestDetailFReturnBaseQty: TFloatField;
    cdsDestDetailFWrittenOffBaseQty: TFloatField;
    cdsDestDetailFUnWriteOffBaseQty: TFloatField;
    cdsDestDetailFDrewBaseQty: TFloatField;
    cdsDestDetailFCoreBillTypeID: TStringField;
    cdsDestDetailFUnReturnedBaseQty: TFloatField;
    cdsDestDetailFIsLocked: TIntegerField;
    cdsDestDetailFInventoryID: TStringField;
    cdsDestDetailFOrderPrice: TFloatField;
    cdsDestDetailFTaxPrice: TFloatField;
    cdsDestDetailFActualPrice: TFloatField;
    cdsDestDetailFSaleOrgUnitID: TStringField;
    cdsDestDetailFSaleGroupID: TStringField;
    cdsDestDetailFSalePersonID: TStringField;
    cdsDestDetailFBaseUnitActualcost: TFloatField;
    cdsDestDetailFUndeliverQty: TFloatField;
    cdsDestDetailFUndeliverBaseQty: TFloatField;
    cdsDestDetailFUnInQty: TFloatField;
    cdsDestDetailFUnInBaseQty: TFloatField;
    cdsDestDetailFBalanceCustomerID: TStringField;
    cdsDestDetailFIsCenterBalance: TIntegerField;
    cdsDestDetailFIsBetweenCompanySend: TIntegerField;
    cdsDestDetailftotalInWarehsQty: TFloatField;
    cdsDestDetailFPaymentCustomerID: TStringField;
    cdsDestDetailFOrderCustomerID: TStringField;
    cdsDestDetailFConfirmQty: TFloatField;
    cdsDestDetailFConfirmBaseQty: TFloatField;
    cdsDestDetailFAssociateBaseQty: TFloatField;
    cdsDestDetailFConfirmDate: TDateTimeField;
    cdsDestDetailFSendAddress: TWideStringField;
    cdsDestDetailFNetOrderBillNumber: TWideStringField;
    cdsDestDetailFnetorderbillid: TWideStringField;
    cdsDestDetailFNetOrderBillentryid: TWideStringField;
    cdsDestDetailFIsSquareBalance: TIntegerField;
    cdsDestDetailFProjectID: TStringField;
    cdsDestDetailFTrackNumberID: TStringField;
    cdsDestDetailFContractNumber: TStringField;
    cdsDestDetailFSupplierID: TStringField;
    cdsDestDetailFSalePrice: TFloatField;
    cdsDestDetailFDiscountType: TIntegerField;
    cdsDestDetailFDiscountAmount: TFloatField;
    cdsDestDetailFDiscount: TFloatField;
    cdsDestDetailFUnSettleQty: TFloatField;
    cdsDestDetailFUnSettleBaseQty: TFloatField;
    cdsDestDetailFCurSettleBillID: TStringField;
    cdsDestDetailFCurSettleBillEntryID: TStringField;
    cdsDestDetailFCurSettleQty: TFloatField;
    cdsDestDetailFTotalSettleQty: TFloatField;
    cdsDestDetailFTotalSettleBaseQty: TFloatField;
    cdsDestDetailFB2cBillType: TStringField;
    cdsDestDetailFBIZDATE: TDateTimeField;
    cdsDestDetailFIsFullWriteOff: TIntegerField;
    cdsDestDetailCFRequestPersonIDI: TStringField;
    cdsDestDetailCFPaymentClassify: TWideStringField;
    cdsDestDetailCFDefaultWarehouse: TStringField;
    cdsDestDetailCFDefaultLocationI: TStringField;
    cdsDestDetailCFWipLineNo: TIntegerField;
    cdsDestDetailCFWip: TWideStringField;
    cdsDestDetailCFCostPrice: TFloatField;
    cdsDestDetailCFSourceEntryAllocateCount: TIntegerField;
    cdsDestDetailCFLoc: TWideStringField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure ToSaleIssueBill(cdsSrcs: array of TClientDataSet);
  public
    { Public declarations }
      procedure Transfer(cdsSrcs: array of TClientDataSet);override;
      procedure OpenDestBillFrm;override;
  end;

var
  RepairWoToSaleIssueFrm: TRepairWoToSaleIssueFrm;
  destBillTypeId:string;

implementation

{$R *.dfm}
uses
  FrmCliDM,uUtilsClass,DateUtils,Pub_Fun;

procedure TRepairWoToSaleIssueFrm.Transfer(cdsSrcs: array of TClientDataSet);
var
  cdsDests: array[0..1] of TClientDataSet;
  destTableNames: array[0..1] of string;
begin
  inherited;
  destBillTypeId := '50957179-0105-1000-e000-015fc0a812fd463ED552';
  cdsDests[0] := cdsDestMaster;
  cdsDests[1] := cdsDestDetail;
  destTableNames[0] := 'T_IM_SaleIssueBill';
  destTableNames[1] := 'T_IM_SaleIssueEntry';

  //转单代码
   ToSaleIssueBill(cdsSrcs);
  //保存单据
  SaveDest(cdsDests,destTableNames);
  if IsOpenDestBill then
    OpenDestBillFrm
end;
procedure TRepairWoToSaleIssueFrm.OpenDestBillFrm;
begin
  inherited;
  //打开目标单据代码
  
end;

procedure TRepairWoToSaleIssueFrm.ToSaleIssueBill(cdsSrcs: array of TClientDataSet);
var
   sql,errmsg:string;
   codeRuleUtils: TCodeRuleUtilsCls;
   cdsSrcMaster,cdsSrcDetail,cdsTmp:TClientDataSet;
   seq:integer;
   qty,price,taxprice,taxrate,tax,amount,taxamount,discountRate:double;
   redBill: boolean;
begin
  redBill := IsRedBill;
  codeRuleUtils := TCodeRuleUtilsCls.Create;
  cdsSrcMaster := cdsSrcs[0];
  cdsSrcDetail := cdsSrcs[1];
  //转单代码

  //表头
  cdsDestMaster.Append;
  cdsDestMaster.FieldByName('FID').AsString := CliDM.GetEASSID('CC3E933B');
  cdsDestMaster.FieldByName('FCreatorID').AsString := UserInfo.LoginUser_FID;
  cdsDestMaster.FieldByName('FCreateTime').AsDateTime := CliDm.Get_ServerTime;
  cdsDestMaster.FieldByName('FLastUpdateUserID').AsVariant := UserInfo.LoginUser_FID;
  cdsDestMaster.FieldByName('FLastUpdateTime').AsVariant := CliDm.Get_ServerTime;
  cdsDestMaster.FieldByName('FControlUnitID').AsVariant := UserInfo.Controlunitid;
  cdsDestMaster.FieldByName('FNumber').AsVariant := codeRuleUtils.getNumber(destBillTypeId,UserInfo.Branch_ID,'SAO');
  cdsDestMaster.FieldByName('FBizDate').AsDateTime := CliDm.Get_ServerTime;
//  cdsDestMaster.FieldByName('FHandlerID').AsVariant := '';
//  cdsDestMaster.FieldByName('FDescription').AsVariant := '';
//  cdsDestMaster.FieldByName('FHasEffected').AsVariant := '';
//  cdsDestMaster.FieldByName('FAuditorID').AsVariant := '';
//  cdsDestMaster.FieldByName('FSourceBillID').AsVariant := '';
//  cdsDestMaster.FieldByName('FSourceFunction').AsVariant := '';
//  cdsDestMaster.FieldByName('FAuditTime').AsVariant := '';
  cdsDestMaster.FieldByName('FBaseStatus').AsVariant := '1';  //保存
  if redBill then
    cdsDestMaster.FieldByName('FBizTypeID').AsVariant := 'd8e80652-0110-1000-e000-04c5c0a812202407435C' //普通销售退货
  else
    cdsDestMaster.FieldByName('FBizTypeID').AsVariant := 'd8e80652-010e-1000-e000-04c5c0a812202407435C';  //普通销售
  cdsDestMaster.FieldByName('FSourceBillTypeID').AsVariant := 'HM+nytJ+S7izjFHd2/madkY+1VI='; //维修工单
  cdsDestMaster.FieldByName('FBillTypeID').AsVariant := '50957179-0105-1000-e000-015bc0a812fd463ED552'; // 销售出库单
  cdsDestMaster.FieldByName('FYear').AsVariant := YearOf(CliDm.Get_ServerTime);
  cdsDestMaster.FieldByName('FPeriod').AsVariant := MonthOf(CliDm.Get_ServerTime);
  cdsDestMaster.FieldByName('FStorageOrgUnitID').AsVariant := UserInfo.Branch_ID;
  //cdsDestMaster.FieldByName('FAdminOrgUnitID').AsVariant :='';
  //cdsDestMaster.FieldByName('FStockerID').AsVariant := '';
  //cdsDestMaster.FieldByName('FVoucherID').AsVariant := '';
  cdsDestMaster.FieldByName('FTotalQty').AsVariant := 0;
  cdsDestMaster.FieldByName('FTotalAmount').AsVariant := 0;
  cdsDestMaster.FieldByName('FFiVouchered').AsVariant := 0;
  cdsDestMaster.FieldByName('FTotalStandardCost').AsVariant := 0;
  cdsDestMaster.FieldByName('FTotalActualCost').AsVariant := 0;
  cdsDestMaster.FieldByName('FIsReversed').AsVariant := 0;
  if redBill then
    cdsDestMaster.FieldByName('FTransactionTypeID').AsVariant := 'DawAAAAPoA2wCNyn' //普通销售退货
  else
    cdsDestMaster.FieldByName('FTransactionTypeID').AsVariant := 'DawAAAAPoAywCNyn';//普通销售出库
  cdsDestMaster.FieldByName('FIsInitBill').AsVariant := 0;

  sql := Format('select FStdCustomerID from T_ATS_Customer where FID=%s',[QuotedStr(cdsSrcMaster.FieldByName('FCustomerID').AsString)]);
  cdsDestMaster.FieldByName('FCustomerID').AsVariant := CliDM.Get_QueryReturn(sql,errmsg);
  cdsDestMaster.FieldByName('FCurrencyID').AsVariant := 'dfd38d11-00fd-1000-e000-1ebdc0a8100dDEB58FDC';
  cdsDestMaster.FieldByName('FExchangeRate').AsVariant := 1;
  //cdsDestMaster.FieldByName('FModifierID').AsVariant := '';
  //cdsDestMaster.FieldByName('FModificationTime').AsVariant := '';
  cdsDestMaster.FieldByName('FPaymentTypeID').AsVariant := '91f078d7-fb90-4827-83e2-3538237b67a06BCA0AB5'; // 赊销
  cdsDestMaster.FieldByName('FConvertMode').AsVariant := '0';
  cdsDestMaster.FieldByName('FIsSysBill').AsVariant := 0;
  cdsDestMaster.FieldByName('FTotalLocalAmount').AsVariant := 0;
  cdsDestMaster.FieldByName('FActBizDate').AsVariant := CliDm.Get_ServerTime;
  cdsDestMaster.FieldByName('FIsGenBizAR').AsVariant := 0;
  cdsDestMaster.FieldByName('FIsInTax').AsVariant := 1;
  cdsDestMaster.FieldByName('fmonth').AsVariant := FormatDateTime('yyyymm',CliDM.Get_ServerTime);
  cdsDestMaster.FieldByName('fday').AsVariant := FormatDateTime('yyyymmdd',CliDM.Get_ServerTime);
  cdsDestMaster.FieldByName('FBillRelationOption').AsVariant := 0;
//  cdsDestMaster.FieldByName('FCostCenterOrgUnitID').AsVariant := '';
  cdsDestMaster.FieldByName('CFSettlementStatus').AsVariant := '1';
  cdsDestMaster.FieldByName('CFReceivingStatus').AsVariant := '1';
//  cdsDestMaster.FieldByName('CFSettlementDate').AsVariant := '';
//  cdsDestMaster.FieldByName('CFReceivingDate').AsVariant := '';
// cdsDestMaster.FieldByName('FPriceSource').AsVariant := '';
  cdsDestMaster.FieldByName('CFRepairWOIDID').AsVariant := cdsSrcMaster.FieldByName('FID').AsString;
  cdsDestMaster.FieldByName('CFVehicleIDID').AsVariant := cdsSrcMaster.FieldByName('FVehicleID').AsString;

  cdsDestMaster.Post;
  //表体
  cdsSrcDetail.First;
  seq := 0;

  while not cdsSrcDetail.Eof do
  begin
    inc(seq);
    qty :=  Pub_Fun.USimpleRoundTo(cdsSrcDetail.FieldByName('CFUnIssueQty').AsFloat);
    discountRate := Pub_Fun.USimpleRoundTo(cdsSrcDetail.FieldByName('CFDiscountRate').AsFloat);
    price :=  Pub_Fun.USimpleRoundTo(cdsSrcDetail.FieldByName('CFPrice').AsFloat * (1 - discountRate / 100.0));
    taxprice :=  Pub_Fun.USimpleRoundTo(cdsSrcDetail.FieldByName('CFTaxPrice').AsFloat * (1 - discountRate / 100.0));
    taxrate :=  Pub_Fun.USimpleRoundTo(cdsSrcDetail.FieldByName('CFTaxRate').AsFloat);
    tax :=  Pub_Fun.USimpleRoundTo(qty * price * taxRate / 100);
    amount :=  Pub_Fun.USimpleRoundTo(qty * price);
    taxamount :=  Pub_Fun.USimpleRoundTo(qty * taxPrice);

    cdsDestDetail.Append;
    cdsDestDetail.FieldByName('FID').AsVariant := CliDM.GetEASSID('BBC07FBE');
    cdsDestDetail.FieldByName('FSeq').AsVariant := seq;
    cdsDestDetail.FieldByName('FSourceBillId').AsVariant := cdsSrcMaster.FieldByName('FID').AsString;
    cdsDestDetail.FieldByName('FSourceBillNumber').AsVariant := cdsSrcMaster.FieldByName('FNumber').AsString;;
    cdsDestDetail.FieldByName('FSourceBillTypeID').AsVariant := 'HM+nytJ+S7izjFHd2/madkY+1VI='; //维修工单
    cdsDestDetail.FieldByName('FSourceBillEntryId').AsVariant := cdsSrcDetail.FieldByName('FID').AsString;
    cdsDestDetail.FieldByName('FSourceBillEntrySeq').AsVariant := cdsSrcDetail.FieldByName('FSeq').AsInteger;
    cdsDestDetail.FieldByName('FAssCoefficient').AsVariant := 0;
    cdsDestDetail.FieldByName('FBaseStatus').AsVariant := 1;
    cdsDestDetail.FieldByName('FMaterialID').AsVariant := cdsSrcDetail.FieldByName('CFMaterialID').AsString;
    sql := Format('select FBaseUnit from T_BD_Material where FID=%s',[QuotedStr(cdsSrcDetail.FieldByName('CFMaterialID').AsString)]);
    cdsDestDetail.FieldByName('FUnitID').AsVariant := CliDM.Get_QueryReturn(sql,errmsg);
    cdsDestDetail.FieldByName('FBaseUnitID').AsVariant :=  cdsDestDetail.FieldByName('FUnitID').AsString;
  //  cdsDestDetail.FieldByName('FAssistUnitID').AsVariant := '';
   // cdsDestDetail.FieldByName('FReasonCodeID').AsVariant := '';
    cdsDestDetail.FieldByName('FAssociateQty').AsVariant := qty;
    cdsDestDetail.FieldByName('FStorageOrgUnitID').AsVariant := UserInfo.Branch_ID;
    cdsDestDetail.FieldByName('FCompanyOrgUnitID').AsVariant := UserInfo.Branch_ID;
   // cdsDestDetail.FieldByName('FWarehouseID').AsVariant := ''; 从销售出库单录入
   // cdsDestDetail.FieldByName('FLocationID').AsVariant := '';
  //  cdsDestDetail.FieldByName('FStockerID').AsVariant := '';
  //  cdsDestDetail.FieldByName('FLot').AsVariant := '';
    cdsDestDetail.FieldByName('FQty').AsVariant := qty;
    cdsDestDetail.FieldByName('FAssistQty').AsVariant := 0;
    cdsDestDetail.FieldByName('FBaseQty').AsVariant := qty;
    cdsDestDetail.FieldByName('FReverseQty').AsVariant := 0;
    cdsDestDetail.FieldByName('FReturnsQty').AsVariant := 0;
    cdsDestDetail.FieldByName('FPrice').AsVariant := price;
    cdsDestDetail.FieldByName('FAmount').AsVariant := taxAmount;
    cdsDestDetail.FieldByName('FUnitStandardCost').AsVariant := 0;
    cdsDestDetail.FieldByName('FStandardCost').AsVariant := 0;
    cdsDestDetail.FieldByName('FUnitActualCost').AsVariant := 0;
    cdsDestDetail.FieldByName('FActualCost').AsVariant := 0;
    cdsDestDetail.FieldByName('FIsPresent').AsVariant := 0;
    cdsDestDetail.FieldByName('FParentID').AsVariant := cdsDestMaster.FieldByName('FID').AsString;
   // cdsDestDetail.FieldByName('FSaleOrderID').AsVariant := '';  //标准生成虚的EAS销售订单
   // cdsDestDetail.FieldByName('FSaleOrderEntryID').AsVariant := ''; //标准生成虚的EAS销售订单
    cdsDestDetail.FieldByName('FWrittenOffQty').AsVariant := 0;
    cdsDestDetail.FieldByName('FWrittenOffAmount').AsVariant := 0;
    cdsDestDetail.FieldByName('FUnWriteOffQty').AsVariant := qty;
    cdsDestDetail.FieldByName('FUnWriteOffAmount').AsVariant := amount;
  //  cdsDestDetail.FieldByName('FOrderNumber').AsVariant := '';
  //  cdsDestDetail.FieldByName('FSaleOrderNumber').AsVariant := '';  //标准生成虚的EAS销售订单
  //  cdsDestDetail.FieldByName('FSaleOrderEntrySeq').AsVariant := '';   //标准生成虚的EAS销售订单
    cdsDestDetail.FieldByName('FTaxRate').AsVariant := taxRate;
    cdsDestDetail.FieldByName('FTax').AsVariant := tax;
    cdsDestDetail.FieldByName('FLocalTax').AsVariant := tax;
    cdsDestDetail.FieldByName('FLocalPrice').AsVariant := price;
    cdsDestDetail.FieldByName('FLocalAmount').AsVariant := taxAmount;
    cdsDestDetail.FieldByName('FNonTaxAmount').AsVariant := amount;
    cdsDestDetail.FieldByName('FLocalNonTaxAmount').AsVariant := amount;
    cdsDestDetail.FieldByName('FDrewQty').AsVariant := 0;
  // cdsDestDetail.FieldByName('FAssistPropertyID').AsVariant := '';
  //  cdsDestDetail.FieldByName('FMfg').AsVariant := '';
  //  cdsDestDetail.FieldByName('FExp').AsVariant := '';
  //  cdsDestDetail.FieldByName('FRemark').AsVariant := '';
    cdsDestDetail.FieldByName('FReverseBaseQty').AsVariant := 0;
    cdsDestDetail.FieldByName('FReturnBaseQty').AsVariant := 0;
    cdsDestDetail.FieldByName('FWrittenOffBaseQty').AsVariant := 0;
    cdsDestDetail.FieldByName('FUnWriteOffBaseQty').AsVariant := qty;
    cdsDestDetail.FieldByName('FDrewBaseQty').AsVariant := 0;
  //  cdsDestDetail.FieldByName('FCoreBillTypeID').AsVariant := ''; //标准生成虚的EAS销售订单
    cdsDestDetail.FieldByName('FUnReturnedBaseQty').AsVariant := qty;
    cdsDestDetail.FieldByName('FIsLocked').AsVariant := 0;
  //  cdsDestDetail.FieldByName('FInventoryID').AsVariant := '';
    cdsDestDetail.FieldByName('FOrderPrice').AsVariant := 0;
    cdsDestDetail.FieldByName('FTaxPrice').AsVariant := taxPrice;
    cdsDestDetail.FieldByName('FActualPrice').AsVariant := price;
    cdsDestDetail.FieldByName('FSaleOrgUnitID').AsVariant := UserInfo.Branch_ID;
  //  cdsDestDetail.FieldByName('FSaleGroupID').AsVariant := '';
    cdsDestDetail.FieldByName('FSalePersonID').AsVariant := cdsSrcMaster.FieldByName('FSAID').AsString;
    cdsDestDetail.FieldByName('FBaseUnitActualcost').AsVariant := 0;
    cdsDestDetail.FieldByName('FUndeliverQty').AsVariant := qty;
    cdsDestDetail.FieldByName('FUndeliverBaseQty').AsVariant := qty;
    cdsDestDetail.FieldByName('FUnInQty').AsVariant := qty;
    cdsDestDetail.FieldByName('FUnInBaseQty').AsVariant := qty;
    cdsDestDetail.FieldByName('FBalanceCustomerID').AsVariant := cdsSrcMaster.FieldByName('FCustomerID').AsString;
    cdsDestDetail.FieldByName('FIsCenterBalance').AsVariant := 0;
    cdsDestDetail.FieldByName('FIsBetweenCompanySend').AsVariant := 0;
    cdsDestDetail.FieldByName('ftotalInWarehsQty').AsVariant := 0;
    cdsDestDetail.FieldByName('FPaymentCustomerID').AsVariant := cdsSrcMaster.FieldByName('FCustomerID').AsString;
    cdsDestDetail.FieldByName('FOrderCustomerID').AsVariant := cdsSrcMaster.FieldByName('FCustomerID').AsString;
    cdsDestDetail.FieldByName('FConfirmQty').AsVariant := 0;
    cdsDestDetail.FieldByName('FConfirmBaseQty').AsVariant := 0;
    cdsDestDetail.FieldByName('FAssociateBaseQty').AsVariant := qty;
  //  cdsDestDetail.FieldByName('FConfirmDate').AsVariant := '';
  //  cdsDestDetail.FieldByName('FSendAddress').AsVariant := '';
  // cdsDestDetail.FieldByName('FNetOrderBillNumber').AsVariant := '';
  //  cdsDestDetail.FieldByName('Fnetorderbillid').AsVariant := '';
  //  cdsDestDetail.FieldByName('FNetOrderBillentryid').AsVariant := '';
    cdsDestDetail.FieldByName('FIsSquareBalance').AsVariant := 0;
  //  cdsDestDetail.FieldByName('FProjectID').AsVariant := '';
  //  cdsDestDetail.FieldByName('FTrackNumberID').AsVariant := '';
  //  cdsDestDetail.FieldByName('FContractNumber').AsVariant := '';
  //  cdsDestDetail.FieldByName('FSupplierID').AsVariant := '';
    cdsDestDetail.FieldByName('FSalePrice').AsVariant := price;
    cdsDestDetail.FieldByName('FDiscountType').AsVariant := 0;
    cdsDestDetail.FieldByName('FDiscountAmount').AsVariant := 0;
    cdsDestDetail.FieldByName('FDiscount').AsVariant := 0;
    cdsDestDetail.FieldByName('FUnSettleQty').AsVariant := 0;
    cdsDestDetail.FieldByName('FUnSettleBaseQty').AsVariant := 0;
  //  cdsDestDetail.FieldByName('FCurSettleBillID').AsVariant := '';
  //  cdsDestDetail.FieldByName('FCurSettleBillEntryID').AsVariant := '';
    cdsDestDetail.FieldByName('FCurSettleQty').AsVariant := 0;
    cdsDestDetail.FieldByName('FTotalSettleQty').AsVariant := 0;
    cdsDestDetail.FieldByName('FTotalSettleBaseQty').AsVariant := 0;
   // cdsDestDetail.FieldByName('FB2cBillType').AsVariant := '';
    cdsDestDetail.FieldByName('FBIZDATE').AsVariant := CliDM.Get_ServerTime;
    cdsDestDetail.FieldByName('FIsFullWriteOff').AsVariant := 0;
    cdsDestDetail.FieldByName('CFRequestPersonIDI').AsVariant := '';
  //  cdsDestDetail.FieldByName('CFPaymentClassify').AsVariant := '';
  //  cdsDestDetail.FieldByName('CFDefaultWarehouse').AsVariant := '';
  //  cdsDestDetail.FieldByName('CFDefaultLocationI').AsVariant := '';
  //  cdsDestDetail.FieldByName('CFWipLineNo').AsVariant := '';
  //  cdsDestDetail.FieldByName('CFWip').AsVariant := '';
    cdsDestDetail.FieldByName('CFCostPrice').AsVariant := cdsSrcDetail.FieldByName('CFCostAmount').AsFloat;
    cdsDestDetail.FieldByName('CFSourceEntryAllocateCount').AsVariant := cdsSrcDetail.FieldByName('CFAllocateCount').AsInteger;
  //  cdsDestDetail.FieldByName('CFLoc').AsVariant := '';
    cdsSrcDetail.Next;
  end;

  cdsDestDetail.Post;

end;


procedure TRepairWoToSaleIssueFrm.FormCreate(Sender: TObject);
var
    OpenTables: array[0..1] of string;
    _cds: array[0..1] of TClientDataSet;
    ErrMsg : string;
    strsql : string;
begin
  strsql := 'select * from T_IM_SaleIssueBill where 1 = 2';
  OpenTables[0] := strsql;
  strsql := 'select * from T_IM_SaleIssueEntry where 1 = 2';
  OpenTables[1] := strsql;
  _cds[0] := cdsDestMaster;
  _cds[1] := cdsDestDetail;

  try
    if not CliDM.Get_OpenClients_E('GA001',_cds,OpenTables,ErrMsg) then
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

end.
