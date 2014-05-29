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
  FrmCliDM,uUtilsClass;

procedure TRepairWoToSaleIssueFrm.Transfer(cdsSrcs: array of TClientDataSet);
var
  cdsDests: array[0..1] of TClientDataSet;
  destTableNames: array[0..1] of string;
begin
  inherited;
  cdsDests[0] := cdsDestMaster;
  cdsDests[1] := cdsDestDetail;
  destTableNames[0] := 'T_IM_SaleIssueBill';
  destTableNames[1] := 'T_IM_SaleIssueEntry';

  //转单代码
   ToSaleIssueBill(cdsSrcs);
  //保存单据
  SaveDest(cdsDests,destTableNames);
end;
procedure TRepairWoToSaleIssueFrm.OpenDestBillFrm;
begin
  inherited;
  //打开目标单据代码
  
end;

procedure TRepairWoToSaleIssueFrm.ToSaleIssueBill(cdsSrcs: array of TClientDataSet);
var
   i: integer;
   codeRuleUtils: TCodeRuleUtilsCls;
begin
  codeRuleUtils := TCodeRuleUtilsCls.Create;
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
  cdsDestMaster.FieldByName('FBizDate').AsVariant := '';
  cdsDestMaster.FieldByName('FHandlerID').AsVariant := '';
  cdsDestMaster.FieldByName('FDescription').AsVariant := '';
  cdsDestMaster.FieldByName('FHasEffected').AsVariant := '';
  cdsDestMaster.FieldByName('FAuditorID').AsVariant := '';
  cdsDestMaster.FieldByName('FSourceBillID').AsVariant := '';
  cdsDestMaster.FieldByName('FSourceFunction').AsVariant := '';
  cdsDestMaster.FieldByName('FAuditTime').AsVariant := '';
  cdsDestMaster.FieldByName('FBaseStatus').AsVariant := '';
  cdsDestMaster.FieldByName('FBizTypeID').AsVariant := '';
  cdsDestMaster.FieldByName('FSourceBillTypeID').AsVariant := '';
  cdsDestMaster.FieldByName('FBillTypeID').AsVariant := '';
  cdsDestMaster.FieldByName('FYear').AsVariant := '';
  cdsDestMaster.FieldByName('FPeriod').AsVariant := '';
  cdsDestMaster.FieldByName('FStorageOrgUnitID').AsVariant := '';
  cdsDestMaster.FieldByName('FAdminOrgUnitID').AsVariant := '';
  cdsDestMaster.FieldByName('FStockerID').AsVariant := '';
  cdsDestMaster.FieldByName('FVoucherID').AsVariant := '';
  cdsDestMaster.FieldByName('FTotalQty').AsVariant := '';
  cdsDestMaster.FieldByName('FTotalAmount').AsVariant := '';
  cdsDestMaster.FieldByName('FFiVouchered').AsVariant := '';
  cdsDestMaster.FieldByName('FTotalStandardCost').AsVariant := '';
  cdsDestMaster.FieldByName('FTotalActualCost').AsVariant := '';
  cdsDestMaster.FieldByName('FIsReversed').AsVariant := '';
  cdsDestMaster.FieldByName('FTransactionTypeID').AsVariant := '';
  cdsDestMaster.FieldByName('FIsInitBill').AsVariant := '';
  cdsDestMaster.FieldByName('FCustomerID').AsVariant := '';
  cdsDestMaster.FieldByName('FCurrencyID').AsVariant := '';
  cdsDestMaster.FieldByName('FExchangeRate').AsVariant := '';
  cdsDestMaster.FieldByName('FModifierID').AsVariant := '';
  cdsDestMaster.FieldByName('FModificationTime').AsVariant := '';
  cdsDestMaster.FieldByName('FPaymentTypeID').AsVariant := '';
  cdsDestMaster.FieldByName('FConvertMode').AsVariant := '';
  cdsDestMaster.FieldByName('FIsSysBill').AsVariant := '';
  cdsDestMaster.FieldByName('FTotalLocalAmount').AsVariant := '';
  cdsDestMaster.FieldByName('FActBizDate').AsVariant := '';
  cdsDestMaster.FieldByName('FIsGenBizAR').AsVariant := '';
  cdsDestMaster.FieldByName('FIsInTax').AsVariant := '';
  cdsDestMaster.FieldByName('fmonth').AsVariant := '';
  cdsDestMaster.FieldByName('fday').AsVariant := '';
  cdsDestMaster.FieldByName('FBillRelationOption').AsVariant := '';
  cdsDestMaster.FieldByName('FCostCenterOrgUnitID').AsVariant := '';
  cdsDestMaster.FieldByName('CFSettlementStatus').AsVariant := '';
  cdsDestMaster.FieldByName('CFReceivingStatus').AsVariant := '';
  cdsDestMaster.FieldByName('CFSettlementDate').AsVariant := '';
  cdsDestMaster.FieldByName('CFReceivingDate').AsVariant := '';
  cdsDestMaster.FieldByName('FPriceSource').AsVariant := '';
  cdsDestMaster.FieldByName('CFRepairWOIDID').AsVariant := '';
  cdsDestMaster.FieldByName('CFVehicleIDID').AsVariant := '';


  //表体


end;


end.
