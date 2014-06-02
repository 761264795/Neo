unit uRepairWoToArBill;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uTransferBillBaseFrm, DB, DBClient;

type
  TRepairWoToArBillFrm = class(TTransferBillBaseFrm)
    dsDestPlan: TDataSource;
    cdsDestPlan: TClientDataSet;
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
    cdsDestMasterFSourceBillID: TStringField;
    cdsDestMasterFSourceFunction: TWideStringField;
    cdsDestMasterFCompanyID: TStringField;
    cdsDestMasterFBillDate: TDateTimeField;
    cdsDestMasterFAsstActTypeID: TStringField;
    cdsDestMasterFAsstActID: TStringField;
    cdsDestMasterFAsstActNumber: TWideStringField;
    cdsDestMasterFAsstActName_L1: TWideStringField;
    cdsDestMasterFAsstActName_L2: TWideStringField;
    cdsDestMasterFAsstActName_L3: TWideStringField;
    cdsDestMasterFBillStatus: TIntegerField;
    cdsDestMasterFCurrencyID: TStringField;
    cdsDestMasterFAdminOrgUnitID: TStringField;
    cdsDestMasterFPersonID: TStringField;
    cdsDestMasterFExchangeRate: TFloatField;
    cdsDestMasterFSettleTypeID: TStringField;
    cdsDestMasterFAmount: TFloatField;
    cdsDestMasterFAmountLocal: TFloatField;
    cdsDestMasterFAbstractName: TWideStringField;
    cdsDestMasterFVerifyAmount: TFloatField;
    cdsDestMasterFVerifyAmountLocal: TFloatField;
    cdsDestMasterFUnVerifyAmount: TFloatField;
    cdsDestMasterFUnVerifyAmountLocal: TFloatField;
    cdsDestMasterFAuditDate: TDateTimeField;
    cdsDestMasterFVoucherID: TStringField;
    cdsDestMasterFFiVouchered: TIntegerField;
    cdsDestMasterFSourceBillType: TIntegerField;
    cdsDestMasterFCashDiscountID: TStringField;
    cdsDestMasterFIsReversed: TIntegerField;
    cdsDestMasterFIsReverseBill: TIntegerField;
    cdsDestMasterFIsInTax: TIntegerField;
    cdsDestMasterFAccountantID: TStringField;
    cdsDestMasterFIsTransBill: TIntegerField;
    cdsDestMasterFSaleOrgID: TStringField;
    cdsDestMasterFTotalBadAmount: TFloatField;
    cdsDestMasterFTotalBadAmountLocal: TFloatField;
    cdsDestMasterFBillType: TIntegerField;
    cdsDestMasterFIsImportBill: TIntegerField;
    cdsDestMasterFVoucherNumber: TWideStringField;
    cdsDestMasterFBizTypeID: TStringField;
    cdsDestMasterFPaymentTypeID: TStringField;
    cdsDestMasterFSaleGroupID: TStringField;
    cdsDestMasterFLastExhangeRate: TFloatField;
    cdsDestMasterFTotalAmount: TFloatField;
    cdsDestMasterFTotalTax: TFloatField;
    cdsDestMasterFTotalTaxAmount: TFloatField;
    cdsDestMasterFIsExchanged: TIntegerField;
    cdsDestMasterFIsInitializeBill: TIntegerField;
    cdsDestMasterFVoucherTypeID: TStringField;
    cdsDestMasterFRedBlueType: TIntegerField;
    cdsDestMasterFYear: TIntegerField;
    cdsDestMasterFPeriod: TIntegerField;
    cdsDestMasterFIsSCMBill: TIntegerField;
    cdsDestMasterFIsPriceWithoutTax: TIntegerField;
    cdsDestMasterFIsNeedVoucher: TIntegerField;
    cdsDestMasterFIsAllowanceBill: TIntegerField;
    cdsDestMasterFIsAppointVoucher: TIntegerField;
    cdsDestMasterFPriceSource: TIntegerField;
    cdsDestMasterFPayConditionId: TStringField;
    cdsDestMasterFIsImpFromGL: TIntegerField;
    cdsDestMasterFAdminOrgUnitId_SourceBill: TStringField;
    cdsDestMasterFPersonID_SourceBill: TStringField;
    cdsDestMasterFAsstActID_SourceBill: TStringField;
    cdsDestMasterFBillDate_SourceBill: TDateTimeField;
    cdsDestMasterFAsstActTypeID_SourceBill: TStringField;
    cdsDestMasterFisSplitBill: TIntegerField;
    cdsDestMasterFIsGenCoopBill: TIntegerField;
    cdsDestMasterFisCoopBuild: TIntegerField;
    cdsDestMasterFContractNumber: TWideStringField;
    cdsDestMasterFBillType_SourceBill: TIntegerField;
    cdsDestMasterFIsBizBill: TIntegerField;
    cdsDestMasterFSYNbillType: TStringField;
    cdsDestMasterFSYNbillNumber: TStringField;
    cdsDestMasterFSYNBillID: TStringField;
    cdsDestMasterFSYNBillEntryID: TStringField;
    cdsDestMasterFCostCenterID: TStringField;
    cdsDestMasterFBillRelationOption: TIntegerField;
    cdsDestDetailFID: TStringField;
    cdsDestDetailFSeq: TIntegerField;
    cdsDestDetailFMaterialID: TStringField;
    cdsDestDetailFMeasureUnitID: TStringField;
    cdsDestDetailFAssistPropertyID: TStringField;
    cdsDestDetailFExpenseItemID: TStringField;
    cdsDestDetailFAccountID: TStringField;
    cdsDestDetailFRecievePayAmount: TFloatField;
    cdsDestDetailFRecievePayAmountLocal: TFloatField;
    cdsDestDetailFVerifyAmount: TFloatField;
    cdsDestDetailFVerifyAmountLocal: TFloatField;
    cdsDestDetailFUnVerifyAmount: TFloatField;
    cdsDestDetailFUnVerifyAmountLocal: TFloatField;
    cdsDestDetailFLockVerifyAmt: TFloatField;
    cdsDestDetailFLockVerifyAmtLocal: TFloatField;
    cdsDestDetailFLockUnVerifyAmt: TFloatField;
    cdsDestDetailFLockUnVerifyAmtLocal: TFloatField;
    cdsDestDetailFRemark: TWideStringField;
    cdsDestDetailFQuantity: TFloatField;
    cdsDestDetailFPrice: TFloatField;
    cdsDestDetailFTaxPrice: TFloatField;
    cdsDestDetailFActualPrice: TFloatField;
    cdsDestDetailFDiscountRate: TFloatField;
    cdsDestDetailFTaxRate: TFloatField;
    cdsDestDetailFTaxAmount: TFloatField;
    cdsDestDetailFTaxAmountLocal: TFloatField;
    cdsDestDetailFAmount: TFloatField;
    cdsDestDetailFAmountLocal: TFloatField;
    cdsDestDetailFBadAmout: TFloatField;
    cdsDestDetailFLocalBadAmout: TFloatField;
    cdsDestDetailFPreparedBadAmount: TFloatField;
    cdsDestDetailFPreparedBadAmountLocal: TFloatField;
    cdsDestDetailFParentID: TStringField;
    cdsDestDetailFArPrintBillID: TStringField;
    cdsDestDetailFArPrintBillEntryID: TStringField;
    cdsDestDetailFDiscountAmount: TFloatField;
    cdsDestDetailFDiscountAmountLocal: TFloatField;
    cdsDestDetailFSourceBillId: TStringField;
    cdsDestDetailFSourceBillEntryId: TStringField;
    cdsDestDetailFSourceBillAsstActID: TStringField;
    cdsDestDetailFHisUnVerifyAmount: TFloatField;
    cdsDestDetailFHisUnVerifyAmountLocal: TFloatField;
    cdsDestDetailFCoreBillTypeID: TStringField;
    cdsDestDetailFCoreBillId: TStringField;
    cdsDestDetailFCoreBillEntryId: TStringField;
    cdsDestDetailFCoreBillNumber: TWideStringField;
    cdsDestDetailFCoreBillEntrySeq: TIntegerField;
    cdsDestDetailFTrackNumber: TWideStringField;
    cdsDestDetailFAssistUnitID: TStringField;
    cdsDestDetailFAssistQty: TFloatField;
    cdsDestDetailFDiscountType: TIntegerField;
    cdsDestDetailFOppAccountID: TStringField;
    cdsDestDetailFWrittenOffBaseQty: TFloatField;
    cdsDestDetailFLocalWrittenOffAmount: TFloatField;
    cdsDestDetailFUnwriteOffBaseQty: TFloatField;
    cdsDestDetailFLocalUnwriteOffAmount: TFloatField;
    cdsDestDetailFInvoicedBaseQty: TFloatField;
    cdsDestDetailFInvoicedAmt: TFloatField;
    cdsDestDetailFBaseUnitID: TStringField;
    cdsDestDetailFBaseQty: TFloatField;
    cdsDestDetailFRealPrice: TFloatField;
    cdsDestDetailFIsInvoiced: TIntegerField;
    cdsDestDetailFIsPresent: TIntegerField;
    cdsDestDetailFInvoiceNumber: TWideStringField;
    cdsDestDetailFVerifyQty: TFloatField;
    cdsDestDetailFLockVerifyQty: TFloatField;
    cdsDestDetailFRowTypeId: TStringField;
    cdsDestDetailFMaterialName: TWideStringField;
    cdsDestDetailFOrderCustomerID: TStringField;
    cdsDestDetailFServiceCustomerID: TStringField;
    cdsDestDetailFRecAsstActTypeID: TStringField;
    cdsDestDetailFRecAsstActID: TStringField;
    cdsDestDetailFRecAsstActNumber: TWideStringField;
    cdsDestDetailFRecAsstActName_L1: TWideStringField;
    cdsDestDetailFRecAsstActName_L2: TWideStringField;
    cdsDestDetailFRecAsstActName_L3: TWideStringField;
    cdsDestDetailFApportionAmtLocal: TFloatField;
    cdsDestDetailFOrdCustNumber: TWideStringField;
    cdsDestDetailFOrdCustName: TWideStringField;
    cdsDestDetailFSerCustNumber: TWideStringField;
    cdsDestDetailFSerCustName: TWideStringField;
    cdsDestDetailFContractNumber: TWideStringField;
    cdsDestDetailFContractEntrySeq: TIntegerField;
    cdsDestDetailFContractBillID: TStringField;
    cdsDestDetailFContractEntryID: TStringField;
    cdsDestDetailFRecSendOrgUnitID: TStringField;
    cdsDestDetailFProjectID: TStringField;
    cdsDestDetailFTrackNumberzcID: TStringField;
    cdsDestDetailFReversedBaseQty: TFloatField;
    cdsDestDetailFCompanyID: TStringField;
    cdsDestDetailFBILLDATE: TDateTimeField;
    cdsDestDetailFLot: TWideStringField;
    cdsDestDetailFIsFullWriteOff: TIntegerField;
    cdsDestPlanFID: TStringField;
    cdsDestPlanFSeq: TIntegerField;
    cdsDestPlanFRecievePayDate: TDateTimeField;
    cdsDestPlanFRecievePayAmount: TFloatField;
    cdsDestPlanFRecievePayAmountLocal: TFloatField;
    cdsDestPlanFVerifyAmount: TFloatField;
    cdsDestPlanFVerifyAmountLocal: TFloatField;
    cdsDestPlanFRemark: TWideStringField;
    cdsDestPlanFParentID: TStringField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure ToARBill(cdsSrcs: array of TClientDataSet);
  public
    { Public declarations }
    procedure Transfer(cdsSrcs: array of TClientDataSet);override;
    procedure OpenDestBillFrm;override;
  end;

