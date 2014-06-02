inherited RepairWoToSaleIssueFrm: TRepairWoToSaleIssueFrm
  Left = 431
  Top = 386
  Caption = #32500#20462#24037#21333#36716#38144#21806#20986#24211#21333
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited dsDestMaster: TDataSource
    Left = 248
    Top = 24
  end
  inherited dsDestDetail: TDataSource
    Left = 240
    Top = 72
  end
  inherited cdsDestDetail: TClientDataSet
    Left = 384
    Top = 72
    object cdsDestDetailFID: TStringField
      FieldName = 'FID'
      Size = 44
    end
    object cdsDestDetailFSeq: TIntegerField
      FieldName = 'FSeq'
    end
    object cdsDestDetailFSourceBillId: TWideStringField
      FieldName = 'FSourceBillId'
      Size = 80
    end
    object cdsDestDetailFSourceBillNumber: TWideStringField
      FieldName = 'FSourceBillNumber'
      Size = 80
    end
    object cdsDestDetailFSourceBillTypeID: TStringField
      FieldName = 'FSourceBillTypeID'
      Size = 44
    end
    object cdsDestDetailFSourceBillEntryId: TWideStringField
      FieldName = 'FSourceBillEntryId'
      Size = 80
    end
    object cdsDestDetailFSourceBillEntrySeq: TIntegerField
      FieldName = 'FSourceBillEntrySeq'
    end
    object cdsDestDetailFAssCoefficient: TFloatField
      FieldName = 'FAssCoefficient'
    end
    object cdsDestDetailFBaseStatus: TIntegerField
      FieldName = 'FBaseStatus'
    end
    object cdsDestDetailFMaterialID: TStringField
      FieldName = 'FMaterialID'
      Size = 44
    end
    object cdsDestDetailFUnitID: TStringField
      FieldName = 'FUnitID'
      Size = 44
    end
    object cdsDestDetailFBaseUnitID: TStringField
      FieldName = 'FBaseUnitID'
      Size = 44
    end
    object cdsDestDetailFAssistUnitID: TStringField
      FieldName = 'FAssistUnitID'
      Size = 44
    end
    object cdsDestDetailFReasonCodeID: TStringField
      FieldName = 'FReasonCodeID'
      Size = 44
    end
    object cdsDestDetailFAssociateQty: TFloatField
      FieldName = 'FAssociateQty'
    end
    object cdsDestDetailFStorageOrgUnitID: TStringField
      FieldName = 'FStorageOrgUnitID'
      Size = 44
    end
    object cdsDestDetailFCompanyOrgUnitID: TStringField
      FieldName = 'FCompanyOrgUnitID'
      Size = 44
    end
    object cdsDestDetailFWarehouseID: TStringField
      FieldName = 'FWarehouseID'
      Size = 44
    end
    object cdsDestDetailFLocationID: TStringField
      FieldName = 'FLocationID'
      Size = 44
    end
    object cdsDestDetailFStockerID: TStringField
      FieldName = 'FStockerID'
      Size = 44
    end
    object cdsDestDetailFLot: TWideStringField
      FieldName = 'FLot'
      Size = 80
    end
    object cdsDestDetailFQty: TFloatField
      FieldName = 'FQty'
    end
    object cdsDestDetailFAssistQty: TFloatField
      FieldName = 'FAssistQty'
    end
    object cdsDestDetailFBaseQty: TFloatField
      FieldName = 'FBaseQty'
    end
    object cdsDestDetailFReverseQty: TFloatField
      FieldName = 'FReverseQty'
    end
    object cdsDestDetailFReturnsQty: TFloatField
      FieldName = 'FReturnsQty'
    end
    object cdsDestDetailFPrice: TFloatField
      FieldName = 'FPrice'
    end
    object cdsDestDetailFAmount: TFloatField
      FieldName = 'FAmount'
    end
    object cdsDestDetailFUnitStandardCost: TFloatField
      FieldName = 'FUnitStandardCost'
    end
    object cdsDestDetailFStandardCost: TFloatField
      FieldName = 'FStandardCost'
    end
    object cdsDestDetailFUnitActualCost: TFloatField
      FieldName = 'FUnitActualCost'
    end
    object cdsDestDetailFActualCost: TFloatField
      FieldName = 'FActualCost'
    end
    object cdsDestDetailFIsPresent: TIntegerField
      FieldName = 'FIsPresent'
    end
    object cdsDestDetailFParentID: TStringField
      FieldName = 'FParentID'
      Size = 44
    end
    object cdsDestDetailFSaleOrderID: TStringField
      FieldName = 'FSaleOrderID'
      Size = 44
    end
    object cdsDestDetailFSaleOrderEntryID: TStringField
      FieldName = 'FSaleOrderEntryID'
      Size = 44
    end
    object cdsDestDetailFWrittenOffQty: TFloatField
      FieldName = 'FWrittenOffQty'
    end
    object cdsDestDetailFWrittenOffAmount: TFloatField
      FieldName = 'FWrittenOffAmount'
    end
    object cdsDestDetailFUnWriteOffQty: TFloatField
      FieldName = 'FUnWriteOffQty'
    end
    object cdsDestDetailFUnWriteOffAmount: TFloatField
      FieldName = 'FUnWriteOffAmount'
    end
    object cdsDestDetailFOrderNumber: TWideStringField
      FieldName = 'FOrderNumber'
      Size = 80
    end
    object cdsDestDetailFSaleOrderNumber: TWideStringField
      FieldName = 'FSaleOrderNumber'
      Size = 80
    end
    object cdsDestDetailFSaleOrderEntrySeq: TIntegerField
      FieldName = 'FSaleOrderEntrySeq'
    end
    object cdsDestDetailFTaxRate: TFloatField
      FieldName = 'FTaxRate'
    end
    object cdsDestDetailFTax: TFloatField
      FieldName = 'FTax'
    end
    object cdsDestDetailFLocalTax: TFloatField
      FieldName = 'FLocalTax'
    end
    object cdsDestDetailFLocalPrice: TFloatField
      FieldName = 'FLocalPrice'
    end
    object cdsDestDetailFLocalAmount: TFloatField
      FieldName = 'FLocalAmount'
    end
    object cdsDestDetailFNonTaxAmount: TFloatField
      FieldName = 'FNonTaxAmount'
    end
    object cdsDestDetailFLocalNonTaxAmount: TFloatField
      FieldName = 'FLocalNonTaxAmount'
    end
    object cdsDestDetailFDrewQty: TFloatField
      FieldName = 'FDrewQty'
    end
    object cdsDestDetailFAssistPropertyID: TStringField
      FieldName = 'FAssistPropertyID'
      Size = 44
    end
    object cdsDestDetailFMfg: TDateTimeField
      FieldName = 'FMfg'
    end
    object cdsDestDetailFExp: TDateTimeField
      FieldName = 'FExp'
    end
    object cdsDestDetailFRemark: TWideStringField
      FieldName = 'FRemark'
      Size = 255
    end
    object cdsDestDetailFReverseBaseQty: TFloatField
      FieldName = 'FReverseBaseQty'
    end
    object cdsDestDetailFReturnBaseQty: TFloatField
      FieldName = 'FReturnBaseQty'
    end
    object cdsDestDetailFWrittenOffBaseQty: TFloatField
      FieldName = 'FWrittenOffBaseQty'
    end
    object cdsDestDetailFUnWriteOffBaseQty: TFloatField
      FieldName = 'FUnWriteOffBaseQty'
    end
    object cdsDestDetailFDrewBaseQty: TFloatField
      FieldName = 'FDrewBaseQty'
    end
    object cdsDestDetailFCoreBillTypeID: TStringField
      FieldName = 'FCoreBillTypeID'
      Size = 44
    end
    object cdsDestDetailFUnReturnedBaseQty: TFloatField
      FieldName = 'FUnReturnedBaseQty'
    end
    object cdsDestDetailFIsLocked: TIntegerField
      FieldName = 'FIsLocked'
    end
    object cdsDestDetailFInventoryID: TStringField
      FieldName = 'FInventoryID'
      Size = 44
    end
    object cdsDestDetailFOrderPrice: TFloatField
      FieldName = 'FOrderPrice'
    end
    object cdsDestDetailFTaxPrice: TFloatField
      FieldName = 'FTaxPrice'
    end
    object cdsDestDetailFActualPrice: TFloatField
      FieldName = 'FActualPrice'
    end
    object cdsDestDetailFSaleOrgUnitID: TStringField
      FieldName = 'FSaleOrgUnitID'
      Size = 44
    end
    object cdsDestDetailFSaleGroupID: TStringField
      FieldName = 'FSaleGroupID'
      Size = 44
    end
    object cdsDestDetailFSalePersonID: TStringField
      FieldName = 'FSalePersonID'
      Size = 44
    end
    object cdsDestDetailFBaseUnitActualcost: TFloatField
      FieldName = 'FBaseUnitActualcost'
    end
    object cdsDestDetailFUndeliverQty: TFloatField
      FieldName = 'FUndeliverQty'
    end
    object cdsDestDetailFUndeliverBaseQty: TFloatField
      FieldName = 'FUndeliverBaseQty'
    end
    object cdsDestDetailFUnInQty: TFloatField
      FieldName = 'FUnInQty'
    end
    object cdsDestDetailFUnInBaseQty: TFloatField
      FieldName = 'FUnInBaseQty'
    end
    object cdsDestDetailFBalanceCustomerID: TStringField
      FieldName = 'FBalanceCustomerID'
      Size = 44
    end
    object cdsDestDetailFIsCenterBalance: TIntegerField
      FieldName = 'FIsCenterBalance'
    end
    object cdsDestDetailFIsBetweenCompanySend: TIntegerField
      FieldName = 'FIsBetweenCompanySend'
    end
    object cdsDestDetailftotalInWarehsQty: TFloatField
      FieldName = 'ftotalInWarehsQty'
    end
    object cdsDestDetailFPaymentCustomerID: TStringField
      FieldName = 'FPaymentCustomerID'
      Size = 44
    end
    object cdsDestDetailFOrderCustomerID: TStringField
      FieldName = 'FOrderCustomerID'
      Size = 44
    end
    object cdsDestDetailFConfirmQty: TFloatField
      FieldName = 'FConfirmQty'
    end
    object cdsDestDetailFConfirmBaseQty: TFloatField
      FieldName = 'FConfirmBaseQty'
    end
    object cdsDestDetailFAssociateBaseQty: TFloatField
      FieldName = 'FAssociateBaseQty'
    end
    object cdsDestDetailFConfirmDate: TDateTimeField
      FieldName = 'FConfirmDate'
    end
    object cdsDestDetailFSendAddress: TWideStringField
      FieldName = 'FSendAddress'
      Size = 255
    end
    object cdsDestDetailFNetOrderBillNumber: TWideStringField
      FieldName = 'FNetOrderBillNumber'
      Size = 80
    end
    object cdsDestDetailFnetorderbillid: TWideStringField
      FieldName = 'Fnetorderbillid'
      Size = 44
    end
    object cdsDestDetailFNetOrderBillentryid: TWideStringField
      FieldName = 'FNetOrderBillentryid'
      Size = 44
    end
    object cdsDestDetailFIsSquareBalance: TIntegerField
      FieldName = 'FIsSquareBalance'
    end
    object cdsDestDetailFProjectID: TStringField
      FieldName = 'FProjectID'
      Size = 44
    end
    object cdsDestDetailFTrackNumberID: TStringField
      FieldName = 'FTrackNumberID'
      Size = 44
    end
    object cdsDestDetailFContractNumber: TStringField
      FieldName = 'FContractNumber'
      Size = 255
    end
    object cdsDestDetailFSupplierID: TStringField
      FieldName = 'FSupplierID'
      Size = 44
    end
    object cdsDestDetailFSalePrice: TFloatField
      FieldName = 'FSalePrice'
    end
    object cdsDestDetailFDiscountType: TIntegerField
      FieldName = 'FDiscountType'
    end
    object cdsDestDetailFDiscountAmount: TFloatField
      FieldName = 'FDiscountAmount'
    end
    object cdsDestDetailFDiscount: TFloatField
      FieldName = 'FDiscount'
    end
    object cdsDestDetailFUnSettleQty: TFloatField
      FieldName = 'FUnSettleQty'
    end
    object cdsDestDetailFUnSettleBaseQty: TFloatField
      FieldName = 'FUnSettleBaseQty'
    end
    object cdsDestDetailFCurSettleBillID: TStringField
      FieldName = 'FCurSettleBillID'
      Size = 44
    end
    object cdsDestDetailFCurSettleBillEntryID: TStringField
      FieldName = 'FCurSettleBillEntryID'
      Size = 44
    end
    object cdsDestDetailFCurSettleQty: TFloatField
      FieldName = 'FCurSettleQty'
    end
    object cdsDestDetailFTotalSettleQty: TFloatField
      FieldName = 'FTotalSettleQty'
    end
    object cdsDestDetailFTotalSettleBaseQty: TFloatField
      FieldName = 'FTotalSettleBaseQty'
    end
    object cdsDestDetailFB2cBillType: TStringField
      FieldName = 'FB2cBillType'
      Size = 44
    end
    object cdsDestDetailFBIZDATE: TDateTimeField
      FieldName = 'FBIZDATE'
    end
    object cdsDestDetailFIsFullWriteOff: TIntegerField
      FieldName = 'FIsFullWriteOff'
    end
    object cdsDestDetailCFRequestPersonIDI: TStringField
      FieldName = 'CFRequestPersonIDI'
      Size = 44
    end
    object cdsDestDetailCFPaymentClassify: TWideStringField
      FieldName = 'CFPaymentClassify'
      Size = 80
    end
    object cdsDestDetailCFDefaultWarehouse: TStringField
      FieldName = 'CFDefaultWarehouse'
      Size = 44
    end
    object cdsDestDetailCFDefaultLocationI: TStringField
      FieldName = 'CFDefaultLocationI'
      Size = 44
    end
    object cdsDestDetailCFWipLineNo: TIntegerField
      FieldName = 'CFWipLineNo'
    end
    object cdsDestDetailCFWip: TWideStringField
      FieldName = 'CFWip'
      Size = 50
    end
    object cdsDestDetailCFCostPrice: TFloatField
      FieldName = 'CFCostPrice'
    end
    object cdsDestDetailCFSourceEntryAllocateCount: TIntegerField
      FieldName = 'CFSourceEntryAllocateCount'
    end
    object cdsDestDetailCFLoc: TWideStringField
      FieldName = 'CFLoc'
      Size = 200
    end
  end
  inherited cdsDestMaster: TClientDataSet
    Left = 392
    Top = 16
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
      Size = 255
    end
    object cdsDestMasterFHasEffected: TIntegerField
      FieldName = 'FHasEffected'
    end
    object cdsDestMasterFAuditorID: TStringField
      FieldName = 'FAuditorID'
      Size = 44
    end
    object cdsDestMasterFSourceBillID: TWideStringField
      FieldName = 'FSourceBillID'
      Size = 80
    end
    object cdsDestMasterFSourceFunction: TWideStringField
      FieldName = 'FSourceFunction'
      Size = 80
    end
    object cdsDestMasterFAuditTime: TDateTimeField
      FieldName = 'FAuditTime'
    end
    object cdsDestMasterFBaseStatus: TIntegerField
      FieldName = 'FBaseStatus'
    end
    object cdsDestMasterFBizTypeID: TStringField
      FieldName = 'FBizTypeID'
      Size = 44
    end
    object cdsDestMasterFSourceBillTypeID: TStringField
      FieldName = 'FSourceBillTypeID'
      Size = 44
    end
    object cdsDestMasterFBillTypeID: TStringField
      FieldName = 'FBillTypeID'
      Size = 44
    end
    object cdsDestMasterFYear: TIntegerField
      FieldName = 'FYear'
    end
    object cdsDestMasterFPeriod: TIntegerField
      FieldName = 'FPeriod'
    end
    object cdsDestMasterFStorageOrgUnitID: TStringField
      FieldName = 'FStorageOrgUnitID'
      Size = 44
    end
    object cdsDestMasterFAdminOrgUnitID: TStringField
      FieldName = 'FAdminOrgUnitID'
      Size = 44
    end
    object cdsDestMasterFStockerID: TStringField
      FieldName = 'FStockerID'
      Size = 44
    end
    object cdsDestMasterFVoucherID: TStringField
      FieldName = 'FVoucherID'
      Size = 44
    end
    object cdsDestMasterFTotalQty: TFloatField
      FieldName = 'FTotalQty'
    end
    object cdsDestMasterFTotalAmount: TFloatField
      FieldName = 'FTotalAmount'
    end
    object cdsDestMasterFFiVouchered: TIntegerField
      FieldName = 'FFiVouchered'
    end
    object cdsDestMasterFTotalStandardCost: TFloatField
      FieldName = 'FTotalStandardCost'
    end
    object cdsDestMasterFTotalActualCost: TFloatField
      FieldName = 'FTotalActualCost'
    end
    object cdsDestMasterFIsReversed: TIntegerField
      FieldName = 'FIsReversed'
    end
    object cdsDestMasterFTransactionTypeID: TStringField
      FieldName = 'FTransactionTypeID'
      Size = 44
    end
    object cdsDestMasterFIsInitBill: TIntegerField
      FieldName = 'FIsInitBill'
    end
    object cdsDestMasterFCustomerID: TStringField
      FieldName = 'FCustomerID'
      Size = 44
    end
    object cdsDestMasterFCurrencyID: TStringField
      FieldName = 'FCurrencyID'
      Size = 44
    end
    object cdsDestMasterFExchangeRate: TFloatField
      FieldName = 'FExchangeRate'
    end
    object cdsDestMasterFModifierID: TStringField
      FieldName = 'FModifierID'
      Size = 44
    end
    object cdsDestMasterFModificationTime: TDateTimeField
      FieldName = 'FModificationTime'
    end
    object cdsDestMasterFPaymentTypeID: TStringField
      FieldName = 'FPaymentTypeID'
      Size = 44
    end
    object cdsDestMasterFConvertMode: TIntegerField
      FieldName = 'FConvertMode'
    end
    object cdsDestMasterFIsSysBill: TIntegerField
      FieldName = 'FIsSysBill'
    end
    object cdsDestMasterFTotalLocalAmount: TFloatField
      FieldName = 'FTotalLocalAmount'
    end
    object cdsDestMasterFActBizDate: TDateTimeField
      FieldName = 'FActBizDate'
    end
    object cdsDestMasterFIsGenBizAR: TIntegerField
      FieldName = 'FIsGenBizAR'
    end
    object cdsDestMasterFIsInTax: TIntegerField
      FieldName = 'FIsInTax'
    end
    object cdsDestMasterfmonth: TIntegerField
      FieldName = 'fmonth'
    end
    object cdsDestMasterfday: TIntegerField
      FieldName = 'fday'
    end
    object cdsDestMasterFBillRelationOption: TIntegerField
      FieldName = 'FBillRelationOption'
    end
    object cdsDestMasterFCostCenterOrgUnitID: TStringField
      FieldName = 'FCostCenterOrgUnitID'
      Size = 44
    end
    object cdsDestMasterCFSettlementStatus: TStringField
      FieldName = 'CFSettlementStatus'
      Size = 100
    end
    object cdsDestMasterCFReceivingStatus: TStringField
      FieldName = 'CFReceivingStatus'
      Size = 100
    end
    object cdsDestMasterCFSettlementDate: TDateTimeField
      FieldName = 'CFSettlementDate'
    end
    object cdsDestMasterCFReceivingDate: TDateTimeField
      FieldName = 'CFReceivingDate'
    end
    object cdsDestMasterFPriceSource: TIntegerField
      FieldName = 'FPriceSource'
    end
    object cdsDestMasterCFRepairWOIDID: TStringField
      FieldName = 'CFRepairWOIDID'
      Size = 44
    end
    object cdsDestMasterCFVehicleIDID: TStringField
      FieldName = 'CFVehicleIDID'
      Size = 44
    end
  end
end
