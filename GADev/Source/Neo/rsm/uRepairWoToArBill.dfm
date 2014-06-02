inherited RepairWoToArBillFrm: TRepairWoToArBillFrm
  Caption = #32500#20462#24037#21333#36716#24212#25910#21333
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited dsDestMaster: TDataSource
    Left = 320
    Top = 24
  end
  inherited dsDestDetail: TDataSource
    Left = 312
    Top = 96
  end
  inherited cdsDestDetail: TClientDataSet
    Left = 400
    Top = 88
    object cdsDestDetailFID: TStringField
      FieldName = 'FID'
      Size = 44
    end
    object cdsDestDetailFSeq: TIntegerField
      FieldName = 'FSeq'
    end
    object cdsDestDetailFMaterialID: TStringField
      FieldName = 'FMaterialID'
      Size = 44
    end
    object cdsDestDetailFMeasureUnitID: TStringField
      FieldName = 'FMeasureUnitID'
      Size = 44
    end
    object cdsDestDetailFAssistPropertyID: TStringField
      FieldName = 'FAssistPropertyID'
      Size = 44
    end
    object cdsDestDetailFExpenseItemID: TStringField
      FieldName = 'FExpenseItemID'
      Size = 44
    end
    object cdsDestDetailFAccountID: TStringField
      FieldName = 'FAccountID'
      Size = 44
    end
    object cdsDestDetailFRecievePayAmount: TFloatField
      FieldName = 'FRecievePayAmount'
    end
    object cdsDestDetailFRecievePayAmountLocal: TFloatField
      FieldName = 'FRecievePayAmountLocal'
    end
    object cdsDestDetailFVerifyAmount: TFloatField
      FieldName = 'FVerifyAmount'
    end
    object cdsDestDetailFVerifyAmountLocal: TFloatField
      FieldName = 'FVerifyAmountLocal'
    end
    object cdsDestDetailFUnVerifyAmount: TFloatField
      FieldName = 'FUnVerifyAmount'
    end
    object cdsDestDetailFUnVerifyAmountLocal: TFloatField
      FieldName = 'FUnVerifyAmountLocal'
    end
    object cdsDestDetailFLockVerifyAmt: TFloatField
      FieldName = 'FLockVerifyAmt'
    end
    object cdsDestDetailFLockVerifyAmtLocal: TFloatField
      FieldName = 'FLockVerifyAmtLocal'
    end
    object cdsDestDetailFLockUnVerifyAmt: TFloatField
      FieldName = 'FLockUnVerifyAmt'
    end
    object cdsDestDetailFLockUnVerifyAmtLocal: TFloatField
      FieldName = 'FLockUnVerifyAmtLocal'
    end
    object cdsDestDetailFRemark: TWideStringField
      FieldName = 'FRemark'
      Size = 255
    end
    object cdsDestDetailFQuantity: TFloatField
      FieldName = 'FQuantity'
    end
    object cdsDestDetailFPrice: TFloatField
      FieldName = 'FPrice'
    end
    object cdsDestDetailFTaxPrice: TFloatField
      FieldName = 'FTaxPrice'
    end
    object cdsDestDetailFActualPrice: TFloatField
      FieldName = 'FActualPrice'
    end
    object cdsDestDetailFDiscountRate: TFloatField
      FieldName = 'FDiscountRate'
    end
    object cdsDestDetailFTaxRate: TFloatField
      FieldName = 'FTaxRate'
    end
    object cdsDestDetailFTaxAmount: TFloatField
      FieldName = 'FTaxAmount'
    end
    object cdsDestDetailFTaxAmountLocal: TFloatField
      FieldName = 'FTaxAmountLocal'
    end
    object cdsDestDetailFAmount: TFloatField
      FieldName = 'FAmount'
    end
    object cdsDestDetailFAmountLocal: TFloatField
      FieldName = 'FAmountLocal'
    end
    object cdsDestDetailFBadAmout: TFloatField
      FieldName = 'FBadAmout'
    end
    object cdsDestDetailFLocalBadAmout: TFloatField
      FieldName = 'FLocalBadAmout'
    end
    object cdsDestDetailFPreparedBadAmount: TFloatField
      FieldName = 'FPreparedBadAmount'
    end
    object cdsDestDetailFPreparedBadAmountLocal: TFloatField
      FieldName = 'FPreparedBadAmountLocal'
    end
    object cdsDestDetailFParentID: TStringField
      FieldName = 'FParentID'
      Size = 44
    end
    object cdsDestDetailFArPrintBillID: TStringField
      FieldName = 'FArPrintBillID'
      Size = 44
    end
    object cdsDestDetailFArPrintBillEntryID: TStringField
      FieldName = 'FArPrintBillEntryID'
      Size = 44
    end
    object cdsDestDetailFDiscountAmount: TFloatField
      FieldName = 'FDiscountAmount'
    end
    object cdsDestDetailFDiscountAmountLocal: TFloatField
      FieldName = 'FDiscountAmountLocal'
    end
    object cdsDestDetailFSourceBillId: TStringField
      FieldName = 'FSourceBillId'
      Size = 44
    end
    object cdsDestDetailFSourceBillEntryId: TStringField
      FieldName = 'FSourceBillEntryId'
      Size = 44
    end
    object cdsDestDetailFSourceBillAsstActID: TStringField
      FieldName = 'FSourceBillAsstActID'
      Size = 44
    end
    object cdsDestDetailFHisUnVerifyAmount: TFloatField
      FieldName = 'FHisUnVerifyAmount'
    end
    object cdsDestDetailFHisUnVerifyAmountLocal: TFloatField
      FieldName = 'FHisUnVerifyAmountLocal'
    end
    object cdsDestDetailFCoreBillTypeID: TStringField
      FieldName = 'FCoreBillTypeID'
      Size = 44
    end
    object cdsDestDetailFCoreBillId: TStringField
      FieldName = 'FCoreBillId'
      Size = 44
    end
    object cdsDestDetailFCoreBillEntryId: TStringField
      FieldName = 'FCoreBillEntryId'
      Size = 44
    end
    object cdsDestDetailFCoreBillNumber: TWideStringField
      FieldName = 'FCoreBillNumber'
      Size = 80
    end
    object cdsDestDetailFCoreBillEntrySeq: TIntegerField
      FieldName = 'FCoreBillEntrySeq'
    end
    object cdsDestDetailFTrackNumber: TWideStringField
      FieldName = 'FTrackNumber'
      Size = 80
    end
    object cdsDestDetailFAssistUnitID: TStringField
      FieldName = 'FAssistUnitID'
      Size = 44
    end
    object cdsDestDetailFAssistQty: TFloatField
      FieldName = 'FAssistQty'
    end
    object cdsDestDetailFDiscountType: TIntegerField
      FieldName = 'FDiscountType'
    end
    object cdsDestDetailFOppAccountID: TStringField
      FieldName = 'FOppAccountID'
      Size = 44
    end
    object cdsDestDetailFWrittenOffBaseQty: TFloatField
      FieldName = 'FWrittenOffBaseQty'
    end
    object cdsDestDetailFLocalWrittenOffAmount: TFloatField
      FieldName = 'FLocalWrittenOffAmount'
    end
    object cdsDestDetailFUnwriteOffBaseQty: TFloatField
      FieldName = 'FUnwriteOffBaseQty'
    end
    object cdsDestDetailFLocalUnwriteOffAmount: TFloatField
      FieldName = 'FLocalUnwriteOffAmount'
    end
    object cdsDestDetailFInvoicedBaseQty: TFloatField
      FieldName = 'FInvoicedBaseQty'
    end
    object cdsDestDetailFInvoicedAmt: TFloatField
      FieldName = 'FInvoicedAmt'
    end
    object cdsDestDetailFBaseUnitID: TStringField
      FieldName = 'FBaseUnitID'
      Size = 44
    end
    object cdsDestDetailFBaseQty: TFloatField
      FieldName = 'FBaseQty'
    end
    object cdsDestDetailFRealPrice: TFloatField
      FieldName = 'FRealPrice'
    end
    object cdsDestDetailFIsInvoiced: TIntegerField
      FieldName = 'FIsInvoiced'
    end
    object cdsDestDetailFIsPresent: TIntegerField
      FieldName = 'FIsPresent'
    end
    object cdsDestDetailFInvoiceNumber: TWideStringField
      FieldName = 'FInvoiceNumber'
      Size = 255
    end
    object cdsDestDetailFVerifyQty: TFloatField
      FieldName = 'FVerifyQty'
    end
    object cdsDestDetailFLockVerifyQty: TFloatField
      FieldName = 'FLockVerifyQty'
    end
    object cdsDestDetailFRowTypeId: TStringField
      FieldName = 'FRowTypeId'
      Size = 44
    end
    object cdsDestDetailFMaterialName: TWideStringField
      FieldName = 'FMaterialName'
      Size = 255
    end
    object cdsDestDetailFOrderCustomerID: TStringField
      FieldName = 'FOrderCustomerID'
      Size = 44
    end
    object cdsDestDetailFServiceCustomerID: TStringField
      FieldName = 'FServiceCustomerID'
      Size = 44
    end
    object cdsDestDetailFRecAsstActTypeID: TStringField
      FieldName = 'FRecAsstActTypeID'
      Size = 44
    end
    object cdsDestDetailFRecAsstActID: TStringField
      FieldName = 'FRecAsstActID'
      Size = 44
    end
    object cdsDestDetailFRecAsstActNumber: TWideStringField
      FieldName = 'FRecAsstActNumber'
      Size = 80
    end
    object cdsDestDetailFRecAsstActName_L1: TWideStringField
      FieldName = 'FRecAsstActName_L1'
      Size = 100
    end
    object cdsDestDetailFRecAsstActName_L2: TWideStringField
      FieldName = 'FRecAsstActName_L2'
      Size = 100
    end
    object cdsDestDetailFRecAsstActName_L3: TWideStringField
      FieldName = 'FRecAsstActName_L3'
      Size = 100
    end
    object cdsDestDetailFApportionAmtLocal: TFloatField
      FieldName = 'FApportionAmtLocal'
    end
    object cdsDestDetailFOrdCustNumber: TWideStringField
      FieldName = 'FOrdCustNumber'
      Size = 80
    end
    object cdsDestDetailFOrdCustName: TWideStringField
      FieldName = 'FOrdCustName'
      Size = 100
    end
    object cdsDestDetailFSerCustNumber: TWideStringField
      FieldName = 'FSerCustNumber'
      Size = 80
    end
    object cdsDestDetailFSerCustName: TWideStringField
      FieldName = 'FSerCustName'
      Size = 100
    end
    object cdsDestDetailFContractNumber: TWideStringField
      FieldName = 'FContractNumber'
      Size = 80
    end
    object cdsDestDetailFContractEntrySeq: TIntegerField
      FieldName = 'FContractEntrySeq'
    end
    object cdsDestDetailFContractBillID: TStringField
      FieldName = 'FContractBillID'
      Size = 44
    end
    object cdsDestDetailFContractEntryID: TStringField
      FieldName = 'FContractEntryID'
      Size = 44
    end
    object cdsDestDetailFRecSendOrgUnitID: TStringField
      FieldName = 'FRecSendOrgUnitID'
      Size = 44
    end
    object cdsDestDetailFProjectID: TStringField
      FieldName = 'FProjectID'
      Size = 44
    end
    object cdsDestDetailFTrackNumberzcID: TStringField
      FieldName = 'FTrackNumberzcID'
      Size = 44
    end
    object cdsDestDetailFReversedBaseQty: TFloatField
      FieldName = 'FReversedBaseQty'
    end
    object cdsDestDetailFCompanyID: TStringField
      FieldName = 'FCompanyID'
      Size = 44
    end
    object cdsDestDetailFBILLDATE: TDateTimeField
      FieldName = 'FBILLDATE'
    end
    object cdsDestDetailFLot: TWideStringField
      FieldName = 'FLot'
      Size = 80
    end
    object cdsDestDetailFIsFullWriteOff: TIntegerField
      FieldName = 'FIsFullWriteOff'
    end
  end
  inherited cdsDestMaster: TClientDataSet
    Left = 400
    Top = 24
    object cdsDestMasterFID: TStringField
      FieldName = 'FID'
      Size = 44
    end
    object cdsDestMasterFCreatorID: TStringField
      FieldName = 'FCreatorID'
      Size = 44
    end
    object cdsDestMasterFCreateTime: TDateTimeField
      FieldName = 'FCreateTime'
    end
    object cdsDestMasterFLastUpdateUserID: TStringField
      FieldName = 'FLastUpdateUserID'
      Size = 44
    end
    object cdsDestMasterFLastUpdateTime: TDateTimeField
      FieldName = 'FLastUpdateTime'
    end
    object cdsDestMasterFControlUnitID: TStringField
      FieldName = 'FControlUnitID'
      Size = 44
    end
    object cdsDestMasterFNumber: TWideStringField
      FieldName = 'FNumber'
      Size = 80
    end
    object cdsDestMasterFBizDate: TDateTimeField
      FieldName = 'FBizDate'
    end
    object cdsDestMasterFHandlerID: TStringField
      FieldName = 'FHandlerID'
      Size = 44
    end
    object cdsDestMasterFDescription: TWideStringField
      FieldName = 'FDescription'
      Size = 200
    end
    object cdsDestMasterFHasEffected: TIntegerField
      FieldName = 'FHasEffected'
    end
    object cdsDestMasterFAuditorID: TStringField
      FieldName = 'FAuditorID'
      Size = 44
    end
    object cdsDestMasterFSourceBillID: TStringField
      FieldName = 'FSourceBillID'
      Size = 44
    end
    object cdsDestMasterFSourceFunction: TWideStringField
      FieldName = 'FSourceFunction'
      Size = 80
    end
    object cdsDestMasterFCompanyID: TStringField
      FieldName = 'FCompanyID'
      Size = 44
    end
    object cdsDestMasterFBillDate: TDateTimeField
      FieldName = 'FBillDate'
    end
    object cdsDestMasterFAsstActTypeID: TStringField
      FieldName = 'FAsstActTypeID'
      Size = 44
    end
    object cdsDestMasterFAsstActID: TStringField
      FieldName = 'FAsstActID'
      Size = 44
    end
    object cdsDestMasterFAsstActNumber: TWideStringField
      FieldName = 'FAsstActNumber'
      Size = 80
    end
    object cdsDestMasterFAsstActName_L1: TWideStringField
      FieldName = 'FAsstActName_L1'
      Size = 80
    end
    object cdsDestMasterFAsstActName_L2: TWideStringField
      FieldName = 'FAsstActName_L2'
      Size = 80
    end
    object cdsDestMasterFAsstActName_L3: TWideStringField
      FieldName = 'FAsstActName_L3'
      Size = 80
    end
    object cdsDestMasterFBillStatus: TIntegerField
      FieldName = 'FBillStatus'
    end
    object cdsDestMasterFCurrencyID: TStringField
      FieldName = 'FCurrencyID'
      Size = 44
    end
    object cdsDestMasterFAdminOrgUnitID: TStringField
      FieldName = 'FAdminOrgUnitID'
      Size = 44
    end
    object cdsDestMasterFPersonID: TStringField
      FieldName = 'FPersonID'
      Size = 44
    end
    object cdsDestMasterFExchangeRate: TFloatField
      FieldName = 'FExchangeRate'
    end
    object cdsDestMasterFSettleTypeID: TStringField
      FieldName = 'FSettleTypeID'
      Size = 44
    end
    object cdsDestMasterFAmount: TFloatField
      FieldName = 'FAmount'
    end
    object cdsDestMasterFAmountLocal: TFloatField
      FieldName = 'FAmountLocal'
    end
    object cdsDestMasterFAbstractName: TWideStringField
      FieldName = 'FAbstractName'
      Size = 255
    end
    object cdsDestMasterFVerifyAmount: TFloatField
      FieldName = 'FVerifyAmount'
    end
    object cdsDestMasterFVerifyAmountLocal: TFloatField
      FieldName = 'FVerifyAmountLocal'
    end
    object cdsDestMasterFUnVerifyAmount: TFloatField
      FieldName = 'FUnVerifyAmount'
    end
    object cdsDestMasterFUnVerifyAmountLocal: TFloatField
      FieldName = 'FUnVerifyAmountLocal'
    end
    object cdsDestMasterFAuditDate: TDateTimeField
      FieldName = 'FAuditDate'
    end
    object cdsDestMasterFVoucherID: TStringField
      FieldName = 'FVoucherID'
      Size = 44
    end
    object cdsDestMasterFFiVouchered: TIntegerField
      FieldName = 'FFiVouchered'
    end
    object cdsDestMasterFSourceBillType: TIntegerField
      FieldName = 'FSourceBillType'
    end
    object cdsDestMasterFCashDiscountID: TStringField
      FieldName = 'FCashDiscountID'
      Size = 44
    end
    object cdsDestMasterFIsReversed: TIntegerField
      FieldName = 'FIsReversed'
    end
    object cdsDestMasterFIsReverseBill: TIntegerField
      FieldName = 'FIsReverseBill'
    end
    object cdsDestMasterFIsInTax: TIntegerField
      FieldName = 'FIsInTax'
    end
    object cdsDestMasterFAccountantID: TStringField
      FieldName = 'FAccountantID'
      Size = 44
    end
    object cdsDestMasterFIsTransBill: TIntegerField
      FieldName = 'FIsTransBill'
    end
    object cdsDestMasterFSaleOrgID: TStringField
      FieldName = 'FSaleOrgID'
      Size = 44
    end
    object cdsDestMasterFTotalBadAmount: TFloatField
      FieldName = 'FTotalBadAmount'
    end
    object cdsDestMasterFTotalBadAmountLocal: TFloatField
      FieldName = 'FTotalBadAmountLocal'
    end
    object cdsDestMasterFBillType: TIntegerField
      FieldName = 'FBillType'
    end
    object cdsDestMasterFIsImportBill: TIntegerField
      FieldName = 'FIsImportBill'
    end
    object cdsDestMasterFVoucherNumber: TWideStringField
      FieldName = 'FVoucherNumber'
      Size = 80
    end
    object cdsDestMasterFBizTypeID: TStringField
      FieldName = 'FBizTypeID'
      Size = 44
    end
    object cdsDestMasterFPaymentTypeID: TStringField
      FieldName = 'FPaymentTypeID'
      Size = 44
    end
    object cdsDestMasterFSaleGroupID: TStringField
      FieldName = 'FSaleGroupID'
      Size = 44
    end
    object cdsDestMasterFLastExhangeRate: TFloatField
      FieldName = 'FLastExhangeRate'
    end
    object cdsDestMasterFTotalAmount: TFloatField
      FieldName = 'FTotalAmount'
    end
    object cdsDestMasterFTotalTax: TFloatField
      FieldName = 'FTotalTax'
    end
    object cdsDestMasterFTotalTaxAmount: TFloatField
      FieldName = 'FTotalTaxAmount'
    end
    object cdsDestMasterFIsExchanged: TIntegerField
      FieldName = 'FIsExchanged'
    end
    object cdsDestMasterFIsInitializeBill: TIntegerField
      FieldName = 'FIsInitializeBill'
    end
    object cdsDestMasterFVoucherTypeID: TStringField
      FieldName = 'FVoucherTypeID'
      Size = 44
    end
    object cdsDestMasterFRedBlueType: TIntegerField
      FieldName = 'FRedBlueType'
    end
    object cdsDestMasterFYear: TIntegerField
      FieldName = 'FYear'
    end
    object cdsDestMasterFPeriod: TIntegerField
      FieldName = 'FPeriod'
    end
    object cdsDestMasterFIsSCMBill: TIntegerField
      FieldName = 'FIsSCMBill'
    end
    object cdsDestMasterFIsPriceWithoutTax: TIntegerField
      FieldName = 'FIsPriceWithoutTax'
    end
    object cdsDestMasterFIsNeedVoucher: TIntegerField
      FieldName = 'FIsNeedVoucher'
    end
    object cdsDestMasterFIsAllowanceBill: TIntegerField
      FieldName = 'FIsAllowanceBill'
    end
    object cdsDestMasterFIsAppointVoucher: TIntegerField
      FieldName = 'FIsAppointVoucher'
    end
    object cdsDestMasterFPriceSource: TIntegerField
      FieldName = 'FPriceSource'
    end
    object cdsDestMasterFPayConditionId: TStringField
      FieldName = 'FPayConditionId'
      Size = 44
    end
    object cdsDestMasterFIsImpFromGL: TIntegerField
      FieldName = 'FIsImpFromGL'
    end
    object cdsDestMasterFAdminOrgUnitId_SourceBill: TStringField
      FieldName = 'FAdminOrgUnitId_SourceBill'
      Size = 44
    end
    object cdsDestMasterFPersonID_SourceBill: TStringField
      FieldName = 'FPersonID_SourceBill'
      Size = 44
    end
    object cdsDestMasterFAsstActID_SourceBill: TStringField
      FieldName = 'FAsstActID_SourceBill'
      Size = 44
    end
    object cdsDestMasterFBillDate_SourceBill: TDateTimeField
      FieldName = 'FBillDate_SourceBill'
    end
    object cdsDestMasterFAsstActTypeID_SourceBill: TStringField
      FieldName = 'FAsstActTypeID_SourceBill'
      Size = 44
    end
    object cdsDestMasterFisSplitBill: TIntegerField
      FieldName = 'FisSplitBill'
    end
    object cdsDestMasterFIsGenCoopBill: TIntegerField
      FieldName = 'FIsGenCoopBill'
    end
    object cdsDestMasterFisCoopBuild: TIntegerField
      FieldName = 'FisCoopBuild'
    end
    object cdsDestMasterFContractNumber: TWideStringField
      FieldName = 'FContractNumber'
      Size = 80
    end
    object cdsDestMasterFBillType_SourceBill: TIntegerField
      FieldName = 'FBillType_SourceBill'
    end
    object cdsDestMasterFIsBizBill: TIntegerField
      FieldName = 'FIsBizBill'
    end
    object cdsDestMasterFSYNbillType: TStringField
      FieldName = 'FSYNbillType'
      Size = 44
    end
    object cdsDestMasterFSYNbillNumber: TStringField
      FieldName = 'FSYNbillNumber'
      Size = 80
    end
    object cdsDestMasterFSYNBillID: TStringField
      FieldName = 'FSYNBillID'
      Size = 44
    end
    object cdsDestMasterFSYNBillEntryID: TStringField
      FieldName = 'FSYNBillEntryID'
      Size = 44
    end
    object cdsDestMasterFCostCenterID: TStringField
      FieldName = 'FCostCenterID'
      Size = 44
    end
    object cdsDestMasterFBillRelationOption: TIntegerField
      FieldName = 'FBillRelationOption'
    end
  end
  object dsDestPlan: TDataSource
    DataSet = cdsDestPlan
    Left = 312
    Top = 168
  end
  object cdsDestPlan: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 408
    Top = 152
    object cdsDestPlanFID: TStringField
      FieldName = 'FID'
      Size = 44
    end
    object cdsDestPlanFSeq: TIntegerField
      FieldName = 'FSeq'
    end
    object cdsDestPlanFRecievePayDate: TDateTimeField
      FieldName = 'FRecievePayDate'
    end
    object cdsDestPlanFRecievePayAmount: TFloatField
      FieldName = 'FRecievePayAmount'
    end
    object cdsDestPlanFRecievePayAmountLocal: TFloatField
      FieldName = 'FRecievePayAmountLocal'
    end
    object cdsDestPlanFVerifyAmount: TFloatField
      FieldName = 'FVerifyAmount'
    end
    object cdsDestPlanFVerifyAmountLocal: TFloatField
      FieldName = 'FVerifyAmountLocal'
    end
    object cdsDestPlanFRemark: TWideStringField
      FieldName = 'FRemark'
      Size = 255
    end
    object cdsDestPlanFParentID: TStringField
      FieldName = 'FParentID'
      Size = 44
    end
  end
end
