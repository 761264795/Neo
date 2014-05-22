unit uRepairWOEditFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uOtherBillBaseEditFrm, DB, dxBar, cxClasses, ActnList, ImgList,
  DBClient, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDBEdit, StdCtrls, ExtCtrls, cxPC, cxGraphics, cxDropDownEdit,
  cxCheckBox, cxLabel, cxButtonEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxCalc, cxMemo, cxCalendar, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxGridCustomView, cxGrid,
  Menus, cxLookAndFeelPainters, cxButtons, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinsdxBarPainter, dxSkinscxPCPainter;

type
  TOprtPermCls = class
      oprtRetailLine: boolean; //零售行操作权限
      oprtRepairLine: boolean; //维修行操作权限
      OprtRetailItemspName: boolean; //操作配件行说明权限
      oprtRetailPrice: boolean; //操作配件行价格
      oprtRetailBelowCost:boolean; //配件低于成本价销售
      oprtRepairTaxPrice: boolean; //操作维修行价格字段

      constructor Create;
      procedure GetFunctionPermission;

  end;

  TDiscountRateCls = class
    repairDiscountRate: Double;
    retailDiscountRate: Double;

    maxRepairDiscountRate: Double;
    maxRetailDiscountRate: Double;

    procedure GetDiscountRate;
    procedure GetMaxDiscountRate;

  end;
  TRepairItemTxtCls = class
    brandId:string;
    brandName:string;
    repairItemForTxtId:string;

    constructor Create(brandId:string;brandName:string);
    procedure GetRepairItemForTxt;

  end;

  TRepairWOEditFrm = class(TOtherBillBaseEditFrm)
    panelHead: TPanel;
    cxlbl1: TcxLabel;
    cxlbl2: TcxLabel;
    cxlbl3: TcxLabel;
    cxdbChkPrintedSettle: TcxDBCheckBox;
    cxdbTxtNumber1: TcxDBTextEdit;
    cxdbTxtWipNo1: TcxDBTextEdit;
    cxdbComboxStatus: TcxDBComboBox;
    cxHeadPage1: TcxPageControl;
    cxtbsht1: TcxTabSheet;
    cxtbsht2: TcxTabSheet;
    cxlbl4: TcxLabel;
    cxlbl5: TcxLabel;
    cxlbl6: TcxLabel;
    cxlbl7: TcxLabel;
    cxlbl8: TcxLabel;
    cxlbl9: TcxLabel;
    cxlbl10: TcxLabel;
    cxlbl11: TcxLabel;
    cxlbl12: TcxLabel;
    cxlbl13: TcxLabel;
    cxlbl14: TcxLabel;
    cxlbl15: TcxLabel;
    cxdbEditPlateNum: TcxDBButtonEdit;
    cxdbEditVin: TcxDBButtonEdit;
    cxdbEditBizType: TcxDBButtonEdit;
    cxdbEditSA: TcxDBButtonEdit;
    cxdbEditSender: TcxDBButtonEdit;
    cxdbTxtTel: TcxDBTextEdit;
    cxdbEditAccountCode: TcxDBButtonEdit;
    cxdbDateComeTime: TcxDBDateEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxdbDateIntendDeliveryTime: TcxDBDateEdit;
    cxdbMaskMile: TcxDBMaskEdit;
    cxdbDateFirstBookInDate: TcxDBDateEdit;
    cxdbEditBizPerson: TcxDBButtonEdit;
    cxdbMemoWipRemark: TcxDBMemo;
    cxdbMemoCustomerInfo1: TcxDBMemo;
    Panel1: TPanel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxdbColT: TcxGridDBColumn;
    cxdbColItemSpNum: TcxGridDBColumn;
    cxdbColItemspName: TcxGridDBColumn;
    cxdbColRepairPkg: TcxGridDBColumn;
    cxdbColW: TcxGridDBColumn;
    cxdbColIsCT: TcxGridDBColumn;
    cxdbColQty: TcxGridDBColumn;
    cxdbColUnIssueQty: TcxGridDBColumn;
    cxdbColIssueQty: TcxGridDBColumn;
    cxdbColPrice: TcxGridDBColumn;
    cxdbColDiscountRate: TcxGridDBColumn;
    cxdbColAmount: TcxGridDBColumn;
    cxdbColTaxAmount: TcxGridDBColumn;
    cxdbColTaxRate: TcxGridDBColumn;
    cxdbColI: TcxGridDBColumn;
    cxdbColSettleDate: TcxGridDBColumn;
    cxdbColIsAPSettle: TcxGridDBColumn;
    cxdbColAllocateExenseRate: TcxGridDBColumn;
    cxdbColPerson: TcxGridDBColumn;
    cxdbColWorkTimeQty: TcxGridDBColumn;
    cxdbColWorktimePrice: TcxGridDBColumn;
    cxdbColWorktimeCost: TcxGridDBColumn;
    cxdbColGiftDept: TcxGridDBColumn;
    cxdbColRepairWay: TcxGridDBColumn;
    cxdbColSupplier: TcxGridDBColumn;
    cxdbColWipFactLineNo: TcxGridDBColumn;
    cxdbColWipLineNo: TcxGridDBColumn;
    cxdbColIsDelete: TcxGridDBColumn;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    cxLabel12: TcxLabel;
    cxLabel13: TcxLabel;
    cxLabel14: TcxLabel;
    cxdbMemoRemark: TcxDBMemo;
    Panel2: TPanel;
    Panel3: TPanel;
    cxLabel4: TcxLabel;
    cxComboxT: TcxComboBox;
    cdsMasterFCreatorID: TStringField;
    cdsMasterFCreateTime: TDateTimeField;
    cdsMasterFLastUpdateUserID: TStringField;
    cdsMasterFLastUpdateTime: TDateTimeField;
    cdsMasterFControlUnitID: TStringField;
    cdsMasterFNumber: TWideStringField;
    cdsMasterFBizDate: TDateTimeField;
    cdsMasterFHandlerID: TStringField;
    cdsMasterFDescription: TWideStringField;
    cdsMasterFHasEffected: TIntegerField;
    cdsMasterFAuditorID: TStringField;
    cdsMasterFSourceBillID: TWideStringField;
    cdsMasterFSourceFunction: TWideStringField;
    cdsMasterFID: TStringField;
    cdsMasterFAuditTime: TDateTimeField;
    cdsMasterFBrandID: TStringField;
    cdsMasterFOrgUnitID: TStringField;
    cdsMasterFStatus: TStringField;
    cdsMasterFRemark: TWideStringField;
    cdsMasterFVehicleID: TStringField;
    cdsMasterFSAID: TStringField;
    cdsMasterFComeTime: TDateTimeField;
    cdsMasterFIntendDeliveryTime: TDateTimeField;
    cdsMasterFFactDeliveryTime: TDateTimeField;
    cdsMasterFRepairTotalAmount: TFloatField;
    cdsMasterFReceiveTotalAmount: TFloatField;
    cdsMasterFInvoicedTotalAmount: TFloatField;
    cdsMasterFIsStat: TIntegerField;
    cdsMasterFMile: TFloatField;
    cdsMasterFOilQty: TStringField;
    cdsMasterFKeyNumber: TWideStringField;
    cdsMasterFConsignation: TWideStringField;
    cdsMasterFWarrantyTypeID: TStringField;
    cdsMasterFInsuranCompanyID: TStringField;
    cdsMasterFRepairTypeID: TStringField;
    cdsMasterFIsPriorAssign: TIntegerField;
    cdsMasterFIsWash: TIntegerField;
    cdsMasterFIsWaitForStore: TIntegerField;
    cdsMasterFCustomerRequest: TWideStringField;
    cdsMasterFCompanyNumber: TWideStringField;
    cdsMasterFWashRemark: TWideStringField;
    cdsMasterFFinishTime: TDateTimeField;
    cdsMasterFWasherID: TStringField;
    cdsMasterFBreakTypeID: TStringField;
    cdsMasterFStatusWhenCanceled: TStringField;
    cdsMasterFSourceBillTypeID: TStringField;
    cdsMasterFSourceBillEntryID: TWideStringField;
    cdsMasterFSourceBillNumber: TWideStringField;
    cdsMasterFSourceBillEntrySeq: TIntegerField;
    cdsMasterFCustomerID: TStringField;
    cdsMasterFRepairSender: TWideStringField;
    cdsMasterFTel: TWideStringField;
    cdsMasterFOldID: TWideStringField;
    cdsMasterFRepairBookingID: TWideStringField;
    cdsMasterFReturnRepair: TStringField;
    cdsMasterFIsClaim: TIntegerField;
    cdsMasterFIsWarranty: TIntegerField;
    cdsMasterFCustomerDiscountClassifyID: TStringField;
    cdsMasterFOldReturnRepair: TStringField;
    cdsMasterFRecentlyComeTime: TDateTimeField;
    cdsMasterFVersion: TIntegerField;
    cdsMasterFCardID: TStringField;
    cdsMasterFRecentlyComeMile: TFloatField;
    cdsMasterFIsNextWarrEdit: TIntegerField;
    cdsMasterFIsWorkCost: TIntegerField;
    cdsMasterFSupplierID: TStringField;
    cdsMasterFRepairWay: TStringField;
    cdsMasterFGroupOrgunitID: TStringField;
    cdsMasterFIsReceive: TIntegerField;
    cdsMasterFIsPay: TIntegerField;
    cdsMasterFAccountCFGID: TStringField;
    cdsMasterCFCustomer1ID: TStringField;
    cdsMasterCFCustomerInfo: TWideStringField;
    cdsMasterCFDeptID: TStringField;
    cdsMasterCFCustomInfo: TWideStringField;
    cdsMasterCFSaleType: TWideStringField;
    cdsMasterCFCustomerAccountI: TStringField;
    cdsMasterCFCustomerAccountName: TWideStringField;
    cdsMasterCFGaDept: TWideStringField;
    cdsMasterCFRepairBizTypeID: TStringField;
    cdsMasterCFRepairManID: TStringField;
    cdsMasterCFGaBillStatus: TStringField;
    cdsMasterCFFirstBookInDate: TDateTimeField;
    cdsMasterCFSaler: TWideStringField;
    cdsMasterCFIsPrintedSettle: TIntegerField;
    cdsMasterCFWipRemark: TWideStringField;
    cdsMasterCFBizPersonID: TStringField;
    cdsDetailFID: TStringField;
    cdsDetailFSeq: TIntegerField;
    cdsDetailFParentID: TStringField;
    cdsDetailCFSeq: TIntegerField;
    cdsDetailCFT: TStringField;
    cdsDetailCFItemspNum: TWideStringField;
    cdsDetailCFItemspName: TWideStringField;
    cdsDetailCFRepairItemID: TStringField;
    cdsDetailCFMaterialID: TStringField;
    cdsDetailCFTaocan: TWideStringField;
    cdsDetailCFQty: TFloatField;
    cdsDetailCFPrice: TFloatField;
    cdsDetailCFDiscountRate: TFloatField;
    cdsDetailCFAmount: TFloatField;
    cdsDetailCFI: TStringField;
    cdsDetailCFIsCT: TIntegerField;
    cdsDetailCFUnIssueQty: TFloatField;
    cdsDetailCFIssueQty: TFloatField;
    cdsDetailCFTaxRate: TFloatField;
    cdsDetailCFSettlementObject: TStringField;
    cdsDetailCFWID: TStringField;
    cdsDetailCFWipLineNo: TIntegerField;
    cdsDetailCFWipFactLineNo: TIntegerField;
    cdsDetailCFIsCreateTo: TIntegerField;
    cdsDetailCFSaleType: TWideStringField;
    cdsDetailCFRts: TWideStringField;
    cdsDetailCFBillNum: TWideStringField;
    cdsDetailCFPostingDate: TDateTimeField;
    cdsDetailCFIsAPSettle: TIntegerField;
    cdsDetailCFCostAmount: TFloatField;
    cdsDetailCFAccount: TWideStringField;
    cdsDetailCFISDELETE: TIntegerField;
    cdsDetailCFTaxPrice: TFloatField;
    cdsDetailCFTaxAmount: TFloatField;
    cdsDetailCFRepairPkgID: TStringField;
    cdsDetailCFAllocateExenseRate: TFloatField;
    cdsDetailCFRepairWay: TStringField;
    cdsDetailCFSupplierID: TStringField;
    cdsDetailCFInitFactPrice: TFloatField;
    cdsDetailCFWprice: TFloatField;
    cdsDetailCFOriginalEntryId: TStringField;
    cdsDetailCFOriginalQty: TFloatField;
    cdsDetailCFIsCreateTo2: TIntegerField;
    cdsDetailCFSettleDate: TDateTimeField;
    cdsDetailCFPersonID: TStringField;
    cdsDetailCFAllocateCount: TIntegerField;
    cdsDetailCFRelateItemEntryId: TStringField;
    cdsDetailCFGiftDeptID: TStringField;
    cdsDetailCFWorktimeQty: TFloatField;
    cdsDetailCFWorktimePrice: TFloatField;
    cdsDetailCFWorktimeCost: TFloatField;
    cxEditItemSP: TcxButtonEdit;
    cxdbColSeq: TcxGridDBColumn;
    cxdbColTaxPrice: TcxGridDBColumn;
    cdsMasterFCreatorName: TStringField;
    cdsMasterFAuditorName: TStringField;
    cdsMasterCFModifierName: TStringField;
    cxBtnlAllocateLine: TcxButton;
    cxBtnRemoveLine: TcxButton;
    cdsMasterCFGaBillStatusName: TStringField;
    cdsRepairWay: TClientDataSet;
    cdsRepairWayFNumber: TStringField;
    cdsRepairWayFName: TStringField;
    dsRepairWay: TDataSource;
    cxmemoRemarkList: TcxMemo;
    cdsDetailCFRepairPkgName: TWideStringField;
    cdsDetailCFPersonName: TWideStringField;
    cdsDetailCFGiftDeptName: TWideStringField;
    cdsDetailCFSupplierName: TWideStringField;
    cdsDetailCFRepairWayName: TWideStringField;
    dsRepairWayEntry: TDataSource;
    cdsRepairWayEntry: TClientDataSet;
    cdsRepairWayEntryFNumber: TStringField;
    cdsRepairWayEntryFName: TStringField;
    cdsDetail_Save: TClientDataSet;
    dsDetail_Save: TDataSource;
    cdsDetail_SaveFID: TStringField;
    cdsDetail_SaveFSeq: TIntegerField;
    cdsDetail_SaveFParentID: TStringField;
    cdsDetail_SaveCFSeq: TIntegerField;
    cdsDetail_SaveCFT: TStringField;
    cdsDetail_SaveCFItemspNum: TWideStringField;
    cdsDetail_SaveCFItemspName: TWideStringField;
    cdsDetail_SaveCFRepairItemID: TStringField;
    cdsDetail_SaveCFMaterialID: TStringField;
    cdsDetail_SaveCFTaocan: TWideStringField;
    cdsDetail_SaveCFQty: TFloatField;
    cdsDetail_SaveCFPrice: TFloatField;
    cdsDetail_SaveCFDiscountRate: TFloatField;
    cdsDetail_SaveCFAmount: TFloatField;
    cdsDetail_SaveCFI: TStringField;
    cdsDetail_SaveCFIsCT: TIntegerField;
    cdsDetail_SaveCFUnIssueQty: TFloatField;
    cdsDetail_SaveCFIssueQty: TFloatField;
    cdsDetail_SaveCFTaxRate: TFloatField;
    cdsDetail_SaveCFSettlementObject: TStringField;
    cdsDetail_SaveCFWID: TStringField;
    cdsDetail_SaveCFWipLineNo: TIntegerField;
    cdsDetail_SaveCFWipFactLineNo: TIntegerField;
    cdsDetail_SaveCFIsCreateTo: TIntegerField;
    cdsDetail_SaveCFSaleType: TWideStringField;
    cdsDetail_SaveCFRts: TWideStringField;
    cdsDetail_SaveCFBillNum: TWideStringField;
    cdsDetail_SaveCFPostingDate: TDateTimeField;
    cdsDetail_SaveCFIsAPSettle: TIntegerField;
    cdsDetail_SaveCFCostAmount: TFloatField;
    cdsDetail_SaveCFAccount: TWideStringField;
    cdsDetail_SaveCFISDELETE: TIntegerField;
    cdsDetail_SaveCFTaxPrice: TFloatField;
    cdsDetail_SaveCFTaxAmount: TFloatField;
    cdsDetail_SaveCFRepairPkgID: TStringField;
    cdsDetail_SaveCFAllocateExenseRate: TFloatField;
    cdsDetail_SaveCFRepairWay: TStringField;
    cdsDetail_SaveCFSupplierID: TStringField;
    cdsDetail_SaveCFInitFactPrice: TFloatField;
    cdsDetail_SaveCFWprice: TFloatField;
    cdsDetail_SaveCFOriginalEntryId: TStringField;
    cdsDetail_SaveCFOriginalQty: TFloatField;
    cdsDetail_SaveCFIsCreateTo2: TIntegerField;
    cdsDetail_SaveCFSettleDate: TDateTimeField;
    cdsDetail_SaveCFPersonID: TStringField;
    cdsDetail_SaveCFAllocateCount: TIntegerField;
    cdsDetail_SaveCFRelateItemEntryId: TStringField;
    cdsDetail_SaveCFGiftDeptID: TStringField;
    cdsDetail_SaveCFWorktimeQty: TFloatField;
    cdsDetail_SaveCFWorktimePrice: TFloatField;
    cdsDetail_SaveCFWorktimeCost: TFloatField;
    cdsDetailCFRepairPkgNum: TWideStringField;
    cdsDetailCFWNum: TWideStringField;
    cdsDetailCFPersonNum: TWideStringField;
    cdsDetailCFGiftDeptNum: TWideStringField;
    cdsDetailCFSupplierNum: TWideStringField;
    dsMaster_Save: TDataSource;
    cdsMaster_Save: TClientDataSet;
    cdsMaster_SaveFCreatorID: TStringField;
    cdsMaster_SaveFCreateTime: TDateTimeField;
    cdsMaster_SaveFLastUpdateUserID: TStringField;
    cdsMaster_SaveFLastUpdateTime: TDateTimeField;
    cdsMaster_SaveFControlUnitID: TStringField;
    cdsMaster_SaveFNumber: TWideStringField;
    cdsMaster_SaveFBizDate: TDateTimeField;
    cdsMaster_SaveFHandlerID: TStringField;
    cdsMaster_SaveFDescription: TWideStringField;
    cdsMaster_SaveFHasEffected: TIntegerField;
    cdsMaster_SaveFAuditorID: TStringField;
    cdsMaster_SaveFSourceBillID: TWideStringField;
    cdsMaster_SaveFSourceFunction: TWideStringField;
    cdsMaster_SaveFID: TStringField;
    cdsMaster_SaveFAuditTime: TDateTimeField;
    cdsMaster_SaveFBrandID: TStringField;
    cdsMaster_SaveFOrgUnitID: TStringField;
    cdsMaster_SaveFStatus: TStringField;
    cdsMaster_SaveFRemark: TWideStringField;
    cdsMaster_SaveFVehicleID: TStringField;
    cdsMaster_SaveFSAID: TStringField;
    cdsMaster_SaveFComeTime: TDateTimeField;
    cdsMaster_SaveFIntendDeliveryTime: TDateTimeField;
    cdsMaster_SaveFFactDeliveryTime: TDateTimeField;
    cdsMaster_SaveFRepairTotalAmount: TFloatField;
    cdsMaster_SaveFReceiveTotalAmount: TFloatField;
    cdsMaster_SaveFInvoicedTotalAmount: TFloatField;
    cdsMaster_SaveFIsStat: TIntegerField;
    cdsMaster_SaveFMile: TFloatField;
    cdsMaster_SaveFOilQty: TStringField;
    cdsMaster_SaveFKeyNumber: TWideStringField;
    cdsMaster_SaveFConsignation: TWideStringField;
    cdsMaster_SaveFWarrantyTypeID: TStringField;
    cdsMaster_SaveFInsuranCompanyID: TStringField;
    cdsMaster_SaveFRepairTypeID: TStringField;
    cdsMaster_SaveFIsPriorAssign: TIntegerField;
    cdsMaster_SaveFIsWash: TIntegerField;
    cdsMaster_SaveFIsWaitForStore: TIntegerField;
    cdsMaster_SaveFCustomerRequest: TWideStringField;
    cdsMaster_SaveFCompanyNumber: TWideStringField;
    cdsMaster_SaveFWashRemark: TWideStringField;
    cdsMaster_SaveFFinishTime: TDateTimeField;
    cdsMaster_SaveFWasherID: TStringField;
    cdsMaster_SaveFBreakTypeID: TStringField;
    cdsMaster_SaveFStatusWhenCanceled: TStringField;
    cdsMaster_SaveFSourceBillTypeID: TStringField;
    cdsMaster_SaveFSourceBillEntryID: TWideStringField;
    cdsMaster_SaveFSourceBillNumber: TWideStringField;
    cdsMaster_SaveFSourceBillEntrySeq: TIntegerField;
    cdsMaster_SaveFCustomerID: TStringField;
    cdsMaster_SaveFRepairSender: TWideStringField;
    cdsMaster_SaveFTel: TWideStringField;
    cdsMaster_SaveFOldID: TWideStringField;
    cdsMaster_SaveFRepairBookingID: TWideStringField;
    cdsMaster_SaveFReturnRepair: TStringField;
    cdsMaster_SaveFIsClaim: TIntegerField;
    cdsMaster_SaveFIsWarranty: TIntegerField;
    cdsMaster_SaveFCustomerDiscountClassifyID: TStringField;
    cdsMaster_SaveFOldReturnRepair: TStringField;
    cdsMaster_SaveFRecentlyComeTime: TDateTimeField;
    cdsMaster_SaveFVersion: TIntegerField;
    cdsMaster_SaveFCardID: TStringField;
    cdsMaster_SaveFRecentlyComeMile: TFloatField;
    cdsMaster_SaveFIsNextWarrEdit: TIntegerField;
    cdsMaster_SaveFIsWorkCost: TIntegerField;
    cdsMaster_SaveFSupplierID: TStringField;
    cdsMaster_SaveFRepairWay: TStringField;
    cdsMaster_SaveFGroupOrgunitID: TStringField;
    cdsMaster_SaveFIsReceive: TIntegerField;
    cdsMaster_SaveFIsPay: TIntegerField;
    cdsMaster_SaveFAccountCFGID: TStringField;
    cdsMaster_SaveCFCustomer1ID: TStringField;
    cdsMaster_SaveCFCustomerInfo: TWideStringField;
    cdsMaster_SaveCFDeptID: TStringField;
    cdsMaster_SaveCFCustomInfo: TWideStringField;
    cdsMaster_SaveCFSaleType: TWideStringField;
    cdsMaster_SaveCFCustomerAccountI: TStringField;
    cdsMaster_SaveCFCustomerAccountName: TWideStringField;
    cdsMaster_SaveCFGaDept: TWideStringField;
    cdsMaster_SaveCFRepairBizTypeID: TStringField;
    cdsMaster_SaveCFRepairManID: TStringField;
    cdsMaster_SaveCFGaBillStatus: TStringField;
    cdsMaster_SaveCFFirstBookInDate: TDateTimeField;
    cdsMaster_SaveCFSaler: TWideStringField;
    cdsMaster_SaveCFIsPrintedSettle: TIntegerField;
    cdsMaster_SaveCFWipRemark: TWideStringField;
    cdsMaster_SaveCFBizPersonID: TStringField;
    cdsMasterFPlateNum: TWideStringField;
    cdsMasterFVin: TWideStringField;
    cxdbTxtModel: TcxDBTextEdit;
    cdsMastermodelName: TWideStringField;
    cdsGABillStatus: TClientDataSet;
    dsGABillStatus: TDataSource;
    cdsGABillStatusFNumber: TStringField;
    cdsGABillStatusFName: TStringField;
    cdsMasterrepairBizTypeName: TWideStringField;
    cdsMastersaName: TWideStringField;
    cdsMastercustomerAccountName: TWideStringField;
    cdsMasterbizPersonName: TWideStringField;
    cdsMastersupplierName: TWideStringField;
    cxdbTxtEngineNum: TcxDBTextEdit;
    cxdbTxtOwner: TcxDBTextEdit;
    cxdbTxtBrand: TcxDBTextEdit;
    cxdbTxtSerise: TcxDBTextEdit;
    cxdbTxtCompany: TcxDBTextEdit;
    cdsMasterFEngineNum: TWideStringField;
    cdsMastercustomerName: TWideStringField;
    cdsMasterbrandName: TWideStringField;
    cdsMasterseriesName: TWideStringField;
    cdsMastercompanyName: TWideStringField;
    cdsMasterFPlateDate: TDateTimeField;
    cxdblkpcmbxRepairType: TcxDBLookupComboBox;
    cxdbEditSupplier: TcxDBButtonEdit;
    cxdbColSettlementObject: TcxGridDBColumn;
    cdsDetailCFWName: TWideStringField;
    cdsMasterbrandNum: TWideStringField;
    cdsDetailCFTypeCode: TWideStringField;
    procedure FormCreate(Sender: TObject);
    procedure actSaveBillExecute(Sender: TObject);
    procedure actDeleteExecute(Sender: TObject);
    procedure cdsMasterNewRecord(DataSet: TDataSet);
    procedure cdsMasterCalcFields(DataSet: TDataSet);
    procedure cxdbEditPlateNumPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxdbEditVinPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxdbEditBizTypePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxdbEditAccountCodePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxEditItemSPPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxBtnRemoveLineClick(Sender: TObject);
    procedure cxdbEditPlateNumKeyPress(Sender: TObject; var Key: Char);
    procedure cxdbEditVinKeyPress(Sender: TObject; var Key: Char);
    procedure cxdbEditBizTypeKeyPress(Sender: TObject; var Key: Char);
    procedure cxdbEditSAPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxdbEditAccountCodeKeyPress(Sender: TObject; var Key: Char);
    procedure cxdbEditBizPersonPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxdbEditBizPersonKeyPress(Sender: TObject; var Key: Char);
    procedure cxdbColRepairPkgPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxdbColWPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxdbColPersonPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cxdbColGiftDeptPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cdsDetailBeforeDelete(DataSet: TDataSet);
    procedure cdsDetailBeforePost(DataSet: TDataSet);
    procedure cxdbColSupplierPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cdsMasterFVehicleIDChange(Sender: TField);
    procedure cdsMasterBeforeDelete(DataSet: TDataSet);
    procedure cdsMasterBeforePost(DataSet: TDataSet);
    procedure cdsMasterCFRepairBizTypeIDChange(Sender: TField);
    procedure cdsMasterFSAIDChange(Sender: TField);
    procedure cdsMasterCFCustomerAccountIChange(Sender: TField);
    procedure cdsMasterCFBizPersonIDChange(Sender: TField);
    procedure cdsMasterFSupplierIDChange(Sender: TField);
    procedure cxdbEditSenderPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure actEditExecute(Sender: TObject);
    procedure cxdbEditSAKeyPress(Sender: TObject; var Key: Char);
    procedure cxdblkpcmbxRepairTypePropertiesChange(Sender: TObject);
    procedure cxdbEditSupplierPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cdsDetailCFWIDChange(Sender: TField);
    procedure cdsDetailCFRepairPkgIDChange(Sender: TField);
    procedure cdsDetailCFSupplierIDChange(Sender: TField);
    procedure cdsDetailCFGiftDeptIDChange(Sender: TField);
    procedure cdsDetailCFPersonIDChange(Sender: TField);
    procedure cdsDetailCFRepairWayChange(Sender: TField);
    procedure cxGrid1DBTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cdsDetailCFQtyChange(Sender: TField);
    procedure cxGrid1DBTableView1Editing(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure cdsDetailCFPriceChange(Sender: TField);
    procedure cdsDetailCFDiscountRateChange(Sender: TField);
    procedure cdsDetailCFTaxPriceChange(Sender: TField);
    procedure cdsDetailCFTaxAmountChange(Sender: TField);
    procedure cdsDetailCFAmountChange(Sender: TField);
    procedure cdsDetailCFTaxRateChange(Sender: TField);
    procedure cxComboxTPropertiesChange(Sender: TObject);
    procedure cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cdsDetailCFIsCTChange(Sender: TField);
  private
    { Private declarations }
    procedure GetVehicleRepairRemarkList;
    procedure AddLineForRepairItem(var DataSet:TClientDataSet);
    procedure AddLineForMaterial(var DataSet: TClientDataSet);
    procedure CalItemSpEntryAmount(var DataSet: TClientDataSet);
    function GetColumnIndexByName(CXGridView: TcxGridDBTableView;FieldName:string):Integer;
    function GetMaterialCost(materialId: string): Double;
    function GetRepairItemWorkTimeQty(repairItemId: string):Double;
    function GetWorkTimeStdPrice(brandID:string):Double;
    function GetRelatedSp(repairItemId:String): TClientDataSet;
    function CheckAllowMaxDiscount: Boolean;


  public
    { Public declarations }
     procedure Open_Bill(BillFID:string); override;      //打开单据编辑界面
     function ST_Save:Boolean;override;
     function Chk_Data: Boolean;
  end;


var
  RepairWOEditFrm: TRepairWOEditFrm;
  personID: string;
  repairItemTxtCls: TRepairItemTxtCls;
  oprtPermCls: TOprtPermCls;
  discountrateCls: TDiscountRateCls;
  userType:string;


implementation

{$R *.dfm}
uses
  FrmCliDM,Pub_Fun,uMaterDataSelectHelper, Math,uRepairManFrm,DateUtils,
  StrUtils,uUtilsClass,uSelectDataEx;
procedure TRepairWOEditFrm.FormCreate(Sender: TObject);
var
  sql,errmsg: string;

begin
  sBillTypeID := 'HM+nytJ+S7izjFHd2/madkY+1VI=';
  sBillFlag := 'RWO';
  BillEntryTable := 'CT_ATS_RepairWORWOItemSpEntry';
  BillTable := 'T_ATS_RepairWO';
  inherited;

  //----初始化基础数值
  cdsRepairWay.CreateDataSet;
  cdsRepairWay.Append;
  cdsRepairWay.FieldByName('FNumber').AsString := '0';
  cdsRepairWay.FieldByName('FName').AsString := '本店维修';
  cdsRepairWay.Append;
  cdsRepairWay.FieldByName('FNumber').AsString := '2';
  cdsRepairWay.FieldByName('FName').AsString := '维修外包';
  cdsRepairWay.Post;

  cdsRepairWayEntry.CreateDataSet;
  cdsRepairWayEntry.Append;
  cdsRepairWayEntry.FieldByName('FNumber').AsString := '0';
  cdsRepairWayEntry.FieldByName('FName').AsString := '本店维修';
  cdsRepairWayEntry.Append;
  cdsRepairWayEntry.FieldByName('FNumber').AsString := '2';
  cdsRepairWayEntry.FieldByName('FName').AsString := '维修外包';
  cdsRepairWayEntry.Post;

  cdsGABillStatus.CreateDataSet;
  cdsGABillStatus.Append;
  cdsGABillStatus.FieldByName('FNumber').AsString := '1';
  cdsGABillStatus.FieldByName('FName').AsString := '未结算';
  cdsGABillStatus.Append;
  cdsGABillStatus.FieldByName('FNumber').AsString := '2';
  cdsGABillStatus.FieldByName('FName').AsString := '部分结算';
  cdsGABillStatus.Append;
  cdsGABillStatus.FieldByName('FNumber').AsString := '3';
  cdsGABillStatus.FieldByName('FName').AsString := '全部结算';
  cdsGABillStatus.Post;

  sql := Format('select fpersonid from t_pm_user where fid=%s',[QuotedStr(UserInfo.LoginUser_FID)]);
  personID :=  VarToStr(CliDM.Get_QueryReturn(sql,errmsg));

  sql := Format('select CFUserType from T_PM_User where FID=%s',[QuotedStr(UserInfo.LoginUser_FID)]);
  userType := VarToStr(CliDM.Get_QueryReturn(sql,errmsg));
  if (userType ='') then
  begin
    ShowMessage('当前用户必须先设置账户类别,否则不能使用维修工单');
    Abort;
  end;
  RepairWOEditFrm := Self;
end;

procedure TRepairWOEditFrm.Open_Bill(BillFID: string);
var OpenTables: array[0..3] of string;
    _cds: array[0..3] of TClientDataSet;
    ErrMsg : string;
    strsql : string;
    vehicleID: string;
begin
  //BillFID := 'uRBA6d4u20qnmcybDElrtn6h9S0=';
  strsql := ' select * from T_ATS_RepairWO where FID='+quotedstr(BillFID);
  OpenTables[0] := strsql;

  strsql := 'select a.*,aa.FName_l2 FCreatorName,ab.FName_l2 CFModifierName,ac.FName_l2 FAuditorName,'+
            'b.FPlateNum,b.FVIN,b.FEngineNum,b.FPlateDate,c.FName_l2 modelName, ' +
            'd.fname_l2 customerName,e.fname_l2 brandName,e.FNumber brandNum,f.FName_l2 seriesName,'+
            'g.FName_l2 repairBizTypeName,h.FName_L2 saName,i.FName_l2 customerAccountName,' +
            'j.FName_l2 bizPersonName,k.FName_L2 supplierName,l.FName_L2 companyName ' +
            'from T_ATS_RepairWO a ' +
            'left join t_pm_user aa on aa.fid=a.FCreatorID ' +
            'left join t_pm_user ab on ab.fid=a.FLastUpdateUserID ' +
            'left join t_pm_user ac on ac.fid=a.FAuditorID ' +
            'left join T_ATS_Vehicle b on b.fid=a.FVehicleID ' +
            'left join t_ats_model c on c.fid=b.FModelID ' +
            'left join t_ats_customer d on d.fid=b.FCustomerID ' +
            'left join t_ats_brand e on e.fid=b.FBrandID ' +
            'left join t_ats_series f on f.fid=b.FSeriesID ' +
            'left join CT_RS_RepairWOBizType g on g.fid=a.CFRepairBizTypeID ' +
            'left join T_BD_Person h on h.fid=a.FSAID ' +
            'left join CT_RS_CustomerAccount i on i.fid=a.CFCustomerAccountI ' +
            'left join T_BD_Person j on j.FID=a.CFBizPersonID ' +
            'left join T_BD_Supplier k on k.FID=a.FSupplierID ' +
            'left join T_ORG_Admin l on l.FID=a.FOrgUnitID ' +
            'where a.FID='+quotedstr(BillFID);
  OpenTables[1] := strsql;

  strsql := 'select * from CT_ATS_RepairWORWOItemSpEntry  where FID='+quotedstr(BillFID);
  OpenTables[2] := strsql;

  strsql := 'select a.*,b.FNumber CFRepairPkgNum,b.FName_l2 CFRepairPkgName, ' +
        'c.FNumber CFWNum, c.FName_l2 CFWName,c.CFTypeCode,' +
        'd.FNumber CFPersonNum,d.FName_L2 CFPersonName,' +
        'e.FNumber CFGiftDeptNum,e.FName_L2 CFGiftDeptName,' +
        'f.FNumber CFSupplierNum,f.FName_L2 CFSupplierName ' +
        'from CT_ATS_RepairWORWOItemSpEntry a ' +
        'left join CT_RS_RepairPackage b on b.fid=a.CFRepairPkgID ' +
        'left join CT_RS_W c on c.fid=a.CFWID ' +
        'left join T_BD_Person d on d.fid=a.CFPersonID ' +
        'left join T_ORG_Admin e on e.fid=a.CFGiftDeptID ' +
        'left join T_BD_Supplier f on f.FID=a.CFSupplierID ' +
         'where a.FParentID=' + quotedstr(BillFID);
  OpenTables[3] := strsql;

  _cds[0] := cdsMaster_Save;
  _cds[1] := cdsMaster;
  _cds[2] := cdsDetail_Save;
  _cds[3] := cdsDetail;

  try
    if not CliDM.Get_OpenClients_E(BillFID,_cds,OpenTables,ErrMsg) then
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
  if BillFID='' then
  begin
    BillStatus.IsEdit := True;
    try
      with cdsMaster do
      begin
        Append;
      end;

    except
      on E : Exception do
      begin
        ShowError(Handle,ErrMsg+E.Message,[]);
      end;
    end;
  end
  else
  begin
    BillStatus.IsEdit := False;
  end;

  if cdsMaster.FieldByName('FBrandID').AsString <> '' then
    repairItemTxtCls := TRepairItemTxtCls.Create(cdsMaster.FieldByName('FBrandID').AsString,cdsMaster.FieldByName('brandName').AsString);

  //获取相关操作权限
  oprtPermCls := TOprtPermCls.Create;

  //获取折扣率相关信息
  discountrateCls := TDiscountRateCls.Create;
  discountrateCls.GetMaxDiscountRate;

  if (oprtPermCls.oprtRetailLine) and (not oprtPermCls.oprtRepairLine) then
  begin
    cxComboxT.Enabled := false;
    cxComBoxT.Text := 'P';

  end else if (not oprtPermCls.oprtRetailLine) and (oprtPermCls.oprtRepairLine) then
  begin
    cxComboxT.Enabled := false;
    cxComBoxT.Text := 'L';
  end else if (oprtPermCls.oprtRetailLine) and (oprtPermCls.oprtRepairLine) then
  begin

  end else
  begin
    cxComboxT.Enabled := false;
    cxComBoxT.Text := '';
  end;

  inherited;
end;

function TRepairWOEditFrm.ST_Save: Boolean;
var ErrMsg,BillNumber : string;
   _cds: array[0..1] of TClientDataSet;
   AmountSum : Integer;
begin
  Result := True;
  if cdsMaster_Save.State in db.dsEditModes then
     cdsMaster_Save.Post;
  if cdsDetail_Save.State in db.dsEditModes then
     cdsDetail_Save.Post;

  if not Chk_Data then
  begin
    Result := False;
    Exit;
  end;
  BillNumber := cdsMaster_Save.fieldbyname('fnumber').AsString;
  //定义提交的数据集数据
  _cds[0] := cdsMaster_Save;
  _cds[1] := cdsDetail_Save;
  //提交数据
  try
    if CliDM.Apply_Delta_Ex(_cds,['T_ATS_RepairWO','CT_ATS_RepairWORWOItemSpEntry'],ErrMsg) then
    begin
      Gio.AddShow(Self.Caption+'【'+BillNumber+'】提交成功！');
      BillStatus.IsChange := False;
      if  FOpenPar.ListDataset<> nil then
      if not FindRecord1(FOpenPar.ListDataset,'FID',Bill_FID,1)  then
      begin
         FOpenPar.ListDataset.FieldByName('FID').ReadOnly := False;
         FOpenPar.ListDataset.Append;
         FOpenPar.ListDataset.FieldByName('FID').AsString:= Bill_FID ;
         FOpenPar.ListDataset.Post;
         self.actSetBillStatus.Execute;
      end;
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
function TRepairWOEditFrm.Chk_Data: Boolean;
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

procedure TRepairWOEditFrm.actSaveBillExecute(Sender: TObject);
begin
  inherited;
  if ST_Save then
  begin
    ShowMsg(self.Handle,'保存成功!        ',[]);
  end;
end;

procedure TRepairWOEditFrm.actDeleteExecute(Sender: TObject);
var SQL_1,SQL_2,SQL_3,ErrMsg,FID:string;
begin
  if BillStatus.IsAudit then
  begin
    ShowMsg(Self.Handle,'单据已审核,不能删除',[]);
    Abort;
  end;
  if  MessageBox(Handle, PChar('确认删除此维修工单？'), '提示', MB_YESNO) = IDNO then Abort;
  FID :=  cdsMaster.fieldbyname('FID').AsString;
  SQL_1 := 'delete from T_ATS_RepairWO where fid='+Quotedstr(FID);
  SQL_2 := 'delete from CT_ATS_RepairWORWOItemSpEntry where FPARENTID='+Quotedstr(FID);
  if not CliDM.E_ExecSQLArrays(SQL_1,SQL_2,'','','','','','',ErrMsg) then
  begin
    ShowMsg(Self.Handle,'单据删除失败'+ErrMsg,[]);
    Abort;
  end;
  inherited;
end;

procedure TRepairWOEditFrm.cdsMasterNewRecord(DataSet: TDataSet);
var
  ErrMsg,sql,tmpId: String;
begin
  inherited;
  with DataSet do
  begin
    FieldByName('FID').AsString := CliDM.GetEASSID('7EA1F52D');
    FieldByName('FCREATETIME').AsDateTime := CliDM.Get_ServerTime;
    FieldByName('FNUMBER').AsString := 'number001';//CliDM.GetSCMBillNum(sBillTypeID,UserInfo.Branch_Flag,sBillFlag,true,ErrMsg);
    FieldByName('CFGaBillStatus').AsInteger := 1;  //保存状态
    FieldByName('CFIsPrintedSettle').AsInteger := 0;

    FieldByName('FBIZDATE').AsDateTime := CliDM.Get_ServerTime;
    FieldByName('FCREATORID').AsString := UserInfo.LoginUser_FID;
    FieldByName('FCreatorName').AsString := UserInfo.LoginUser_Name;

    FieldByName('FLASTUPDATEUSERID').AsString := UserInfo.LoginUser_FID;
    FieldByName('FLASTUPDATETIME').AsDateTime := CliDM.Get_ServerTime;
    FieldByName('FControlUnitID').AsString := UserInfo.FCONTROLUNITID;    //控制单元，从服务器获取
    FieldByName('FOrgUnitID').AsString := UserInfo.Branch_ID;
    FieldByName('companyName').AsString := userInfo.Branch_Name;
    FieldByName('FSAID').AsString := personID;
    FieldByName('CFBizPersonID').AsString := personID;
    FieldByName('FComeTime').AsDateTime :=  CliDM.Get_ServerTime;
    FieldByName('FIntendDeliveryTime').AsDateTime :=  IncHour(CliDM.Get_ServerTime,2);



  end;
  {新增初始值}
  sql :=  Format('select fid from T_ATS_Vehicle where FOrgUnitID=%s and FPlateNum=%s',
        [QuotedStr(UserInfo.Branch_ID),QuotedStr('00001')]);
  tmpId :=  CliDM.Get_QueryReturn(sql,errmsg);
  if tmpId = '' then
  begin
    ShowMsg(Self.Handle,'未设置默认车辆0001!  ',[]);
    Abort;
  end;
  DataSet.FieldByName('fvehicleid').AsString := tmpId;

  sql := Format('select fid from CT_RS_RepairWOBizType where fnumber=%s',['0001']);
  tmpId := CliDM.Get_QueryReturn(sql,ErrMsg);
  if tmpId = '' then
  begin
    ShowMsg(Self.Handle,'未设置默认业务类型0001!  ',[]);
    Abort;
  end;
  DataSet.FieldByName('CFRepairBizTypeID').AsString := tmpId;

  sql := Format('select fid from CT_RS_CustomerAccount where fnumber=%s and CFOrgUnitId=%s',[QuotedStr('C0000001'),QuotedStr(UserInfo.Branch_ID)]);
  tmpId := CliDM.Get_QueryReturn(sql,ErrMsg);
  if tmpId = '' then
  begin
    ShowMsg(Self.Handle,'未设置默认账户代码C0000001!  ',[]);
    Abort;
  end;
  DataSet.FieldByName('CFCustomerAccountI').AsString := tmpId;

  cxdblkpcmbxRepairType.ItemIndex := 0;

end;

procedure TRepairWOEditFrm.cdsMasterCalcFields(DataSet: TDataSet);
var
  tmpID: String;

begin
  inherited;
  tmpID := DataSet.FieldByName('CFGaBillStatus').AsString;
  if cdsGABillStatus.Locate('FNumber',tmpID,[]) then
      DataSet.FieldByName('gaBillStatusName').AsString :=  cdsGABillStatus.FieldByName('FName').AsString;

end;

procedure TRepairWOEditFrm.cxdbEditPlateNumPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  if not BillStatus.IsNew and not BillStatus.IsEdit then Exit;
  with getDataBaseBySQLEx('车辆','','select fid,fnumber,FVin,FPlateNum,FEngineNum from T_ATS_Vehicle where FOrgUnitID=' + QuotedStr('zfcAAAAAABjM567U'),
                      'fnumber,FVin,FPlateNum','编码,发动机号,车牌号',0) do
  begin
    if not IsEmpty then
    begin
      cdsMaster.Edit;
      cdsMaster.FieldByName('fvehicleid').AsString := FieldByName('FID').AsString;
      cdsMaster.Post;
    end;
  end;
end;

procedure TRepairWOEditFrm.cxdbEditVinPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  if not BillStatus.IsNew and not BillStatus.IsEdit then Exit;
  with Select_BaseDataEx('车辆','','select top 100 fid,fnumber,fname_l2 from T_ATS_Vehicle where FOrgUnitID=' + QuotedStr('zfcAAAAAABjM567U')) do
  begin
    if not IsEmpty then
    begin
      cdsMaster.Edit;
      cdsMaster.FieldByName('fvehicleid').AsString := FieldByName('FID').AsString;
      cdsMaster.Post;
    end;
  end;
end;

procedure TRepairWOEditFrm.cxdbEditBizTypePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  if not BillStatus.IsNew and not BillStatus.IsEdit then Exit;
  with Select_BaseData('CT_RS_RepairWOBizType','业务类型','','') do
  begin
    if not IsEmpty then
    begin
      cdsMaster.Edit;
      cdsMaster.FieldByName('CFRepairBizTypeID').AsString := FieldByName('FID').AsString;
      cdsMaster.Post;
    end;
  end;
end;

procedure TRepairWOEditFrm.cxdbEditAccountCodePropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  if not BillStatus.IsNew and not BillStatus.IsEdit then Exit;
  with Select_BaseData('CT_RS_CustomerAccount','账户代码','','') do
  begin
    if not IsEmpty then
    begin
      cdsMaster.Edit;
      cdsMaster.FieldByName('CFCustomerAccountI').AsString := FieldByName('FID').AsString;
      cdsMaster.Post;
    end;
  end;

end;

procedure TRepairWOEditFrm.cxEditItemSPPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
    sTType,sItemSpID,sItemSpNum,sItemSpName: string;
    cdsTmp: TClientDataSet;
begin
  inherited;
  if not BillStatus.IsNew and not BillStatus.IsEdit then Exit;

  sTType := cxComboxT.EditValue;
  if sTType = 'P' then
  begin
    AddLineForMaterial(cdsDetail);
  end else if sTType = 'L' then
  begin
    AddLineForRepairItem(cdsDetail);
  end;
  if cdsDetail.State in db.dsEditModes then
   cdsDetail.Post;


end;

procedure TRepairWOEditFrm.cxBtnRemoveLineClick(Sender: TObject);
begin
  inherited;
  if not BillStatus.IsNew and not BillStatus.IsEdit then Exit;
  if not cdsDetail.IsEmpty then cdsDetail.Delete;

end;

procedure TRepairWOEditFrm.GetVehicleRepairRemarkList;
var
  errmsg,sql,vehicleID,id:string;
  cdsTmp: TClientDataSet;
  sRemarkList: string;
begin
  vehicleID := cdsMasterFVehicleID.Value;
  id := cdsMasterFID.Value;

  cdsTmp := TClientDataSet.Create(nil);
  sql := 'select CFRemark from CT_ATS_VehicleRepairRemark ' +
          'where FParentID=' + QuotedStr(vehicleID) +
          ' and CFRepairWOID<>' + QuotedStr(id) +
          ' order by CFCreateTime desc';
   if CliDM.Get_OpenSQL(cdsTmp,sql,errmsg) then
   begin
      while not cdsTmp.Eof  do
      begin
        sRemarkList := sRemarkList + cdsTmp.FieldByName('CFRemark').AsString + ',';
        cdsTmp.Next;
      end
   end;
  cxmemoRemarkList.Text := sRemarkList;
end;

procedure TRepairWOEditFrm.cxdbEditPlateNumKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if not BillStatus.IsNew and not BillStatus.IsEdit then Exit;
  if Key <> #8 then  Key := #0
  else
  begin
    cdsMaster.Edit;
    cdsMaster.FieldByName('fvehicleid').AsString := '';
    cdsMaster.Post;
  end;
end;

procedure TRepairWOEditFrm.cxdbEditVinKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if not BillStatus.IsNew and not BillStatus.IsEdit then Exit;
  if Key <> #8 then  Key := #0
  else
  begin
    cdsMaster.Edit;
    cdsMaster.FieldByName('fvehicleid').AsString := '';
    cdsMaster.Post;
  end;
end;

procedure TRepairWOEditFrm.cxdbEditBizTypeKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if not BillStatus.IsNew and not BillStatus.IsEdit then Exit;
  if Key <> #8 then  Key := #0
  else
  begin
    cdsMaster.Edit;
    cdsMaster.FieldByName('CFRepairBizTypeID').AsString := '';
    cdsMaster.Post;
  end;
end;

procedure TRepairWOEditFrm.cxdbEditSAPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  if not BillStatus.IsNew and not BillStatus.IsEdit then Exit;
  with Select_BaseData('t_bd_person','服务顾问','','') do
  begin
    if not IsEmpty then
    begin
      cdsMaster.Edit;
      cdsMaster.FieldByName('FSAID').AsString := FieldByName('FID').AsString;
      cdsMaster.Post;
    end;
  end;
end;

procedure TRepairWOEditFrm.cxdbEditAccountCodeKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if not BillStatus.IsNew and not BillStatus.IsEdit then Exit;
  if Key <> #8 then  Key := #0
  else
  begin
    cdsMaster.Edit;
    cdsMaster.FieldByName('CFCustomerAccountI').AsString := '';
    cdsMaster.Post;
  end;
end;

procedure TRepairWOEditFrm.cxdbEditBizPersonPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  if not BillStatus.IsNew and not BillStatus.IsEdit then Exit;
  with Select_BaseData('t_bd_person','业务员','','') do
  begin
    if not IsEmpty then
    begin
      cdsMaster.Edit;
      cdsMaster.FieldByName('CFBizPersonID').AsString := FieldByName('FID').AsString;
      cdsMaster.Post;
    end;
  end;
end;

procedure TRepairWOEditFrm.cxdbEditBizPersonKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if not BillStatus.IsNew and not BillStatus.IsEdit then Exit;
  if Key <> #8 then  Key := #0
  else
  begin
    cdsMaster.Edit;
    cdsMaster.FieldByName('CFBizPersonID').AsString := '';
    cdsMaster.Post;
  end;
end;

procedure TRepairWOEditFrm.cxdbColRepairPkgPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  if not BillStatus.IsNew and not BillStatus.IsEdit then Exit;
  with Select_BaseData('CT_RS_RepairPackage','套餐','','') do
  begin
    if not IsEmpty then
    begin
      cdsDetail.Edit;
      cdsDetail.FieldByName('CFRepairPkgID').AsString := FieldByName('FID').AsString;
      cdsDetail.Post;
    end;
  end;
end;

procedure TRepairWOEditFrm.cxdbColWPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  if not BillStatus.IsNew and not BillStatus.IsEdit then Exit;
  with Select_BaseData('CT_RS_W','W','','') do
  begin
    if not IsEmpty then
    begin
      cdsDetail.Edit;
      cdsDetail.FieldByName('CFWID').AsString := FieldByName('FID').AsString;
      cdsDetail.Post;
    end;
  end;
end;

procedure TRepairWOEditFrm.cxdbColPersonPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  if not BillStatus.IsNew and not BillStatus.IsEdit then Exit;
  with Select_BaseData('T_BD_Person','维修技师','','') do
  begin
    if not IsEmpty then
    begin
      cdsDetail.Edit;
      cdsDetail.FieldByName('CFPersonID').AsString := FieldByName('FID').AsString;
      cdsDetail.Post;
    end;
  end;
end;

procedure TRepairWOEditFrm.cxdbColGiftDeptPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  if not BillStatus.IsNew and not BillStatus.IsEdit then Exit;
  with Select_BaseData('T_ORG_Admin','赠送部门','','') do
  begin
    if not IsEmpty then
    begin
      cdsDetail.Edit;
      cdsDetail.FieldByName('CFGiftDeptID').AsString := FieldByName('FID').AsString;
      cdsDetail.Post;
    end;
  end;
end;

procedure TRepairWOEditFrm.cdsDetailBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if not cdsDetail_Save.IsEmpty then
  begin
    if cdsDetail_Save.Locate('FID',VarArrayOf([DataSet.FieldByName('FID').AsString]),[]) then
    cdsDetail_Save.Delete;
  end;
end;

procedure TRepairWOEditFrm.cdsDetailBeforePost(DataSet: TDataSet);
var i:Integer;
    fieldName:string;
begin
  inherited;
  if cdsDetail_Save.Locate('FID',VarArrayOf([DataSet.FieldByName('FID').AsString]),[]) then
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

procedure TRepairWOEditFrm.cxdbColSupplierPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  if not BillStatus.IsNew and not BillStatus.IsEdit then Exit;
  with Select_BaseDataEx('供应商','','select top 100 fid,fname_l2,fnumber from t_bd_supplier') do
  begin
    if not IsEmpty then
    begin
      cdsDetail.Edit;
      cdsDetail.FieldByName('CFSupplierID').AsString := FieldByName('FID').AsString;
      cdsDetail.FieldByName('CFSupplierName').AsString := FieldByName('fname_l2').AsString;
      cdsDetail.Post;
    end;
  end;
end;

procedure TRepairWOEditFrm.cdsMasterFVehicleIDChange(Sender: TField);
var
  vehicleid,sql,errmsg:string;
  cdsTmp: TClientDataSet;
  repairMan,repairTel,repairAddr:string;
begin
  inherited;
  cdsTmp := TClientDataSet.Create(nil);
  vehicleid :=Sender.AsString;

  sql := 'select a.FPlateNum,a.FVIN,a.FEngineNum,b.fname_l2 modelname,c.fname_l2 customerName,'+
      'd.fname_l2 brandName,d.FNumber brandNum,e.fname_l2 seriesName,a.FPlateDate,a.FBrandID,a.FCustomerID from T_ATS_Vehicle a ' +
        'left join t_ats_model b on b.fid=a.FModelID ' +
        'left join t_ats_customer c on c.fid=a.FCustomerID  ' +
        'left join t_ats_brand d on d.fid=a.FBrandID '+
        'left join t_ats_series e on e.fid=a.FSeriesID ' +
        'where a.FID=' + QuotedStr(vehicleid);
  if not CliDM.Get_OpenSQL(cdsTmp,sql,errmsg) then
  begin
    ShowMsg(Self.Handle,'打开数据出错:'+ErrMsg,[]);
    Self.Close;
  end
  else
  begin
      cdsMaster.FieldByName('FPlateNum').AsString := cdsTmp.FieldByName('FPlateNum').AsString;
      cdsMaster.FieldByName('FVIN').AsString := cdsTmp.FieldByName('FVIN').AsString;
      cdsMaster.FieldByName('CFFirstBookInDate').AsDateTime :=  cdsTmp.FieldByName('FPlateDate').AsDateTime;

      cdsMaster.FieldByName('FBrandID').AsString := cdsTmp.FieldByName('FBrandID').AsString;
      cdsMaster.FieldByName('brandName').AsString := cdsTmp.FieldByName('brandName').AsString;
      cdsMaster.FieldByName('FCustomerID').AsString := cdsTmp.FieldByName('FCustomerID').AsString;
      cdsMaster.FieldByName('customerName').AsString := cdsTmp.FieldByName('customerName').AsString;

      cdsMaster.FieldByName('seriesName').AsString := cdsTmp.FieldByName('seriesName').AsString;
      cdsMaster.FieldByName('modelname').AsString := cdsTmp.FieldByName('modelname').AsString;
      cdsMaster.FieldByName('FEngineNum').AsString := cdsTmp.FieldByName('FEngineNum').AsString;

      if cdsMaster.FieldByName('FBrandID').AsString <> '' then
        repairItemTxtCls := TRepairItemTxtCls.Create(cdsTmp.FieldByName('FBrandID').AsString,cdsTmp.FieldByName('brandName').AsString);

      GetVehicleRepairRemarkList;
  end;

  //初始上次里程数
  sql := Format('select isnull(max(FMile),0)+1 as FMile from T_ATS_RepairWO where FVehicleID=%s',[QuotedStr(vehicleid)]);
  if not CliDM.Get_OpenSQL(cdsTmp,sql,errmsg) then
  begin
    ShowMsg(Self.Handle,'打开数据出错:'+ErrMsg,[]);
    Self.Close;
  end
  else
  begin
     cdsMaster.FieldByName('FMile').AsInteger := cdsTmp.FieldByName('FMile').AsInteger;
  end;

  //初始送修人
  sql := Format('SELECT b.fid, b.fnumber, b.cfname, b.cftel, b.cfemail,b.cfidnumber,b.cfzipcode,b.cfaddr, a.fid fentryId ' +
			 'FROM ct_rs_repairmanentry a ' +
       'LEFT JOIN ct_rs_repairman b ON a.fparentid = b.fid ' +
       'where a.cfvehicleid=%s',[QuotedStr(vehicleid)]);
  if not CliDM.Get_OpenSQL(cdsTmp,sql,errmsg) then
  begin
    ShowMsg(Self.Handle,'打开数据出错:'+ErrMsg,[]);
    Self.Close;
  end
  else
  begin
    if not cdsTmp.Eof then
    begin
       repairMan := cdsTmp.FieldByName('cfname').AsString;
       repairTel := cdsTmp.FieldByName('cftel').AsString;
       repairAddr := cdsTmp.FieldByName('cfaddr').AsString;
       cdsTmp.Next;
       if  cdsTmp.Eof then
       begin
           cdsMaster.FieldByName('FRepairSender').AsString := repairMan;
           cdsMaster.FieldByName('FTel').AsString := repairTel;
           cdsMaster.FieldByName('CFCustomerInfo').AsString := repairMan + ' ' + repairTel + #13 + repairTel;
       end else
       begin
           cxdbEditSenderPropertiesButtonClick(nil,0);

       end;
    end else
    begin
      sql := Format('select b.FNumber, b.FName_l2, b.FPhone, b.FEmail,b.FPapersNum,b.FZipCode,b.FAddress from T_ATS_Vehicle a '+
					  'left join T_ATS_Customer b on a.FCustomerID=b.FID ' +
					  'where a.FID=%s',[QuotedStr(vehicleid)]);
      if not CliDM.Get_OpenSQL(cdsTmp,sql,errmsg) then
      begin
        ShowMsg(Self.Handle,'打开数据出错:'+ErrMsg,[]);
        Self.Close;
      end
      else
      begin
         repairMan := cdsTmp.FieldByName('FName_l2').AsString;
         repairTel := cdsTmp.FieldByName('FPhone').AsString;
         repairAddr := cdsTmp.FieldByName('FAddress').AsString;
         if repairMan = '无名称' then repairMan := '现结客户';
         if repairTel = '无名称' then repairTel := '';
         cdsMaster.FieldByName('FRepairSender').AsString := repairMan;
         cdsMaster.FieldByName('FTel').AsString := repairTel;
         cdsMaster.FieldByName('CFCustomerInfo').AsString := repairMan + ' ' + repairTel + #13 + repairTel;

      end;
    end;

  end;


  cdsMaster.Post;
  cdsMaster.Edit;

end;

procedure TRepairWOEditFrm.cdsMasterBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  if not cdsMaster_Save.IsEmpty then
  begin
    if cdsMaster_Save.Locate('FID',VarArrayOf([DataSet.FieldByName('FID').AsString]),[]) then
    cdsMaster_Save.Delete;
  end;
end;

procedure TRepairWOEditFrm.cdsMasterBeforePost(DataSet: TDataSet);
var i:Integer;
    fieldName:string;
begin
  inherited;
  if cdsMaster_Save.Locate('FID',VarArrayOf([DataSet.FieldByName('FID').AsString]),[]) then
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

procedure TRepairWOEditFrm.cdsMasterCFRepairBizTypeIDChange(
  Sender: TField);
var
    sql,errmsg: string;
    cdsTmp:TClientDataSet;
begin
  inherited;
  cdsTmp := TClientDataSet.Create(nil);
  sql := Format('select fname_l2 from CT_RS_RepairWOBizType where fid=%s',[QuotedStr(sender.AsString)]);
  if not CliDM.Get_OpenSQL(cdsTmp,sql,errmsg) then
  begin
    ShowMsg(Self.Handle,'打开数据出错:'+ErrMsg,[]);
    Self.Close;
  end
  else
  begin
      cdsMaster.FieldByName('repairBizTypeName').AsString := cdsTmp.FieldByName('FName_l2').AsString;
  end;
end;

procedure TRepairWOEditFrm.cdsMasterFSAIDChange(Sender: TField);
var
    sql,errmsg: string;
    cdsTmp:TClientDataSet;
begin
  inherited;
  cdsTmp := TClientDataSet.Create(nil);
  sql := Format('select fname_l2 from T_BD_Person where fid=%s',[QuotedStr(sender.AsString)]);
  if not CliDM.Get_OpenSQL(cdsTmp,sql,errmsg) then
  begin
    ShowMsg(Self.Handle,'打开数据出错:'+ErrMsg,[]);
    Self.Close;
  end
  else
  begin
      cdsMaster.FieldByName('saName').AsString := cdsTmp.FieldByName('FName_l2').AsString;
  end;
  cdsMaster.Post;
  cdsMaster.Edit;
end;

procedure TRepairWOEditFrm.cdsMasterCFCustomerAccountIChange(Sender: TField);
var
    sql,errmsg: string;
    cdsTmp:TClientDataSet;
    typeCode: string;
    iType:String;
begin
  inherited;
  cdsTmp := TClientDataSet.Create(nil);
  sql := Format('select fname_l2,CFRepairSaleType,CFRetailSaleType,CFTypeCode from CT_RS_CustomerAccount where fid=%s',[QuotedStr(sender.AsString)]);
  if not CliDM.Get_OpenSQL(cdsTmp,sql,errmsg) then
  begin
    ShowMsg(Self.Handle,'打开数据出错:'+ErrMsg,[]);
    Self.Close;
  end
  else
  begin
      if not cdsTmp.Eof then
      begin
        cdsMaster.FieldByName('customerAccountName').AsString := cdsTmp.FieldByName('FName_l2').AsString;

        if userType = 'Repair' then
        begin
            cdsMaster.FieldByName('CFSaleType').AsString := cdsTmp.FieldByName('CFRepairSaleType').AsString;
        end else if userType = 'Retail' then
        begin
            cdsMaster.FieldByName('CFSaleType').AsString := cdsTmp.FieldByName('CFRetailSaleType').AsString;
        end;
        typeCode := cdsTmp.FieldByName('CFTypeCode').AsString;
        cdsDetail.First;
        while not cdsDetail.Eof do
        begin
           iType := cdsDetail.FieldByName('CFI').AsString;
           if iType = 'X' then
           begin
            cdsDetail.Next;
            continue;
          end;
           
           if typeCode = cdsDetail.FieldByName('CFCodeType').AsString then
           begin
              cdsDetail.FieldByName('CFI').AsString := 'I';
           end else
           begin
             cdsDetail.FieldByName('CFI').AsString := 'H';
           end;
           

          cdsDetail.Next;
        end;



      end;



  end;

  cdsMaster.Post;
  cdsMaster.Edit;


end;

procedure TRepairWOEditFrm.cdsMasterCFBizPersonIDChange(Sender: TField);
var
    sql,errmsg: string;
    cdsTmp:TClientDataSet;
begin
  inherited;
  cdsTmp := TClientDataSet.Create(nil);
  sql := Format('select FName_l2 from T_BD_Person where fid=%s',[QuotedStr(sender.AsString)]);
  if not CliDM.Get_OpenSQL(cdsTmp,sql,errmsg) then
  begin
    ShowMsg(Self.Handle,'打开数据出错:'+ErrMsg,[]);
    Self.Close;
  end
  else
  begin
      cdsMaster.FieldByName('bizPersonName').AsString := cdsTmp.FieldByName('FName_l2').AsString;
  end;
  cdsMaster.Post;
  cdsMaster.Edit;
end;

procedure TRepairWOEditFrm.cdsMasterFSupplierIDChange(Sender: TField);
var
    sql,errmsg: string;
    cdsTmp:TClientDataSet;
begin
  inherited;
  cdsTmp := TClientDataSet.Create(nil);
  sql := Format('select FName_l2 from T_BD_Supplier where fid=%s',[QuotedStr(sender.AsString)]);
  if not CliDM.Get_OpenSQL(cdsTmp,sql,errmsg) then
  begin
    ShowMsg(Self.Handle,'打开数据出错:'+ErrMsg,[]);
    Self.Close;
  end
  else
  begin
      cdsMaster.FieldByName('supplierName').AsString := cdsTmp.FieldByName('FName_l2').AsString;
  end;
  cdsMaster.Post;
  cdsMaster.Edit;
end;

procedure TRepairWOEditFrm.cxdbEditSenderPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  rManFrm: TRepairManFrm;
  vehicleID: string;
  repairMainInfo: TRepairManInfo;
begin
  inherited;

  vehicleID := cdsMaster.FieldByName('fvehicleid').AsString;
  if vehicleID = '' then
  begin
    ShowMsg(Self.Handle, '请先输入车辆',[]);
    Abort;
  end;
  try
    rManFrm := TRepairManFrm.Create(Self);
    rManFrm.QueryRepairManForVehicle(vehicleID);
    rManFrm.ShowModal;
    repairMainInfo := rManFrm.getRepairManInfo;
    if repairMainInfo = nil then
    begin

    end else
    begin
       if cdsMaster.State in db.dsEditModes then
       begin
         cdsMaster.FieldByName('FRepairSender').AsString := repairMainInfo.name;
         cdsMaster.FieldByName('FTel').AsString := repairMainInfo.tel;
         cdsMaster.FieldByName('CFCustomerInfo').AsString := repairMainInfo.name + ' ' + repairMainInfo.tel + #13 + repairMainInfo.addr;
       end;

    end;

  finally
    rManFrm.Free;
    rManFrm := nil;
  end;
end;

procedure TRepairWOEditFrm.actEditExecute(Sender: TObject);
begin
  inherited;
  cdsMaster.Edit;
end;

procedure TRepairWOEditFrm.cxdbEditSAKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if not BillStatus.IsNew and not BillStatus.IsEdit then Exit;
  if Key <> #8 then  Key := #0
  else
  begin
    cdsMaster.Edit;
    cdsMaster.FieldByName('FSAID').AsString := '';
    cdsMaster.Post;
  end;
end;

procedure TRepairWOEditFrm.cxdblkpcmbxRepairTypePropertiesChange(
  Sender: TObject);
begin
  inherited;
  cxdbEditSupplier.Enabled := cxdblkpcmbxRepairType.EditValue = '2';
  cdsMaster.Edit;
  cdsMaster.FieldByName('FSupplierID').AsString := '';
  cdsMaster.Post;
end;

procedure TRepairWOEditFrm.cxdbEditSupplierPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  if not BillStatus.IsNew and not BillStatus.IsEdit then Exit;
  with Select_BaseDataEx('供应商','','select top 100 fid,fname_l2,fnumber from t_bd_supplier') do
  begin
    if not IsEmpty then
    begin
      cdsMaster.Edit;
      cdsMaster.FieldByName('FSupplierID').AsString := FieldByName('FID').AsString;
      cdsMaster.Post;
    end;
  end;
end;

procedure TRepairWOEditFrm.AddLineForRepairItem(var DataSet:TClientDataSet);
var
  sql,errmsg:string;
  cdsTmp,cdsRelatedSp:TClientDataSet;
  workTimeQty,workTimeStdPrice,discountrate,initFactTaxPrice:Double;
  taxPrice:Double;

  repairItemEntryId:string;
begin
  cdsRelatedSp := TClientDataSet.Create(nil);

  cdsTmp := Select_BaseDataEx('维修项目','',Format('select top 100 fid,fname_l2,fnumber,cfprice from t_ats_repairitem where FBrandID=%s and FOrgUnitId=%s',
        [QuotedStr(cdsMaster.FieldByName('FBrandId').AsString),QuotedStr(userInfo.Branch_ID)])) ;
  if cdsTmp.IsEmpty then Exit;
  DataSet.Append;
  cxEditItemSP.Text :=  cdsTmp.FieldByName('fnumber').AsString;
  repairItemEntryId := CliDM.GetEASSID('FF1F0E1A');
  DataSet.FieldByName('FID').AsString := repairItemEntryId;
  DataSet.FieldByName('FSEQ').AsInteger := DataSet.RecordCount +1;
  DataSet.FieldByName('FParentID').AsString := cdsMaster.FieldByName('FID').AsString;
  DataSet.FieldByName('CFT').AsString := 'L';


  DataSet.FieldByName('CFRepairItemID').AsString := cdsTmp.FieldByName('fid').AsString;
  DataSet.FieldByName('CFItemspName').AsString := cdsTmp.FieldByName('fname_l2').AsString;
  DataSet.FieldByName('CFItemspNum').AsString := cdsTmp.FieldByName('fnumber').AsString;
  if DataSet.RecordCount >= 1 then
  begin
      cdsDetail_Save.First;
      DataSet.FieldByName('CFWID').AsString := cdsDetail_Save.FieldByName('CFWID').AsString;
    //  DataSet.FieldByName('CFSettlementObject').AsString :=  cdsDetail_Save.FieldByName('CFSettlementObject').AsString;
  end;
  workTimeQty := GetRepairItemWorkTimeQty(DataSet.FieldByName('CFRepairItemID').AsString);
  DataSet.FieldByName('CFWorktimeQty').AsFloat := workTimeQty;
  workTimeStdPrice := GetWorkTimeStdPrice(cdsMaster.FieldByName('FBrandID').AsString);
  DataSet.FieldByName('CFWorktimePrice').AsFloat := workTimeStdPrice;
  DataSet.FieldByName('CFWorktimeCost').AsFloat := workTimeQty * workTimeStdPrice;

  DataSet.FieldByName('CFQty').AsFloat := 1;
  DataSet.FieldByName('CFTaxRate').AsFloat := 17;
  discountrateCls.GetDiscountRate;
  DataSet.FieldByName('CFDiscountRate').AsFloat := discountrateCls.repairDiscountRate;
  DataSet.FieldByName('CFI').AsString := 'I';
  DataSet.FieldByName('CFRepairWay').AsString := cxdblkpcmbxRepairType.EditValue;
  DataSet.FieldByName('CFSupplierID').AsString := cdsMaster.FieldByName('FSupplierID').AsString;

  //带出关联配件
  cdsRelatedSp := GetRelatedSp(DataSet.FieldByName('CFRepairItemID').AsString);

  //默认Txt\DJQ
  if DataSet.FieldByName('CFRepairItemID').AsString = repairItemTxtCls.repairItemForTxtId then
  begin
    DataSet.FieldByName('CFPrice').AsFloat := 0;
  end else
  begin
    taxPrice := cdsTmp.FieldByName('CFPrice').AsFloat;
    if taxPrice <> 0 then
    begin
       DataSet.FieldByName('CFPrice').AsFloat := Pub_Fun.USimpleRoundTo(taxPrice / 1.17);
    end else
    begin
       if cdsRelatedSp.Eof then  //无关联配件时
       begin
          //未设参考售价时,默认39，否则为0
          DataSet.FieldByName('CFPrice').AsFloat := 39;
       end else
       begin
          DataSet.FieldByName('CFPrice').AsFloat := 0;
       end;
    end;
  end;

  if LeftStr(DataSet.FieldByName('CFItemspNum').AsString,4) = 'FDJQ' then
  begin
     DataSet.FieldByName('CFQty').AsFloat := -1;
  end;

  CalItemSpEntryAmount(DataSet);
 // 关联配件时,带出关联配件

  while not cdsRelatedSp.Eof do
  begin
    DataSet.Append;
    DataSet.FieldByName('FID').AsString := CliDM.GetEASSID('FF1F0E1A');
    DataSet.FieldByName('FSEQ').AsInteger := DataSet.RecordCount +1;
    DataSet.FieldByName('FParentID').AsString := cdsMaster.FieldByName('FID').AsString;
    DataSet.FieldByName('CFT').AsString := 'P';
    DataSet.FieldByName('CFMaterialID').AsString := cdsRelatedSp.FieldByName('FMaterialID').AsString;
    DataSet.FieldByName('CFItemspName').AsString := cdsRelatedSp.FieldByName('materialName').AsString;
    DataSet.FieldByName('CFItemspNum').AsString := cdsRelatedSp.FieldByName('materialNum').AsString;

    DataSet.FieldByName('CFQty').AsFloat := cdsRelatedSp.FieldByName('CFQty').AsFloat;
    DataSet.FieldByName('CFPrice').AsFloat :=  cdsRelatedSp.FieldByName('CFPrice').AsFloat;
    DataSet.FieldByName('CFDiscountRate').AsFloat :=  cdsRelatedSp.FieldByName('CFDiscountRate').AsFloat;
    DataSet.FieldByName('CFTaxRate').AsFloat := 17;
    DataSet.FieldByName('CFI').AsString := 'I';

     //获取成本金额
    DataSet.FieldByName('CFCostAmount').AsFloat := GetMaterialCost(DataSet.FieldByName('CFMaterialID').AsString);
    DataSet.FieldByName('CFUnissueQty').AsFloat := DataSet.FieldByName('CFQty').AsFloat;

    CalItemSpEntryAmount(DataSet);
      //默认首次计算出初始的实际含税单价
    taxprice := DataSet.FieldByName('CFTaxPrice').AsFloat;
    discountrate := Dataset.fieldByName('CFDiscountRate').AsFloat;
    initFactTaxPrice := Pub_Fun.USimpleRoundTo(taxprice * (1 - discountrate / 100.0));
    DataSet.FieldByName('CFInitFactPrice').AsFloat := initFactTaxPrice;
  
    DataSet.FieldByName('CFRelateItemEntryId').AsString := repairItemEntryId;
    if DataSet.RecordCount >= 1 then
    begin
      cdsDetail_Save.First;
      DataSet.FieldByName('CFWID').AsString := cdsDetail_Save.FieldByName('CFWID').AsString;
    //  DataSet.FieldByName('CFSettlementObject').AsString :=  cdsDetail_Save.FieldByName('CFSettlementObject').AsString;
    end;
    DataSet.FieldByName('CFRepairWay').AsString := cxdblkpcmbxRepairType.EditValue;
    DataSet.FieldByName('CFSupplierID').AsString := cdsMaster.FieldByName('FSupplierID').AsString;
    cdsRelatedSp.Next;
  end;


    //焦点放于数量
  cxGrid1.SetFocus;
  cxdbColQty.FocusWithSelection;
  cxEditItemSP.Text := '';


end;
procedure TRepairWOEditFrm.AddLineForMaterial(var DataSet: TClientDataSet);
var
  sql,errmsg:string;
  cdsTmp:TClientDataSet;
  tmpIdx: Integer;
  price,taxprice,discountrate,initFactTaxPrice: Double;
begin
  cdsTmp :=  Select_BaseDataEx('配件','','select top 100 fid,fname_l2,fnumber from T_bd_material');
  if cdsTmp.IsEmpty then Exit;


  DataSet.Append;
  cxEditItemSP.Text :=  cdsTmp.FieldByName('fnumber').AsString;

  DataSet.FieldByName('FID').AsString := CliDM.GetEASSID('FF1F0E1A');
  DataSet.FieldByName('FSEQ').AsInteger := DataSet.RecordCount +1;
  DataSet.FieldByName('FParentID').AsString := cdsMaster.FieldByName('FID').AsString;
  DataSet.FieldByName('CFT').AsString := 'P';

  DataSet.FieldByName('CFMaterialID').AsString := cdsTmp.FieldByName('fid').AsString;
  DataSet.FieldByName('CFItemspName').AsString := cdsTmp.FieldByName('fname_l2').AsString;
  DataSet.FieldByName('CFItemspNum').AsString := cdsTmp.FieldByName('fnumber').AsString;


  if DataSet.RecordCount >= 1 then
  begin
      cdsDetail_Save.First;
      DataSet.FieldByName('CFWID').AsString := cdsDetail_Save.FieldByName('CFWID').AsString;
    //  DataSet.FieldByName('CFSettlementObject').AsString :=  cdsDetail_Save.FieldByName('CFSettlementObject').AsString;
  end;

  sql := Format('select isnull(FPrice,0) from T_BD_MaterialSales where FMaterialID=%s and FOrgUnit=%s',
                [QuotedStr(cdsTmp.FieldByName('fid').AsString),QuotedStr(UserInfo.Branch_ID)]);
  price := Double(Clidm.Get_QueryReturn(sql,errmsg));
  DataSet.FieldByName('CFPrice').AsFloat := price;
  DataSet.FieldByName('CFQty').AsFloat := 1;
  DataSet.FieldByName('CFTaxRate').AsFloat := 17;
  discountrateCls.GetDiscountRate;
  DataSet.FieldByName('CFDiscountRate').AsFloat := discountrateCls.retailDiscountRate;
  DataSet.FieldByName('CFI').AsString := 'I';

  DataSet.FieldByName('CFRepairWay').AsString := cxdblkpcmbxRepairType.EditValue;
  DataSet.FieldByName('CFSupplierID').AsString := cdsMaster.FieldByName('FSupplierID').AsString;


  CalItemSpEntryAmount(DataSet);

  //默认首次计算出初始的实际含税单价
  taxprice := DataSet.FieldByName('CFTaxPrice').AsFloat;
  discountrate := Dataset.fieldByName('CFDiscountRate').AsFloat;
  initFactTaxPrice := Pub_Fun.USimpleRoundTo(taxprice * (1 - discountrate / 100.0));
  DataSet.FieldByName('CFInitFactPrice').AsFloat := initFactTaxPrice;
  //获取成本金额
  DataSet.FieldByName('CFCostAmount').AsFloat := GetMaterialCost(DataSet.FieldByName('CFMaterialID').AsString);
  //焦点放于数量
  cxGrid1.SetFocus;
  cxdbColQty.FocusWithSelection;
  cxEditItemSP.Text := '';


end;
procedure TRepairWOEditFrm.CalItemSpEntryAmount(var DataSet: TClientDataSet);
var
  tType:string;
  qty,price,taxprice,amount,taxamount,discountrate,discount,taxrate,tax,issueqty,unissueqyt:Double;
  event: TFieldNotifyEvent;
begin
  tType := DataSet.FieldByName('CFT').AsString;
  qty := DataSet.FieldByName('CFQty').AsFloat;
  price := DataSet.FieldByName('CFPrice').AsFloat;
  discountrate := DataSet.FieldByName('CFDiscountRate').AsFloat;
  taxrate := DataSet.FieldByName('CFTaxRate').AsFloat;
  issueqty := DataSet.FieldByName('CFIssueQty').AsFloat;

  taxprice := Pub_Fun.USimpleRoundTo(price * (1 + taxrate/100.0));
  amount := Pub_Fun.USimpleRoundTo(qty * price * (1 - discountrate/100.0));
  taxamount :=  Pub_Fun.USimpleRoundTo(qty * taxprice * (1-discountrate/100.0));

  event := DataSet.FieldByName('CFTaxPrice').OnChange;
  DataSet.FieldByName('CFTaxPrice').OnChange := nil;
  DataSet.FieldByName('CFTaxPrice').AsFloat := taxPrice;
  DataSet.FieldByName('CFTaxPrice').OnChange := event;

  event := DataSet.FieldByName('CFAmount').OnChange;
  DataSet.FieldByName('CFAmount').OnChange := nil;
  DataSet.FieldByName('CFAmount').AsFloat := amount;
  DataSet.FieldByName('CFAmount').OnChange := event;

  event := DataSet.FieldByName('CFTaxAmount').OnChange;
  DataSet.FieldByName('CFTaxAmount').OnChange := nil;
  DataSet.FieldByName('CFTaxAmount').AsFloat := taxamount;
  DataSet.FieldByName('CFTaxAmount').OnChange := event;

  if tType = 'P' then
  begin
     DataSet.FieldByName('CFUnIssueQty').AsFloat := qty - issueqty;
  end else if tType = 'L' then
  begin
     DataSet.FieldByName('CFIssueQty').AsString := '';
     DataSet.FieldByName('CFUnIssueQty').AsString := '';
  end;

end;
function TRepairWOEditFrm.GetColumnIndexByName(CXGridView: TcxGridDBTableView; FieldName:string):Integer;
var
  i:integer;
begin
  for i := 0 to CXGridView.ColumnCount do
  begin
    if CXGridView.Columns[i].DataBinding.FieldName = FieldName then
    begin
      Result := -1;
      Continue;
      Exit;

    end;
  end;


  Result := -1;
end;
procedure TRepairWOEditFrm.cdsDetailCFWIDChange(Sender: TField);
var
    sql,errmsg: string;
    cdsTmp:TClientDataSet;
begin
  inherited;
  cdsTmp := TClientDataSet.Create(nil);
  sql := Format('select FNumber,CFSettleObject,CFTypeCode from CT_RS_W where fid=%s',[QuotedStr(sender.AsString)]);
  if not CliDM.Get_OpenSQL(cdsTmp,sql,errmsg) then
  begin
    ShowMsg(Self.Handle,'打开数据出错:'+ErrMsg,[]);
    Self.Close;
  end
  else
  begin
      cdsDetail.FieldByName('CFWNum').AsString := cdsTmp.FieldByName('FNumber').AsString;
      cdsDetail.FieldByName('CFSettlementObject').AsString := cdsTmp.FieldByName('CFSettleObject').AsString;
      cdsDetail.FieldByName('CFTypeCode').AsString := cdsTmp.FieldByName('CFTypeCode').AsString;
  end;
  cdsDetail.Post;
  cdsDetail.Edit;
end;

procedure TRepairWOEditFrm.cdsDetailCFRepairPkgIDChange(Sender: TField);
var
    sql,errmsg: string;
    cdsTmp:TClientDataSet;
begin
  inherited;
  cdsTmp := TClientDataSet.Create(nil);
  sql := Format('select FNumber from CT_RS_RepairPackage where fid=%s',[QuotedStr(sender.AsString)]);
  if not CliDM.Get_OpenSQL(cdsTmp,sql,errmsg) then
  begin
    ShowMsg(Self.Handle,'打开数据出错:'+ErrMsg,[]);
    Self.Close;
  end
  else
  begin
      cdsDetail.FieldByName('CFRepairPkgNum').AsString := cdsTmp.FieldByName('FNumber').AsString;
  end;
  cdsDetail.Post;
  cdsDetail.Edit;
end;

procedure TRepairWOEditFrm.cdsDetailCFSupplierIDChange(Sender: TField);
var
    sql,errmsg: string;
    cdsTmp:TClientDataSet;
begin
  inherited;
  cdsTmp := TClientDataSet.Create(nil);
  sql := Format('select fname_l2 from T_BD_Supplier where fid=%s',[QuotedStr(sender.AsString)]);
  if not CliDM.Get_OpenSQL(cdsTmp,sql,errmsg) then
  begin
    ShowMsg(Self.Handle,'打开数据出错:'+ErrMsg,[]);
    Self.Close;
  end
  else
  begin
      cdsDetail.FieldByName('CFSupplierName').AsString := cdsTmp.FieldByName('FName_l2').AsString;
  end;
  cdsDetail.Post;
  cdsDetail.Edit;
end;

procedure TRepairWOEditFrm.cdsDetailCFGiftDeptIDChange(Sender: TField);
var
    sql,errmsg: string;
    cdsTmp:TClientDataSet;
begin
  inherited;
  cdsTmp := TClientDataSet.Create(nil);
  sql := Format('select fname_l2 from T_ORG_Admin where fid=%s',[QuotedStr(sender.AsString)]);
  if not CliDM.Get_OpenSQL(cdsTmp,sql,errmsg) then
  begin
    ShowMsg(Self.Handle,'打开数据出错:'+ErrMsg,[]);
    Self.Close;
  end
  else
  begin
      cdsDetail.FieldByName('CFGiftDeptName').AsString := cdsTmp.FieldByName('FName_l2').AsString;
  end;
  cdsDetail.Post;
  cdsDetail.Edit;
end;

procedure TRepairWOEditFrm.cdsDetailCFPersonIDChange(Sender: TField);
var
    sql,errmsg: string;
    cdsTmp:TClientDataSet;
begin
  inherited;
  cdsTmp := TClientDataSet.Create(nil);
  sql := Format('select fname_l2 from T_BD_Person where fid=%s',[QuotedStr(sender.AsString)]);
  if not CliDM.Get_OpenSQL(cdsTmp,sql,errmsg) then
  begin
    ShowMsg(Self.Handle,'打开数据出错:'+ErrMsg,[]);
    Self.Close;
  end
  else
  begin
      cdsDetail.FieldByName('CFPersonName').AsString := cdsTmp.FieldByName('FName_l2').AsString;
  end;
  cdsDetail.Post;
  cdsDetail.Edit;
end;

procedure TRepairWOEditFrm.cdsDetailCFRepairWayChange(Sender: TField);
begin
  inherited;

  if Sender.AsString = '0' then
  begin
    cdsDetail.FieldByName('CFSupplierID').AsString := '';
  end;
  cdsDetail.Post;
  cdsDetail.Edit;
end;

procedure TRepairWOEditFrm.cxGrid1DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  tType: String;
begin
  inherited;
  tType := AViewInfo.GridRecord.Values[cxdbColT.Index];
  if (AViewInfo.Item.Name = cxdbColUnIssueQty.Name) and (tType = 'P') then
  begin
     if AViewInfo.GridRecord.Values[cxdbColUnIssueQty.Index] = 0 then
       ACanvas.Brush.Color := TColor(-16777201)
     else
        ACanvas.Brush.Color := clRed;

  end

end;

procedure TRepairWOEditFrm.cdsDetailCFQtyChange(Sender: TField);
var
  event: TFieldNotifyEvent;
  oldQty: double;
  isCT: integer;
begin
  inherited;
  event := Sender.OnChange;
  Sender.OnChange := nil;
  oldQty := Sender.OldValue;
  CalItemSpEntryAmount(cdsDetail);
  isCT := cdsDetail.FieldByName('CFISCT').AsInteger;
  Sender.OnChange := event;
  if isCT = 1 then   //拆退业务
  begin
     if Sender.AsFloat > 0 then
     begin
        ShowMessage('拆退数量不能大于0');
        cdsDetail.Cancel;
        abort;
     end;
  end else
  begin

  end;
  cdsDetail.Post;
  cdsDetail.Edit;
end;

procedure TRepairWOEditFrm.cxGrid1DBTableView1Editing(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  var AAllow: Boolean);
var
  tType: string;
  itemspNum:string;
  colName:string;
begin
  inherited;
  tType := cdsDetailCFT.AsString;
  itemspNum := cdsDetailCFItemspNum.AsString;
  colName := AItem.Name;
  if colName = cxdbColSupplier.Name then
  begin
      AAllow :=  cdsDetail.FieldByName('CFRepairWay').AsString = '2';
  end;
  if (colName = cxdbColRepairPkg.Name) or (colName = cxdbColPerson.Name) then
  begin
    AAllow := true;
    Exit;
  end;

  if (cdsDetailCFI.AsString = 'H') or  (cdsDetailCFI.AsString = 'X') then
  begin
      AAllow := false;
      Exit;
  end;
  if (cdsDetailCFIsAPSettle.AsInteger = 1) then
  begin
    AAllow := false;
    Exit;
  end;
  if tType = 'L' then //维修项目行
  begin
     if not oprtPermCls.oprtRepairLine then
     begin
         AAllow := false;
         Exit;
     end;
     if colName = cxdbColIsCT.Name then
     begin
        AAllow := false;
        Exit;
     end;
     if (colName = cxdbColTaxPrice.Name) or (colName = cxdbColTaxAmount.Name) or
       (colName = cxdbColPrice.Name) or (colName = cxdbColAmount.Name) then
        AAllow := oprtPermCls.oprtRepairTaxPrice;


  end else if tType='P' then  //配件行
  begin
    if not oprtPermCls.oprtRetailLine then
     begin
         AAllow := false;
         exit;
     end;
    if colName = cxdbColItemspName.Name then
      aallow :=  oprtPermCls.OprtRetailItemspName;
    if (colName = cxdbColTaxPrice.Name) or (colName = cxdbColTaxAmount.Name) or
       (colName = cxdbColPrice.Name) or (colName = cxdbColAmount.Name) then
        AAllow := oprtPermCls.oprtRetailPrice;
    if cdsDetailCFOriginalEntryId.AsString <> '' then
    begin
        if colName = cxdbColDiscountRate.Name then
            AAllow := true
        else AAllow := false;
    end;


  end;



  


end;

procedure TRepairWOEditFrm.cdsDetailCFPriceChange(Sender: TField);
begin
  inherited;
  CalItemSpEntryAmount(cdsDetail);
  if not CheckAllowMaxDiscount then exit;
  cdsDetail.Post;
  cdsDetail.Edit;
end;

function TRepairWOEditFrm.CheckAllowMaxDiscount: boolean;
var
  event: TNotifyEvent;
  discountRate,taxPrice,factPrice,initFactPrice,costAmount:double;
  tType: string;
  isCT : integer;
begin
  inherited;
//  CalItemSpEntryAmount(cdsDetail);

  discountRate := cdsDetailCFDiscountRate.AsFloat;
  initFactPrice := cdsDetailCFInitFactPrice.AsFloat;
  taxPrice := cdsDetailCFTaxPrice.AsFloat;
  factPrice := Pub_Fun.USimpleRoundTo(taxPrice * (1-discountRate/100.0));
  tType := cdsDetailCFT.AsString;
  isCT := cdsDetailCFIsCT.AsInteger;
  costAmount := cdsDetailCFCostAmount.AsFloat;
  if ('L' = tType) and (initFactPrice <> factPrice) and (discountRate > discountrateCls.maxRepairDiscountRate) then
  begin
    ShowMessage(Format('折扣不能高于折扣权限[%n]！',[discountrateCls.maxRepairDiscountRate]));
    cdsDetail.Cancel;
    Result := false;
    Exit;
  end else if ('P' = tType) and (initFactPrice <> factPrice) and (discountRate > discountrateCls.maxRetailDiscountRate) then
  begin
    ShowMessage(Format('折扣不能高于折扣权限[%n]！',[discountrateCls.maxRetailDiscountRate]));
    cdsDetail.Cancel;
    Result := false;
    Exit;
  end;
  if (tType = 'P') and (initFactPrice <>factPrice) and (isCT <> 1) and (factPrice < costAmount) then
  begin

    ShowMessage(Format('[%s]不能低于成本价出售！',[cdsDetailCFItemspName.AsString]));
    cdsDetail.Cancel;
    Result := false;
    Exit;
  end;
  Result := true;
end;

procedure TRepairWOEditFrm.cdsDetailCFDiscountRateChange(Sender: TField);
begin
  inherited;
  CalItemSpEntryAmount(cdsDetail);
  if not CheckAllowMaxDiscount then exit;

  cdsDetail.Post;
  cdsDetail.Edit;

end;

procedure TRepairWOEditFrm.cdsDetailCFTaxPriceChange(Sender: TField);
var
  taxPrice,taxrate,price: double;
  event:TFieldNotifyEvent;
begin
  inherited;
  taxPrice := Sender.AsFloat;
  taxrate := cdsDetail.FieldByName('CFTaxRate').AsFloat;
  price := Pub_Fun.USimpleRoundTo(taxPrice / (1 + taxrate/100.0));

  event := cdsDetail.FieldByName('CFPrice').OnChange;
  cdsDetail.FieldByName('CFPrice').OnChange := nil;
  cdsDetail.FieldByName('CFPrice').AsFloat := price;
  cdsDetail.FieldByName('CFPrice').OnChange := event;

  CalItemSpEntryAmount(cdsDetail);

  if not CheckAllowMaxDiscount then exit;

  event := cdsDetail.FieldByName('CFTaxPrice').OnChange;
  cdsDetail.FieldByName('CFTaxPrice').OnChange := nil;
  cdsDetail.FieldByName('CFTaxPrice').AsFloat := taxPrice;
  cdsDetail.FieldByName('CFTaxPrice').OnChange := event;

  cdsDetail.Post;
  cdsDetail.Edit;
end;

procedure TRepairWOEditFrm.cdsDetailCFTaxAmountChange(Sender: TField);
var
  taxamount,price,taxrate,qty:Double;
  event:TFieldNotifyEvent;
begin
  inherited;
  taxamount := sender.AsFloat;
  taxrate := cdsDetail.FieldByName('CFTaxRate').AsFloat;
  qty := cdsDetail.FieldByName('CFQty').AsFloat;
  price := Pub_Fun.USimpleRoundTo(taxamount / (qty * (1 + taxrate / 100.0)));

  event := cdsDetail.FieldByName('CFPrice').OnChange;
  cdsDetail.FieldByName('CFPrice').OnChange := nil;
  cdsDetail.FieldByName('CFPrice').AsFloat := price;
  cdsDetail.FieldByName('CFPrice').OnChange := event;
  CalItemSpEntryAmount(cdsDetail);
  if not CheckAllowMaxDiscount then exit;

  event := cdsDetail.FieldByName('CFTaxAmount').OnChange;
  cdsDetail.FieldByName('CFTaxAmount').OnChange := nil;
  cdsDetail.FieldByName('CFTaxAmount').AsFloat := taxamount;
  cdsDetail.FieldByName('CFTaxAmount').OnChange := event;

  cdsDetail.Post;
  cdsDetail.Edit;
end;

procedure TRepairWOEditFrm.cdsDetailCFAmountChange(Sender: TField);
var
  amount,price,taxrate,qty:Double;
  event:TFieldNotifyEvent;
begin
  inherited;
  amount := sender.AsFloat;
  taxrate := cdsDetail.FieldByName('CFTaxRate').AsFloat;
  qty := cdsDetail.FieldByName('CFQty').AsFloat;
  price := Pub_Fun.USimpleRoundTo(amount / qty);

  event := cdsDetail.FieldByName('CFPrice').OnChange;
  cdsDetail.FieldByName('CFPrice').OnChange := nil;
  cdsDetail.FieldByName('CFPrice').AsFloat := price;
  cdsDetail.FieldByName('CFPrice').OnChange := event;

  CalItemSpEntryAmount(cdsDetail);

  event := cdsDetail.FieldByName('CFAmount').OnChange;
  cdsDetail.FieldByName('CFAmount').OnChange := nil;
  cdsDetail.FieldByName('CFAmount').AsFloat := amount;
  cdsDetail.FieldByName('CFAmount').OnChange := event;

 if not CheckAllowMaxDiscount then exit;


  cdsDetail.Post;
  cdsDetail.Edit;
end;

procedure TRepairWOEditFrm.cdsDetailCFTaxRateChange(Sender: TField);
begin
  inherited;
  CalItemSpEntryAmount(cdsDetail);
  if not CheckAllowMaxDiscount then exit;
  cdsDetail.Post;
  cdsDetail.Edit;
end;



function TRepairWOEditFrm.GetMaterialCost(materialID: String): Double;
var
  sql,errmsg:string;
  cdsTmp: TClientDataSet;
  costPrice: double;
begin
  cdsTmp := TClientDataSet.Create(nil);
  if materialID = '' then
  begin
    Result := 0;
    exit;
  end;
  sql := Format('select isnull(CFCostPrice,0) FCostPrice from T_BD_MaterialInventory where FMaterialID=%s and FOrgUnit=%s',
                [QuotedStr(materialId),QuotedStr(UserInfo.Branch_ID)]);
  if not CliDM.Get_OpenSQL(cdsTmp,sql,errmsg) then
  begin
    ShowMsg(Self.Handle,'打开数据出错:'+ErrMsg,[]);
    Abort;
  end;
  if not cdsTmp.Eof then
  begin
    costPrice := cdsTmp.FieldByName('FCostPrice').AsFloat;
  end else
  begin
    sql := Format('select isnull(FPrice,0) FPrice from T_BD_MaterialPurchasing where FMaterialID=%s and FOrgUnit=%s',
                  [QuotedStr(materialId),QuotedStr(UserInfo.Branch_ID)]);
    if not CliDM.Get_OpenSQL(cdsTmp,sql,errmsg) then
    begin
      ShowMsg(Self.Handle,'打开数据出错:'+ErrMsg,[]);
      Abort;
    end else
    begin
      if not cdsTmp.Eof then
      begin
        costPrice := cdsTmp.FieldByName('FPrice').AsFloat * 1.17;
      end;
    end;

  end;
  Result := costPrice;

end;

procedure TRepairWOEditFrm.cxComboxTPropertiesChange(Sender: TObject);
begin
  inherited;
  cxEditItemSP.Text := '';
end;

function TRepairWOEditFrm.GetRepairItemWorkTimeQty(repairItemId: string): double;
var
  sql,errmsg:string;
  cdsTmp: TClientDataSet;
  stdWorkTime: Double;
begin
  cdsTmp := TClientDataSet.Create(nil);
  if repairitemId = '' then
  begin
    Result := 0;
    Exit;
  end;
  sql := Format('select isnull(FStdWorkTime,0) FStdWorkTime from T_ATS_RepairItemEntry where FParentId=%s',
        [QuotedStr(repairItemId)]);

  if not CliDM.Get_OpenSQL(cdsTmp,sql,errmsg) then
  begin
    ShowMsg(Self.Handle,'打开数据出错:'+ErrMsg,[]);
    Abort;
  end else
  begin
    if not cdsTmp.Eof then
    begin
      stdWorkTime := cdsTmp.FieldByName('FStdWorkTime').AsFloat;
    end;
  end;
  Result := stdWorkTime;
end;
function TRepairWOEditFrm.GetWorkTimeStdPrice(brandID:string):Double;
var
  sql,errmsg:string;
  cdsTmp: TClientDataSet;
  workTimeStdPrice: double;
begin
  cdsTmp := TClientDataSet.Create(nil);
  if brandID = '' then
  begin
    Result := 0;
    Exit;
  end;
  sql := Format('select FWorkTimeStandardPrice from T_ATS_WorkTimeStdPrice where FOrgUnitID=%s and FBrandID=%s',
        [QuotedStr(userInfo.Controlunitid),QuotedStr(brandID)]);

  if not CliDM.Get_OpenSQL(cdsTmp,sql,errmsg) then
  begin
    ShowMsg(Self.Handle,'打开数据出错:'+ErrMsg,[]);
    Abort;
  end else
  begin
    if not cdsTmp.Eof then
    begin
      workTimeStdPrice := cdsTmp.FieldByName('FWorkTimeStandardPrice').AsFloat;
    end;
  end;
  Result := workTimeStdPrice;
end;

function TRepairWOEditFrm.GetRelatedSp(repairItemId:string): TClientDataSet;
var
  sql,errmsg:string;
  cdsTmp:TClientDataSet;
begin
  cdsTmp := TClientDataSet.Create(nil);
  sql := Format('select a.FMaterialID,b.FNumber materialNum,b.FName_l2 materialName,' +
            'a.FUnitID,c.FNumber unitNum,c.FName_l2 unitName, '+
            'a.FBaseUnitID,d.FNumber baseUnitNum,d.FName_L2 baseUnitName, '+
            'a.CFQty,a.CFPrice,a.CFDiscountRate '+
            'from T_ATS_RepairItemSpEntry a '+
            'left join t_bd_material b on b.fid=a.FMaterialID '+
            'left join T_BD_MeasureUnit c on c.fid=a.FUnitID '+
            'left join T_BD_MeasureUnit d on d.fid=a.FBaseUnitID '+
            'where FParentID=%s',[QuotedStr(repairItemId)]);
  if not CliDM.Get_OpenSQL(cdsTmp,sql,errmsg) then
  begin
    ShowMessage('打开数据出错:'+ErrMsg);
    Abort;
  end else
  begin
    Result := cdsTmp;
  end;

end;



procedure TRepairItemTxtCls.GetRepairItemForTxt;
var
  sql,errmsg:string;
  cdsTmp:TClientDataSet;
begin
  cdsTmp := TClientDataSet.Create(nil);
  if brandName = 'BMW' then
  begin
     sql := Format('select fid,FName_l2,FNumber from T_ATS_RepairItem where fnumber=%s and FOrgUnitID=%s',
              [QuotedStr('TXT-1'),QuotedStr(UserInfo.Branch_ID)]);
  end else if brandName = 'MINI' then
  begin
     sql := Format('select fid,FName_l2,FNumber from T_ATS_RepairItem where fnumber=%s and FOrgUnitID=%s',
              [QuotedStr('TXT-2'),QuotedStr(UserInfo.Branch_ID)]);
  end else
  begin
    ShowMessage('取默认TXT维修项目，品牌不能为空:'+ErrMsg);
    Abort;
  end;
  if not CliDM.Get_OpenSQL(cdsTmp,sql,errmsg) then
  begin
    ShowMessage('打开数据出错:'+ErrMsg);
    Abort;
  end else
  begin
    if not cdsTmp.Eof then
    begin
      repairItemForTxtId := cdsTmp.FieldByName('FID').AsString;
    end;
  end;
end;

constructor TRepairItemTxtCls.Create(brandId:string;brandName:string);
begin
  self.brandId := brandId;
  self.brandName := brandName;
  GetRepairItemForTxt;
end;


constructor TOprtPermCls.Create;
begin
  oprtRetailLine := false; //零售行操作权限
  oprtRepairLine := false; //维修行操作权限
  OprtRetailItemspName := false; //操作配件行说明权限
  oprtRetailPrice := false; //操作配件行价格
  oprtRetailBelowCost := false; //配件低于成本价销售
  oprtRepairTaxPrice := false; //操作维修行价格字段
  GetFunctionPermission;
end;

procedure TOprtPermCls.GetFunctionPermission;
var
  permUtils: TPermUtilsCls;
begin
  permUtils := TPermUtilsCls.Create;

  oprtRetailLine := permUtils.hasFunctionPermission('oprtRetailLine');
  oprtRepairLine := permUtils.hasFunctionPermission('oprtRepairLine'); //维修行操作权限
  OprtRetailItemspName := permUtils.hasFunctionPermission('oprtRetailItemspName'); //操作配件行说明权限
  oprtRetailPrice := permUtils.hasFunctionPermission('oprtRetailPrice'); //操作配件行价格
  oprtRetailBelowCost := permUtils.hasFunctionPermission('oprtRetailBelowCost'); //配件低于成本价销售
  oprtRepairTaxPrice := permUtils.hasFunctionPermission('oprtRepairTaxPrice'); //操作维修行价格字段

end;


procedure TDiscountRateCls.GetDiscountRate;
var
  sql,errmsg:string;
  cdsTmp: TClientDataSet;
  customerAccountId,customerId,cometime: string;

begin
  cdsTmp := TClientDataSet.Create(nil);

  customerAccountId := RepairWOEditFrm.cdsMaster.FieldByName('CFCustomerAccountI').AsString;
  if customerAccountId = '' then
  begin
    Exit;
  end;

  sql := Format('select isnull(CFRetailDiscountRate,0) CFRetailDiscountRate,isnull(CFRepairDiscountRate,0) CFRepairDiscountRate ' +
                'from CT_RS_CustomerAccount where FID=%s',[QuotedStr(customerAccountId)]);
  if not CliDM.Get_OpenSQL(cdsTmp,sql,errmsg) then
  begin
    ShowMessage('打开数据出错:'+ErrMsg);
    Abort;
  end;
  if not cdsTmp.Eof then
  begin
     repairDiscountRate := cdsTmp.FieldByName('CFRepairDiscountRate').AsFloat;
     retailDiscountRate := cdsTmp.FieldByName('CFRetailDiscountRate').AsFloat;
  end;
  if (repairDiscountRate = 0) or (retailDiscountRate = 0) then
  begin
     customerId := RepairWOEditFrm.cdsMaster.FieldByName('CFCustomerAccountI').AsString;
     cometime := RepairWOEditFrm.cdsMaster.FieldByName('FComeTime').AsString;
     if (customerId = '') or (cometime = '') then
     begin
        Exit;
     end;


    sql := Format('select top 1 isnull(b.CFRetailDiscountRate,0) CFRetailDiscountRate,isnull(b.CFRepairDiscountRate,0) CFRepairDiscountRate ' +
                  'from CT_BD_CustomerDiscount a ' +
					        'left join CT_BD_CustomerDiscountEntry b on a.fid=b.FParentID ' +
					        'where b.CFAtsCustomerID=%s and convert(varchar(10),a.CFEffectiveDate,120) <=%s '+
					        'and convert(varchar(10),a.CFExpirationDate,120) >=%s and a.CFSaleOrgUnitID=%s and a.FBaseStatus=''4'' order by a.FAuditTime DESC',
                  [QuotedStr(customerId),QuotedStr(cometime),QuotedStr(cometime),QuotedStr(userInfo.Branch_ID)]);
    if not CliDM.Get_OpenSQL(cdsTmp,sql,errmsg) then
    begin
      ShowMessage('打开数据出错:'+ErrMsg);
      Abort;
    end;
    if repairDiscountRate = 0 then
       repairDiscountRate := cdsTmp.FieldByName('CFRepairDiscountRate').AsFloat;
    if retailDiscountRate = 0 then
       retailDiscountRate := cdsTmp.FieldByName('CFRetailDiscountRate').AsFloat;
  end;
end;

procedure TDiscountRateCls.GetMaxDiscountRate;
var
  sql,errmsg:string;
  cdsTmp:TClientDataSet;
begin
  cdsTmp := TClientDataSet.Create(nil);
  sql := Format('select isnull(CFMaxRepairDiscountRate,0) maxRepairDiscountRate, isnull(CFMaxRetailDiscountRate,0) maxRetailDiscountRate ' +
          'from T_PM_User where FID=%s',[QuotedStr(UserInfo.LoginUser_FID)]);
  if not CliDM.Get_OpenSQL(cdsTmp,sql,errmsg) then
  begin
     ShowMessage('打开数据出错:'+ErrMsg);
     Abort;
  end else
  begin
     if not cdsTmp.Eof then
     begin
        maxRepairDiscountRate := cdsTmp.FieldByName('maxRepairDiscountRate').AsFloat;
        maxRetailDiscountRate := cdsTmp.FieldByName('maxRetailDiscountRate').AsFloat;

     end;
  end;

end;
procedure TRepairWOEditFrm.cxGrid1DBTableView1CellClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
  iType,newIType: string;
  wID,newWID: string;
  id: string;
begin
  inherited;
  if  ACellViewInfo.Item.Name = cxdbColI.Name then
  begin
     id := cdsDetail.FieldByName('FID').AsString;
     iType := ACellViewInfo.GridRecord.Values[cxdbColI.Index];
     if iType = 'I' then
     begin
        newIType := 'H';
     end else if iType = 'H' then
     begin
        newIType := 'I';
     end else
     begin
       Exit;
     end;

     wID := cdsDetail.FieldByName('CFWID').AsString;
     if wID = '' then exit;
       cdsDetail.First;
     while not cdsDetail.Eof do
     begin
        cdsDetail.Edit;
        newWID := cdsDetail.FieldByName('CFWID').AsString;
        if newWID = '' then
        begin
          cdsDetail.Next;
          continue;
        end;
        if cdsDetail.FieldByName('CFI').AsString = 'X' then
        begin
          cdsDetail.Next;
          continue;
        end;

        if newWID=wID then
          cdsDetail.FieldByName('CFI').AsString := newIType;
        cdsDetail.Post;
        cdsDetail.Next;

     end;
     cdsDetail.Locate('FID',id,[]);
  end;
end;

procedure TRepairWOEditFrm.cdsDetailCFIsCTChange(Sender: TField);
begin
  inherited;
  if Sender.AsFloat = 1 then
  begin
    cdsDetail.FieldByName('CFQty').AsFloat := -1;
  end;
  cdsDetail.Post;
  cdsDetail.Edit;
end;



end.
