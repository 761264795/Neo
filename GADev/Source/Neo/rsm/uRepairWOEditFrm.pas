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
  Menus, cxLookAndFeelPainters, cxButtons;

type
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
    cxTxtEngineNum: TcxTextEdit;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    cxLabel12: TcxLabel;
    cxLabel13: TcxLabel;
    cxTxtOwner: TcxTextEdit;
    cxTxtBrand: TcxTextEdit;
    cxTxtSerise: TcxTextEdit;
    cxTxtCompany: TcxTextEdit;
    cxLabel14: TcxLabel;
    cxEditSupplier: TcxButtonEdit;
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
    cxlkpcomboxRepairType: TcxLookupComboBox;
    cdsRepairWay: TClientDataSet;
    cdsRepairWayFNumber: TStringField;
    cdsRepairWayFName: TStringField;
    dsRepairWay: TDataSource;
    cxmemoRemarkList: TcxMemo;
    cdsDetailCFRepairPkgName: TWideStringField;
    cdsDetailCFWName: TWideStringField;
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
    procedure cxlkpcomboxRepairTypePropertiesChange(Sender: TObject);
    procedure cxEditSupplierPropertiesButtonClick(Sender: TObject;
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
    procedure cxdbColRepairWayPropertiesEditValueChanged(Sender: TObject);
    procedure cxdbColRepairWayPropertiesChange(Sender: TObject);
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
  private
    { Private declarations }
    procedure GetVehicleRepairRemarkList;
    procedure DefaultValueForAddnew;
  public
    { Public declarations }
     procedure Open_Bill(BillFID:string); override;      //打开单据编辑界面
     function ST_Save:Boolean;override;
     function Chk_Data: Boolean;

  end;

var
  RepairWOEditFrm: TRepairWOEditFrm;

implementation

{$R *.dfm}
uses
  FrmCliDM,Pub_Fun,uMaterDataSelectHelper, Math,uRepairManFrm;
procedure TRepairWOEditFrm.FormCreate(Sender: TObject);
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


end;

procedure TRepairWOEditFrm.Open_Bill(BillFID: string);
var OpenTables: array[0..3] of string;
    _cds: array[0..3] of TClientDataSet;
    ErrMsg : string;
    strsql : string;
    vehicleID: string;
begin
  BillFID := 'uRBA6d4u20qnmcybDElrtn6h9S0=';
  strsql := ' select * from T_ATS_RepairWO where FID='+quotedstr(BillFID);
  OpenTables[0] := strsql;

  strsql := 'select a.*,aa.FName_l2 FCreatorName,ab.FName_l2 CFModifierName,ac.FName_l2 FAuditorName,'+
            'b.FPlateNum,b.FVIN,b.FEngineNum,c.FName_l2 modelName, ' +
            'd.fname_l2 customerName,e.fname_l2 brandName,f.FName_l2 seriesName,'+
            'g.FName_l2 repairBizTypeName,h.FName_L2 saName,i.FName_l2 customerAccountName,' +
            'j.FName_l2 bizPersonName,k.FName_L2 supplierName ' +
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
            'where a.FID='+quotedstr(BillFID);
  OpenTables[1] := strsql;

  strsql := 'select * from CT_ATS_RepairWORWOItemSpEntry  where FID='+quotedstr(BillFID);
  OpenTables[2] := strsql;

  strsql := 'select a.*,b.FNumber CFRepairPkgNum,b.FName_l2 CFRepairPkgName, ' +
        'c.FNumber CFWNum, c.FName_l2 CFWName,' +
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
    try
      with cdsMaster do
      begin
        Append;
      end;
      BillStatus.IsEdit := True
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
    FieldByName('FCREATETIME').AsDateTime := Now;
    FieldByName('FNUMBER').AsString := 'number001';//CliDM.GetSCMBillNum(sBillTypeID,UserInfo.Branch_Flag,sBillFlag,true,ErrMsg);
    FieldByName('CFGaBillStatus').AsInteger := 1;  //保存状态
    FieldByName('CFIsPrintedSettle').AsInteger := 0;

    FieldByName('FBIZDATE').AsDateTime := CliDM.Get_ServerTime;
    FieldByName('FCREATORID').AsString := UserInfo.LoginUser_FID;

    FieldByName('FLASTUPDATEUSERID').AsString := UserInfo.LoginUser_FID;
    FieldByName('FLASTUPDATETIME').AsDateTime := CliDM.Get_ServerTime;
    FieldByName('FControlUnitID').AsString := UserInfo.FCONTROLUNITID;    //控制单元，从服务器获取


  end;

  sql :=  Format('select fid from T_ATS_Vehicle where FOrgUnitID=%s and FPlateNum=%s',
        [QuotedStr(UserInfo.Branch_ID),QuotedStr('00001')]);
  tmpId :=  CliDM.Get_QueryReturn(sql,errmsg);
  if tmpId = '' then
  begin
    ShowMsg(Self.Handle,'未设置默认车辆0001!  ',[]);
    Abort;
  end;
  DataSet.FieldByName('fvehicleid').AsString := tmpId;
  GetVehicleRepairRemarkList;

  sql := Format('select fid from CT_RS_RepairWOBizType where fnumber=%s',['0001']);
  tmpId := CliDM.Get_QueryReturn(sql,ErrMsg);
  if tmpId = '' then
  begin
    ShowMsg(Self.Handle,'未设置默认业务类型0001!  ',[]);
    Abort;
  end;
  DataSet.FieldByName('CFRepairBizTypeID').AsString := tmpId;

  cxlkpcomboxRepairType.ItemIndex := 0;

end;

procedure TRepairWOEditFrm.cdsMasterCalcFields(DataSet: TDataSet);
var
  tmpID: String;

begin
  inherited;
  tmpID := DataSet.FieldByName('CFGaBillStatus').AsString;
  if cdsGABillStatus.Locate('FNumber',tmpID,[]) then
      DataSet.FieldByName('gaBillStatusName').AsString :=  cdsGABillStatus.FieldByName('FName').AsString;



      // DataSet.FieldByName('CFPlateNum').AsString := 'abc';
     // DataSet.FieldByName('FCompanyNumber').AsString := 'edf';
  {
  with DataSet do
  begin
    gabillstatus := FieldByName('CFGaBillStatus').AsString;
    if (gabillstatus = '1') then FieldByName('CFGaBillStatusName').AsString := '未结算';

    repairbiztypeId := FieldByName('CFRepairBizTypeID').AsString;
    if repairbiztypeId = '' then
    begin
        FieldByName('CFRepairBizTypeName').AsString := '';
    end
    else
    begin
      sql := 'select fid,fname_l2,fnumber from CT_RS_RepairWOBizType where fid=' + QuotedStr(repairbiztypeId);
      if not CliDM.Get_OpenSQL(STBaseEditDataSet,sql,errmsg) then
      begin
        ShowMsg(Self.Handle,'打开数据出错:'+ErrMsg,[]);
        Self.Close;
      end
      else
      begin
         FieldByName('CFRepairBizTypeName').AsString := STBaseEditDataSet.FieldByName('fname_l2').AsString
      end;
    end;

    tmpID := FieldByName('CFRepairBizTypeID').AsString;
    if tmpID <> '' then
    begin
      sql := 'select fname_l2 from CT_RS_RepairWOBizType where fid=' + QuotedStr(tmpId);
      FieldByName('CFRepairBizTypeName').AsString := CliDM.Get_QueryReturn(sql,errmsg);
    end;
    tmpID := FieldByName('CFCustomerAccountI').AsString;
    if tmpID <> '' then
    begin
      sql := 'select fname_l2 from CT_RS_CustomerAccount where fid=' + QuotedStr(tmpId);
      FieldByName('CFAccountCodeName').AsString := CliDM.Get_QueryReturn(sql,errmsg);
    end;

    //业务员
    tmpID := FieldByName('CFBizPersonID').AsString;
    if tmpID <> '' then
    begin
      sql := 'select fname_l2 from t_bd_person where fid=' + QuotedStr(tmpId);
      FieldByName('CFBizPersonName').AsString := CliDM.Get_QueryReturn(sql,errmsg);
    end;
    
  end;


  //获取维修历史
 // GetVehicleRepairRemarkList;
   }
end;

procedure TRepairWOEditFrm.cxdbEditPlateNumPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
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

procedure TRepairWOEditFrm.cxdbEditVinPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
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

procedure TRepairWOEditFrm.cxlkpcomboxRepairTypePropertiesChange(
  Sender: TObject);
begin
  inherited;
  cxEditSupplier.Enabled := cxlkpcomboxRepairType.EditValue = '2';
  cdsMaster.Edit;
  cdsMaster.FieldByName('FSupplierID').AsString := '';
  cdsMaster.Post;
  cxEditSupplier.Text := '';

end;

procedure TRepairWOEditFrm.cxEditSupplierPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  with Select_BaseDataEx('供应商','','select top 100 fid,fname_l2,fnumber from t_bd_supplier') do
  begin
    if not IsEmpty then
    begin
      cdsMaster.Edit;
      cdsMaster.FieldByName('FSupplierID').AsString := FieldByName('FID').AsString;
      cdsMaster.Post;
      cxEditSupplier.Text := FieldByName('FName_l2').AsString;
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
  sTType := cxComboxT.EditValue;

  if sTType = 'L' then
  begin
    cdsTmp := Select_BaseDataEx('维修项目','','select top 100 fid,fname_l2,fnumber from t_ats_repairitem') ;
  end
  else if sTType = 'P' then    //物料
  begin
    cdsTmp :=  Select_BaseDataEx('配件','','select top 100 fid,fname_l2,fnumber from T_bd_material');
  end;

  with cdsTmp do
  begin
    if not IsEmpty then
    begin
      sItemSpID := FieldByName('FID').AsString;
      sItemSpNum := FieldByName('FNumber').AsString;
      sItemSpName := FieldByName('FName_l2').AsString;
    end;
  end;
  cxEditItemSP.Text := sItemSpNum;

  cdsDetail.Append;

  cdsDetail.FieldByName('FID').AsString := CliDM.GetEASSID('FF1F0E1A');
  cdsDetail.FieldByName('FSEQ').AsInteger := cdsDetail.RecordCount +1;
  cdsDetail.FieldByName('FParentID').AsString := cdsMaster.FieldByName('FID').AsString;
  cdsDetail.FieldByName('CFT').AsString := cxComboxT.EditText;
  cdsDetail.FieldByName('CFItemspNum').AsString := sItemSpNum;
  cdsDetail.FieldByName('CFItemspName').AsString := sItemSpName;

  if (sTType = 'L') then
  begin
    cdsDetail.FieldByName('CFRepairItemID').AsString := sItemSpID;
  end else if (sTType='P') then
  begin
    cdsDetail.FieldByName('CFMaterialID').AsString := sItemSpID;

  end;
  cdsDetail.FieldByName('CFQty').AsFloat := 1;
  cdsDetail.FieldByName('CFPrice').AsFloat := 1;
  cdsDetail.FieldByName('CFDiscountRate').AsInteger := 0;
  cdsDetail.FieldByName('CFAmount').AsFloat := 0;
  cdsDetail.FieldByName('CFI').AsString := 'X';
  cdsDetail.FieldByName('CFISCT').AsInteger := 0;
  cdsDetail.FieldByName('CFUnIssueQty').AsFloat := 1;
  cdsDetail.FieldByName('CFIssueQty').AsFloat := 0;
  cdsDetail.FieldByName('CFTaxRate').AsFloat := 17.00;

  cdsDetail.FieldByName('CFCostAmount').AsFloat := 0;
  cdsDetail.FieldByName('CFISDELETE').AsInteger := 0;
  cdsDetail.FieldByName('CFTaxPrice').AsFloat := 1;
  cdsDetail.FieldByName('CFTaxAmount').AsFloat := 1;


  cdsDetail.Post;


end;

procedure TRepairWOEditFrm.cxBtnRemoveLineClick(Sender: TObject);
begin
  inherited;

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
  if vehicleID <> '' then
  begin
  cdsTmp := TClientDataSet.Create(nil);
   sql := 'select CFRemark from CT_ATS_VehicleRepairRemark ' +
          'where FParentID=' + QuotedStr(vehicleID) +
          ' and CFRepairWOID<>' + QuotedStr(id) +
          ' order by CFCreateTime desc';
   if not CliDM.Get_OpenSQL(cdsTmp,sql,errmsg) then
   begin
      while not cdsTmp.Eof  do
      begin
        sRemarkList := sRemarkList + cdsTmp.FieldByName('CFRemark').AsString + ',';
        cdsTmp.Next;
      end
   end
  end;
  cxmemoRemarkList.Text := sRemarkList;
end;

procedure TRepairWOEditFrm.cxdbEditPlateNumKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
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
  with Select_BaseData('CT_RS_RepairPackage','套餐','','') do
  begin
    if not IsEmpty then
    begin
      cdsDetail.Edit;
      cdsDetail.FieldByName('CFRepairPkgName').AsString := FieldByName('FName_l2').AsString;
      cdsDetail.FieldByName('CFRepairPkgID').AsString := FieldByName('FID').AsString;
      cdsDetail.Post;
    end;
  end;
end;

procedure TRepairWOEditFrm.cxdbColWPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  inherited;
  with Select_BaseData('CT_RS_W','W','','') do
  begin
    if not IsEmpty then
    begin
      cdsDetail.Edit;
      cdsDetail.FieldByName('CFWName').AsString := FieldByName('FName_l2').AsString;
      cdsDetail.FieldByName('CFWID').AsString := FieldByName('FID').AsString;
      cdsDetail.Post;
    end;
  end;
end;

procedure TRepairWOEditFrm.cxdbColPersonPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  with Select_BaseData('T_BD_Person','维修技师','','') do
  begin
    if not IsEmpty then
    begin
      cdsDetail.Edit;
      cdsDetail.FieldByName('CFPersonName').AsString := FieldByName('FName_l2').AsString;
      cdsDetail.FieldByName('CFPersonID').AsString := FieldByName('FID').AsString;
      cdsDetail.Post;
    end;
  end;
end;

procedure TRepairWOEditFrm.cxdbColGiftDeptPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  with Select_BaseData('T_ORG_Admin','赠送部门','','') do
  begin
    if not IsEmpty then
    begin
      cdsDetail.Edit;
      cdsDetail.FieldByName('CFGiftDeptName').AsString := FieldByName('FName_l2').AsString;
      cdsDetail.FieldByName('CFGiftDeptID').AsString := FieldByName('FID').AsString;
      cdsDetail.Post;
    end;
  end;
end;

procedure TRepairWOEditFrm.cxdbColRepairWayPropertiesEditValueChanged(
  Sender: TObject);
begin
  inherited;
  if not (cdsDetail.State in DB.dsEditModes) then
   cdsDetail.Edit;
  cdsDetail.FieldByName('CFRepairWay').AsString := cdsRepairWayEntry.FieldByName('FNumber').AsString;
  cdsDetail.FieldByName('CFRepairWayName').AsString := cdsRepairWayEntry.FieldByName('FName').AsString;
//  cdsDetail.Post;
end;

procedure TRepairWOEditFrm.cxdbColRepairWayPropertiesChange(
  Sender: TObject);
begin
  inherited;
  cdsDetail.Edit;
  cdsDetail.FieldByName('CFRepairWay').AsString := cdsRepairWayEntry.FieldByName('FNumber').AsString;
  cdsDetail.FieldByName('CFRepairWayName').AsString := cdsRepairWayEntry.FieldByName('FName').AsString;
  cdsDetail.Post;
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

procedure TRepairWOEditFrm.DefaultValueForAddnew;
var
  sql,errmsg: string;
  vehicleId: string;

begin
 

end;
procedure TRepairWOEditFrm.cdsMasterFVehicleIDChange(Sender: TField);
var
  vehicleid,sql,errmsg:string;
  cdsTmp: TClientDataSet;
begin
  inherited;
  cdsTmp := TClientDataSet.Create(nil);
   vehicleid :=Sender.AsString;
    if vehicleid <> '' then
    begin
      sql := 'select a.FPlateNum,a.FVIN,a.FEngineNum,b.fname_l2 modelname,c.fname_l2 customerName,'+
          'd.fname_l2 brandName,e.fname_l2 seriesName,a.FPlateDate from T_ATS_Vehicle a ' +
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
         // cdsMaster.FieldByName('FFirstBookInDate').AsString :=  cdsTmp.FieldByName('FPlateDate').AsString;
         cdsMaster.FieldByName('modelname').AsString := cdsTmp.FieldByName('modelname').AsString;
          cxTxtEngineNum.Text := cdsTmp.FieldByName('FEngineNum').AsString;
          cxTxtOwner.Text := cdsTmp.FieldByName('customerName').AsString;
          cxTxtBrand.Text := cdsTmp.FieldByName('brandName').AsString;
          cxTxtSerise.Text := cdsTmp.FieldByName('seriesName').AsString;
         GetVehicleRepairRemarkList;
      end;
    end;

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

end;

procedure TRepairWOEditFrm.cdsMasterCFCustomerAccountIChange(
  Sender: TField);
var
    sql,errmsg: string;
    cdsTmp:TClientDataSet;
begin
  inherited;
  cdsTmp := TClientDataSet.Create(nil);
  sql := Format('select fname_l2 from CT_RS_CustomerAccount where fid=%s',[QuotedStr(sender.AsString)]);
  if not CliDM.Get_OpenSQL(cdsTmp,sql,errmsg) then
  begin
    ShowMsg(Self.Handle,'打开数据出错:'+ErrMsg,[]);
    Self.Close;
  end
  else
  begin
      cdsMaster.FieldByName('customerAccountName').AsString := cdsTmp.FieldByName('FName_l2').AsString;
  end;

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
end;

procedure TRepairWOEditFrm.cxdbEditSenderPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  rManFrm: TRepairManFrm;
  vehicleID: string;
  cdsTmp: TClientDataSet;
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
    cdsTmp := rManFrm.getRepairManInfo;
    if cdsTmp =nil then
    begin
       //cdsMaster.FieldByName('FRepairSender').AsString := '';
      // cdsMaster.FieldByName('FTel').AsString := '';
    end else
    begin
      // cdsMaster.FieldByName('FRepairSender').AsString := cdsTmp.FieldByName('CFName').AsString;
      // cdsMaster.FieldByName('FTel').AsString := cdsTmp.FieldByName('CFTel').AsString;
    end;

  finally
    rManFrm.Free;
  end;
end;

end.