var
  RepairWoToArBillFrm: TRepairWoToArBillFrm;
  destBillTypeId:string;
implementation

{$R *.dfm}
uses
  FrmCliDM,uUtilsClass,DateUtils,Pub_Fun;

procedure TRepairWoToArBillFrm.Transfer(cdsSrcs: array of TClientDataSet);
var
  cdsDests: array[0..2] of TClientDataSet;
  destTableNames: array[0..2] of string;
begin
  inherited;
  destBillTypeId := '510b6503-0105-1000-e000-0117c0a812fd463ED552';
  cdsDests[0] := cdsDestMaster;
  cdsDests[1] := cdsDestDetail;
  cdsDests[2] := cdsDestPlan;
  destTableNames[0] := 'T_AR_OtherBill';
  destTableNames[1] := 'T_AR_OtherBillentry';
  destTableNames[2] := 'T_AR_OtherBillPlan';

  //转单代码
   ToARBill(cdsSrcs);
  //保存单据
  SaveDest(cdsDests,destTableNames);
  if IsOpenDestBill then
    OpenDestBillFrm
end;
procedure TRepairWoToArBillFrm.OpenDestBillFrm;
begin
  inherited;
  //打开目标单据代码
  
end;

procedure TRepairWoToArBillFrm.ToARBill(cdsSrcs: array of TClientDataSet);
var
   sql,errmsg:string;
   codeRuleUtils: TCodeRuleUtilsCls;
   cdsSrcMaster,cdsSrcDetail,cdsTmp:TClientDataSet;
   seq:integer;
   qty,price,taxprice,taxrate,tax,amount,taxamount,discountRate:double;
   redBill: boolean;
   customerID,customerNum,customerName_l1,customerName_l2,customerName_l3: string;
   totalAmount,totaltax,totaltaxamount:double;
begin

  try
    codeRuleUtils := TCodeRuleUtilsCls.Create;
    cdsTmp := TClientDataSet.Create(nil);
    cdsSrcMaster := cdsSrcs[0];
    cdsSrcDetail := cdsSrcs[1];
    //转单代码

    //表头
    cdsDestMaster.Append;
    cdsDestMaster.FieldByName('FID').AsVariant := CliDM.GetEASSID('CC3E933B');
    cdsDestMaster.FieldByName('FCreatorID').AsVariant := UserInfo.LoginUser_FID;
    cdsDestMaster.FieldByName('FCreateTime').AsVariant := CliDM.Get_ServerTime;
    cdsDestMaster.FieldByName('FLastUpdateUserID').AsVariant := UserInfo.LoginUser_FID;
    cdsDestMaster.FieldByName('FLastUpdateTime').AsVariant := CliDM.Get_ServerTime;
    cdsDestMaster.FieldByName('FControlUnitID').AsVariant := UserInfo.Controlunitid;
    cdsDestMaster.FieldByName('FNumber').AsVariant := codeRuleUtils.getNumber(destBillTypeId,UserInfo.Branch_ID,'AR');
    cdsDestMaster.FieldByName('FBizDate').AsVariant := CliDM.Get_ServerTime;
    //cdsDestMaster.FieldByName('FHandlerID').AsVariant := '';
    //cdsDestMaster.FieldByName('FDescription').AsVariant := '';
    //cdsDestMaster.FieldByName('FHasEffected').AsVariant := '';
   // cdsDestMaster.FieldByName('FAuditorID').AsVariant := '';
   // cdsDestMaster.FieldByName('FSourceBillID').AsVariant := '';
   // cdsDestMaster.FieldByName('FSourceFunction').AsVariant := '';
    cdsDestMaster.FieldByName('FCompanyID').AsVariant := UserInfo.Branch_ID;
    cdsDestMaster.FieldByName('FBillDate').AsVariant := CliDM.Get_ServerTime;
    cdsDestMaster.FieldByName('FAsstActTypeID').AsVariant := 'YW3xsAEJEADgAAUWwKgTB0c4VZA='; //客户
    sql := Format('select b.FID,b.FNumber,b.FName_l1,b.FName_l2,b.FName_l3 from CT_RS_CustomerAccount a ' +
          'left join T_BD_Customer b on b.FID=a.CFFinCustomerID ' +
          'where a.FID=%s',[QuotedStr(cdsSrcMaster.FieldByName('CFCustomerAccountI').AsString)]);
    if CliDM.Get_OpenSQL(cdsTmp,sql,errmsg) then
    begin
      customerId := cdsTmp.FieldByName('FID').AsString;
      customerNum := cdsTmp.FieldByName('FNumber').AsString;
      customerName_l1 := cdsTmp.FieldByName('FName_l1').AsString;
      customerName_l2 := cdsTmp.FieldByName('FName_l2').AsString;
      customerName_l3 := cdsTmp.FieldByName('FName_l3').AsString;
    end;
    if customerId = '' then
    begin
      sql := Format('select b.FID,b.FNumber,b.FName_l1,b.FName_l2,b.FName_l3 from T_ATS_Customer a ' +
          'left join T_BD_Customer b on b.FID=a.FStdCustomerID ' +
          'where a.FID=%s',[QuotedStr(cdsSrcMaster.FieldByName('FCustomerID').AsString)]);
      if CliDM.Get_OpenSQL(cdsTmp,sql,errmsg) then
      begin
         customerId := cdsTmp.FieldByName('FID').AsString;
         customerNum := cdsTmp.FieldByName('FNumber').AsString;
         customerName_l1 := cdsTmp.FieldByName('FName_l1').AsString;
         customerName_l2 := cdsTmp.FieldByName('FName_l2').AsString;
         customerName_l3 := cdsTmp.FieldByName('FName_l3').AsString;

      end;
    end;
    cdsDestMaster.FieldByName('FAsstActID').AsVariant := customerID;
    cdsDestMaster.FieldByName('FAsstActNumber').AsVariant := customerNum;
    cdsDestMaster.FieldByName('FAsstActName_L1').AsVariant := customerName_l1;
    cdsDestMaster.FieldByName('FAsstActName_L2').AsVariant := customerName_l2;
    cdsDestMaster.FieldByName('FAsstActName_L3').AsVariant := customerName_l3;
    cdsDestMaster.FieldByName('FBillStatus').AsVariant := 2;
    cdsDestMaster.FieldByName('FCurrencyID').AsVariant := 'dfd38d11-00fd-1000-e000-1ebdc0a8100dDEB58FDC';
    cdsDestMaster.FieldByName('FAdminOrgUnitID').AsVariant := UserInfo.Branch_ID;
    cdsDestMaster.FieldByName('FPersonID').AsVariant := cdsSrcMaster.FieldByName('FSAID').AsString;
    cdsDestMaster.FieldByName('FExchangeRate').AsVariant := 1;
   // cdsDestMaster.FieldByName('FSettleTypeID').AsVariant := '';

   // cdsDestMaster.FieldByName('FAbstractName').AsVariant := '';
    cdsDestMaster.FieldByName('FVerifyAmount').AsVariant := 0;
    cdsDestMaster.FieldByName('FVerifyAmountLocal').AsVariant := 0;

  //  cdsDestMaster.FieldByName('FAuditDate').AsVariant := '';
   // cdsDestMaster.FieldByName('FVoucherID').AsVariant := '';
    cdsDestMaster.FieldByName('FFiVouchered').AsVariant := 0;
    cdsDestMaster.FieldByName('FSourceBillType').AsVariant := -1;
  //  cdsDestMaster.FieldByName('FCashDiscountID').AsVariant := '';
    cdsDestMaster.FieldByName('FIsReversed').AsVariant := 0;
    cdsDestMaster.FieldByName('FIsReverseBill').AsVariant := 0;
    cdsDestMaster.FieldByName('FIsInTax').AsVariant := 1;
  //  cdsDestMaster.FieldByName('FAccountantID').AsVariant := '';
    cdsDestMaster.FieldByName('FIsTransBill').AsVariant := 0;
   // cdsDestMaster.FieldByName('FSaleOrgID').AsVariant := '';
    cdsDestMaster.FieldByName('FTotalBadAmount').AsVariant := 0;
    cdsDestMaster.FieldByName('FTotalBadAmountLocal').AsVariant := 0;
    cdsDestMaster.FieldByName('FBillType').AsVariant := 103; //销售费用发票
    cdsDestMaster.FieldByName('FIsImportBill').AsVariant := 0;
   // cdsDestMaster.FieldByName('FVoucherNumber').AsVariant := '';
    cdsDestMaster.FieldByName('FBizTypeID').AsVariant := 'd8e80652-010e-1000-e000-04c5c0a812202407435C';  //普通销售
    cdsDestMaster.FieldByName('FPaymentTypeID').AsVariant := '91f078d7-fb90-4827-83e2-3538237b67a06BCA0AB5';   // 赊销
 //   cdsDestMaster.FieldByName('FSaleGroupID').AsVariant := '';
    cdsDestMaster.FieldByName('FLastExhangeRate').AsVariant := 1;

    cdsDestMaster.FieldByName('FIsExchanged').AsVariant := 0;
    cdsDestMaster.FieldByName('FIsInitializeBill').AsVariant := 0;
 //   cdsDestMaster.FieldByName('FVoucherTypeID').AsVariant := '';
    cdsDestMaster.FieldByName('FRedBlueType').AsVariant := 0;
    cdsDestMaster.FieldByName('FYear').AsVariant := YearOf(CliDm.Get_ServerTime);
    cdsDestMaster.FieldByName('FPeriod').AsVariant := MonthOf(CliDm.Get_ServerTime);
    cdsDestMaster.FieldByName('FIsSCMBill').AsVariant := 0;
    cdsDestMaster.FieldByName('FIsPriceWithoutTax').AsVariant := 1;
    cdsDestMaster.FieldByName('FIsNeedVoucher').AsVariant := 1;
    cdsDestMaster.FieldByName('FIsAllowanceBill').AsVariant := 0;
    cdsDestMaster.FieldByName('FIsAppointVoucher').AsVariant := 0;
    cdsDestMaster.FieldByName('FPriceSource').AsVariant := 101; //按核心单据取单价
   // cdsDestMaster.FieldByName('FPayConditionId').AsVariant := '';
    cdsDestMaster.FieldByName('FIsImpFromGL').AsVariant := 0;
   // cdsDestMaster.FieldByName('FAdminOrgUnitId_SourceBill').AsVariant := '';
    //cdsDestMaster.FieldByName('FPersonID_SourceBill').AsVariant := '';
   // cdsDestMaster.FieldByName('FAsstActID_SourceBill').AsVariant := '';
   // cdsDestMaster.FieldByName('FBillDate_SourceBill').AsVariant := '';
   // cdsDestMaster.FieldByName('FAsstActTypeID_SourceBill').AsVariant := '';
    cdsDestMaster.FieldByName('FisSplitBill').AsVariant := 0;
    cdsDestMaster.FieldByName('FIsGenCoopBill').AsVariant := 0;
    cdsDestMaster.FieldByName('FisCoopBuild').AsVariant := 0;
   // cdsDestMaster.FieldByName('FContractNumber').AsVariant := '';
   // cdsDestMaster.FieldByName('FBillType_SourceBill').AsVariant := '';
   // cdsDestMaster.FieldByName('FIsBizBill').AsVariant := 0;
   // cdsDestMaster.FieldByName('FSYNbillType').AsVariant := '';
   // cdsDestMaster.FieldByName('FSYNbillNumber').AsVariant := '';
   // cdsDestMaster.FieldByName('FSYNBillID').AsVariant := '';
   // cdsDestMaster.FieldByName('FSYNBillEntryID').AsVariant := '';
   // cdsDestMaster.FieldByName('FCostCenterID').AsVariant := '';
    cdsDestMaster.FieldByName('FBillRelationOption').AsVariant := 0;



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

      totaltax := totaltax + tax;
      totalAmount := totalamount + amount;
      totaltaxamount := totaltaxamount + taxamount;

	    cdsDestDetail.FieldByName('FID').AsVariant := CliDM.GetEASSID('CC3E933B');
      cdsDestDetail.FieldByName('FSeq').AsVariant := seq;
    //  cdsDestDetail.FieldByName('FMaterialID').AsVariant := '';
    //  cdsDestDetail.FieldByName('FMeasureUnitID').AsVariant := '';
    //  cdsDestDetail.FieldByName('FAssistPropertyID').AsVariant := '';
      cdsDestDetail.FieldByName('FExpenseItemID').AsVariant := 'ZePHdOyeSYmjXr5Mbdv/uWdegHo='; //维修费
    //  cdsDestDetail.FieldByName('FAccountID').AsVariant := '';
      cdsDestDetail.FieldByName('FRecievePayAmount').AsVariant := taxamount;
      cdsDestDetail.FieldByName('FRecievePayAmountLocal').AsVariant := taxamount;
      cdsDestDetail.FieldByName('FVerifyAmount').AsVariant := 0;
      cdsDestDetail.FieldByName('FVerifyAmountLocal').AsVariant := 0;
      cdsDestDetail.FieldByName('FUnVerifyAmount').AsVariant := taxamount;
      cdsDestDetail.FieldByName('FUnVerifyAmountLocal').AsVariant :=taxamount;
      cdsDestDetail.FieldByName('FLockVerifyAmt').AsVariant := 0;
      cdsDestDetail.FieldByName('FLockVerifyAmtLocal').AsVariant := 0;
      cdsDestDetail.FieldByName('FLockUnVerifyAmt').AsVariant := taxamount;
      cdsDestDetail.FieldByName('FLockUnVerifyAmtLocal').AsVariant := taxamount;
    //  cdsDestDetail.FieldByName('FRemark').AsVariant := '';
      cdsDestDetail.FieldByName('FQuantity').AsVariant := qty;
      cdsDestDetail.FieldByName('FPrice').AsVariant := price;
      cdsDestDetail.FieldByName('FTaxPrice').AsVariant := taxprice;
      cdsDestDetail.FieldByName('FActualPrice').AsVariant := taxprice;
      cdsDestDetail.FieldByName('FDiscountRate').AsVariant := 0;
      cdsDestDetail.FieldByName('FTaxRate').AsVariant := 17;
      cdsDestDetail.FieldByName('FTaxAmount').AsVariant := tax;
      cdsDestDetail.FieldByName('FTaxAmountLocal').AsVariant := tax;
      cdsDestDetail.FieldByName('FAmount').AsVariant := amount;
      cdsDestDetail.FieldByName('FAmountLocal').AsVariant := amount;
      cdsDestDetail.FieldByName('FBadAmout').AsVariant := 0;
      cdsDestDetail.FieldByName('FLocalBadAmout').AsVariant := 0;
      cdsDestDetail.FieldByName('FPreparedBadAmount').AsVariant := 0;
      cdsDestDetail.FieldByName('FPreparedBadAmountLocal').AsVariant := 0;
      cdsDestDetail.FieldByName('FParentID').AsVariant := cdsDestMaster.FieldByName('FID').AsString;
    //  cdsDestDetail.FieldByName('FArPrintBillID').AsVariant := '';
    //  cdsDestDetail.FieldByName('FArPrintBillEntryID').AsVariant := '';
      cdsDestDetail.FieldByName('FDiscountAmount').AsVariant := 0;
      cdsDestDetail.FieldByName('FDiscountAmountLocal').AsVariant := 0;
      cdsDestDetail.FieldByName('FSourceBillId').AsVariant := cdsSrcMaster.FieldByName('FID').AsString;
      cdsDestDetail.FieldByName('FSourceBillEntryId').AsVariant := cdsSrcDetail.FieldByName('FID').AsString;
    //  cdsDestDetail.FieldByName('FSourceBillAsstActID').AsVariant := '';
      cdsDestDetail.FieldByName('FHisUnVerifyAmount').AsVariant := 0;
      cdsDestDetail.FieldByName('FHisUnVerifyAmountLocal').AsVariant := 0;
      cdsDestDetail.FieldByName('FCoreBillTypeID').AsVariant := 'HM+nytJ+S7izjFHd2/madkY+1VI='; //维修工单
      cdsDestDetail.FieldByName('FCoreBillId').AsVariant := cdsSrcMaster.FieldByName('FID').AsString;
      cdsDestDetail.FieldByName('FCoreBillEntryId').AsVariant := cdsSrcDetail.FieldByName('FID').AsString;
      cdsDestDetail.FieldByName('FCoreBillNumber').AsVariant := cdsSrcMaster.FieldByName('FNumber').AsString;
      cdsDestDetail.FieldByName('FCoreBillEntrySeq').AsVariant := cdsSrcDetail.FieldByName('FSeq').AsString;
    //  cdsDestDetail.FieldByName('FTrackNumber').AsVariant := '';
    //  cdsDestDetail.FieldByName('FAssistUnitID').AsVariant := '';
      cdsDestDetail.FieldByName('FAssistQty').AsVariant := 0;
      cdsDestDetail.FieldByName('FDiscountType').AsVariant := -1;
     // cdsDestDetail.FieldByName('FOppAccountID').AsVariant := '';
      cdsDestDetail.FieldByName('FWrittenOffBaseQty').AsVariant := 0;
      cdsDestDetail.FieldByName('FLocalWrittenOffAmount').AsVariant := 0;
      cdsDestDetail.FieldByName('FUnwriteOffBaseQty').AsVariant := 0;
      cdsDestDetail.FieldByName('FLocalUnwriteOffAmount').AsVariant := amount;
      cdsDestDetail.FieldByName('FInvoicedBaseQty').AsVariant := 0;
      cdsDestDetail.FieldByName('FInvoicedAmt').AsVariant := 0;
     // cdsDestDetail.FieldByName('FBaseUnitID').AsVariant := '';
      cdsDestDetail.FieldByName('FBaseQty').AsVariant := 0;
      cdsDestDetail.FieldByName('FRealPrice').AsVariant := price;
      cdsDestDetail.FieldByName('FIsInvoiced').AsVariant := 0;
      cdsDestDetail.FieldByName('FIsPresent').AsVariant := 0;
    //  cdsDestDetail.FieldByName('FInvoiceNumber').AsVariant := '';
      cdsDestDetail.FieldByName('FVerifyQty').AsVariant := 0;
      cdsDestDetail.FieldByName('FLockVerifyQty').AsVariant := 0;
     // cdsDestDetail.FieldByName('FRowTypeId').AsVariant := '';
     // cdsDestDetail.FieldByName('FMaterialName').AsVariant := '';
     // cdsDestDetail.FieldByName('FOrderCustomerID').AsVariant := '';
     // cdsDestDetail.FieldByName('FServiceCustomerID').AsVariant := '';
     // cdsDestDetail.FieldByName('FRecAsstActTypeID').AsVariant := '';
     // cdsDestDetail.FieldByName('FRecAsstActID').AsVariant := '';
     // cdsDestDetail.FieldByName('FRecAsstActNumber').AsVariant := '';
     // cdsDestDetail.FieldByName('FRecAsstActName_L1').AsVariant := '';
    //  cdsDestDetail.FieldByName('FRecAsstActName_L2').AsVariant := '';
    //  cdsDestDetail.FieldByName('FRecAsstActName_L3').AsVariant := '';
      cdsDestDetail.FieldByName('FApportionAmtLocal').AsVariant := 0;
    //  cdsDestDetail.FieldByName('FOrdCustNumber').AsVariant := '';
    //  cdsDestDetail.FieldByName('FOrdCustName').AsVariant := '';
    //  cdsDestDetail.FieldByName('FSerCustNumber').AsVariant := '';
     // cdsDestDetail.FieldByName('FSerCustName').AsVariant := '';
    //  cdsDestDetail.FieldByName('FContractNumber').AsVariant := '';
      cdsDestDetail.FieldByName('FContractEntrySeq').AsVariant := 0;
    //  cdsDestDetail.FieldByName('FContractBillID').AsVariant := '';
    //  cdsDestDetail.FieldByName('FContractEntryID').AsVariant := '';
   //   cdsDestDetail.FieldByName('FRecSendOrgUnitID').AsVariant := '';
   //   cdsDestDetail.FieldByName('FProjectID').AsVariant := '';
    //  cdsDestDetail.FieldByName('FTrackNumberzcID').AsVariant := '';
      cdsDestDetail.FieldByName('FReversedBaseQty').AsVariant := 0;
      cdsDestDetail.FieldByName('FCompanyID').AsVariant := UserInfo.Branch_ID;
      cdsDestDetail.FieldByName('FBILLDATE').AsVariant := CliDM.Get_ServerTime;
     // cdsDestDetail.FieldByName('FLot').AsVariant := '';
      cdsDestDetail.FieldByName('FIsFullWriteOff').AsVariant := 0;
      cdsDestDetail.Append;

      cdsSrcDetail.Next;
    end;

    cdsDestDetail.Post;

    cdsDestMaster.FieldByName('FAmount').AsVariant := totaltaxamount;
    cdsDestMaster.FieldByName('FAmountLocal').AsVariant := totaltaxamount;
    cdsDestMaster.FieldByName('FUnVerifyAmount').AsVariant := totaltaxamount;
    cdsDestMaster.FieldByName('FUnVerifyAmountLocal').AsVariant := totaltaxamount;

    cdsDestMaster.FieldByName('FTotalAmount').AsVariant := totalAmount;
    cdsDestMaster.FieldByName('FTotalTax').AsVariant :=totaltax;
    cdsDestMaster.FieldByName('FTotalTaxAmount').AsVariant := totaltaxamount;
    cdsDestMaster.Post;

    //收款计划
    cdsDestPlan.FieldByName('FID').AsVariant := CliDM.GetEASSID('1EE05CBC');
    cdsDestPlan.FieldByName('FSeq').AsVariant := 1;
    cdsDestPlan.FieldByName('FRecievePayDate').AsVariant := CliDM.Get_ServerTime;
    cdsDestPlan.FieldByName('FRecievePayAmount').AsVariant := totaltaxamount;
    cdsDestPlan.FieldByName('FRecievePayAmountLocal').AsVariant := totaltaxamount;
    cdsDestPlan.FieldByName('FVerifyAmount').AsVariant := 0;
    cdsDestPlan.FieldByName('FVerifyAmountLocal').AsVariant := 0;
 //   cdsDestPlan.FieldByName('FRemark').AsVariant := '';
    cdsDestPlan.FieldByName('FParentID').AsVariant := cdsDestMaster.FieldByName('FID').AsString;

    cdsDestPlan.Post;
  finally
    if cdsTmp <> nil then
      cdsTmp.Free;

  end;
end;


procedure TRepairWoToArBillFrm.FormCreate(Sender: TObject);
var
    OpenTables: array[0..2] of string;
    _cds: array[0..2] of TClientDataSet;
    ErrMsg : string;
    strsql : string;
begin
  strsql := 'select * from T_AR_OtherBill where 1 = 2';
  OpenTables[0] := strsql;
  strsql := 'select * from T_AR_OtherBillentry where 1 = 2';
  OpenTables[1] := strsql;
  strsql := 'select * from T_AR_OtherBillPlan where 1 = 2';
  _cds[0] := cdsDestMaster;
  _cds[1] := cdsDestDetail;
  _cds[2] := cdsDestPlan;

  try
    if not CliDM.Get_OpenClients_E('GA002',_cds,OpenTables,ErrMsg) then
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
